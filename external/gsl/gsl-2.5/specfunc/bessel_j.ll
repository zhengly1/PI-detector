; ModuleID = 'bessel_j.c'
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
  br i1 %4, label %5, label %19, !dbg !114

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
  %8 = fadd double %7, 0xBE5AE64567F544E4, !dbg !118
  %9 = fmul double %6, %8, !dbg !119
  %10 = fadd double %9, 0x3EC71DE3A556C734, !dbg !120
  %11 = fmul double %6, %10, !dbg !121
  %12 = fadd double %11, 0xBF2A01A01A01A01A, !dbg !122
  %13 = fmul double %6, %12, !dbg !123
  %14 = fadd double %13, 0x3F81111111111111, !dbg !124
  %15 = fmul double %6, %14, !dbg !125
  %16 = fadd double %15, 0xBFC5555555555555, !dbg !126
  %17 = fmul double %6, %16, !dbg !127
  %18 = fadd double %17, 1.000000e+00, !dbg !128
  br label %22

19:                                               ; preds = %2
  %20 = tail call double @sin(double noundef %0) #9, !dbg !129
  %21 = fdiv double %20, %0, !dbg !131
  br label %22, !dbg !132

22:                                               ; preds = %19, %5
  %23 = phi double [ %21, %19 ], [ %18, %5 ]
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !133
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !133
  store double %23, ptr %1, align 8, !dbg !133
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !133
  store double %25, ptr %26, align 8, !dbg !133
  ret i32 0, !dbg !134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !135 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_j1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !139 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !141, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !142, metadata !DIExpression()), !dbg !158
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !159
  tail call void @llvm.dbg.value(metadata double %3, metadata !143, metadata !DIExpression()), !dbg !158
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !160
  br i1 %4, label %5, label %6, !dbg !161

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !162
  br label %46, !dbg !164

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x28CCCCCCCCCCCD, !dbg !165
  br i1 %7, label %8, label %10, !dbg !166

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !167, !tbaa !170
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !167
  store double 0x10000000000000, ptr %9, align 8, !dbg !167, !tbaa !175
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 15) #9, !dbg !176
  br label %46, !dbg !176

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !178
  br i1 %11, label %12, label %29, !dbg !179

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !180
  tail call void @llvm.dbg.value(metadata double %13, metadata !144, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !149, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !150, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0xBF11566ABC011567, metadata !151, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !152, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata double 0xBE38D48ED61D7AAB, metadata !153, metadata !DIExpression()), !dbg !181
  %14 = fmul double %13, 0x3E38D48ED61D7AAB, !dbg !182
  %15 = fsub double 0x3EA937E11175F095, %14, !dbg !183
  %16 = fmul double %13, %15, !dbg !184
  %17 = fadd double %16, 0xBF11566ABC011567, !dbg !185
  %18 = fmul double %13, %17, !dbg !186
  %19 = fadd double %18, 0x3F6D41D41D41D41D, !dbg !187
  %20 = fmul double %13, %19, !dbg !188
  %21 = fadd double %20, -1.000000e-01, !dbg !189
  %22 = fmul double %13, %21, !dbg !190
  %23 = fadd double %22, 1.000000e+00, !dbg !191
  tail call void @llvm.dbg.value(metadata double %23, metadata !154, metadata !DIExpression()), !dbg !181
  %24 = fdiv double %0, 3.000000e+00, !dbg !192
  %25 = fmul double %24, %23, !dbg !193
  store double %25, ptr %1, align 8, !dbg !194, !tbaa !170
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !195
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !196
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !197
  store double %27, ptr %28, align 8, !dbg !198, !tbaa !175
  br label %46

29:                                               ; preds = %10
  %30 = tail call double @cos(double noundef %0) #9, !dbg !199
  tail call void @llvm.dbg.value(metadata double %30, metadata !155, metadata !DIExpression()), !dbg !200
  %31 = tail call double @sin(double noundef %0) #9, !dbg !201
  tail call void @llvm.dbg.value(metadata double %31, metadata !157, metadata !DIExpression()), !dbg !200
  %32 = fdiv double %31, %0, !dbg !202
  %33 = fsub double %32, %30, !dbg !203
  %34 = fdiv double %33, %0, !dbg !204
  store double %34, ptr %1, align 8, !dbg !205, !tbaa !170
  %35 = fmul double %0, %0, !dbg !206
  %36 = fdiv double %31, %35, !dbg !207
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !208
  %38 = fdiv double %30, %0, !dbg !209
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !210
  %40 = fadd double %39, %37, !dbg !211
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !212
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !213
  %43 = tail call double @llvm.fabs.f64(double %34), !dbg !214
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !215
  %45 = fadd double %41, %44, !dbg !216
  store double %45, ptr %42, align 8, !dbg !216, !tbaa !175
  br label %46

46:                                               ; preds = %29, %12, %8, %5
  %47 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %29 ], !dbg !217
  ret i32 %47, !dbg !218
}

declare !dbg !219 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !224 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_j2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !225 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !227, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !228, metadata !DIExpression()), !dbg !249
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !250
  tail call void @llvm.dbg.value(metadata double %3, metadata !229, metadata !DIExpression()), !dbg !249
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !251
  br i1 %4, label %5, label %6, !dbg !252

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !253
  br label %59, !dbg !255

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x2020000000000000, !dbg !256
  br i1 %7, label %8, label %10, !dbg !257

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !258, !tbaa !170
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !258
  store double 0x10000000000000, ptr %9, align 8, !dbg !258, !tbaa !175
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 15) #9, !dbg !261
  br label %59, !dbg !261

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 1.300000e+00, !dbg !263
  br i1 %11, label %12, label %37, !dbg !264

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !265
  tail call void @llvm.dbg.value(metadata double %13, metadata !230, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0xBFB2492492492492, metadata !235, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x3F60410410410410, metadata !236, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0xBEFF85D955D36CBB, metadata !237, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x3E93660F974707D5, metadata !238, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0xBE208DB48EBE51C7, metadata !239, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x3DA4C5E79A07EE27, metadata !240, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0xBD23FDFBC45C52EA, metadata !241, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0x3C9E76D4FA744D95, metadata !242, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double 0xBC12D6775460A6B3, metadata !243, metadata !DIExpression()), !dbg !266
  %14 = fmul double %13, 0x3C12D6775460A6B3, !dbg !267
  %15 = fsub double 0x3C9E76D4FA744D95, %14, !dbg !268
  %16 = fmul double %13, %15, !dbg !269
  %17 = fadd double %16, 0xBD23FDFBC45C52EA, !dbg !270
  %18 = fmul double %13, %17, !dbg !271
  %19 = fadd double %18, 0x3DA4C5E79A07EE27, !dbg !272
  %20 = fmul double %13, %19, !dbg !273
  %21 = fadd double %20, 0xBE208DB48EBE51C7, !dbg !274
  %22 = fmul double %13, %21, !dbg !275
  %23 = fadd double %22, 0x3E93660F974707D5, !dbg !276
  %24 = fmul double %13, %23, !dbg !277
  %25 = fadd double %24, 0xBEFF85D955D36CBB, !dbg !278
  %26 = fmul double %13, %25, !dbg !279
  %27 = fadd double %26, 0x3F60410410410410, !dbg !280
  %28 = fmul double %13, %27, !dbg !281
  %29 = fadd double %28, 0xBFB2492492492492, !dbg !282
  %30 = fmul double %13, %29, !dbg !283
  %31 = fadd double %30, 1.000000e+00, !dbg !284
  tail call void @llvm.dbg.value(metadata double %31, metadata !244, metadata !DIExpression()), !dbg !266
  %32 = fdiv double %13, 1.500000e+01, !dbg !285
  %33 = fmul double %32, %31, !dbg !286
  store double %33, ptr %1, align 8, !dbg !287, !tbaa !170
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !288
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !289
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !290
  store double %35, ptr %36, align 8, !dbg !291, !tbaa !175
  br label %59

37:                                               ; preds = %10
  %38 = tail call double @cos(double noundef %0) #9, !dbg !292
  tail call void @llvm.dbg.value(metadata double %38, metadata !245, metadata !DIExpression()), !dbg !293
  %39 = tail call double @sin(double noundef %0) #9, !dbg !294
  tail call void @llvm.dbg.value(metadata double %39, metadata !247, metadata !DIExpression()), !dbg !293
  %40 = fmul double %0, %0, !dbg !295
  %41 = fdiv double 3.000000e+00, %40, !dbg !296
  %42 = fadd double %41, -1.000000e+00, !dbg !297
  tail call void @llvm.dbg.value(metadata double %42, metadata !248, metadata !DIExpression()), !dbg !293
  %43 = fmul double %42, %39, !dbg !298
  %44 = fmul double %38, 3.000000e+00, !dbg !299
  %45 = fdiv double %44, %0, !dbg !300
  %46 = fsub double %43, %45, !dbg !301
  %47 = fdiv double %46, %0, !dbg !302
  store double %47, ptr %1, align 8, !dbg !303, !tbaa !170
  %48 = fdiv double %43, %0, !dbg !304
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !305
  %50 = fdiv double %38, %40, !dbg !306
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !307
  %52 = fmul double %51, 3.000000e+00, !dbg !308
  %53 = fadd double %52, %49, !dbg !309
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !310
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !311
  %56 = tail call double @llvm.fabs.f64(double %47), !dbg !312
  %57 = fmul double %56, 0x3CC0000000000000, !dbg !313
  %58 = fadd double %54, %57, !dbg !314
  store double %58, ptr %55, align 8, !dbg !314, !tbaa !175
  br label %59

59:                                               ; preds = %37, %12, %8, %5
  %60 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %37 ], !dbg !315
  ret i32 %60, !dbg !316
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !317 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !368
  call void @llvm.dbg.assign(metadata i1 undef, metadata !325, metadata !DIExpression(), metadata !368, metadata ptr %4, metadata !DIExpression()), !dbg !369
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !370
  call void @llvm.dbg.assign(metadata i1 undef, metadata !335, metadata !DIExpression(), metadata !370, metadata ptr %5, metadata !DIExpression()), !dbg !371
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !372, metadata ptr %6, metadata !DIExpression()), !dbg !373
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !345, metadata !DIExpression(), metadata !374, metadata ptr %7, metadata !DIExpression()), !dbg !375
  %8 = alloca double, align 8, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !350, metadata !DIExpression(), metadata !376, metadata ptr %8, metadata !DIExpression()), !dbg !377
  %9 = alloca double, align 8, !DIAssignID !378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !352, metadata !DIExpression(), metadata !378, metadata ptr %9, metadata !DIExpression()), !dbg !377
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !359, metadata !DIExpression(), metadata !379, metadata ptr %10, metadata !DIExpression()), !dbg !380
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !364, metadata !DIExpression(), metadata !381, metadata ptr %11, metadata !DIExpression()), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !322, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata double %1, metadata !323, metadata !DIExpression()), !dbg !383
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !324, metadata !DIExpression()), !dbg !383
  %12 = icmp slt i32 %0, 0, !dbg !384
  %13 = fcmp olt double %1, 0.000000e+00
  %14 = or i1 %12, %13, !dbg !385
  br i1 %14, label %15, label %17, !dbg !385

15:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !386, !tbaa !170
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !386
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !386, !tbaa !175
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 1) #9, !dbg !389
  br label %180, !dbg !389

17:                                               ; preds = %3
  %18 = fcmp oeq double %1, 0.000000e+00, !dbg !391
  br i1 %18, label %19, label %23, !dbg !392

19:                                               ; preds = %17
  %20 = icmp eq i32 %0, 0, !dbg !393
  %21 = select i1 %20, double 1.000000e+00, double 0.000000e+00, !dbg !395
  store double %21, ptr %2, align 8, !dbg !396, !tbaa !170
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !397
  store double 0.000000e+00, ptr %22, align 8, !dbg !398, !tbaa !175
  br label %180, !dbg !399

23:                                               ; preds = %17
  switch i32 %0, label %53 [
    i32 0, label %24
    i32 1, label %49
    i32 2, label %51
  ], !dbg !400

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !401
  %25 = tail call double @llvm.fabs.f64(double %1), !dbg !404
  call void @llvm.dbg.value(metadata double %25, metadata !101, metadata !DIExpression()), !dbg !401
  %26 = fcmp olt double %25, 5.000000e-01, !dbg !405
  br i1 %26, label %27, label %41, !dbg !406

27:                                               ; preds = %24
  %28 = fmul double %1, %1, !dbg !407
  call void @llvm.dbg.value(metadata double %28, metadata !102, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !105, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !106, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0xBF2A01A01A01A01A, metadata !107, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !108, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0xBE5AE64567F544E4, metadata !109, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !110, metadata !DIExpression()), !dbg !408
  %29 = fmul double %28, 0x3DE6124613A86D09, !dbg !409
  %30 = fadd double %29, 0xBE5AE64567F544E4, !dbg !410
  %31 = fmul double %28, %30, !dbg !411
  %32 = fadd double %31, 0x3EC71DE3A556C734, !dbg !412
  %33 = fmul double %28, %32, !dbg !413
  %34 = fadd double %33, 0xBF2A01A01A01A01A, !dbg !414
  %35 = fmul double %28, %34, !dbg !415
  %36 = fadd double %35, 0x3F81111111111111, !dbg !416
  %37 = fmul double %28, %36, !dbg !417
  %38 = fadd double %37, 0xBFC5555555555555, !dbg !418
  %39 = fmul double %28, %38, !dbg !419
  %40 = fadd double %39, 1.000000e+00, !dbg !420
  br label %44

41:                                               ; preds = %24
  %42 = tail call double @sin(double noundef %1) #9, !dbg !421
  %43 = fdiv double %42, %1, !dbg !422
  br label %44, !dbg !423

44:                                               ; preds = %27, %41
  %45 = phi double [ %43, %41 ], [ %40, %27 ]
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !424
  %47 = fmul double %46, 0x3CC0000000000000, !dbg !424
  store double %45, ptr %2, align 8, !dbg !424
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !424
  store double %47, ptr %48, align 8, !dbg !424
  br label %180, !dbg !425

49:                                               ; preds = %23
  %50 = tail call i32 @gsl_sf_bessel_j1_e(double noundef %1, ptr noundef %2), !dbg !426, !range !428
  br label %180, !dbg !429

51:                                               ; preds = %23
  %52 = tail call i32 @gsl_sf_bessel_j2_e(double noundef %1, ptr noundef %2), !dbg !430, !range !428
  br label %180, !dbg !432

53:                                               ; preds = %23
  %54 = fmul double %1, %1, !dbg !433
  %55 = sitofp i32 %0 to double, !dbg !434
  %56 = fadd double %55, 5.000000e-01, !dbg !435
  %57 = fmul double %56, 1.000000e+01, !dbg !436
  %58 = fdiv double %57, 0x4005BF0A8B145769, !dbg !437
  %59 = fcmp olt double %54, %58, !dbg !438
  br i1 %59, label %60, label %73, !dbg !439

60:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !440
  %61 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %56, double noundef %1, i32 noundef -1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #9, !dbg !441
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !333, metadata !DIExpression()), !dbg !369
  %62 = fdiv double 0x3FF921FB54442D18, %1, !dbg !442
  %63 = call double @sqrt(double noundef %62) #9, !dbg !443
  tail call void @llvm.dbg.value(metadata double %63, metadata !334, metadata !DIExpression()), !dbg !369
  %64 = load double, ptr %4, align 8, !dbg !444, !tbaa !170
  %65 = fmul double %63, %64, !dbg !445
  store double %65, ptr %2, align 8, !dbg !446, !tbaa !170
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !447
  %67 = load double, ptr %66, align 8, !dbg !447, !tbaa !175
  %68 = fmul double %63, %67, !dbg !448
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !449
  %70 = call double @llvm.fabs.f64(double %65), !dbg !450
  %71 = fmul double %70, 0x3CC0000000000000, !dbg !451
  %72 = fadd double %68, %71, !dbg !452
  store double %72, ptr %69, align 8, !dbg !452, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !453
  br label %180

73:                                               ; preds = %53
  %74 = fmul double %1, 0x3F20000000000000, !dbg !454
  %75 = mul nsw i32 %0, %0, !dbg !455
  %76 = add nsw i32 %75, %0, !dbg !456
  %77 = sitofp i32 %76 to double, !dbg !457
  %78 = fadd double %77, 1.000000e+00, !dbg !458
  %79 = fcmp ogt double %74, %78, !dbg !459
  br i1 %79, label %80, label %93, !dbg !460

80:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !461
  %81 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %56, double noundef %1, ptr noundef nonnull %5) #9, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !338, metadata !DIExpression()), !dbg !371
  %82 = fdiv double 0x3FF921FB54442D18, %1, !dbg !463
  %83 = call double @sqrt(double noundef %82) #9, !dbg !464
  tail call void @llvm.dbg.value(metadata double %83, metadata !339, metadata !DIExpression()), !dbg !371
  %84 = load double, ptr %5, align 8, !dbg !465, !tbaa !170
  %85 = fmul double %83, %84, !dbg !466
  store double %85, ptr %2, align 8, !dbg !467, !tbaa !170
  %86 = call double @llvm.fabs.f64(double %85), !dbg !468
  %87 = fmul double %86, 0x3CC0000000000000, !dbg !469
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !470
  %89 = load double, ptr %88, align 8, !dbg !470, !tbaa !175
  %90 = fmul double %83, %89, !dbg !471
  %91 = fadd double %87, %90, !dbg !472
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !473
  store double %91, ptr %92, align 8, !dbg !474, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !475
  br label %180

93:                                               ; preds = %73
  %94 = icmp ugt i32 %0, 406, !dbg !476
  br i1 %94, label %95, label %108, !dbg !477

95:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !478
  %96 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %56, double noundef %1, ptr noundef nonnull %6) #9, !dbg !479
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !343, metadata !DIExpression()), !dbg !373
  %97 = fdiv double 0x3FF921FB54442D18, %1, !dbg !480
  %98 = call double @sqrt(double noundef %97) #9, !dbg !481
  tail call void @llvm.dbg.value(metadata double %98, metadata !344, metadata !DIExpression()), !dbg !373
  %99 = load double, ptr %6, align 8, !dbg !482, !tbaa !170
  %100 = fmul double %98, %99, !dbg !483
  store double %100, ptr %2, align 8, !dbg !484, !tbaa !170
  %101 = call double @llvm.fabs.f64(double %100), !dbg !485
  %102 = fmul double %101, 0x3CC0000000000000, !dbg !486
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !487
  %104 = load double, ptr %103, align 8, !dbg !487, !tbaa !175
  %105 = fmul double %98, %104, !dbg !488
  %106 = fadd double %102, %105, !dbg !489
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !490
  store double %106, ptr %107, align 8, !dbg !491, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !492
  br label %180

108:                                              ; preds = %93
  %109 = fcmp ogt double %1, 1.000000e+03, !dbg !493
  %110 = sitofp i32 %75 to double
  %111 = fcmp olt double %110, %1
  %112 = and i1 %109, %111, !dbg !494
  br i1 %112, label %113, label %126, !dbg !494

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !495
  %114 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %56, double noundef %1, ptr noundef nonnull %7) #9, !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !348, metadata !DIExpression()), !dbg !375
  %115 = fdiv double 0x3FF921FB54442D18, %1, !dbg !497
  %116 = call double @sqrt(double noundef %115) #9, !dbg !498
  tail call void @llvm.dbg.value(metadata double %116, metadata !349, metadata !DIExpression()), !dbg !375
  %117 = load double, ptr %7, align 8, !dbg !499, !tbaa !170
  %118 = fmul double %116, %117, !dbg !500
  store double %118, ptr %2, align 8, !dbg !501, !tbaa !170
  %119 = call double @llvm.fabs.f64(double %118), !dbg !502
  %120 = fmul double %119, 0x3CC0000000000000, !dbg !503
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !504
  %122 = load double, ptr %121, align 8, !dbg !504, !tbaa !175
  %123 = fmul double %116, %122, !dbg !505
  %124 = fadd double %120, %123, !dbg !506
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !507
  store double %124, ptr %125, align 8, !dbg !508, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !509
  br label %180

126:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !510
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9, !dbg !511
  %127 = call i32 @gsl_sf_bessel_J_CF1(double noundef %56, double noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8) #9, !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !353, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double 0x350000000000000, metadata !354, metadata !DIExpression()), !dbg !377
  %128 = load double, ptr %9, align 8, !dbg !513, !tbaa !514
  %129 = fmul double %128, 0x350000000000000, !dbg !515
  tail call void @llvm.dbg.value(metadata double %129, metadata !355, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double 0x350000000000000, metadata !356, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !358, metadata !DIExpression()), !dbg !377
  br label %130, !dbg !516

130:                                              ; preds = %126, %130
  %131 = phi double [ %132, %130 ], [ %129, %126 ]
  %132 = phi double [ %139, %130 ], [ 0x350000000000000, %126 ]
  %133 = phi i32 [ %140, %130 ], [ %0, %126 ]
  tail call void @llvm.dbg.value(metadata double %131, metadata !355, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %132, metadata !356, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %133, metadata !358, metadata !DIExpression()), !dbg !377
  %134 = shl nuw nsw i32 %133, 1, !dbg !518
  %135 = or disjoint i32 %134, 1, !dbg !521
  %136 = sitofp i32 %135 to double, !dbg !522
  %137 = fdiv double %136, %1, !dbg !523
  %138 = fmul double %132, %137, !dbg !524
  %139 = fsub double %138, %131, !dbg !525
  tail call void @llvm.dbg.value(metadata double %139, metadata !357, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %132, metadata !355, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %139, metadata !356, metadata !DIExpression()), !dbg !377
  %140 = add nsw i32 %133, -1, !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !358, metadata !DIExpression()), !dbg !377
  %141 = icmp ugt i32 %133, 1, !dbg !527
  br i1 %141, label %130, label %142, !dbg !516, !llvm.loop !528

142:                                              ; preds = %130
  %143 = call double @llvm.fabs.f64(double %139), !dbg !531
  %144 = call double @llvm.fabs.f64(double %132), !dbg !532
  %145 = fcmp ogt double %143, %144, !dbg !533
  %146 = fmul double %55, 5.000000e-01, !dbg !534
  %147 = fadd double %146, 1.000000e+00, !dbg !534
  %148 = fmul double %147, 0x3CD0000000000000, !dbg !534
  br i1 %145, label %149, label %161, !dbg !535

149:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !536
  %150 = call i32 @gsl_sf_bessel_j0_e(double noundef %1, ptr noundef nonnull %10), !dbg !537
  tail call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !380
  %151 = fdiv double 0x350000000000000, %139, !dbg !538
  tail call void @llvm.dbg.value(metadata double %151, metadata !363, metadata !DIExpression()), !dbg !380
  %152 = load double, ptr %10, align 8, !dbg !539, !tbaa !170
  %153 = fmul double %151, %152, !dbg !540
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !541
  %155 = load double, ptr %154, align 8, !dbg !541, !tbaa !175
  %156 = call double @llvm.fabs.f64(double %151), !dbg !542
  %157 = fmul double %156, %155, !dbg !543
  %158 = call double @llvm.fabs.f64(double %153), !dbg !544
  %159 = fmul double %148, %158, !dbg !545
  %160 = fadd double %157, %159, !dbg !546
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !547
  br label %175

161:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !548
  %162 = call i32 @gsl_sf_bessel_j1_e(double noundef %1, ptr noundef nonnull %11), !dbg !549, !range !428
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !366, metadata !DIExpression()), !dbg !382
  %163 = fdiv double 0x350000000000000, %132, !dbg !550
  tail call void @llvm.dbg.value(metadata double %163, metadata !367, metadata !DIExpression()), !dbg !382
  %164 = load double, ptr %11, align 8, !dbg !551, !tbaa !170
  %165 = fmul double %163, %164, !dbg !552
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !553
  %167 = load double, ptr %166, align 8, !dbg !553, !tbaa !175
  %168 = call double @llvm.fabs.f64(double %163), !dbg !554
  %169 = fmul double %168, %167, !dbg !555
  %170 = call double @llvm.fabs.f64(double %165), !dbg !556
  %171 = fmul double %148, %170, !dbg !557
  %172 = fadd double %169, %171, !dbg !558
  %173 = icmp eq i32 %162, 0, !dbg !559
  %174 = select i1 %173, i32 %127, i32 %162, !dbg !559
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !560
  br label %175

175:                                              ; preds = %161, %149
  %176 = phi double [ %153, %149 ], [ %165, %161 ], !dbg !534
  %177 = phi double [ %160, %149 ], [ %172, %161 ], !dbg !534
  %178 = phi i32 [ %127, %149 ], [ %174, %161 ], !dbg !534
  store double %176, ptr %2, align 8, !dbg !534
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !534
  store double %177, ptr %179, align 8, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9, !dbg !561
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !561
  br label %180

180:                                              ; preds = %15, %19, %44, %49, %51, %60, %80, %95, %113, %175
  %181 = phi i32 [ 1, %15 ], [ 0, %19 ], [ 0, %44 ], [ %50, %49 ], [ %52, %51 ], [ %61, %60 ], [ %81, %80 ], [ %96, %95 ], [ %114, %113 ], [ %178, %175 ], !dbg !562
  ret i32 %181, !dbg !563
}

declare !dbg !564 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !568 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !569 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !572 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !576 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_jl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !580 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !593, metadata !DIExpression(), metadata !602, metadata ptr %4, metadata !DIExpression()), !dbg !603
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !604
  call void @llvm.dbg.assign(metadata i1 undef, metadata !595, metadata !DIExpression(), metadata !604, metadata ptr %5, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !584, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata double %1, metadata !585, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !586, metadata !DIExpression()), !dbg !605
  %6 = icmp slt i32 %0, 0, !dbg !606
  %7 = fcmp olt double %1, 0.000000e+00
  %8 = or i1 %6, %7, !dbg !607
  br i1 %8, label %9, label %15, !dbg !607

9:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 0, metadata !587, metadata !DIExpression()), !dbg !608
  br i1 %6, label %14, label %10, !dbg !609

10:                                               ; preds = %9
  %11 = add nuw i32 %0, 1, !dbg !609
  %12 = zext i32 %11 to i64, !dbg !609
  %13 = shl nuw nsw i64 %12, 3, !dbg !609
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %13, i1 false), !dbg !611, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !587, metadata !DIExpression()), !dbg !608
  br label %14, !dbg !613

14:                                               ; preds = %10, %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 259, i32 noundef 1) #9, !dbg !613
  br label %77

15:                                               ; preds = %3
  %16 = fcmp oeq double %1, 0.000000e+00, !dbg !615
  br i1 %16, label %17, label %24, !dbg !616

17:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 1, metadata !590, metadata !DIExpression()), !dbg !617
  %18 = icmp eq i32 %0, 0, !dbg !618
  br i1 %18, label %23, label %19, !dbg !621

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %2, i64 8, !dbg !621
  %21 = zext nneg i32 %0 to i64, !dbg !621
  %22 = shl nuw nsw i64 %21, 3, !dbg !621
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %22, i1 false), !dbg !622, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !590, metadata !DIExpression()), !dbg !617
  br label %23, !dbg !623

23:                                               ; preds = %19, %17
  store double 1.000000e+00, ptr %2, align 8, !dbg !623, !tbaa !514
  br label %77

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !624
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !625
  %25 = add nuw nsw i32 %0, 1, !dbg !626
  %26 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %25, double noundef %1, ptr noundef nonnull %4), !dbg !627
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !596, metadata !DIExpression()), !dbg !603
  %27 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !597, metadata !DIExpression()), !dbg !603
  %28 = load double, ptr %4, align 8, !dbg !629, !tbaa !170
  tail call void @llvm.dbg.value(metadata double %28, metadata !598, metadata !DIExpression()), !dbg !603
  %29 = load double, ptr %5, align 8, !dbg !630, !tbaa !170
  tail call void @llvm.dbg.value(metadata double %29, metadata !599, metadata !DIExpression()), !dbg !603
  %30 = zext nneg i32 %0 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30, !dbg !631
  store double %29, ptr %31, align 8, !dbg !632, !tbaa !514
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !601, metadata !DIExpression()), !dbg !603
  %32 = getelementptr double, ptr %2, i64 -1, !dbg !633
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %29, metadata !599, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %28, metadata !598, metadata !DIExpression()), !dbg !603
  %33 = icmp eq i32 %0, 0, !dbg !635
  br i1 %33, label %74, label %34, !dbg !637

34:                                               ; preds = %24
  %35 = and i64 %30, 1, !dbg !637
  %36 = icmp eq i64 %35, 0, !dbg !637
  br i1 %36, label %46, label %37, !dbg !637

37:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %29, metadata !599, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %28, metadata !598, metadata !DIExpression()), !dbg !603
  %38 = shl nuw nsw i32 %0, 1, !dbg !638
  %39 = or disjoint i32 %38, 1, !dbg !640
  %40 = sitofp i32 %39 to double, !dbg !641
  %41 = fdiv double %40, %1, !dbg !642
  %42 = fmul double %29, %41, !dbg !643
  %43 = fsub double %42, %28, !dbg !644
  tail call void @llvm.dbg.value(metadata double %43, metadata !600, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %29, metadata !598, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %43, metadata !599, metadata !DIExpression()), !dbg !603
  %44 = getelementptr double, ptr %32, i64 %30, !dbg !645
  store double %43, ptr %44, align 8, !dbg !646, !tbaa !514
  %45 = add nsw i64 %30, -1, !dbg !647
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !601, metadata !DIExpression()), !dbg !603
  br label %46, !dbg !637

46:                                               ; preds = %37, %34
  %47 = phi i64 [ %30, %34 ], [ %45, %37 ]
  %48 = phi double [ %29, %34 ], [ %43, %37 ]
  %49 = phi double [ %28, %34 ], [ %29, %37 ]
  %50 = icmp eq i32 %0, 1, !dbg !637
  br i1 %50, label %74, label %51, !dbg !637

51:                                               ; preds = %46, %51
  %52 = phi i64 [ %72, %51 ], [ %47, %46 ]
  %53 = phi double [ %70, %51 ], [ %48, %46 ]
  %54 = phi double [ %61, %51 ], [ %49, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %53, metadata !599, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %54, metadata !598, metadata !DIExpression()), !dbg !603
  %55 = trunc i64 %52 to i32, !dbg !638
  %56 = shl nuw nsw i32 %55, 1, !dbg !638
  %57 = or disjoint i32 %56, 1, !dbg !640
  %58 = sitofp i32 %57 to double, !dbg !641
  %59 = fdiv double %58, %1, !dbg !642
  %60 = fmul double %53, %59, !dbg !643
  %61 = fsub double %60, %54, !dbg !644
  tail call void @llvm.dbg.value(metadata double %61, metadata !600, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %53, metadata !598, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %61, metadata !599, metadata !DIExpression()), !dbg !603
  %62 = getelementptr double, ptr %32, i64 %52, !dbg !645
  store double %61, ptr %62, align 8, !dbg !646, !tbaa !514
  %63 = add nsw i64 %52, -1, !dbg !647
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %61, metadata !599, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %53, metadata !598, metadata !DIExpression()), !dbg !603
  %64 = trunc i64 %63 to i32, !dbg !638
  %65 = shl nuw nsw i32 %64, 1, !dbg !638
  %66 = or disjoint i32 %65, 1, !dbg !640
  %67 = sitofp i32 %66 to double, !dbg !641
  %68 = fdiv double %67, %1, !dbg !642
  %69 = fmul double %61, %68, !dbg !643
  %70 = fsub double %69, %53, !dbg !644
  tail call void @llvm.dbg.value(metadata double %70, metadata !600, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %61, metadata !598, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata double %70, metadata !599, metadata !DIExpression()), !dbg !603
  %71 = getelementptr double, ptr %32, i64 %63, !dbg !645
  store double %70, ptr %71, align 8, !dbg !646, !tbaa !514
  %72 = add nsw i64 %52, -2, !dbg !647
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !601, metadata !DIExpression()), !dbg !603
  %73 = icmp ugt i64 %63, 1, !dbg !635
  br i1 %73, label %51, label %74, !dbg !637, !llvm.loop !648

74:                                               ; preds = %46, %51, %24
  %75 = icmp eq i32 %26, 0, !dbg !650
  %76 = select i1 %75, i32 %27, i32 %26, !dbg !650
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !651
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !651
  br label %77

77:                                               ; preds = %14, %23, %74
  %78 = phi i32 [ 1, %14 ], [ 0, %23 ], [ %76, %74 ], !dbg !652
  ret i32 %78, !dbg !653
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_jl_steed_array(i32 noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 !dbg !654 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !656, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %1, metadata !657, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !658, metadata !DIExpression()), !dbg !688
  %4 = icmp slt i32 %0, 0, !dbg !689
  %5 = fcmp olt double %1, 0.000000e+00
  %6 = or i1 %4, %5, !dbg !690
  br i1 %6, label %7, label %13, !dbg !690

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 0, metadata !659, metadata !DIExpression()), !dbg !691
  br i1 %4, label %12, label %8, !dbg !692

8:                                                ; preds = %7
  %9 = add nuw i32 %0, 1, !dbg !692
  %10 = zext i32 %9 to i64, !dbg !692
  %11 = shl nuw nsw i64 %10, 3, !dbg !692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %11, i1 false), !dbg !694, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !659, metadata !DIExpression()), !dbg !691
  br label %12, !dbg !696

12:                                               ; preds = %8, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 1) #9, !dbg !696
  br label %218

13:                                               ; preds = %3
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !698
  br i1 %14, label %15, label %22, !dbg !699

15:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 1, metadata !662, metadata !DIExpression()), !dbg !700
  %16 = icmp eq i32 %0, 0, !dbg !701
  br i1 %16, label %21, label %17, !dbg !704

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %2, i64 8, !dbg !704
  %19 = zext nneg i32 %0 to i64, !dbg !704
  %20 = shl nuw nsw i64 %19, 3, !dbg !704
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !705, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !662, metadata !DIExpression()), !dbg !700
  br label %21, !dbg !706

21:                                               ; preds = %17, %15
  store double 1.000000e+00, ptr %2, align 8, !dbg !706, !tbaa !514
  br label %218

22:                                               ; preds = %13
  %23 = fcmp olt double %1, 0x3F30000000000000, !dbg !707
  br i1 %23, label %24, label %64, !dbg !708

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !668, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !665, metadata !DIExpression()), !dbg !709
  %25 = fmul double %1, 5.000000e-01
  %26 = fmul double %25, %1
  %27 = add nuw i32 %0, 1, !dbg !710
  %28 = zext i32 %27 to i64, !dbg !712
  %29 = and i64 %28, 1, !dbg !710
  %30 = icmp eq i32 %0, 0, !dbg !710
  br i1 %30, label %191, label %31, !dbg !710

31:                                               ; preds = %24
  %32 = and i64 %28, 4294967294, !dbg !710
  br label %33, !dbg !710

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %61, %33 ]
  %35 = phi double [ 1.000000e+00, %31 ], [ %60, %33 ]
  %36 = phi double [ 1.000000e+00, %31 ], [ %59, %33 ]
  %37 = phi i64 [ 0, %31 ], [ %62, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !669, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %35, metadata !668, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %36, metadata !665, metadata !DIExpression()), !dbg !709
  %38 = fmul double %36, %35, !dbg !714
  %39 = getelementptr inbounds double, ptr %2, i64 %34, !dbg !716
  %40 = trunc i64 %34 to i32, !dbg !717
  %41 = sitofp i32 %40 to double, !dbg !717
  %42 = fmul double %41, 2.000000e+00, !dbg !718
  %43 = fadd double %42, 3.000000e+00, !dbg !719
  %44 = fdiv double %26, %43, !dbg !720
  %45 = fsub double 1.000000e+00, %44, !dbg !721
  %46 = fmul double %38, %45, !dbg !722
  store double %46, ptr %39, align 8, !dbg !722, !tbaa !514
  %47 = fdiv double %36, %43, !dbg !723
  tail call void @llvm.dbg.value(metadata double %47, metadata !665, metadata !DIExpression()), !dbg !709
  %48 = fmul double %35, %1, !dbg !724
  tail call void @llvm.dbg.value(metadata double %48, metadata !668, metadata !DIExpression()), !dbg !709
  %49 = or disjoint i64 %34, 1, !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !669, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !669, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %48, metadata !668, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %47, metadata !665, metadata !DIExpression()), !dbg !709
  %50 = fmul double %47, %48, !dbg !714
  %51 = getelementptr inbounds double, ptr %2, i64 %49, !dbg !716
  %52 = trunc i64 %49 to i32, !dbg !717
  %53 = sitofp i32 %52 to double, !dbg !717
  %54 = fmul double %53, 2.000000e+00, !dbg !718
  %55 = fadd double %54, 3.000000e+00, !dbg !719
  %56 = fdiv double %26, %55, !dbg !720
  %57 = fsub double 1.000000e+00, %56, !dbg !721
  %58 = fmul double %50, %57, !dbg !722
  store double %58, ptr %51, align 8, !dbg !722, !tbaa !514
  %59 = fdiv double %47, %55, !dbg !723
  tail call void @llvm.dbg.value(metadata double %59, metadata !665, metadata !DIExpression()), !dbg !709
  %60 = fmul double %48, %1, !dbg !724
  tail call void @llvm.dbg.value(metadata double %60, metadata !668, metadata !DIExpression()), !dbg !709
  %61 = add nuw nsw i64 %34, 2, !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !669, metadata !DIExpression()), !dbg !709
  %62 = add i64 %37, 2, !dbg !710
  %63 = icmp eq i64 %62, %32, !dbg !710
  br i1 %63, label %191, label %33, !dbg !710, !llvm.loop !726

64:                                               ; preds = %22
  %65 = fdiv double 1.000000e+00, %1, !dbg !728
  tail call void @llvm.dbg.value(metadata double %65, metadata !670, metadata !DIExpression()), !dbg !729
  %66 = fmul double %65, 2.000000e+00, !dbg !730
  tail call void @llvm.dbg.value(metadata double %66, metadata !672, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !673, metadata !DIExpression()), !dbg !729
  %67 = sitofp i32 %0 to double, !dbg !731
  %68 = fadd double %67, 1.000000e+00, !dbg !732
  %69 = fmul double %68, %65, !dbg !733
  tail call void @llvm.dbg.value(metadata double %69, metadata !674, metadata !DIExpression()), !dbg !729
  %70 = fmul double %69, 2.000000e+00, !dbg !734
  %71 = fadd double %65, %70, !dbg !735
  tail call void @llvm.dbg.value(metadata double %71, metadata !675, metadata !DIExpression()), !dbg !729
  %72 = fmul double %66, 2.000000e+04, !dbg !736
  %73 = fadd double %72, %71, !dbg !737
  tail call void @llvm.dbg.value(metadata double %73, metadata !676, metadata !DIExpression()), !dbg !729
  %74 = fdiv double 1.000000e+00, %71, !dbg !738
  tail call void @llvm.dbg.value(metadata double %74, metadata !677, metadata !DIExpression()), !dbg !729
  %75 = fneg double %74, !dbg !739
  tail call void @llvm.dbg.value(metadata double %75, metadata !678, metadata !DIExpression()), !dbg !729
  %76 = fsub double %69, %74, !dbg !740
  tail call void @llvm.dbg.value(metadata double %76, metadata !674, metadata !DIExpression()), !dbg !729
  br label %77, !dbg !741

77:                                               ; preds = %86, %64
  %78 = phi double [ 1.000000e+00, %64 ], [ %91, %86 ], !dbg !729
  %79 = phi double [ %76, %64 ], [ %95, %86 ], !dbg !729
  %80 = phi double [ %71, %64 ], [ %83, %86 ], !dbg !729
  %81 = phi double [ %74, %64 ], [ %88, %86 ], !dbg !729
  %82 = phi double [ %75, %64 ], [ %94, %86 ], !dbg !729
  tail call void @llvm.dbg.value(metadata double %82, metadata !678, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %81, metadata !677, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %80, metadata !675, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %79, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %78, metadata !673, metadata !DIExpression()), !dbg !729
  %83 = fadd double %66, %80, !dbg !742
  tail call void @llvm.dbg.value(metadata double %83, metadata !675, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double poison, metadata !677, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double poison, metadata !678, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double poison, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double poison, metadata !673, metadata !DIExpression()), !dbg !729
  %84 = fcmp ogt double %83, %73, !dbg !744
  br i1 %84, label %85, label %86, !dbg !746

85:                                               ; preds = %77
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 339, i32 noundef 11) #9, !dbg !747
  br label %218, !dbg !747

86:                                               ; preds = %77
  %87 = fsub double %83, %81, !dbg !750
  %88 = fdiv double 1.000000e+00, %87, !dbg !751
  tail call void @llvm.dbg.value(metadata double %88, metadata !677, metadata !DIExpression()), !dbg !729
  %89 = fcmp olt double %88, 0.000000e+00, !dbg !752
  %90 = fneg double %78, !dbg !754
  %91 = select i1 %89, double %90, double %78, !dbg !754
  tail call void @llvm.dbg.value(metadata double %91, metadata !673, metadata !DIExpression()), !dbg !729
  %92 = fmul double %83, %88, !dbg !755
  %93 = fadd double %92, -1.000000e+00, !dbg !756
  %94 = fmul double %82, %93, !dbg !757
  tail call void @llvm.dbg.value(metadata double %94, metadata !678, metadata !DIExpression()), !dbg !729
  %95 = fadd double %79, %94, !dbg !758
  tail call void @llvm.dbg.value(metadata double %95, metadata !674, metadata !DIExpression()), !dbg !729
  %96 = tail call double @llvm.fabs.f64(double %94), !dbg !759
  %97 = tail call double @llvm.fabs.f64(double %95), !dbg !760
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !761
  %99 = fcmp ult double %96, %98, !dbg !762
  br i1 %99, label %100, label %77, !dbg !763, !llvm.loop !764

100:                                              ; preds = %86
  %101 = fmul double %91, %95, !dbg !766
  tail call void @llvm.dbg.value(metadata double %101, metadata !674, metadata !DIExpression()), !dbg !729
  %102 = icmp sgt i32 %0, 0, !dbg !767
  br i1 %102, label %103, label %155, !dbg !768

103:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata double %101, metadata !679, metadata !DIExpression()), !dbg !769
  %104 = fmul double %65, %67, !dbg !770
  tail call void @llvm.dbg.value(metadata double %104, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !683, metadata !DIExpression()), !dbg !769
  %105 = zext nneg i32 %0 to i64
  %106 = getelementptr inbounds double, ptr %2, i64 %105, !dbg !771
  store double %91, ptr %106, align 8, !dbg !772, !tbaa !514
  tail call void @llvm.dbg.value(metadata i32 1, metadata !684, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %101, metadata !674, metadata !DIExpression()), !dbg !729
  %107 = zext nneg i32 %0 to i64, !dbg !773
  %108 = shl nuw nsw i64 %107, 3, !dbg !773
  %109 = getelementptr i8, ptr %2, i64 %108, !dbg !773
  %110 = load double, ptr %109, align 8
  %111 = and i32 %0, 1, !dbg !773
  %112 = icmp eq i32 %0, 1, !dbg !773
  br i1 %112, label %138, label %113, !dbg !773

113:                                              ; preds = %103
  %114 = and i32 %0, 2147483646, !dbg !773
  %115 = getelementptr double, ptr %2, i64 -1, !dbg !773
  %116 = getelementptr double, ptr %2, i64 -2, !dbg !773
  br label %117, !dbg !773

117:                                              ; preds = %117, %113
  %118 = phi double [ %110, %113 ], [ %130, %117 ]
  %119 = phi i64 [ %107, %113 ], [ %135, %117 ]
  %120 = phi double [ %104, %113 ], [ %134, %117 ]
  %121 = phi double [ %101, %113 ], [ %133, %117 ]
  %122 = phi i32 [ 0, %113 ], [ %136, %117 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !683, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %120, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %121, metadata !679, metadata !DIExpression()), !dbg !769
  %123 = fmul double %120, %118, !dbg !775
  %124 = fadd double %121, %123, !dbg !778
  %125 = getelementptr double, ptr %115, i64 %119, !dbg !779
  store double %124, ptr %125, align 8, !dbg !780, !tbaa !514
  %126 = fmul double %120, %124, !dbg !781
  %127 = fsub double %126, %118, !dbg !782
  tail call void @llvm.dbg.value(metadata double %127, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %127, metadata !679, metadata !DIExpression()), !dbg !769
  %128 = fsub double %120, %65, !dbg !783
  tail call void @llvm.dbg.value(metadata double %128, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !683, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !683, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !769
  tail call void @llvm.dbg.value(metadata double %128, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %127, metadata !679, metadata !DIExpression()), !dbg !769
  %129 = fmul double %128, %124, !dbg !775
  %130 = fadd double %127, %129, !dbg !778
  %131 = getelementptr double, ptr %116, i64 %119, !dbg !779
  store double %130, ptr %131, align 8, !dbg !780, !tbaa !514
  %132 = fmul double %128, %130, !dbg !781
  %133 = fsub double %132, %124, !dbg !782
  tail call void @llvm.dbg.value(metadata double %133, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %133, metadata !679, metadata !DIExpression()), !dbg !769
  %134 = fsub double %128, %65, !dbg !783
  tail call void @llvm.dbg.value(metadata double %134, metadata !682, metadata !DIExpression()), !dbg !769
  %135 = add nsw i64 %119, -2, !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !683, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !769
  %136 = add i32 %122, 2, !dbg !773
  %137 = icmp eq i32 %136, %114, !dbg !773
  br i1 %137, label %138, label %117, !dbg !773, !llvm.loop !785

138:                                              ; preds = %117, %103
  %139 = phi double [ undef, %103 ], [ %133, %117 ]
  %140 = phi double [ %110, %103 ], [ %130, %117 ]
  %141 = phi i64 [ %107, %103 ], [ %135, %117 ]
  %142 = phi double [ %104, %103 ], [ %134, %117 ]
  %143 = phi double [ %101, %103 ], [ %133, %117 ]
  %144 = icmp eq i32 %111, 0, !dbg !773
  br i1 %144, label %152, label %145, !dbg !773

145:                                              ; preds = %138
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !683, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %142, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %143, metadata !679, metadata !DIExpression()), !dbg !769
  %146 = getelementptr inbounds double, ptr %2, i64 %141, !dbg !787
  %147 = fmul double %142, %140, !dbg !775
  %148 = fadd double %143, %147, !dbg !778
  %149 = getelementptr double, ptr %146, i64 -1, !dbg !779
  store double %148, ptr %149, align 8, !dbg !780, !tbaa !514
  %150 = fmul double %142, %148, !dbg !781
  %151 = fsub double %150, %140, !dbg !782
  tail call void @llvm.dbg.value(metadata double %151, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %151, metadata !679, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double poison, metadata !682, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !683, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !769
  br label %152, !dbg !788

152:                                              ; preds = %138, %145
  %153 = phi double [ %139, %138 ], [ %151, %145 ], !dbg !782
  %154 = load double, ptr %2, align 8, !dbg !788, !tbaa !514
  tail call void @llvm.dbg.value(metadata double %154, metadata !673, metadata !DIExpression()), !dbg !729
  br label %155, !dbg !789

155:                                              ; preds = %152, %100
  %156 = phi double [ %154, %152 ], [ %91, %100 ], !dbg !729
  %157 = phi double [ %153, %152 ], [ %101, %100 ], !dbg !766
  tail call void @llvm.dbg.value(metadata double %157, metadata !674, metadata !DIExpression()), !dbg !729
  tail call void @llvm.dbg.value(metadata double %156, metadata !673, metadata !DIExpression()), !dbg !729
  %158 = tail call double @hypot(double noundef %157, double noundef %156) #9, !dbg !790
  %159 = fdiv double %65, %158, !dbg !791
  tail call void @llvm.dbg.value(metadata double %159, metadata !672, metadata !DIExpression()), !dbg !729
  %160 = fmul double %156, %159, !dbg !792
  store double %160, ptr %2, align 8, !dbg !793, !tbaa !514
  br i1 %102, label %161, label %218, !dbg !794

161:                                              ; preds = %155
  %162 = add nuw i32 %0, 1, !dbg !795
  %163 = zext i32 %162 to i64, !dbg !797
  %164 = add nsw i64 %163, -1, !dbg !795
  %165 = add nsw i64 %163, -2, !dbg !795
  %166 = and i64 %164, 3, !dbg !795
  %167 = icmp ult i64 %165, 3, !dbg !795
  br i1 %167, label %206, label %168, !dbg !795

168:                                              ; preds = %161
  %169 = and i64 %164, -4, !dbg !795
  %170 = getelementptr double, ptr %2, i64 1, !dbg !795
  %171 = getelementptr double, ptr %2, i64 2, !dbg !795
  %172 = getelementptr double, ptr %2, i64 3, !dbg !795
  br label %173, !dbg !795

173:                                              ; preds = %173, %168
  %174 = phi i64 [ 1, %168 ], [ %188, %173 ]
  %175 = phi i64 [ 0, %168 ], [ %189, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression()), !dbg !799
  %176 = getelementptr inbounds double, ptr %2, i64 %174, !dbg !800
  %177 = load double, ptr %176, align 8, !dbg !802, !tbaa !514
  %178 = fmul double %159, %177, !dbg !802
  store double %178, ptr %176, align 8, !dbg !802, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !799
  %179 = getelementptr double, ptr %170, i64 %174, !dbg !800
  %180 = load double, ptr %179, align 8, !dbg !802, !tbaa !514
  %181 = fmul double %159, %180, !dbg !802
  store double %181, ptr %179, align 8, !dbg !802, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !799
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !799
  %182 = getelementptr double, ptr %171, i64 %174, !dbg !800
  %183 = load double, ptr %182, align 8, !dbg !802, !tbaa !514
  %184 = fmul double %159, %183, !dbg !802
  store double %184, ptr %182, align 8, !dbg !802, !tbaa !514
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !799
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !685, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !799
  %185 = getelementptr double, ptr %172, i64 %174, !dbg !800
  %186 = load double, ptr %185, align 8, !dbg !802, !tbaa !514
  %187 = fmul double %159, %186, !dbg !802
  store double %187, ptr %185, align 8, !dbg !802, !tbaa !514
  %188 = add nuw nsw i64 %174, 4, !dbg !803
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !685, metadata !DIExpression()), !dbg !799
  %189 = add i64 %175, 4, !dbg !795
  %190 = icmp eq i64 %189, %169, !dbg !795
  br i1 %190, label %206, label %173, !dbg !795, !llvm.loop !804

191:                                              ; preds = %33, %24
  %192 = phi i64 [ 0, %24 ], [ %61, %33 ]
  %193 = phi double [ 1.000000e+00, %24 ], [ %60, %33 ]
  %194 = phi double [ 1.000000e+00, %24 ], [ %59, %33 ]
  %195 = icmp eq i64 %29, 0, !dbg !710
  br i1 %195, label %218, label %196, !dbg !710

196:                                              ; preds = %191
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !669, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %193, metadata !668, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double %194, metadata !665, metadata !DIExpression()), !dbg !709
  %197 = fmul double %194, %193, !dbg !714
  %198 = getelementptr inbounds double, ptr %2, i64 %192, !dbg !716
  %199 = trunc i64 %192 to i32, !dbg !717
  %200 = sitofp i32 %199 to double, !dbg !717
  %201 = fmul double %200, 2.000000e+00, !dbg !718
  %202 = fadd double %201, 3.000000e+00, !dbg !719
  %203 = fdiv double %26, %202, !dbg !720
  %204 = fsub double 1.000000e+00, %203, !dbg !721
  %205 = fmul double %197, %204, !dbg !722
  store double %205, ptr %198, align 8, !dbg !722, !tbaa !514
  tail call void @llvm.dbg.value(metadata double poison, metadata !665, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata double poison, metadata !668, metadata !DIExpression()), !dbg !709
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !669, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !709
  br label %218, !dbg !806

206:                                              ; preds = %173, %161
  %207 = phi i64 [ 1, %161 ], [ %188, %173 ]
  %208 = icmp eq i64 %166, 0, !dbg !795
  br i1 %208, label %218, label %209, !dbg !795

209:                                              ; preds = %206, %209
  %210 = phi i64 [ %215, %209 ], [ %207, %206 ]
  %211 = phi i64 [ %216, %209 ], [ 0, %206 ]
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !685, metadata !DIExpression()), !dbg !799
  %212 = getelementptr inbounds double, ptr %2, i64 %210, !dbg !800
  %213 = load double, ptr %212, align 8, !dbg !802, !tbaa !514
  %214 = fmul double %159, %213, !dbg !802
  store double %214, ptr %212, align 8, !dbg !802, !tbaa !514
  %215 = add nuw nsw i64 %210, 1, !dbg !803
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !685, metadata !DIExpression()), !dbg !799
  %216 = add i64 %211, 1, !dbg !795
  %217 = icmp eq i64 %216, %166, !dbg !795
  br i1 %217, label %218, label %209, !dbg !795, !llvm.loop !807

218:                                              ; preds = %206, %209, %196, %191, %85, %155, %12, %21
  %219 = phi i32 [ 1, %12 ], [ 0, %21 ], [ 11, %85 ], [ 0, %155 ], [ 0, %191 ], [ 0, %196 ], [ 0, %209 ], [ 0, %206 ], !dbg !809
  ret i32 %219, !dbg !806
}

; Function Attrs: nounwind
declare !dbg !810 double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_bessel_j0(double noundef %0) local_unnamed_addr #0 !dbg !813 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !817, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !821
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !823
  call void @llvm.dbg.value(metadata double %2, metadata !101, metadata !DIExpression()), !dbg !821
  %3 = fcmp olt double %2, 5.000000e-01, !dbg !824
  br i1 %3, label %4, label %18, !dbg !825

4:                                                ; preds = %1
  %5 = fmul double %0, %0, !dbg !826
  call void @llvm.dbg.value(metadata double %5, metadata !102, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !105, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !106, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0xBF2A01A01A01A01A, metadata !107, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !108, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0xBE5AE64567F544E4, metadata !109, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !110, metadata !DIExpression()), !dbg !827
  %6 = fmul double %5, 0x3DE6124613A86D09, !dbg !828
  %7 = fadd double %6, 0xBE5AE64567F544E4, !dbg !829
  %8 = fmul double %5, %7, !dbg !830
  %9 = fadd double %8, 0x3EC71DE3A556C734, !dbg !831
  %10 = fmul double %5, %9, !dbg !832
  %11 = fadd double %10, 0xBF2A01A01A01A01A, !dbg !833
  %12 = fmul double %5, %11, !dbg !834
  %13 = fadd double %12, 0x3F81111111111111, !dbg !835
  %14 = fmul double %5, %13, !dbg !836
  %15 = fadd double %14, 0xBFC5555555555555, !dbg !837
  %16 = fmul double %5, %15, !dbg !838
  %17 = fadd double %16, 1.000000e+00, !dbg !839
  br label %21

18:                                               ; preds = %1
  %19 = tail call double @sin(double noundef %0) #9, !dbg !840
  %20 = fdiv double %19, %0, !dbg !841
  br label %21, !dbg !842

21:                                               ; preds = %4, %18
  %22 = phi double [ %20, %18 ], [ %17, %4 ]
  tail call void @llvm.dbg.value(metadata double %22, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !820
  tail call void @llvm.dbg.value(metadata double poison, metadata !818, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !820
  tail call void @llvm.dbg.value(metadata i32 0, metadata !819, metadata !DIExpression()), !dbg !820
  ret double %22, !dbg !843
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_j1(double noundef %0) local_unnamed_addr #4 !dbg !844 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !846, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata double %0, metadata !141, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata ptr undef, metadata !142, metadata !DIExpression()), !dbg !850
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !852
  call void @llvm.dbg.value(metadata double %2, metadata !143, metadata !DIExpression()), !dbg !850
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !853
  br i1 %3, label %29, label %4, !dbg !854

4:                                                ; preds = %1
  %5 = fcmp olt double %2, 0x28CCCCCCCCCCCD, !dbg !855
  br i1 %5, label %28, label %6, !dbg !856

6:                                                ; preds = %4
  %7 = fcmp olt double %2, 2.500000e-01, !dbg !857
  br i1 %7, label %8, label %22, !dbg !858

8:                                                ; preds = %6
  %9 = fmul double %0, %0, !dbg !859
  call void @llvm.dbg.value(metadata double %9, metadata !144, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !149, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !150, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata double 0xBF11566ABC011567, metadata !151, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !152, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata double 0xBE38D48ED61D7AAB, metadata !153, metadata !DIExpression()), !dbg !860
  %10 = fmul double %9, 0x3E38D48ED61D7AAB, !dbg !861
  %11 = fsub double 0x3EA937E11175F095, %10, !dbg !862
  %12 = fmul double %9, %11, !dbg !863
  %13 = fadd double %12, 0xBF11566ABC011567, !dbg !864
  %14 = fmul double %9, %13, !dbg !865
  %15 = fadd double %14, 0x3F6D41D41D41D41D, !dbg !866
  %16 = fmul double %9, %15, !dbg !867
  %17 = fadd double %16, -1.000000e-01, !dbg !868
  %18 = fmul double %9, %17, !dbg !869
  %19 = fadd double %18, 1.000000e+00, !dbg !870
  call void @llvm.dbg.value(metadata double %19, metadata !154, metadata !DIExpression()), !dbg !860
  %20 = fdiv double %0, 3.000000e+00, !dbg !871
  %21 = fmul double %20, %19, !dbg !872
  tail call void @llvm.dbg.value(metadata double %21, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !849
  tail call void @llvm.dbg.value(metadata double poison, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !849
  br label %29

22:                                               ; preds = %6
  %23 = tail call double @cos(double noundef %0) #9, !dbg !873
  call void @llvm.dbg.value(metadata double %23, metadata !155, metadata !DIExpression()), !dbg !874
  %24 = tail call double @sin(double noundef %0) #9, !dbg !875
  call void @llvm.dbg.value(metadata double %24, metadata !157, metadata !DIExpression()), !dbg !874
  %25 = fdiv double %24, %0, !dbg !876
  %26 = fsub double %25, %23, !dbg !877
  %27 = fdiv double %26, %0, !dbg !878
  tail call void @llvm.dbg.value(metadata double %27, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !849
  tail call void @llvm.dbg.value(metadata double poison, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !849
  br label %29

28:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !849
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !849
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 15) #9, !dbg !879
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !847, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !849
  tail call void @llvm.dbg.value(metadata i32 15, metadata !848, metadata !DIExpression()), !dbg !849
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 389, i32 noundef 15) #9, !dbg !880
  br label %29, !dbg !880

29:                                               ; preds = %1, %22, %8, %28
  %30 = phi double [ 0.000000e+00, %28 ], [ 0.000000e+00, %1 ], [ %27, %22 ], [ %21, %8 ]
  ret double %30, !dbg !884
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_j2(double noundef %0) local_unnamed_addr #4 !dbg !885 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !890
  call void @llvm.dbg.assign(metadata i1 undef, metadata !888, metadata !DIExpression(), metadata !890, metadata ptr %2, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata double %0, metadata !887, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !892
  %3 = call i32 @gsl_sf_bessel_j2_e(double noundef %0, ptr noundef nonnull %2), !dbg !892, !range !428
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !889, metadata !DIExpression()), !dbg !891
  %4 = icmp eq i32 %3, 0, !dbg !893
  br i1 %4, label %6, label %5, !dbg !892

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 394, i32 noundef %3) #9, !dbg !895
  br label %6, !dbg !895

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !892, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !898
  ret double %7, !dbg !898
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_jl(i32 noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !899 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !905, metadata !DIExpression(), metadata !907, metadata ptr %3, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !903, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata double %1, metadata !904, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !909
  %4 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !906, metadata !DIExpression()), !dbg !908
  %5 = icmp eq i32 %4, 0, !dbg !910
  br i1 %5, label %7, label %6, !dbg !909

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 399, i32 noundef %4) #9, !dbg !912
  br label %7, !dbg !912

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !909, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !915
  ret double %8, !dbg !915
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!118 = !DILocation(line: 50, column: 63, scope: !103)
!119 = !DILocation(line: 50, column: 58, scope: !103)
!120 = !DILocation(line: 50, column: 55, scope: !103)
!121 = !DILocation(line: 50, column: 50, scope: !103)
!122 = !DILocation(line: 50, column: 47, scope: !103)
!123 = !DILocation(line: 50, column: 42, scope: !103)
!124 = !DILocation(line: 50, column: 39, scope: !103)
!125 = !DILocation(line: 50, column: 34, scope: !103)
!126 = !DILocation(line: 50, column: 31, scope: !103)
!127 = !DILocation(line: 50, column: 26, scope: !103)
!128 = !DILocation(line: 50, column: 23, scope: !103)
!129 = !DILocation(line: 55, column: 19, scope: !130)
!130 = distinct !DILexicalBlock(scope: !104, file: !2, line: 54, column: 8)
!131 = !DILocation(line: 55, column: 26, scope: !130)
!132 = !DILocation(line: 57, column: 5, scope: !130)
!133 = !DILocation(line: 0, scope: !104)
!134 = !DILocation(line: 59, column: 1, scope: !86)
!135 = !DISubprogram(name: "sin", scope: !136, file: !136, line: 64, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!137 = !DISubroutineType(types: !138)
!138 = !{!90, !90}
!139 = distinct !DISubprogram(name: "gsl_sf_bessel_j1_e", scope: !2, file: !2, line: 62, type: !87, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !140)
!140 = !{!141, !142, !143, !144, !149, !150, !151, !152, !153, !154, !155, !157}
!141 = !DILocalVariable(name: "x", arg: 1, scope: !139, file: !2, line: 62, type: !89)
!142 = !DILocalVariable(name: "result", arg: 2, scope: !139, file: !2, line: 62, type: !91)
!143 = !DILocalVariable(name: "ax", scope: !139, file: !2, line: 64, type: !90)
!144 = !DILocalVariable(name: "y", scope: !145, file: !2, line: 77, type: !89)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 76, column: 22)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 76, column: 11)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 73, column: 11)
!148 = distinct !DILexicalBlock(scope: !139, file: !2, line: 68, column: 6)
!149 = !DILocalVariable(name: "c1", scope: !145, file: !2, line: 78, type: !89)
!150 = !DILocalVariable(name: "c2", scope: !145, file: !2, line: 79, type: !89)
!151 = !DILocalVariable(name: "c3", scope: !145, file: !2, line: 80, type: !89)
!152 = !DILocalVariable(name: "c4", scope: !145, file: !2, line: 81, type: !89)
!153 = !DILocalVariable(name: "c5", scope: !145, file: !2, line: 82, type: !89)
!154 = !DILocalVariable(name: "sum", scope: !145, file: !2, line: 83, type: !89)
!155 = !DILocalVariable(name: "cos_x", scope: !156, file: !2, line: 89, type: !89)
!156 = distinct !DILexicalBlock(scope: !146, file: !2, line: 88, column: 8)
!157 = !DILocalVariable(name: "sin_x", scope: !156, file: !2, line: 90, type: !89)
!158 = !DILocation(line: 0, scope: !139)
!159 = !DILocation(line: 64, column: 15, scope: !139)
!160 = !DILocation(line: 68, column: 8, scope: !148)
!161 = !DILocation(line: 68, column: 6, scope: !139)
!162 = !DILocation(line: 70, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !148, file: !2, line: 68, column: 16)
!164 = !DILocation(line: 71, column: 5, scope: !163)
!165 = !DILocation(line: 73, column: 14, scope: !147)
!166 = !DILocation(line: 73, column: 11, scope: !148)
!167 = !DILocation(line: 74, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 74, column: 5)
!169 = distinct !DILexicalBlock(scope: !147, file: !2, line: 73, column: 33)
!170 = !{!171, !172, i64 0}
!171 = !{!"gsl_sf_result_struct", !172, i64 0, !172, i64 8}
!172 = !{!"double", !173, i64 0}
!173 = !{!"omnipotent char", !174, i64 0}
!174 = !{!"Simple C/C++ TBAA"}
!175 = !{!171, !172, i64 8}
!176 = !DILocation(line: 74, column: 5, scope: !177)
!177 = distinct !DILexicalBlock(scope: !168, file: !2, line: 74, column: 5)
!178 = !DILocation(line: 76, column: 14, scope: !146)
!179 = !DILocation(line: 76, column: 11, scope: !147)
!180 = !DILocation(line: 77, column: 23, scope: !145)
!181 = !DILocation(line: 0, scope: !145)
!182 = !DILocation(line: 83, column: 63, scope: !145)
!183 = !DILocation(line: 83, column: 60, scope: !145)
!184 = !DILocation(line: 83, column: 55, scope: !145)
!185 = !DILocation(line: 83, column: 52, scope: !145)
!186 = !DILocation(line: 83, column: 47, scope: !145)
!187 = !DILocation(line: 83, column: 44, scope: !145)
!188 = !DILocation(line: 83, column: 39, scope: !145)
!189 = !DILocation(line: 83, column: 36, scope: !145)
!190 = !DILocation(line: 83, column: 31, scope: !145)
!191 = !DILocation(line: 83, column: 28, scope: !145)
!192 = !DILocation(line: 84, column: 20, scope: !145)
!193 = !DILocation(line: 84, column: 25, scope: !145)
!194 = !DILocation(line: 84, column: 17, scope: !145)
!195 = !DILocation(line: 85, column: 43, scope: !145)
!196 = !DILocation(line: 85, column: 41, scope: !145)
!197 = !DILocation(line: 85, column: 13, scope: !145)
!198 = !DILocation(line: 85, column: 17, scope: !145)
!199 = !DILocation(line: 89, column: 26, scope: !156)
!200 = !DILocation(line: 0, scope: !156)
!201 = !DILocation(line: 90, column: 26, scope: !156)
!202 = !DILocation(line: 91, column: 26, scope: !156)
!203 = !DILocation(line: 91, column: 29, scope: !156)
!204 = !DILocation(line: 91, column: 37, scope: !156)
!205 = !DILocation(line: 91, column: 18, scope: !156)
!206 = !DILocation(line: 92, column: 58, scope: !156)
!207 = !DILocation(line: 92, column: 55, scope: !156)
!208 = !DILocation(line: 92, column: 45, scope: !156)
!209 = !DILocation(line: 92, column: 75, scope: !156)
!210 = !DILocation(line: 92, column: 65, scope: !156)
!211 = !DILocation(line: 92, column: 63, scope: !156)
!212 = !DILocation(line: 92, column: 42, scope: !156)
!213 = !DILocation(line: 92, column: 13, scope: !156)
!214 = !DILocation(line: 93, column: 44, scope: !156)
!215 = !DILocation(line: 93, column: 42, scope: !156)
!216 = !DILocation(line: 93, column: 17, scope: !156)
!217 = !DILocation(line: 0, scope: !148)
!218 = !DILocation(line: 96, column: 1, scope: !139)
!219 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222, !222, !38, !38}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!224 = !DISubprogram(name: "cos", scope: !136, file: !136, line: 62, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = distinct !DISubprogram(name: "gsl_sf_bessel_j2_e", scope: !2, file: !2, line: 99, type: !87, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !226)
!226 = !{!227, !228, !229, !230, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !247, !248}
!227 = !DILocalVariable(name: "x", arg: 1, scope: !225, file: !2, line: 99, type: !89)
!228 = !DILocalVariable(name: "result", arg: 2, scope: !225, file: !2, line: 99, type: !91)
!229 = !DILocalVariable(name: "ax", scope: !225, file: !2, line: 101, type: !90)
!230 = !DILocalVariable(name: "y", scope: !231, file: !2, line: 114, type: !89)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 113, column: 21)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 113, column: 11)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 110, column: 11)
!234 = distinct !DILexicalBlock(scope: !225, file: !2, line: 105, column: 6)
!235 = !DILocalVariable(name: "c1", scope: !231, file: !2, line: 115, type: !89)
!236 = !DILocalVariable(name: "c2", scope: !231, file: !2, line: 116, type: !89)
!237 = !DILocalVariable(name: "c3", scope: !231, file: !2, line: 117, type: !89)
!238 = !DILocalVariable(name: "c4", scope: !231, file: !2, line: 118, type: !89)
!239 = !DILocalVariable(name: "c5", scope: !231, file: !2, line: 119, type: !89)
!240 = !DILocalVariable(name: "c6", scope: !231, file: !2, line: 120, type: !89)
!241 = !DILocalVariable(name: "c7", scope: !231, file: !2, line: 121, type: !89)
!242 = !DILocalVariable(name: "c8", scope: !231, file: !2, line: 122, type: !89)
!243 = !DILocalVariable(name: "c9", scope: !231, file: !2, line: 123, type: !89)
!244 = !DILocalVariable(name: "sum", scope: !231, file: !2, line: 124, type: !89)
!245 = !DILocalVariable(name: "cos_x", scope: !246, file: !2, line: 145, type: !89)
!246 = distinct !DILexicalBlock(scope: !232, file: !2, line: 129, column: 8)
!247 = !DILocalVariable(name: "sin_x", scope: !246, file: !2, line: 146, type: !89)
!248 = !DILocalVariable(name: "f", scope: !246, file: !2, line: 147, type: !89)
!249 = !DILocation(line: 0, scope: !225)
!250 = !DILocation(line: 101, column: 15, scope: !225)
!251 = !DILocation(line: 105, column: 8, scope: !234)
!252 = !DILocation(line: 105, column: 6, scope: !225)
!253 = !DILocation(line: 107, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !234, file: !2, line: 105, column: 16)
!255 = !DILocation(line: 108, column: 5, scope: !254)
!256 = !DILocation(line: 110, column: 14, scope: !233)
!257 = !DILocation(line: 110, column: 11, scope: !234)
!258 = !DILocation(line: 111, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 111, column: 5)
!260 = distinct !DILexicalBlock(scope: !233, file: !2, line: 110, column: 38)
!261 = !DILocation(line: 111, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !2, line: 111, column: 5)
!263 = !DILocation(line: 113, column: 14, scope: !232)
!264 = !DILocation(line: 113, column: 11, scope: !233)
!265 = !DILocation(line: 114, column: 24, scope: !231)
!266 = !DILocation(line: 0, scope: !231)
!267 = !DILocation(line: 124, column: 77, scope: !231)
!268 = !DILocation(line: 124, column: 75, scope: !231)
!269 = !DILocation(line: 124, column: 71, scope: !231)
!270 = !DILocation(line: 124, column: 69, scope: !231)
!271 = !DILocation(line: 124, column: 65, scope: !231)
!272 = !DILocation(line: 124, column: 63, scope: !231)
!273 = !DILocation(line: 124, column: 59, scope: !231)
!274 = !DILocation(line: 124, column: 57, scope: !231)
!275 = !DILocation(line: 124, column: 53, scope: !231)
!276 = !DILocation(line: 124, column: 51, scope: !231)
!277 = !DILocation(line: 124, column: 47, scope: !231)
!278 = !DILocation(line: 124, column: 45, scope: !231)
!279 = !DILocation(line: 124, column: 41, scope: !231)
!280 = !DILocation(line: 124, column: 39, scope: !231)
!281 = !DILocation(line: 124, column: 35, scope: !231)
!282 = !DILocation(line: 124, column: 33, scope: !231)
!283 = !DILocation(line: 124, column: 29, scope: !231)
!284 = !DILocation(line: 124, column: 27, scope: !231)
!285 = !DILocation(line: 125, column: 20, scope: !231)
!286 = !DILocation(line: 125, column: 26, scope: !231)
!287 = !DILocation(line: 125, column: 17, scope: !231)
!288 = !DILocation(line: 126, column: 43, scope: !231)
!289 = !DILocation(line: 126, column: 41, scope: !231)
!290 = !DILocation(line: 126, column: 13, scope: !231)
!291 = !DILocation(line: 126, column: 17, scope: !231)
!292 = !DILocation(line: 145, column: 26, scope: !246)
!293 = !DILocation(line: 0, scope: !246)
!294 = !DILocation(line: 146, column: 26, scope: !246)
!295 = !DILocation(line: 147, column: 29, scope: !246)
!296 = !DILocation(line: 147, column: 26, scope: !246)
!297 = !DILocation(line: 147, column: 33, scope: !246)
!298 = !DILocation(line: 148, column: 23, scope: !246)
!299 = !DILocation(line: 148, column: 36, scope: !246)
!300 = !DILocation(line: 148, column: 42, scope: !246)
!301 = !DILocation(line: 148, column: 31, scope: !246)
!302 = !DILocation(line: 148, column: 45, scope: !246)
!303 = !DILocation(line: 148, column: 18, scope: !246)
!304 = !DILocation(line: 149, column: 56, scope: !246)
!305 = !DILocation(line: 149, column: 44, scope: !246)
!306 = !DILocation(line: 149, column: 76, scope: !246)
!307 = !DILocation(line: 149, column: 66, scope: !246)
!308 = !DILocation(line: 149, column: 65, scope: !246)
!309 = !DILocation(line: 149, column: 60, scope: !246)
!310 = !DILocation(line: 149, column: 41, scope: !246)
!311 = !DILocation(line: 149, column: 13, scope: !246)
!312 = !DILocation(line: 150, column: 44, scope: !246)
!313 = !DILocation(line: 150, column: 42, scope: !246)
!314 = !DILocation(line: 150, column: 17, scope: !246)
!315 = !DILocation(line: 0, scope: !234)
!316 = !DILocation(line: 155, column: 1, scope: !225)
!317 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_e", scope: !2, file: !2, line: 159, type: !318, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !321)
!318 = !DISubroutineType(types: !319)
!319 = !{!38, !320, !89, !91}
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!321 = !{!322, !323, !324, !325, !333, !334, !335, !338, !339, !340, !343, !344, !345, !348, !349, !350, !352, !353, !354, !355, !356, !357, !358, !359, !362, !363, !364, !366, !367}
!322 = !DILocalVariable(name: "l", arg: 1, scope: !317, file: !2, line: 159, type: !320)
!323 = !DILocalVariable(name: "x", arg: 2, scope: !317, file: !2, line: 159, type: !89)
!324 = !DILocalVariable(name: "result", arg: 3, scope: !317, file: !2, line: 159, type: !91)
!325 = !DILocalVariable(name: "b", scope: !326, file: !2, line: 179, type: !92)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 178, column: 35)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 178, column: 11)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 175, column: 11)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 172, column: 11)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 169, column: 11)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 164, column: 11)
!332 = distinct !DILexicalBlock(scope: !317, file: !2, line: 161, column: 6)
!333 = !DILocalVariable(name: "status", scope: !326, file: !2, line: 180, type: !38)
!334 = !DILocalVariable(name: "pre", scope: !326, file: !2, line: 181, type: !90)
!335 = !DILocalVariable(name: "b", scope: !336, file: !2, line: 188, type: !92)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 187, column: 56)
!337 = distinct !DILexicalBlock(scope: !327, file: !2, line: 187, column: 11)
!338 = !DILocalVariable(name: "status", scope: !336, file: !2, line: 189, type: !38)
!339 = !DILocalVariable(name: "pre", scope: !336, file: !2, line: 190, type: !90)
!340 = !DILocalVariable(name: "b", scope: !341, file: !2, line: 196, type: !92)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 195, column: 42)
!342 = distinct !DILexicalBlock(scope: !337, file: !2, line: 195, column: 11)
!343 = !DILocalVariable(name: "status", scope: !341, file: !2, line: 197, type: !38)
!344 = !DILocalVariable(name: "pre", scope: !341, file: !2, line: 198, type: !90)
!345 = !DILocalVariable(name: "b", scope: !346, file: !2, line: 206, type: !92)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 204, column: 3)
!347 = distinct !DILexicalBlock(scope: !342, file: !2, line: 203, column: 11)
!348 = !DILocalVariable(name: "status", scope: !346, file: !2, line: 207, type: !38)
!349 = !DILocalVariable(name: "pre", scope: !346, file: !2, line: 208, type: !90)
!350 = !DILocalVariable(name: "sgn", scope: !351, file: !2, line: 214, type: !90)
!351 = distinct !DILexicalBlock(scope: !347, file: !2, line: 213, column: 8)
!352 = !DILocalVariable(name: "ratio", scope: !351, file: !2, line: 215, type: !90)
!353 = !DILocalVariable(name: "stat_CF1", scope: !351, file: !2, line: 217, type: !38)
!354 = !DILocalVariable(name: "BESSEL_J_SMALL", scope: !351, file: !2, line: 218, type: !89)
!355 = !DILocalVariable(name: "jellp1", scope: !351, file: !2, line: 219, type: !90)
!356 = !DILocalVariable(name: "jell", scope: !351, file: !2, line: 220, type: !90)
!357 = !DILocalVariable(name: "jellm1", scope: !351, file: !2, line: 221, type: !90)
!358 = !DILocalVariable(name: "ell", scope: !351, file: !2, line: 222, type: !38)
!359 = !DILocalVariable(name: "j0_result", scope: !360, file: !2, line: 230, type: !92)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 229, column: 35)
!361 = distinct !DILexicalBlock(scope: !351, file: !2, line: 229, column: 8)
!362 = !DILocalVariable(name: "stat_j0", scope: !360, file: !2, line: 231, type: !38)
!363 = !DILocalVariable(name: "pre", scope: !360, file: !2, line: 232, type: !90)
!364 = !DILocalVariable(name: "j1_result", scope: !365, file: !2, line: 239, type: !92)
!365 = distinct !DILexicalBlock(scope: !361, file: !2, line: 238, column: 10)
!366 = !DILocalVariable(name: "stat_j1", scope: !365, file: !2, line: 240, type: !38)
!367 = !DILocalVariable(name: "pre", scope: !365, file: !2, line: 241, type: !90)
!368 = distinct !DIAssignID()
!369 = !DILocation(line: 0, scope: !326)
!370 = distinct !DIAssignID()
!371 = !DILocation(line: 0, scope: !336)
!372 = distinct !DIAssignID()
!373 = !DILocation(line: 0, scope: !341)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !346)
!376 = distinct !DIAssignID()
!377 = !DILocation(line: 0, scope: !351)
!378 = distinct !DIAssignID()
!379 = distinct !DIAssignID()
!380 = !DILocation(line: 0, scope: !360)
!381 = distinct !DIAssignID()
!382 = !DILocation(line: 0, scope: !365)
!383 = !DILocation(line: 0, scope: !317)
!384 = !DILocation(line: 161, column: 8, scope: !332)
!385 = !DILocation(line: 161, column: 12, scope: !332)
!386 = !DILocation(line: 162, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 162, column: 5)
!388 = distinct !DILexicalBlock(scope: !332, file: !2, line: 161, column: 24)
!389 = !DILocation(line: 162, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !2, line: 162, column: 5)
!391 = !DILocation(line: 164, column: 13, scope: !331)
!392 = !DILocation(line: 164, column: 11, scope: !332)
!393 = !DILocation(line: 165, column: 23, scope: !394)
!394 = distinct !DILexicalBlock(scope: !331, file: !2, line: 164, column: 21)
!395 = !DILocation(line: 165, column: 21, scope: !394)
!396 = !DILocation(line: 165, column: 17, scope: !394)
!397 = !DILocation(line: 166, column: 13, scope: !394)
!398 = !DILocation(line: 166, column: 17, scope: !394)
!399 = !DILocation(line: 167, column: 5, scope: !394)
!400 = !DILocation(line: 169, column: 11, scope: !331)
!401 = !DILocation(line: 0, scope: !86, inlinedAt: !402)
!402 = distinct !DILocation(line: 170, column: 12, scope: !403)
!403 = distinct !DILexicalBlock(scope: !330, file: !2, line: 169, column: 19)
!404 = !DILocation(line: 38, column: 15, scope: !86, inlinedAt: !402)
!405 = !DILocation(line: 42, column: 9, scope: !104, inlinedAt: !402)
!406 = !DILocation(line: 42, column: 6, scope: !86, inlinedAt: !402)
!407 = !DILocation(line: 43, column: 23, scope: !103, inlinedAt: !402)
!408 = !DILocation(line: 0, scope: !103, inlinedAt: !402)
!409 = !DILocation(line: 50, column: 66, scope: !103, inlinedAt: !402)
!410 = !DILocation(line: 50, column: 63, scope: !103, inlinedAt: !402)
!411 = !DILocation(line: 50, column: 58, scope: !103, inlinedAt: !402)
!412 = !DILocation(line: 50, column: 55, scope: !103, inlinedAt: !402)
!413 = !DILocation(line: 50, column: 50, scope: !103, inlinedAt: !402)
!414 = !DILocation(line: 50, column: 47, scope: !103, inlinedAt: !402)
!415 = !DILocation(line: 50, column: 42, scope: !103, inlinedAt: !402)
!416 = !DILocation(line: 50, column: 39, scope: !103, inlinedAt: !402)
!417 = !DILocation(line: 50, column: 34, scope: !103, inlinedAt: !402)
!418 = !DILocation(line: 50, column: 31, scope: !103, inlinedAt: !402)
!419 = !DILocation(line: 50, column: 26, scope: !103, inlinedAt: !402)
!420 = !DILocation(line: 50, column: 23, scope: !103, inlinedAt: !402)
!421 = !DILocation(line: 55, column: 19, scope: !130, inlinedAt: !402)
!422 = !DILocation(line: 55, column: 26, scope: !130, inlinedAt: !402)
!423 = !DILocation(line: 57, column: 5, scope: !130, inlinedAt: !402)
!424 = !DILocation(line: 0, scope: !104, inlinedAt: !402)
!425 = !DILocation(line: 170, column: 5, scope: !403)
!426 = !DILocation(line: 173, column: 12, scope: !427)
!427 = distinct !DILexicalBlock(scope: !329, file: !2, line: 172, column: 19)
!428 = !{i32 0, i32 16}
!429 = !DILocation(line: 173, column: 5, scope: !427)
!430 = !DILocation(line: 176, column: 12, scope: !431)
!431 = distinct !DILexicalBlock(scope: !328, file: !2, line: 175, column: 19)
!432 = !DILocation(line: 176, column: 5, scope: !431)
!433 = !DILocation(line: 178, column: 12, scope: !327)
!434 = !DILocation(line: 178, column: 23, scope: !327)
!435 = !DILocation(line: 178, column: 24, scope: !327)
!436 = !DILocation(line: 178, column: 21, scope: !327)
!437 = !DILocation(line: 178, column: 29, scope: !327)
!438 = !DILocation(line: 178, column: 15, scope: !327)
!439 = !DILocation(line: 178, column: 11, scope: !328)
!440 = !DILocation(line: 179, column: 5, scope: !326)
!441 = !DILocation(line: 180, column: 18, scope: !326)
!442 = !DILocation(line: 181, column: 35, scope: !326)
!443 = !DILocation(line: 181, column: 20, scope: !326)
!444 = !DILocation(line: 182, column: 28, scope: !326)
!445 = !DILocation(line: 182, column: 24, scope: !326)
!446 = !DILocation(line: 182, column: 18, scope: !326)
!447 = !DILocation(line: 183, column: 28, scope: !326)
!448 = !DILocation(line: 183, column: 24, scope: !326)
!449 = !DILocation(line: 183, column: 13, scope: !326)
!450 = !DILocation(line: 184, column: 44, scope: !326)
!451 = !DILocation(line: 184, column: 42, scope: !326)
!452 = !DILocation(line: 184, column: 17, scope: !326)
!453 = !DILocation(line: 186, column: 3, scope: !327)
!454 = !DILocation(line: 187, column: 33, scope: !337)
!455 = !DILocation(line: 187, column: 41, scope: !337)
!456 = !DILocation(line: 187, column: 44, scope: !337)
!457 = !DILocation(line: 187, column: 40, scope: !337)
!458 = !DILocation(line: 187, column: 48, scope: !337)
!459 = !DILocation(line: 187, column: 37, scope: !337)
!460 = !DILocation(line: 187, column: 11, scope: !327)
!461 = !DILocation(line: 188, column: 5, scope: !336)
!462 = !DILocation(line: 189, column: 18, scope: !336)
!463 = !DILocation(line: 190, column: 33, scope: !336)
!464 = !DILocation(line: 190, column: 18, scope: !336)
!465 = !DILocation(line: 191, column: 27, scope: !336)
!466 = !DILocation(line: 191, column: 23, scope: !336)
!467 = !DILocation(line: 191, column: 17, scope: !336)
!468 = !DILocation(line: 192, column: 43, scope: !336)
!469 = !DILocation(line: 192, column: 41, scope: !336)
!470 = !DILocation(line: 192, column: 71, scope: !336)
!471 = !DILocation(line: 192, column: 67, scope: !336)
!472 = !DILocation(line: 192, column: 61, scope: !336)
!473 = !DILocation(line: 192, column: 13, scope: !336)
!474 = !DILocation(line: 192, column: 17, scope: !336)
!475 = !DILocation(line: 194, column: 3, scope: !337)
!476 = !DILocation(line: 195, column: 13, scope: !342)
!477 = !DILocation(line: 195, column: 11, scope: !337)
!478 = !DILocation(line: 196, column: 5, scope: !341)
!479 = !DILocation(line: 197, column: 18, scope: !341)
!480 = !DILocation(line: 198, column: 33, scope: !341)
!481 = !DILocation(line: 198, column: 18, scope: !341)
!482 = !DILocation(line: 199, column: 27, scope: !341)
!483 = !DILocation(line: 199, column: 23, scope: !341)
!484 = !DILocation(line: 199, column: 17, scope: !341)
!485 = !DILocation(line: 200, column: 43, scope: !341)
!486 = !DILocation(line: 200, column: 41, scope: !341)
!487 = !DILocation(line: 200, column: 71, scope: !341)
!488 = !DILocation(line: 200, column: 67, scope: !341)
!489 = !DILocation(line: 200, column: 61, scope: !341)
!490 = !DILocation(line: 200, column: 13, scope: !341)
!491 = !DILocation(line: 200, column: 17, scope: !341)
!492 = !DILocation(line: 202, column: 3, scope: !342)
!493 = !DILocation(line: 203, column: 13, scope: !347)
!494 = !DILocation(line: 203, column: 22, scope: !347)
!495 = !DILocation(line: 206, column: 5, scope: !346)
!496 = !DILocation(line: 207, column: 18, scope: !346)
!497 = !DILocation(line: 208, column: 33, scope: !346)
!498 = !DILocation(line: 208, column: 18, scope: !346)
!499 = !DILocation(line: 209, column: 27, scope: !346)
!500 = !DILocation(line: 209, column: 23, scope: !346)
!501 = !DILocation(line: 209, column: 17, scope: !346)
!502 = !DILocation(line: 210, column: 43, scope: !346)
!503 = !DILocation(line: 210, column: 41, scope: !346)
!504 = !DILocation(line: 210, column: 71, scope: !346)
!505 = !DILocation(line: 210, column: 67, scope: !346)
!506 = !DILocation(line: 210, column: 61, scope: !346)
!507 = !DILocation(line: 210, column: 13, scope: !346)
!508 = !DILocation(line: 210, column: 17, scope: !346)
!509 = !DILocation(line: 212, column: 3, scope: !347)
!510 = !DILocation(line: 214, column: 5, scope: !351)
!511 = !DILocation(line: 215, column: 5, scope: !351)
!512 = !DILocation(line: 217, column: 20, scope: !351)
!513 = !DILocation(line: 219, column: 38, scope: !351)
!514 = !{!172, !172, i64 0}
!515 = !DILocation(line: 219, column: 36, scope: !351)
!516 = !DILocation(line: 223, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !351, file: !2, line: 223, column: 5)
!518 = !DILocation(line: 224, column: 28, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 223, column: 34)
!520 = distinct !DILexicalBlock(scope: !517, file: !2, line: 223, column: 5)
!521 = !DILocation(line: 224, column: 33, scope: !519)
!522 = !DILocation(line: 224, column: 26, scope: !519)
!523 = !DILocation(line: 224, column: 37, scope: !519)
!524 = !DILocation(line: 224, column: 40, scope: !519)
!525 = !DILocation(line: 224, column: 24, scope: !519)
!526 = !DILocation(line: 223, column: 30, scope: !520)
!527 = !DILocation(line: 223, column: 22, scope: !520)
!528 = distinct !{!528, !516, !529, !530}
!529 = !DILocation(line: 227, column: 5, scope: !517)
!530 = !{!"llvm.loop.mustprogress"}
!531 = !DILocation(line: 229, column: 8, scope: !361)
!532 = !DILocation(line: 229, column: 21, scope: !361)
!533 = !DILocation(line: 229, column: 19, scope: !361)
!534 = !DILocation(line: 0, scope: !361)
!535 = !DILocation(line: 229, column: 8, scope: !351)
!536 = !DILocation(line: 230, column: 7, scope: !360)
!537 = !DILocation(line: 231, column: 22, scope: !360)
!538 = !DILocation(line: 232, column: 37, scope: !360)
!539 = !DILocation(line: 233, column: 32, scope: !360)
!540 = !DILocation(line: 233, column: 36, scope: !360)
!541 = !DILocation(line: 234, column: 32, scope: !360)
!542 = !DILocation(line: 234, column: 38, scope: !360)
!543 = !DILocation(line: 234, column: 36, scope: !360)
!544 = !DILocation(line: 235, column: 62, scope: !360)
!545 = !DILocation(line: 235, column: 60, scope: !360)
!546 = !DILocation(line: 235, column: 19, scope: !360)
!547 = !DILocation(line: 237, column: 5, scope: !361)
!548 = !DILocation(line: 239, column: 7, scope: !365)
!549 = !DILocation(line: 240, column: 22, scope: !365)
!550 = !DILocation(line: 241, column: 37, scope: !365)
!551 = !DILocation(line: 242, column: 32, scope: !365)
!552 = !DILocation(line: 242, column: 36, scope: !365)
!553 = !DILocation(line: 243, column: 32, scope: !365)
!554 = !DILocation(line: 243, column: 38, scope: !365)
!555 = !DILocation(line: 243, column: 36, scope: !365)
!556 = !DILocation(line: 244, column: 62, scope: !365)
!557 = !DILocation(line: 244, column: 60, scope: !365)
!558 = !DILocation(line: 244, column: 19, scope: !365)
!559 = !DILocation(line: 245, column: 14, scope: !365)
!560 = !DILocation(line: 246, column: 5, scope: !361)
!561 = !DILocation(line: 247, column: 3, scope: !347)
!562 = !DILocation(line: 0, scope: !332)
!563 = !DILocation(line: 248, column: 1, scope: !317)
!564 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !565, file: !565, line: 32, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!566 = !DISubroutineType(types: !567)
!567 = !{!38, !89, !89, !320, !320, !89, !91}
!568 = !DISubprogram(name: "sqrt", scope: !136, file: !136, line: 143, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !565, file: !565, line: 39, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{!38, !89, !89, !91}
!572 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !573, file: !573, line: 27, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!574 = !DISubroutineType(types: !575)
!575 = !{!38, !90, !90, !91}
!576 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !565, file: !565, line: 56, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{!38, !89, !89, !579, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!580 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_array", scope: !2, file: !2, line: 252, type: !581, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!38, !320, !89, !579}
!583 = !{!584, !585, !586, !587, !590, !593, !595, !596, !597, !598, !599, !600, !601}
!584 = !DILocalVariable(name: "lmax", arg: 1, scope: !580, file: !2, line: 252, type: !320)
!585 = !DILocalVariable(name: "x", arg: 2, scope: !580, file: !2, line: 252, type: !89)
!586 = !DILocalVariable(name: "result_array", arg: 3, scope: !580, file: !2, line: 252, type: !579)
!587 = !DILocalVariable(name: "j", scope: !588, file: !2, line: 257, type: !38)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 256, column: 27)
!589 = distinct !DILexicalBlock(scope: !580, file: !2, line: 256, column: 6)
!590 = !DILocalVariable(name: "j", scope: !591, file: !2, line: 262, type: !38)
!591 = distinct !DILexicalBlock(scope: !592, file: !2, line: 261, column: 21)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 261, column: 11)
!593 = !DILocalVariable(name: "r_jellp1", scope: !594, file: !2, line: 268, type: !92)
!594 = distinct !DILexicalBlock(scope: !592, file: !2, line: 267, column: 8)
!595 = !DILocalVariable(name: "r_jell", scope: !594, file: !2, line: 269, type: !92)
!596 = !DILocalVariable(name: "stat_0", scope: !594, file: !2, line: 270, type: !38)
!597 = !DILocalVariable(name: "stat_1", scope: !594, file: !2, line: 271, type: !38)
!598 = !DILocalVariable(name: "jellp1", scope: !594, file: !2, line: 272, type: !90)
!599 = !DILocalVariable(name: "jell", scope: !594, file: !2, line: 273, type: !90)
!600 = !DILocalVariable(name: "jellm1", scope: !594, file: !2, line: 274, type: !90)
!601 = !DILocalVariable(name: "ell", scope: !594, file: !2, line: 275, type: !38)
!602 = distinct !DIAssignID()
!603 = !DILocation(line: 0, scope: !594)
!604 = distinct !DIAssignID()
!605 = !DILocation(line: 0, scope: !580)
!606 = !DILocation(line: 256, column: 11, scope: !589)
!607 = !DILocation(line: 256, column: 15, scope: !589)
!608 = !DILocation(line: 0, scope: !588)
!609 = !DILocation(line: 258, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !588, file: !2, line: 258, column: 5)
!611 = !DILocation(line: 258, column: 44, scope: !612)
!612 = distinct !DILexicalBlock(scope: !610, file: !2, line: 258, column: 5)
!613 = !DILocation(line: 259, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !588, file: !2, line: 259, column: 5)
!615 = !DILocation(line: 261, column: 13, scope: !592)
!616 = !DILocation(line: 261, column: 11, scope: !589)
!617 = !DILocation(line: 0, scope: !591)
!618 = !DILocation(line: 263, column: 15, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 263, column: 5)
!620 = distinct !DILexicalBlock(scope: !591, file: !2, line: 263, column: 5)
!621 = !DILocation(line: 263, column: 5, scope: !620)
!622 = !DILocation(line: 263, column: 44, scope: !619)
!623 = !DILocation(line: 264, column: 21, scope: !591)
!624 = !DILocation(line: 268, column: 5, scope: !594)
!625 = !DILocation(line: 269, column: 5, scope: !594)
!626 = !DILocation(line: 270, column: 41, scope: !594)
!627 = !DILocation(line: 270, column: 18, scope: !594)
!628 = !DILocation(line: 271, column: 18, scope: !594)
!629 = !DILocation(line: 272, column: 30, scope: !594)
!630 = !DILocation(line: 273, column: 28, scope: !594)
!631 = !DILocation(line: 277, column: 5, scope: !594)
!632 = !DILocation(line: 277, column: 24, scope: !594)
!633 = !DILocation(line: 278, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !594, file: !2, line: 278, column: 5)
!635 = !DILocation(line: 278, column: 25, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !2, line: 278, column: 5)
!637 = !DILocation(line: 278, column: 5, scope: !634)
!638 = !DILocation(line: 279, column: 28, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !2, line: 278, column: 38)
!640 = !DILocation(line: 279, column: 33, scope: !639)
!641 = !DILocation(line: 279, column: 26, scope: !639)
!642 = !DILocation(line: 279, column: 37, scope: !639)
!643 = !DILocation(line: 279, column: 40, scope: !639)
!644 = !DILocation(line: 279, column: 24, scope: !639)
!645 = !DILocation(line: 282, column: 7, scope: !639)
!646 = !DILocation(line: 282, column: 27, scope: !639)
!647 = !DILocation(line: 278, column: 34, scope: !636)
!648 = distinct !{!648, !637, !649, !530}
!649 = !DILocation(line: 283, column: 5, scope: !634)
!650 = !DILocation(line: 285, column: 12, scope: !594)
!651 = !DILocation(line: 286, column: 3, scope: !592)
!652 = !DILocation(line: 0, scope: !589)
!653 = !DILocation(line: 287, column: 1, scope: !580)
!654 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_steed_array", scope: !2, file: !2, line: 290, type: !581, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !655)
!655 = !{!656, !657, !658, !659, !662, !665, !668, !669, !670, !672, !673, !674, !675, !676, !677, !678, !679, !682, !683, !684, !685}
!656 = !DILocalVariable(name: "lmax", arg: 1, scope: !654, file: !2, line: 290, type: !320)
!657 = !DILocalVariable(name: "x", arg: 2, scope: !654, file: !2, line: 290, type: !89)
!658 = !DILocalVariable(name: "jl_x", arg: 3, scope: !654, file: !2, line: 290, type: !579)
!659 = !DILocalVariable(name: "j", scope: !660, file: !2, line: 295, type: !38)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 294, column: 27)
!661 = distinct !DILexicalBlock(scope: !654, file: !2, line: 294, column: 6)
!662 = !DILocalVariable(name: "j", scope: !663, file: !2, line: 300, type: !38)
!663 = distinct !DILexicalBlock(scope: !664, file: !2, line: 299, column: 21)
!664 = distinct !DILexicalBlock(scope: !661, file: !2, line: 299, column: 11)
!665 = !DILocalVariable(name: "inv_fact", scope: !666, file: !2, line: 307, type: !90)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 305, column: 42)
!667 = distinct !DILexicalBlock(scope: !664, file: !2, line: 305, column: 11)
!668 = !DILocalVariable(name: "x_l", scope: !666, file: !2, line: 308, type: !90)
!669 = !DILocalVariable(name: "l", scope: !666, file: !2, line: 309, type: !38)
!670 = !DILocalVariable(name: "x_inv", scope: !671, file: !2, line: 320, type: !90)
!671 = distinct !DILexicalBlock(scope: !667, file: !2, line: 318, column: 8)
!672 = !DILocalVariable(name: "W", scope: !671, file: !2, line: 321, type: !90)
!673 = !DILocalVariable(name: "F", scope: !671, file: !2, line: 322, type: !90)
!674 = !DILocalVariable(name: "FP", scope: !671, file: !2, line: 323, type: !90)
!675 = !DILocalVariable(name: "B", scope: !671, file: !2, line: 324, type: !90)
!676 = !DILocalVariable(name: "end", scope: !671, file: !2, line: 325, type: !90)
!677 = !DILocalVariable(name: "D", scope: !671, file: !2, line: 326, type: !90)
!678 = !DILocalVariable(name: "del", scope: !671, file: !2, line: 327, type: !90)
!679 = !DILocalVariable(name: "XP2", scope: !680, file: !2, line: 348, type: !90)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 346, column: 18)
!681 = distinct !DILexicalBlock(scope: !671, file: !2, line: 346, column: 8)
!682 = !DILocalVariable(name: "PL", scope: !680, file: !2, line: 349, type: !90)
!683 = !DILocalVariable(name: "L", scope: !680, file: !2, line: 350, type: !38)
!684 = !DILocalVariable(name: "LP", scope: !680, file: !2, line: 351, type: !38)
!685 = !DILocalVariable(name: "L", scope: !686, file: !2, line: 367, type: !38)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 366, column: 18)
!687 = distinct !DILexicalBlock(scope: !671, file: !2, line: 366, column: 8)
!688 = !DILocation(line: 0, scope: !654)
!689 = !DILocation(line: 294, column: 11, scope: !661)
!690 = !DILocation(line: 294, column: 15, scope: !661)
!691 = !DILocation(line: 0, scope: !660)
!692 = !DILocation(line: 296, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !660, file: !2, line: 296, column: 5)
!694 = !DILocation(line: 296, column: 36, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !2, line: 296, column: 5)
!696 = !DILocation(line: 297, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !660, file: !2, line: 297, column: 5)
!698 = !DILocation(line: 299, column: 13, scope: !664)
!699 = !DILocation(line: 299, column: 11, scope: !661)
!700 = !DILocation(line: 0, scope: !663)
!701 = !DILocation(line: 301, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !2, line: 301, column: 5)
!703 = distinct !DILexicalBlock(scope: !663, file: !2, line: 301, column: 5)
!704 = !DILocation(line: 301, column: 5, scope: !703)
!705 = !DILocation(line: 301, column: 36, scope: !702)
!706 = !DILocation(line: 302, column: 13, scope: !663)
!707 = !DILocation(line: 305, column: 13, scope: !667)
!708 = !DILocation(line: 305, column: 11, scope: !664)
!709 = !DILocation(line: 0, scope: !666)
!710 = !DILocation(line: 310, column: 5, scope: !711)
!711 = distinct !DILexicalBlock(scope: !666, file: !2, line: 310, column: 5)
!712 = !DILocation(line: 310, column: 15, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !2, line: 310, column: 5)
!714 = !DILocation(line: 311, column: 22, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !2, line: 310, column: 28)
!716 = !DILocation(line: 311, column: 7, scope: !715)
!717 = !DILocation(line: 312, column: 37, scope: !715)
!718 = !DILocation(line: 312, column: 36, scope: !715)
!719 = !DILocation(line: 312, column: 38, scope: !715)
!720 = !DILocation(line: 312, column: 31, scope: !715)
!721 = !DILocation(line: 312, column: 22, scope: !715)
!722 = !DILocation(line: 312, column: 15, scope: !715)
!723 = !DILocation(line: 313, column: 16, scope: !715)
!724 = !DILocation(line: 314, column: 16, scope: !715)
!725 = !DILocation(line: 310, column: 24, scope: !713)
!726 = distinct !{!726, !710, !727, !530}
!727 = !DILocation(line: 315, column: 5, scope: !711)
!728 = !DILocation(line: 320, column: 23, scope: !671)
!729 = !DILocation(line: 0, scope: !671)
!730 = !DILocation(line: 321, column: 19, scope: !671)
!731 = !DILocation(line: 323, column: 18, scope: !671)
!732 = !DILocation(line: 323, column: 22, scope: !671)
!733 = !DILocation(line: 323, column: 28, scope: !671)
!734 = !DILocation(line: 324, column: 19, scope: !671)
!735 = !DILocation(line: 324, column: 23, scope: !671)
!736 = !DILocation(line: 325, column: 29, scope: !671)
!737 = !DILocation(line: 325, column: 20, scope: !671)
!738 = !DILocation(line: 326, column: 19, scope: !671)
!739 = !DILocation(line: 327, column: 18, scope: !671)
!740 = !DILocation(line: 329, column: 8, scope: !671)
!741 = !DILocation(line: 332, column: 5, scope: !671)
!742 = !DILocation(line: 333, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !671, file: !2, line: 332, column: 8)
!744 = !DILocation(line: 338, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !743, file: !2, line: 338, column: 10)
!746 = !DILocation(line: 338, column: 10, scope: !743)
!747 = !DILocation(line: 339, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !2, line: 339, column: 9)
!749 = distinct !DILexicalBlock(scope: !745, file: !2, line: 338, column: 19)
!750 = !DILocation(line: 334, column: 17, scope: !743)
!751 = !DILocation(line: 334, column: 14, scope: !743)
!752 = !DILocation(line: 337, column: 12, scope: !753)
!753 = distinct !DILexicalBlock(scope: !743, file: !2, line: 337, column: 10)
!754 = !DILocation(line: 337, column: 10, scope: !743)
!755 = !DILocation(line: 335, column: 16, scope: !743)
!756 = !DILocation(line: 335, column: 19, scope: !743)
!757 = !DILocation(line: 335, column: 11, scope: !743)
!758 = !DILocation(line: 336, column: 10, scope: !743)
!759 = !DILocation(line: 342, column: 11, scope: !671)
!760 = !DILocation(line: 342, column: 24, scope: !671)
!761 = !DILocation(line: 342, column: 33, scope: !671)
!762 = !DILocation(line: 342, column: 21, scope: !671)
!763 = !DILocation(line: 341, column: 5, scope: !743)
!764 = distinct !{!764, !741, !765, !530}
!765 = !DILocation(line: 342, column: 50, scope: !671)
!766 = !DILocation(line: 344, column: 8, scope: !671)
!767 = !DILocation(line: 346, column: 13, scope: !681)
!768 = !DILocation(line: 346, column: 8, scope: !671)
!769 = !DILocation(line: 0, scope: !680)
!770 = !DILocation(line: 349, column: 24, scope: !680)
!771 = !DILocation(line: 352, column: 7, scope: !680)
!772 = !DILocation(line: 352, column: 18, scope: !680)
!773 = !DILocation(line: 353, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !680, file: !2, line: 353, column: 7)
!775 = !DILocation(line: 354, column: 24, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 353, column: 35)
!777 = distinct !DILexicalBlock(scope: !774, file: !2, line: 353, column: 7)
!778 = !DILocation(line: 354, column: 34, scope: !776)
!779 = !DILocation(line: 354, column: 9, scope: !776)
!780 = !DILocation(line: 354, column: 19, scope: !776)
!781 = !DILocation(line: 355, column: 16, scope: !776)
!782 = !DILocation(line: 355, column: 27, scope: !776)
!783 = !DILocation(line: 357, column: 12, scope: !776)
!784 = !DILocation(line: 358, column: 9, scope: !776)
!785 = distinct !{!785, !773, !786, !530}
!786 = !DILocation(line: 359, column: 7, scope: !774)
!787 = !DILocation(line: 354, column: 26, scope: !776)
!788 = !DILocation(line: 360, column: 11, scope: !680)
!789 = !DILocation(line: 361, column: 5, scope: !680)
!790 = !DILocation(line: 364, column: 17, scope: !671)
!791 = !DILocation(line: 364, column: 15, scope: !671)
!792 = !DILocation(line: 365, column: 16, scope: !671)
!793 = !DILocation(line: 365, column: 13, scope: !671)
!794 = !DILocation(line: 366, column: 8, scope: !671)
!795 = !DILocation(line: 368, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !686, file: !2, line: 368, column: 7)
!797 = !DILocation(line: 368, column: 17, scope: !798)
!798 = distinct !DILexicalBlock(scope: !796, file: !2, line: 368, column: 7)
!799 = !DILocation(line: 0, scope: !686)
!800 = !DILocation(line: 369, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !2, line: 368, column: 30)
!802 = !DILocation(line: 369, column: 17, scope: !801)
!803 = !DILocation(line: 368, column: 26, scope: !798)
!804 = distinct !{!804, !795, !805, !530}
!805 = !DILocation(line: 370, column: 7, scope: !796)
!806 = !DILocation(line: 375, column: 1, scope: !654)
!807 = distinct !{!807, !808}
!808 = !{!"llvm.loop.unroll.disable"}
!809 = !DILocation(line: 0, scope: !661)
!810 = !DISubprogram(name: "hypot", scope: !136, file: !136, line: 147, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DISubroutineType(types: !812)
!812 = !{!90, !90, !90}
!813 = distinct !DISubprogram(name: "gsl_sf_bessel_j0", scope: !2, file: !2, line: 382, type: !814, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!90, !89}
!816 = !{!817, !818, !819}
!817 = !DILocalVariable(name: "x", arg: 1, scope: !813, file: !2, line: 382, type: !89)
!818 = !DILocalVariable(name: "result", scope: !813, file: !2, line: 384, type: !92)
!819 = !DILocalVariable(name: "status", scope: !813, file: !2, line: 384, type: !38)
!820 = !DILocation(line: 0, scope: !813)
!821 = !DILocation(line: 0, scope: !86, inlinedAt: !822)
!822 = distinct !DILocation(line: 384, column: 3, scope: !813)
!823 = !DILocation(line: 38, column: 15, scope: !86, inlinedAt: !822)
!824 = !DILocation(line: 42, column: 9, scope: !104, inlinedAt: !822)
!825 = !DILocation(line: 42, column: 6, scope: !86, inlinedAt: !822)
!826 = !DILocation(line: 43, column: 23, scope: !103, inlinedAt: !822)
!827 = !DILocation(line: 0, scope: !103, inlinedAt: !822)
!828 = !DILocation(line: 50, column: 66, scope: !103, inlinedAt: !822)
!829 = !DILocation(line: 50, column: 63, scope: !103, inlinedAt: !822)
!830 = !DILocation(line: 50, column: 58, scope: !103, inlinedAt: !822)
!831 = !DILocation(line: 50, column: 55, scope: !103, inlinedAt: !822)
!832 = !DILocation(line: 50, column: 50, scope: !103, inlinedAt: !822)
!833 = !DILocation(line: 50, column: 47, scope: !103, inlinedAt: !822)
!834 = !DILocation(line: 50, column: 42, scope: !103, inlinedAt: !822)
!835 = !DILocation(line: 50, column: 39, scope: !103, inlinedAt: !822)
!836 = !DILocation(line: 50, column: 34, scope: !103, inlinedAt: !822)
!837 = !DILocation(line: 50, column: 31, scope: !103, inlinedAt: !822)
!838 = !DILocation(line: 50, column: 26, scope: !103, inlinedAt: !822)
!839 = !DILocation(line: 50, column: 23, scope: !103, inlinedAt: !822)
!840 = !DILocation(line: 55, column: 19, scope: !130, inlinedAt: !822)
!841 = !DILocation(line: 55, column: 26, scope: !130, inlinedAt: !822)
!842 = !DILocation(line: 57, column: 5, scope: !130, inlinedAt: !822)
!843 = !DILocation(line: 385, column: 1, scope: !813)
!844 = distinct !DISubprogram(name: "gsl_sf_bessel_j1", scope: !2, file: !2, line: 387, type: !814, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !845)
!845 = !{!846, !847, !848}
!846 = !DILocalVariable(name: "x", arg: 1, scope: !844, file: !2, line: 387, type: !89)
!847 = !DILocalVariable(name: "result", scope: !844, file: !2, line: 389, type: !92)
!848 = !DILocalVariable(name: "status", scope: !844, file: !2, line: 389, type: !38)
!849 = !DILocation(line: 0, scope: !844)
!850 = !DILocation(line: 0, scope: !139, inlinedAt: !851)
!851 = distinct !DILocation(line: 389, column: 3, scope: !844)
!852 = !DILocation(line: 64, column: 15, scope: !139, inlinedAt: !851)
!853 = !DILocation(line: 68, column: 8, scope: !148, inlinedAt: !851)
!854 = !DILocation(line: 68, column: 6, scope: !139, inlinedAt: !851)
!855 = !DILocation(line: 73, column: 14, scope: !147, inlinedAt: !851)
!856 = !DILocation(line: 73, column: 11, scope: !148, inlinedAt: !851)
!857 = !DILocation(line: 76, column: 14, scope: !146, inlinedAt: !851)
!858 = !DILocation(line: 76, column: 11, scope: !147, inlinedAt: !851)
!859 = !DILocation(line: 77, column: 23, scope: !145, inlinedAt: !851)
!860 = !DILocation(line: 0, scope: !145, inlinedAt: !851)
!861 = !DILocation(line: 83, column: 63, scope: !145, inlinedAt: !851)
!862 = !DILocation(line: 83, column: 60, scope: !145, inlinedAt: !851)
!863 = !DILocation(line: 83, column: 55, scope: !145, inlinedAt: !851)
!864 = !DILocation(line: 83, column: 52, scope: !145, inlinedAt: !851)
!865 = !DILocation(line: 83, column: 47, scope: !145, inlinedAt: !851)
!866 = !DILocation(line: 83, column: 44, scope: !145, inlinedAt: !851)
!867 = !DILocation(line: 83, column: 39, scope: !145, inlinedAt: !851)
!868 = !DILocation(line: 83, column: 36, scope: !145, inlinedAt: !851)
!869 = !DILocation(line: 83, column: 31, scope: !145, inlinedAt: !851)
!870 = !DILocation(line: 83, column: 28, scope: !145, inlinedAt: !851)
!871 = !DILocation(line: 84, column: 20, scope: !145, inlinedAt: !851)
!872 = !DILocation(line: 84, column: 25, scope: !145, inlinedAt: !851)
!873 = !DILocation(line: 89, column: 26, scope: !156, inlinedAt: !851)
!874 = !DILocation(line: 0, scope: !156, inlinedAt: !851)
!875 = !DILocation(line: 90, column: 26, scope: !156, inlinedAt: !851)
!876 = !DILocation(line: 91, column: 26, scope: !156, inlinedAt: !851)
!877 = !DILocation(line: 91, column: 29, scope: !156, inlinedAt: !851)
!878 = !DILocation(line: 91, column: 37, scope: !156, inlinedAt: !851)
!879 = !DILocation(line: 74, column: 5, scope: !177, inlinedAt: !851)
!880 = !DILocation(line: 389, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !2, line: 389, column: 3)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 389, column: 3)
!883 = distinct !DILexicalBlock(scope: !844, file: !2, line: 389, column: 3)
!884 = !DILocation(line: 390, column: 1, scope: !844)
!885 = distinct !DISubprogram(name: "gsl_sf_bessel_j2", scope: !2, file: !2, line: 392, type: !814, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !886)
!886 = !{!887, !888, !889}
!887 = !DILocalVariable(name: "x", arg: 1, scope: !885, file: !2, line: 392, type: !89)
!888 = !DILocalVariable(name: "result", scope: !885, file: !2, line: 394, type: !92)
!889 = !DILocalVariable(name: "status", scope: !885, file: !2, line: 394, type: !38)
!890 = distinct !DIAssignID()
!891 = !DILocation(line: 0, scope: !885)
!892 = !DILocation(line: 394, column: 3, scope: !885)
!893 = !DILocation(line: 394, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !2, line: 394, column: 3)
!895 = !DILocation(line: 394, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 394, column: 3)
!897 = distinct !DILexicalBlock(scope: !894, file: !2, line: 394, column: 3)
!898 = !DILocation(line: 395, column: 1, scope: !885)
!899 = distinct !DISubprogram(name: "gsl_sf_bessel_jl", scope: !2, file: !2, line: 397, type: !900, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!90, !320, !89}
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "l", arg: 1, scope: !899, file: !2, line: 397, type: !320)
!904 = !DILocalVariable(name: "x", arg: 2, scope: !899, file: !2, line: 397, type: !89)
!905 = !DILocalVariable(name: "result", scope: !899, file: !2, line: 399, type: !92)
!906 = !DILocalVariable(name: "status", scope: !899, file: !2, line: 399, type: !38)
!907 = distinct !DIAssignID()
!908 = !DILocation(line: 0, scope: !899)
!909 = !DILocation(line: 399, column: 3, scope: !899)
!910 = !DILocation(line: 399, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !899, file: !2, line: 399, column: 3)
!912 = !DILocation(line: 399, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 399, column: 3)
!914 = distinct !DILexicalBlock(scope: !911, file: !2, line: 399, column: 3)
!915 = !DILocation(line: 400, column: 1, scope: !899)
