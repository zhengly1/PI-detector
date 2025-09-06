; ModuleID = 'legendre_poly.ll'
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
  %handler_result = call double @fAddHandlerDouble(double %4, double -1.000000e+00), !dbg !126
  %5 = fmul double %handler_result, 5.000000e-01, !dbg !126
  store double %5, ptr %1, align 8, !dbg !127, !tbaa !109
  %6 = tail call double @llvm.fabs.f64(double %4), !dbg !128
  %handler_result1 = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !129
  %7 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !129
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !130
  store double %7, ptr %8, align 8, !dbg !131, !tbaa !116
  ret i32 0, !dbg !132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_legendre_P3_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !133 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !135, metadata !DIExpression()), !dbg !137
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !136, metadata !DIExpression()), !dbg !137
  %3 = fmul double %0, 5.000000e-01, !dbg !138
  %4 = fmul double %0, 5.000000e+00, !dbg !140
  %5 = fmul double %4, %0, !dbg !141
  %handler_result = call double @fAddHandlerDouble(double %5, double -3.000000e+00), !dbg !142
  %6 = fmul double %3, %handler_result, !dbg !142
  store double %6, ptr %1, align 8, !dbg !143, !tbaa !109
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !144
  %8 = tail call double @llvm.fabs.f64(double %0), !dbg !145
  %9 = fmul double %8, 5.000000e-01, !dbg !146
  %10 = tail call double @llvm.fabs.f64(double %5), !dbg !147
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 3.000000e+00), !dbg !148
  %11 = fmul double %9, %handler_result1, !dbg !148
  %handler_result2 = call double @fAddHandlerDouble(double %7, double %11), !dbg !149
  %12 = fmul double %handler_result2, 0x3CB0000000000000, !dbg !149
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !150
  store double %12, ptr %13, align 8, !dbg !151, !tbaa !116
  ret i32 0, !dbg !152
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !153 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !191
  call void @llvm.dbg.assign(metadata i1 undef, metadata !180, metadata !DIExpression(), metadata !191, metadata ptr %4, metadata !DIExpression()), !dbg !192
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !193
  call void @llvm.dbg.assign(metadata i1 undef, metadata !181, metadata !DIExpression(), metadata !193, metadata ptr %5, metadata !DIExpression()), !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !159, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata double %1, metadata !160, metadata !DIExpression()), !dbg !194
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !161, metadata !DIExpression()), !dbg !194
  %6 = icmp slt i32 %0, 0, !dbg !195
  %7 = fcmp olt double %1, -1.000000e+00
  %8 = or i1 %6, %7, !dbg !196
  %9 = fcmp ogt double %1, 1.000000e+00
  %10 = or i1 %9, %8, !dbg !196
  br i1 %10, label %11, label %13, !dbg !196

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !197, !tbaa !109
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !197
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !197, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 1) #8, !dbg !200
  br label %112, !dbg !200

13:                                               ; preds = %3
  switch i32 %0, label %25 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
  ], !dbg !202

14:                                               ; preds = %13
  store double 1.000000e+00, ptr %2, align 8, !dbg !203, !tbaa !109
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !205
  store double 0.000000e+00, ptr %15, align 8, !dbg !206, !tbaa !116
  br label %112, !dbg !207

16:                                               ; preds = %13
  store double %1, ptr %2, align 8, !dbg !208, !tbaa !109
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !210
  store double 0.000000e+00, ptr %17, align 8, !dbg !211, !tbaa !116
  br label %112, !dbg !212

18:                                               ; preds = %13
  %19 = fmul double %1, 3.000000e+00, !dbg !213
  %20 = fmul double %19, %1, !dbg !215
  %handler_result = call double @fAddHandlerDouble(double %20, double -1.000000e+00), !dbg !216
  %21 = fmul double %handler_result, 5.000000e-01, !dbg !216
  store double %21, ptr %2, align 8, !dbg !217, !tbaa !109
  %22 = tail call double @llvm.fabs.f64(double %20), !dbg !218
  %handler_result1 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !219
  %23 = fmul double %handler_result1, 0x3CB0000000000000, !dbg !219
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !220
  store double %23, ptr %24, align 8, !dbg !221, !tbaa !116
  br label %112, !dbg !222

25:                                               ; preds = %13
  %26 = fcmp oeq double %1, 1.000000e+00, !dbg !223
  br i1 %26, label %27, label %29, !dbg !224

27:                                               ; preds = %25
  store double 1.000000e+00, ptr %2, align 8, !dbg !225, !tbaa !109
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !227
  store double 0.000000e+00, ptr %28, align 8, !dbg !228, !tbaa !116
  br label %112, !dbg !229

29:                                               ; preds = %25
  %30 = fcmp oeq double %1, -1.000000e+00, !dbg !230
  br i1 %30, label %31, label %36, !dbg !231

31:                                               ; preds = %29
  %32 = and i32 %0, 1, !dbg !232
  %33 = icmp eq i32 %32, 0, !dbg !232
  %34 = select i1 %33, double 1.000000e+00, double -1.000000e+00, !dbg !232
  store double %34, ptr %2, align 8, !dbg !234, !tbaa !109
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !235
  store double 0.000000e+00, ptr %35, align 8, !dbg !236, !tbaa !116
  br label %112, !dbg !237

36:                                               ; preds = %29
  %37 = icmp ult i32 %0, 100000, !dbg !238
  br i1 %37, label %38, label %70, !dbg !239

38:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !162, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %1, metadata !171, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %1, metadata !172, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !173, metadata !DIExpression()), !dbg !240
  %39 = tail call double @llvm.fabs.f64(double %1), !dbg !241
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !242
  tail call void @llvm.dbg.value(metadata double %40, metadata !174, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %40, metadata !175, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i32 2, metadata !176, metadata !DIExpression()), !dbg !240
  br label %41, !dbg !243

41:                                               ; preds = %41, %38
  %42 = phi double [ %43, %41 ], [ 1.000000e+00, %38 ]
  %43 = phi double [ %56, %41 ], [ %1, %38 ]
  %44 = phi double [ %45, %41 ], [ 0x3CB0000000000000, %38 ]
  %45 = phi double [ %61, %41 ], [ %40, %38 ]
  %46 = phi i32 [ %62, %41 ], [ 2, %38 ]
  tail call void @llvm.dbg.value(metadata double %42, metadata !162, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %43, metadata !171, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %44, metadata !173, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %45, metadata !174, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !176, metadata !DIExpression()), !dbg !240
  %47 = shl nuw nsw i32 %46, 1, !dbg !245
  %48 = add nsw i32 %47, -1, !dbg !248
  %49 = sitofp i32 %48 to double, !dbg !249
  %50 = fmul double %49, %1, !dbg !250
  %51 = fmul double %43, %50, !dbg !251
  %52 = add nsw i32 %46, -1, !dbg !252
  %53 = sitofp i32 %52 to double, !dbg !253
  %54 = fmul double %42, %53, !dbg !254
  %handler_result2 = call double @fSubHandlerDouble(double %51, double %54), !dbg !255
  %55 = sitofp i32 %46 to double, !dbg !255
  %56 = fdiv double %handler_result2, %55, !dbg !256
  tail call void @llvm.dbg.value(metadata double %56, metadata !172, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %43, metadata !162, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %56, metadata !171, metadata !DIExpression()), !dbg !240
  %57 = fmul double %39, %49, !dbg !257
  %58 = fmul double %45, %57, !dbg !258
  %handler_result3 = call double @fAddHandlerDouble(double %55, double -1.000000e+00), !dbg !259
  %59 = fmul double %handler_result3, %44, !dbg !259
  %handler_result4 = call double @fAddHandlerDouble(double %59, double %58), !dbg !260
  %60 = fmul double %handler_result4, 5.000000e-01, !dbg !260
  %61 = fdiv double %60, %55, !dbg !261
  tail call void @llvm.dbg.value(metadata double %61, metadata !175, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %45, metadata !173, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %61, metadata !174, metadata !DIExpression()), !dbg !240
  %62 = add nuw i32 %46, 1, !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !176, metadata !DIExpression()), !dbg !240
  %63 = icmp eq i32 %46, %0, !dbg !263
  br i1 %63, label %64, label %41, !dbg !243, !llvm.loop !264

64:                                               ; preds = %41
  %65 = tail call double @llvm.fabs.f64(double %56), !dbg !267
  store double %56, ptr %2, align 8, !dbg !268, !tbaa !109
  %66 = sitofp i32 %0 to double, !dbg !269
  %67 = fmul double %65, %66, !dbg !270
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !271
  %handler_result5 = call double @fAddHandlerDouble(double %61, double %68), !dbg !272
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !272
  store double %handler_result5, ptr %69, align 8, !dbg !273, !tbaa !116
  br label %112

70:                                               ; preds = %36
  %71 = sitofp i32 %0 to double, !dbg !274
  %handler_result6 = call double @fAddHandlerDouble(double %71, double 5.000000e-01), !dbg !275
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !177, metadata !DIExpression()), !dbg !192
  %handler_result14 = call double @callHandler(i32 5, double %1, double %1), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !179, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !276
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !277
  %72 = fmul double %handler_result6, %handler_result14, !dbg !278
  %73 = call i32 @gsl_sf_bessel_J0_e(double noundef %72, ptr noundef nonnull %4) #8, !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !182, metadata !DIExpression()), !dbg !192
  %74 = call i32 @gsl_sf_bessel_Jn_e(i32 noundef -1, double noundef %72, ptr noundef nonnull %5) #8, !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !183, metadata !DIExpression()), !dbg !192
  %75 = fcmp olt double %handler_result14, 0x3F20000000000000, !dbg !281
  br i1 %75, label %76, label %81, !dbg !282

76:                                               ; preds = %70
  %77 = fmul double %handler_result14, %handler_result14, !dbg !283
  %78 = fdiv double %77, 1.500000e+01, !dbg !285
  %handler_result7 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !286
  %79 = fdiv double %handler_result7, 2.400000e+01, !dbg !286
  tail call void @llvm.dbg.value(metadata double %79, metadata !185, metadata !DIExpression()), !dbg !192
  %80 = fdiv double %77, 1.200000e+01, !dbg !287
  %handler_result8 = call double @fAddHandlerDouble(double %80, double 1.000000e+00), !dbg !288
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !184, metadata !DIExpression()), !dbg !192
  br label %91, !dbg !288

81:                                               ; preds = %70
  %82 = fmul double %1, %1, !dbg !289
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %82), !dbg !290
  %83 = call double @sqrt(double noundef %handler_result9) #8, !dbg !290
  tail call void @llvm.dbg.value(metadata double %83, metadata !187, metadata !DIExpression()), !dbg !291
  %84 = fdiv double %1, %83, !dbg !292
  tail call void @llvm.dbg.value(metadata double %84, metadata !190, metadata !DIExpression()), !dbg !291
  %85 = fmul double %handler_result14, %84, !dbg !293
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %85), !dbg !294
  %86 = fmul double %handler_result10, 1.250000e-01, !dbg !294
  %87 = fmul double %handler_result14, %handler_result14, !dbg !295
  %88 = fdiv double %86, %87, !dbg !296
  tail call void @llvm.dbg.value(metadata double %88, metadata !185, metadata !DIExpression()), !dbg !192
  %89 = fdiv double %handler_result14, %83, !dbg !297
  %90 = call double @sqrt(double noundef %89) #8, !dbg !298
  tail call void @llvm.dbg.value(metadata double %90, metadata !184, metadata !DIExpression()), !dbg !192
  br label %91

91:                                               ; preds = %81, %76
  %92 = phi double [ %handler_result8, %76 ], [ %90, %81 ], !dbg !299
  %93 = phi double [ %79, %76 ], [ %88, %81 ], !dbg !299
  tail call void @llvm.dbg.value(metadata double %93, metadata !185, metadata !DIExpression()), !dbg !192
  tail call void @llvm.dbg.value(metadata double %92, metadata !184, metadata !DIExpression()), !dbg !192
  %94 = fdiv double %handler_result14, %handler_result6, !dbg !300
  %95 = fmul double %94, %93, !dbg !301
  tail call void @llvm.dbg.value(metadata double %95, metadata !186, metadata !DIExpression()), !dbg !192
  %96 = load double, ptr %4, align 8, !dbg !302, !tbaa !109
  %97 = load double, ptr %5, align 8, !dbg !303, !tbaa !109
  %98 = fmul double %95, %97, !dbg !304
  %handler_result11 = call double @fAddHandlerDouble(double %96, double %98), !dbg !305
  %99 = fmul double %92, %handler_result11, !dbg !305
  store double %99, ptr %2, align 8, !dbg !306, !tbaa !109
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !307
  %101 = load double, ptr %100, align 8, !dbg !307, !tbaa !116
  %102 = call double @llvm.fabs.f64(double %95), !dbg !308
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !309
  %104 = load double, ptr %103, align 8, !dbg !309, !tbaa !116
  %105 = fmul double %102, %104, !dbg !310
  %handler_result12 = call double @fAddHandlerDouble(double %101, double %105), !dbg !311
  %106 = fmul double %92, %handler_result12, !dbg !311
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !312
  %108 = call double @llvm.fabs.f64(double %99), !dbg !313
  %109 = fmul double %108, 0x3E50000000000000, !dbg !314
  %handler_result13 = call double @fAddHandlerDouble(double %109, double %106), !dbg !315
  store double %handler_result13, ptr %107, align 8, !dbg !315, !tbaa !116
  %110 = icmp eq i32 %73, 0, !dbg !316
  %111 = select i1 %110, i32 %74, i32 %73, !dbg !316
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !317
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !317
  br label %112

112:                                              ; preds = %91, %64, %31, %27, %18, %16, %14, %11
  %113 = phi i32 [ 1, %11 ], [ 0, %14 ], [ 0, %16 ], [ 0, %18 ], [ 0, %27 ], [ 0, %31 ], [ 0, %64 ], [ %111, %91 ], !dbg !318
  ret i32 %113, !dbg !319
}

declare !dbg !320 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !325 double @acos(double noundef) local_unnamed_addr #5

declare !dbg !329 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !333 i32 @gsl_sf_bessel_Jn_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !336 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Pl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !337 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !342, metadata !DIExpression()), !dbg !353
  tail call void @llvm.dbg.value(metadata double %1, metadata !343, metadata !DIExpression()), !dbg !353
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !353
  %4 = icmp slt i32 %0, 0, !dbg !354
  %5 = fcmp olt double %1, -1.000000e+00
  %6 = or i1 %4, %5, !dbg !355
  %7 = fcmp ogt double %1, 1.000000e+00
  %8 = or i1 %7, %6, !dbg !355
  br i1 %8, label %9, label %10, !dbg !355

9:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 1) #8, !dbg !356
  br label %37, !dbg !356

10:                                               ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !359, !tbaa !360
  switch i32 %0, label %13 [
    i32 0, label %37
    i32 1, label %11
  ], !dbg !361

11:                                               ; preds = %10
  %12 = getelementptr inbounds double, ptr %2, i64 1, !dbg !362
  store double %1, ptr %12, align 8, !dbg !364, !tbaa !360
  br label %37, !dbg !365

13:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !345, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %1, metadata !350, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %1, metadata !351, metadata !DIExpression()), !dbg !366
  %14 = getelementptr inbounds double, ptr %2, i64 1, !dbg !367
  store double %1, ptr %14, align 8, !dbg !368, !tbaa !360
  tail call void @llvm.dbg.value(metadata i32 2, metadata !352, metadata !DIExpression()), !dbg !366
  %15 = add nuw i32 %0, 1, !dbg !369
  %16 = zext i32 %15 to i64, !dbg !371
  br label %17, !dbg !369

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 2, %13 ], [ %35, %17 ]
  %19 = phi double [ %1, %13 ], [ %33, %17 ]
  %20 = phi double [ 1.000000e+00, %13 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !352, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %19, metadata !350, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %20, metadata !345, metadata !DIExpression()), !dbg !366
  %21 = trunc i64 %18 to i32, !dbg !373
  %22 = shl i32 %21, 1, !dbg !373
  %23 = add i32 %22, -1, !dbg !373
  %24 = sitofp i32 %23 to double, !dbg !373
  %25 = fmul double %24, %1, !dbg !375
  %26 = fmul double %19, %25, !dbg !376
  %27 = trunc i64 %18 to i32, !dbg !377
  %28 = add i32 %27, -1, !dbg !377
  %29 = sitofp i32 %28 to double, !dbg !377
  %30 = fmul double %20, %29, !dbg !378
  %handler_result = call double @fSubHandlerDouble(double %26, double %30), !dbg !379
  %31 = trunc i64 %18 to i32, !dbg !379
  %32 = sitofp i32 %31 to double, !dbg !379
  %33 = fdiv double %handler_result, %32, !dbg !380
  tail call void @llvm.dbg.value(metadata double %33, metadata !351, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %19, metadata !345, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %33, metadata !350, metadata !DIExpression()), !dbg !366
  %34 = getelementptr inbounds double, ptr %2, i64 %18, !dbg !381
  store double %33, ptr %34, align 8, !dbg !382, !tbaa !360
  %35 = add nuw nsw i64 %18, 1, !dbg !383
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !352, metadata !DIExpression()), !dbg !366
  %36 = icmp eq i64 %35, %16, !dbg !371
  br i1 %36, label %37, label %17, !dbg !369, !llvm.loop !384

37:                                               ; preds = %17, %11, %10, %9
  %38 = phi i32 [ 1, %9 ], [ 0, %11 ], [ %0, %10 ], [ 0, %17 ], !dbg !386
  ret i32 %38, !dbg !387
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Pl_deriv_array(i32 noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !388 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %1, metadata !393, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !395, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i32 %0, metadata !342, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata double %1, metadata !343, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !417
  %5 = icmp slt i32 %0, 0, !dbg !419
  %6 = fcmp olt double %1, -1.000000e+00
  %7 = or i1 %5, %6, !dbg !420
  %8 = fcmp ogt double %1, 1.000000e+00
  %9 = or i1 %8, %7, !dbg !420
  br i1 %9, label %10, label %11, !dbg !420

10:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 1) #8, !dbg !421
  br label %37, !dbg !421

11:                                               ; preds = %4
  store double 1.000000e+00, ptr %2, align 8, !dbg !422, !tbaa !360
  switch i32 %0, label %15 [
    i32 0, label %12
    i32 1, label %13
  ], !dbg !423

12:                                               ; preds = %11
  store double 0.000000e+00, ptr %3, align 8, !dbg !424, !tbaa !360
  br label %48, !dbg !426

13:                                               ; preds = %11
  %14 = getelementptr inbounds double, ptr %2, i64 1, !dbg !427
  store double %1, ptr %14, align 8, !dbg !428, !tbaa !360
  store double 0.000000e+00, ptr %3, align 8, !dbg !424, !tbaa !360
  br label %42, !dbg !429

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !345, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %1, metadata !350, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %1, metadata !351, metadata !DIExpression()), !dbg !430
  %16 = getelementptr inbounds double, ptr %2, i64 1, !dbg !431
  store double %1, ptr %16, align 8, !dbg !432, !tbaa !360
  call void @llvm.dbg.value(metadata i32 2, metadata !352, metadata !DIExpression()), !dbg !430
  %17 = add nuw i32 %0, 1, !dbg !433
  %18 = zext i32 %17 to i64, !dbg !434
  br label %19, !dbg !433

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 2, %15 ], [ %35, %19 ]
  %21 = phi double [ %1, %15 ], [ %33, %19 ]
  %22 = phi double [ 1.000000e+00, %15 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !352, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %21, metadata !350, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %22, metadata !345, metadata !DIExpression()), !dbg !430
  %23 = trunc i64 %20 to i32, !dbg !435
  %24 = shl i32 %23, 1, !dbg !435
  %25 = add i32 %24, -1, !dbg !435
  %26 = sitofp i32 %25 to double, !dbg !435
  %27 = fmul double %26, %1, !dbg !436
  %28 = fmul double %21, %27, !dbg !437
  %29 = add i32 %23, -1, !dbg !438
  %30 = sitofp i32 %29 to double, !dbg !438
  %31 = fmul double %22, %30, !dbg !439
  %handler_result = call double @fSubHandlerDouble(double %28, double %31), !dbg !440
  %32 = sitofp i32 %23 to double, !dbg !440
  %33 = fdiv double %handler_result, %32, !dbg !441
  call void @llvm.dbg.value(metadata double %33, metadata !351, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %21, metadata !345, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata double %33, metadata !350, metadata !DIExpression()), !dbg !430
  %34 = getelementptr inbounds double, ptr %2, i64 %20, !dbg !442
  store double %33, ptr %34, align 8, !dbg !443, !tbaa !360
  %35 = add nuw nsw i64 %20, 1, !dbg !444
  call void @llvm.dbg.value(metadata i64 %35, metadata !352, metadata !DIExpression()), !dbg !430
  %36 = icmp eq i64 %35, %18, !dbg !434
  br i1 %36, label %37, label %19, !dbg !433, !llvm.loop !445

37:                                               ; preds = %19, %10
  %38 = phi i32 [ 1, %10 ], [ 0, %19 ], !dbg !447
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !396, metadata !DIExpression()), !dbg !416
  %39 = icmp sgt i32 %0, -1, !dbg !448
  br i1 %39, label %40, label %45, !dbg !449

40:                                               ; preds = %37
  store double 0.000000e+00, ptr %3, align 8, !dbg !424, !tbaa !360
  %41 = icmp eq i32 %0, 0, !dbg !450
  br i1 %41, label %45, label %42, !dbg !429

42:                                               ; preds = %40, %13
  %43 = phi i32 [ 0, %13 ], [ %38, %40 ]
  %44 = getelementptr inbounds double, ptr %3, i64 1, !dbg !452
  store double 1.000000e+00, ptr %44, align 8, !dbg !453, !tbaa !360
  br label %45, !dbg !452

45:                                               ; preds = %42, %40, %37
  %46 = phi i32 [ %43, %42 ], [ %38, %40 ], [ %38, %37 ]
  %47 = icmp eq i32 %46, 0, !dbg !454
  br i1 %47, label %48, label %180, !dbg !426

48:                                               ; preds = %45, %12
  %handler_result1 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !455
  %49 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !455
  %50 = sitofp i32 %0 to double, !dbg !456
  %handler_result2 = call double @fAddHandlerDouble(double %50, double 1.000000e+00), !dbg !457
  %51 = fmul double %handler_result2, %49, !dbg !457
  %52 = fmul double %handler_result2, %51, !dbg !458
  %53 = fcmp olt double %52, 0x3E50000000000000, !dbg !459
  br i1 %53, label %54, label %88, !dbg !460

54:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata i32 2, metadata !397, metadata !DIExpression()), !dbg !461
  %55 = icmp slt i32 %0, 2, !dbg !462
  br i1 %55, label %180, label %56, !dbg !463

56:                                               ; preds = %54
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %1)
  %57 = fmul double %handler_result3, 2.500000e-01
  %58 = add nuw i32 %0, 1, !dbg !463
  %59 = zext i32 %58 to i64, !dbg !462
  %60 = and i64 %59, 1, !dbg !463
  %61 = icmp eq i32 %58, 3, !dbg !463
  br i1 %61, label %153, label %62, !dbg !463

62:                                               ; preds = %56
  %63 = and i64 %59, 4294967294, !dbg !463
  %64 = add nsw i64 %63, -4
  br label %65, !dbg !463

65:                                               ; preds = %65, %62
  %66 = phi i64 [ 2, %62 ], [ %85, %65 ]
  %67 = phi i64 [ 0, %62 ], [ %86, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !397, metadata !DIExpression()), !dbg !461
  %68 = trunc i64 %66 to i32, !dbg !464
  %69 = sitofp i32 %68 to double, !dbg !464
  %70 = fmul double %69, 5.000000e-01, !dbg !465
  %handler_result4 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !466
  %71 = fmul double %70, %handler_result4, !dbg !466
  tail call void @llvm.dbg.value(metadata double %71, metadata !400, metadata !DIExpression()), !dbg !467
  %handler_result5 = call double @fAddHandlerDouble(double %69, double 2.000000e+00), !dbg !468
  %72 = fmul double %57, %handler_result5, !dbg !468
  %handler_result6 = call double @fAddHandlerDouble(double %69, double -1.000000e+00), !dbg !469
  %73 = fmul double %handler_result6, %72, !dbg !469
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %73), !dbg !470
  %74 = fmul double %71, %handler_result7, !dbg !470
  %75 = getelementptr inbounds double, ptr %3, i64 %66, !dbg !471
  store double %74, ptr %75, align 8, !dbg !472, !tbaa !360
  %76 = or disjoint i64 %66, 1, !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !397, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !397, metadata !DIExpression()), !dbg !461
  %77 = trunc i64 %76 to i32, !dbg !464
  %78 = sitofp i32 %77 to double, !dbg !464
  %79 = fmul double %78, 5.000000e-01, !dbg !465
  %handler_result8 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !466
  %80 = fmul double %79, %handler_result8, !dbg !466
  tail call void @llvm.dbg.value(metadata double %80, metadata !400, metadata !DIExpression()), !dbg !467
  %handler_result9 = call double @fAddHandlerDouble(double %78, double 2.000000e+00), !dbg !468
  %81 = fmul double %57, %handler_result9, !dbg !468
  %handler_result10 = call double @fAddHandlerDouble(double %78, double -1.000000e+00), !dbg !469
  %82 = fmul double %handler_result10, %81, !dbg !469
  %handler_result11 = call double @fSubHandlerDouble(double 1.000000e+00, double %82), !dbg !470
  %83 = fmul double %80, %handler_result11, !dbg !470
  %84 = getelementptr inbounds double, ptr %3, i64 %76, !dbg !471
  store double %83, ptr %84, align 8, !dbg !472, !tbaa !360
  %85 = add nuw nsw i64 %66, 2, !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !397, metadata !DIExpression()), !dbg !461
  %86 = add i64 %67, 2, !dbg !463
  %87 = icmp eq i64 %67, %64, !dbg !463
  br i1 %87, label %153, label %65, !dbg !463, !llvm.loop !474

88:                                               ; preds = %48
  %handler_result12 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !476
  %89 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !476
  %90 = fmul double %handler_result2, %89, !dbg !477
  %91 = fmul double %handler_result2, %90, !dbg !478
  %92 = fcmp olt double %91, 0x3E50000000000000, !dbg !479
  %93 = icmp slt i32 %0, 2, !dbg !480
  br i1 %92, label %94, label %114, !dbg !481

94:                                               ; preds = %88
  tail call void @llvm.dbg.value(metadata i32 2, metadata !397, metadata !DIExpression()), !dbg !461
  br i1 %93, label %180, label %95, !dbg !482

95:                                               ; preds = %94
  %96 = fmul double %handler_result12, 2.500000e-01
  %97 = add nuw i32 %0, 1, !dbg !482
  %98 = zext i32 %97 to i64, !dbg !483
  br label %99, !dbg !482

99:                                               ; preds = %99, %95
  %100 = phi i64 [ 2, %95 ], [ %112, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !397, metadata !DIExpression()), !dbg !461
  %101 = trunc i64 %100 to i32, !dbg !484
  %102 = and i32 %101, 1, !dbg !484
  %103 = icmp eq i32 %102, 0, !dbg !484
  tail call void @llvm.dbg.value(metadata double poison, metadata !406, metadata !DIExpression()), !dbg !485
  %104 = select i1 %103, double -5.000000e-01, double 5.000000e-01, !dbg !486
  %105 = sitofp i32 %101 to double, !dbg !487
  %106 = fmul double %104, %105, !dbg !488
  %handler_result13 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !489
  %107 = fmul double %handler_result13, %106, !dbg !489
  tail call void @llvm.dbg.value(metadata double %107, metadata !412, metadata !DIExpression()), !dbg !485
  %handler_result14 = call double @fAddHandlerDouble(double %105, double 2.000000e+00), !dbg !490
  %108 = fmul double %96, %handler_result14, !dbg !490
  %handler_result15 = call double @fAddHandlerDouble(double %105, double -1.000000e+00), !dbg !491
  %109 = fmul double %handler_result15, %108, !dbg !491
  %handler_result16 = call double @fSubHandlerDouble(double 1.000000e+00, double %109), !dbg !492
  %110 = fmul double %107, %handler_result16, !dbg !492
  %111 = getelementptr inbounds double, ptr %3, i64 %100, !dbg !493
  store double %110, ptr %111, align 8, !dbg !494, !tbaa !360
  %112 = add nuw nsw i64 %100, 1, !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !397, metadata !DIExpression()), !dbg !461
  %113 = icmp eq i64 %112, %98, !dbg !483
  br i1 %113, label %180, label %99, !dbg !482, !llvm.loop !496

114:                                              ; preds = %88
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !413, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata double poison, metadata !415, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata i32 2, metadata !397, metadata !DIExpression()), !dbg !461
  br i1 %93, label %180, label %115, !dbg !499

115:                                              ; preds = %114
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %1)
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !415, metadata !DIExpression()), !dbg !498
  %116 = fmul double %handler_result12, %handler_result17
  %117 = add nuw i32 %0, 1, !dbg !499
  %118 = zext i32 %117 to i64, !dbg !501
  %119 = and i64 %118, 1, !dbg !499
  %120 = icmp eq i32 %117, 3, !dbg !499
  br i1 %120, label %165, label %121, !dbg !499

121:                                              ; preds = %115
  %122 = and i64 %118, 4294967294, !dbg !499
  %123 = add nsw i64 %122, -4
  br label %124, !dbg !499

124:                                              ; preds = %124, %121
  %125 = phi i64 [ 2, %121 ], [ %150, %124 ]
  %126 = phi i64 [ 0, %121 ], [ %151, %124 ]
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !397, metadata !DIExpression()), !dbg !461
  %127 = trunc i64 %125 to i32, !dbg !503
  %128 = sub i32 0, %127, !dbg !503
  %129 = sitofp i32 %128 to double, !dbg !503
  %130 = getelementptr inbounds double, ptr %2, i64 %125, !dbg !505
  %131 = load double, ptr %130, align 8, !dbg !505, !tbaa !360
  %132 = fmul double %131, %1, !dbg !506
  %133 = getelementptr double, ptr %130, i64 -1, !dbg !507
  %134 = load double, ptr %133, align 8, !dbg !507, !tbaa !360
  %handler_result18 = call double @fSubHandlerDouble(double %132, double %134), !dbg !508
  %135 = fmul double %handler_result18, %129, !dbg !508
  %136 = fdiv double %135, %116, !dbg !509
  %137 = getelementptr inbounds double, ptr %3, i64 %125, !dbg !510
  store double %136, ptr %137, align 8, !dbg !511, !tbaa !360
  %138 = or disjoint i64 %125, 1, !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !397, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !397, metadata !DIExpression()), !dbg !461
  %139 = trunc i64 %138 to i32, !dbg !503
  %140 = sub nsw i32 0, %139, !dbg !503
  %141 = sitofp i32 %140 to double, !dbg !503
  %142 = getelementptr inbounds double, ptr %2, i64 %138, !dbg !505
  %143 = load double, ptr %142, align 8, !dbg !505, !tbaa !360
  %144 = fmul double %143, %1, !dbg !506
  %145 = getelementptr double, ptr %142, i64 -1, !dbg !507
  %146 = load double, ptr %145, align 8, !dbg !507, !tbaa !360
  %handler_result19 = call double @fSubHandlerDouble(double %144, double %146), !dbg !508
  %147 = fmul double %handler_result19, %141, !dbg !508
  %148 = fdiv double %147, %116, !dbg !509
  %149 = getelementptr inbounds double, ptr %3, i64 %138, !dbg !510
  store double %148, ptr %149, align 8, !dbg !511, !tbaa !360
  %150 = add nuw nsw i64 %125, 2, !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !397, metadata !DIExpression()), !dbg !461
  %151 = add i64 %126, 2, !dbg !499
  %152 = icmp eq i64 %126, %123, !dbg !499
  br i1 %152, label %165, label %124, !dbg !499, !llvm.loop !513

153:                                              ; preds = %65, %56
  %154 = phi i64 [ 2, %56 ], [ %85, %65 ]
  %155 = icmp eq i64 %60, 0, !dbg !463
  br i1 %155, label %180, label %156, !dbg !463

156:                                              ; preds = %153
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !397, metadata !DIExpression()), !dbg !461
  %157 = trunc i64 %154 to i32, !dbg !464
  %158 = sitofp i32 %157 to double, !dbg !464
  %159 = fmul double %158, 5.000000e-01, !dbg !465
  %handler_result20 = call double @fAddHandlerDouble(double %158, double 1.000000e+00), !dbg !466
  %160 = fmul double %159, %handler_result20, !dbg !466
  tail call void @llvm.dbg.value(metadata double %160, metadata !400, metadata !DIExpression()), !dbg !467
  %handler_result21 = call double @fAddHandlerDouble(double %158, double 2.000000e+00), !dbg !468
  %161 = fmul double %57, %handler_result21, !dbg !468
  %handler_result22 = call double @fAddHandlerDouble(double %158, double -1.000000e+00), !dbg !469
  %162 = fmul double %handler_result22, %161, !dbg !469
  %handler_result23 = call double @fSubHandlerDouble(double 1.000000e+00, double %162), !dbg !470
  %163 = fmul double %160, %handler_result23, !dbg !470
  %164 = getelementptr inbounds double, ptr %3, i64 %154, !dbg !471
  store double %163, ptr %164, align 8, !dbg !472, !tbaa !360
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !397, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !461
  br label %180, !dbg !515

165:                                              ; preds = %124, %115
  %166 = phi i64 [ 2, %115 ], [ %150, %124 ]
  %167 = icmp eq i64 %119, 0, !dbg !499
  br i1 %167, label %180, label %168, !dbg !499

168:                                              ; preds = %165
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !397, metadata !DIExpression()), !dbg !461
  %169 = trunc i64 %166 to i32, !dbg !503
  %170 = sub i32 0, %169, !dbg !503
  %171 = sitofp i32 %170 to double, !dbg !503
  %172 = getelementptr inbounds double, ptr %2, i64 %166, !dbg !505
  %173 = load double, ptr %172, align 8, !dbg !505, !tbaa !360
  %174 = fmul double %173, %1, !dbg !506
  %175 = getelementptr double, ptr %172, i64 -1, !dbg !507
  %176 = load double, ptr %175, align 8, !dbg !507, !tbaa !360
  %handler_result24 = call double @fSubHandlerDouble(double %174, double %176), !dbg !508
  %177 = fmul double %handler_result24, %171, !dbg !508
  %178 = fdiv double %177, %116, !dbg !509
  %179 = getelementptr inbounds double, ptr %3, i64 %166, !dbg !510
  store double %178, ptr %179, align 8, !dbg !511, !tbaa !360
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !397, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !461
  br label %180, !dbg !515

180:                                              ; preds = %168, %165, %156, %153, %114, %99, %94, %54, %45
  %181 = phi i32 [ 1, %45 ], [ 0, %54 ], [ 0, %94 ], [ 0, %114 ], [ 0, %153 ], [ 0, %156 ], [ 0, %99 ], [ 0, %165 ], [ 0, %168 ], !dbg !516
  ret i32 %181, !dbg !515
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Plm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !517 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !521, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !522, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double %2, metadata !523, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !524, metadata !DIExpression()), !dbg !543
  %5 = sub nsw i32 %0, %1, !dbg !544
  %6 = sitofp i32 %5 to double, !dbg !545
  tail call void @llvm.dbg.value(metadata double %6, metadata !525, metadata !DIExpression()), !dbg !543
  tail call void @llvm.dbg.value(metadata double poison, metadata !526, metadata !DIExpression()), !dbg !543
  %7 = icmp eq i32 %0, %1, !dbg !546
  br i1 %7, label %15, label %8, !dbg !547

8:                                                ; preds = %4
  %9 = add nsw i32 %1, %0, !dbg !548
  %10 = sitofp i32 %9 to double, !dbg !549
  tail call void @llvm.dbg.value(metadata double %10, metadata !526, metadata !DIExpression()), !dbg !543
  %11 = fmul double %6, 5.000000e-01, !dbg !550
  %handler_result18 = call double @callHandler(i32 12, double %6, double %6), !dbg !551
  %handler_result = call double @fAddHandlerDouble(double %handler_result18, double -1.000000e+00), !dbg !551
  %12 = fmul double %11, %handler_result, !dbg !551
  tail call void @llvm.dbg.value(metadata double %12, metadata !527, metadata !DIExpression()), !dbg !543
  %13 = fmul double %10, 5.000000e-01, !dbg !552
  %handler_result19 = call double @callHandler(i32 12, double %10, double %10), !dbg !553
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result19, double -1.000000e+00), !dbg !553
  %14 = fmul double %13, %handler_result1, !dbg !553
  br label %15, !dbg !554

15:                                               ; preds = %8, %4
  %16 = phi double [ %12, %8 ], [ 0.000000e+00, %4 ]
  %17 = phi double [ %14, %8 ], [ 0.000000e+00, %4 ], !dbg !554
  tail call void @llvm.dbg.value(metadata double %17, metadata !528, metadata !DIExpression()), !dbg !543
  %18 = sitofp i32 %0 to double, !dbg !555
  %19 = fmul double %18, 2.000000e+00, !dbg !556
  %handler_result2 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !557
  %handler_result20 = call double @callHandler(i32 12, double %handler_result2, double %handler_result2), !dbg !558
  %20 = fmul double %handler_result20, 5.000000e-01, !dbg !558
  %handler_result3 = call double @fAddHandlerDouble(double %16, double %20), !dbg !559
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %17), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !529, metadata !DIExpression()), !dbg !543
  %21 = icmp slt i32 %1, 0, !dbg !560
  br i1 %21, label %28, label %22, !dbg !561

22:                                               ; preds = %15
  %23 = icmp slt i32 %0, %1, !dbg !562
  %24 = fcmp olt double %2, -1.000000e+00
  %25 = or i1 %23, %24, !dbg !563
  %26 = fcmp ogt double %2, 1.000000e+00
  %27 = or i1 %26, %25, !dbg !563
  br i1 %27, label %28, label %30, !dbg !563

28:                                               ; preds = %22, %15
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !564, !tbaa !109
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !564
  store double 0x7FF8000000000000, ptr %29, align 8, !dbg !564, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 1) #8, !dbg !567
  br label %165, !dbg !567

30:                                               ; preds = %22
  %31 = fcmp olt double %handler_result4, 0xC085D32BDD7ABCD2, !dbg !569
  br i1 %31, label %32, label %34, !dbg !570

32:                                               ; preds = %30
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !571, !tbaa !109
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !571
  store double 0x7FF0000000000000, ptr %33, align 8, !dbg !571, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 16) #8, !dbg !574
  br label %165, !dbg !574

34:                                               ; preds = %30
  %35 = tail call double @llvm.fabs.f64(double %2), !dbg !576
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %35), !dbg !577
  %36 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !577
  %handler_result6 = call double @fAddHandlerDouble(double %36, double 0x3CB0000000000000), !dbg !578
  %37 = fdiv double 1.000000e+00, %handler_result6, !dbg !578
  tail call void @llvm.dbg.value(metadata double %37, metadata !530, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i32 %1, metadata !580, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %2, metadata !585, metadata !DIExpression()), !dbg !592
  %38 = icmp eq i32 %1, 0, !dbg !594
  br i1 %38, label %79, label %39, !dbg !595

39:                                               ; preds = %34
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !597
  %40 = tail call double @sqrt(double noundef %handler_result7) #8, !dbg !597
  %handler_result8 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !598
  %41 = tail call double @sqrt(double noundef %handler_result8) #8, !dbg !598
  %42 = fmul double %40, %41, !dbg !599
  call void @llvm.dbg.value(metadata double %42, metadata !589, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 1, metadata !591, metadata !DIExpression()), !dbg !596
  %43 = and i32 %1, 3, !dbg !600
  %44 = icmp ult i32 %1, 4, !dbg !600
  br i1 %44, label %65, label %45, !dbg !600

45:                                               ; preds = %39
  %46 = and i32 %1, 2147483644, !dbg !600
  br label %47, !dbg !600

47:                                               ; preds = %47, %45
  %48 = phi double [ 1.000000e+00, %45 ], [ %handler_result12, %47 ]
  %49 = phi double [ 1.000000e+00, %45 ], [ %62, %47 ]
  %50 = phi i32 [ 0, %45 ], [ %63, %47 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %48, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %49, metadata !586, metadata !DIExpression()), !dbg !596
  %51 = fneg double %48, !dbg !602
  %52 = fmul double %42, %51, !dbg !605
  %53 = fmul double %49, %52, !dbg !606
  call void @llvm.dbg.value(metadata double %53, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result9 = call double @fAddHandlerDouble(double %48, double 2.000000e+00), !dbg !602
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %53, metadata !586, metadata !DIExpression()), !dbg !596
  %54 = fneg double %handler_result9, !dbg !602
  %55 = fmul double %42, %54, !dbg !605
  %56 = fmul double %53, %55, !dbg !606
  call void @llvm.dbg.value(metadata double %56, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 2.000000e+00), !dbg !602
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %56, metadata !586, metadata !DIExpression()), !dbg !596
  %57 = fneg double %handler_result10, !dbg !602
  %58 = fmul double %42, %57, !dbg !605
  %59 = fmul double %56, %58, !dbg !606
  call void @llvm.dbg.value(metadata double %59, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 2.000000e+00), !dbg !602
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !596
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %59, metadata !586, metadata !DIExpression()), !dbg !596
  %60 = fneg double %handler_result11, !dbg !602
  %61 = fmul double %42, %60, !dbg !605
  %62 = fmul double %59, %61, !dbg !606
  call void @llvm.dbg.value(metadata double %62, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 2.000000e+00), !dbg !600
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !596
  %63 = add i32 %50, 4, !dbg !600
  %64 = icmp eq i32 %63, %46, !dbg !600
  br i1 %64, label %65, label %47, !dbg !600, !llvm.loop !607

65:                                               ; preds = %47, %39
  %66 = phi double [ undef, %39 ], [ %62, %47 ]
  %67 = phi double [ 1.000000e+00, %39 ], [ %handler_result12, %47 ]
  %68 = phi double [ 1.000000e+00, %39 ], [ %62, %47 ]
  %69 = icmp eq i32 %43, 0, !dbg !600
  br i1 %69, label %79, label %70, !dbg !600

70:                                               ; preds = %70, %65
  %71 = phi double [ %handler_result13, %70 ], [ %67, %65 ]
  %72 = phi double [ %76, %70 ], [ %68, %65 ]
  %73 = phi i32 [ %77, %70 ], [ 0, %65 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %71, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata double %72, metadata !586, metadata !DIExpression()), !dbg !596
  %74 = fneg double %71, !dbg !602
  %75 = fmul double %42, %74, !dbg !605
  %76 = fmul double %72, %75, !dbg !606
  call void @llvm.dbg.value(metadata double %76, metadata !586, metadata !DIExpression()), !dbg !596
  %handler_result13 = call double @fAddHandlerDouble(double %71, double 2.000000e+00), !dbg !600
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !590, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 poison, metadata !591, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !596
  %77 = add i32 %73, 1, !dbg !600
  %78 = icmp eq i32 %77, %43, !dbg !600
  br i1 %78, label %79, label %70, !dbg !600, !llvm.loop !609

79:                                               ; preds = %70, %65, %34
  %80 = phi double [ 1.000000e+00, %34 ], [ %66, %65 ], [ %76, %70 ], !dbg !611
  tail call void @llvm.dbg.value(metadata double %80, metadata !534, metadata !DIExpression()), !dbg !579
  %81 = shl nuw nsw i32 %1, 1, !dbg !612
  %82 = or disjoint i32 %81, 1, !dbg !613
  %83 = sitofp i32 %82 to double, !dbg !614
  %84 = fmul double %83, %2, !dbg !615
  %85 = fmul double %84, %80, !dbg !616
  tail call void @llvm.dbg.value(metadata double %85, metadata !535, metadata !DIExpression()), !dbg !579
  br i1 %7, label %86, label %92, !dbg !617

86:                                               ; preds = %79
  store double %80, ptr %3, align 8, !dbg !618, !tbaa !109
  %87 = fmul double %37, 2.000000e+00, !dbg !620
  %88 = fmul double %87, 0x3CB0000000000000, !dbg !621
  %89 = tail call double @llvm.fabs.f64(double %80), !dbg !622
  %90 = fmul double %88, %89, !dbg !623
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !624
  store double %90, ptr %91, align 8, !dbg !625, !tbaa !116
  br label %165, !dbg !626

92:                                               ; preds = %79
  %93 = add nuw nsw i32 %1, 1, !dbg !627
  %94 = icmp eq i32 %93, %0, !dbg !628
  br i1 %94, label %95, label %101, !dbg !629

95:                                               ; preds = %92
  store double %85, ptr %3, align 8, !dbg !630, !tbaa !109
  %96 = fmul double %37, 2.000000e+00, !dbg !632
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !633
  %98 = tail call double @llvm.fabs.f64(double %85), !dbg !634
  %99 = fmul double %97, %98, !dbg !635
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !636
  store double %99, ptr %100, align 8, !dbg !637, !tbaa !116
  br label %165, !dbg !638

101:                                              ; preds = %92
  tail call void @llvm.dbg.value(metadata double %80, metadata !536, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %85, metadata !540, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !541, metadata !DIExpression()), !dbg !639
  %102 = add nuw nsw i32 %1, 2, !dbg !640
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !542, metadata !DIExpression()), !dbg !639
  %103 = icmp sgt i32 %102, %0, !dbg !642
  br i1 %103, label %157, label %104, !dbg !644

104:                                              ; preds = %101
  %105 = add nsw i32 %1, -1
  %106 = xor i32 %1, -1, !dbg !644
  %107 = add i32 %106, %0, !dbg !644
  %108 = add i32 %0, -2, !dbg !644
  %109 = and i32 %107, 1, !dbg !644
  %110 = icmp eq i32 %109, 0, !dbg !644
  br i1 %110, label %122, label %111, !dbg !644

111:                                              ; preds = %104
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !542, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %85, metadata !540, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %80, metadata !536, metadata !DIExpression()), !dbg !639
  %112 = shl nuw nsw i32 %102, 1, !dbg !645
  %113 = add nsw i32 %112, -1, !dbg !647
  %114 = sitofp i32 %113 to double, !dbg !648
  %115 = fmul double %114, %2, !dbg !649
  %116 = fmul double %85, %115, !dbg !650
  %117 = add i32 %105, %102, !dbg !651
  %118 = sitofp i32 %117 to double, !dbg !652
  %119 = fmul double %80, %118, !dbg !653
  %handler_result14 = call double @fSubHandlerDouble(double %116, double %119), !dbg !654
  %120 = fmul double %handler_result14, 5.000000e-01, !dbg !654
  tail call void @llvm.dbg.value(metadata double %120, metadata !541, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %85, metadata !536, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %120, metadata !540, metadata !DIExpression()), !dbg !639
  %121 = add nuw i32 %1, 3, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !542, metadata !DIExpression()), !dbg !639
  br label %122, !dbg !644

122:                                              ; preds = %111, %104
  %123 = phi double [ undef, %104 ], [ %120, %111 ]
  %124 = phi i32 [ %102, %104 ], [ %121, %111 ]
  %125 = phi double [ %85, %104 ], [ %120, %111 ]
  %126 = phi double [ %80, %104 ], [ %85, %111 ]
  %127 = icmp eq i32 %108, %1, !dbg !644
  br i1 %127, label %157, label %128, !dbg !644

128:                                              ; preds = %128, %122
  %129 = phi i32 [ %155, %128 ], [ %124, %122 ]
  %130 = phi double [ %154, %128 ], [ %125, %122 ]
  %131 = phi double [ %142, %128 ], [ %126, %122 ]
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !542, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %130, metadata !540, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %131, metadata !536, metadata !DIExpression()), !dbg !639
  %132 = shl nuw nsw i32 %129, 1, !dbg !645
  %133 = add nsw i32 %132, -1, !dbg !647
  %134 = sitofp i32 %133 to double, !dbg !648
  %135 = fmul double %134, %2, !dbg !649
  %136 = fmul double %130, %135, !dbg !650
  %137 = add i32 %105, %129, !dbg !651
  %138 = sitofp i32 %137 to double, !dbg !652
  %139 = fmul double %131, %138, !dbg !653
  %handler_result15 = call double @fSubHandlerDouble(double %136, double %139), !dbg !656
  %140 = sub nsw i32 %129, %1, !dbg !656
  %141 = sitofp i32 %140 to double, !dbg !657
  %142 = fdiv double %handler_result15, %141, !dbg !654
  tail call void @llvm.dbg.value(metadata double %142, metadata !541, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %130, metadata !536, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %142, metadata !540, metadata !DIExpression()), !dbg !639
  %143 = add i32 %129, 1, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !542, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !542, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %142, metadata !540, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %130, metadata !536, metadata !DIExpression()), !dbg !639
  %144 = shl nuw nsw i32 %143, 1, !dbg !645
  %145 = add nsw i32 %144, -1, !dbg !647
  %146 = sitofp i32 %145 to double, !dbg !648
  %147 = fmul double %146, %2, !dbg !649
  %148 = fmul double %142, %147, !dbg !650
  %149 = add i32 %129, %1, !dbg !651
  %150 = sitofp i32 %149 to double, !dbg !652
  %151 = fmul double %130, %150, !dbg !653
  %handler_result16 = call double @fSubHandlerDouble(double %148, double %151), !dbg !656
  %152 = sub nsw i32 %143, %1, !dbg !656
  %153 = sitofp i32 %152 to double, !dbg !657
  %154 = fdiv double %handler_result16, %153, !dbg !654
  tail call void @llvm.dbg.value(metadata double %154, metadata !541, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %142, metadata !536, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %154, metadata !540, metadata !DIExpression()), !dbg !639
  %155 = add i32 %129, 2, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !542, metadata !DIExpression()), !dbg !639
  %156 = icmp eq i32 %143, %0, !dbg !642
  br i1 %156, label %157, label %128, !dbg !644, !llvm.loop !658

157:                                              ; preds = %128, %122, %101
  %158 = phi double [ 0.000000e+00, %101 ], [ %123, %122 ], [ %154, %128 ], !dbg !639
  store double %158, ptr %3, align 8, !dbg !660, !tbaa !109
  %159 = fmul double %6, 5.000000e-01, !dbg !661
  %handler_result17 = call double @fAddHandlerDouble(double %159, double 1.000000e+00), !dbg !662
  %160 = fmul double %handler_result17, %37, !dbg !662
  %161 = fmul double %160, 0x3CB0000000000000, !dbg !663
  %162 = tail call double @llvm.fabs.f64(double %158), !dbg !664
  %163 = fmul double %161, %162, !dbg !665
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !666
  store double %163, ptr %164, align 8, !dbg !667, !tbaa !116
  br label %165

165:                                              ; preds = %157, %95, %86, %32, %28
  %166 = phi i32 [ 1, %28 ], [ 16, %32 ], [ 0, %157 ], [ 0, %95 ], [ 0, %86 ], !dbg !668
  ret i32 %166, !dbg !669
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !670 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_sphPlm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 !dbg !671 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !679, metadata !DIExpression(), metadata !712, metadata ptr %5, metadata !DIExpression()), !dbg !713
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !685, metadata !DIExpression(), metadata !714, metadata ptr %6, metadata !DIExpression()), !dbg !715
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !688, metadata !DIExpression(), metadata !716, metadata ptr %7, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !675, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !676, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata double %2, metadata !677, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !678, metadata !DIExpression()), !dbg !717
  %8 = icmp slt i32 %1, 0, !dbg !718
  br i1 %8, label %15, label %9, !dbg !719

9:                                                ; preds = %4
  %10 = icmp slt i32 %0, %1, !dbg !720
  %11 = fcmp olt double %2, -1.000000e+00
  %12 = or i1 %10, %11, !dbg !721
  %13 = fcmp ogt double %2, 1.000000e+00
  %14 = or i1 %13, %12, !dbg !721
  br i1 %14, label %15, label %17, !dbg !721

15:                                               ; preds = %9, %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !722, !tbaa !109
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !722
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !722, !tbaa !116
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 365, i32 noundef 1) #8, !dbg !725
  br label %139, !dbg !725

17:                                               ; preds = %9
  %18 = icmp eq i32 %1, 0, !dbg !727
  br i1 %18, label %19, label %33, !dbg !728

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !729
  %20 = call i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %5), !dbg !730
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !683, metadata !DIExpression()), !dbg !713
  %21 = sitofp i32 %0 to double, !dbg !731
  %22 = fmul double %21, 2.000000e+00, !dbg !732
  %handler_result = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !733
  %23 = fdiv double %handler_result, 0x402921FB54442D18, !dbg !733
  %24 = tail call double @sqrt(double noundef %23) #8, !dbg !734
  tail call void @llvm.dbg.value(metadata double %24, metadata !684, metadata !DIExpression()), !dbg !713
  %25 = load double, ptr %5, align 8, !dbg !735, !tbaa !109
  %26 = fmul double %24, %25, !dbg !736
  store double %26, ptr %3, align 8, !dbg !737, !tbaa !109
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !738
  %28 = load double, ptr %27, align 8, !dbg !738, !tbaa !116
  %29 = fmul double %24, %28, !dbg !739
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !740
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !741
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !742
  %handler_result1 = call double @fAddHandlerDouble(double %29, double %32), !dbg !743
  store double %handler_result1, ptr %30, align 8, !dbg !743, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !744
  br label %139

33:                                               ; preds = %17
  %34 = fcmp oeq double %2, 1.000000e+00, !dbg !745
  %35 = fcmp oeq double %2, -1.000000e+00
  %36 = or i1 %34, %35, !dbg !746
  br i1 %36, label %37, label %38, !dbg !746

37:                                               ; preds = %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !747
  br label %139, !dbg !749

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !751
  %39 = and i32 %1, 1, !dbg !752
  %40 = icmp eq i32 %39, 0, !dbg !752
  tail call void @llvm.dbg.value(metadata double poison, metadata !693, metadata !DIExpression()), !dbg !715
  %41 = sitofp i32 %1 to double, !dbg !753
  %42 = fmul double %41, 2.000000e+00, !dbg !754
  %handler_result2 = call double @fAddHandlerDouble(double %42, double 3.000000e+00), !dbg !755
  %43 = tail call double @sqrt(double noundef %handler_result2) #8, !dbg !755
  %44 = fmul double %43, %2, !dbg !756
  tail call void @llvm.dbg.value(metadata double %44, metadata !694, metadata !DIExpression()), !dbg !715
  %45 = fneg double %2, !dbg !757
  %46 = fmul double %45, %2, !dbg !758
  %47 = call i32 @gsl_sf_log_1plusx_e(double noundef %46, ptr noundef nonnull %6) #8, !dbg !759
  %48 = call i32 @gsl_sf_lnpoch_e(double noundef %41, double noundef 5.000000e-01, ptr noundef nonnull %7) #8, !dbg !760
  %49 = load double, ptr %7, align 8, !dbg !761, !tbaa !109
  %50 = load double, ptr %6, align 8, !dbg !762, !tbaa !109
  %51 = fmul double %50, %41, !dbg !763
  %handler_result3 = call double @fAddHandlerDouble(double %49, double %51), !dbg !764
  %52 = fmul double %handler_result3, 5.000000e-01, !dbg !764
  %handler_result4 = call double @fAddHandlerDouble(double %52, double 0xBFD250D048E7A1BD), !dbg !765
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !689, metadata !DIExpression()), !dbg !715
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !765
  %54 = load double, ptr %53, align 8, !dbg !765, !tbaa !116
  %55 = call double @llvm.fabs.f64(double %41), !dbg !766
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !767
  %57 = load double, ptr %56, align 8, !dbg !767, !tbaa !116
  %58 = fmul double %55, %57, !dbg !768
  %handler_result5 = call double @fAddHandlerDouble(double %54, double %58), !dbg !769
  %59 = fmul double %handler_result5, 5.000000e-01, !dbg !769
  %handler_result6 = call double @fAddHandlerDouble(double %59, double 0x3C9250D048E7A1BD), !dbg !770
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !690, metadata !DIExpression()), !dbg !715
  %60 = call double @exp(double noundef %handler_result4) #8, !dbg !770
  tail call void @llvm.dbg.value(metadata double %60, metadata !691, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !715
  %handler_result24 = call double @callHandler(i32 8, double %handler_result6, double %handler_result6), !dbg !771
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result24, double 0x3CB0000000000000), !dbg !771
  %61 = fmul double %handler_result7, 2.000000e+00, !dbg !771
  %62 = fmul double %60, %61, !dbg !772
  tail call void @llvm.dbg.value(metadata double %62, metadata !691, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !715
  %63 = fdiv double 1.000000e+00, %41, !dbg !773
  %handler_result8 = call double @fAddHandlerDouble(double %63, double 2.000000e+00), !dbg !774
  %64 = fdiv double %handler_result8, 0x402921FB54442D18, !dbg !774
  %65 = call double @sqrt(double noundef %64) #8, !dbg !775
  tail call void @llvm.dbg.value(metadata double %65, metadata !692, metadata !DIExpression()), !dbg !715
  %66 = fneg double %65, !dbg !776
  %67 = select i1 %40, double %65, double %66, !dbg !776
  %68 = fmul double %60, %67, !dbg !777
  tail call void @llvm.dbg.value(metadata double %68, metadata !695, metadata !DIExpression()), !dbg !715
  %69 = call double @llvm.fabs.f64(double %68), !dbg !778
  %70 = fmul double %69, 0x3CC0000000000000, !dbg !779
  %71 = fmul double %65, %62, !dbg !780
  %handler_result9 = call double @fAddHandlerDouble(double %71, double %70), !dbg !781
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !696, metadata !DIExpression()), !dbg !715
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %2), !dbg !782
  %72 = call double @llvm.fabs.f64(double %handler_result10), !dbg !782
  %handler_result11 = call double @fAddHandlerDouble(double %72, double 0x3CB0000000000000), !dbg !783
  %73 = fdiv double 1.000000e+00, %handler_result11, !dbg !783
  %handler_result12 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !784
  %74 = fmul double %handler_result12, %handler_result9, !dbg !784
  tail call void @llvm.dbg.value(metadata double %74, metadata !696, metadata !DIExpression()), !dbg !715
  %75 = fmul double %44, %68, !dbg !785
  tail call void @llvm.dbg.value(metadata double %75, metadata !697, metadata !DIExpression()), !dbg !715
  %76 = call double @llvm.fabs.f64(double %44), !dbg !786
  %77 = fmul double %76, %74, !dbg !787
  tail call void @llvm.dbg.value(metadata double %77, metadata !698, metadata !DIExpression()), !dbg !715
  %78 = icmp eq i32 %0, %1, !dbg !788
  br i1 %78, label %79, label %81, !dbg !789

79:                                               ; preds = %38
  store double %68, ptr %3, align 8, !dbg !790, !tbaa !109
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !792
  %handler_result13 = call double @fAddHandlerDouble(double %70, double %74), !dbg !793
  store double %handler_result13, ptr %80, align 8, !dbg !793, !tbaa !116
  br label %138, !dbg !794

81:                                               ; preds = %38
  %82 = add nuw nsw i32 %1, 1, !dbg !795
  %83 = icmp eq i32 %82, %0, !dbg !796
  br i1 %83, label %84, label %88, !dbg !797

84:                                               ; preds = %81
  store double %75, ptr %3, align 8, !dbg !798, !tbaa !109
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !800
  %86 = call double @llvm.fabs.f64(double %75), !dbg !801
  %87 = fmul double %86, 0x3CC0000000000000, !dbg !802
  %handler_result14 = call double @fAddHandlerDouble(double %87, double %77), !dbg !803
  store double %handler_result14, ptr %85, align 8, !dbg !803, !tbaa !116
  br label %138, !dbg !804

88:                                               ; preds = %81
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !699, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !703, metadata !DIExpression()), !dbg !805
  %89 = add nuw nsw i32 %1, 2, !dbg !806
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !704, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %68, metadata !695, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %74, metadata !696, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %75, metadata !697, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !703, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !699, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %77, metadata !698, metadata !DIExpression()), !dbg !715
  %90 = icmp ugt i32 %89, %0, !dbg !807
  br i1 %90, label %128, label %91, !dbg !808

91:                                               ; preds = %91, %88
  %92 = phi double [ %94, %91 ], [ %68, %88 ]
  %93 = phi double [ %96, %91 ], [ %74, %88 ]
  %94 = phi double [ %116, %91 ], [ %75, %88 ]
  %95 = phi i32 [ %126, %91 ], [ %89, %88 ]
  %96 = phi double [ %125, %91 ], [ %77, %88 ]
  tail call void @llvm.dbg.value(metadata double %92, metadata !695, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %93, metadata !696, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %94, metadata !697, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !704, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %96, metadata !698, metadata !DIExpression()), !dbg !715
  %97 = sub nsw i32 %95, %1, !dbg !809
  %98 = sitofp i32 %97 to double, !dbg !810
  %99 = add nuw nsw i32 %95, %1, !dbg !811
  %100 = sitofp i32 %99 to double, !dbg !812
  %101 = fdiv double %98, %100, !dbg !813
  tail call void @llvm.dbg.value(metadata double %101, metadata !705, metadata !DIExpression()), !dbg !814
  %handler_result15 = call double @fAddHandlerDouble(double %98, double -1.000000e+00), !dbg !815
  %handler_result16 = call double @fAddHandlerDouble(double %100, double -1.000000e+00), !dbg !816
  %102 = fdiv double %handler_result15, %handler_result16, !dbg !816
  tail call void @llvm.dbg.value(metadata double %102, metadata !709, metadata !DIExpression()), !dbg !814
  %103 = sitofp i32 %95 to double, !dbg !817
  %104 = fmul double %103, 2.000000e+00, !dbg !818
  %handler_result17 = call double @fAddHandlerDouble(double %104, double 1.000000e+00), !dbg !819
  %105 = fmul double %101, %handler_result17, !dbg !819
  %handler_result18 = call double @fAddHandlerDouble(double %104, double -1.000000e+00), !dbg !820
  %106 = fmul double %handler_result18, %105, !dbg !820
  %107 = call double @sqrt(double noundef %106) #8, !dbg !821
  tail call void @llvm.dbg.value(metadata double %107, metadata !710, metadata !DIExpression()), !dbg !814
  %108 = fmul double %101, %102, !dbg !822
  %109 = fmul double %handler_result17, %108, !dbg !823
  %handler_result19 = call double @fAddHandlerDouble(double %104, double -3.000000e+00), !dbg !824
  %110 = fdiv double %109, %handler_result19, !dbg !824
  %111 = call double @sqrt(double noundef %110) #8, !dbg !825
  tail call void @llvm.dbg.value(metadata double %111, metadata !711, metadata !DIExpression()), !dbg !814
  %112 = fmul double %94, %2, !dbg !826
  %113 = fmul double %112, %107, !dbg !827
  %114 = fmul double %handler_result16, %92, !dbg !828
  %115 = fmul double %114, %111, !dbg !829
  %handler_result20 = call double @fSubHandlerDouble(double %113, double %115), !dbg !830
  %116 = fdiv double %handler_result20, %98, !dbg !830
  tail call void @llvm.dbg.value(metadata double %116, metadata !699, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %94, metadata !695, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %116, metadata !697, metadata !DIExpression()), !dbg !715
  %117 = fmul double %107, %2, !dbg !831
  %118 = call double @llvm.fabs.f64(double %117), !dbg !832
  %119 = fmul double %96, %118, !dbg !833
  %120 = fmul double %handler_result16, %111, !dbg !834
  %121 = call double @llvm.fabs.f64(double %120), !dbg !835
  %122 = fmul double %93, %121, !dbg !836
  %handler_result21 = call double @fAddHandlerDouble(double %119, double %122), !dbg !837
  %123 = fmul double %handler_result21, 5.000000e-01, !dbg !837
  %124 = call double @llvm.fabs.f64(double %98), !dbg !838
  %125 = fdiv double %123, %124, !dbg !839
  tail call void @llvm.dbg.value(metadata double %125, metadata !703, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %96, metadata !696, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %125, metadata !698, metadata !DIExpression()), !dbg !715
  %126 = add i32 %95, 1, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !704, metadata !DIExpression()), !dbg !805
  %127 = icmp eq i32 %95, %0, !dbg !807
  br i1 %127, label %128, label %91, !dbg !808, !llvm.loop !841

128:                                              ; preds = %91, %88
  %129 = phi double [ 0.000000e+00, %88 ], [ %116, %91 ], !dbg !805
  %130 = phi double [ 0.000000e+00, %88 ], [ %125, %91 ], !dbg !805
  store double %129, ptr %3, align 8, !dbg !843, !tbaa !109
  %131 = sub nsw i32 %0, %1, !dbg !844
  %132 = sitofp i32 %131 to double, !dbg !845
  %133 = fmul double %132, 5.000000e-01, !dbg !846
  %handler_result22 = call double @fAddHandlerDouble(double %133, double 1.000000e+00), !dbg !847
  %134 = fmul double %handler_result22, 0x3CB0000000000000, !dbg !847
  %135 = call double @llvm.fabs.f64(double %129), !dbg !848
  %136 = fmul double %134, %135, !dbg !849
  %handler_result23 = call double @fAddHandlerDouble(double %130, double %136), !dbg !850
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !850
  store double %handler_result23, ptr %137, align 8, !dbg !851, !tbaa !116
  br label %138

138:                                              ; preds = %128, %84, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !852
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !852
  br label %139

139:                                              ; preds = %138, %37, %19, %15
  %140 = phi i32 [ 1, %15 ], [ %20, %19 ], [ 0, %37 ], [ 0, %138 ], !dbg !853
  ret i32 %140, !dbg !854
}

declare !dbg !855 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !857 i32 @gsl_sf_lnpoch_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !861 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !862 double @sinh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P1(double noundef returned %0) local_unnamed_addr #6 !dbg !863 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !867, metadata !DIExpression()), !dbg !870
  tail call void @llvm.dbg.value(metadata double %0, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !870
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !868, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !870
  tail call void @llvm.dbg.value(metadata i32 0, metadata !869, metadata !DIExpression()), !dbg !870
  ret double %0, !dbg !871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P2(double noundef %0) local_unnamed_addr #6 !dbg !872 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !874, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %0, metadata !120, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata ptr undef, metadata !121, metadata !DIExpression()), !dbg !878
  %2 = fmul double %0, 3.000000e+00, !dbg !880
  %3 = fmul double %2, %0, !dbg !881
  %handler_result = call double @fAddHandlerDouble(double %3, double -1.000000e+00), !dbg !882
  %4 = fmul double %handler_result, 5.000000e-01, !dbg !882
  tail call void @llvm.dbg.value(metadata double %4, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !877
  tail call void @llvm.dbg.value(metadata double poison, metadata !875, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !877
  tail call void @llvm.dbg.value(metadata i32 0, metadata !876, metadata !DIExpression()), !dbg !877
  ret double %4, !dbg !883
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_legendre_P3(double noundef %0) local_unnamed_addr #6 !dbg !884 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !886, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata double %0, metadata !135, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr undef, metadata !136, metadata !DIExpression()), !dbg !890
  %2 = fmul double %0, 5.000000e-01, !dbg !892
  %3 = fmul double %0, 5.000000e+00, !dbg !893
  %4 = fmul double %3, %0, !dbg !894
  %handler_result = call double @fAddHandlerDouble(double %4, double -3.000000e+00), !dbg !895
  %5 = fmul double %2, %handler_result, !dbg !895
  tail call void @llvm.dbg.value(metadata double %5, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double poison, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata i32 0, metadata !888, metadata !DIExpression()), !dbg !889
  ret double %5, !dbg !896
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Pl(i32 noundef %0, double noundef %1) local_unnamed_addr #2 !dbg !897 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !905
  call void @llvm.dbg.assign(metadata i1 undef, metadata !903, metadata !DIExpression(), metadata !905, metadata ptr %3, metadata !DIExpression()), !dbg !906
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !901, metadata !DIExpression()), !dbg !906
  tail call void @llvm.dbg.value(metadata double %1, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !907
  %4 = call i32 @gsl_sf_legendre_Pl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !907
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !904, metadata !DIExpression()), !dbg !906
  %5 = icmp eq i32 %4, 0, !dbg !908
  br i1 %5, label %7, label %6, !dbg !907

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 766, i32 noundef %4) #8, !dbg !910
  br label %7, !dbg !910

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !907, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !913
  ret double %8, !dbg !913
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Plm(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 !dbg !914 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !923
  call void @llvm.dbg.assign(metadata i1 undef, metadata !921, metadata !DIExpression(), metadata !923, metadata ptr %4, metadata !DIExpression()), !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !918, metadata !DIExpression()), !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !919, metadata !DIExpression()), !dbg !924
  tail call void @llvm.dbg.value(metadata double %2, metadata !920, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !925
  %5 = call i32 @gsl_sf_legendre_Plm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !925, !range !926
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !922, metadata !DIExpression()), !dbg !924
  %6 = icmp eq i32 %5, 0, !dbg !927
  br i1 %6, label %8, label %7, !dbg !925

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 771, i32 noundef %5) #8, !dbg !929
  br label %8, !dbg !929

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !925, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !932
  ret double %9, !dbg !932
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_sphPlm(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 !dbg !933 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !938, metadata !DIExpression(), metadata !940, metadata ptr %4, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !936, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %2, metadata !937, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !942
  %5 = call i32 @gsl_sf_legendre_sphPlm_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !942
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !939, metadata !DIExpression()), !dbg !941
  %6 = icmp eq i32 %5, 0, !dbg !943
  br i1 %6, label %8, label %7, !dbg !942

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef %5) #8, !dbg !945
  br label %8, !dbg !945

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !942, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !948
  ret double %9, !dbg !948
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!126 = !DILocation(line: 83, column: 22, scope: !124)
!127 = !DILocation(line: 83, column: 17, scope: !124)
!128 = !DILocation(line: 84, column: 38, scope: !124)
!129 = !DILocation(line: 84, column: 35, scope: !124)
!130 = !DILocation(line: 84, column: 13, scope: !124)
!131 = !DILocation(line: 84, column: 17, scope: !124)
!132 = !DILocation(line: 85, column: 5, scope: !124)
!133 = distinct !DISubprogram(name: "gsl_sf_legendre_P3_e", scope: !2, file: !2, line: 90, type: !94, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !134)
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "x", arg: 1, scope: !133, file: !2, line: 90, type: !74)
!136 = !DILocalVariable(name: "result", arg: 2, scope: !133, file: !2, line: 90, type: !96)
!137 = !DILocation(line: 0, scope: !133)
!138 = !DILocation(line: 95, column: 22, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !2, line: 94, column: 3)
!140 = !DILocation(line: 95, column: 29, scope: !139)
!141 = !DILocation(line: 95, column: 31, scope: !139)
!142 = !DILocation(line: 95, column: 24, scope: !139)
!143 = !DILocation(line: 95, column: 17, scope: !139)
!144 = !DILocation(line: 96, column: 38, scope: !139)
!145 = !DILocation(line: 96, column: 64, scope: !139)
!146 = !DILocation(line: 96, column: 62, scope: !139)
!147 = !DILocation(line: 96, column: 75, scope: !139)
!148 = !DILocation(line: 96, column: 72, scope: !139)
!149 = !DILocation(line: 96, column: 35, scope: !139)
!150 = !DILocation(line: 96, column: 13, scope: !139)
!151 = !DILocation(line: 96, column: 17, scope: !139)
!152 = !DILocation(line: 97, column: 5, scope: !139)
!153 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_e", scope: !2, file: !2, line: 103, type: !154, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !158)
!154 = !DISubroutineType(types: !155)
!155 = !{!36, !156, !157, !96}
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!158 = !{!159, !160, !161, !162, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190}
!159 = !DILocalVariable(name: "l", arg: 1, scope: !153, file: !2, line: 103, type: !156)
!160 = !DILocalVariable(name: "x", arg: 2, scope: !153, file: !2, line: 103, type: !157)
!161 = !DILocalVariable(name: "result", arg: 3, scope: !153, file: !2, line: 103, type: !96)
!162 = !DILocalVariable(name: "p_ellm2", scope: !163, file: !2, line: 141, type: !74)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 138, column: 23)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 138, column: 11)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 133, column: 11)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 128, column: 11)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 120, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 115, column: 11)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 110, column: 11)
!170 = distinct !DILexicalBlock(scope: !153, file: !2, line: 107, column: 6)
!171 = !DILocalVariable(name: "p_ellm1", scope: !163, file: !2, line: 142, type: !74)
!172 = !DILocalVariable(name: "p_ell", scope: !163, file: !2, line: 143, type: !74)
!173 = !DILocalVariable(name: "e_ellm2", scope: !163, file: !2, line: 145, type: !74)
!174 = !DILocalVariable(name: "e_ellm1", scope: !163, file: !2, line: 146, type: !74)
!175 = !DILocalVariable(name: "e_ell", scope: !163, file: !2, line: 147, type: !74)
!176 = !DILocalVariable(name: "ell", scope: !163, file: !2, line: 149, type: !36)
!177 = !DILocalVariable(name: "u", scope: !178, file: !2, line: 169, type: !74)
!178 = distinct !DILexicalBlock(scope: !164, file: !2, line: 165, column: 8)
!179 = !DILocalVariable(name: "th", scope: !178, file: !2, line: 170, type: !74)
!180 = !DILocalVariable(name: "J0", scope: !178, file: !2, line: 171, type: !97)
!181 = !DILocalVariable(name: "Jm1", scope: !178, file: !2, line: 172, type: !97)
!182 = !DILocalVariable(name: "stat_J0", scope: !178, file: !2, line: 173, type: !36)
!183 = !DILocalVariable(name: "stat_Jm1", scope: !178, file: !2, line: 174, type: !36)
!184 = !DILocalVariable(name: "pre", scope: !178, file: !2, line: 175, type: !74)
!185 = !DILocalVariable(name: "B00", scope: !178, file: !2, line: 176, type: !74)
!186 = !DILocalVariable(name: "c1", scope: !178, file: !2, line: 177, type: !74)
!187 = !DILocalVariable(name: "sin_th", scope: !188, file: !2, line: 187, type: !74)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 186, column: 10)
!189 = distinct !DILexicalBlock(scope: !178, file: !2, line: 182, column: 8)
!190 = !DILocalVariable(name: "cot_th", scope: !188, file: !2, line: 188, type: !74)
!191 = distinct !DIAssignID()
!192 = !DILocation(line: 0, scope: !178)
!193 = distinct !DIAssignID()
!194 = !DILocation(line: 0, scope: !153)
!195 = !DILocation(line: 107, column: 8, scope: !170)
!196 = !DILocation(line: 107, column: 12, scope: !170)
!197 = !DILocation(line: 108, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 108, column: 5)
!199 = distinct !DILexicalBlock(scope: !170, file: !2, line: 107, column: 36)
!200 = !DILocation(line: 108, column: 5, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !2, line: 108, column: 5)
!202 = !DILocation(line: 110, column: 11, scope: !170)
!203 = !DILocation(line: 111, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !169, file: !2, line: 110, column: 19)
!205 = !DILocation(line: 112, column: 13, scope: !204)
!206 = !DILocation(line: 112, column: 17, scope: !204)
!207 = !DILocation(line: 113, column: 5, scope: !204)
!208 = !DILocation(line: 116, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !168, file: !2, line: 115, column: 19)
!210 = !DILocation(line: 117, column: 13, scope: !209)
!211 = !DILocation(line: 117, column: 17, scope: !209)
!212 = !DILocation(line: 118, column: 5, scope: !209)
!213 = !DILocation(line: 121, column: 29, scope: !214)
!214 = distinct !DILexicalBlock(scope: !167, file: !2, line: 120, column: 19)
!215 = !DILocation(line: 121, column: 31, scope: !214)
!216 = !DILocation(line: 121, column: 23, scope: !214)
!217 = !DILocation(line: 121, column: 17, scope: !214)
!218 = !DILocation(line: 122, column: 38, scope: !214)
!219 = !DILocation(line: 122, column: 35, scope: !214)
!220 = !DILocation(line: 122, column: 13, scope: !214)
!221 = !DILocation(line: 122, column: 17, scope: !214)
!222 = !DILocation(line: 126, column: 5, scope: !214)
!223 = !DILocation(line: 128, column: 13, scope: !166)
!224 = !DILocation(line: 128, column: 11, scope: !167)
!225 = !DILocation(line: 129, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !166, file: !2, line: 128, column: 21)
!227 = !DILocation(line: 130, column: 13, scope: !226)
!228 = !DILocation(line: 130, column: 17, scope: !226)
!229 = !DILocation(line: 131, column: 5, scope: !226)
!230 = !DILocation(line: 133, column: 13, scope: !165)
!231 = !DILocation(line: 133, column: 11, scope: !166)
!232 = !DILocation(line: 134, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !165, file: !2, line: 133, column: 22)
!234 = !DILocation(line: 134, column: 17, scope: !233)
!235 = !DILocation(line: 135, column: 13, scope: !233)
!236 = !DILocation(line: 135, column: 17, scope: !233)
!237 = !DILocation(line: 136, column: 5, scope: !233)
!238 = !DILocation(line: 138, column: 13, scope: !164)
!239 = !DILocation(line: 138, column: 11, scope: !165)
!240 = !DILocation(line: 0, scope: !163)
!241 = !DILocation(line: 146, column: 22, scope: !163)
!242 = !DILocation(line: 146, column: 29, scope: !163)
!243 = !DILocation(line: 151, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !163, file: !2, line: 151, column: 5)
!245 = !DILocation(line: 152, column: 20, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 151, column: 32)
!247 = distinct !DILexicalBlock(scope: !244, file: !2, line: 151, column: 5)
!248 = !DILocation(line: 152, column: 24, scope: !246)
!249 = !DILocation(line: 152, column: 18, scope: !246)
!250 = !DILocation(line: 152, column: 17, scope: !246)
!251 = !DILocation(line: 152, column: 27, scope: !246)
!252 = !DILocation(line: 152, column: 42, scope: !246)
!253 = !DILocation(line: 152, column: 38, scope: !246)
!254 = !DILocation(line: 152, column: 45, scope: !246)
!255 = !DILocation(line: 152, column: 57, scope: !246)
!256 = !DILocation(line: 152, column: 55, scope: !246)
!257 = !DILocation(line: 156, column: 27, scope: !246)
!258 = !DILocation(line: 156, column: 40, scope: !246)
!259 = !DILocation(line: 156, column: 61, scope: !246)
!260 = !DILocation(line: 156, column: 18, scope: !246)
!261 = !DILocation(line: 156, column: 70, scope: !246)
!262 = !DILocation(line: 151, column: 29, scope: !247)
!263 = !DILocation(line: 151, column: 20, scope: !247)
!264 = distinct !{!264, !243, !265, !266}
!265 = !DILocation(line: 159, column: 5, scope: !244)
!266 = !{!"llvm.loop.mustprogress"}
!267 = !DILocation(line: 162, column: 29, scope: !163)
!268 = !DILocation(line: 161, column: 17, scope: !163)
!269 = !DILocation(line: 162, column: 27, scope: !163)
!270 = !DILocation(line: 162, column: 28, scope: !163)
!271 = !DILocation(line: 162, column: 40, scope: !163)
!272 = !DILocation(line: 162, column: 13, scope: !163)
!273 = !DILocation(line: 162, column: 17, scope: !163)
!274 = !DILocation(line: 169, column: 17, scope: !178)
!275 = !DILocation(line: 170, column: 17, scope: !178)
!276 = !DILocation(line: 171, column: 5, scope: !178)
!277 = !DILocation(line: 172, column: 5, scope: !178)
!278 = !DILocation(line: 173, column: 40, scope: !178)
!279 = !DILocation(line: 173, column: 20, scope: !178)
!280 = !DILocation(line: 174, column: 20, scope: !178)
!281 = !DILocation(line: 182, column: 11, scope: !189)
!282 = !DILocation(line: 182, column: 8, scope: !178)
!283 = !DILocation(line: 183, column: 22, scope: !284)
!284 = distinct !DILexicalBlock(scope: !189, file: !2, line: 182, column: 36)
!285 = !DILocation(line: 183, column: 25, scope: !284)
!286 = !DILocation(line: 183, column: 31, scope: !284)
!287 = !DILocation(line: 184, column: 24, scope: !284)
!288 = !DILocation(line: 185, column: 5, scope: !284)
!289 = !DILocation(line: 187, column: 35, scope: !188)
!290 = !DILocation(line: 187, column: 23, scope: !188)
!291 = !DILocation(line: 0, scope: !188)
!292 = !DILocation(line: 188, column: 25, scope: !188)
!293 = !DILocation(line: 189, column: 33, scope: !188)
!294 = !DILocation(line: 189, column: 21, scope: !188)
!295 = !DILocation(line: 189, column: 48, scope: !188)
!296 = !DILocation(line: 189, column: 43, scope: !188)
!297 = !DILocation(line: 190, column: 20, scope: !188)
!298 = !DILocation(line: 190, column: 13, scope: !188)
!299 = !DILocation(line: 0, scope: !189)
!300 = !DILocation(line: 193, column: 12, scope: !178)
!301 = !DILocation(line: 193, column: 15, scope: !178)
!302 = !DILocation(line: 195, column: 30, scope: !178)
!303 = !DILocation(line: 195, column: 45, scope: !178)
!304 = !DILocation(line: 195, column: 39, scope: !178)
!305 = !DILocation(line: 195, column: 24, scope: !178)
!306 = !DILocation(line: 195, column: 18, scope: !178)
!307 = !DILocation(line: 196, column: 30, scope: !178)
!308 = !DILocation(line: 196, column: 36, scope: !178)
!309 = !DILocation(line: 196, column: 51, scope: !178)
!310 = !DILocation(line: 196, column: 45, scope: !178)
!311 = !DILocation(line: 196, column: 24, scope: !178)
!312 = !DILocation(line: 196, column: 13, scope: !178)
!313 = !DILocation(line: 197, column: 43, scope: !178)
!314 = !DILocation(line: 197, column: 41, scope: !178)
!315 = !DILocation(line: 197, column: 17, scope: !178)
!316 = !DILocation(line: 199, column: 12, scope: !178)
!317 = !DILocation(line: 200, column: 3, scope: !164)
!318 = !DILocation(line: 0, scope: !170)
!319 = !DILocation(line: 201, column: 1, scope: !153)
!320 = !DISubprogram(name: "gsl_error", scope: !35, file: !35, line: 77, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323, !323, !36, !36}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!325 = !DISubprogram(name: "acos", scope: !326, file: !326, line: 53, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!327 = !DISubroutineType(types: !328)
!328 = !{!74, !74}
!329 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !330, file: !330, line: 47, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!331 = !DISubroutineType(types: !332)
!332 = !{!36, !157, !96}
!333 = !DISubprogram(name: "gsl_sf_bessel_Jn_e", scope: !330, file: !330, line: 63, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{!36, !36, !74, !96}
!336 = !DISubprogram(name: "sqrt", scope: !326, file: !326, line: 143, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_array", scope: !2, file: !2, line: 205, type: !338, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !341)
!338 = !DISubroutineType(types: !339)
!339 = !{!36, !156, !157, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!341 = !{!342, !343, !344, !345, !350, !351, !352}
!342 = !DILocalVariable(name: "lmax", arg: 1, scope: !337, file: !2, line: 205, type: !156)
!343 = !DILocalVariable(name: "x", arg: 2, scope: !337, file: !2, line: 205, type: !157)
!344 = !DILocalVariable(name: "result_array", arg: 3, scope: !337, file: !2, line: 205, type: !340)
!345 = !DILocalVariable(name: "p_ellm2", scope: !346, file: !2, line: 224, type: !74)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 221, column: 8)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 216, column: 11)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 212, column: 11)
!349 = distinct !DILexicalBlock(scope: !337, file: !2, line: 209, column: 6)
!350 = !DILocalVariable(name: "p_ellm1", scope: !346, file: !2, line: 225, type: !74)
!351 = !DILocalVariable(name: "p_ell", scope: !346, file: !2, line: 226, type: !74)
!352 = !DILocalVariable(name: "ell", scope: !346, file: !2, line: 227, type: !36)
!353 = !DILocation(line: 0, scope: !337)
!354 = !DILocation(line: 209, column: 11, scope: !349)
!355 = !DILocation(line: 209, column: 15, scope: !349)
!356 = !DILocation(line: 210, column: 5, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 210, column: 5)
!358 = distinct !DILexicalBlock(scope: !349, file: !2, line: 209, column: 39)
!359 = !DILocation(line: 0, scope: !348)
!360 = !{!111, !111, i64 0}
!361 = !DILocation(line: 212, column: 11, scope: !349)
!362 = !DILocation(line: 218, column: 5, scope: !363)
!363 = distinct !DILexicalBlock(scope: !347, file: !2, line: 216, column: 22)
!364 = !DILocation(line: 218, column: 21, scope: !363)
!365 = !DILocation(line: 219, column: 5, scope: !363)
!366 = !DILocation(line: 0, scope: !346)
!367 = !DILocation(line: 230, column: 5, scope: !346)
!368 = !DILocation(line: 230, column: 21, scope: !346)
!369 = !DILocation(line: 232, column: 5, scope: !370)
!370 = distinct !DILexicalBlock(scope: !346, file: !2, line: 232, column: 5)
!371 = !DILocation(line: 232, column: 20, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !2, line: 232, column: 5)
!373 = !DILocation(line: 233, column: 18, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !2, line: 232, column: 35)
!375 = !DILocation(line: 233, column: 17, scope: !374)
!376 = !DILocation(line: 233, column: 27, scope: !374)
!377 = !DILocation(line: 233, column: 38, scope: !374)
!378 = !DILocation(line: 233, column: 45, scope: !374)
!379 = !DILocation(line: 233, column: 57, scope: !374)
!380 = !DILocation(line: 233, column: 55, scope: !374)
!381 = !DILocation(line: 236, column: 7, scope: !374)
!382 = !DILocation(line: 236, column: 25, scope: !374)
!383 = !DILocation(line: 232, column: 32, scope: !372)
!384 = distinct !{!384, !369, !385, !266}
!385 = !DILocation(line: 237, column: 5, scope: !370)
!386 = !DILocation(line: 0, scope: !349)
!387 = !DILocation(line: 241, column: 1, scope: !337)
!388 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl_deriv_array", scope: !2, file: !2, line: 245, type: !389, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!36, !156, !157, !340, !340}
!391 = !{!392, !393, !394, !395, !396, !397, !400, !406, !412, !413, !415}
!392 = !DILocalVariable(name: "lmax", arg: 1, scope: !388, file: !2, line: 245, type: !156)
!393 = !DILocalVariable(name: "x", arg: 2, scope: !388, file: !2, line: 245, type: !157)
!394 = !DILocalVariable(name: "result_array", arg: 3, scope: !388, file: !2, line: 245, type: !340)
!395 = !DILocalVariable(name: "result_deriv_array", arg: 4, scope: !388, file: !2, line: 245, type: !340)
!396 = !DILocalVariable(name: "stat_array", scope: !388, file: !2, line: 247, type: !36)
!397 = !DILocalVariable(name: "ell", scope: !398, file: !2, line: 254, type: !36)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 253, column: 3)
!399 = distinct !DILexicalBlock(scope: !388, file: !2, line: 252, column: 6)
!400 = !DILocalVariable(name: "pre", scope: !401, file: !2, line: 261, type: !157)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 260, column: 7)
!402 = distinct !DILexicalBlock(scope: !403, file: !2, line: 259, column: 7)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 259, column: 7)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 257, column: 5)
!405 = distinct !DILexicalBlock(scope: !398, file: !2, line: 256, column: 8)
!406 = !DILocalVariable(name: "sgn", scope: !407, file: !2, line: 270, type: !157)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 269, column: 7)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 268, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 268, column: 7)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 266, column: 5)
!411 = distinct !DILexicalBlock(scope: !405, file: !2, line: 265, column: 13)
!412 = !DILocalVariable(name: "pre", scope: !407, file: !2, line: 271, type: !157)
!413 = !DILocalVariable(name: "diff_a", scope: !414, file: !2, line: 277, type: !157)
!414 = distinct !DILexicalBlock(scope: !411, file: !2, line: 276, column: 5)
!415 = !DILocalVariable(name: "diff_b", scope: !414, file: !2, line: 278, type: !157)
!416 = !DILocation(line: 0, scope: !388)
!417 = !DILocation(line: 0, scope: !337, inlinedAt: !418)
!418 = distinct !DILocation(line: 247, column: 20, scope: !388)
!419 = !DILocation(line: 209, column: 11, scope: !349, inlinedAt: !418)
!420 = !DILocation(line: 209, column: 15, scope: !349, inlinedAt: !418)
!421 = !DILocation(line: 210, column: 5, scope: !357, inlinedAt: !418)
!422 = !DILocation(line: 0, scope: !348, inlinedAt: !418)
!423 = !DILocation(line: 212, column: 11, scope: !349, inlinedAt: !418)
!424 = !DILocation(line: 249, column: 39, scope: !425)
!425 = distinct !DILexicalBlock(scope: !388, file: !2, line: 249, column: 6)
!426 = !DILocation(line: 252, column: 6, scope: !388)
!427 = !DILocation(line: 218, column: 5, scope: !363, inlinedAt: !418)
!428 = !DILocation(line: 218, column: 21, scope: !363, inlinedAt: !418)
!429 = !DILocation(line: 250, column: 6, scope: !388)
!430 = !DILocation(line: 0, scope: !346, inlinedAt: !418)
!431 = !DILocation(line: 230, column: 5, scope: !346, inlinedAt: !418)
!432 = !DILocation(line: 230, column: 21, scope: !346, inlinedAt: !418)
!433 = !DILocation(line: 232, column: 5, scope: !370, inlinedAt: !418)
!434 = !DILocation(line: 232, column: 20, scope: !372, inlinedAt: !418)
!435 = !DILocation(line: 233, column: 18, scope: !374, inlinedAt: !418)
!436 = !DILocation(line: 233, column: 17, scope: !374, inlinedAt: !418)
!437 = !DILocation(line: 233, column: 27, scope: !374, inlinedAt: !418)
!438 = !DILocation(line: 233, column: 38, scope: !374, inlinedAt: !418)
!439 = !DILocation(line: 233, column: 45, scope: !374, inlinedAt: !418)
!440 = !DILocation(line: 233, column: 57, scope: !374, inlinedAt: !418)
!441 = !DILocation(line: 233, column: 55, scope: !374, inlinedAt: !418)
!442 = !DILocation(line: 236, column: 7, scope: !374, inlinedAt: !418)
!443 = !DILocation(line: 236, column: 25, scope: !374, inlinedAt: !418)
!444 = !DILocation(line: 232, column: 32, scope: !372, inlinedAt: !418)
!445 = distinct !{!445, !433, !446, !266}
!446 = !DILocation(line: 237, column: 5, scope: !370, inlinedAt: !418)
!447 = !DILocation(line: 0, scope: !349, inlinedAt: !418)
!448 = !DILocation(line: 249, column: 11, scope: !425)
!449 = !DILocation(line: 249, column: 6, scope: !388)
!450 = !DILocation(line: 250, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !388, file: !2, line: 250, column: 6)
!452 = !DILocation(line: 250, column: 17, scope: !451)
!453 = !DILocation(line: 250, column: 39, scope: !451)
!454 = !DILocation(line: 252, column: 17, scope: !399)
!455 = !DILocation(line: 256, column: 8, scope: !405)
!456 = !DILocation(line: 256, column: 23, scope: !405)
!457 = !DILocation(line: 256, column: 21, scope: !405)
!458 = !DILocation(line: 256, column: 32, scope: !405)
!459 = !DILocation(line: 256, column: 44, scope: !405)
!460 = !DILocation(line: 256, column: 8, scope: !398)
!461 = !DILocation(line: 0, scope: !398)
!462 = !DILocation(line: 259, column: 24, scope: !402)
!463 = !DILocation(line: 259, column: 7, scope: !403)
!464 = !DILocation(line: 261, column: 34, scope: !401)
!465 = !DILocation(line: 261, column: 32, scope: !401)
!466 = !DILocation(line: 261, column: 38, scope: !401)
!467 = !DILocation(line: 0, scope: !401)
!468 = !DILocation(line: 262, column: 63, scope: !401)
!469 = !DILocation(line: 262, column: 74, scope: !401)
!470 = !DILocation(line: 262, column: 39, scope: !401)
!471 = !DILocation(line: 262, column: 9, scope: !401)
!472 = !DILocation(line: 262, column: 33, scope: !401)
!473 = !DILocation(line: 259, column: 36, scope: !402)
!474 = distinct !{!474, !463, !475, !266}
!475 = !DILocation(line: 263, column: 7, scope: !403)
!476 = !DILocation(line: 265, column: 13, scope: !411)
!477 = !DILocation(line: 265, column: 26, scope: !411)
!478 = !DILocation(line: 265, column: 37, scope: !411)
!479 = !DILocation(line: 265, column: 49, scope: !411)
!480 = !DILocation(line: 0, scope: !411)
!481 = !DILocation(line: 265, column: 13, scope: !405)
!482 = !DILocation(line: 268, column: 7, scope: !409)
!483 = !DILocation(line: 268, column: 24, scope: !408)
!484 = !DILocation(line: 270, column: 30, scope: !407)
!485 = !DILocation(line: 0, scope: !407)
!486 = !DILocation(line: 271, column: 32, scope: !407)
!487 = !DILocation(line: 271, column: 40, scope: !407)
!488 = !DILocation(line: 271, column: 38, scope: !407)
!489 = !DILocation(line: 271, column: 44, scope: !407)
!490 = !DILocation(line: 272, column: 63, scope: !407)
!491 = !DILocation(line: 272, column: 74, scope: !407)
!492 = !DILocation(line: 272, column: 39, scope: !407)
!493 = !DILocation(line: 272, column: 9, scope: !407)
!494 = !DILocation(line: 272, column: 33, scope: !407)
!495 = !DILocation(line: 268, column: 36, scope: !408)
!496 = distinct !{!496, !482, !497, !266}
!497 = !DILocation(line: 273, column: 7, scope: !409)
!498 = !DILocation(line: 0, scope: !414)
!499 = !DILocation(line: 279, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !414, file: !2, line: 279, column: 7)
!501 = !DILocation(line: 279, column: 24, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !2, line: 279, column: 7)
!503 = !DILocation(line: 281, column: 35, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !2, line: 280, column: 7)
!505 = !DILocation(line: 281, column: 48, scope: !504)
!506 = !DILocation(line: 281, column: 46, scope: !504)
!507 = !DILocation(line: 281, column: 68, scope: !504)
!508 = !DILocation(line: 281, column: 41, scope: !504)
!509 = !DILocation(line: 281, column: 89, scope: !504)
!510 = !DILocation(line: 281, column: 9, scope: !504)
!511 = !DILocation(line: 281, column: 33, scope: !504)
!512 = !DILocation(line: 279, column: 36, scope: !502)
!513 = distinct !{!513, !499, !514, !266}
!514 = !DILocation(line: 282, column: 7, scope: !500)
!515 = !DILocation(line: 291, column: 1, scope: !388)
!516 = !DILocation(line: 0, scope: !399)
!517 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm_e", scope: !2, file: !2, line: 294, type: !518, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!36, !156, !156, !157, !96}
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !534, !535, !536, !540, !541, !542}
!521 = !DILocalVariable(name: "l", arg: 1, scope: !517, file: !2, line: 294, type: !156)
!522 = !DILocalVariable(name: "m", arg: 2, scope: !517, file: !2, line: 294, type: !156)
!523 = !DILocalVariable(name: "x", arg: 3, scope: !517, file: !2, line: 294, type: !157)
!524 = !DILocalVariable(name: "result", arg: 4, scope: !517, file: !2, line: 294, type: !96)
!525 = !DILocalVariable(name: "dif", scope: !517, file: !2, line: 300, type: !157)
!526 = !DILocalVariable(name: "sum", scope: !517, file: !2, line: 301, type: !157)
!527 = !DILocalVariable(name: "t_d", scope: !517, file: !2, line: 302, type: !157)
!528 = !DILocalVariable(name: "t_s", scope: !517, file: !2, line: 303, type: !157)
!529 = !DILocalVariable(name: "exp_check", scope: !517, file: !2, line: 304, type: !157)
!530 = !DILocalVariable(name: "err_amp", scope: !531, file: !2, line: 319, type: !157)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 315, column: 8)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 311, column: 11)
!533 = distinct !DILexicalBlock(scope: !517, file: !2, line: 308, column: 6)
!534 = !DILocalVariable(name: "p_mm", scope: !531, file: !2, line: 322, type: !74)
!535 = !DILocalVariable(name: "p_mmp1", scope: !531, file: !2, line: 323, type: !74)
!536 = !DILocalVariable(name: "p_ellm2", scope: !537, file: !2, line: 340, type: !74)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 335, column: 9)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 330, column: 13)
!539 = distinct !DILexicalBlock(scope: !531, file: !2, line: 325, column: 8)
!540 = !DILocalVariable(name: "p_ellm1", scope: !537, file: !2, line: 341, type: !74)
!541 = !DILocalVariable(name: "p_ell", scope: !537, file: !2, line: 342, type: !74)
!542 = !DILocalVariable(name: "ell", scope: !537, file: !2, line: 343, type: !36)
!543 = !DILocation(line: 0, scope: !517)
!544 = !DILocation(line: 300, column: 23, scope: !517)
!545 = !DILocation(line: 300, column: 22, scope: !517)
!546 = !DILocation(line: 302, column: 28, scope: !517)
!547 = !DILocation(line: 302, column: 24, scope: !517)
!548 = !DILocation(line: 301, column: 23, scope: !517)
!549 = !DILocation(line: 301, column: 22, scope: !517)
!550 = !DILocation(line: 302, column: 47, scope: !517)
!551 = !DILocation(line: 302, column: 53, scope: !517)
!552 = !DILocation(line: 303, column: 47, scope: !517)
!553 = !DILocation(line: 303, column: 53, scope: !517)
!554 = !DILocation(line: 303, column: 24, scope: !517)
!555 = !DILocation(line: 304, column: 42, scope: !517)
!556 = !DILocation(line: 304, column: 41, scope: !517)
!557 = !DILocation(line: 304, column: 34, scope: !517)
!558 = !DILocation(line: 304, column: 32, scope: !517)
!559 = !DILocation(line: 304, column: 55, scope: !517)
!560 = !DILocation(line: 308, column: 8, scope: !533)
!561 = !DILocation(line: 308, column: 12, scope: !533)
!562 = !DILocation(line: 308, column: 17, scope: !533)
!563 = !DILocation(line: 308, column: 21, scope: !533)
!564 = !DILocation(line: 309, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 309, column: 5)
!566 = distinct !DILexicalBlock(scope: !533, file: !2, line: 308, column: 45)
!567 = !DILocation(line: 309, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !2, line: 309, column: 5)
!569 = !DILocation(line: 311, column: 21, scope: !532)
!570 = !DILocation(line: 311, column: 11, scope: !533)
!571 = !DILocation(line: 313, column: 5, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 313, column: 5)
!573 = distinct !DILexicalBlock(scope: !532, file: !2, line: 311, column: 46)
!574 = !DILocation(line: 313, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !2, line: 313, column: 5)
!576 = !DILocation(line: 319, column: 62, scope: !531)
!577 = !DILocation(line: 319, column: 53, scope: !531)
!578 = !DILocation(line: 319, column: 32, scope: !531)
!579 = !DILocation(line: 0, scope: !531)
!580 = !DILocalVariable(name: "m", arg: 1, scope: !581, file: !2, line: 40, type: !36)
!581 = distinct !DISubprogram(name: "legendre_Pmm", scope: !2, file: !2, line: 40, type: !582, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!74, !36, !74}
!584 = !{!580, !585, !586, !589, !590, !591}
!585 = !DILocalVariable(name: "x", arg: 2, scope: !581, file: !2, line: 40, type: !74)
!586 = !DILocalVariable(name: "p_mm", scope: !587, file: !2, line: 48, type: !74)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 47, column: 3)
!588 = distinct !DILexicalBlock(scope: !581, file: !2, line: 42, column: 6)
!589 = !DILocalVariable(name: "root_factor", scope: !587, file: !2, line: 49, type: !74)
!590 = !DILocalVariable(name: "fact_coeff", scope: !587, file: !2, line: 50, type: !74)
!591 = !DILocalVariable(name: "i", scope: !587, file: !2, line: 51, type: !36)
!592 = !DILocation(line: 0, scope: !581, inlinedAt: !593)
!593 = distinct !DILocation(line: 322, column: 21, scope: !531)
!594 = !DILocation(line: 42, column: 8, scope: !588, inlinedAt: !593)
!595 = !DILocation(line: 42, column: 6, scope: !581, inlinedAt: !593)
!596 = !DILocation(line: 0, scope: !587, inlinedAt: !593)
!597 = !DILocation(line: 49, column: 26, scope: !587, inlinedAt: !593)
!598 = !DILocation(line: 49, column: 38, scope: !587, inlinedAt: !593)
!599 = !DILocation(line: 49, column: 37, scope: !587, inlinedAt: !593)
!600 = !DILocation(line: 52, column: 5, scope: !601, inlinedAt: !593)
!601 = distinct !DILexicalBlock(scope: !587, file: !2, line: 52, column: 5)
!602 = !DILocation(line: 54, column: 15, scope: !603, inlinedAt: !593)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 53, column: 5)
!604 = distinct !DILexicalBlock(scope: !601, file: !2, line: 52, column: 5)
!605 = !DILocation(line: 54, column: 27, scope: !603, inlinedAt: !593)
!606 = !DILocation(line: 54, column: 12, scope: !603, inlinedAt: !593)
!607 = distinct !{!607, !600, !608, !266}
!608 = !DILocation(line: 56, column: 5, scope: !601, inlinedAt: !593)
!609 = distinct !{!609, !610}
!610 = !{!"llvm.loop.unroll.disable"}
!611 = !DILocation(line: 0, scope: !588, inlinedAt: !593)
!612 = !DILocation(line: 323, column: 27, scope: !531)
!613 = !DILocation(line: 323, column: 30, scope: !531)
!614 = !DILocation(line: 323, column: 25, scope: !531)
!615 = !DILocation(line: 323, column: 23, scope: !531)
!616 = !DILocation(line: 323, column: 35, scope: !531)
!617 = !DILocation(line: 325, column: 8, scope: !531)
!618 = !DILocation(line: 326, column: 19, scope: !619)
!619 = distinct !DILexicalBlock(scope: !539, file: !2, line: 325, column: 15)
!620 = !DILocation(line: 327, column: 29, scope: !619)
!621 = !DILocation(line: 327, column: 35, scope: !619)
!622 = !DILocation(line: 327, column: 55, scope: !619)
!623 = !DILocation(line: 327, column: 53, scope: !619)
!624 = !DILocation(line: 327, column: 15, scope: !619)
!625 = !DILocation(line: 327, column: 19, scope: !619)
!626 = !DILocation(line: 328, column: 7, scope: !619)
!627 = !DILocation(line: 330, column: 20, scope: !538)
!628 = !DILocation(line: 330, column: 15, scope: !538)
!629 = !DILocation(line: 330, column: 13, scope: !539)
!630 = !DILocation(line: 331, column: 19, scope: !631)
!631 = distinct !DILexicalBlock(scope: !538, file: !2, line: 330, column: 25)
!632 = !DILocation(line: 332, column: 29, scope: !631)
!633 = !DILocation(line: 332, column: 35, scope: !631)
!634 = !DILocation(line: 332, column: 55, scope: !631)
!635 = !DILocation(line: 332, column: 53, scope: !631)
!636 = !DILocation(line: 332, column: 15, scope: !631)
!637 = !DILocation(line: 332, column: 19, scope: !631)
!638 = !DILocation(line: 333, column: 7, scope: !631)
!639 = !DILocation(line: 0, scope: !537)
!640 = !DILocation(line: 345, column: 16, scope: !641)
!641 = distinct !DILexicalBlock(scope: !537, file: !2, line: 345, column: 7)
!642 = !DILocation(line: 345, column: 24, scope: !643)
!643 = distinct !DILexicalBlock(scope: !641, file: !2, line: 345, column: 7)
!644 = !DILocation(line: 345, column: 7, scope: !641)
!645 = !DILocation(line: 346, column: 22, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !2, line: 345, column: 36)
!647 = !DILocation(line: 346, column: 26, scope: !646)
!648 = !DILocation(line: 346, column: 20, scope: !646)
!649 = !DILocation(line: 346, column: 19, scope: !646)
!650 = !DILocation(line: 346, column: 29, scope: !646)
!651 = !DILocation(line: 346, column: 46, scope: !646)
!652 = !DILocation(line: 346, column: 40, scope: !646)
!653 = !DILocation(line: 346, column: 49, scope: !646)
!654 = !DILocation(line: 346, column: 59, scope: !646)
!655 = !DILocation(line: 345, column: 33, scope: !643)
!656 = !DILocation(line: 346, column: 65, scope: !646)
!657 = !DILocation(line: 346, column: 61, scope: !646)
!658 = distinct !{!658, !644, !659, !266}
!659 = !DILocation(line: 349, column: 7, scope: !641)
!660 = !DILocation(line: 351, column: 19, scope: !537)
!661 = !DILocation(line: 352, column: 35, scope: !537)
!662 = !DILocation(line: 352, column: 29, scope: !537)
!663 = !DILocation(line: 352, column: 49, scope: !537)
!664 = !DILocation(line: 352, column: 69, scope: !537)
!665 = !DILocation(line: 352, column: 67, scope: !537)
!666 = !DILocation(line: 352, column: 15, scope: !537)
!667 = !DILocation(line: 352, column: 19, scope: !537)
!668 = !DILocation(line: 0, scope: !533)
!669 = !DILocation(line: 357, column: 1, scope: !517)
!670 = !DISubprogram(name: "log", scope: !326, file: !326, line: 104, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm_e", scope: !2, file: !2, line: 360, type: !672, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!36, !156, !36, !157, !96}
!674 = !{!675, !676, !677, !678, !679, !683, !684, !685, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !703, !704, !705, !709, !710, !711}
!675 = !DILocalVariable(name: "l", arg: 1, scope: !671, file: !2, line: 360, type: !156)
!676 = !DILocalVariable(name: "m", arg: 2, scope: !671, file: !2, line: 360, type: !36)
!677 = !DILocalVariable(name: "x", arg: 3, scope: !671, file: !2, line: 360, type: !157)
!678 = !DILocalVariable(name: "result", arg: 4, scope: !671, file: !2, line: 360, type: !96)
!679 = !DILocalVariable(name: "P", scope: !680, file: !2, line: 368, type: !97)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 367, column: 19)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 367, column: 11)
!682 = distinct !DILexicalBlock(scope: !671, file: !2, line: 364, column: 6)
!683 = !DILocalVariable(name: "stat_P", scope: !680, file: !2, line: 369, type: !36)
!684 = !DILocalVariable(name: "pre", scope: !680, file: !2, line: 370, type: !74)
!685 = !DILocalVariable(name: "lncirc", scope: !686, file: !2, line: 388, type: !97)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 382, column: 8)
!687 = distinct !DILexicalBlock(scope: !681, file: !2, line: 376, column: 11)
!688 = !DILocalVariable(name: "lnpoch", scope: !686, file: !2, line: 389, type: !97)
!689 = !DILocalVariable(name: "lnpre_val", scope: !686, file: !2, line: 390, type: !74)
!690 = !DILocalVariable(name: "lnpre_err", scope: !686, file: !2, line: 391, type: !74)
!691 = !DILocalVariable(name: "ex_pre", scope: !686, file: !2, line: 392, type: !97)
!692 = !DILocalVariable(name: "sr", scope: !686, file: !2, line: 393, type: !74)
!693 = !DILocalVariable(name: "sgn", scope: !686, file: !2, line: 394, type: !157)
!694 = !DILocalVariable(name: "y_mmp1_factor", scope: !686, file: !2, line: 395, type: !157)
!695 = !DILocalVariable(name: "y_mm", scope: !686, file: !2, line: 396, type: !74)
!696 = !DILocalVariable(name: "y_mm_err", scope: !686, file: !2, line: 396, type: !74)
!697 = !DILocalVariable(name: "y_mmp1", scope: !686, file: !2, line: 397, type: !74)
!698 = !DILocalVariable(name: "y_mmp1_err", scope: !686, file: !2, line: 397, type: !74)
!699 = !DILocalVariable(name: "y_ell", scope: !700, file: !2, line: 425, type: !74)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 424, column: 9)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 418, column: 13)
!702 = distinct !DILexicalBlock(scope: !686, file: !2, line: 412, column: 8)
!703 = !DILocalVariable(name: "y_ell_err", scope: !700, file: !2, line: 426, type: !74)
!704 = !DILocalVariable(name: "ell", scope: !700, file: !2, line: 427, type: !36)
!705 = !DILocalVariable(name: "rat1", scope: !706, file: !2, line: 431, type: !157)
!706 = distinct !DILexicalBlock(scope: !707, file: !2, line: 430, column: 36)
!707 = distinct !DILexicalBlock(scope: !708, file: !2, line: 430, column: 7)
!708 = distinct !DILexicalBlock(scope: !700, file: !2, line: 430, column: 7)
!709 = !DILocalVariable(name: "rat2", scope: !706, file: !2, line: 432, type: !157)
!710 = !DILocalVariable(name: "factor1", scope: !706, file: !2, line: 433, type: !157)
!711 = !DILocalVariable(name: "factor2", scope: !706, file: !2, line: 434, type: !157)
!712 = distinct !DIAssignID()
!713 = !DILocation(line: 0, scope: !680)
!714 = distinct !DIAssignID()
!715 = !DILocation(line: 0, scope: !686)
!716 = distinct !DIAssignID()
!717 = !DILocation(line: 0, scope: !671)
!718 = !DILocation(line: 364, column: 8, scope: !682)
!719 = !DILocation(line: 364, column: 12, scope: !682)
!720 = !DILocation(line: 364, column: 17, scope: !682)
!721 = !DILocation(line: 364, column: 21, scope: !682)
!722 = !DILocation(line: 365, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 365, column: 5)
!724 = distinct !DILexicalBlock(scope: !682, file: !2, line: 364, column: 45)
!725 = !DILocation(line: 365, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !2, line: 365, column: 5)
!727 = !DILocation(line: 367, column: 13, scope: !681)
!728 = !DILocation(line: 367, column: 11, scope: !682)
!729 = !DILocation(line: 368, column: 5, scope: !680)
!730 = !DILocation(line: 369, column: 18, scope: !680)
!731 = !DILocation(line: 370, column: 28, scope: !680)
!732 = !DILocation(line: 370, column: 27, scope: !680)
!733 = !DILocation(line: 370, column: 36, scope: !680)
!734 = !DILocation(line: 370, column: 18, scope: !680)
!735 = !DILocation(line: 371, column: 28, scope: !680)
!736 = !DILocation(line: 371, column: 24, scope: !680)
!737 = !DILocation(line: 371, column: 18, scope: !680)
!738 = !DILocation(line: 372, column: 28, scope: !680)
!739 = !DILocation(line: 372, column: 24, scope: !680)
!740 = !DILocation(line: 372, column: 13, scope: !680)
!741 = !DILocation(line: 373, column: 44, scope: !680)
!742 = !DILocation(line: 373, column: 42, scope: !680)
!743 = !DILocation(line: 373, column: 17, scope: !680)
!744 = !DILocation(line: 375, column: 3, scope: !681)
!745 = !DILocation(line: 376, column: 13, scope: !687)
!746 = !DILocation(line: 376, column: 20, scope: !687)
!747 = !DILocation(line: 379, column: 17, scope: !748)
!748 = distinct !DILexicalBlock(scope: !687, file: !2, line: 376, column: 34)
!749 = !DILocation(line: 380, column: 5, scope: !748)
!750 = !DILocation(line: 388, column: 5, scope: !686)
!751 = !DILocation(line: 389, column: 5, scope: !686)
!752 = !DILocation(line: 394, column: 26, scope: !686)
!753 = !DILocation(line: 395, column: 47, scope: !686)
!754 = !DILocation(line: 395, column: 46, scope: !686)
!755 = !DILocation(line: 395, column: 38, scope: !686)
!756 = !DILocation(line: 395, column: 36, scope: !686)
!757 = !DILocation(line: 398, column: 25, scope: !686)
!758 = !DILocation(line: 398, column: 27, scope: !686)
!759 = !DILocation(line: 398, column: 5, scope: !686)
!760 = !DILocation(line: 399, column: 5, scope: !686)
!761 = !DILocation(line: 400, column: 46, scope: !686)
!762 = !DILocation(line: 400, column: 61, scope: !686)
!763 = !DILocation(line: 400, column: 53, scope: !686)
!764 = !DILocation(line: 400, column: 36, scope: !686)
!765 = !DILocation(line: 401, column: 61, scope: !686)
!766 = !DILocation(line: 401, column: 67, scope: !686)
!767 = !DILocation(line: 401, column: 82, scope: !686)
!768 = !DILocation(line: 401, column: 74, scope: !686)
!769 = !DILocation(line: 401, column: 51, scope: !686)
!770 = !DILocation(line: 403, column: 18, scope: !686)
!771 = !DILocation(line: 404, column: 21, scope: !686)
!772 = !DILocation(line: 404, column: 57, scope: !686)
!773 = !DILocation(line: 405, column: 27, scope: !686)
!774 = !DILocation(line: 405, column: 30, scope: !686)
!775 = !DILocation(line: 405, column: 14, scope: !686)
!776 = !DILocation(line: 406, column: 18, scope: !686)
!777 = !DILocation(line: 406, column: 23, scope: !686)
!778 = !DILocation(line: 407, column: 41, scope: !686)
!779 = !DILocation(line: 407, column: 39, scope: !686)
!780 = !DILocation(line: 407, column: 57, scope: !686)
!781 = !DILocation(line: 408, column: 54, scope: !686)
!782 = !DILocation(line: 408, column: 46, scope: !686)
!783 = !DILocation(line: 408, column: 26, scope: !686)
!784 = !DILocation(line: 408, column: 14, scope: !686)
!785 = !DILocation(line: 409, column: 28, scope: !686)
!786 = !DILocation(line: 410, column: 16, scope: !686)
!787 = !DILocation(line: 410, column: 36, scope: !686)
!788 = !DILocation(line: 412, column: 10, scope: !702)
!789 = !DILocation(line: 412, column: 8, scope: !686)
!790 = !DILocation(line: 413, column: 20, scope: !791)
!791 = distinct !DILexicalBlock(scope: !702, file: !2, line: 412, column: 15)
!792 = !DILocation(line: 414, column: 15, scope: !791)
!793 = !DILocation(line: 415, column: 19, scope: !791)
!794 = !DILocation(line: 416, column: 7, scope: !791)
!795 = !DILocation(line: 418, column: 20, scope: !701)
!796 = !DILocation(line: 418, column: 15, scope: !701)
!797 = !DILocation(line: 418, column: 13, scope: !702)
!798 = !DILocation(line: 419, column: 20, scope: !799)
!799 = distinct !DILexicalBlock(scope: !701, file: !2, line: 418, column: 25)
!800 = !DILocation(line: 420, column: 15, scope: !799)
!801 = !DILocation(line: 421, column: 46, scope: !799)
!802 = !DILocation(line: 421, column: 44, scope: !799)
!803 = !DILocation(line: 421, column: 19, scope: !799)
!804 = !DILocation(line: 422, column: 7, scope: !799)
!805 = !DILocation(line: 0, scope: !700)
!806 = !DILocation(line: 430, column: 16, scope: !708)
!807 = !DILocation(line: 430, column: 24, scope: !707)
!808 = !DILocation(line: 430, column: 7, scope: !708)
!809 = !DILocation(line: 431, column: 41, scope: !706)
!810 = !DILocation(line: 431, column: 29, scope: !706)
!811 = !DILocation(line: 431, column: 57, scope: !706)
!812 = !DILocation(line: 431, column: 45, scope: !706)
!813 = !DILocation(line: 431, column: 44, scope: !706)
!814 = !DILocation(line: 0, scope: !706)
!815 = !DILocation(line: 432, column: 47, scope: !706)
!816 = !DILocation(line: 432, column: 40, scope: !706)
!817 = !DILocation(line: 433, column: 47, scope: !706)
!818 = !DILocation(line: 433, column: 46, scope: !706)
!819 = !DILocation(line: 433, column: 41, scope: !706)
!820 = !DILocation(line: 433, column: 55, scope: !706)
!821 = !DILocation(line: 433, column: 32, scope: !706)
!822 = !DILocation(line: 434, column: 41, scope: !706)
!823 = !DILocation(line: 434, column: 46, scope: !706)
!824 = !DILocation(line: 434, column: 60, scope: !706)
!825 = !DILocation(line: 434, column: 32, scope: !706)
!826 = !DILocation(line: 435, column: 19, scope: !706)
!827 = !DILocation(line: 435, column: 26, scope: !706)
!828 = !DILocation(line: 435, column: 48, scope: !706)
!829 = !DILocation(line: 435, column: 53, scope: !706)
!830 = !DILocation(line: 435, column: 63, scope: !706)
!831 = !DILocation(line: 439, column: 32, scope: !706)
!832 = !DILocation(line: 439, column: 26, scope: !706)
!833 = !DILocation(line: 439, column: 41, scope: !706)
!834 = !DILocation(line: 439, column: 71, scope: !706)
!835 = !DILocation(line: 439, column: 55, scope: !706)
!836 = !DILocation(line: 439, column: 80, scope: !706)
!837 = !DILocation(line: 439, column: 24, scope: !706)
!838 = !DILocation(line: 439, column: 93, scope: !706)
!839 = !DILocation(line: 439, column: 91, scope: !706)
!840 = !DILocation(line: 430, column: 33, scope: !707)
!841 = distinct !{!841, !808, !842, !266}
!842 = !DILocation(line: 442, column: 7, scope: !708)
!843 = !DILocation(line: 444, column: 20, scope: !700)
!844 = !DILocation(line: 445, column: 41, scope: !700)
!845 = !DILocation(line: 445, column: 39, scope: !700)
!846 = !DILocation(line: 445, column: 38, scope: !700)
!847 = !DILocation(line: 445, column: 52, scope: !700)
!848 = !DILocation(line: 445, column: 72, scope: !700)
!849 = !DILocation(line: 445, column: 70, scope: !700)
!850 = !DILocation(line: 445, column: 15, scope: !700)
!851 = !DILocation(line: 445, column: 20, scope: !700)
!852 = !DILocation(line: 449, column: 3, scope: !687)
!853 = !DILocation(line: 0, scope: !682)
!854 = !DILocation(line: 450, column: 1, scope: !671)
!855 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !856, file: !856, line: 69, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!857 = !DISubprogram(name: "gsl_sf_lnpoch_e", scope: !858, file: !858, line: 172, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!859 = !DISubroutineType(types: !860)
!860 = !{!36, !157, !157, !96}
!861 = !DISubprogram(name: "exp", scope: !326, file: !326, line: 95, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubprogram(name: "sinh", scope: !326, file: !326, line: 73, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = distinct !DISubprogram(name: "gsl_sf_legendre_P1", scope: !2, file: !2, line: 749, type: !864, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!74, !157}
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "x", arg: 1, scope: !863, file: !2, line: 749, type: !157)
!868 = !DILocalVariable(name: "result", scope: !863, file: !2, line: 751, type: !97)
!869 = !DILocalVariable(name: "status", scope: !863, file: !2, line: 751, type: !36)
!870 = !DILocation(line: 0, scope: !863)
!871 = !DILocation(line: 752, column: 1, scope: !863)
!872 = distinct !DISubprogram(name: "gsl_sf_legendre_P2", scope: !2, file: !2, line: 754, type: !864, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !873)
!873 = !{!874, !875, !876}
!874 = !DILocalVariable(name: "x", arg: 1, scope: !872, file: !2, line: 754, type: !157)
!875 = !DILocalVariable(name: "result", scope: !872, file: !2, line: 756, type: !97)
!876 = !DILocalVariable(name: "status", scope: !872, file: !2, line: 756, type: !36)
!877 = !DILocation(line: 0, scope: !872)
!878 = !DILocation(line: 0, scope: !118, inlinedAt: !879)
!879 = distinct !DILocation(line: 756, column: 3, scope: !872)
!880 = !DILocation(line: 83, column: 27, scope: !124, inlinedAt: !879)
!881 = !DILocation(line: 83, column: 29, scope: !124, inlinedAt: !879)
!882 = !DILocation(line: 83, column: 22, scope: !124, inlinedAt: !879)
!883 = !DILocation(line: 757, column: 1, scope: !872)
!884 = distinct !DISubprogram(name: "gsl_sf_legendre_P3", scope: !2, file: !2, line: 759, type: !864, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !885)
!885 = !{!886, !887, !888}
!886 = !DILocalVariable(name: "x", arg: 1, scope: !884, file: !2, line: 759, type: !157)
!887 = !DILocalVariable(name: "result", scope: !884, file: !2, line: 761, type: !97)
!888 = !DILocalVariable(name: "status", scope: !884, file: !2, line: 761, type: !36)
!889 = !DILocation(line: 0, scope: !884)
!890 = !DILocation(line: 0, scope: !133, inlinedAt: !891)
!891 = distinct !DILocation(line: 761, column: 3, scope: !884)
!892 = !DILocation(line: 95, column: 22, scope: !139, inlinedAt: !891)
!893 = !DILocation(line: 95, column: 29, scope: !139, inlinedAt: !891)
!894 = !DILocation(line: 95, column: 31, scope: !139, inlinedAt: !891)
!895 = !DILocation(line: 95, column: 24, scope: !139, inlinedAt: !891)
!896 = !DILocation(line: 762, column: 1, scope: !884)
!897 = distinct !DISubprogram(name: "gsl_sf_legendre_Pl", scope: !2, file: !2, line: 764, type: !898, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!74, !156, !157}
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(name: "l", arg: 1, scope: !897, file: !2, line: 764, type: !156)
!902 = !DILocalVariable(name: "x", arg: 2, scope: !897, file: !2, line: 764, type: !157)
!903 = !DILocalVariable(name: "result", scope: !897, file: !2, line: 766, type: !97)
!904 = !DILocalVariable(name: "status", scope: !897, file: !2, line: 766, type: !36)
!905 = distinct !DIAssignID()
!906 = !DILocation(line: 0, scope: !897)
!907 = !DILocation(line: 766, column: 3, scope: !897)
!908 = !DILocation(line: 766, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !897, file: !2, line: 766, column: 3)
!910 = !DILocation(line: 766, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 766, column: 3)
!912 = distinct !DILexicalBlock(scope: !909, file: !2, line: 766, column: 3)
!913 = !DILocation(line: 767, column: 1, scope: !897)
!914 = distinct !DISubprogram(name: "gsl_sf_legendre_Plm", scope: !2, file: !2, line: 769, type: !915, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!74, !156, !156, !157}
!917 = !{!918, !919, !920, !921, !922}
!918 = !DILocalVariable(name: "l", arg: 1, scope: !914, file: !2, line: 769, type: !156)
!919 = !DILocalVariable(name: "m", arg: 2, scope: !914, file: !2, line: 769, type: !156)
!920 = !DILocalVariable(name: "x", arg: 3, scope: !914, file: !2, line: 769, type: !157)
!921 = !DILocalVariable(name: "result", scope: !914, file: !2, line: 771, type: !97)
!922 = !DILocalVariable(name: "status", scope: !914, file: !2, line: 771, type: !36)
!923 = distinct !DIAssignID()
!924 = !DILocation(line: 0, scope: !914)
!925 = !DILocation(line: 771, column: 3, scope: !914)
!926 = !{i32 0, i32 17}
!927 = !DILocation(line: 771, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !914, file: !2, line: 771, column: 3)
!929 = !DILocation(line: 771, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 771, column: 3)
!931 = distinct !DILexicalBlock(scope: !928, file: !2, line: 771, column: 3)
!932 = !DILocation(line: 772, column: 1, scope: !914)
!933 = distinct !DISubprogram(name: "gsl_sf_legendre_sphPlm", scope: !2, file: !2, line: 774, type: !915, scopeLine: 775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DILocalVariable(name: "l", arg: 1, scope: !933, file: !2, line: 774, type: !156)
!936 = !DILocalVariable(name: "m", arg: 2, scope: !933, file: !2, line: 774, type: !156)
!937 = !DILocalVariable(name: "x", arg: 3, scope: !933, file: !2, line: 774, type: !157)
!938 = !DILocalVariable(name: "result", scope: !933, file: !2, line: 776, type: !97)
!939 = !DILocalVariable(name: "status", scope: !933, file: !2, line: 776, type: !36)
!940 = distinct !DIAssignID()
!941 = !DILocation(line: 0, scope: !933)
!942 = !DILocation(line: 776, column: 3, scope: !933)
!943 = !DILocation(line: 776, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !933, file: !2, line: 776, column: 3)
!945 = !DILocation(line: 776, column: 3, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !2, line: 776, column: 3)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 776, column: 3)
!948 = !DILocation(line: 777, column: 1, scope: !933)
