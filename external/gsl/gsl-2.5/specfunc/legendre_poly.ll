; ModuleID = 'legendre_poly.c'
source_filename = "legendre_poly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"legendre_poly.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.6 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Pl_e(l, x, &result)\00", align 1, !dbg !17
@.str.7 = private unnamed_addr constant [40 x i8] c"gsl_sf_legendre_Plm_e(l, m, x, &result)\00", align 1, !dbg !22
@.str.8 = private unnamed_addr constant [43 x i8] c"gsl_sf_legendre_sphPlm_e(l, m, x, &result)\00", align 1, !dbg !27

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_legendre_P1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !93 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !104, metadata !DIExpression()), !dbg !106
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !105, metadata !DIExpression()), !dbg !106
  store double %0, ptr %1, align 8, !dbg !107, !tbaa !109
  %3 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !114
  store double 0.000000e+00, ptr %3, align 8, !dbg !115, !tbaa !116
  ret i32 0, !dbg !117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_legendre_P2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !118 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !120, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !121, metadata !DIExpression()), !dbg !122
  %3 = fmul double %0, 3.000000e+00, !dbg !123
  %4 = fmul double %3, %0, !dbg !125
  %5 = fadd double %4, -1.000000e+00, !dbg !126
  %6 = fmul double %5, 5.000000e-01, !dbg !127
  store double %6, ptr %1, align 8, !dbg !128, !tbaa !109
  %7 = tail call double @llvm.fabs.f64(double %4), !dbg !129
  %8 = fadd double %7, 1.000000e+00, !dbg !130
  %9 = fmul double %8, 0x3CB0000000000000, !dbg !131
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !132
  store double %9, ptr %10, align 8, !dbg !133, !tbaa !116
  ret i32 0, !dbg !134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_legendre_P3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !135 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !137, metadata !DIExpression()), !dbg !139
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !138, metadata !DIExpression()), !dbg !139
  %3 = fmul double %0, 5.000000e-01, !dbg !140
  %4 = fmul double %0, 5.000000e+00, !dbg !142
  %5 = fmul double %4, %0, !dbg !143
  %6 = fadd double %5, -3.000000e+00, !dbg !144
  %7 = fmul double %3, %6, !dbg !145
  store double %7, ptr %1, align 8, !dbg !146, !tbaa !109
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !147
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !148
  %10 = fmul double %9, 5.000000e-01, !dbg !149
  %11 = tail call double @llvm.fabs.f64(double %5), !dbg !150
  %12 = fadd double %11, 3.000000e+00, !dbg !151
  %13 = fmul double %10, %12, !dbg !152
  %14 = fadd double %8, %13, !dbg !153
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !154
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !155
  store double %15, ptr %16, align 8, !dbg !156, !tbaa !116
  ret i32 0, !dbg !157
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !158 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !196
  call void @llvm.dbg.assign(metadata i1 undef, metadata !185, metadata !DIExpression(), metadata !196, metadata ptr %4, metadata !DIExpression()), !dbg !197
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !198
  call void @llvm.dbg.assign(metadata i1 undef, metadata !186, metadata !DIExpression(), metadata !198, metadata ptr %5, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double %1, metadata !165, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !166, metadata !DIExpression()), !dbg !199
  %6 = icmp slt i32 %0, 0, !dbg !200
  %7 = fcmp olt double %1, -1.000000e+00
  %8 = or i1 %6, %7, !dbg !201
  %9 = fcmp ogt double %1, 1.000000e+00
  %10 = or i1 %9, %8, !dbg !201
  br i1 %10, label %11, label %13, !dbg !201

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !202, !tbaa !109
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !202
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !202, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 1) #9, !dbg !205
  br label %127, !dbg !205

13:                                               ; preds = %3
  switch i32 %0, label %27 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ], !dbg !207

14:                                               ; preds = %13
  store double 1.000000e+00, ptr %2, align 8, !dbg !208, !tbaa !109
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !210
  store double 0.000000e+00, ptr %15, align 8, !dbg !211, !tbaa !116
  br label %127, !dbg !212

16:                                               ; preds = %13
  store double %1, ptr %2, align 8, !dbg !213, !tbaa !109
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !215
  store double 0.000000e+00, ptr %17, align 8, !dbg !216, !tbaa !116
  br label %127, !dbg !217

18:                                               ; preds = %13
  %19 = fmul double %1, 3.000000e+00, !dbg !218
  %20 = fmul double %19, %1, !dbg !220
  %21 = fadd double %20, -1.000000e+00, !dbg !221
  %22 = fmul double %21, 5.000000e-01, !dbg !222
  store double %22, ptr %2, align 8, !dbg !223, !tbaa !109
  %23 = tail call double @llvm.fabs.f64(double %20), !dbg !224
  %24 = fadd double %23, 1.000000e+00, !dbg !225
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !226
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !227
  store double %25, ptr %26, align 8, !dbg !228, !tbaa !116
  br label %127, !dbg !229

27:                                               ; preds = %13
  %28 = fcmp oeq double %1, 1.000000e+00, !dbg !230
  br i1 %28, label %29, label %31, !dbg !231

29:                                               ; preds = %27
  store double 1.000000e+00, ptr %2, align 8, !dbg !232, !tbaa !109
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !234
  store double 0.000000e+00, ptr %30, align 8, !dbg !235, !tbaa !116
  br label %127, !dbg !236

31:                                               ; preds = %27
  %32 = fcmp oeq double %1, -1.000000e+00, !dbg !237
  br i1 %32, label %33, label %38, !dbg !238

33:                                               ; preds = %31
  %34 = and i32 %0, 1, !dbg !239
  %35 = icmp eq i32 %34, 0, !dbg !239
  %36 = select i1 %35, double 1.000000e+00, double -1.000000e+00, !dbg !239
  store double %36, ptr %2, align 8, !dbg !241, !tbaa !109
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !242
  store double 0.000000e+00, ptr %37, align 8, !dbg !243, !tbaa !116
  br label %127, !dbg !244

38:                                               ; preds = %31
  %39 = icmp ult i32 %0, 100000, !dbg !245
  br i1 %39, label %40, label %76, !dbg !246

40:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !167, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %1, metadata !176, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %1, metadata !177, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !178, metadata !DIExpression()), !dbg !247
  %41 = tail call double @llvm.fabs.f64(double %1), !dbg !248
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !249
  tail call void @llvm.dbg.value(metadata double %42, metadata !179, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 2, metadata !181, metadata !DIExpression()), !dbg !247
  br label %43, !dbg !250

43:                                               ; preds = %40, %43
  %44 = phi double [ %45, %43 ], [ 1.000000e+00, %40 ]
  %45 = phi double [ %59, %43 ], [ %1, %40 ]
  %46 = phi double [ %47, %43 ], [ 0x3CB0000000000000, %40 ]
  %47 = phi double [ %66, %43 ], [ %42, %40 ]
  %48 = phi i32 [ %67, %43 ], [ 2, %40 ]
  tail call void @llvm.dbg.value(metadata double %44, metadata !167, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %45, metadata !176, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %46, metadata !178, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %47, metadata !179, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !181, metadata !DIExpression()), !dbg !247
  %49 = shl nuw nsw i32 %48, 1, !dbg !252
  %50 = add nsw i32 %49, -1, !dbg !255
  %51 = sitofp i32 %50 to double, !dbg !256
  %52 = fmul double %51, %1, !dbg !257
  %53 = fmul double %45, %52, !dbg !258
  %54 = add nsw i32 %48, -1, !dbg !259
  %55 = sitofp i32 %54 to double, !dbg !260
  %56 = fmul double %44, %55, !dbg !261
  %57 = fsub double %53, %56, !dbg !262
  %58 = sitofp i32 %48 to double, !dbg !263
  %59 = fdiv double %57, %58, !dbg !264
  tail call void @llvm.dbg.value(metadata double %59, metadata !177, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %45, metadata !167, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %59, metadata !176, metadata !DIExpression()), !dbg !247
  %60 = fmul double %41, %51, !dbg !265
  %61 = fmul double %47, %60, !dbg !266
  %62 = fadd double %58, -1.000000e+00, !dbg !267
  %63 = fmul double %62, %46, !dbg !268
  %64 = fadd double %63, %61, !dbg !269
  %65 = fmul double %64, 5.000000e-01, !dbg !270
  %66 = fdiv double %65, %58, !dbg !271
  tail call void @llvm.dbg.value(metadata double %66, metadata !180, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %47, metadata !178, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %66, metadata !179, metadata !DIExpression()), !dbg !247
  %67 = add nuw i32 %48, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !181, metadata !DIExpression()), !dbg !247
  %68 = icmp eq i32 %48, %0, !dbg !273
  br i1 %68, label %69, label %43, !dbg !250, !llvm.loop !274

69:                                               ; preds = %43
  %70 = tail call double @llvm.fabs.f64(double %59), !dbg !277
  store double %59, ptr %2, align 8, !dbg !278, !tbaa !109
  %71 = sitofp i32 %0 to double, !dbg !279
  %72 = fmul double %70, %71, !dbg !280
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !281
  %74 = fadd double %66, %73, !dbg !282
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !283
  store double %74, ptr %75, align 8, !dbg !284, !tbaa !116
  br label %127

76:                                               ; preds = %38
  %77 = sitofp i32 %0 to double, !dbg !285
  %78 = fadd double %77, 5.000000e-01, !dbg !286
  tail call void @llvm.dbg.value(metadata double %78, metadata !182, metadata !DIExpression()), !dbg !197
  %79 = tail call double @acos(double noundef %1) #9, !dbg !287
  tail call void @llvm.dbg.value(metadata double %79, metadata !184, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !288
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !289
  %80 = fmul double %78, %79, !dbg !290
  %81 = call i32 @gsl_sf_bessel_J0_e(double noundef %80, ptr noundef nonnull %4) #9, !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !187, metadata !DIExpression()), !dbg !197
  %82 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef -1, double noundef %80, ptr noundef nonnull %5) #9, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !188, metadata !DIExpression()), !dbg !197
  %83 = fcmp olt double %79, 0x3F20000000000000, !dbg !293
  br i1 %83, label %84, label %91, !dbg !294

84:                                               ; preds = %76
  %85 = fmul double %79, %79, !dbg !295
  %86 = fdiv double %85, 1.500000e+01, !dbg !297
  %87 = fadd double %86, 1.000000e+00, !dbg !298
  %88 = fdiv double %87, 2.400000e+01, !dbg !299
  tail call void @llvm.dbg.value(metadata double %88, metadata !190, metadata !DIExpression()), !dbg !197
  %89 = fdiv double %85, 1.200000e+01, !dbg !300
  %90 = fadd double %89, 1.000000e+00, !dbg !301
  tail call void @llvm.dbg.value(metadata double %90, metadata !189, metadata !DIExpression()), !dbg !197
  br label %103, !dbg !302

91:                                               ; preds = %76
  %92 = fmul double %1, %1, !dbg !303
  %93 = fsub double 1.000000e+00, %92, !dbg !304
  %94 = call double @sqrt(double noundef %93) #9, !dbg !305
  tail call void @llvm.dbg.value(metadata double %94, metadata !192, metadata !DIExpression()), !dbg !306
  %95 = fdiv double %1, %94, !dbg !307
  tail call void @llvm.dbg.value(metadata double %95, metadata !195, metadata !DIExpression()), !dbg !306
  %96 = fmul double %79, %95, !dbg !308
  %97 = fsub double 1.000000e+00, %96, !dbg !309
  %98 = fmul double %97, 1.250000e-01, !dbg !310
  %99 = fmul double %79, %79, !dbg !311
  %100 = fdiv double %98, %99, !dbg !312
  tail call void @llvm.dbg.value(metadata double %100, metadata !190, metadata !DIExpression()), !dbg !197
  %101 = fdiv double %79, %94, !dbg !313
  %102 = call double @sqrt(double noundef %101) #9, !dbg !314
  tail call void @llvm.dbg.value(metadata double %102, metadata !189, metadata !DIExpression()), !dbg !197
  br label %103

103:                                              ; preds = %91, %84
  %104 = phi double [ %90, %84 ], [ %102, %91 ], !dbg !315
  %105 = phi double [ %88, %84 ], [ %100, %91 ], !dbg !315
  tail call void @llvm.dbg.value(metadata double %105, metadata !190, metadata !DIExpression()), !dbg !197
  tail call void @llvm.dbg.value(metadata double %104, metadata !189, metadata !DIExpression()), !dbg !197
  %106 = fdiv double %79, %78, !dbg !316
  %107 = fmul double %106, %105, !dbg !317
  tail call void @llvm.dbg.value(metadata double %107, metadata !191, metadata !DIExpression()), !dbg !197
  %108 = load double, ptr %4, align 8, !dbg !318, !tbaa !109
  %109 = load double, ptr %5, align 8, !dbg !319, !tbaa !109
  %110 = fmul double %107, %109, !dbg !320
  %111 = fadd double %108, %110, !dbg !321
  %112 = fmul double %104, %111, !dbg !322
  store double %112, ptr %2, align 8, !dbg !323, !tbaa !109
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !324
  %114 = load double, ptr %113, align 8, !dbg !324, !tbaa !116
  %115 = call double @llvm.fabs.f64(double %107), !dbg !325
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !326
  %117 = load double, ptr %116, align 8, !dbg !326, !tbaa !116
  %118 = fmul double %115, %117, !dbg !327
  %119 = fadd double %114, %118, !dbg !328
  %120 = fmul double %104, %119, !dbg !329
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !330
  %122 = call double @llvm.fabs.f64(double %112), !dbg !331
  %123 = fmul double %122, 0x3E50000000000000, !dbg !332
  %124 = fadd double %123, %120, !dbg !333
  store double %124, ptr %121, align 8, !dbg !333, !tbaa !116
  %125 = icmp eq i32 %81, 0, !dbg !334
  %126 = select i1 %125, i32 %82, i32 %81, !dbg !334
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !335
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !335
  br label %127

127:                                              ; preds = %11, %14, %16, %18, %29, %33, %69, %103
  %128 = phi i32 [ 1, %11 ], [ 0, %14 ], [ 0, %16 ], [ 0, %18 ], [ 0, %29 ], [ 0, %33 ], [ 0, %69 ], [ %126, %103 ], !dbg !336
  ret i32 %128, !dbg !337
}

declare !dbg !338 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !343 double @acos(double noundef) local_unnamed_addr #5

declare !dbg !347 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !351 i32 @gsl_sf_bessel_Jn_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !354 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Pl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !355 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !360, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata double %1, metadata !361, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !371
  %4 = icmp slt i32 %0, 0, !dbg !372
  %5 = fcmp olt double %1, -1.000000e+00
  %6 = or i1 %4, %5, !dbg !373
  %7 = fcmp ogt double %1, 1.000000e+00
  %8 = or i1 %7, %6, !dbg !373
  br i1 %8, label %9, label %10, !dbg !373

9:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 1) #9, !dbg !374
  br label %38, !dbg !374

10:                                               ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !377, !tbaa !378
  switch i32 %0, label %13 [
    i32 0, label %38
    i32 1, label %11
  ], !dbg !379

11:                                               ; preds = %10
  %12 = getelementptr inbounds double, ptr %2, i64 1, !dbg !380
  store double %1, ptr %12, align 8, !dbg !382, !tbaa !378
  br label %38, !dbg !383

13:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !363, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %1, metadata !368, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %1, metadata !369, metadata !DIExpression()), !dbg !384
  %14 = getelementptr inbounds double, ptr %2, i64 1, !dbg !385
  store double %1, ptr %14, align 8, !dbg !386, !tbaa !378
  tail call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()), !dbg !384
  %15 = add nuw i32 %0, 1, !dbg !387
  %16 = zext i32 %15 to i64, !dbg !389
  br label %17, !dbg !387

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 2, %13 ], [ %36, %17 ]
  %19 = phi double [ %1, %13 ], [ %34, %17 ]
  %20 = phi double [ 1.000000e+00, %13 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !370, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %19, metadata !368, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %20, metadata !363, metadata !DIExpression()), !dbg !384
  %21 = trunc i64 %18 to i32, !dbg !391
  %22 = shl i32 %21, 1, !dbg !391
  %23 = add i32 %22, -1, !dbg !391
  %24 = sitofp i32 %23 to double, !dbg !391
  %25 = fmul double %24, %1, !dbg !393
  %26 = fmul double %19, %25, !dbg !394
  %27 = trunc i64 %18 to i32, !dbg !395
  %28 = add i32 %27, -1, !dbg !395
  %29 = sitofp i32 %28 to double, !dbg !395
  %30 = fmul double %20, %29, !dbg !396
  %31 = fsub double %26, %30, !dbg !397
  %32 = trunc i64 %18 to i32, !dbg !398
  %33 = sitofp i32 %32 to double, !dbg !398
  %34 = fdiv double %31, %33, !dbg !399
  tail call void @llvm.dbg.value(metadata double %34, metadata !369, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %19, metadata !363, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %34, metadata !368, metadata !DIExpression()), !dbg !384
  %35 = getelementptr inbounds double, ptr %2, i64 %18, !dbg !400
  store double %34, ptr %35, align 8, !dbg !401, !tbaa !378
  %36 = add nuw nsw i64 %18, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !370, metadata !DIExpression()), !dbg !384
  %37 = icmp eq i64 %36, %16, !dbg !389
  br i1 %37, label %38, label %17, !dbg !387, !llvm.loop !403

38:                                               ; preds = %17, %10, %9, %11
  %39 = phi i32 [ 1, %9 ], [ 0, %11 ], [ %0, %10 ], [ 0, %17 ], !dbg !405
  ret i32 %39, !dbg !406
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Pl_deriv_array(i32 noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !407 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !411, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %1, metadata !412, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata i32 %0, metadata !360, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata double %1, metadata !361, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !436
  %5 = icmp slt i32 %0, 0, !dbg !438
  %6 = fcmp olt double %1, -1.000000e+00
  %7 = or i1 %5, %6, !dbg !439
  %8 = fcmp ogt double %1, 1.000000e+00
  %9 = or i1 %8, %7, !dbg !439
  br i1 %9, label %10, label %11, !dbg !439

10:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 1) #9, !dbg !440
  br label %38, !dbg !440

11:                                               ; preds = %4
  store double 1.000000e+00, ptr %2, align 8, !dbg !441, !tbaa !378
  switch i32 %0, label %15 [
    i32 0, label %12
    i32 1, label %13
  ], !dbg !442

12:                                               ; preds = %11
  store double 0.000000e+00, ptr %3, align 8, !dbg !443, !tbaa !378
  br label %49, !dbg !445

13:                                               ; preds = %11
  %14 = getelementptr inbounds double, ptr %2, i64 1, !dbg !446
  store double %1, ptr %14, align 8, !dbg !447, !tbaa !378
  store double 0.000000e+00, ptr %3, align 8, !dbg !443, !tbaa !378
  br label %43, !dbg !448

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !363, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %1, metadata !368, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %1, metadata !369, metadata !DIExpression()), !dbg !449
  %16 = getelementptr inbounds double, ptr %2, i64 1, !dbg !450
  store double %1, ptr %16, align 8, !dbg !451, !tbaa !378
  call void @llvm.dbg.value(metadata i32 2, metadata !370, metadata !DIExpression()), !dbg !449
  %17 = add nuw i32 %0, 1, !dbg !452
  %18 = zext i32 %17 to i64, !dbg !453
  br label %19, !dbg !452

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 2, %15 ], [ %36, %19 ]
  %21 = phi double [ %1, %15 ], [ %34, %19 ]
  %22 = phi double [ 1.000000e+00, %15 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !370, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %21, metadata !368, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %22, metadata !363, metadata !DIExpression()), !dbg !449
  %23 = trunc i64 %20 to i32, !dbg !454
  %24 = shl i32 %23, 1, !dbg !454
  %25 = add i32 %24, -1, !dbg !454
  %26 = sitofp i32 %25 to double, !dbg !454
  %27 = fmul double %26, %1, !dbg !455
  %28 = fmul double %21, %27, !dbg !456
  %29 = add i32 %23, -1, !dbg !457
  %30 = sitofp i32 %29 to double, !dbg !457
  %31 = fmul double %22, %30, !dbg !458
  %32 = fsub double %28, %31, !dbg !459
  %33 = sitofp i32 %23 to double, !dbg !460
  %34 = fdiv double %32, %33, !dbg !461
  call void @llvm.dbg.value(metadata double %34, metadata !369, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %21, metadata !363, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %34, metadata !368, metadata !DIExpression()), !dbg !449
  %35 = getelementptr inbounds double, ptr %2, i64 %20, !dbg !462
  store double %34, ptr %35, align 8, !dbg !463, !tbaa !378
  %36 = add nuw nsw i64 %20, 1, !dbg !464
  call void @llvm.dbg.value(metadata i64 %36, metadata !370, metadata !DIExpression()), !dbg !449
  %37 = icmp eq i64 %36, %18, !dbg !453
  br i1 %37, label %38, label %19, !dbg !452, !llvm.loop !465

38:                                               ; preds = %19, %10
  %39 = phi i32 [ 1, %10 ], [ 0, %19 ], !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !415, metadata !DIExpression()), !dbg !435
  %40 = icmp sgt i32 %0, -1, !dbg !468
  br i1 %40, label %41, label %46, !dbg !469

41:                                               ; preds = %38
  store double 0.000000e+00, ptr %3, align 8, !dbg !443, !tbaa !378
  %42 = icmp eq i32 %0, 0, !dbg !470
  br i1 %42, label %46, label %43, !dbg !448

43:                                               ; preds = %13, %41
  %44 = phi i32 [ 0, %13 ], [ %39, %41 ]
  %45 = getelementptr inbounds double, ptr %3, i64 1, !dbg !472
  store double 1.000000e+00, ptr %45, align 8, !dbg !473, !tbaa !378
  br label %46, !dbg !472

46:                                               ; preds = %38, %43, %41
  %47 = phi i32 [ %44, %43 ], [ %39, %41 ], [ %39, %38 ]
  %48 = icmp eq i32 %47, 0, !dbg !474
  br i1 %48, label %49, label %205, !dbg !445

49:                                               ; preds = %12, %46
  %50 = fadd double %1, -1.000000e+00, !dbg !475
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !476
  %52 = sitofp i32 %0 to double, !dbg !477
  %53 = fadd double %52, 1.000000e+00, !dbg !478
  %54 = fmul double %53, %51, !dbg !479
  %55 = fmul double %53, %54, !dbg !480
  %56 = fcmp olt double %55, 0x3E50000000000000, !dbg !481
  br i1 %56, label %57, label %100, !dbg !482

57:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 2, metadata !416, metadata !DIExpression()), !dbg !483
  %58 = icmp slt i32 %0, 2, !dbg !484
  br i1 %58, label %205, label %59, !dbg !485

59:                                               ; preds = %57
  %60 = fsub double 1.000000e+00, %1
  %61 = fmul double %60, 2.500000e-01
  %62 = add nuw i32 %0, 1, !dbg !485
  %63 = zext i32 %62 to i64, !dbg !484
  %64 = and i64 %63, 1, !dbg !485
  %65 = icmp eq i32 %62, 3, !dbg !485
  br i1 %65, label %173, label %66, !dbg !485

66:                                               ; preds = %59
  %67 = and i64 %63, 4294967294, !dbg !485
  %68 = add nsw i64 %67, -4
  br label %69, !dbg !485

69:                                               ; preds = %69, %66
  %70 = phi i64 [ 2, %66 ], [ %97, %69 ]
  %71 = phi i64 [ 0, %66 ], [ %98, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !416, metadata !DIExpression()), !dbg !483
  %72 = trunc i64 %70 to i32, !dbg !486
  %73 = sitofp i32 %72 to double, !dbg !486
  %74 = fmul double %73, 5.000000e-01, !dbg !487
  %75 = fadd double %73, 1.000000e+00, !dbg !488
  %76 = fmul double %74, %75, !dbg !489
  tail call void @llvm.dbg.value(metadata double %76, metadata !419, metadata !DIExpression()), !dbg !490
  %77 = fadd double %73, 2.000000e+00, !dbg !491
  %78 = fmul double %61, %77, !dbg !492
  %79 = fadd double %73, -1.000000e+00, !dbg !493
  %80 = fmul double %79, %78, !dbg !494
  %81 = fsub double 1.000000e+00, %80, !dbg !495
  %82 = fmul double %76, %81, !dbg !496
  %83 = getelementptr inbounds double, ptr %3, i64 %70, !dbg !497
  store double %82, ptr %83, align 8, !dbg !498, !tbaa !378
  %84 = or disjoint i64 %70, 1, !dbg !499
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !416, metadata !DIExpression()), !dbg !483
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !416, metadata !DIExpression()), !dbg !483
  %85 = trunc i64 %84 to i32, !dbg !486
  %86 = sitofp i32 %85 to double, !dbg !486
  %87 = fmul double %86, 5.000000e-01, !dbg !487
  %88 = fadd double %86, 1.000000e+00, !dbg !488
  %89 = fmul double %87, %88, !dbg !489
  tail call void @llvm.dbg.value(metadata double %89, metadata !419, metadata !DIExpression()), !dbg !490
  %90 = fadd double %86, 2.000000e+00, !dbg !491
  %91 = fmul double %61, %90, !dbg !492
  %92 = fadd double %86, -1.000000e+00, !dbg !493
  %93 = fmul double %92, %91, !dbg !494
  %94 = fsub double 1.000000e+00, %93, !dbg !495
  %95 = fmul double %89, %94, !dbg !496
  %96 = getelementptr inbounds double, ptr %3, i64 %84, !dbg !497
  store double %95, ptr %96, align 8, !dbg !498, !tbaa !378
  %97 = add nuw nsw i64 %70, 2, !dbg !499
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !416, metadata !DIExpression()), !dbg !483
  %98 = add i64 %71, 2, !dbg !485
  %99 = icmp eq i64 %71, %68, !dbg !485
  br i1 %99, label %173, label %69, !dbg !485, !llvm.loop !500

100:                                              ; preds = %49
  %101 = fadd double %1, 1.000000e+00, !dbg !502
  %102 = tail call double @llvm.fabs.f64(double %101), !dbg !503
  %103 = fmul double %53, %102, !dbg !504
  %104 = fmul double %53, %103, !dbg !505
  %105 = fcmp olt double %104, 0x3E50000000000000, !dbg !506
  %106 = icmp slt i32 %0, 2, !dbg !507
  br i1 %105, label %107, label %131, !dbg !508

107:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata i32 2, metadata !416, metadata !DIExpression()), !dbg !483
  br i1 %106, label %205, label %108, !dbg !509

108:                                              ; preds = %107
  %109 = fmul double %101, 2.500000e-01
  %110 = add nuw i32 %0, 1, !dbg !509
  %111 = zext i32 %110 to i64, !dbg !510
  br label %112, !dbg !509

112:                                              ; preds = %108, %112
  %113 = phi i64 [ 2, %108 ], [ %129, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !416, metadata !DIExpression()), !dbg !483
  %114 = trunc i64 %113 to i32, !dbg !511
  %115 = and i32 %114, 1, !dbg !511
  %116 = icmp eq i32 %115, 0, !dbg !511
  tail call void @llvm.dbg.value(metadata double poison, metadata !425, metadata !DIExpression()), !dbg !512
  %117 = select i1 %116, double -5.000000e-01, double 5.000000e-01, !dbg !513
  %118 = sitofp i32 %114 to double, !dbg !514
  %119 = fmul double %117, %118, !dbg !515
  %120 = fadd double %118, 1.000000e+00, !dbg !516
  %121 = fmul double %120, %119, !dbg !517
  tail call void @llvm.dbg.value(metadata double %121, metadata !431, metadata !DIExpression()), !dbg !512
  %122 = fadd double %118, 2.000000e+00, !dbg !518
  %123 = fmul double %109, %122, !dbg !519
  %124 = fadd double %118, -1.000000e+00, !dbg !520
  %125 = fmul double %124, %123, !dbg !521
  %126 = fsub double 1.000000e+00, %125, !dbg !522
  %127 = fmul double %121, %126, !dbg !523
  %128 = getelementptr inbounds double, ptr %3, i64 %113, !dbg !524
  store double %127, ptr %128, align 8, !dbg !525, !tbaa !378
  %129 = add nuw nsw i64 %113, 1, !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !416, metadata !DIExpression()), !dbg !483
  %130 = icmp eq i64 %129, %111, !dbg !510
  br i1 %130, label %205, label %112, !dbg !509, !llvm.loop !527

131:                                              ; preds = %100
  tail call void @llvm.dbg.value(metadata double %101, metadata !432, metadata !DIExpression()), !dbg !529
  tail call void @llvm.dbg.value(metadata double poison, metadata !434, metadata !DIExpression()), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 2, metadata !416, metadata !DIExpression()), !dbg !483
  br i1 %106, label %205, label %132, !dbg !530

132:                                              ; preds = %131
  %133 = fsub double 1.000000e+00, %1, !dbg !532
  tail call void @llvm.dbg.value(metadata double %133, metadata !434, metadata !DIExpression()), !dbg !529
  %134 = fmul double %101, %133
  %135 = add nuw i32 %0, 1, !dbg !530
  %136 = zext i32 %135 to i64, !dbg !533
  %137 = and i64 %136, 1, !dbg !530
  %138 = icmp eq i32 %135, 3, !dbg !530
  br i1 %138, label %189, label %139, !dbg !530

139:                                              ; preds = %132
  %140 = and i64 %136, 4294967294, !dbg !530
  %141 = add nsw i64 %140, -4
  br label %142, !dbg !530

142:                                              ; preds = %142, %139
  %143 = phi i64 [ 2, %139 ], [ %170, %142 ]
  %144 = phi i64 [ 0, %139 ], [ %171, %142 ]
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !416, metadata !DIExpression()), !dbg !483
  %145 = trunc i64 %143 to i32, !dbg !535
  %146 = sub i32 0, %145, !dbg !535
  %147 = sitofp i32 %146 to double, !dbg !535
  %148 = getelementptr inbounds double, ptr %2, i64 %143, !dbg !537
  %149 = load double, ptr %148, align 8, !dbg !537, !tbaa !378
  %150 = fmul double %149, %1, !dbg !538
  %151 = getelementptr double, ptr %148, i64 -1, !dbg !539
  %152 = load double, ptr %151, align 8, !dbg !539, !tbaa !378
  %153 = fsub double %150, %152, !dbg !540
  %154 = fmul double %153, %147, !dbg !541
  %155 = fdiv double %154, %134, !dbg !542
  %156 = getelementptr inbounds double, ptr %3, i64 %143, !dbg !543
  store double %155, ptr %156, align 8, !dbg !544, !tbaa !378
  %157 = or disjoint i64 %143, 1, !dbg !545
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !416, metadata !DIExpression()), !dbg !483
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !416, metadata !DIExpression()), !dbg !483
  %158 = trunc i64 %157 to i32, !dbg !535
  %159 = sub nsw i32 0, %158, !dbg !535
  %160 = sitofp i32 %159 to double, !dbg !535
  %161 = getelementptr inbounds double, ptr %2, i64 %157, !dbg !537
  %162 = load double, ptr %161, align 8, !dbg !537, !tbaa !378
  %163 = fmul double %162, %1, !dbg !538
  %164 = getelementptr double, ptr %161, i64 -1, !dbg !539
  %165 = load double, ptr %164, align 8, !dbg !539, !tbaa !378
  %166 = fsub double %163, %165, !dbg !540
  %167 = fmul double %166, %160, !dbg !541
  %168 = fdiv double %167, %134, !dbg !542
  %169 = getelementptr inbounds double, ptr %3, i64 %157, !dbg !543
  store double %168, ptr %169, align 8, !dbg !544, !tbaa !378
  %170 = add nuw nsw i64 %143, 2, !dbg !545
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !416, metadata !DIExpression()), !dbg !483
  %171 = add i64 %144, 2, !dbg !530
  %172 = icmp eq i64 %144, %141, !dbg !530
  br i1 %172, label %189, label %142, !dbg !530, !llvm.loop !546

173:                                              ; preds = %69, %59
  %174 = phi i64 [ 2, %59 ], [ %97, %69 ]
  %175 = icmp eq i64 %64, 0, !dbg !485
  br i1 %175, label %205, label %176, !dbg !485

176:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !416, metadata !DIExpression()), !dbg !483
  %177 = trunc i64 %174 to i32, !dbg !486
  %178 = sitofp i32 %177 to double, !dbg !486
  %179 = fmul double %178, 5.000000e-01, !dbg !487
  %180 = fadd double %178, 1.000000e+00, !dbg !488
  %181 = fmul double %179, %180, !dbg !489
  tail call void @llvm.dbg.value(metadata double %181, metadata !419, metadata !DIExpression()), !dbg !490
  %182 = fadd double %178, 2.000000e+00, !dbg !491
  %183 = fmul double %61, %182, !dbg !492
  %184 = fadd double %178, -1.000000e+00, !dbg !493
  %185 = fmul double %184, %183, !dbg !494
  %186 = fsub double 1.000000e+00, %185, !dbg !495
  %187 = fmul double %181, %186, !dbg !496
  %188 = getelementptr inbounds double, ptr %3, i64 %174, !dbg !497
  store double %187, ptr %188, align 8, !dbg !498, !tbaa !378
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !416, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !483
  br label %205, !dbg !548

189:                                              ; preds = %142, %132
  %190 = phi i64 [ 2, %132 ], [ %170, %142 ]
  %191 = icmp eq i64 %137, 0, !dbg !530
  br i1 %191, label %205, label %192, !dbg !530

192:                                              ; preds = %189
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !416, metadata !DIExpression()), !dbg !483
  %193 = trunc i64 %190 to i32, !dbg !535
  %194 = sub i32 0, %193, !dbg !535
  %195 = sitofp i32 %194 to double, !dbg !535
  %196 = getelementptr inbounds double, ptr %2, i64 %190, !dbg !537
  %197 = load double, ptr %196, align 8, !dbg !537, !tbaa !378
  %198 = fmul double %197, %1, !dbg !538
  %199 = getelementptr double, ptr %196, i64 -1, !dbg !539
  %200 = load double, ptr %199, align 8, !dbg !539, !tbaa !378
  %201 = fsub double %198, %200, !dbg !540
  %202 = fmul double %201, %195, !dbg !541
  %203 = fdiv double %202, %134, !dbg !542
  %204 = getelementptr inbounds double, ptr %3, i64 %190, !dbg !543
  store double %203, ptr %204, align 8, !dbg !544, !tbaa !378
  tail call void @llvm.dbg.value(metadata i64 %190, metadata !416, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !483
  br label %205, !dbg !548

205:                                              ; preds = %192, %189, %112, %176, %173, %131, %107, %57, %46
  %206 = phi i32 [ 1, %46 ], [ 0, %57 ], [ 0, %107 ], [ 0, %131 ], [ 0, %173 ], [ 0, %176 ], [ 0, %112 ], [ 0, %189 ], [ 0, %192 ], !dbg !549
  ret i32 %206, !dbg !548
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Plm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !550 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !554, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !555, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata double %2, metadata !556, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !557, metadata !DIExpression()), !dbg !576
  %5 = sub nsw i32 %0, %1, !dbg !577
  %6 = sitofp i32 %5 to double, !dbg !578
  tail call void @llvm.dbg.value(metadata double %6, metadata !558, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata double poison, metadata !559, metadata !DIExpression()), !dbg !576
  %7 = icmp eq i32 %0, %1, !dbg !579
  br i1 %7, label %19, label %8, !dbg !580

8:                                                ; preds = %4
  %9 = add nsw i32 %1, %0, !dbg !581
  %10 = sitofp i32 %9 to double, !dbg !582
  tail call void @llvm.dbg.value(metadata double %10, metadata !559, metadata !DIExpression()), !dbg !576
  %11 = fmul double %6, 5.000000e-01, !dbg !583
  %12 = tail call double @log(double noundef %6) #9, !dbg !584
  %13 = fadd double %12, -1.000000e+00, !dbg !585
  %14 = fmul double %11, %13, !dbg !586
  tail call void @llvm.dbg.value(metadata double %14, metadata !560, metadata !DIExpression()), !dbg !576
  %15 = fmul double %10, 5.000000e-01, !dbg !587
  %16 = tail call double @log(double noundef %10) #9, !dbg !588
  %17 = fadd double %16, -1.000000e+00, !dbg !589
  %18 = fmul double %15, %17, !dbg !590
  br label %19, !dbg !591

19:                                               ; preds = %4, %8
  %20 = phi double [ %14, %8 ], [ 0.000000e+00, %4 ]
  %21 = phi double [ %18, %8 ], [ 0.000000e+00, %4 ], !dbg !591
  tail call void @llvm.dbg.value(metadata double %21, metadata !561, metadata !DIExpression()), !dbg !576
  %22 = sitofp i32 %0 to double, !dbg !592
  %23 = fmul double %22, 2.000000e+00, !dbg !593
  %24 = fadd double %23, 1.000000e+00, !dbg !594
  %25 = tail call double @log(double noundef %24) #9, !dbg !595
  %26 = fmul double %25, 5.000000e-01, !dbg !596
  %27 = fadd double %20, %26, !dbg !597
  %28 = fsub double %27, %21, !dbg !598
  tail call void @llvm.dbg.value(metadata double %28, metadata !562, metadata !DIExpression()), !dbg !576
  %29 = icmp slt i32 %1, 0, !dbg !599
  br i1 %29, label %36, label %30, !dbg !600

30:                                               ; preds = %19
  %31 = icmp slt i32 %0, %1, !dbg !601
  %32 = fcmp olt double %2, -1.000000e+00
  %33 = or i1 %31, %32, !dbg !602
  %34 = fcmp ogt double %2, 1.000000e+00
  %35 = or i1 %34, %33, !dbg !602
  br i1 %35, label %36, label %38, !dbg !602

36:                                               ; preds = %19, %30
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !603, !tbaa !109
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !603
  store double 0x7FF8000000000000, ptr %37, align 8, !dbg !603, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 1) #9, !dbg !606
  br label %186, !dbg !606

38:                                               ; preds = %30
  %39 = fcmp olt double %28, 0xC085D32BDD7ABCD2, !dbg !608
  br i1 %39, label %40, label %42, !dbg !609

40:                                               ; preds = %38
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !610, !tbaa !109
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !610
  store double 0x7FF0000000000000, ptr %41, align 8, !dbg !610, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 16) #9, !dbg !613
  br label %186, !dbg !613

42:                                               ; preds = %38
  %43 = tail call double @llvm.fabs.f64(double %2), !dbg !615
  %44 = fsub double 1.000000e+00, %43, !dbg !616
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !617
  %46 = fadd double %45, 0x3CB0000000000000, !dbg !618
  %47 = fdiv double 1.000000e+00, %46, !dbg !619
  tail call void @llvm.dbg.value(metadata double %47, metadata !563, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %1, metadata !621, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata double %2, metadata !626, metadata !DIExpression()), !dbg !633
  %48 = icmp eq i32 %1, 0, !dbg !635
  br i1 %48, label %96, label %49, !dbg !636

49:                                               ; preds = %42
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !627, metadata !DIExpression()), !dbg !637
  %50 = fsub double 1.000000e+00, %2, !dbg !638
  %51 = tail call double @sqrt(double noundef %50) #9, !dbg !639
  %52 = fadd double %2, 1.000000e+00, !dbg !640
  %53 = tail call double @sqrt(double noundef %52) #9, !dbg !641
  %54 = fmul double %51, %53, !dbg !642
  call void @llvm.dbg.value(metadata double %54, metadata !630, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 1, metadata !632, metadata !DIExpression()), !dbg !637
  %55 = and i32 %1, 3, !dbg !643
  %56 = icmp ult i32 %1, 4, !dbg !643
  br i1 %56, label %81, label %57, !dbg !643

57:                                               ; preds = %49
  %58 = and i32 %1, 2147483644, !dbg !643
  br label %59, !dbg !643

59:                                               ; preds = %59, %57
  %60 = phi double [ 1.000000e+00, %57 ], [ %78, %59 ]
  %61 = phi double [ 1.000000e+00, %57 ], [ %77, %59 ]
  %62 = phi i32 [ 0, %57 ], [ %79, %59 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %60, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %61, metadata !627, metadata !DIExpression()), !dbg !637
  %63 = fneg double %60, !dbg !645
  %64 = fmul double %54, %63, !dbg !648
  %65 = fmul double %61, %64, !dbg !649
  call void @llvm.dbg.value(metadata double %65, metadata !627, metadata !DIExpression()), !dbg !637
  %66 = fadd double %60, 2.000000e+00, !dbg !650
  call void @llvm.dbg.value(metadata double %66, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata double %66, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %65, metadata !627, metadata !DIExpression()), !dbg !637
  %67 = fneg double %66, !dbg !645
  %68 = fmul double %54, %67, !dbg !648
  %69 = fmul double %65, %68, !dbg !649
  call void @llvm.dbg.value(metadata double %69, metadata !627, metadata !DIExpression()), !dbg !637
  %70 = fadd double %66, 2.000000e+00, !dbg !650
  call void @llvm.dbg.value(metadata double %70, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata double %70, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %69, metadata !627, metadata !DIExpression()), !dbg !637
  %71 = fneg double %70, !dbg !645
  %72 = fmul double %54, %71, !dbg !648
  %73 = fmul double %69, %72, !dbg !649
  call void @llvm.dbg.value(metadata double %73, metadata !627, metadata !DIExpression()), !dbg !637
  %74 = fadd double %70, 2.000000e+00, !dbg !650
  call void @llvm.dbg.value(metadata double %74, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata double %74, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %73, metadata !627, metadata !DIExpression()), !dbg !637
  %75 = fneg double %74, !dbg !645
  %76 = fmul double %54, %75, !dbg !648
  %77 = fmul double %73, %76, !dbg !649
  call void @llvm.dbg.value(metadata double %77, metadata !627, metadata !DIExpression()), !dbg !637
  %78 = fadd double %74, 2.000000e+00, !dbg !650
  call void @llvm.dbg.value(metadata double %78, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !637
  %79 = add i32 %62, 4, !dbg !643
  %80 = icmp eq i32 %79, %58, !dbg !643
  br i1 %80, label %81, label %59, !dbg !643, !llvm.loop !651

81:                                               ; preds = %59, %49
  %82 = phi double [ undef, %49 ], [ %77, %59 ]
  %83 = phi double [ 1.000000e+00, %49 ], [ %78, %59 ]
  %84 = phi double [ 1.000000e+00, %49 ], [ %77, %59 ]
  %85 = icmp eq i32 %55, 0, !dbg !643
  br i1 %85, label %96, label %86, !dbg !643

86:                                               ; preds = %81, %86
  %87 = phi double [ %93, %86 ], [ %83, %81 ]
  %88 = phi double [ %92, %86 ], [ %84, %81 ]
  %89 = phi i32 [ %94, %86 ], [ 0, %81 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %87, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %88, metadata !627, metadata !DIExpression()), !dbg !637
  %90 = fneg double %87, !dbg !645
  %91 = fmul double %54, %90, !dbg !648
  %92 = fmul double %88, %91, !dbg !649
  call void @llvm.dbg.value(metadata double %92, metadata !627, metadata !DIExpression()), !dbg !637
  %93 = fadd double %87, 2.000000e+00, !dbg !650
  call void @llvm.dbg.value(metadata double %93, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 poison, metadata !632, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !637
  %94 = add i32 %89, 1, !dbg !643
  %95 = icmp eq i32 %94, %55, !dbg !643
  br i1 %95, label %96, label %86, !dbg !643, !llvm.loop !653

96:                                               ; preds = %81, %86, %42
  %97 = phi double [ 1.000000e+00, %42 ], [ %82, %81 ], [ %92, %86 ], !dbg !655
  tail call void @llvm.dbg.value(metadata double %97, metadata !567, metadata !DIExpression()), !dbg !620
  %98 = shl nuw nsw i32 %1, 1, !dbg !656
  %99 = or disjoint i32 %98, 1, !dbg !657
  %100 = sitofp i32 %99 to double, !dbg !658
  %101 = fmul double %100, %2, !dbg !659
  %102 = fmul double %101, %97, !dbg !660
  tail call void @llvm.dbg.value(metadata double %102, metadata !568, metadata !DIExpression()), !dbg !620
  br i1 %7, label %103, label %109, !dbg !661

103:                                              ; preds = %96
  store double %97, ptr %3, align 8, !dbg !662, !tbaa !109
  %104 = fmul double %47, 2.000000e+00, !dbg !664
  %105 = fmul double %104, 0x3CB0000000000000, !dbg !665
  %106 = tail call double @llvm.fabs.f64(double %97), !dbg !666
  %107 = fmul double %105, %106, !dbg !667
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !668
  store double %107, ptr %108, align 8, !dbg !669, !tbaa !116
  br label %186, !dbg !670

109:                                              ; preds = %96
  %110 = add nuw nsw i32 %1, 1, !dbg !671
  %111 = icmp eq i32 %110, %0, !dbg !672
  br i1 %111, label %112, label %118, !dbg !673

112:                                              ; preds = %109
  store double %102, ptr %3, align 8, !dbg !674, !tbaa !109
  %113 = fmul double %47, 2.000000e+00, !dbg !676
  %114 = fmul double %113, 0x3CB0000000000000, !dbg !677
  %115 = tail call double @llvm.fabs.f64(double %102), !dbg !678
  %116 = fmul double %114, %115, !dbg !679
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !680
  store double %116, ptr %117, align 8, !dbg !681, !tbaa !116
  br label %186, !dbg !682

118:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata double %97, metadata !569, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %102, metadata !573, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !574, metadata !DIExpression()), !dbg !683
  %119 = add nuw nsw i32 %1, 2, !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !575, metadata !DIExpression()), !dbg !683
  %120 = icmp sgt i32 %119, %0, !dbg !686
  br i1 %120, label %177, label %121, !dbg !688

121:                                              ; preds = %118
  %122 = add nsw i32 %1, -1
  %123 = xor i32 %1, -1, !dbg !688
  %124 = add i32 %123, %0, !dbg !688
  %125 = add i32 %0, -2, !dbg !688
  %126 = and i32 %124, 1, !dbg !688
  %127 = icmp eq i32 %126, 0, !dbg !688
  br i1 %127, label %140, label %128, !dbg !688

128:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !575, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %102, metadata !573, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %97, metadata !569, metadata !DIExpression()), !dbg !683
  %129 = shl nuw nsw i32 %119, 1, !dbg !689
  %130 = add nsw i32 %129, -1, !dbg !691
  %131 = sitofp i32 %130 to double, !dbg !692
  %132 = fmul double %131, %2, !dbg !693
  %133 = fmul double %102, %132, !dbg !694
  %134 = add i32 %122, %119, !dbg !695
  %135 = sitofp i32 %134 to double, !dbg !696
  %136 = fmul double %97, %135, !dbg !697
  %137 = fsub double %133, %136, !dbg !698
  %138 = fmul double %137, 5.000000e-01, !dbg !699
  tail call void @llvm.dbg.value(metadata double %138, metadata !574, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %102, metadata !569, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %138, metadata !573, metadata !DIExpression()), !dbg !683
  %139 = add nuw i32 %1, 3, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %139, metadata !575, metadata !DIExpression()), !dbg !683
  br label %140, !dbg !688

140:                                              ; preds = %128, %121
  %141 = phi double [ undef, %121 ], [ %138, %128 ]
  %142 = phi i32 [ %119, %121 ], [ %139, %128 ]
  %143 = phi double [ %102, %121 ], [ %138, %128 ]
  %144 = phi double [ %97, %121 ], [ %102, %128 ]
  %145 = icmp eq i32 %125, %1, !dbg !688
  br i1 %145, label %177, label %146, !dbg !688

146:                                              ; preds = %140, %146
  %147 = phi i32 [ %175, %146 ], [ %142, %140 ]
  %148 = phi double [ %174, %146 ], [ %143, %140 ]
  %149 = phi double [ %161, %146 ], [ %144, %140 ]
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !575, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %148, metadata !573, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %149, metadata !569, metadata !DIExpression()), !dbg !683
  %150 = shl nuw nsw i32 %147, 1, !dbg !689
  %151 = add nsw i32 %150, -1, !dbg !691
  %152 = sitofp i32 %151 to double, !dbg !692
  %153 = fmul double %152, %2, !dbg !693
  %154 = fmul double %148, %153, !dbg !694
  %155 = add i32 %122, %147, !dbg !695
  %156 = sitofp i32 %155 to double, !dbg !696
  %157 = fmul double %149, %156, !dbg !697
  %158 = fsub double %154, %157, !dbg !698
  %159 = sub nsw i32 %147, %1, !dbg !701
  %160 = sitofp i32 %159 to double, !dbg !702
  %161 = fdiv double %158, %160, !dbg !699
  tail call void @llvm.dbg.value(metadata double %161, metadata !574, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %148, metadata !569, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %161, metadata !573, metadata !DIExpression()), !dbg !683
  %162 = add i32 %147, 1, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !575, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 %162, metadata !575, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %161, metadata !573, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %148, metadata !569, metadata !DIExpression()), !dbg !683
  %163 = shl nuw nsw i32 %162, 1, !dbg !689
  %164 = add nsw i32 %163, -1, !dbg !691
  %165 = sitofp i32 %164 to double, !dbg !692
  %166 = fmul double %165, %2, !dbg !693
  %167 = fmul double %161, %166, !dbg !694
  %168 = add i32 %147, %1, !dbg !695
  %169 = sitofp i32 %168 to double, !dbg !696
  %170 = fmul double %148, %169, !dbg !697
  %171 = fsub double %167, %170, !dbg !698
  %172 = sub nsw i32 %162, %1, !dbg !701
  %173 = sitofp i32 %172 to double, !dbg !702
  %174 = fdiv double %171, %173, !dbg !699
  tail call void @llvm.dbg.value(metadata double %174, metadata !574, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %161, metadata !569, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %174, metadata !573, metadata !DIExpression()), !dbg !683
  %175 = add i32 %147, 2, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %175, metadata !575, metadata !DIExpression()), !dbg !683
  %176 = icmp eq i32 %162, %0, !dbg !686
  br i1 %176, label %177, label %146, !dbg !688, !llvm.loop !703

177:                                              ; preds = %140, %146, %118
  %178 = phi double [ 0.000000e+00, %118 ], [ %141, %140 ], [ %174, %146 ], !dbg !683
  store double %178, ptr %3, align 8, !dbg !705, !tbaa !109
  %179 = fmul double %6, 5.000000e-01, !dbg !706
  %180 = fadd double %179, 1.000000e+00, !dbg !707
  %181 = fmul double %180, %47, !dbg !708
  %182 = fmul double %181, 0x3CB0000000000000, !dbg !709
  %183 = tail call double @llvm.fabs.f64(double %178), !dbg !710
  %184 = fmul double %182, %183, !dbg !711
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !712
  store double %184, ptr %185, align 8, !dbg !713, !tbaa !116
  br label %186

186:                                              ; preds = %103, %112, %177, %40, %36
  %187 = phi i32 [ 1, %36 ], [ 16, %40 ], [ 0, %177 ], [ 0, %112 ], [ 0, %103 ], !dbg !714
  ret i32 %187, !dbg !715
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !716 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_sphPlm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !717 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !758
  call void @llvm.dbg.assign(metadata i1 undef, metadata !725, metadata !DIExpression(), metadata !758, metadata ptr %5, metadata !DIExpression()), !dbg !759
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !760
  call void @llvm.dbg.assign(metadata i1 undef, metadata !731, metadata !DIExpression(), metadata !760, metadata ptr %6, metadata !DIExpression()), !dbg !761
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !762
  call void @llvm.dbg.assign(metadata i1 undef, metadata !734, metadata !DIExpression(), metadata !762, metadata ptr %7, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !722, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata double %2, metadata !723, metadata !DIExpression()), !dbg !763
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !724, metadata !DIExpression()), !dbg !763
  %8 = icmp slt i32 %1, 0, !dbg !764
  br i1 %8, label %15, label %9, !dbg !765

9:                                                ; preds = %4
  %10 = icmp slt i32 %0, %1, !dbg !766
  %11 = fcmp olt double %2, -1.000000e+00
  %12 = or i1 %10, %11, !dbg !767
  %13 = fcmp ogt double %2, 1.000000e+00
  %14 = or i1 %13, %12, !dbg !767
  br i1 %14, label %15, label %17, !dbg !767

15:                                               ; preds = %4, %9
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !768, !tbaa !109
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !768
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !768, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 365, i32 noundef 1) #9, !dbg !771
  br label %164, !dbg !771

17:                                               ; preds = %9
  %18 = icmp eq i32 %1, 0, !dbg !773
  br i1 %18, label %19, label %35, !dbg !774

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !775
  %20 = call i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %5), !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !729, metadata !DIExpression()), !dbg !759
  %21 = sitofp i32 %0 to double, !dbg !777
  %22 = fmul double %21, 2.000000e+00, !dbg !778
  %23 = fadd double %22, 1.000000e+00, !dbg !779
  %24 = fdiv double %23, 0x402921FB54442D18, !dbg !780
  %25 = tail call double @sqrt(double noundef %24) #9, !dbg !781
  tail call void @llvm.dbg.value(metadata double %25, metadata !730, metadata !DIExpression()), !dbg !759
  %26 = load double, ptr %5, align 8, !dbg !782, !tbaa !109
  %27 = fmul double %25, %26, !dbg !783
  store double %27, ptr %3, align 8, !dbg !784, !tbaa !109
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !785
  %29 = load double, ptr %28, align 8, !dbg !785, !tbaa !116
  %30 = fmul double %25, %29, !dbg !786
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !787
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !788
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !789
  %34 = fadd double %30, %33, !dbg !790
  store double %34, ptr %31, align 8, !dbg !790, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !791
  br label %164

35:                                               ; preds = %17
  %36 = fcmp oeq double %2, 1.000000e+00, !dbg !792
  %37 = fcmp oeq double %2, -1.000000e+00
  %38 = or i1 %36, %37, !dbg !793
  br i1 %38, label %39, label %40, !dbg !793

39:                                               ; preds = %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !794
  br label %164, !dbg !796

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !797
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !798
  %41 = and i32 %1, 1, !dbg !799
  %42 = icmp eq i32 %41, 0, !dbg !799
  tail call void @llvm.dbg.value(metadata double poison, metadata !739, metadata !DIExpression()), !dbg !761
  %43 = sitofp i32 %1 to double, !dbg !800
  %44 = fmul double %43, 2.000000e+00, !dbg !801
  %45 = fadd double %44, 3.000000e+00, !dbg !802
  %46 = tail call double @sqrt(double noundef %45) #9, !dbg !803
  %47 = fmul double %46, %2, !dbg !804
  tail call void @llvm.dbg.value(metadata double %47, metadata !740, metadata !DIExpression()), !dbg !761
  %48 = fneg double %2, !dbg !805
  %49 = fmul double %48, %2, !dbg !806
  %50 = call i32 @gsl_sf_log_1plusx_e(double noundef %49, ptr noundef nonnull %6) #9, !dbg !807
  %51 = call i32 @gsl_sf_lnpoch_e(double noundef %43, double noundef 5.000000e-01, ptr noundef nonnull %7) #9, !dbg !808
  %52 = load double, ptr %7, align 8, !dbg !809, !tbaa !109
  %53 = load double, ptr %6, align 8, !dbg !810, !tbaa !109
  %54 = fmul double %53, %43, !dbg !811
  %55 = fadd double %52, %54, !dbg !812
  %56 = fmul double %55, 5.000000e-01, !dbg !813
  %57 = fadd double %56, 0xBFD250D048E7A1BD, !dbg !814
  tail call void @llvm.dbg.value(metadata double %57, metadata !735, metadata !DIExpression()), !dbg !761
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !815
  %59 = load double, ptr %58, align 8, !dbg !815, !tbaa !116
  %60 = call double @llvm.fabs.f64(double %43), !dbg !816
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !817
  %62 = load double, ptr %61, align 8, !dbg !817, !tbaa !116
  %63 = fmul double %60, %62, !dbg !818
  %64 = fadd double %59, %63, !dbg !819
  %65 = fmul double %64, 5.000000e-01, !dbg !820
  %66 = fadd double %65, 0x3C9250D048E7A1BD, !dbg !821
  tail call void @llvm.dbg.value(metadata double %66, metadata !736, metadata !DIExpression()), !dbg !761
  %67 = call double @exp(double noundef %57) #9, !dbg !822
  tail call void @llvm.dbg.value(metadata double %67, metadata !737, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !761
  %68 = call double @sinh(double noundef %66) #9, !dbg !823
  %69 = fadd double %68, 0x3CB0000000000000, !dbg !824
  %70 = fmul double %69, 2.000000e+00, !dbg !825
  %71 = fmul double %67, %70, !dbg !826
  tail call void @llvm.dbg.value(metadata double %71, metadata !737, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !761
  %72 = fdiv double 1.000000e+00, %43, !dbg !827
  %73 = fadd double %72, 2.000000e+00, !dbg !828
  %74 = fdiv double %73, 0x402921FB54442D18, !dbg !829
  %75 = call double @sqrt(double noundef %74) #9, !dbg !830
  tail call void @llvm.dbg.value(metadata double %75, metadata !738, metadata !DIExpression()), !dbg !761
  %76 = fneg double %75, !dbg !831
  %77 = select i1 %42, double %75, double %76, !dbg !831
  %78 = fmul double %67, %77, !dbg !832
  tail call void @llvm.dbg.value(metadata double %78, metadata !741, metadata !DIExpression()), !dbg !761
  %79 = call double @llvm.fabs.f64(double %78), !dbg !833
  %80 = fmul double %79, 0x3CC0000000000000, !dbg !834
  %81 = fmul double %75, %71, !dbg !835
  %82 = fadd double %81, %80, !dbg !836
  tail call void @llvm.dbg.value(metadata double %82, metadata !742, metadata !DIExpression()), !dbg !761
  %83 = fsub double 1.000000e+00, %2, !dbg !837
  %84 = call double @llvm.fabs.f64(double %83), !dbg !838
  %85 = fadd double %84, 0x3CB0000000000000, !dbg !839
  %86 = fdiv double 1.000000e+00, %85, !dbg !840
  %87 = fadd double %86, 1.000000e+00, !dbg !841
  %88 = fmul double %87, %82, !dbg !842
  tail call void @llvm.dbg.value(metadata double %88, metadata !742, metadata !DIExpression()), !dbg !761
  %89 = fmul double %47, %78, !dbg !843
  tail call void @llvm.dbg.value(metadata double %89, metadata !743, metadata !DIExpression()), !dbg !761
  %90 = call double @llvm.fabs.f64(double %47), !dbg !844
  %91 = fmul double %90, %88, !dbg !845
  tail call void @llvm.dbg.value(metadata double %91, metadata !744, metadata !DIExpression()), !dbg !761
  %92 = icmp eq i32 %0, %1, !dbg !846
  br i1 %92, label %93, label %96, !dbg !847

93:                                               ; preds = %40
  store double %78, ptr %3, align 8, !dbg !848, !tbaa !109
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !850
  %95 = fadd double %80, %88, !dbg !851
  store double %95, ptr %94, align 8, !dbg !851, !tbaa !116
  br label %163, !dbg !852

96:                                               ; preds = %40
  %97 = add nuw nsw i32 %1, 1, !dbg !853
  %98 = icmp eq i32 %97, %0, !dbg !854
  br i1 %98, label %99, label %104, !dbg !855

99:                                               ; preds = %96
  store double %89, ptr %3, align 8, !dbg !856, !tbaa !109
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !858
  %101 = call double @llvm.fabs.f64(double %89), !dbg !859
  %102 = fmul double %101, 0x3CC0000000000000, !dbg !860
  %103 = fadd double %102, %91, !dbg !861
  store double %103, ptr %100, align 8, !dbg !861, !tbaa !116
  br label %163, !dbg !862

104:                                              ; preds = %96
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !745, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !749, metadata !DIExpression()), !dbg !863
  %105 = add nuw nsw i32 %1, 2, !dbg !864
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !750, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %78, metadata !741, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %88, metadata !742, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %89, metadata !743, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !749, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !745, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %91, metadata !744, metadata !DIExpression()), !dbg !761
  %106 = icmp ugt i32 %105, %0, !dbg !865
  br i1 %106, label %151, label %107, !dbg !866

107:                                              ; preds = %104, %107
  %108 = phi double [ %110, %107 ], [ %78, %104 ]
  %109 = phi double [ %112, %107 ], [ %88, %104 ]
  %110 = phi double [ %138, %107 ], [ %89, %104 ]
  %111 = phi i32 [ %149, %107 ], [ %105, %104 ]
  %112 = phi double [ %148, %107 ], [ %91, %104 ]
  tail call void @llvm.dbg.value(metadata double %108, metadata !741, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %109, metadata !742, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %110, metadata !743, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !750, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %112, metadata !744, metadata !DIExpression()), !dbg !761
  %113 = sub nsw i32 %111, %1, !dbg !867
  %114 = sitofp i32 %113 to double, !dbg !868
  %115 = add nuw nsw i32 %111, %1, !dbg !869
  %116 = sitofp i32 %115 to double, !dbg !870
  %117 = fdiv double %114, %116, !dbg !871
  tail call void @llvm.dbg.value(metadata double %117, metadata !751, metadata !DIExpression()), !dbg !872
  %118 = fadd double %114, -1.000000e+00, !dbg !873
  %119 = fadd double %116, -1.000000e+00, !dbg !874
  %120 = fdiv double %118, %119, !dbg !875
  tail call void @llvm.dbg.value(metadata double %120, metadata !755, metadata !DIExpression()), !dbg !872
  %121 = sitofp i32 %111 to double, !dbg !876
  %122 = fmul double %121, 2.000000e+00, !dbg !877
  %123 = fadd double %122, 1.000000e+00, !dbg !878
  %124 = fmul double %117, %123, !dbg !879
  %125 = fadd double %122, -1.000000e+00, !dbg !880
  %126 = fmul double %125, %124, !dbg !881
  %127 = call double @sqrt(double noundef %126) #9, !dbg !882
  tail call void @llvm.dbg.value(metadata double %127, metadata !756, metadata !DIExpression()), !dbg !872
  %128 = fmul double %117, %120, !dbg !883
  %129 = fmul double %123, %128, !dbg !884
  %130 = fadd double %122, -3.000000e+00, !dbg !885
  %131 = fdiv double %129, %130, !dbg !886
  %132 = call double @sqrt(double noundef %131) #9, !dbg !887
  tail call void @llvm.dbg.value(metadata double %132, metadata !757, metadata !DIExpression()), !dbg !872
  %133 = fmul double %110, %2, !dbg !888
  %134 = fmul double %133, %127, !dbg !889
  %135 = fmul double %119, %108, !dbg !890
  %136 = fmul double %135, %132, !dbg !891
  %137 = fsub double %134, %136, !dbg !892
  %138 = fdiv double %137, %114, !dbg !893
  tail call void @llvm.dbg.value(metadata double %138, metadata !745, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %110, metadata !741, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %138, metadata !743, metadata !DIExpression()), !dbg !761
  %139 = fmul double %127, %2, !dbg !894
  %140 = call double @llvm.fabs.f64(double %139), !dbg !895
  %141 = fmul double %112, %140, !dbg !896
  %142 = fmul double %119, %132, !dbg !897
  %143 = call double @llvm.fabs.f64(double %142), !dbg !898
  %144 = fmul double %109, %143, !dbg !899
  %145 = fadd double %141, %144, !dbg !900
  %146 = fmul double %145, 5.000000e-01, !dbg !901
  %147 = call double @llvm.fabs.f64(double %114), !dbg !902
  %148 = fdiv double %146, %147, !dbg !903
  tail call void @llvm.dbg.value(metadata double %148, metadata !749, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %112, metadata !742, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %148, metadata !744, metadata !DIExpression()), !dbg !761
  %149 = add i32 %111, 1, !dbg !904
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !750, metadata !DIExpression()), !dbg !863
  %150 = icmp eq i32 %111, %0, !dbg !865
  br i1 %150, label %151, label %107, !dbg !866, !llvm.loop !905

151:                                              ; preds = %107, %104
  %152 = phi double [ 0.000000e+00, %104 ], [ %138, %107 ], !dbg !863
  %153 = phi double [ 0.000000e+00, %104 ], [ %148, %107 ], !dbg !863
  store double %152, ptr %3, align 8, !dbg !907, !tbaa !109
  %154 = sub nsw i32 %0, %1, !dbg !908
  %155 = sitofp i32 %154 to double, !dbg !909
  %156 = fmul double %155, 5.000000e-01, !dbg !910
  %157 = fadd double %156, 1.000000e+00, !dbg !911
  %158 = fmul double %157, 0x3CB0000000000000, !dbg !912
  %159 = call double @llvm.fabs.f64(double %152), !dbg !913
  %160 = fmul double %158, %159, !dbg !914
  %161 = fadd double %153, %160, !dbg !915
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !916
  store double %161, ptr %162, align 8, !dbg !917, !tbaa !116
  br label %163

163:                                              ; preds = %151, %99, %93
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !918
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !918
  br label %164

164:                                              ; preds = %15, %19, %39, %163
  %165 = phi i32 [ 1, %15 ], [ %20, %19 ], [ 0, %39 ], [ 0, %163 ], !dbg !919
  ret i32 %165, !dbg !920
}

declare !dbg !921 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !923 i32 @gsl_sf_lnpoch_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !927 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !928 double @sinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P1(double noundef returned %0) local_unnamed_addr #6 !dbg !929 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !933, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata double %0, metadata !934, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !936
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !934, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !936
  tail call void @llvm.dbg.value(metadata i32 0, metadata !935, metadata !DIExpression()), !dbg !936
  ret double %0, !dbg !937
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P2(double noundef %0) local_unnamed_addr #6 !dbg !938 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !940, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata double %0, metadata !120, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr undef, metadata !121, metadata !DIExpression()), !dbg !944
  %2 = fmul double %0, 3.000000e+00, !dbg !946
  %3 = fmul double %2, %0, !dbg !947
  %4 = fadd double %3, -1.000000e+00, !dbg !948
  %5 = fmul double %4, 5.000000e-01, !dbg !949
  tail call void @llvm.dbg.value(metadata double %5, metadata !941, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !943
  tail call void @llvm.dbg.value(metadata double poison, metadata !941, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !943
  tail call void @llvm.dbg.value(metadata i32 0, metadata !942, metadata !DIExpression()), !dbg !943
  ret double %5, !dbg !950
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P3(double noundef %0) local_unnamed_addr #6 !dbg !951 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata double %0, metadata !137, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr undef, metadata !138, metadata !DIExpression()), !dbg !957
  %2 = fmul double %0, 5.000000e-01, !dbg !959
  %3 = fmul double %0, 5.000000e+00, !dbg !960
  %4 = fmul double %3, %0, !dbg !961
  %5 = fadd double %4, -3.000000e+00, !dbg !962
  %6 = fmul double %2, %5, !dbg !963
  tail call void @llvm.dbg.value(metadata double %6, metadata !954, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !956
  tail call void @llvm.dbg.value(metadata double poison, metadata !954, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !956
  tail call void @llvm.dbg.value(metadata i32 0, metadata !955, metadata !DIExpression()), !dbg !956
  ret double %6, !dbg !964
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Pl(i32 noundef %0, double noundef %1) local_unnamed_addr #2 !dbg !965 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !973
  call void @llvm.dbg.assign(metadata i1 undef, metadata !971, metadata !DIExpression(), metadata !973, metadata ptr %3, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !969, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata double %1, metadata !970, metadata !DIExpression()), !dbg !974
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !975
  %4 = call i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !975
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !972, metadata !DIExpression()), !dbg !974
  %5 = icmp eq i32 %4, 0, !dbg !976
  br i1 %5, label %7, label %6, !dbg !975

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 766, i32 noundef %4) #9, !dbg !978
  br label %7, !dbg !978

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !975, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !981
  ret double %8, !dbg !981
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Plm(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 !dbg !982 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !991
  call void @llvm.dbg.assign(metadata i1 undef, metadata !989, metadata !DIExpression(), metadata !991, metadata ptr %4, metadata !DIExpression()), !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !986, metadata !DIExpression()), !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !987, metadata !DIExpression()), !dbg !992
  tail call void @llvm.dbg.value(metadata double %2, metadata !988, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !993
  %5 = call i32 @gsl_sf_legendre_Plm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !993, !range !994
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !990, metadata !DIExpression()), !dbg !992
  %6 = icmp eq i32 %5, 0, !dbg !995
  br i1 %6, label %8, label %7, !dbg !993

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 771, i32 noundef %5) #9, !dbg !997
  br label %8, !dbg !997

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !993, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1000
  ret double %9, !dbg !1000
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_sphPlm(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 !dbg !1001 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1006, metadata !DIExpression(), metadata !1008, metadata ptr %4, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1003, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1004, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %2, metadata !1005, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !1010
  %5 = call i32 @gsl_sf_legendre_sphPlm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1007, metadata !DIExpression()), !dbg !1009
  %6 = icmp eq i32 %5, 0, !dbg !1011
  br i1 %6, label %8, label %7, !dbg !1010

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef %5) #9, !dbg !1013
  br label %8, !dbg !1013

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !1010, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1016
  ret double %9, !dbg !1016
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "legendre_poly.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "513d860008e311a3b68e71f5127b8dbb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 766, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 36)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 40)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 776, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 43)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !73, globals: !75, splitDebugInlining: false, nameTableKind: None)
!33 = !{!34}
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 39, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!38 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!39 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!40 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!41 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!42 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!43 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!44 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!45 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!46 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!47 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!48 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!49 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!50 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!51 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!52 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!53 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!54 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!55 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!56 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!57 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!58 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!59 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!60 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!61 = !DIEnumerator(name: "GSL_ESING", value: 21)
!62 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!63 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!64 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!65 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!66 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!67 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!68 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!69 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!70 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!71 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!72 = !DIEnumerator(name: "GSL_EOF", value: 32)
!73 = !{!74}
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !{!0, !7, !12, !76, !81, !83, !17, !22, !27}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 751, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 33)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 756, type: !78, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 761, type: !78, isLocal: true, isDefinition: true)
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{i32 8, !"PIC Level", i32 2}
!89 = !{i32 7, !"PIE Level", i32 2}
!90 = !{i32 7, !"uwtable", i32 2}
!91 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!92 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!93 = distinct !DISubprogram(name: "gsl_sf_legendre_P1_e", scope: !2, file: !2, line: 66, type: !94, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !103)
!94 = !DISubroutineType(types: !95)
!95 = !{!36, !74, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !98, line: 41, baseType: !99)
!98 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !98, line: 37, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !99, file: !98, line: 38, baseType: !74, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !99, file: !98, line: 39, baseType: !74, size: 64, offset: 64)
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "x", arg: 1, scope: !93, file: !2, line: 66, type: !74)
!105 = !DILocalVariable(name: "result", arg: 2, scope: !93, file: !2, line: 66, type: !96)
!106 = !DILocation(line: 0, scope: !93)
!107 = !DILocation(line: 71, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !93, file: !2, line: 70, column: 3)
!109 = !{!110, !111, i64 0}
!110 = !{!"gsl_sf_result_struct", !111, i64 0, !111, i64 8}
!111 = !{!"double", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 72, column: 13, scope: !108)
!115 = !DILocation(line: 72, column: 17, scope: !108)
!116 = !{!110, !111, i64 8}
!117 = !DILocation(line: 73, column: 5, scope: !108)
!118 = distinct !DISubprogram(name: "gsl_sf_legendre_P2_e", scope: !2, file: !2, line: 78, type: !94, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "x", arg: 1, scope: !118, file: !2, line: 78, type: !74)
!121 = !DILocalVariable(name: "result", arg: 2, scope: !118, file: !2, line: 78, type: !96)
!122 = !DILocation(line: 0, scope: !118)
!123 = !DILocation(line: 83, column: 27, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !2, line: 82, column: 3)
!125 = !DILocation(line: 83, column: 29, scope: !124)
!126 = !DILocation(line: 83, column: 32, scope: !124)
!127 = !DILocation(line: 83, column: 22, scope: !124)
!128 = !DILocation(line: 83, column: 17, scope: !124)
!129 = !DILocation(line: 84, column: 38, scope: !124)
!130 = !DILocation(line: 84, column: 52, scope: !124)
!131 = !DILocation(line: 84, column: 35, scope: !124)
!132 = !DILocation(line: 84, column: 13, scope: !124)
!133 = !DILocation(line: 84, column: 17, scope: !124)
!134 = !DILocation(line: 85, column: 5, scope: !124)
!135 = distinct !DISubprogram(name: "gsl_sf_legendre_P3_e", scope: !2, file: !2, line: 90, type: !94, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !136)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "x", arg: 1, scope: !135, file: !2, line: 90, type: !74)
!138 = !DILocalVariable(name: "result", arg: 2, scope: !135, file: !2, line: 90, type: !96)
!139 = !DILocation(line: 0, scope: !135)
!140 = !DILocation(line: 95, column: 22, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !2, line: 94, column: 3)
!142 = !DILocation(line: 95, column: 29, scope: !141)
!143 = !DILocation(line: 95, column: 31, scope: !141)
!144 = !DILocation(line: 95, column: 34, scope: !141)
!145 = !DILocation(line: 95, column: 24, scope: !141)
!146 = !DILocation(line: 95, column: 17, scope: !141)
!147 = !DILocation(line: 96, column: 38, scope: !141)
!148 = !DILocation(line: 96, column: 64, scope: !141)
!149 = !DILocation(line: 96, column: 62, scope: !141)
!150 = !DILocation(line: 96, column: 75, scope: !141)
!151 = !DILocation(line: 96, column: 89, scope: !141)
!152 = !DILocation(line: 96, column: 72, scope: !141)
!153 = !DILocation(line: 96, column: 56, scope: !141)
!154 = !DILocation(line: 96, column: 35, scope: !141)
!155 = !DILocation(line: 96, column: 13, scope: !141)
!156 = !DILocation(line: 96, column: 17, scope: !141)
!157 = !DILocation(line: 97, column: 5, scope: !141)
!158 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_e", scope: !2, file: !2, line: 103, type: !159, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !163)
!159 = !DISubroutineType(types: !160)
!160 = !{!36, !161, !162, !96}
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!163 = !{!164, !165, !166, !167, !176, !177, !178, !179, !180, !181, !182, !184, !185, !186, !187, !188, !189, !190, !191, !192, !195}
!164 = !DILocalVariable(name: "l", arg: 1, scope: !158, file: !2, line: 103, type: !161)
!165 = !DILocalVariable(name: "x", arg: 2, scope: !158, file: !2, line: 103, type: !162)
!166 = !DILocalVariable(name: "result", arg: 3, scope: !158, file: !2, line: 103, type: !96)
!167 = !DILocalVariable(name: "p_ellm2", scope: !168, file: !2, line: 141, type: !74)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 138, column: 23)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 138, column: 11)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 133, column: 11)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 128, column: 11)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 120, column: 11)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 115, column: 11)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 110, column: 11)
!175 = distinct !DILexicalBlock(scope: !158, file: !2, line: 107, column: 6)
!176 = !DILocalVariable(name: "p_ellm1", scope: !168, file: !2, line: 142, type: !74)
!177 = !DILocalVariable(name: "p_ell", scope: !168, file: !2, line: 143, type: !74)
!178 = !DILocalVariable(name: "e_ellm2", scope: !168, file: !2, line: 145, type: !74)
!179 = !DILocalVariable(name: "e_ellm1", scope: !168, file: !2, line: 146, type: !74)
!180 = !DILocalVariable(name: "e_ell", scope: !168, file: !2, line: 147, type: !74)
!181 = !DILocalVariable(name: "ell", scope: !168, file: !2, line: 149, type: !36)
!182 = !DILocalVariable(name: "u", scope: !183, file: !2, line: 169, type: !74)
!183 = distinct !DILexicalBlock(scope: !169, file: !2, line: 165, column: 8)
!184 = !DILocalVariable(name: "th", scope: !183, file: !2, line: 170, type: !74)
!185 = !DILocalVariable(name: "J0", scope: !183, file: !2, line: 171, type: !97)
!186 = !DILocalVariable(name: "Jm1", scope: !183, file: !2, line: 172, type: !97)
!187 = !DILocalVariable(name: "stat_J0", scope: !183, file: !2, line: 173, type: !36)
!188 = !DILocalVariable(name: "stat_Jm1", scope: !183, file: !2, line: 174, type: !36)
!189 = !DILocalVariable(name: "pre", scope: !183, file: !2, line: 175, type: !74)
!190 = !DILocalVariable(name: "B00", scope: !183, file: !2, line: 176, type: !74)
!191 = !DILocalVariable(name: "c1", scope: !183, file: !2, line: 177, type: !74)
!192 = !DILocalVariable(name: "sin_th", scope: !193, file: !2, line: 187, type: !74)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 186, column: 10)
!194 = distinct !DILexicalBlock(scope: !183, file: !2, line: 182, column: 8)
!195 = !DILocalVariable(name: "cot_th", scope: !193, file: !2, line: 188, type: !74)
!196 = distinct !DIAssignID()
!197 = !DILocation(line: 0, scope: !183)
!198 = distinct !DIAssignID()
!199 = !DILocation(line: 0, scope: !158)
!200 = !DILocation(line: 107, column: 8, scope: !175)
!201 = !DILocation(line: 107, column: 12, scope: !175)
!202 = !DILocation(line: 108, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !2, line: 108, column: 5)
!204 = distinct !DILexicalBlock(scope: !175, file: !2, line: 107, column: 36)
!205 = !DILocation(line: 108, column: 5, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !2, line: 108, column: 5)
!207 = !DILocation(line: 110, column: 11, scope: !175)
!208 = !DILocation(line: 111, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !174, file: !2, line: 110, column: 19)
!210 = !DILocation(line: 112, column: 13, scope: !209)
!211 = !DILocation(line: 112, column: 17, scope: !209)
!212 = !DILocation(line: 113, column: 5, scope: !209)
!213 = !DILocation(line: 116, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !173, file: !2, line: 115, column: 19)
!215 = !DILocation(line: 117, column: 13, scope: !214)
!216 = !DILocation(line: 117, column: 17, scope: !214)
!217 = !DILocation(line: 118, column: 5, scope: !214)
!218 = !DILocation(line: 121, column: 29, scope: !219)
!219 = distinct !DILexicalBlock(scope: !172, file: !2, line: 120, column: 19)
!220 = !DILocation(line: 121, column: 31, scope: !219)
!221 = !DILocation(line: 121, column: 34, scope: !219)
!222 = !DILocation(line: 121, column: 23, scope: !219)
!223 = !DILocation(line: 121, column: 17, scope: !219)
!224 = !DILocation(line: 122, column: 38, scope: !219)
!225 = !DILocation(line: 122, column: 52, scope: !219)
!226 = !DILocation(line: 122, column: 35, scope: !219)
!227 = !DILocation(line: 122, column: 13, scope: !219)
!228 = !DILocation(line: 122, column: 17, scope: !219)
!229 = !DILocation(line: 126, column: 5, scope: !219)
!230 = !DILocation(line: 128, column: 13, scope: !171)
!231 = !DILocation(line: 128, column: 11, scope: !172)
!232 = !DILocation(line: 129, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !171, file: !2, line: 128, column: 21)
!234 = !DILocation(line: 130, column: 13, scope: !233)
!235 = !DILocation(line: 130, column: 17, scope: !233)
!236 = !DILocation(line: 131, column: 5, scope: !233)
!237 = !DILocation(line: 133, column: 13, scope: !170)
!238 = !DILocation(line: 133, column: 11, scope: !171)
!239 = !DILocation(line: 134, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !170, file: !2, line: 133, column: 22)
!241 = !DILocation(line: 134, column: 17, scope: !240)
!242 = !DILocation(line: 135, column: 13, scope: !240)
!243 = !DILocation(line: 135, column: 17, scope: !240)
!244 = !DILocation(line: 136, column: 5, scope: !240)
!245 = !DILocation(line: 138, column: 13, scope: !169)
!246 = !DILocation(line: 138, column: 11, scope: !170)
!247 = !DILocation(line: 0, scope: !168)
!248 = !DILocation(line: 146, column: 22, scope: !168)
!249 = !DILocation(line: 146, column: 29, scope: !168)
!250 = !DILocation(line: 151, column: 5, scope: !251)
!251 = distinct !DILexicalBlock(scope: !168, file: !2, line: 151, column: 5)
!252 = !DILocation(line: 152, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 151, column: 32)
!254 = distinct !DILexicalBlock(scope: !251, file: !2, line: 151, column: 5)
!255 = !DILocation(line: 152, column: 24, scope: !253)
!256 = !DILocation(line: 152, column: 18, scope: !253)
!257 = !DILocation(line: 152, column: 17, scope: !253)
!258 = !DILocation(line: 152, column: 27, scope: !253)
!259 = !DILocation(line: 152, column: 42, scope: !253)
!260 = !DILocation(line: 152, column: 38, scope: !253)
!261 = !DILocation(line: 152, column: 45, scope: !253)
!262 = !DILocation(line: 152, column: 36, scope: !253)
!263 = !DILocation(line: 152, column: 57, scope: !253)
!264 = !DILocation(line: 152, column: 55, scope: !253)
!265 = !DILocation(line: 156, column: 27, scope: !253)
!266 = !DILocation(line: 156, column: 40, scope: !253)
!267 = !DILocation(line: 156, column: 56, scope: !253)
!268 = !DILocation(line: 156, column: 61, scope: !253)
!269 = !DILocation(line: 156, column: 50, scope: !253)
!270 = !DILocation(line: 156, column: 18, scope: !253)
!271 = !DILocation(line: 156, column: 70, scope: !253)
!272 = !DILocation(line: 151, column: 29, scope: !254)
!273 = !DILocation(line: 151, column: 20, scope: !254)
!274 = distinct !{!274, !250, !275, !276}
!275 = !DILocation(line: 159, column: 5, scope: !251)
!276 = !{!"llvm.loop.mustprogress"}
!277 = !DILocation(line: 162, column: 29, scope: !168)
!278 = !DILocation(line: 161, column: 17, scope: !168)
!279 = !DILocation(line: 162, column: 27, scope: !168)
!280 = !DILocation(line: 162, column: 28, scope: !168)
!281 = !DILocation(line: 162, column: 40, scope: !168)
!282 = !DILocation(line: 162, column: 25, scope: !168)
!283 = !DILocation(line: 162, column: 13, scope: !168)
!284 = !DILocation(line: 162, column: 17, scope: !168)
!285 = !DILocation(line: 169, column: 17, scope: !183)
!286 = !DILocation(line: 169, column: 19, scope: !183)
!287 = !DILocation(line: 170, column: 17, scope: !183)
!288 = !DILocation(line: 171, column: 5, scope: !183)
!289 = !DILocation(line: 172, column: 5, scope: !183)
!290 = !DILocation(line: 173, column: 40, scope: !183)
!291 = !DILocation(line: 173, column: 20, scope: !183)
!292 = !DILocation(line: 174, column: 20, scope: !183)
!293 = !DILocation(line: 182, column: 11, scope: !194)
!294 = !DILocation(line: 182, column: 8, scope: !183)
!295 = !DILocation(line: 183, column: 22, scope: !296)
!296 = distinct !DILexicalBlock(scope: !194, file: !2, line: 182, column: 36)
!297 = !DILocation(line: 183, column: 25, scope: !296)
!298 = !DILocation(line: 183, column: 18, scope: !296)
!299 = !DILocation(line: 183, column: 31, scope: !296)
!300 = !DILocation(line: 184, column: 24, scope: !296)
!301 = !DILocation(line: 184, column: 17, scope: !296)
!302 = !DILocation(line: 185, column: 5, scope: !296)
!303 = !DILocation(line: 187, column: 35, scope: !193)
!304 = !DILocation(line: 187, column: 32, scope: !193)
!305 = !DILocation(line: 187, column: 23, scope: !193)
!306 = !DILocation(line: 0, scope: !193)
!307 = !DILocation(line: 188, column: 25, scope: !193)
!308 = !DILocation(line: 189, column: 33, scope: !193)
!309 = !DILocation(line: 189, column: 28, scope: !193)
!310 = !DILocation(line: 189, column: 21, scope: !193)
!311 = !DILocation(line: 189, column: 48, scope: !193)
!312 = !DILocation(line: 189, column: 43, scope: !193)
!313 = !DILocation(line: 190, column: 20, scope: !193)
!314 = !DILocation(line: 190, column: 13, scope: !193)
!315 = !DILocation(line: 0, scope: !194)
!316 = !DILocation(line: 193, column: 12, scope: !183)
!317 = !DILocation(line: 193, column: 15, scope: !183)
!318 = !DILocation(line: 195, column: 30, scope: !183)
!319 = !DILocation(line: 195, column: 45, scope: !183)
!320 = !DILocation(line: 195, column: 39, scope: !183)
!321 = !DILocation(line: 195, column: 34, scope: !183)
!322 = !DILocation(line: 195, column: 24, scope: !183)
!323 = !DILocation(line: 195, column: 18, scope: !183)
!324 = !DILocation(line: 196, column: 30, scope: !183)
!325 = !DILocation(line: 196, column: 36, scope: !183)
!326 = !DILocation(line: 196, column: 51, scope: !183)
!327 = !DILocation(line: 196, column: 45, scope: !183)
!328 = !DILocation(line: 196, column: 34, scope: !183)
!329 = !DILocation(line: 196, column: 24, scope: !183)
!330 = !DILocation(line: 196, column: 13, scope: !183)
!331 = !DILocation(line: 197, column: 43, scope: !183)
!332 = !DILocation(line: 197, column: 41, scope: !183)
!333 = !DILocation(line: 197, column: 17, scope: !183)
!334 = !DILocation(line: 199, column: 12, scope: !183)
!335 = !DILocation(line: 200, column: 3, scope: !169)
!336 = !DILocation(line: 0, scope: !175)
!337 = !DILocation(line: 201, column: 1, scope: !158)
!338 = !DISubprogram(name: "gsl_error", scope: !35, file: !35, line: 77, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341, !341, !36, !36}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!343 = !DISubprogram(name: "acos", scope: !344, file: !344, line: 53, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!345 = !DISubroutineType(types: !346)
!346 = !{!74, !74}
!347 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !348, file: !348, line: 47, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!349 = !DISubroutineType(types: !350)
!350 = !{!36, !162, !96}
!351 = !DISubprogram(name: "gsl_sf_bessel_Jn_e", scope: !348, file: !348, line: 63, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{!36, !36, !74, !96}
!354 = !DISubprogram(name: "sqrt", scope: !344, file: !344, line: 143, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_array", scope: !2, file: !2, line: 205, type: !356, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !359)
!356 = !DISubroutineType(types: !357)
!357 = !{!36, !161, !162, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!359 = !{!360, !361, !362, !363, !368, !369, !370}
!360 = !DILocalVariable(name: "lmax", arg: 1, scope: !355, file: !2, line: 205, type: !161)
!361 = !DILocalVariable(name: "x", arg: 2, scope: !355, file: !2, line: 205, type: !162)
!362 = !DILocalVariable(name: "result_array", arg: 3, scope: !355, file: !2, line: 205, type: !358)
!363 = !DILocalVariable(name: "p_ellm2", scope: !364, file: !2, line: 224, type: !74)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 221, column: 8)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 216, column: 11)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 212, column: 11)
!367 = distinct !DILexicalBlock(scope: !355, file: !2, line: 209, column: 6)
!368 = !DILocalVariable(name: "p_ellm1", scope: !364, file: !2, line: 225, type: !74)
!369 = !DILocalVariable(name: "p_ell", scope: !364, file: !2, line: 226, type: !74)
!370 = !DILocalVariable(name: "ell", scope: !364, file: !2, line: 227, type: !36)
!371 = !DILocation(line: 0, scope: !355)
!372 = !DILocation(line: 209, column: 11, scope: !367)
!373 = !DILocation(line: 209, column: 15, scope: !367)
!374 = !DILocation(line: 210, column: 5, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 210, column: 5)
!376 = distinct !DILexicalBlock(scope: !367, file: !2, line: 209, column: 39)
!377 = !DILocation(line: 0, scope: !366)
!378 = !{!111, !111, i64 0}
!379 = !DILocation(line: 212, column: 11, scope: !367)
!380 = !DILocation(line: 218, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !365, file: !2, line: 216, column: 22)
!382 = !DILocation(line: 218, column: 21, scope: !381)
!383 = !DILocation(line: 219, column: 5, scope: !381)
!384 = !DILocation(line: 0, scope: !364)
!385 = !DILocation(line: 230, column: 5, scope: !364)
!386 = !DILocation(line: 230, column: 21, scope: !364)
!387 = !DILocation(line: 232, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !364, file: !2, line: 232, column: 5)
!389 = !DILocation(line: 232, column: 20, scope: !390)
!390 = distinct !DILexicalBlock(scope: !388, file: !2, line: 232, column: 5)
!391 = !DILocation(line: 233, column: 18, scope: !392)
!392 = distinct !DILexicalBlock(scope: !390, file: !2, line: 232, column: 35)
!393 = !DILocation(line: 233, column: 17, scope: !392)
!394 = !DILocation(line: 233, column: 27, scope: !392)
!395 = !DILocation(line: 233, column: 38, scope: !392)
!396 = !DILocation(line: 233, column: 45, scope: !392)
!397 = !DILocation(line: 233, column: 36, scope: !392)
!398 = !DILocation(line: 233, column: 57, scope: !392)
!399 = !DILocation(line: 233, column: 55, scope: !392)
!400 = !DILocation(line: 236, column: 7, scope: !392)
!401 = !DILocation(line: 236, column: 25, scope: !392)
!402 = !DILocation(line: 232, column: 32, scope: !390)
!403 = distinct !{!403, !387, !404, !276}
!404 = !DILocation(line: 237, column: 5, scope: !388)
!405 = !DILocation(line: 0, scope: !367)
!406 = !DILocation(line: 241, column: 1, scope: !355)
!407 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_deriv_array", scope: !2, file: !2, line: 245, type: !408, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!36, !161, !162, !358, !358}
!410 = !{!411, !412, !413, !414, !415, !416, !419, !425, !431, !432, !434}
!411 = !DILocalVariable(name: "lmax", arg: 1, scope: !407, file: !2, line: 245, type: !161)
!412 = !DILocalVariable(name: "x", arg: 2, scope: !407, file: !2, line: 245, type: !162)
!413 = !DILocalVariable(name: "result_array", arg: 3, scope: !407, file: !2, line: 245, type: !358)
!414 = !DILocalVariable(name: "result_deriv_array", arg: 4, scope: !407, file: !2, line: 245, type: !358)
!415 = !DILocalVariable(name: "stat_array", scope: !407, file: !2, line: 247, type: !36)
!416 = !DILocalVariable(name: "ell", scope: !417, file: !2, line: 254, type: !36)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 253, column: 3)
!418 = distinct !DILexicalBlock(scope: !407, file: !2, line: 252, column: 6)
!419 = !DILocalVariable(name: "pre", scope: !420, file: !2, line: 261, type: !162)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 260, column: 7)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 259, column: 7)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 259, column: 7)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 257, column: 5)
!424 = distinct !DILexicalBlock(scope: !417, file: !2, line: 256, column: 8)
!425 = !DILocalVariable(name: "sgn", scope: !426, file: !2, line: 270, type: !162)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 269, column: 7)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 268, column: 7)
!428 = distinct !DILexicalBlock(scope: !429, file: !2, line: 268, column: 7)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 266, column: 5)
!430 = distinct !DILexicalBlock(scope: !424, file: !2, line: 265, column: 13)
!431 = !DILocalVariable(name: "pre", scope: !426, file: !2, line: 271, type: !162)
!432 = !DILocalVariable(name: "diff_a", scope: !433, file: !2, line: 277, type: !162)
!433 = distinct !DILexicalBlock(scope: !430, file: !2, line: 276, column: 5)
!434 = !DILocalVariable(name: "diff_b", scope: !433, file: !2, line: 278, type: !162)
!435 = !DILocation(line: 0, scope: !407)
!436 = !DILocation(line: 0, scope: !355, inlinedAt: !437)
!437 = distinct !DILocation(line: 247, column: 20, scope: !407)
!438 = !DILocation(line: 209, column: 11, scope: !367, inlinedAt: !437)
!439 = !DILocation(line: 209, column: 15, scope: !367, inlinedAt: !437)
!440 = !DILocation(line: 210, column: 5, scope: !375, inlinedAt: !437)
!441 = !DILocation(line: 0, scope: !366, inlinedAt: !437)
!442 = !DILocation(line: 212, column: 11, scope: !367, inlinedAt: !437)
!443 = !DILocation(line: 249, column: 39, scope: !444)
!444 = distinct !DILexicalBlock(scope: !407, file: !2, line: 249, column: 6)
!445 = !DILocation(line: 252, column: 6, scope: !407)
!446 = !DILocation(line: 218, column: 5, scope: !381, inlinedAt: !437)
!447 = !DILocation(line: 218, column: 21, scope: !381, inlinedAt: !437)
!448 = !DILocation(line: 250, column: 6, scope: !407)
!449 = !DILocation(line: 0, scope: !364, inlinedAt: !437)
!450 = !DILocation(line: 230, column: 5, scope: !364, inlinedAt: !437)
!451 = !DILocation(line: 230, column: 21, scope: !364, inlinedAt: !437)
!452 = !DILocation(line: 232, column: 5, scope: !388, inlinedAt: !437)
!453 = !DILocation(line: 232, column: 20, scope: !390, inlinedAt: !437)
!454 = !DILocation(line: 233, column: 18, scope: !392, inlinedAt: !437)
!455 = !DILocation(line: 233, column: 17, scope: !392, inlinedAt: !437)
!456 = !DILocation(line: 233, column: 27, scope: !392, inlinedAt: !437)
!457 = !DILocation(line: 233, column: 38, scope: !392, inlinedAt: !437)
!458 = !DILocation(line: 233, column: 45, scope: !392, inlinedAt: !437)
!459 = !DILocation(line: 233, column: 36, scope: !392, inlinedAt: !437)
!460 = !DILocation(line: 233, column: 57, scope: !392, inlinedAt: !437)
!461 = !DILocation(line: 233, column: 55, scope: !392, inlinedAt: !437)
!462 = !DILocation(line: 236, column: 7, scope: !392, inlinedAt: !437)
!463 = !DILocation(line: 236, column: 25, scope: !392, inlinedAt: !437)
!464 = !DILocation(line: 232, column: 32, scope: !390, inlinedAt: !437)
!465 = distinct !{!465, !452, !466, !276}
!466 = !DILocation(line: 237, column: 5, scope: !388, inlinedAt: !437)
!467 = !DILocation(line: 0, scope: !367, inlinedAt: !437)
!468 = !DILocation(line: 249, column: 11, scope: !444)
!469 = !DILocation(line: 249, column: 6, scope: !407)
!470 = !DILocation(line: 250, column: 11, scope: !471)
!471 = distinct !DILexicalBlock(scope: !407, file: !2, line: 250, column: 6)
!472 = !DILocation(line: 250, column: 17, scope: !471)
!473 = !DILocation(line: 250, column: 39, scope: !471)
!474 = !DILocation(line: 252, column: 17, scope: !418)
!475 = !DILocation(line: 256, column: 15, scope: !424)
!476 = !DILocation(line: 256, column: 8, scope: !424)
!477 = !DILocation(line: 256, column: 23, scope: !424)
!478 = !DILocation(line: 256, column: 27, scope: !424)
!479 = !DILocation(line: 256, column: 21, scope: !424)
!480 = !DILocation(line: 256, column: 32, scope: !424)
!481 = !DILocation(line: 256, column: 44, scope: !424)
!482 = !DILocation(line: 256, column: 8, scope: !417)
!483 = !DILocation(line: 0, scope: !417)
!484 = !DILocation(line: 259, column: 24, scope: !421)
!485 = !DILocation(line: 259, column: 7, scope: !422)
!486 = !DILocation(line: 261, column: 34, scope: !420)
!487 = !DILocation(line: 261, column: 32, scope: !420)
!488 = !DILocation(line: 261, column: 44, scope: !420)
!489 = !DILocation(line: 261, column: 38, scope: !420)
!490 = !DILocation(line: 0, scope: !420)
!491 = !DILocation(line: 262, column: 69, scope: !420)
!492 = !DILocation(line: 262, column: 63, scope: !420)
!493 = !DILocation(line: 262, column: 79, scope: !420)
!494 = !DILocation(line: 262, column: 74, scope: !420)
!495 = !DILocation(line: 262, column: 46, scope: !420)
!496 = !DILocation(line: 262, column: 39, scope: !420)
!497 = !DILocation(line: 262, column: 9, scope: !420)
!498 = !DILocation(line: 262, column: 33, scope: !420)
!499 = !DILocation(line: 259, column: 36, scope: !421)
!500 = distinct !{!500, !485, !501, !276}
!501 = !DILocation(line: 263, column: 7, scope: !422)
!502 = !DILocation(line: 265, column: 20, scope: !430)
!503 = !DILocation(line: 265, column: 13, scope: !430)
!504 = !DILocation(line: 265, column: 26, scope: !430)
!505 = !DILocation(line: 265, column: 37, scope: !430)
!506 = !DILocation(line: 265, column: 49, scope: !430)
!507 = !DILocation(line: 0, scope: !430)
!508 = !DILocation(line: 265, column: 13, scope: !424)
!509 = !DILocation(line: 268, column: 7, scope: !428)
!510 = !DILocation(line: 268, column: 24, scope: !427)
!511 = !DILocation(line: 270, column: 30, scope: !426)
!512 = !DILocation(line: 0, scope: !426)
!513 = !DILocation(line: 271, column: 32, scope: !426)
!514 = !DILocation(line: 271, column: 40, scope: !426)
!515 = !DILocation(line: 271, column: 38, scope: !426)
!516 = !DILocation(line: 271, column: 50, scope: !426)
!517 = !DILocation(line: 271, column: 44, scope: !426)
!518 = !DILocation(line: 272, column: 69, scope: !426)
!519 = !DILocation(line: 272, column: 63, scope: !426)
!520 = !DILocation(line: 272, column: 79, scope: !426)
!521 = !DILocation(line: 272, column: 74, scope: !426)
!522 = !DILocation(line: 272, column: 46, scope: !426)
!523 = !DILocation(line: 272, column: 39, scope: !426)
!524 = !DILocation(line: 272, column: 9, scope: !426)
!525 = !DILocation(line: 272, column: 33, scope: !426)
!526 = !DILocation(line: 268, column: 36, scope: !427)
!527 = distinct !{!527, !509, !528, !276}
!528 = !DILocation(line: 273, column: 7, scope: !428)
!529 = !DILocation(line: 0, scope: !433)
!530 = !DILocation(line: 279, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !433, file: !2, line: 279, column: 7)
!532 = !DILocation(line: 278, column: 33, scope: !433)
!533 = !DILocation(line: 279, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !2, line: 279, column: 7)
!535 = !DILocation(line: 281, column: 35, scope: !536)
!536 = distinct !DILexicalBlock(scope: !534, file: !2, line: 280, column: 7)
!537 = !DILocation(line: 281, column: 48, scope: !536)
!538 = !DILocation(line: 281, column: 46, scope: !536)
!539 = !DILocation(line: 281, column: 68, scope: !536)
!540 = !DILocation(line: 281, column: 66, scope: !536)
!541 = !DILocation(line: 281, column: 41, scope: !536)
!542 = !DILocation(line: 281, column: 89, scope: !536)
!543 = !DILocation(line: 281, column: 9, scope: !536)
!544 = !DILocation(line: 281, column: 33, scope: !536)
!545 = !DILocation(line: 279, column: 36, scope: !534)
!546 = distinct !{!546, !530, !547, !276}
!547 = !DILocation(line: 282, column: 7, scope: !531)
!548 = !DILocation(line: 291, column: 1, scope: !407)
!549 = !DILocation(line: 0, scope: !418)
!550 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm_e", scope: !2, file: !2, line: 294, type: !551, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!36, !161, !161, !162, !96}
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !567, !568, !569, !573, !574, !575}
!554 = !DILocalVariable(name: "l", arg: 1, scope: !550, file: !2, line: 294, type: !161)
!555 = !DILocalVariable(name: "m", arg: 2, scope: !550, file: !2, line: 294, type: !161)
!556 = !DILocalVariable(name: "x", arg: 3, scope: !550, file: !2, line: 294, type: !162)
!557 = !DILocalVariable(name: "result", arg: 4, scope: !550, file: !2, line: 294, type: !96)
!558 = !DILocalVariable(name: "dif", scope: !550, file: !2, line: 300, type: !162)
!559 = !DILocalVariable(name: "sum", scope: !550, file: !2, line: 301, type: !162)
!560 = !DILocalVariable(name: "t_d", scope: !550, file: !2, line: 302, type: !162)
!561 = !DILocalVariable(name: "t_s", scope: !550, file: !2, line: 303, type: !162)
!562 = !DILocalVariable(name: "exp_check", scope: !550, file: !2, line: 304, type: !162)
!563 = !DILocalVariable(name: "err_amp", scope: !564, file: !2, line: 319, type: !162)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 315, column: 8)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 311, column: 11)
!566 = distinct !DILexicalBlock(scope: !550, file: !2, line: 308, column: 6)
!567 = !DILocalVariable(name: "p_mm", scope: !564, file: !2, line: 322, type: !74)
!568 = !DILocalVariable(name: "p_mmp1", scope: !564, file: !2, line: 323, type: !74)
!569 = !DILocalVariable(name: "p_ellm2", scope: !570, file: !2, line: 340, type: !74)
!570 = distinct !DILexicalBlock(scope: !571, file: !2, line: 335, column: 9)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 330, column: 13)
!572 = distinct !DILexicalBlock(scope: !564, file: !2, line: 325, column: 8)
!573 = !DILocalVariable(name: "p_ellm1", scope: !570, file: !2, line: 341, type: !74)
!574 = !DILocalVariable(name: "p_ell", scope: !570, file: !2, line: 342, type: !74)
!575 = !DILocalVariable(name: "ell", scope: !570, file: !2, line: 343, type: !36)
!576 = !DILocation(line: 0, scope: !550)
!577 = !DILocation(line: 300, column: 23, scope: !550)
!578 = !DILocation(line: 300, column: 22, scope: !550)
!579 = !DILocation(line: 302, column: 28, scope: !550)
!580 = !DILocation(line: 302, column: 24, scope: !550)
!581 = !DILocation(line: 301, column: 23, scope: !550)
!582 = !DILocation(line: 301, column: 22, scope: !550)
!583 = !DILocation(line: 302, column: 47, scope: !550)
!584 = !DILocation(line: 302, column: 56, scope: !550)
!585 = !DILocation(line: 302, column: 64, scope: !550)
!586 = !DILocation(line: 302, column: 53, scope: !550)
!587 = !DILocation(line: 303, column: 47, scope: !550)
!588 = !DILocation(line: 303, column: 56, scope: !550)
!589 = !DILocation(line: 303, column: 64, scope: !550)
!590 = !DILocation(line: 303, column: 53, scope: !550)
!591 = !DILocation(line: 303, column: 24, scope: !550)
!592 = !DILocation(line: 304, column: 42, scope: !550)
!593 = !DILocation(line: 304, column: 41, scope: !550)
!594 = !DILocation(line: 304, column: 43, scope: !550)
!595 = !DILocation(line: 304, column: 34, scope: !550)
!596 = !DILocation(line: 304, column: 32, scope: !550)
!597 = !DILocation(line: 304, column: 49, scope: !550)
!598 = !DILocation(line: 304, column: 55, scope: !550)
!599 = !DILocation(line: 308, column: 8, scope: !566)
!600 = !DILocation(line: 308, column: 12, scope: !566)
!601 = !DILocation(line: 308, column: 17, scope: !566)
!602 = !DILocation(line: 308, column: 21, scope: !566)
!603 = !DILocation(line: 309, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 309, column: 5)
!605 = distinct !DILexicalBlock(scope: !566, file: !2, line: 308, column: 45)
!606 = !DILocation(line: 309, column: 5, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !2, line: 309, column: 5)
!608 = !DILocation(line: 311, column: 21, scope: !565)
!609 = !DILocation(line: 311, column: 11, scope: !566)
!610 = !DILocation(line: 313, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 313, column: 5)
!612 = distinct !DILexicalBlock(scope: !565, file: !2, line: 311, column: 46)
!613 = !DILocation(line: 313, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !2, line: 313, column: 5)
!615 = !DILocation(line: 319, column: 62, scope: !564)
!616 = !DILocation(line: 319, column: 61, scope: !564)
!617 = !DILocation(line: 319, column: 53, scope: !564)
!618 = !DILocation(line: 319, column: 51, scope: !564)
!619 = !DILocation(line: 319, column: 32, scope: !564)
!620 = !DILocation(line: 0, scope: !564)
!621 = !DILocalVariable(name: "m", arg: 1, scope: !622, file: !2, line: 40, type: !36)
!622 = distinct !DISubprogram(name: "legendre_Pmm", scope: !2, file: !2, line: 40, type: !623, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!74, !36, !74}
!625 = !{!621, !626, !627, !630, !631, !632}
!626 = !DILocalVariable(name: "x", arg: 2, scope: !622, file: !2, line: 40, type: !74)
!627 = !DILocalVariable(name: "p_mm", scope: !628, file: !2, line: 48, type: !74)
!628 = distinct !DILexicalBlock(scope: !629, file: !2, line: 47, column: 3)
!629 = distinct !DILexicalBlock(scope: !622, file: !2, line: 42, column: 6)
!630 = !DILocalVariable(name: "root_factor", scope: !628, file: !2, line: 49, type: !74)
!631 = !DILocalVariable(name: "fact_coeff", scope: !628, file: !2, line: 50, type: !74)
!632 = !DILocalVariable(name: "i", scope: !628, file: !2, line: 51, type: !36)
!633 = !DILocation(line: 0, scope: !622, inlinedAt: !634)
!634 = distinct !DILocation(line: 322, column: 21, scope: !564)
!635 = !DILocation(line: 42, column: 8, scope: !629, inlinedAt: !634)
!636 = !DILocation(line: 42, column: 6, scope: !622, inlinedAt: !634)
!637 = !DILocation(line: 0, scope: !628, inlinedAt: !634)
!638 = !DILocation(line: 49, column: 34, scope: !628, inlinedAt: !634)
!639 = !DILocation(line: 49, column: 26, scope: !628, inlinedAt: !634)
!640 = !DILocation(line: 49, column: 46, scope: !628, inlinedAt: !634)
!641 = !DILocation(line: 49, column: 38, scope: !628, inlinedAt: !634)
!642 = !DILocation(line: 49, column: 37, scope: !628, inlinedAt: !634)
!643 = !DILocation(line: 52, column: 5, scope: !644, inlinedAt: !634)
!644 = distinct !DILexicalBlock(scope: !628, file: !2, line: 52, column: 5)
!645 = !DILocation(line: 54, column: 15, scope: !646, inlinedAt: !634)
!646 = distinct !DILexicalBlock(scope: !647, file: !2, line: 53, column: 5)
!647 = distinct !DILexicalBlock(scope: !644, file: !2, line: 52, column: 5)
!648 = !DILocation(line: 54, column: 27, scope: !646, inlinedAt: !634)
!649 = !DILocation(line: 54, column: 12, scope: !646, inlinedAt: !634)
!650 = !DILocation(line: 55, column: 18, scope: !646, inlinedAt: !634)
!651 = distinct !{!651, !643, !652, !276}
!652 = !DILocation(line: 56, column: 5, scope: !644, inlinedAt: !634)
!653 = distinct !{!653, !654}
!654 = !{!"llvm.loop.unroll.disable"}
!655 = !DILocation(line: 0, scope: !629, inlinedAt: !634)
!656 = !DILocation(line: 323, column: 27, scope: !564)
!657 = !DILocation(line: 323, column: 30, scope: !564)
!658 = !DILocation(line: 323, column: 25, scope: !564)
!659 = !DILocation(line: 323, column: 23, scope: !564)
!660 = !DILocation(line: 323, column: 35, scope: !564)
!661 = !DILocation(line: 325, column: 8, scope: !564)
!662 = !DILocation(line: 326, column: 19, scope: !663)
!663 = distinct !DILexicalBlock(scope: !572, file: !2, line: 325, column: 15)
!664 = !DILocation(line: 327, column: 29, scope: !663)
!665 = !DILocation(line: 327, column: 35, scope: !663)
!666 = !DILocation(line: 327, column: 55, scope: !663)
!667 = !DILocation(line: 327, column: 53, scope: !663)
!668 = !DILocation(line: 327, column: 15, scope: !663)
!669 = !DILocation(line: 327, column: 19, scope: !663)
!670 = !DILocation(line: 328, column: 7, scope: !663)
!671 = !DILocation(line: 330, column: 20, scope: !571)
!672 = !DILocation(line: 330, column: 15, scope: !571)
!673 = !DILocation(line: 330, column: 13, scope: !572)
!674 = !DILocation(line: 331, column: 19, scope: !675)
!675 = distinct !DILexicalBlock(scope: !571, file: !2, line: 330, column: 25)
!676 = !DILocation(line: 332, column: 29, scope: !675)
!677 = !DILocation(line: 332, column: 35, scope: !675)
!678 = !DILocation(line: 332, column: 55, scope: !675)
!679 = !DILocation(line: 332, column: 53, scope: !675)
!680 = !DILocation(line: 332, column: 15, scope: !675)
!681 = !DILocation(line: 332, column: 19, scope: !675)
!682 = !DILocation(line: 333, column: 7, scope: !675)
!683 = !DILocation(line: 0, scope: !570)
!684 = !DILocation(line: 345, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !570, file: !2, line: 345, column: 7)
!686 = !DILocation(line: 345, column: 24, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !2, line: 345, column: 7)
!688 = !DILocation(line: 345, column: 7, scope: !685)
!689 = !DILocation(line: 346, column: 22, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !2, line: 345, column: 36)
!691 = !DILocation(line: 346, column: 26, scope: !690)
!692 = !DILocation(line: 346, column: 20, scope: !690)
!693 = !DILocation(line: 346, column: 19, scope: !690)
!694 = !DILocation(line: 346, column: 29, scope: !690)
!695 = !DILocation(line: 346, column: 46, scope: !690)
!696 = !DILocation(line: 346, column: 40, scope: !690)
!697 = !DILocation(line: 346, column: 49, scope: !690)
!698 = !DILocation(line: 346, column: 38, scope: !690)
!699 = !DILocation(line: 346, column: 59, scope: !690)
!700 = !DILocation(line: 345, column: 33, scope: !687)
!701 = !DILocation(line: 346, column: 65, scope: !690)
!702 = !DILocation(line: 346, column: 61, scope: !690)
!703 = distinct !{!703, !688, !704, !276}
!704 = !DILocation(line: 349, column: 7, scope: !685)
!705 = !DILocation(line: 351, column: 19, scope: !570)
!706 = !DILocation(line: 352, column: 35, scope: !570)
!707 = !DILocation(line: 352, column: 42, scope: !570)
!708 = !DILocation(line: 352, column: 29, scope: !570)
!709 = !DILocation(line: 352, column: 49, scope: !570)
!710 = !DILocation(line: 352, column: 69, scope: !570)
!711 = !DILocation(line: 352, column: 67, scope: !570)
!712 = !DILocation(line: 352, column: 15, scope: !570)
!713 = !DILocation(line: 352, column: 19, scope: !570)
!714 = !DILocation(line: 0, scope: !566)
!715 = !DILocation(line: 357, column: 1, scope: !550)
!716 = !DISubprogram(name: "log", scope: !344, file: !344, line: 104, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm_e", scope: !2, file: !2, line: 360, type: !718, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!36, !161, !36, !162, !96}
!720 = !{!721, !722, !723, !724, !725, !729, !730, !731, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !749, !750, !751, !755, !756, !757}
!721 = !DILocalVariable(name: "l", arg: 1, scope: !717, file: !2, line: 360, type: !161)
!722 = !DILocalVariable(name: "m", arg: 2, scope: !717, file: !2, line: 360, type: !36)
!723 = !DILocalVariable(name: "x", arg: 3, scope: !717, file: !2, line: 360, type: !162)
!724 = !DILocalVariable(name: "result", arg: 4, scope: !717, file: !2, line: 360, type: !96)
!725 = !DILocalVariable(name: "P", scope: !726, file: !2, line: 368, type: !97)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 367, column: 19)
!727 = distinct !DILexicalBlock(scope: !728, file: !2, line: 367, column: 11)
!728 = distinct !DILexicalBlock(scope: !717, file: !2, line: 364, column: 6)
!729 = !DILocalVariable(name: "stat_P", scope: !726, file: !2, line: 369, type: !36)
!730 = !DILocalVariable(name: "pre", scope: !726, file: !2, line: 370, type: !74)
!731 = !DILocalVariable(name: "lncirc", scope: !732, file: !2, line: 388, type: !97)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 382, column: 8)
!733 = distinct !DILexicalBlock(scope: !727, file: !2, line: 376, column: 11)
!734 = !DILocalVariable(name: "lnpoch", scope: !732, file: !2, line: 389, type: !97)
!735 = !DILocalVariable(name: "lnpre_val", scope: !732, file: !2, line: 390, type: !74)
!736 = !DILocalVariable(name: "lnpre_err", scope: !732, file: !2, line: 391, type: !74)
!737 = !DILocalVariable(name: "ex_pre", scope: !732, file: !2, line: 392, type: !97)
!738 = !DILocalVariable(name: "sr", scope: !732, file: !2, line: 393, type: !74)
!739 = !DILocalVariable(name: "sgn", scope: !732, file: !2, line: 394, type: !162)
!740 = !DILocalVariable(name: "y_mmp1_factor", scope: !732, file: !2, line: 395, type: !162)
!741 = !DILocalVariable(name: "y_mm", scope: !732, file: !2, line: 396, type: !74)
!742 = !DILocalVariable(name: "y_mm_err", scope: !732, file: !2, line: 396, type: !74)
!743 = !DILocalVariable(name: "y_mmp1", scope: !732, file: !2, line: 397, type: !74)
!744 = !DILocalVariable(name: "y_mmp1_err", scope: !732, file: !2, line: 397, type: !74)
!745 = !DILocalVariable(name: "y_ell", scope: !746, file: !2, line: 425, type: !74)
!746 = distinct !DILexicalBlock(scope: !747, file: !2, line: 424, column: 9)
!747 = distinct !DILexicalBlock(scope: !748, file: !2, line: 418, column: 13)
!748 = distinct !DILexicalBlock(scope: !732, file: !2, line: 412, column: 8)
!749 = !DILocalVariable(name: "y_ell_err", scope: !746, file: !2, line: 426, type: !74)
!750 = !DILocalVariable(name: "ell", scope: !746, file: !2, line: 427, type: !36)
!751 = !DILocalVariable(name: "rat1", scope: !752, file: !2, line: 431, type: !162)
!752 = distinct !DILexicalBlock(scope: !753, file: !2, line: 430, column: 36)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 430, column: 7)
!754 = distinct !DILexicalBlock(scope: !746, file: !2, line: 430, column: 7)
!755 = !DILocalVariable(name: "rat2", scope: !752, file: !2, line: 432, type: !162)
!756 = !DILocalVariable(name: "factor1", scope: !752, file: !2, line: 433, type: !162)
!757 = !DILocalVariable(name: "factor2", scope: !752, file: !2, line: 434, type: !162)
!758 = distinct !DIAssignID()
!759 = !DILocation(line: 0, scope: !726)
!760 = distinct !DIAssignID()
!761 = !DILocation(line: 0, scope: !732)
!762 = distinct !DIAssignID()
!763 = !DILocation(line: 0, scope: !717)
!764 = !DILocation(line: 364, column: 8, scope: !728)
!765 = !DILocation(line: 364, column: 12, scope: !728)
!766 = !DILocation(line: 364, column: 17, scope: !728)
!767 = !DILocation(line: 364, column: 21, scope: !728)
!768 = !DILocation(line: 365, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 365, column: 5)
!770 = distinct !DILexicalBlock(scope: !728, file: !2, line: 364, column: 45)
!771 = !DILocation(line: 365, column: 5, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !2, line: 365, column: 5)
!773 = !DILocation(line: 367, column: 13, scope: !727)
!774 = !DILocation(line: 367, column: 11, scope: !728)
!775 = !DILocation(line: 368, column: 5, scope: !726)
!776 = !DILocation(line: 369, column: 18, scope: !726)
!777 = !DILocation(line: 370, column: 28, scope: !726)
!778 = !DILocation(line: 370, column: 27, scope: !726)
!779 = !DILocation(line: 370, column: 30, scope: !726)
!780 = !DILocation(line: 370, column: 36, scope: !726)
!781 = !DILocation(line: 370, column: 18, scope: !726)
!782 = !DILocation(line: 371, column: 28, scope: !726)
!783 = !DILocation(line: 371, column: 24, scope: !726)
!784 = !DILocation(line: 371, column: 18, scope: !726)
!785 = !DILocation(line: 372, column: 28, scope: !726)
!786 = !DILocation(line: 372, column: 24, scope: !726)
!787 = !DILocation(line: 372, column: 13, scope: !726)
!788 = !DILocation(line: 373, column: 44, scope: !726)
!789 = !DILocation(line: 373, column: 42, scope: !726)
!790 = !DILocation(line: 373, column: 17, scope: !726)
!791 = !DILocation(line: 375, column: 3, scope: !727)
!792 = !DILocation(line: 376, column: 13, scope: !733)
!793 = !DILocation(line: 376, column: 20, scope: !733)
!794 = !DILocation(line: 379, column: 17, scope: !795)
!795 = distinct !DILexicalBlock(scope: !733, file: !2, line: 376, column: 34)
!796 = !DILocation(line: 380, column: 5, scope: !795)
!797 = !DILocation(line: 388, column: 5, scope: !732)
!798 = !DILocation(line: 389, column: 5, scope: !732)
!799 = !DILocation(line: 394, column: 26, scope: !732)
!800 = !DILocation(line: 395, column: 47, scope: !732)
!801 = !DILocation(line: 395, column: 46, scope: !732)
!802 = !DILocation(line: 395, column: 49, scope: !732)
!803 = !DILocation(line: 395, column: 38, scope: !732)
!804 = !DILocation(line: 395, column: 36, scope: !732)
!805 = !DILocation(line: 398, column: 25, scope: !732)
!806 = !DILocation(line: 398, column: 27, scope: !732)
!807 = !DILocation(line: 398, column: 5, scope: !732)
!808 = !DILocation(line: 399, column: 5, scope: !732)
!809 = !DILocation(line: 400, column: 46, scope: !732)
!810 = !DILocation(line: 400, column: 61, scope: !732)
!811 = !DILocation(line: 400, column: 53, scope: !732)
!812 = !DILocation(line: 400, column: 50, scope: !732)
!813 = !DILocation(line: 400, column: 36, scope: !732)
!814 = !DILocation(line: 400, column: 30, scope: !732)
!815 = !DILocation(line: 401, column: 61, scope: !732)
!816 = !DILocation(line: 401, column: 67, scope: !732)
!817 = !DILocation(line: 401, column: 82, scope: !732)
!818 = !DILocation(line: 401, column: 74, scope: !732)
!819 = !DILocation(line: 401, column: 65, scope: !732)
!820 = !DILocation(line: 401, column: 51, scope: !732)
!821 = !DILocation(line: 401, column: 45, scope: !732)
!822 = !DILocation(line: 403, column: 18, scope: !732)
!823 = !DILocation(line: 404, column: 23, scope: !732)
!824 = !DILocation(line: 404, column: 39, scope: !732)
!825 = !DILocation(line: 404, column: 21, scope: !732)
!826 = !DILocation(line: 404, column: 57, scope: !732)
!827 = !DILocation(line: 405, column: 27, scope: !732)
!828 = !DILocation(line: 405, column: 23, scope: !732)
!829 = !DILocation(line: 405, column: 30, scope: !732)
!830 = !DILocation(line: 405, column: 14, scope: !732)
!831 = !DILocation(line: 406, column: 18, scope: !732)
!832 = !DILocation(line: 406, column: 23, scope: !732)
!833 = !DILocation(line: 407, column: 41, scope: !732)
!834 = !DILocation(line: 407, column: 39, scope: !732)
!835 = !DILocation(line: 407, column: 57, scope: !732)
!836 = !DILocation(line: 407, column: 52, scope: !732)
!837 = !DILocation(line: 408, column: 54, scope: !732)
!838 = !DILocation(line: 408, column: 46, scope: !732)
!839 = !DILocation(line: 408, column: 44, scope: !732)
!840 = !DILocation(line: 408, column: 26, scope: !732)
!841 = !DILocation(line: 408, column: 21, scope: !732)
!842 = !DILocation(line: 408, column: 14, scope: !732)
!843 = !DILocation(line: 409, column: 28, scope: !732)
!844 = !DILocation(line: 410, column: 16, scope: !732)
!845 = !DILocation(line: 410, column: 36, scope: !732)
!846 = !DILocation(line: 412, column: 10, scope: !748)
!847 = !DILocation(line: 412, column: 8, scope: !732)
!848 = !DILocation(line: 413, column: 20, scope: !849)
!849 = distinct !DILexicalBlock(scope: !748, file: !2, line: 412, column: 15)
!850 = !DILocation(line: 414, column: 15, scope: !849)
!851 = !DILocation(line: 415, column: 19, scope: !849)
!852 = !DILocation(line: 416, column: 7, scope: !849)
!853 = !DILocation(line: 418, column: 20, scope: !747)
!854 = !DILocation(line: 418, column: 15, scope: !747)
!855 = !DILocation(line: 418, column: 13, scope: !748)
!856 = !DILocation(line: 419, column: 20, scope: !857)
!857 = distinct !DILexicalBlock(scope: !747, file: !2, line: 418, column: 25)
!858 = !DILocation(line: 420, column: 15, scope: !857)
!859 = !DILocation(line: 421, column: 46, scope: !857)
!860 = !DILocation(line: 421, column: 44, scope: !857)
!861 = !DILocation(line: 421, column: 19, scope: !857)
!862 = !DILocation(line: 422, column: 7, scope: !857)
!863 = !DILocation(line: 0, scope: !746)
!864 = !DILocation(line: 430, column: 16, scope: !754)
!865 = !DILocation(line: 430, column: 24, scope: !753)
!866 = !DILocation(line: 430, column: 7, scope: !754)
!867 = !DILocation(line: 431, column: 41, scope: !752)
!868 = !DILocation(line: 431, column: 29, scope: !752)
!869 = !DILocation(line: 431, column: 57, scope: !752)
!870 = !DILocation(line: 431, column: 45, scope: !752)
!871 = !DILocation(line: 431, column: 44, scope: !752)
!872 = !DILocation(line: 0, scope: !752)
!873 = !DILocation(line: 432, column: 35, scope: !752)
!874 = !DILocation(line: 432, column: 47, scope: !752)
!875 = !DILocation(line: 432, column: 40, scope: !752)
!876 = !DILocation(line: 433, column: 47, scope: !752)
!877 = !DILocation(line: 433, column: 46, scope: !752)
!878 = !DILocation(line: 433, column: 50, scope: !752)
!879 = !DILocation(line: 433, column: 41, scope: !752)
!880 = !DILocation(line: 433, column: 64, scope: !752)
!881 = !DILocation(line: 433, column: 55, scope: !752)
!882 = !DILocation(line: 433, column: 32, scope: !752)
!883 = !DILocation(line: 434, column: 41, scope: !752)
!884 = !DILocation(line: 434, column: 46, scope: !752)
!885 = !DILocation(line: 434, column: 69, scope: !752)
!886 = !DILocation(line: 434, column: 60, scope: !752)
!887 = !DILocation(line: 434, column: 32, scope: !752)
!888 = !DILocation(line: 435, column: 19, scope: !752)
!889 = !DILocation(line: 435, column: 26, scope: !752)
!890 = !DILocation(line: 435, column: 48, scope: !752)
!891 = !DILocation(line: 435, column: 53, scope: !752)
!892 = !DILocation(line: 435, column: 35, scope: !752)
!893 = !DILocation(line: 435, column: 63, scope: !752)
!894 = !DILocation(line: 439, column: 32, scope: !752)
!895 = !DILocation(line: 439, column: 26, scope: !752)
!896 = !DILocation(line: 439, column: 41, scope: !752)
!897 = !DILocation(line: 439, column: 71, scope: !752)
!898 = !DILocation(line: 439, column: 55, scope: !752)
!899 = !DILocation(line: 439, column: 80, scope: !752)
!900 = !DILocation(line: 439, column: 53, scope: !752)
!901 = !DILocation(line: 439, column: 24, scope: !752)
!902 = !DILocation(line: 439, column: 93, scope: !752)
!903 = !DILocation(line: 439, column: 91, scope: !752)
!904 = !DILocation(line: 430, column: 33, scope: !753)
!905 = distinct !{!905, !866, !906, !276}
!906 = !DILocation(line: 442, column: 7, scope: !754)
!907 = !DILocation(line: 444, column: 20, scope: !746)
!908 = !DILocation(line: 445, column: 41, scope: !746)
!909 = !DILocation(line: 445, column: 39, scope: !746)
!910 = !DILocation(line: 445, column: 38, scope: !746)
!911 = !DILocation(line: 445, column: 45, scope: !746)
!912 = !DILocation(line: 445, column: 52, scope: !746)
!913 = !DILocation(line: 445, column: 72, scope: !746)
!914 = !DILocation(line: 445, column: 70, scope: !746)
!915 = !DILocation(line: 445, column: 32, scope: !746)
!916 = !DILocation(line: 445, column: 15, scope: !746)
!917 = !DILocation(line: 445, column: 20, scope: !746)
!918 = !DILocation(line: 449, column: 3, scope: !733)
!919 = !DILocation(line: 0, scope: !728)
!920 = !DILocation(line: 450, column: 1, scope: !717)
!921 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !922, file: !922, line: 69, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!923 = !DISubprogram(name: "gsl_sf_lnpoch_e", scope: !924, file: !924, line: 172, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!925 = !DISubroutineType(types: !926)
!926 = !{!36, !162, !162, !96}
!927 = !DISubprogram(name: "exp", scope: !344, file: !344, line: 95, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubprogram(name: "sinh", scope: !344, file: !344, line: 73, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = distinct !DISubprogram(name: "gsl_sf_legendre_P1", scope: !2, file: !2, line: 749, type: !930, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{!74, !162}
!932 = !{!933, !934, !935}
!933 = !DILocalVariable(name: "x", arg: 1, scope: !929, file: !2, line: 749, type: !162)
!934 = !DILocalVariable(name: "result", scope: !929, file: !2, line: 751, type: !97)
!935 = !DILocalVariable(name: "status", scope: !929, file: !2, line: 751, type: !36)
!936 = !DILocation(line: 0, scope: !929)
!937 = !DILocation(line: 752, column: 1, scope: !929)
!938 = distinct !DISubprogram(name: "gsl_sf_legendre_P2", scope: !2, file: !2, line: 754, type: !930, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !939)
!939 = !{!940, !941, !942}
!940 = !DILocalVariable(name: "x", arg: 1, scope: !938, file: !2, line: 754, type: !162)
!941 = !DILocalVariable(name: "result", scope: !938, file: !2, line: 756, type: !97)
!942 = !DILocalVariable(name: "status", scope: !938, file: !2, line: 756, type: !36)
!943 = !DILocation(line: 0, scope: !938)
!944 = !DILocation(line: 0, scope: !118, inlinedAt: !945)
!945 = distinct !DILocation(line: 756, column: 3, scope: !938)
!946 = !DILocation(line: 83, column: 27, scope: !124, inlinedAt: !945)
!947 = !DILocation(line: 83, column: 29, scope: !124, inlinedAt: !945)
!948 = !DILocation(line: 83, column: 32, scope: !124, inlinedAt: !945)
!949 = !DILocation(line: 83, column: 22, scope: !124, inlinedAt: !945)
!950 = !DILocation(line: 757, column: 1, scope: !938)
!951 = distinct !DISubprogram(name: "gsl_sf_legendre_P3", scope: !2, file: !2, line: 759, type: !930, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !952)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "x", arg: 1, scope: !951, file: !2, line: 759, type: !162)
!954 = !DILocalVariable(name: "result", scope: !951, file: !2, line: 761, type: !97)
!955 = !DILocalVariable(name: "status", scope: !951, file: !2, line: 761, type: !36)
!956 = !DILocation(line: 0, scope: !951)
!957 = !DILocation(line: 0, scope: !135, inlinedAt: !958)
!958 = distinct !DILocation(line: 761, column: 3, scope: !951)
!959 = !DILocation(line: 95, column: 22, scope: !141, inlinedAt: !958)
!960 = !DILocation(line: 95, column: 29, scope: !141, inlinedAt: !958)
!961 = !DILocation(line: 95, column: 31, scope: !141, inlinedAt: !958)
!962 = !DILocation(line: 95, column: 34, scope: !141, inlinedAt: !958)
!963 = !DILocation(line: 95, column: 24, scope: !141, inlinedAt: !958)
!964 = !DILocation(line: 762, column: 1, scope: !951)
!965 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl", scope: !2, file: !2, line: 764, type: !966, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!74, !161, !162}
!968 = !{!969, !970, !971, !972}
!969 = !DILocalVariable(name: "l", arg: 1, scope: !965, file: !2, line: 764, type: !161)
!970 = !DILocalVariable(name: "x", arg: 2, scope: !965, file: !2, line: 764, type: !162)
!971 = !DILocalVariable(name: "result", scope: !965, file: !2, line: 766, type: !97)
!972 = !DILocalVariable(name: "status", scope: !965, file: !2, line: 766, type: !36)
!973 = distinct !DIAssignID()
!974 = !DILocation(line: 0, scope: !965)
!975 = !DILocation(line: 766, column: 3, scope: !965)
!976 = !DILocation(line: 766, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !965, file: !2, line: 766, column: 3)
!978 = !DILocation(line: 766, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !2, line: 766, column: 3)
!980 = distinct !DILexicalBlock(scope: !977, file: !2, line: 766, column: 3)
!981 = !DILocation(line: 767, column: 1, scope: !965)
!982 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm", scope: !2, file: !2, line: 769, type: !983, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!74, !161, !161, !162}
!985 = !{!986, !987, !988, !989, !990}
!986 = !DILocalVariable(name: "l", arg: 1, scope: !982, file: !2, line: 769, type: !161)
!987 = !DILocalVariable(name: "m", arg: 2, scope: !982, file: !2, line: 769, type: !161)
!988 = !DILocalVariable(name: "x", arg: 3, scope: !982, file: !2, line: 769, type: !162)
!989 = !DILocalVariable(name: "result", scope: !982, file: !2, line: 771, type: !97)
!990 = !DILocalVariable(name: "status", scope: !982, file: !2, line: 771, type: !36)
!991 = distinct !DIAssignID()
!992 = !DILocation(line: 0, scope: !982)
!993 = !DILocation(line: 771, column: 3, scope: !982)
!994 = !{i32 0, i32 17}
!995 = !DILocation(line: 771, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !982, file: !2, line: 771, column: 3)
!997 = !DILocation(line: 771, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 771, column: 3)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 771, column: 3)
!1000 = !DILocation(line: 772, column: 1, scope: !982)
!1001 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm", scope: !2, file: !2, line: 774, type: !983, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007}
!1003 = !DILocalVariable(name: "l", arg: 1, scope: !1001, file: !2, line: 774, type: !161)
!1004 = !DILocalVariable(name: "m", arg: 2, scope: !1001, file: !2, line: 774, type: !161)
!1005 = !DILocalVariable(name: "x", arg: 3, scope: !1001, file: !2, line: 774, type: !162)
!1006 = !DILocalVariable(name: "result", scope: !1001, file: !2, line: 776, type: !97)
!1007 = !DILocalVariable(name: "status", scope: !1001, file: !2, line: 776, type: !36)
!1008 = distinct !DIAssignID()
!1009 = !DILocation(line: 0, scope: !1001)
!1010 = !DILocation(line: 776, column: 3, scope: !1001)
!1011 = !DILocation(line: 776, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 776, column: 3)
!1013 = !DILocation(line: 776, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 776, column: 3)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 776, column: 3)
!1016 = !DILocation(line: 777, column: 1, scope: !1001)
