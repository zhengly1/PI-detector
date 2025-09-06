; ModuleID = 'bessel_i.c'
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
  br label %37, !dbg !125

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 2.000000e-01, !dbg !126
  br i1 %7, label %8, label %24, !dbg !127

8:                                                ; preds = %6
  %9 = fneg double %3, !dbg !128
  %10 = tail call double @exp(double noundef %9) #8, !dbg !129
  tail call void @llvm.dbg.value(metadata double %10, metadata !103, metadata !DIExpression()), !dbg !130
  %11 = fmul double %0, %0, !dbg !131
  tail call void @llvm.dbg.value(metadata double %11, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !130
  %12 = fmul double %11, 0x3E5AE64567F544E4, !dbg !132
  %13 = fadd double %12, 0x3EC71DE3A556C734, !dbg !133
  %14 = fmul double %11, %13, !dbg !134
  %15 = fadd double %14, 0x3F2A01A01A01A01A, !dbg !135
  %16 = fmul double %11, %15, !dbg !136
  %17 = fadd double %16, 0x3F81111111111111, !dbg !137
  %18 = fmul double %11, %17, !dbg !138
  %19 = fadd double %18, 0x3FC5555555555555, !dbg !139
  %20 = fmul double %11, %19, !dbg !140
  %21 = fadd double %20, 1.000000e+00, !dbg !141
  tail call void @llvm.dbg.value(metadata double %21, metadata !113, metadata !DIExpression()), !dbg !130
  %22 = fmul double %21, %10, !dbg !142
  store double %22, ptr %1, align 8, !dbg !143, !tbaa !120
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !144
  br label %37, !dbg !145

24:                                               ; preds = %6
  %25 = fcmp olt double %3, 0x403205966F2B4F12, !dbg !146
  br i1 %25, label %26, label %33, !dbg !148

26:                                               ; preds = %24
  %27 = fmul double %3, -2.000000e+00, !dbg !149
  %28 = tail call double @exp(double noundef %27) #8, !dbg !151
  %29 = fsub double 1.000000e+00, %28, !dbg !152
  %30 = fmul double %3, 2.000000e+00, !dbg !153
  %31 = fdiv double %29, %30, !dbg !154
  store double %31, ptr %1, align 8, !dbg !155, !tbaa !120
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !156
  br label %37, !dbg !157

33:                                               ; preds = %24
  %34 = fmul double %3, 2.000000e+00, !dbg !158
  %35 = fdiv double 1.000000e+00, %34, !dbg !160
  store double %35, ptr %1, align 8, !dbg !161, !tbaa !120
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !162
  br label %37

37:                                               ; preds = %26, %33, %8, %5
  %38 = phi double [ %32, %26 ], [ %36, %33 ], [ %23, %8 ], [ 0.000000e+00, %5 ]
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !163
  store double %38, ptr %39, align 8, !dbg !163, !tbaa !164
  ret i32 0, !dbg !165
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !166 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_i1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !170 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !172, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !173, metadata !DIExpression()), !dbg !189
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !190
  tail call void @llvm.dbg.value(metadata double %3, metadata !174, metadata !DIExpression()), !dbg !189
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !191
  br i1 %4, label %5, label %6, !dbg !192

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !193
  br label %48, !dbg !195

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x28000000000000, !dbg !196
  br i1 %7, label %8, label %10, !dbg !197

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !198, !tbaa !120
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !198
  store double 0x10000000000000, ptr %9, align 8, !dbg !198, !tbaa !164
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 15) #8, !dbg !201
  br label %48, !dbg !201

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !203
  br i1 %11, label %12, label %32, !dbg !204

12:                                               ; preds = %10
  %13 = fneg double %3, !dbg !205
  %14 = tail call double @exp(double noundef %13) #8, !dbg !206
  tail call void @llvm.dbg.value(metadata double %14, metadata !175, metadata !DIExpression()), !dbg !207
  %15 = fmul double %0, %0, !dbg !208
  tail call void @llvm.dbg.value(metadata double %15, metadata !180, metadata !DIExpression()), !dbg !207
  tail call void @llvm.dbg.value(metadata double 1.000000e-01, metadata !181, metadata !DIExpression()), !dbg !207
  tail call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !182, metadata !DIExpression()), !dbg !207
  tail call void @llvm.dbg.value(metadata double 0x3F11566ABC011567, metadata !183, metadata !DIExpression()), !dbg !207
  tail call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !184, metadata !DIExpression()), !dbg !207
  tail call void @llvm.dbg.value(metadata double 0x3E38D48ED61D7AAB, metadata !185, metadata !DIExpression()), !dbg !207
  %16 = fmul double %15, 0x3E38D48ED61D7AAB, !dbg !209
  %17 = fadd double %16, 0x3EA937E11175F095, !dbg !210
  %18 = fmul double %15, %17, !dbg !211
  %19 = fadd double %18, 0x3F11566ABC011567, !dbg !212
  %20 = fmul double %15, %19, !dbg !213
  %21 = fadd double %20, 0x3F6D41D41D41D41D, !dbg !214
  %22 = fmul double %15, %21, !dbg !215
  %23 = fadd double %22, 1.000000e-01, !dbg !216
  %24 = fmul double %15, %23, !dbg !217
  %25 = fadd double %24, 1.000000e+00, !dbg !218
  tail call void @llvm.dbg.value(metadata double %25, metadata !186, metadata !DIExpression()), !dbg !207
  %26 = fmul double %14, %0, !dbg !219
  %27 = fdiv double %26, 3.000000e+00, !dbg !220
  %28 = fmul double %25, %27, !dbg !221
  store double %28, ptr %1, align 8, !dbg !222, !tbaa !120
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !223
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !224
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !225
  store double %30, ptr %31, align 8, !dbg !226, !tbaa !164
  br label %48

32:                                               ; preds = %10
  %33 = fmul double %3, -2.000000e+00, !dbg !227
  %34 = tail call double @exp(double noundef %33) #8, !dbg !228
  tail call void @llvm.dbg.value(metadata double %34, metadata !187, metadata !DIExpression()), !dbg !229
  %35 = fadd double %34, 1.000000e+00, !dbg !230
  %36 = fmul double %3, %35, !dbg !231
  %37 = fsub double 1.000000e+00, %34, !dbg !232
  %38 = fsub double %36, %37, !dbg !233
  %39 = fmul double %38, 5.000000e-01, !dbg !234
  %40 = fmul double %0, %0, !dbg !235
  %41 = fdiv double %39, %40, !dbg !236
  store double %41, ptr %1, align 8, !dbg !237, !tbaa !120
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !238
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !239
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !240
  store double %43, ptr %44, align 8, !dbg !241, !tbaa !164
  %45 = fcmp olt double %0, 0.000000e+00, !dbg !242
  br i1 %45, label %46, label %48, !dbg !244

46:                                               ; preds = %32
  %47 = fneg double %41, !dbg !245
  store double %47, ptr %1, align 8, !dbg !246, !tbaa !120
  br label %48, !dbg !247

48:                                               ; preds = %32, %46, %12, %8, %5
  %49 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %46 ], [ 0, %32 ], !dbg !248
  ret i32 %49, !dbg !249
}

declare !dbg !250 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_i2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !255 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !257, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !258, metadata !DIExpression()), !dbg !275
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !276
  tail call void @llvm.dbg.value(metadata double %3, metadata !259, metadata !DIExpression()), !dbg !275
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !277
  br i1 %4, label %5, label %6, !dbg !278

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !279
  br label %50, !dbg !281

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x2020000000000000, !dbg !282
  br i1 %7, label %8, label %10, !dbg !283

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !284, !tbaa !120
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !284
  store double 0x10000000000000, ptr %9, align 8, !dbg !284, !tbaa !164
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 15) #8, !dbg !287
  br label %50, !dbg !287

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !289
  br i1 %11, label %12, label %33, !dbg !290

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !291
  tail call void @llvm.dbg.value(metadata double %13, metadata !260, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x3FB2492492492492, metadata !265, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x3F60410410410410, metadata !266, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x3EFF85D955D36CBB, metadata !267, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x3E93660F974707D5, metadata !268, metadata !DIExpression()), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x3E208DB48EBE51C7, metadata !269, metadata !DIExpression()), !dbg !292
  %14 = fmul double %13, 0x3E208DB48EBE51C7, !dbg !293
  %15 = fadd double %14, 0x3E93660F974707D5, !dbg !294
  %16 = fmul double %13, %15, !dbg !295
  %17 = fadd double %16, 0x3EFF85D955D36CBB, !dbg !296
  %18 = fmul double %13, %17, !dbg !297
  %19 = fadd double %18, 0x3F60410410410410, !dbg !298
  %20 = fmul double %13, %19, !dbg !299
  %21 = fadd double %20, 0x3FB2492492492492, !dbg !300
  %22 = fmul double %13, %21, !dbg !301
  %23 = fadd double %22, 1.000000e+00, !dbg !302
  tail call void @llvm.dbg.value(metadata double %23, metadata !270, metadata !DIExpression()), !dbg !292
  %24 = fneg double %3, !dbg !303
  %25 = tail call double @exp(double noundef %24) #8, !dbg !304
  %26 = fmul double %25, %0, !dbg !305
  %27 = fmul double %26, %0, !dbg !306
  %28 = fdiv double %27, 1.500000e+01, !dbg !307
  tail call void @llvm.dbg.value(metadata double %28, metadata !271, metadata !DIExpression()), !dbg !292
  %29 = fmul double %23, %28, !dbg !308
  store double %29, ptr %1, align 8, !dbg !309, !tbaa !120
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !310
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !311
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !312
  store double %31, ptr %32, align 8, !dbg !313, !tbaa !164
  br label %50

33:                                               ; preds = %10
  %34 = fmul double %3, -2.000000e+00, !dbg !314
  %35 = tail call double @exp(double noundef %34) #8, !dbg !315
  tail call void @llvm.dbg.value(metadata double %35, metadata !272, metadata !DIExpression()), !dbg !316
  %36 = fmul double %0, %0, !dbg !317
  tail call void @llvm.dbg.value(metadata double %36, metadata !274, metadata !DIExpression()), !dbg !316
  %37 = fadd double %36, 3.000000e+00, !dbg !318
  %38 = fsub double 1.000000e+00, %35, !dbg !319
  %39 = fmul double %37, %38, !dbg !320
  %40 = fmul double %3, 3.000000e+00, !dbg !321
  %41 = fadd double %35, 1.000000e+00, !dbg !322
  %42 = fmul double %40, %41, !dbg !323
  %43 = fsub double %39, %42, !dbg !324
  %44 = fmul double %43, 5.000000e-01, !dbg !325
  %45 = fmul double %36, %3, !dbg !326
  %46 = fdiv double %44, %45, !dbg !327
  store double %46, ptr %1, align 8, !dbg !328, !tbaa !120
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !329
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !330
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !331
  store double %48, ptr %49, align 8, !dbg !332, !tbaa !164
  br label %50

50:                                               ; preds = %33, %12, %8, %5
  %51 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %33 ], !dbg !333
  ret i32 %51, !dbg !334
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #4 !dbg !335 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !351, metadata !DIExpression(), metadata !389, metadata ptr %4, metadata !DIExpression()), !dbg !390
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !391, metadata ptr %5, metadata !DIExpression()), !dbg !392
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !359, metadata !DIExpression(), metadata !393, metadata ptr %6, metadata !DIExpression()), !dbg !394
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !364, metadata !DIExpression(), metadata !395, metadata ptr %7, metadata !DIExpression()), !dbg !396
  %8 = alloca double, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !368, metadata !DIExpression(), metadata !397, metadata ptr %8, metadata !DIExpression()), !dbg !396
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !381, metadata !DIExpression(), metadata !398, metadata ptr %9, metadata !DIExpression()), !dbg !399
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !400, metadata ptr %10, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !340, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %1, metadata !341, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !343, metadata !DIExpression()), !dbg !401
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !402
  tail call void @llvm.dbg.value(metadata double %11, metadata !344, metadata !DIExpression()), !dbg !401
  %12 = fcmp olt double %1, 0.000000e+00, !dbg !403
  br i1 %12, label %13, label %18, !dbg !405

13:                                               ; preds = %3
  %14 = and i32 %0, 1, !dbg !406
  %15 = icmp eq i32 %14, 0, !dbg !406
  %16 = select i1 %15, double 1.000000e+00, double -1.000000e+00, !dbg !406
  tail call void @llvm.dbg.value(metadata double %16, metadata !343, metadata !DIExpression()), !dbg !401
  %17 = fneg double %1, !dbg !408
  tail call void @llvm.dbg.value(metadata double %17, metadata !341, metadata !DIExpression()), !dbg !401
  br label %18, !dbg !409

18:                                               ; preds = %13, %3
  %19 = phi double [ %16, %13 ], [ 1.000000e+00, %3 ], !dbg !401
  %20 = phi double [ %17, %13 ], [ %1, %3 ]
  tail call void @llvm.dbg.value(metadata double %20, metadata !341, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata double %19, metadata !343, metadata !DIExpression()), !dbg !401
  %21 = icmp slt i32 %0, 0, !dbg !410
  br i1 %21, label %22, label %24, !dbg !411

22:                                               ; preds = %18
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !412, !tbaa !120
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !412
  store double 0x7FF8000000000000, ptr %23, align 8, !dbg !412, !tbaa !164
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 1) #8, !dbg !415
  br label %226, !dbg !415

24:                                               ; preds = %18
  %25 = fcmp oeq double %20, 0.000000e+00, !dbg !417
  br i1 %25, label %26, label %30, !dbg !418

26:                                               ; preds = %24
  %27 = icmp eq i32 %0, 0, !dbg !419
  %28 = select i1 %27, double 1.000000e+00, double 0.000000e+00, !dbg !421
  store double %28, ptr %2, align 8, !dbg !422, !tbaa !120
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !423
  store double 0.000000e+00, ptr %29, align 8, !dbg !424, !tbaa !164
  br label %226, !dbg !425

30:                                               ; preds = %24
  switch i32 %0, label %79 [
    i32 0, label %31
    i32 1, label %65
    i32 2, label %72
  ], !dbg !426

31:                                               ; preds = %30
  call void @llvm.dbg.value(metadata double %20, metadata !100, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata ptr undef, metadata !101, metadata !DIExpression()), !dbg !427
  %32 = tail call double @llvm.fabs.f64(double %20), !dbg !429
  call void @llvm.dbg.value(metadata double %32, metadata !102, metadata !DIExpression()), !dbg !427
  %33 = fcmp olt double %32, 2.000000e-01, !dbg !430
  br i1 %33, label %34, label %49, !dbg !431

34:                                               ; preds = %31
  %35 = fneg double %32, !dbg !432
  %36 = tail call double @exp(double noundef %35) #8, !dbg !433
  call void @llvm.dbg.value(metadata double %36, metadata !103, metadata !DIExpression()), !dbg !434
  %37 = fmul double %20, %20, !dbg !435
  call void @llvm.dbg.value(metadata double %37, metadata !107, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !434
  %38 = fmul double %37, 0x3E5AE64567F544E4, !dbg !436
  %39 = fadd double %38, 0x3EC71DE3A556C734, !dbg !437
  %40 = fmul double %37, %39, !dbg !438
  %41 = fadd double %40, 0x3F2A01A01A01A01A, !dbg !439
  %42 = fmul double %37, %41, !dbg !440
  %43 = fadd double %42, 0x3F81111111111111, !dbg !441
  %44 = fmul double %37, %43, !dbg !442
  %45 = fadd double %44, 0x3FC5555555555555, !dbg !443
  %46 = fmul double %37, %45, !dbg !444
  %47 = fadd double %46, 1.000000e+00, !dbg !445
  call void @llvm.dbg.value(metadata double %47, metadata !113, metadata !DIExpression()), !dbg !434
  %48 = fmul double %47, %36, !dbg !446
  tail call void @llvm.dbg.value(metadata double %48, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !447
  br label %60, !dbg !448

49:                                               ; preds = %31
  %50 = fcmp olt double %32, 0x403205966F2B4F12, !dbg !449
  br i1 %50, label %51, label %57, !dbg !450

51:                                               ; preds = %49
  %52 = fmul double %32, -2.000000e+00, !dbg !451
  %53 = tail call double @exp(double noundef %52) #8, !dbg !452
  %54 = fsub double 1.000000e+00, %53, !dbg !453
  %55 = fmul double %32, 2.000000e+00, !dbg !454
  %56 = fdiv double %54, %55, !dbg !455
  tail call void @llvm.dbg.value(metadata double %56, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !447
  br label %60, !dbg !456

57:                                               ; preds = %49
  %58 = fmul double %32, 2.000000e+00, !dbg !457
  %59 = fdiv double 1.000000e+00, %58, !dbg !458
  tail call void @llvm.dbg.value(metadata double %59, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !447
  br label %60

60:                                               ; preds = %34, %51, %57
  %61 = phi double [ %48, %34 ], [ %56, %51 ], [ %59, %57 ], !dbg !459
  %62 = fmul double %61, 0x3CC0000000000000, !dbg !460
  tail call void @llvm.dbg.value(metadata double %61, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !447
  tail call void @llvm.dbg.value(metadata double %62, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !447
  tail call void @llvm.dbg.value(metadata i32 0, metadata !350, metadata !DIExpression()), !dbg !447
  %63 = fmul double %19, %61, !dbg !461
  store double %63, ptr %2, align 8, !dbg !462, !tbaa !120
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !463
  store double %62, ptr %64, align 8, !dbg !464, !tbaa !164
  br label %226

65:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !465
  %66 = call i32 @gsl_sf_bessel_i1_scaled_e(double noundef %20, ptr noundef nonnull %4), !dbg !466, !range !467
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !354, metadata !DIExpression()), !dbg !390
  %67 = load double, ptr %4, align 8, !dbg !468, !tbaa !120
  %68 = fmul double %19, %67, !dbg !469
  store double %68, ptr %2, align 8, !dbg !470, !tbaa !120
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !471
  %70 = load double, ptr %69, align 8, !dbg !471, !tbaa !164
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !472
  store double %70, ptr %71, align 8, !dbg !473, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !474
  br label %226

72:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !475
  %73 = call i32 @gsl_sf_bessel_i2_scaled_e(double noundef %20, ptr noundef nonnull %5), !dbg !476, !range !467
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !358, metadata !DIExpression()), !dbg !392
  %74 = load double, ptr %5, align 8, !dbg !477, !tbaa !120
  %75 = fmul double %19, %74, !dbg !478
  store double %75, ptr %2, align 8, !dbg !479, !tbaa !120
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !480
  %77 = load double, ptr %76, align 8, !dbg !480, !tbaa !164
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !481
  store double %77, ptr %78, align 8, !dbg !482, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !483
  br label %226

79:                                               ; preds = %30
  %80 = fmul double %20, %20, !dbg !484
  %81 = sitofp i32 %0 to double, !dbg !485
  %82 = fadd double %81, 1.500000e+00, !dbg !486
  %83 = fmul double %82, 1.000000e+01, !dbg !487
  %84 = fdiv double %83, 0x4005BF0A8B145769, !dbg !488
  %85 = fcmp olt double %80, %84, !dbg !489
  br i1 %85, label %86, label %104, !dbg !490

86:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !491
  %87 = fadd double %81, 5.000000e-01, !dbg !492
  %88 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %87, double noundef %20, i32 noundef 1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %6) #8, !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !362, metadata !DIExpression()), !dbg !394
  %89 = fneg double %11, !dbg !494
  %90 = call double @exp(double noundef %89) #8, !dbg !495
  %91 = fdiv double 0x3FF921FB54442D18, %20, !dbg !496
  %92 = call double @sqrt(double noundef %91) #8, !dbg !497
  %93 = fmul double %90, %92, !dbg !498
  tail call void @llvm.dbg.value(metadata double %93, metadata !363, metadata !DIExpression()), !dbg !394
  %94 = fmul double %19, %93, !dbg !499
  %95 = load double, ptr %6, align 8, !dbg !500, !tbaa !120
  %96 = fmul double %95, %94, !dbg !501
  store double %96, ptr %2, align 8, !dbg !502, !tbaa !120
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !503
  %98 = load double, ptr %97, align 8, !dbg !503, !tbaa !164
  %99 = fmul double %93, %98, !dbg !504
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !505
  %101 = call double @llvm.fabs.f64(double %96), !dbg !506
  %102 = fmul double %101, 0x3CC0000000000000, !dbg !507
  %103 = fadd double %99, %102, !dbg !508
  store double %103, ptr %100, align 8, !dbg !508, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !509
  br label %226

104:                                              ; preds = %79
  %105 = icmp ult i32 %0, 150, !dbg !510
  br i1 %105, label %106, label %135, !dbg !511

106:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !512
  %107 = call i32 @gsl_sf_bessel_i0_scaled_e(double noundef %11, ptr noundef nonnull %7), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !514
  %108 = call fastcc i32 @bessel_il_CF1(i32 noundef %0, double noundef %11, ptr noundef nonnull %8), !dbg !515
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !369, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !371, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !373, metadata !DIExpression()), !dbg !396
  %109 = load double, ptr %8, align 8, !dbg !516, !tbaa !517
  %110 = fmul double %109, 0x2000000000000000, !dbg !518
  tail call void @llvm.dbg.value(metadata double %110, metadata !370, metadata !DIExpression()), !dbg !396
  br label %111, !dbg !519

111:                                              ; preds = %106, %111
  %112 = phi double [ %113, %111 ], [ %110, %106 ]
  %113 = phi double [ %120, %111 ], [ 0x2000000000000000, %106 ]
  %114 = phi i32 [ %121, %111 ], [ %0, %106 ]
  tail call void @llvm.dbg.value(metadata double %112, metadata !370, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %113, metadata !371, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !373, metadata !DIExpression()), !dbg !396
  %115 = shl nuw nsw i32 %114, 1, !dbg !521
  %116 = or disjoint i32 %115, 1, !dbg !524
  %117 = sitofp i32 %116 to double, !dbg !525
  %118 = fdiv double %117, %20, !dbg !526
  %119 = fmul double %113, %118, !dbg !527
  %120 = fadd double %112, %119, !dbg !528
  tail call void @llvm.dbg.value(metadata double %120, metadata !372, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %113, metadata !370, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %120, metadata !371, metadata !DIExpression()), !dbg !396
  %121 = add nsw i32 %114, -1, !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !373, metadata !DIExpression()), !dbg !396
  %122 = icmp ugt i32 %114, 1, !dbg !530
  br i1 %122, label %111, label %123, !dbg !519, !llvm.loop !531

123:                                              ; preds = %111
  %124 = load double, ptr %7, align 8, !dbg !534, !tbaa !120
  %125 = fmul double %19, %124, !dbg !535
  %126 = fdiv double 0x2000000000000000, %120, !dbg !536
  %127 = fmul double %126, %125, !dbg !537
  store double %127, ptr %2, align 8, !dbg !538, !tbaa !120
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !539
  %129 = load double, ptr %128, align 8, !dbg !539, !tbaa !164
  %130 = fmul double %126, %129, !dbg !540
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !541
  %132 = tail call double @llvm.fabs.f64(double %127), !dbg !542
  %133 = fmul double %132, 0x3CC0000000000000, !dbg !543
  %134 = fadd double %130, %133, !dbg !544
  store double %134, ptr %131, align 8, !dbg !544, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !545
  br label %226

135:                                              ; preds = %104
  %136 = mul nsw i32 %0, %0, !dbg !546
  %137 = add nuw nsw i32 %136, 1, !dbg !546
  %138 = sitofp i32 %137 to double, !dbg !546
  %139 = fdiv double 2.900000e-01, %138, !dbg !546
  %140 = fadd double %80, %138, !dbg !546
  %141 = fdiv double 5.000000e-01, %140, !dbg !546
  %142 = fcmp olt double %139, %141, !dbg !546
  %143 = select i1 %142, double %139, double %141, !dbg !546
  %144 = fcmp olt double %143, 0x3EC965FEA53D6E41, !dbg !547
  br i1 %144, label %145, label %156, !dbg !548

145:                                              ; preds = %135
  %146 = fadd double %81, 5.000000e-01, !dbg !549
  %147 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %146, double noundef %20, ptr noundef %2) #8, !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !374, metadata !DIExpression()), !dbg !551
  %148 = fdiv double 0x3FF921FB54442D18, %20, !dbg !552
  %149 = tail call double @sqrt(double noundef %148) #8, !dbg !553
  tail call void @llvm.dbg.value(metadata double %149, metadata !377, metadata !DIExpression()), !dbg !551
  %150 = fmul double %19, %149, !dbg !554
  %151 = load double, ptr %2, align 8, !dbg !555, !tbaa !120
  %152 = fmul double %151, %150, !dbg !555
  store double %152, ptr %2, align 8, !dbg !555, !tbaa !120
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !556
  %154 = load double, ptr %153, align 8, !dbg !557, !tbaa !164
  %155 = fmul double %149, %154, !dbg !557
  store double %155, ptr %153, align 8, !dbg !557, !tbaa !164
  br label %226

156:                                              ; preds = %135
  %157 = fdiv double 0x3FF921FB54442D18, %20, !dbg !558
  %158 = tail call double @sqrt(double noundef %157) #8, !dbg !559
  tail call void @llvm.dbg.value(metadata double %158, metadata !378, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 489, metadata !380, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !560
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !561
  %159 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.905000e+02, double noundef %20, ptr noundef nonnull %9) #8, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !383, metadata !DIExpression()), !dbg !399
  %160 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.895000e+02, double noundef %20, ptr noundef nonnull %10) #8, !dbg !563
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !384, metadata !DIExpression()), !dbg !399
  %161 = load double, ptr %9, align 8, !dbg !564, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %161, metadata !385, metadata !DIExpression()), !dbg !399
  %162 = load double, ptr %10, align 8, !dbg !565, !tbaa !120
  tail call void @llvm.dbg.value(metadata double poison, metadata !386, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 489, metadata !388, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double poison, metadata !385, metadata !DIExpression()), !dbg !399
  %163 = icmp ult i32 %0, 489, !dbg !566
  br i1 %163, label %164, label %206, !dbg !569

164:                                              ; preds = %156
  %165 = fmul double %158, %162, !dbg !570
  tail call void @llvm.dbg.value(metadata double %165, metadata !386, metadata !DIExpression()), !dbg !399
  %166 = fmul double %158, %161, !dbg !571
  tail call void @llvm.dbg.value(metadata double %166, metadata !385, metadata !DIExpression()), !dbg !399
  %167 = sub nsw i32 489, %0, !dbg !569
  %168 = and i32 %167, 1, !dbg !569
  %169 = icmp eq i32 %0, 488, !dbg !569
  br i1 %169, label %196, label %170, !dbg !569

170:                                              ; preds = %164
  %171 = and i32 %167, -2, !dbg !569
  br label %172, !dbg !569

172:                                              ; preds = %172, %170
  %173 = phi i32 [ 489, %170 ], [ %189, %172 ]
  %174 = phi double [ %165, %170 ], [ %188, %172 ]
  %175 = phi double [ %166, %170 ], [ %182, %172 ]
  %176 = phi i32 [ 0, %170 ], [ %190, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !388, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %174, metadata !386, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %175, metadata !385, metadata !DIExpression()), !dbg !399
  %177 = shl nsw i32 %173, 1, !dbg !572
  %178 = or disjoint i32 %177, 1, !dbg !574
  %179 = sitofp i32 %178 to double, !dbg !575
  %180 = fdiv double %179, %20, !dbg !576
  %181 = fmul double %174, %180, !dbg !577
  %182 = fadd double %175, %181, !dbg !578
  tail call void @llvm.dbg.value(metadata double %182, metadata !387, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %174, metadata !385, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %182, metadata !386, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !388, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !388, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !399
  tail call void @llvm.dbg.value(metadata double %182, metadata !386, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %174, metadata !385, metadata !DIExpression()), !dbg !399
  %183 = shl i32 %173, 1, !dbg !572
  %184 = add i32 %183, -1, !dbg !574
  %185 = sitofp i32 %184 to double, !dbg !575
  %186 = fdiv double %185, %20, !dbg !576
  %187 = fmul double %182, %186, !dbg !577
  %188 = fadd double %174, %187, !dbg !578
  tail call void @llvm.dbg.value(metadata double %188, metadata !387, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %182, metadata !385, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata double %188, metadata !386, metadata !DIExpression()), !dbg !399
  %189 = add nsw i32 %173, -2, !dbg !579
  tail call void @llvm.dbg.value(metadata i32 %189, metadata !388, metadata !DIExpression()), !dbg !399
  %190 = add i32 %176, 2, !dbg !569
  %191 = icmp eq i32 %190, %171, !dbg !569
  br i1 %191, label %192, label %172, !dbg !569, !llvm.loop !580

192:                                              ; preds = %172
  %193 = shl nsw i32 %189, 1, !dbg !572
  %194 = or disjoint i32 %193, 1, !dbg !574
  %195 = sitofp i32 %194 to double, !dbg !575
  br label %196, !dbg !569

196:                                              ; preds = %192, %164
  %197 = phi double [ undef, %164 ], [ %188, %192 ]
  %198 = phi double [ 9.790000e+02, %164 ], [ %195, %192 ]
  %199 = phi double [ %165, %164 ], [ %188, %192 ]
  %200 = phi double [ %166, %164 ], [ %182, %192 ]
  %201 = icmp eq i32 %168, 0, !dbg !569
  %202 = fdiv double %198, %20, !dbg !569
  %203 = fmul double %199, %202, !dbg !569
  %204 = fadd double %200, %203, !dbg !569
  %205 = select i1 %201, double %197, double %204, !dbg !569
  br label %206, !dbg !582

206:                                              ; preds = %196, %156
  %207 = phi double [ 0.000000e+00, %156 ], [ %205, %196 ], !dbg !399
  %208 = fmul double %19, %207, !dbg !582
  store double %208, ptr %2, align 8, !dbg !583, !tbaa !120
  %209 = call double @llvm.fabs.f64(double %208), !dbg !584
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !585
  %211 = load double, ptr %210, align 8, !dbg !585, !tbaa !164
  %212 = fdiv double %211, %161, !dbg !586
  %213 = call double @llvm.fabs.f64(double %212), !dbg !587
  %214 = fadd double %213, 0x3CB0000000000000, !dbg !588
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !589
  %216 = load double, ptr %215, align 8, !dbg !589, !tbaa !164
  %217 = fdiv double %216, %162, !dbg !590
  %218 = call double @llvm.fabs.f64(double %217), !dbg !591
  %219 = fadd double %214, %218, !dbg !592
  %220 = fmul double %209, %219, !dbg !593
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !594
  %222 = fmul double %209, 0x3CC0000000000000, !dbg !595
  %223 = fadd double %222, %220, !dbg !596
  store double %223, ptr %221, align 8, !dbg !596, !tbaa !164
  %224 = icmp eq i32 %159, 0, !dbg !597
  %225 = select i1 %224, i32 %160, i32 %159, !dbg !597
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !598
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !598
  br label %226

226:                                              ; preds = %206, %145, %123, %86, %72, %65, %60, %26, %22
  %227 = phi i32 [ 1, %22 ], [ 0, %26 ], [ 0, %60 ], [ %66, %65 ], [ %73, %72 ], [ %88, %86 ], [ %108, %123 ], [ %147, %145 ], [ %225, %206 ], !dbg !599
  ret i32 %227, !dbg !600
}

declare !dbg !601 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !605 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @bessel_il_CF1(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !606 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !611, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %1, metadata !612, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !613, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !615, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !616, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !617, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !618, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 1, metadata !619, metadata !DIExpression()), !dbg !624
  %4 = sitofp i32 %0 to double, !dbg !625
  %5 = fmul double %4, 2.000000e+00, !dbg !626
  %6 = fadd double %5, 1.000000e+00, !dbg !627
  tail call void @llvm.dbg.value(metadata i32 1, metadata !619, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !618, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !617, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !616, metadata !DIExpression()), !dbg !624
  %7 = fadd double %5, 3.000000e+00
  br label %8, !dbg !628

8:                                                ; preds = %3, %31
  %9 = phi i32 [ 1, %3 ], [ %32, %31 ]
  %10 = phi double [ 0.000000e+00, %3 ], [ %25, %31 ]
  %11 = phi double [ 1.000000e+00, %3 ], [ %27, %31 ]
  %12 = phi double [ 1.000000e+00, %3 ], [ %26, %31 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !619, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %10, metadata !618, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %11, metadata !617, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %12, metadata !616, metadata !DIExpression()), !dbg !624
  %13 = sitofp i32 %9 to double, !dbg !629
  %14 = fmul double %13, 2.000000e+00, !dbg !630
  %15 = fadd double %6, %14, !dbg !631
  %16 = fdiv double %1, %15, !dbg !632
  %17 = fadd double %7, %14, !dbg !633
  %18 = fdiv double %1, %17, !dbg !634
  %19 = fmul double %16, %18, !dbg !635
  tail call void @llvm.dbg.value(metadata double %19, metadata !620, metadata !DIExpression()), !dbg !636
  %20 = fneg double %19, !dbg !637
  %21 = fadd double %10, 1.000000e+00, !dbg !638
  %22 = fmul double %21, %20, !dbg !639
  %23 = fmul double %21, %19, !dbg !640
  %24 = fadd double %23, 1.000000e+00, !dbg !641
  %25 = fdiv double %22, %24, !dbg !642
  tail call void @llvm.dbg.value(metadata double %25, metadata !618, metadata !DIExpression()), !dbg !624
  %26 = fmul double %12, %25, !dbg !643
  tail call void @llvm.dbg.value(metadata double %26, metadata !616, metadata !DIExpression()), !dbg !624
  %27 = fadd double %11, %26, !dbg !644
  tail call void @llvm.dbg.value(metadata double %27, metadata !617, metadata !DIExpression()), !dbg !624
  %28 = fdiv double %26, %27, !dbg !645
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !647
  %30 = fcmp olt double %29, 0x3CB0000000000000, !dbg !648
  br i1 %30, label %37, label %31

31:                                               ; preds = %8
  %32 = add nuw nsw i32 %9, 1, !dbg !649
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !619, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %25, metadata !618, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %27, metadata !617, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata double %26, metadata !616, metadata !DIExpression()), !dbg !624
  %33 = icmp eq i32 %32, 2001, !dbg !650
  br i1 %33, label %34, label %8, !dbg !628, !llvm.loop !651

34:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata double %27, metadata !617, metadata !DIExpression()), !dbg !624
  %35 = fdiv double %1, %7, !dbg !653
  %36 = fmul double %35, %27, !dbg !654
  store double %36, ptr %2, align 8, !dbg !655, !tbaa !517
  br label %42, !dbg !656

37:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %27, metadata !617, metadata !DIExpression()), !dbg !624
  %38 = fdiv double %1, %7, !dbg !653
  %39 = fmul double %38, %27, !dbg !654
  store double %39, ptr %2, align 8, !dbg !655, !tbaa !517
  %40 = icmp eq i32 %9, 2000, !dbg !657
  br i1 %40, label %41, label %42, !dbg !656

41:                                               ; preds = %37
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 56, i32 noundef 11) #8, !dbg !659
  br label %42, !dbg !659

42:                                               ; preds = %34, %37, %41
  %43 = phi i32 [ 11, %41 ], [ 0, %37 ], [ 0, %34 ], !dbg !661
  ret i32 %43, !dbg !662
}

declare !dbg !663 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_il_scaled_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !666 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !678, metadata !DIExpression(), metadata !685, metadata ptr %4, metadata !DIExpression()), !dbg !686
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !679, metadata !DIExpression(), metadata !687, metadata ptr %5, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !670, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %1, metadata !671, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !688
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !689
  br i1 %6, label %7, label %17, !dbg !690

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !691, !tbaa !517
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !673, metadata !DIExpression()), !dbg !692
  %8 = icmp sgt i32 %0, 0, !dbg !693
  br i1 %8, label %9, label %71, !dbg !696

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !696
  %11 = shl nuw nsw i64 %10, 3, !dbg !696
  %12 = add nsw i32 %0, -1, !dbg !696
  %13 = zext nneg i32 %12 to i64, !dbg !696
  %14 = sub nsw i64 %10, %13, !dbg !696
  %15 = shl nsw i64 %14, 3, !dbg !696
  %16 = getelementptr i8, ptr %2, i64 %15, !dbg !696
  tail call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 %11, i1 false), !dbg !697, !tbaa !517
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !673, metadata !DIExpression()), !dbg !692
  br label %71, !dbg !699

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !700
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !701
  %18 = add nsw i32 %0, 1, !dbg !702
  %19 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %18, double noundef %1, ptr noundef nonnull %4), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !680, metadata !DIExpression()), !dbg !686
  %20 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !704
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !681, metadata !DIExpression()), !dbg !686
  %21 = load double, ptr %4, align 8, !dbg !705, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %21, metadata !682, metadata !DIExpression()), !dbg !686
  %22 = load double, ptr %5, align 8, !dbg !706, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %22, metadata !683, metadata !DIExpression()), !dbg !686
  %23 = sext i32 %0 to i64, !dbg !707
  %24 = getelementptr inbounds double, ptr %2, i64 %23, !dbg !707
  store double %22, ptr %24, align 8, !dbg !708, !tbaa !517
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !686
  %25 = getelementptr double, ptr %2, i64 -1, !dbg !709
  tail call void @llvm.dbg.value(metadata double %22, metadata !683, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %21, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !686
  %26 = icmp sgt i32 %0, 0, !dbg !711
  br i1 %26, label %27, label %68, !dbg !713

27:                                               ; preds = %17
  %28 = zext nneg i32 %0 to i64, !dbg !713
  %29 = and i64 %28, 1, !dbg !713
  %30 = icmp eq i64 %29, 0, !dbg !713
  br i1 %30, label %40, label %31, !dbg !713

31:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata double %22, metadata !683, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %21, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !676, metadata !DIExpression()), !dbg !686
  %32 = shl nuw nsw i32 %0, 1, !dbg !714
  %33 = or disjoint i32 %32, 1, !dbg !716
  %34 = sitofp i32 %33 to double, !dbg !717
  %35 = fdiv double %34, %1, !dbg !718
  %36 = fmul double %22, %35, !dbg !719
  %37 = fadd double %21, %36, !dbg !720
  tail call void @llvm.dbg.value(metadata double %37, metadata !684, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %22, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %37, metadata !683, metadata !DIExpression()), !dbg !686
  %38 = getelementptr double, ptr %25, i64 %28, !dbg !721
  store double %37, ptr %38, align 8, !dbg !722, !tbaa !517
  %39 = add nsw i64 %28, -1, !dbg !723
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !676, metadata !DIExpression()), !dbg !686
  br label %40, !dbg !713

40:                                               ; preds = %31, %27
  %41 = phi i64 [ %28, %27 ], [ %39, %31 ]
  %42 = phi double [ %22, %27 ], [ %37, %31 ]
  %43 = phi double [ %21, %27 ], [ %22, %31 ]
  %44 = icmp eq i32 %0, 1, !dbg !713
  br i1 %44, label %68, label %45, !dbg !713

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %66, %45 ], [ %41, %40 ]
  %47 = phi double [ %64, %45 ], [ %42, %40 ]
  %48 = phi double [ %55, %45 ], [ %43, %40 ]
  tail call void @llvm.dbg.value(metadata double %47, metadata !683, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %48, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !676, metadata !DIExpression()), !dbg !686
  %49 = trunc i64 %46 to i32, !dbg !714
  %50 = shl nuw nsw i32 %49, 1, !dbg !714
  %51 = or disjoint i32 %50, 1, !dbg !716
  %52 = sitofp i32 %51 to double, !dbg !717
  %53 = fdiv double %52, %1, !dbg !718
  %54 = fmul double %47, %53, !dbg !719
  %55 = fadd double %48, %54, !dbg !720
  tail call void @llvm.dbg.value(metadata double %55, metadata !684, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %47, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %55, metadata !683, metadata !DIExpression()), !dbg !686
  %56 = getelementptr double, ptr %25, i64 %46, !dbg !721
  store double %55, ptr %56, align 8, !dbg !722, !tbaa !517
  %57 = add nsw i64 %46, -1, !dbg !723
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !676, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %55, metadata !683, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %47, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !676, metadata !DIExpression()), !dbg !686
  %58 = trunc i64 %57 to i32, !dbg !714
  %59 = shl nuw nsw i32 %58, 1, !dbg !714
  %60 = or disjoint i32 %59, 1, !dbg !716
  %61 = sitofp i32 %60 to double, !dbg !717
  %62 = fdiv double %61, %1, !dbg !718
  %63 = fmul double %55, %62, !dbg !719
  %64 = fadd double %47, %63, !dbg !720
  tail call void @llvm.dbg.value(metadata double %64, metadata !684, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %55, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %64, metadata !683, metadata !DIExpression()), !dbg !686
  %65 = getelementptr double, ptr %25, i64 %57, !dbg !721
  store double %64, ptr %65, align 8, !dbg !722, !tbaa !517
  %66 = add nsw i64 %46, -2, !dbg !723
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !676, metadata !DIExpression()), !dbg !686
  %67 = icmp ugt i64 %57, 1, !dbg !711
  br i1 %67, label %45, label %68, !dbg !713, !llvm.loop !724

68:                                               ; preds = %40, %45, %17
  %69 = icmp eq i32 %19, 0, !dbg !726
  %70 = select i1 %69, i32 %20, i32 %19, !dbg !726
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !727
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !727
  br label %71

71:                                               ; preds = %9, %7, %68
  %72 = phi i32 [ %70, %68 ], [ 0, %7 ], [ 0, %9 ], !dbg !728
  ret i32 %72, !dbg !699
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_bessel_i0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !729 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !733, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata double %0, metadata !100, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata ptr undef, metadata !101, metadata !DIExpression()), !dbg !737
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !739
  call void @llvm.dbg.value(metadata double %2, metadata !102, metadata !DIExpression()), !dbg !737
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !740
  br i1 %3, label %32, label %4, !dbg !741

4:                                                ; preds = %1
  %5 = fcmp olt double %2, 2.000000e-01, !dbg !742
  br i1 %5, label %6, label %21, !dbg !743

6:                                                ; preds = %4
  %7 = fneg double %2, !dbg !744
  %8 = tail call double @exp(double noundef %7) #8, !dbg !745
  call void @llvm.dbg.value(metadata double %8, metadata !103, metadata !DIExpression()), !dbg !746
  %9 = fmul double %0, %0, !dbg !747
  call void @llvm.dbg.value(metadata double %9, metadata !107, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !746
  %10 = fmul double %9, 0x3E5AE64567F544E4, !dbg !748
  %11 = fadd double %10, 0x3EC71DE3A556C734, !dbg !749
  %12 = fmul double %9, %11, !dbg !750
  %13 = fadd double %12, 0x3F2A01A01A01A01A, !dbg !751
  %14 = fmul double %9, %13, !dbg !752
  %15 = fadd double %14, 0x3F81111111111111, !dbg !753
  %16 = fmul double %9, %15, !dbg !754
  %17 = fadd double %16, 0x3FC5555555555555, !dbg !755
  %18 = fmul double %9, %17, !dbg !756
  %19 = fadd double %18, 1.000000e+00, !dbg !757
  call void @llvm.dbg.value(metadata double %19, metadata !113, metadata !DIExpression()), !dbg !746
  %20 = fmul double %19, %8, !dbg !758
  tail call void @llvm.dbg.value(metadata double %20, metadata !734, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !736
  br label %32, !dbg !759

21:                                               ; preds = %4
  %22 = fcmp olt double %2, 0x403205966F2B4F12, !dbg !760
  br i1 %22, label %23, label %29, !dbg !761

23:                                               ; preds = %21
  %24 = fmul double %2, -2.000000e+00, !dbg !762
  %25 = tail call double @exp(double noundef %24) #8, !dbg !763
  %26 = fsub double 1.000000e+00, %25, !dbg !764
  %27 = fmul double %2, 2.000000e+00, !dbg !765
  %28 = fdiv double %26, %27, !dbg !766
  tail call void @llvm.dbg.value(metadata double %28, metadata !734, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !736
  br label %32, !dbg !767

29:                                               ; preds = %21
  %30 = fmul double %2, 2.000000e+00, !dbg !768
  %31 = fdiv double 1.000000e+00, %30, !dbg !769
  tail call void @llvm.dbg.value(metadata double %31, metadata !734, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !736
  br label %32

32:                                               ; preds = %1, %6, %23, %29
  %33 = phi double [ %20, %6 ], [ %28, %23 ], [ %31, %29 ], [ 1.000000e+00, %1 ], !dbg !770
  tail call void @llvm.dbg.value(metadata double %33, metadata !734, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !736
  tail call void @llvm.dbg.value(metadata double poison, metadata !734, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !736
  tail call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !736
  ret double %33, !dbg !771
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_i1_scaled(double noundef %0) local_unnamed_addr #4 !dbg !772 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !777
  call void @llvm.dbg.assign(metadata i1 undef, metadata !775, metadata !DIExpression(), metadata !777, metadata ptr %2, metadata !DIExpression()), !dbg !778
  tail call void @llvm.dbg.value(metadata double %0, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !779
  %3 = call i32 @gsl_sf_bessel_i1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !779, !range !467
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !776, metadata !DIExpression()), !dbg !778
  %4 = icmp eq i32 %3, 0, !dbg !780
  br i1 %4, label %6, label %5, !dbg !779

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 317, i32 noundef %3) #8, !dbg !782
  br label %6, !dbg !782

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !779, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !785
  ret double %7, !dbg !785
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_i2_scaled(double noundef %0) local_unnamed_addr #4 !dbg !786 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !791
  call void @llvm.dbg.assign(metadata i1 undef, metadata !789, metadata !DIExpression(), metadata !791, metadata ptr %2, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata double %0, metadata !788, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !793
  %3 = call i32 @gsl_sf_bessel_i2_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !793, !range !467
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !790, metadata !DIExpression()), !dbg !792
  %4 = icmp eq i32 %3, 0, !dbg !794
  br i1 %4, label %6, label %5, !dbg !793

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef %3) #8, !dbg !796
  br label %6, !dbg !796

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !793, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !799
  ret double %7, !dbg !799
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_il_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !800 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !806, metadata !DIExpression(), metadata !808, metadata ptr %3, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !804, metadata !DIExpression()), !dbg !809
  tail call void @llvm.dbg.value(metadata double %1, metadata !805, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !810
  %4 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !810
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !807, metadata !DIExpression()), !dbg !809
  %5 = icmp eq i32 %4, 0, !dbg !811
  br i1 %5, label %7, label %6, !dbg !810

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef %4) #8, !dbg !813
  br label %7, !dbg !813

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !810, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !816
  ret double %8, !dbg !816
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!133 = !DILocation(line: 83, column: 60, scope: !104)
!134 = !DILocation(line: 83, column: 55, scope: !104)
!135 = !DILocation(line: 83, column: 52, scope: !104)
!136 = !DILocation(line: 83, column: 47, scope: !104)
!137 = !DILocation(line: 83, column: 44, scope: !104)
!138 = !DILocation(line: 83, column: 39, scope: !104)
!139 = !DILocation(line: 83, column: 36, scope: !104)
!140 = !DILocation(line: 83, column: 31, scope: !104)
!141 = !DILocation(line: 83, column: 28, scope: !104)
!142 = !DILocation(line: 84, column: 23, scope: !104)
!143 = !DILocation(line: 84, column: 17, scope: !104)
!144 = !DILocation(line: 85, column: 41, scope: !104)
!145 = !DILocation(line: 86, column: 3, scope: !104)
!146 = !DILocation(line: 87, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !105, file: !2, line: 87, column: 11)
!148 = !DILocation(line: 87, column: 11, scope: !105)
!149 = !DILocation(line: 88, column: 34, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !2, line: 87, column: 42)
!151 = !DILocation(line: 88, column: 26, scope: !150)
!152 = !DILocation(line: 88, column: 24, scope: !150)
!153 = !DILocation(line: 88, column: 44, scope: !150)
!154 = !DILocation(line: 88, column: 39, scope: !150)
!155 = !DILocation(line: 88, column: 17, scope: !150)
!156 = !DILocation(line: 89, column: 41, scope: !150)
!157 = !DILocation(line: 90, column: 3, scope: !150)
!158 = !DILocation(line: 92, column: 27, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !2, line: 91, column: 8)
!160 = !DILocation(line: 92, column: 22, scope: !159)
!161 = !DILocation(line: 92, column: 17, scope: !159)
!162 = !DILocation(line: 93, column: 41, scope: !159)
!163 = !DILocation(line: 0, scope: !106)
!164 = !{!121, !122, i64 8}
!165 = !DILocation(line: 96, column: 1, scope: !87)
!166 = !DISubprogram(name: "exp", scope: !167, file: !167, line: 95, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!168 = !DISubroutineType(types: !169)
!169 = !{!91, !91}
!170 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled_e", scope: !2, file: !2, line: 99, type: !88, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !171)
!171 = !{!172, !173, !174, !175, !180, !181, !182, !183, !184, !185, !186, !187}
!172 = !DILocalVariable(name: "x", arg: 1, scope: !170, file: !2, line: 99, type: !90)
!173 = !DILocalVariable(name: "result", arg: 2, scope: !170, file: !2, line: 99, type: !92)
!174 = !DILocalVariable(name: "ax", scope: !170, file: !2, line: 101, type: !91)
!175 = !DILocalVariable(name: "eax", scope: !176, file: !2, line: 114, type: !90)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 113, column: 22)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 113, column: 11)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 110, column: 11)
!179 = distinct !DILexicalBlock(scope: !170, file: !2, line: 105, column: 6)
!180 = !DILocalVariable(name: "y", scope: !176, file: !2, line: 115, type: !90)
!181 = !DILocalVariable(name: "c1", scope: !176, file: !2, line: 116, type: !90)
!182 = !DILocalVariable(name: "c2", scope: !176, file: !2, line: 117, type: !90)
!183 = !DILocalVariable(name: "c3", scope: !176, file: !2, line: 118, type: !90)
!184 = !DILocalVariable(name: "c4", scope: !176, file: !2, line: 119, type: !90)
!185 = !DILocalVariable(name: "c5", scope: !176, file: !2, line: 120, type: !90)
!186 = !DILocalVariable(name: "sum", scope: !176, file: !2, line: 121, type: !90)
!187 = !DILocalVariable(name: "ex", scope: !188, file: !2, line: 127, type: !91)
!188 = distinct !DILexicalBlock(scope: !177, file: !2, line: 126, column: 8)
!189 = !DILocation(line: 0, scope: !170)
!190 = !DILocation(line: 101, column: 15, scope: !170)
!191 = !DILocation(line: 105, column: 8, scope: !179)
!192 = !DILocation(line: 105, column: 6, scope: !170)
!193 = !DILocation(line: 107, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !179, file: !2, line: 105, column: 16)
!195 = !DILocation(line: 108, column: 5, scope: !194)
!196 = !DILocation(line: 110, column: 14, scope: !178)
!197 = !DILocation(line: 110, column: 11, scope: !179)
!198 = !DILocation(line: 111, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 111, column: 5)
!200 = distinct !DILexicalBlock(scope: !178, file: !2, line: 110, column: 33)
!201 = !DILocation(line: 111, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !2, line: 111, column: 5)
!203 = !DILocation(line: 113, column: 14, scope: !177)
!204 = !DILocation(line: 113, column: 11, scope: !178)
!205 = !DILocation(line: 114, column: 28, scope: !176)
!206 = !DILocation(line: 114, column: 24, scope: !176)
!207 = !DILocation(line: 0, scope: !176)
!208 = !DILocation(line: 115, column: 24, scope: !176)
!209 = !DILocation(line: 121, column: 63, scope: !176)
!210 = !DILocation(line: 121, column: 60, scope: !176)
!211 = !DILocation(line: 121, column: 55, scope: !176)
!212 = !DILocation(line: 121, column: 52, scope: !176)
!213 = !DILocation(line: 121, column: 47, scope: !176)
!214 = !DILocation(line: 121, column: 44, scope: !176)
!215 = !DILocation(line: 121, column: 39, scope: !176)
!216 = !DILocation(line: 121, column: 36, scope: !176)
!217 = !DILocation(line: 121, column: 31, scope: !176)
!218 = !DILocation(line: 121, column: 28, scope: !176)
!219 = !DILocation(line: 122, column: 23, scope: !176)
!220 = !DILocation(line: 122, column: 26, scope: !176)
!221 = !DILocation(line: 122, column: 31, scope: !176)
!222 = !DILocation(line: 122, column: 17, scope: !176)
!223 = !DILocation(line: 123, column: 43, scope: !176)
!224 = !DILocation(line: 123, column: 41, scope: !176)
!225 = !DILocation(line: 123, column: 13, scope: !176)
!226 = !DILocation(line: 123, column: 17, scope: !176)
!227 = !DILocation(line: 127, column: 25, scope: !188)
!228 = !DILocation(line: 127, column: 17, scope: !188)
!229 = !DILocation(line: 0, scope: !188)
!230 = !DILocation(line: 128, column: 33, scope: !188)
!231 = !DILocation(line: 128, column: 28, scope: !188)
!232 = !DILocation(line: 128, column: 44, scope: !188)
!233 = !DILocation(line: 128, column: 38, scope: !188)
!234 = !DILocation(line: 128, column: 23, scope: !188)
!235 = !DILocation(line: 128, column: 55, scope: !188)
!236 = !DILocation(line: 128, column: 50, scope: !188)
!237 = !DILocation(line: 128, column: 17, scope: !188)
!238 = !DILocation(line: 129, column: 43, scope: !188)
!239 = !DILocation(line: 129, column: 41, scope: !188)
!240 = !DILocation(line: 129, column: 13, scope: !188)
!241 = !DILocation(line: 129, column: 17, scope: !188)
!242 = !DILocation(line: 130, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !188, file: !2, line: 130, column: 8)
!244 = !DILocation(line: 130, column: 8, scope: !188)
!245 = !DILocation(line: 130, column: 31, scope: !243)
!246 = !DILocation(line: 130, column: 29, scope: !243)
!247 = !DILocation(line: 130, column: 17, scope: !243)
!248 = !DILocation(line: 0, scope: !179)
!249 = !DILocation(line: 133, column: 1, scope: !170)
!250 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !253, !253, !38, !38}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!255 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled_e", scope: !2, file: !2, line: 136, type: !88, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !256)
!256 = !{!257, !258, !259, !260, !265, !266, !267, !268, !269, !270, !271, !272, !274}
!257 = !DILocalVariable(name: "x", arg: 1, scope: !255, file: !2, line: 136, type: !90)
!258 = !DILocalVariable(name: "result", arg: 2, scope: !255, file: !2, line: 136, type: !92)
!259 = !DILocalVariable(name: "ax", scope: !255, file: !2, line: 138, type: !91)
!260 = !DILocalVariable(name: "y", scope: !261, file: !2, line: 151, type: !90)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 150, column: 22)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 150, column: 11)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 147, column: 11)
!264 = distinct !DILexicalBlock(scope: !255, file: !2, line: 142, column: 6)
!265 = !DILocalVariable(name: "c1", scope: !261, file: !2, line: 152, type: !90)
!266 = !DILocalVariable(name: "c2", scope: !261, file: !2, line: 153, type: !90)
!267 = !DILocalVariable(name: "c3", scope: !261, file: !2, line: 154, type: !90)
!268 = !DILocalVariable(name: "c4", scope: !261, file: !2, line: 155, type: !90)
!269 = !DILocalVariable(name: "c5", scope: !261, file: !2, line: 156, type: !90)
!270 = !DILocalVariable(name: "sum", scope: !261, file: !2, line: 157, type: !90)
!271 = !DILocalVariable(name: "pre", scope: !261, file: !2, line: 158, type: !90)
!272 = !DILocalVariable(name: "ex", scope: !273, file: !2, line: 164, type: !91)
!273 = distinct !DILexicalBlock(scope: !262, file: !2, line: 163, column: 8)
!274 = !DILocalVariable(name: "x2", scope: !273, file: !2, line: 165, type: !91)
!275 = !DILocation(line: 0, scope: !255)
!276 = !DILocation(line: 138, column: 15, scope: !255)
!277 = !DILocation(line: 142, column: 8, scope: !264)
!278 = !DILocation(line: 142, column: 6, scope: !255)
!279 = !DILocation(line: 144, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !264, file: !2, line: 142, column: 16)
!281 = !DILocation(line: 145, column: 5, scope: !280)
!282 = !DILocation(line: 147, column: 14, scope: !263)
!283 = !DILocation(line: 147, column: 11, scope: !264)
!284 = !DILocation(line: 148, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 148, column: 5)
!286 = distinct !DILexicalBlock(scope: !263, file: !2, line: 147, column: 38)
!287 = !DILocation(line: 148, column: 5, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !2, line: 148, column: 5)
!289 = !DILocation(line: 150, column: 14, scope: !262)
!290 = !DILocation(line: 150, column: 11, scope: !263)
!291 = !DILocation(line: 151, column: 23, scope: !261)
!292 = !DILocation(line: 0, scope: !261)
!293 = !DILocation(line: 157, column: 63, scope: !261)
!294 = !DILocation(line: 157, column: 60, scope: !261)
!295 = !DILocation(line: 157, column: 55, scope: !261)
!296 = !DILocation(line: 157, column: 52, scope: !261)
!297 = !DILocation(line: 157, column: 47, scope: !261)
!298 = !DILocation(line: 157, column: 44, scope: !261)
!299 = !DILocation(line: 157, column: 39, scope: !261)
!300 = !DILocation(line: 157, column: 36, scope: !261)
!301 = !DILocation(line: 157, column: 31, scope: !261)
!302 = !DILocation(line: 157, column: 28, scope: !261)
!303 = !DILocation(line: 158, column: 28, scope: !261)
!304 = !DILocation(line: 158, column: 24, scope: !261)
!305 = !DILocation(line: 158, column: 33, scope: !261)
!306 = !DILocation(line: 158, column: 36, scope: !261)
!307 = !DILocation(line: 158, column: 38, scope: !261)
!308 = !DILocation(line: 159, column: 23, scope: !261)
!309 = !DILocation(line: 159, column: 17, scope: !261)
!310 = !DILocation(line: 160, column: 43, scope: !261)
!311 = !DILocation(line: 160, column: 41, scope: !261)
!312 = !DILocation(line: 160, column: 13, scope: !261)
!313 = !DILocation(line: 160, column: 17, scope: !261)
!314 = !DILocation(line: 164, column: 25, scope: !273)
!315 = !DILocation(line: 164, column: 17, scope: !273)
!316 = !DILocation(line: 0, scope: !273)
!317 = !DILocation(line: 165, column: 18, scope: !273)
!318 = !DILocation(line: 166, column: 30, scope: !273)
!319 = !DILocation(line: 166, column: 39, scope: !273)
!320 = !DILocation(line: 166, column: 34, scope: !273)
!321 = !DILocation(line: 166, column: 49, scope: !273)
!322 = !DILocation(line: 166, column: 57, scope: !273)
!323 = !DILocation(line: 166, column: 52, scope: !273)
!324 = !DILocation(line: 166, column: 44, scope: !273)
!325 = !DILocation(line: 166, column: 23, scope: !273)
!326 = !DILocation(line: 166, column: 69, scope: !273)
!327 = !DILocation(line: 166, column: 62, scope: !273)
!328 = !DILocation(line: 166, column: 17, scope: !273)
!329 = !DILocation(line: 167, column: 43, scope: !273)
!330 = !DILocation(line: 167, column: 41, scope: !273)
!331 = !DILocation(line: 167, column: 13, scope: !273)
!332 = !DILocation(line: 167, column: 17, scope: !273)
!333 = !DILocation(line: 0, scope: !264)
!334 = !DILocation(line: 170, column: 1, scope: !255)
!335 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !2, file: !2, line: 173, type: !336, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !339)
!336 = !DISubroutineType(types: !337)
!337 = !{!38, !338, !91, !92}
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!339 = !{!340, !341, !342, !343, !344, !345, !350, !351, !354, !355, !358, !359, !362, !363, !364, !367, !368, !369, !370, !371, !372, !373, !374, !377, !378, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!340 = !DILocalVariable(name: "l", arg: 1, scope: !335, file: !2, line: 173, type: !338)
!341 = !DILocalVariable(name: "x", arg: 2, scope: !335, file: !2, line: 173, type: !91)
!342 = !DILocalVariable(name: "result", arg: 3, scope: !335, file: !2, line: 173, type: !92)
!343 = !DILocalVariable(name: "sgn", scope: !335, file: !2, line: 175, type: !91)
!344 = !DILocalVariable(name: "ax", scope: !335, file: !2, line: 176, type: !91)
!345 = !DILocalVariable(name: "il", scope: !346, file: !2, line: 193, type: !93)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 192, column: 19)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 192, column: 11)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 187, column: 11)
!349 = distinct !DILexicalBlock(scope: !335, file: !2, line: 184, column: 6)
!350 = !DILocalVariable(name: "stat_il", scope: !346, file: !2, line: 194, type: !38)
!351 = !DILocalVariable(name: "il", scope: !352, file: !2, line: 200, type: !93)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 199, column: 19)
!353 = distinct !DILexicalBlock(scope: !347, file: !2, line: 199, column: 11)
!354 = !DILocalVariable(name: "stat_il", scope: !352, file: !2, line: 201, type: !38)
!355 = !DILocalVariable(name: "il", scope: !356, file: !2, line: 207, type: !93)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 206, column: 19)
!357 = distinct !DILexicalBlock(scope: !353, file: !2, line: 206, column: 11)
!358 = !DILocalVariable(name: "stat_il", scope: !356, file: !2, line: 208, type: !38)
!359 = !DILocalVariable(name: "b", scope: !360, file: !2, line: 214, type: !93)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 213, column: 35)
!361 = distinct !DILexicalBlock(scope: !357, file: !2, line: 213, column: 11)
!362 = !DILocalVariable(name: "stat", scope: !360, file: !2, line: 215, type: !38)
!363 = !DILocalVariable(name: "pre", scope: !360, file: !2, line: 216, type: !91)
!364 = !DILocalVariable(name: "i0_scaled", scope: !365, file: !2, line: 223, type: !93)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 222, column: 20)
!366 = distinct !DILexicalBlock(scope: !361, file: !2, line: 222, column: 11)
!367 = !DILocalVariable(name: "stat_i0", scope: !365, file: !2, line: 224, type: !38)
!368 = !DILocalVariable(name: "rat", scope: !365, file: !2, line: 225, type: !91)
!369 = !DILocalVariable(name: "stat_CF1", scope: !365, file: !2, line: 226, type: !38)
!370 = !DILocalVariable(name: "iellp1", scope: !365, file: !2, line: 227, type: !91)
!371 = !DILocalVariable(name: "iell", scope: !365, file: !2, line: 228, type: !91)
!372 = !DILocalVariable(name: "iellm1", scope: !365, file: !2, line: 229, type: !91)
!373 = !DILocalVariable(name: "ell", scope: !365, file: !2, line: 230, type: !38)
!374 = !DILocalVariable(name: "status", scope: !375, file: !2, line: 242, type: !38)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 241, column: 83)
!376 = distinct !DILexicalBlock(scope: !366, file: !2, line: 241, column: 11)
!377 = !DILocalVariable(name: "pre", scope: !375, file: !2, line: 243, type: !91)
!378 = !DILocalVariable(name: "rt_term", scope: !379, file: !2, line: 250, type: !91)
!379 = distinct !DILexicalBlock(scope: !376, file: !2, line: 248, column: 8)
!380 = !DILocalVariable(name: "LMAX", scope: !379, file: !2, line: 251, type: !338)
!381 = !DILocalVariable(name: "r_iellp1", scope: !379, file: !2, line: 252, type: !93)
!382 = !DILocalVariable(name: "r_iell", scope: !379, file: !2, line: 253, type: !93)
!383 = !DILocalVariable(name: "stat_a1", scope: !379, file: !2, line: 254, type: !38)
!384 = !DILocalVariable(name: "stat_a2", scope: !379, file: !2, line: 255, type: !38)
!385 = !DILocalVariable(name: "iellp1", scope: !379, file: !2, line: 256, type: !91)
!386 = !DILocalVariable(name: "iell", scope: !379, file: !2, line: 257, type: !91)
!387 = !DILocalVariable(name: "iellm1", scope: !379, file: !2, line: 258, type: !91)
!388 = !DILocalVariable(name: "ell", scope: !379, file: !2, line: 259, type: !38)
!389 = distinct !DIAssignID()
!390 = !DILocation(line: 0, scope: !352)
!391 = distinct !DIAssignID()
!392 = !DILocation(line: 0, scope: !356)
!393 = distinct !DIAssignID()
!394 = !DILocation(line: 0, scope: !360)
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !365)
!397 = distinct !DIAssignID()
!398 = distinct !DIAssignID()
!399 = !DILocation(line: 0, scope: !379)
!400 = distinct !DIAssignID()
!401 = !DILocation(line: 0, scope: !335)
!402 = !DILocation(line: 176, column: 16, scope: !335)
!403 = !DILocation(line: 178, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !335, file: !2, line: 178, column: 6)
!405 = !DILocation(line: 178, column: 6, scope: !335)
!406 = !DILocation(line: 180, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !2, line: 178, column: 15)
!408 = !DILocation(line: 181, column: 9, scope: !407)
!409 = !DILocation(line: 182, column: 3, scope: !407)
!410 = !DILocation(line: 184, column: 8, scope: !349)
!411 = !DILocation(line: 184, column: 6, scope: !335)
!412 = !DILocation(line: 185, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 185, column: 5)
!414 = distinct !DILexicalBlock(scope: !349, file: !2, line: 184, column: 13)
!415 = !DILocation(line: 185, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !2, line: 185, column: 5)
!417 = !DILocation(line: 187, column: 13, scope: !348)
!418 = !DILocation(line: 187, column: 11, scope: !349)
!419 = !DILocation(line: 188, column: 23, scope: !420)
!420 = distinct !DILexicalBlock(scope: !348, file: !2, line: 187, column: 21)
!421 = !DILocation(line: 188, column: 21, scope: !420)
!422 = !DILocation(line: 188, column: 17, scope: !420)
!423 = !DILocation(line: 189, column: 13, scope: !420)
!424 = !DILocation(line: 189, column: 17, scope: !420)
!425 = !DILocation(line: 190, column: 5, scope: !420)
!426 = !DILocation(line: 192, column: 11, scope: !348)
!427 = !DILocation(line: 0, scope: !87, inlinedAt: !428)
!428 = distinct !DILocation(line: 194, column: 19, scope: !346)
!429 = !DILocation(line: 66, column: 15, scope: !87, inlinedAt: !428)
!430 = !DILocation(line: 75, column: 14, scope: !105, inlinedAt: !428)
!431 = !DILocation(line: 75, column: 11, scope: !106, inlinedAt: !428)
!432 = !DILocation(line: 76, column: 28, scope: !104, inlinedAt: !428)
!433 = !DILocation(line: 76, column: 24, scope: !104, inlinedAt: !428)
!434 = !DILocation(line: 0, scope: !104, inlinedAt: !428)
!435 = !DILocation(line: 77, column: 24, scope: !104, inlinedAt: !428)
!436 = !DILocation(line: 83, column: 63, scope: !104, inlinedAt: !428)
!437 = !DILocation(line: 83, column: 60, scope: !104, inlinedAt: !428)
!438 = !DILocation(line: 83, column: 55, scope: !104, inlinedAt: !428)
!439 = !DILocation(line: 83, column: 52, scope: !104, inlinedAt: !428)
!440 = !DILocation(line: 83, column: 47, scope: !104, inlinedAt: !428)
!441 = !DILocation(line: 83, column: 44, scope: !104, inlinedAt: !428)
!442 = !DILocation(line: 83, column: 39, scope: !104, inlinedAt: !428)
!443 = !DILocation(line: 83, column: 36, scope: !104, inlinedAt: !428)
!444 = !DILocation(line: 83, column: 31, scope: !104, inlinedAt: !428)
!445 = !DILocation(line: 83, column: 28, scope: !104, inlinedAt: !428)
!446 = !DILocation(line: 84, column: 23, scope: !104, inlinedAt: !428)
!447 = !DILocation(line: 0, scope: !346)
!448 = !DILocation(line: 86, column: 3, scope: !104, inlinedAt: !428)
!449 = !DILocation(line: 87, column: 14, scope: !147, inlinedAt: !428)
!450 = !DILocation(line: 87, column: 11, scope: !105, inlinedAt: !428)
!451 = !DILocation(line: 88, column: 34, scope: !150, inlinedAt: !428)
!452 = !DILocation(line: 88, column: 26, scope: !150, inlinedAt: !428)
!453 = !DILocation(line: 88, column: 24, scope: !150, inlinedAt: !428)
!454 = !DILocation(line: 88, column: 44, scope: !150, inlinedAt: !428)
!455 = !DILocation(line: 88, column: 39, scope: !150, inlinedAt: !428)
!456 = !DILocation(line: 90, column: 3, scope: !150, inlinedAt: !428)
!457 = !DILocation(line: 92, column: 27, scope: !159, inlinedAt: !428)
!458 = !DILocation(line: 92, column: 22, scope: !159, inlinedAt: !428)
!459 = !DILocation(line: 0, scope: !106, inlinedAt: !428)
!460 = !DILocation(line: 0, scope: !105, inlinedAt: !428)
!461 = !DILocation(line: 195, column: 23, scope: !346)
!462 = !DILocation(line: 195, column: 17, scope: !346)
!463 = !DILocation(line: 196, column: 13, scope: !346)
!464 = !DILocation(line: 196, column: 17, scope: !346)
!465 = !DILocation(line: 200, column: 5, scope: !352)
!466 = !DILocation(line: 201, column: 19, scope: !352)
!467 = !{i32 0, i32 16}
!468 = !DILocation(line: 202, column: 28, scope: !352)
!469 = !DILocation(line: 202, column: 23, scope: !352)
!470 = !DILocation(line: 202, column: 17, scope: !352)
!471 = !DILocation(line: 203, column: 22, scope: !352)
!472 = !DILocation(line: 203, column: 13, scope: !352)
!473 = !DILocation(line: 203, column: 17, scope: !352)
!474 = !DILocation(line: 205, column: 3, scope: !353)
!475 = !DILocation(line: 207, column: 5, scope: !356)
!476 = !DILocation(line: 208, column: 19, scope: !356)
!477 = !DILocation(line: 209, column: 28, scope: !356)
!478 = !DILocation(line: 209, column: 23, scope: !356)
!479 = !DILocation(line: 209, column: 17, scope: !356)
!480 = !DILocation(line: 210, column: 22, scope: !356)
!481 = !DILocation(line: 210, column: 13, scope: !356)
!482 = !DILocation(line: 210, column: 17, scope: !356)
!483 = !DILocation(line: 212, column: 3, scope: !357)
!484 = !DILocation(line: 213, column: 12, scope: !361)
!485 = !DILocation(line: 213, column: 23, scope: !361)
!486 = !DILocation(line: 213, column: 24, scope: !361)
!487 = !DILocation(line: 213, column: 21, scope: !361)
!488 = !DILocation(line: 213, column: 29, scope: !361)
!489 = !DILocation(line: 213, column: 15, scope: !361)
!490 = !DILocation(line: 213, column: 11, scope: !357)
!491 = !DILocation(line: 214, column: 5, scope: !360)
!492 = !DILocation(line: 215, column: 43, scope: !360)
!493 = !DILocation(line: 215, column: 16, scope: !360)
!494 = !DILocation(line: 216, column: 24, scope: !360)
!495 = !DILocation(line: 216, column: 20, scope: !360)
!496 = !DILocation(line: 216, column: 46, scope: !360)
!497 = !DILocation(line: 216, column: 31, scope: !360)
!498 = !DILocation(line: 216, column: 29, scope: !360)
!499 = !DILocation(line: 217, column: 24, scope: !360)
!500 = !DILocation(line: 217, column: 34, scope: !360)
!501 = !DILocation(line: 217, column: 30, scope: !360)
!502 = !DILocation(line: 217, column: 18, scope: !360)
!503 = !DILocation(line: 218, column: 28, scope: !360)
!504 = !DILocation(line: 218, column: 24, scope: !360)
!505 = !DILocation(line: 218, column: 13, scope: !360)
!506 = !DILocation(line: 219, column: 44, scope: !360)
!507 = !DILocation(line: 219, column: 42, scope: !360)
!508 = !DILocation(line: 219, column: 17, scope: !360)
!509 = !DILocation(line: 221, column: 3, scope: !361)
!510 = !DILocation(line: 222, column: 13, scope: !366)
!511 = !DILocation(line: 222, column: 11, scope: !361)
!512 = !DILocation(line: 223, column: 5, scope: !365)
!513 = !DILocation(line: 224, column: 20, scope: !365)
!514 = !DILocation(line: 225, column: 5, scope: !365)
!515 = !DILocation(line: 226, column: 20, scope: !365)
!516 = !DILocation(line: 227, column: 21, scope: !365)
!517 = !{!122, !122, i64 0}
!518 = !DILocation(line: 227, column: 25, scope: !365)
!519 = !DILocation(line: 231, column: 5, scope: !520)
!520 = distinct !DILexicalBlock(scope: !365, file: !2, line: 231, column: 5)
!521 = !DILocation(line: 232, column: 27, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 231, column: 35)
!523 = distinct !DILexicalBlock(scope: !520, file: !2, line: 231, column: 5)
!524 = !DILocation(line: 232, column: 32, scope: !522)
!525 = !DILocation(line: 232, column: 25, scope: !522)
!526 = !DILocation(line: 232, column: 36, scope: !522)
!527 = !DILocation(line: 232, column: 39, scope: !522)
!528 = !DILocation(line: 232, column: 23, scope: !522)
!529 = !DILocation(line: 231, column: 31, scope: !523)
!530 = !DILocation(line: 231, column: 22, scope: !523)
!531 = distinct !{!531, !519, !532, !533}
!532 = !DILocation(line: 235, column: 5, scope: !520)
!533 = !{!"llvm.loop.mustprogress"}
!534 = !DILocation(line: 236, column: 36, scope: !365)
!535 = !DILocation(line: 236, column: 24, scope: !365)
!536 = !DILocation(line: 236, column: 60, scope: !365)
!537 = !DILocation(line: 236, column: 40, scope: !365)
!538 = !DILocation(line: 236, column: 18, scope: !365)
!539 = !DILocation(line: 237, column: 30, scope: !365)
!540 = !DILocation(line: 237, column: 34, scope: !365)
!541 = !DILocation(line: 237, column: 13, scope: !365)
!542 = !DILocation(line: 238, column: 44, scope: !365)
!543 = !DILocation(line: 238, column: 42, scope: !365)
!544 = !DILocation(line: 238, column: 17, scope: !365)
!545 = !DILocation(line: 240, column: 3, scope: !366)
!546 = !DILocation(line: 241, column: 11, scope: !376)
!547 = !DILocation(line: 241, column: 54, scope: !376)
!548 = !DILocation(line: 241, column: 11, scope: !366)
!549 = !DILocation(line: 242, column: 58, scope: !375)
!550 = !DILocation(line: 242, column: 18, scope: !375)
!551 = !DILocation(line: 0, scope: !375)
!552 = !DILocation(line: 243, column: 33, scope: !375)
!553 = !DILocation(line: 243, column: 18, scope: !375)
!554 = !DILocation(line: 244, column: 24, scope: !375)
!555 = !DILocation(line: 244, column: 17, scope: !375)
!556 = !DILocation(line: 245, column: 13, scope: !375)
!557 = !DILocation(line: 245, column: 17, scope: !375)
!558 = !DILocation(line: 250, column: 37, scope: !379)
!559 = !DILocation(line: 250, column: 22, scope: !379)
!560 = !DILocation(line: 252, column: 5, scope: !379)
!561 = !DILocation(line: 253, column: 5, scope: !379)
!562 = !DILocation(line: 254, column: 19, scope: !379)
!563 = !DILocation(line: 255, column: 19, scope: !379)
!564 = !DILocation(line: 256, column: 30, scope: !379)
!565 = !DILocation(line: 257, column: 28, scope: !379)
!566 = !DILocation(line: 262, column: 25, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 262, column: 5)
!568 = distinct !DILexicalBlock(scope: !379, file: !2, line: 262, column: 5)
!569 = !DILocation(line: 262, column: 5, scope: !568)
!570 = !DILocation(line: 261, column: 12, scope: !379)
!571 = !DILocation(line: 260, column: 12, scope: !379)
!572 = !DILocation(line: 263, column: 27, scope: !573)
!573 = distinct !DILexicalBlock(scope: !567, file: !2, line: 262, column: 40)
!574 = !DILocation(line: 263, column: 32, scope: !573)
!575 = !DILocation(line: 263, column: 25, scope: !573)
!576 = !DILocation(line: 263, column: 36, scope: !573)
!577 = !DILocation(line: 263, column: 39, scope: !573)
!578 = !DILocation(line: 263, column: 23, scope: !573)
!579 = !DILocation(line: 262, column: 36, scope: !567)
!580 = distinct !{!580, !569, !581, !533}
!581 = !DILocation(line: 266, column: 5, scope: !568)
!582 = !DILocation(line: 267, column: 24, scope: !379)
!583 = !DILocation(line: 267, column: 18, scope: !379)
!584 = !DILocation(line: 268, column: 20, scope: !379)
!585 = !DILocation(line: 268, column: 71, scope: !379)
!586 = !DILocation(line: 268, column: 74, scope: !379)
!587 = !DILocation(line: 268, column: 57, scope: !379)
!588 = !DILocation(line: 268, column: 55, scope: !379)
!589 = !DILocation(line: 268, column: 103, scope: !379)
!590 = !DILocation(line: 268, column: 106, scope: !379)
!591 = !DILocation(line: 268, column: 91, scope: !379)
!592 = !DILocation(line: 268, column: 89, scope: !379)
!593 = !DILocation(line: 268, column: 37, scope: !379)
!594 = !DILocation(line: 268, column: 13, scope: !379)
!595 = !DILocation(line: 269, column: 42, scope: !379)
!596 = !DILocation(line: 269, column: 17, scope: !379)
!597 = !DILocation(line: 271, column: 12, scope: !379)
!598 = !DILocation(line: 272, column: 3, scope: !376)
!599 = !DILocation(line: 0, scope: !349)
!600 = !DILocation(line: 273, column: 1, scope: !335)
!601 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !602, file: !602, line: 32, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!603 = !DISubroutineType(types: !604)
!604 = !{!38, !90, !90, !338, !338, !90, !92}
!605 = !DISubprogram(name: "sqrt", scope: !167, file: !167, line: 143, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = distinct !DISubprogram(name: "bessel_il_CF1", scope: !2, file: !2, line: 37, type: !607, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !610)
!607 = !DISubroutineType(cc: DW_CC_nocall, types: !608)
!608 = !{!38, !338, !90, !90, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!611 = !DILocalVariable(name: "l", arg: 1, scope: !606, file: !2, line: 37, type: !338)
!612 = !DILocalVariable(name: "x", arg: 2, scope: !606, file: !2, line: 37, type: !90)
!613 = !DILocalVariable(name: "threshold", arg: 3, scope: !606, file: !2, line: 37, type: !90)
!614 = !DILocalVariable(name: "ratio", arg: 4, scope: !606, file: !2, line: 37, type: !609)
!615 = !DILocalVariable(name: "kmax", scope: !606, file: !2, line: 39, type: !338)
!616 = !DILocalVariable(name: "tk", scope: !606, file: !2, line: 40, type: !91)
!617 = !DILocalVariable(name: "sum", scope: !606, file: !2, line: 41, type: !91)
!618 = !DILocalVariable(name: "rhok", scope: !606, file: !2, line: 42, type: !91)
!619 = !DILocalVariable(name: "k", scope: !606, file: !2, line: 43, type: !38)
!620 = !DILocalVariable(name: "ak", scope: !621, file: !2, line: 46, type: !91)
!621 = distinct !DILexicalBlock(scope: !622, file: !2, line: 45, column: 26)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 45, column: 3)
!623 = distinct !DILexicalBlock(scope: !606, file: !2, line: 45, column: 3)
!624 = !DILocation(line: 0, scope: !606)
!625 = !DILocation(line: 46, column: 25, scope: !621)
!626 = !DILocation(line: 46, column: 24, scope: !621)
!627 = !DILocation(line: 46, column: 26, scope: !621)
!628 = !DILocation(line: 45, column: 3, scope: !623)
!629 = !DILocation(line: 46, column: 35, scope: !621)
!630 = !DILocation(line: 46, column: 34, scope: !621)
!631 = !DILocation(line: 46, column: 30, scope: !621)
!632 = !DILocation(line: 46, column: 19, scope: !621)
!633 = !DILocation(line: 46, column: 54, scope: !621)
!634 = !DILocation(line: 46, column: 43, scope: !621)
!635 = !DILocation(line: 46, column: 39, scope: !621)
!636 = !DILocation(line: 0, scope: !621)
!637 = !DILocation(line: 47, column: 12, scope: !621)
!638 = !DILocation(line: 47, column: 21, scope: !621)
!639 = !DILocation(line: 47, column: 15, scope: !621)
!640 = !DILocation(line: 47, column: 38, scope: !621)
!641 = !DILocation(line: 47, column: 34, scope: !621)
!642 = !DILocation(line: 47, column: 28, scope: !621)
!643 = !DILocation(line: 48, column: 9, scope: !621)
!644 = !DILocation(line: 49, column: 9, scope: !621)
!645 = !DILocation(line: 50, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !621, file: !2, line: 50, column: 8)
!647 = !DILocation(line: 50, column: 8, scope: !646)
!648 = !DILocation(line: 50, column: 21, scope: !646)
!649 = !DILocation(line: 45, column: 22, scope: !622)
!650 = !DILocation(line: 45, column: 13, scope: !622)
!651 = distinct !{!651, !628, !652, !533}
!652 = !DILocation(line: 51, column: 3, scope: !623)
!653 = !DILocation(line: 53, column: 13, scope: !606)
!654 = !DILocation(line: 53, column: 26, scope: !606)
!655 = !DILocation(line: 53, column: 10, scope: !606)
!656 = !DILocation(line: 55, column: 6, scope: !606)
!657 = !DILocation(line: 55, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !606, file: !2, line: 55, column: 6)
!659 = !DILocation(line: 56, column: 5, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !2, line: 56, column: 5)
!661 = !DILocation(line: 0, scope: !658)
!662 = !DILocation(line: 59, column: 1, scope: !606)
!663 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !602, file: !602, line: 48, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{!38, !90, !90, !92}
!666 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_array", scope: !2, file: !2, line: 276, type: !667, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!38, !338, !90, !609}
!669 = !{!670, !671, !672, !673, !676, !678, !679, !680, !681, !682, !683, !684}
!670 = !DILocalVariable(name: "lmax", arg: 1, scope: !666, file: !2, line: 276, type: !338)
!671 = !DILocalVariable(name: "x", arg: 2, scope: !666, file: !2, line: 276, type: !90)
!672 = !DILocalVariable(name: "result_array", arg: 3, scope: !666, file: !2, line: 276, type: !609)
!673 = !DILocalVariable(name: "ell", scope: !674, file: !2, line: 279, type: !38)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 278, column: 16)
!675 = distinct !DILexicalBlock(scope: !666, file: !2, line: 278, column: 6)
!676 = !DILocalVariable(name: "ell", scope: !677, file: !2, line: 286, type: !38)
!677 = distinct !DILexicalBlock(scope: !675, file: !2, line: 285, column: 10)
!678 = !DILocalVariable(name: "r_iellp1", scope: !677, file: !2, line: 287, type: !93)
!679 = !DILocalVariable(name: "r_iell", scope: !677, file: !2, line: 288, type: !93)
!680 = !DILocalVariable(name: "stat_0", scope: !677, file: !2, line: 289, type: !38)
!681 = !DILocalVariable(name: "stat_1", scope: !677, file: !2, line: 290, type: !38)
!682 = !DILocalVariable(name: "iellp1", scope: !677, file: !2, line: 291, type: !91)
!683 = !DILocalVariable(name: "iell", scope: !677, file: !2, line: 292, type: !91)
!684 = !DILocalVariable(name: "iellm1", scope: !677, file: !2, line: 293, type: !91)
!685 = distinct !DIAssignID()
!686 = !DILocation(line: 0, scope: !677)
!687 = distinct !DIAssignID()
!688 = !DILocation(line: 0, scope: !666)
!689 = !DILocation(line: 278, column: 8, scope: !675)
!690 = !DILocation(line: 278, column: 6, scope: !666)
!691 = !DILocation(line: 280, column: 21, scope: !674)
!692 = !DILocation(line: 0, scope: !674)
!693 = !DILocation(line: 281, column: 26, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 281, column: 5)
!695 = distinct !DILexicalBlock(scope: !674, file: !2, line: 281, column: 5)
!696 = !DILocation(line: 281, column: 5, scope: !695)
!697 = !DILocation(line: 282, column: 25, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !2, line: 281, column: 39)
!699 = !DILocation(line: 303, column: 1, scope: !666)
!700 = !DILocation(line: 287, column: 5, scope: !677)
!701 = !DILocation(line: 288, column: 5, scope: !677)
!702 = !DILocation(line: 289, column: 48, scope: !677)
!703 = !DILocation(line: 289, column: 18, scope: !677)
!704 = !DILocation(line: 290, column: 18, scope: !677)
!705 = !DILocation(line: 291, column: 30, scope: !677)
!706 = !DILocation(line: 292, column: 28, scope: !677)
!707 = !DILocation(line: 294, column: 5, scope: !677)
!708 = !DILocation(line: 294, column: 24, scope: !677)
!709 = !DILocation(line: 295, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !677, file: !2, line: 295, column: 5)
!711 = !DILocation(line: 295, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !2, line: 295, column: 5)
!713 = !DILocation(line: 295, column: 5, scope: !710)
!714 = !DILocation(line: 296, column: 27, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !2, line: 295, column: 38)
!716 = !DILocation(line: 296, column: 32, scope: !715)
!717 = !DILocation(line: 296, column: 25, scope: !715)
!718 = !DILocation(line: 296, column: 36, scope: !715)
!719 = !DILocation(line: 296, column: 39, scope: !715)
!720 = !DILocation(line: 296, column: 23, scope: !715)
!721 = !DILocation(line: 299, column: 7, scope: !715)
!722 = !DILocation(line: 299, column: 27, scope: !715)
!723 = !DILocation(line: 295, column: 34, scope: !712)
!724 = distinct !{!724, !713, !725, !533}
!725 = !DILocation(line: 300, column: 5, scope: !710)
!726 = !DILocation(line: 301, column: 12, scope: !677)
!727 = !DILocation(line: 302, column: 3, scope: !675)
!728 = !DILocation(line: 0, scope: !675)
!729 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled", scope: !2, file: !2, line: 310, type: !730, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!91, !90}
!732 = !{!733, !734, !735}
!733 = !DILocalVariable(name: "x", arg: 1, scope: !729, file: !2, line: 310, type: !90)
!734 = !DILocalVariable(name: "result", scope: !729, file: !2, line: 312, type: !93)
!735 = !DILocalVariable(name: "status", scope: !729, file: !2, line: 312, type: !38)
!736 = !DILocation(line: 0, scope: !729)
!737 = !DILocation(line: 0, scope: !87, inlinedAt: !738)
!738 = distinct !DILocation(line: 312, column: 3, scope: !729)
!739 = !DILocation(line: 66, column: 15, scope: !87, inlinedAt: !738)
!740 = !DILocation(line: 70, column: 8, scope: !106, inlinedAt: !738)
!741 = !DILocation(line: 70, column: 6, scope: !87, inlinedAt: !738)
!742 = !DILocation(line: 75, column: 14, scope: !105, inlinedAt: !738)
!743 = !DILocation(line: 75, column: 11, scope: !106, inlinedAt: !738)
!744 = !DILocation(line: 76, column: 28, scope: !104, inlinedAt: !738)
!745 = !DILocation(line: 76, column: 24, scope: !104, inlinedAt: !738)
!746 = !DILocation(line: 0, scope: !104, inlinedAt: !738)
!747 = !DILocation(line: 77, column: 24, scope: !104, inlinedAt: !738)
!748 = !DILocation(line: 83, column: 63, scope: !104, inlinedAt: !738)
!749 = !DILocation(line: 83, column: 60, scope: !104, inlinedAt: !738)
!750 = !DILocation(line: 83, column: 55, scope: !104, inlinedAt: !738)
!751 = !DILocation(line: 83, column: 52, scope: !104, inlinedAt: !738)
!752 = !DILocation(line: 83, column: 47, scope: !104, inlinedAt: !738)
!753 = !DILocation(line: 83, column: 44, scope: !104, inlinedAt: !738)
!754 = !DILocation(line: 83, column: 39, scope: !104, inlinedAt: !738)
!755 = !DILocation(line: 83, column: 36, scope: !104, inlinedAt: !738)
!756 = !DILocation(line: 83, column: 31, scope: !104, inlinedAt: !738)
!757 = !DILocation(line: 83, column: 28, scope: !104, inlinedAt: !738)
!758 = !DILocation(line: 84, column: 23, scope: !104, inlinedAt: !738)
!759 = !DILocation(line: 86, column: 3, scope: !104, inlinedAt: !738)
!760 = !DILocation(line: 87, column: 14, scope: !147, inlinedAt: !738)
!761 = !DILocation(line: 87, column: 11, scope: !105, inlinedAt: !738)
!762 = !DILocation(line: 88, column: 34, scope: !150, inlinedAt: !738)
!763 = !DILocation(line: 88, column: 26, scope: !150, inlinedAt: !738)
!764 = !DILocation(line: 88, column: 24, scope: !150, inlinedAt: !738)
!765 = !DILocation(line: 88, column: 44, scope: !150, inlinedAt: !738)
!766 = !DILocation(line: 88, column: 39, scope: !150, inlinedAt: !738)
!767 = !DILocation(line: 90, column: 3, scope: !150, inlinedAt: !738)
!768 = !DILocation(line: 92, column: 27, scope: !159, inlinedAt: !738)
!769 = !DILocation(line: 92, column: 22, scope: !159, inlinedAt: !738)
!770 = !DILocation(line: 0, scope: !106, inlinedAt: !738)
!771 = !DILocation(line: 313, column: 1, scope: !729)
!772 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled", scope: !2, file: !2, line: 315, type: !730, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !773)
!773 = !{!774, !775, !776}
!774 = !DILocalVariable(name: "x", arg: 1, scope: !772, file: !2, line: 315, type: !90)
!775 = !DILocalVariable(name: "result", scope: !772, file: !2, line: 317, type: !93)
!776 = !DILocalVariable(name: "status", scope: !772, file: !2, line: 317, type: !38)
!777 = distinct !DIAssignID()
!778 = !DILocation(line: 0, scope: !772)
!779 = !DILocation(line: 317, column: 3, scope: !772)
!780 = !DILocation(line: 317, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !772, file: !2, line: 317, column: 3)
!782 = !DILocation(line: 317, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !2, line: 317, column: 3)
!784 = distinct !DILexicalBlock(scope: !781, file: !2, line: 317, column: 3)
!785 = !DILocation(line: 318, column: 1, scope: !772)
!786 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled", scope: !2, file: !2, line: 320, type: !730, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !787)
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(name: "x", arg: 1, scope: !786, file: !2, line: 320, type: !90)
!789 = !DILocalVariable(name: "result", scope: !786, file: !2, line: 322, type: !93)
!790 = !DILocalVariable(name: "status", scope: !786, file: !2, line: 322, type: !38)
!791 = distinct !DIAssignID()
!792 = !DILocation(line: 0, scope: !786)
!793 = !DILocation(line: 322, column: 3, scope: !786)
!794 = !DILocation(line: 322, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !786, file: !2, line: 322, column: 3)
!796 = !DILocation(line: 322, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !2, line: 322, column: 3)
!798 = distinct !DILexicalBlock(scope: !795, file: !2, line: 322, column: 3)
!799 = !DILocation(line: 323, column: 1, scope: !786)
!800 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled", scope: !2, file: !2, line: 325, type: !801, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!91, !338, !90}
!803 = !{!804, !805, !806, !807}
!804 = !DILocalVariable(name: "l", arg: 1, scope: !800, file: !2, line: 325, type: !338)
!805 = !DILocalVariable(name: "x", arg: 2, scope: !800, file: !2, line: 325, type: !90)
!806 = !DILocalVariable(name: "result", scope: !800, file: !2, line: 327, type: !93)
!807 = !DILocalVariable(name: "status", scope: !800, file: !2, line: 327, type: !38)
!808 = distinct !DIAssignID()
!809 = !DILocation(line: 0, scope: !800)
!810 = !DILocation(line: 327, column: 3, scope: !800)
!811 = !DILocation(line: 327, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !800, file: !2, line: 327, column: 3)
!813 = !DILocation(line: 327, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !2, line: 327, column: 3)
!815 = distinct !DILexicalBlock(scope: !812, file: !2, line: 327, column: 3)
!816 = !DILocation(line: 328, column: 1, scope: !800)
