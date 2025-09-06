; ModuleID = 'dilog.ll'
source_filename = "dilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [27 x i8] c"gsl_sf_dilog_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"dilog.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_dilog_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !145 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !157, metadata ptr %3, metadata !DIExpression()), !dbg !158
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !159, metadata ptr %4, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !150, metadata !DIExpression()), !dbg !160
  %5 = fcmp ult double %0, 0.000000e+00, !dbg !161
  br i1 %5, label %8, label %6, !dbg !162

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @dilog_xge0(double noundef %0, ptr noundef %1), !dbg !163, !range !165
  br label %26, !dbg !166

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !167
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !167
  %9 = fneg double %0, !dbg !168
  %10 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %3), !dbg !169, !range !165
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !155, metadata !DIExpression()), !dbg !158
  %11 = fmul double %0, %0, !dbg !170
  %12 = call fastcc i32 @dilog_xge0(double noundef %11, ptr noundef nonnull %4), !dbg !171, !range !165
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !156, metadata !DIExpression()), !dbg !158
  %13 = load double, ptr %3, align 8, !dbg !172, !tbaa !173
  %14 = load double, ptr %4, align 8, !dbg !178, !tbaa !173
  %15 = fmul double %14, 5.000000e-01, !dbg !179
  %handler_result = call double @fSubHandlerDouble(double %15, double %13), !dbg !180
  store double %handler_result, ptr %1, align 8, !dbg !180, !tbaa !173
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !181
  %17 = load double, ptr %16, align 8, !dbg !181, !tbaa !182
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !183
  %19 = load double, ptr %18, align 8, !dbg !183, !tbaa !182
  %20 = fmul double %19, 5.000000e-01, !dbg !184
  %handler_result1 = call double @fAddHandlerDouble(double %17, double %20), !dbg !185
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !185
  %22 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !186
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !187
  %handler_result2 = call double @fAddHandlerDouble(double %23, double %handler_result1), !dbg !188
  store double %handler_result2, ptr %21, align 8, !dbg !188, !tbaa !182
  %24 = icmp eq i32 %10, 0, !dbg !189
  %25 = select i1 %24, i32 %12, i32 %10, !dbg !189
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !190
  br label %26

26:                                               ; preds = %8, %6
  %27 = phi i32 [ %7, %6 ], [ %25, %8 ], !dbg !191
  ret i32 %27, !dbg !192
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dilog_xge0(double noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !dbg !193 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !236
  call void @llvm.dbg.assign(metadata i1 undef, metadata !197, metadata !DIExpression(), metadata !236, metadata ptr %3, metadata !DIExpression()), !dbg !237
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !205, metadata !DIExpression(), metadata !238, metadata ptr %4, metadata !DIExpression()), !dbg !239
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !227, metadata !DIExpression(), metadata !240, metadata ptr %5, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double %0, metadata !195, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !196, metadata !DIExpression()), !dbg !242
  %6 = fcmp ogt double %0, 2.000000e+00, !dbg !243
  br i1 %6, label %7, label %22, !dbg !244

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !245
  %8 = fdiv double 1.000000e+00, %0, !dbg !246
  call fastcc void @dilog_series_2(double noundef %8, ptr noundef nonnull %3), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !237
  %handler_result41 = call double @callHandler(i32 12, double %0, double %0), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !201, metadata !DIExpression()), !dbg !237
  tail call void @llvm.dbg.value(metadata double 0x400A51A6625307D3, metadata !202, metadata !DIExpression()), !dbg !237
  %9 = load double, ptr %3, align 8, !dbg !248, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %9, metadata !203, metadata !DIExpression()), !dbg !237
  %10 = fmul double %handler_result41, 5.000000e-01, !dbg !249
  %11 = fmul double %handler_result41, %10, !dbg !250
  tail call void @llvm.dbg.value(metadata double %11, metadata !204, metadata !DIExpression()), !dbg !237
  %handler_result = call double @fSubHandlerDouble(double 0x400A51A6625307D3, double %9), !dbg !251
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %11), !dbg !252
  store double %handler_result1, ptr %1, align 8, !dbg !252, !tbaa !173
  %12 = tail call double @llvm.fabs.f64(double %handler_result41), !dbg !253
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !254
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !255
  %15 = load double, ptr %14, align 8, !dbg !255, !tbaa !182
  %handler_result2 = call double @fAddHandlerDouble(double %13, double %15), !dbg !256
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !256
  %17 = tail call double @llvm.fabs.f64(double %9), !dbg !257
  %handler_result3 = call double @fAddHandlerDouble(double %17, double 0x400A51A6625307D3), !dbg !258
  %18 = tail call double @llvm.fabs.f64(double %11), !dbg !258
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %18), !dbg !259
  %19 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !259
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result2, double %19), !dbg !260
  %20 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !260
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !261
  %handler_result6 = call double @fAddHandlerDouble(double %21, double %handler_result5), !dbg !262
  store double %handler_result6, ptr %16, align 8, !dbg !262, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !263
  br label %94

22:                                               ; preds = %2
  %23 = fcmp ogt double %0, 1.010000e+00, !dbg !264
  br i1 %23, label %24, label %39, !dbg !265

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !266
  %25 = fdiv double 1.000000e+00, %0, !dbg !267
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %25), !dbg !268
  call fastcc void @dilog_series_2(double noundef %handler_result7, ptr noundef nonnull %4), !dbg !268
  tail call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !239
  %handler_result42 = call double @callHandler(i32 12, double %0, double %0), !dbg !269
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !209, metadata !DIExpression()), !dbg !239
  %handler_result43 = call double @callHandler(i32 12, double %handler_result7, double %handler_result7), !dbg !270
  %26 = fmul double %handler_result42, 5.000000e-01, !dbg !270
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result43, double %26), !dbg !271
  %27 = fmul double %handler_result42, %handler_result8, !dbg !271
  tail call void @llvm.dbg.value(metadata double %27, metadata !210, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !211, metadata !DIExpression()), !dbg !239
  %28 = load double, ptr %4, align 8, !dbg !272, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %28, metadata !212, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double %27, metadata !213, metadata !DIExpression()), !dbg !239
  %handler_result9 = call double @fAddHandlerDouble(double %28, double 0x3FFA51A6625307D3), !dbg !273
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %27), !dbg !274
  store double %handler_result10, ptr %1, align 8, !dbg !274, !tbaa !173
  %29 = tail call double @llvm.fabs.f64(double %handler_result42), !dbg !275
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !276
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !277
  %32 = load double, ptr %31, align 8, !dbg !277, !tbaa !182
  %handler_result11 = call double @fAddHandlerDouble(double %30, double %32), !dbg !278
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !278
  %34 = tail call double @llvm.fabs.f64(double %28), !dbg !279
  %handler_result12 = call double @fAddHandlerDouble(double %34, double 0x3FFA51A6625307D3), !dbg !280
  %35 = tail call double @llvm.fabs.f64(double %27), !dbg !280
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double %35), !dbg !281
  %36 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !281
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result11, double %36), !dbg !282
  %37 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !282
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !283
  %handler_result15 = call double @fAddHandlerDouble(double %38, double %handler_result14), !dbg !284
  store double %handler_result15, ptr %33, align 8, !dbg !284, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !285
  br label %94

39:                                               ; preds = %22
  %40 = fcmp ogt double %0, 1.000000e+00, !dbg !286
  br i1 %40, label %41, label %67, !dbg !287

41:                                               ; preds = %39
  %handler_result16 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !288
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !214, metadata !DIExpression()), !dbg !289
  %handler_result44 = call double @callHandler(i32 12, double %handler_result16, double %handler_result16), !dbg !290
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !217, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !218, metadata !DIExpression()), !dbg !289
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result44), !dbg !290
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !219, metadata !DIExpression()), !dbg !289
  %42 = fmul double %handler_result44, 2.000000e+00, !dbg !290
  %handler_result18 = call double @fSubHandlerDouble(double 1.000000e+00, double %42), !dbg !291
  %43 = fmul double %handler_result18, 2.500000e-01, !dbg !291
  tail call void @llvm.dbg.value(metadata double %43, metadata !220, metadata !DIExpression()), !dbg !289
  %44 = fmul double %handler_result44, 3.000000e+00, !dbg !292
  %handler_result19 = call double @fSubHandlerDouble(double 1.000000e+00, double %44), !dbg !293
  %45 = fdiv double %handler_result19, 9.000000e+00, !dbg !293
  tail call void @llvm.dbg.value(metadata double %45, metadata !221, metadata !DIExpression()), !dbg !289
  %46 = fmul double %handler_result44, 4.000000e+00, !dbg !294
  %handler_result20 = call double @fSubHandlerDouble(double 1.000000e+00, double %46), !dbg !295
  %47 = fmul double %handler_result20, 6.250000e-02, !dbg !295
  tail call void @llvm.dbg.value(metadata double %47, metadata !222, metadata !DIExpression()), !dbg !289
  %48 = fmul double %handler_result44, 5.000000e+00, !dbg !296
  %handler_result21 = call double @fSubHandlerDouble(double 1.000000e+00, double %48), !dbg !297
  %49 = fdiv double %handler_result21, 2.500000e+01, !dbg !297
  tail call void @llvm.dbg.value(metadata double %49, metadata !223, metadata !DIExpression()), !dbg !289
  %50 = fmul double %handler_result44, 6.000000e+00, !dbg !298
  %handler_result22 = call double @fSubHandlerDouble(double 1.000000e+00, double %50), !dbg !299
  %51 = fdiv double %handler_result22, 3.600000e+01, !dbg !299
  tail call void @llvm.dbg.value(metadata double %51, metadata !224, metadata !DIExpression()), !dbg !289
  %52 = fmul double %handler_result44, 7.000000e+00, !dbg !300
  %handler_result23 = call double @fSubHandlerDouble(double 1.000000e+00, double %52), !dbg !301
  %53 = fdiv double %handler_result23, 4.900000e+01, !dbg !301
  tail call void @llvm.dbg.value(metadata double %53, metadata !225, metadata !DIExpression()), !dbg !289
  %54 = fmul double %handler_result44, 8.000000e+00, !dbg !302
  %handler_result24 = call double @fSubHandlerDouble(double 1.000000e+00, double %54), !dbg !303
  %55 = fmul double %handler_result24, 1.562500e-02, !dbg !303
  tail call void @llvm.dbg.value(metadata double %55, metadata !226, metadata !DIExpression()), !dbg !289
  %56 = fmul double %handler_result16, %55, !dbg !304
  %handler_result25 = call double @fSubHandlerDouble(double %53, double %56), !dbg !305
  %57 = fmul double %handler_result16, %handler_result25, !dbg !305
  %handler_result26 = call double @fSubHandlerDouble(double %57, double %51), !dbg !306
  %58 = fmul double %handler_result16, %handler_result26, !dbg !306
  %handler_result27 = call double @fAddHandlerDouble(double %49, double %58), !dbg !307
  %59 = fmul double %handler_result16, %handler_result27, !dbg !307
  %handler_result28 = call double @fSubHandlerDouble(double %59, double %47), !dbg !308
  %60 = fmul double %handler_result16, %handler_result28, !dbg !308
  %handler_result29 = call double @fAddHandlerDouble(double %45, double %60), !dbg !309
  %61 = fmul double %handler_result16, %handler_result29, !dbg !309
  %handler_result30 = call double @fSubHandlerDouble(double %61, double %43), !dbg !310
  %62 = fmul double %handler_result16, %handler_result30, !dbg !310
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result17, double %62), !dbg !311
  %63 = fmul double %handler_result16, %handler_result31, !dbg !311
  %handler_result32 = call double @fAddHandlerDouble(double %63, double 0x3FFA51A6625307D3), !dbg !312
  store double %handler_result32, ptr %1, align 8, !dbg !312, !tbaa !173
  %64 = tail call double @llvm.fabs.f64(double %handler_result32), !dbg !313
  %65 = fmul double %64, 0x3CC0000000000000, !dbg !314
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !315
  store double %65, ptr %66, align 8, !dbg !316, !tbaa !182
  br label %94

67:                                               ; preds = %39
  %68 = fcmp oeq double %0, 1.000000e+00, !dbg !317
  br i1 %68, label %69, label %71, !dbg !318

69:                                               ; preds = %67
  store double 0x3FFA51A6625307D3, ptr %1, align 8, !dbg !319, !tbaa !173
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !321
  store double 0x3CCA51A6625307D3, ptr %70, align 8, !dbg !322, !tbaa !182
  br label %94, !dbg !323

71:                                               ; preds = %67
  %72 = fcmp ogt double %0, 5.000000e-01, !dbg !324
  br i1 %72, label %73, label %86, !dbg !325

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !326
  %handler_result33 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !327
  call fastcc void @dilog_series_2(double noundef %handler_result33, ptr noundef nonnull %5), !dbg !327
  tail call void @llvm.dbg.value(metadata i32 0, metadata !231, metadata !DIExpression()), !dbg !241
  %handler_result45 = call double @callHandler(i32 12, double %0, double %0), !dbg !328
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !232, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !233, metadata !DIExpression()), !dbg !241
  %74 = load double, ptr %5, align 8, !dbg !328, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %74, metadata !234, metadata !DIExpression()), !dbg !241
  %handler_result46 = call double @callHandler(i32 12, double %handler_result33, double %handler_result33), !dbg !329
  %75 = fmul double %handler_result45, %handler_result46, !dbg !329
  tail call void @llvm.dbg.value(metadata double %75, metadata !235, metadata !DIExpression()), !dbg !241
  %handler_result34 = call double @fSubHandlerDouble(double 0x3FFA51A6625307D3, double %74), !dbg !330
  %handler_result35 = call double @fSubHandlerDouble(double %handler_result34, double %75), !dbg !331
  store double %handler_result35, ptr %1, align 8, !dbg !331, !tbaa !173
  %76 = tail call double @llvm.fabs.f64(double %handler_result45), !dbg !332
  %77 = fmul double %76, 0x3CB0000000000000, !dbg !333
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !334
  %79 = load double, ptr %78, align 8, !dbg !334, !tbaa !182
  %handler_result36 = call double @fAddHandlerDouble(double %77, double %79), !dbg !335
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !335
  %81 = tail call double @llvm.fabs.f64(double %74), !dbg !336
  %handler_result37 = call double @fAddHandlerDouble(double %81, double 0x3FFA51A6625307D3), !dbg !337
  %82 = tail call double @llvm.fabs.f64(double %75), !dbg !337
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double %82), !dbg !338
  %83 = fmul double %handler_result38, 0x3CB0000000000000, !dbg !338
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result36, double %83), !dbg !339
  %84 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !339
  %85 = fmul double %84, 0x3CC0000000000000, !dbg !340
  %handler_result40 = call double @fAddHandlerDouble(double %85, double %handler_result39), !dbg !341
  store double %handler_result40, ptr %80, align 8, !dbg !341, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !342
  br label %94

86:                                               ; preds = %71
  %87 = fcmp ogt double %0, 2.500000e-01, !dbg !343
  br i1 %87, label %88, label %89, !dbg !345

88:                                               ; preds = %86
  tail call fastcc void @dilog_series_2(double noundef %0, ptr noundef %1), !dbg !346
  br label %94, !dbg !348

89:                                               ; preds = %86
  %90 = fcmp ogt double %0, 0.000000e+00, !dbg !349
  br i1 %90, label %91, label %93, !dbg !351

91:                                               ; preds = %89
  %92 = tail call fastcc i32 @dilog_series_1(double noundef %0, ptr noundef %1), !dbg !352, !range !165
  br label %94, !dbg !354

93:                                               ; preds = %89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !355
  br label %94, !dbg !357

94:                                               ; preds = %93, %91, %88, %73, %69, %41, %24, %7
  %95 = phi i32 [ 0, %7 ], [ 0, %24 ], [ 0, %41 ], [ 0, %69 ], [ 0, %73 ], [ 0, %88 ], [ %92, %91 ], [ 0, %93 ], !dbg !358
  ret i32 %95, !dbg !359
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_dilog_xy_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !360 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !392
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !381, metadata !DIExpression(), metadata !393, metadata ptr %7, metadata !DIExpression()), !dbg !394
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !395, metadata ptr %8, metadata !DIExpression()), !dbg !394
  tail call void @llvm.dbg.value(metadata double %0, metadata !364, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %1, metadata !365, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !366, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !367, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !368, metadata !DIExpression()), !dbg !396
  %9 = fmul double %0, %0, !dbg !397
  %10 = fmul double %1, %1, !dbg !398
  %handler_result = call double @fAddHandlerDouble(double %9, double %10), !dbg !399
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !369, metadata !DIExpression()), !dbg !396
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !399
  br i1 %11, label %12, label %42, !dbg !400

12:                                               ; preds = %4
  %13 = fcmp ult double %0, 1.000000e+00, !dbg !401
  br i1 %13, label %18, label %14, !dbg !404

14:                                               ; preds = %12
  %handler_result16 = call double @callHandler(i32 12, double %0, double %0), !dbg !405
  %15 = fmul double %handler_result16, 0xC00921FB54442D18, !dbg !405
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !407
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !408
  br label %18, !dbg !409

18:                                               ; preds = %14, %12
  %19 = phi double [ %15, %14 ], [ 0.000000e+00, %12 ], !dbg !410
  %20 = phi double [ %17, %14 ], [ 0.000000e+00, %12 ], !dbg !410
  store double %19, ptr %3, align 8, !dbg !410
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !410
  store double %20, ptr %21, align 8, !dbg !410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !391, metadata ptr %5, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !392, metadata ptr %6, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata ptr %2, metadata !150, metadata !DIExpression()), !dbg !413
  %22 = fcmp ult double %0, 0.000000e+00, !dbg !414
  br i1 %22, label %25, label %23, !dbg !415

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @dilog_xge0(double noundef %0, ptr noundef %2), !dbg !416, !range !165
  br label %91, !dbg !417

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !418
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !418
  %26 = fneg double %0, !dbg !419
  %27 = call fastcc i32 @dilog_xge0(double noundef %26, ptr noundef nonnull %5), !dbg !420, !range !165
  call void @llvm.dbg.value(metadata i32 %27, metadata !155, metadata !DIExpression()), !dbg !411
  %28 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %6), !dbg !421, !range !165
  call void @llvm.dbg.value(metadata i32 %28, metadata !156, metadata !DIExpression()), !dbg !411
  %29 = load double, ptr %5, align 8, !dbg !422, !tbaa !173
  %30 = load double, ptr %6, align 8, !dbg !423, !tbaa !173
  %31 = fmul double %30, 5.000000e-01, !dbg !424
  %handler_result1 = call double @fSubHandlerDouble(double %31, double %29), !dbg !425
  store double %handler_result1, ptr %2, align 8, !dbg !425, !tbaa !173
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !426
  %33 = load double, ptr %32, align 8, !dbg !426, !tbaa !182
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !427
  %35 = load double, ptr %34, align 8, !dbg !427, !tbaa !182
  %36 = fmul double %35, 5.000000e-01, !dbg !428
  %handler_result2 = call double @fAddHandlerDouble(double %33, double %36), !dbg !429
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !429
  %38 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !430
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !431
  %handler_result3 = call double @fAddHandlerDouble(double %39, double %handler_result2), !dbg !432
  store double %handler_result3, ptr %37, align 8, !dbg !432, !tbaa !182
  %40 = icmp eq i32 %27, 0, !dbg !433
  %41 = select i1 %40, i32 %28, i32 %27, !dbg !433
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !434
  br label %91

42:                                               ; preds = %4
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result, double -1.000000e+00), !dbg !435
  %43 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !435
  %44 = fcmp olt double %43, 0x3CB0000000000000, !dbg !436
  br i1 %44, label %45, label %55, !dbg !437

45:                                               ; preds = %42
  %46 = tail call double @atan2(double noundef %1, double noundef %0) #8, !dbg !438
  tail call void @llvm.dbg.value(metadata double %46, metadata !370, metadata !DIExpression()), !dbg !439
  %47 = fmul double %46, %46, !dbg !440
  %48 = fmul double %47, 2.500000e-01, !dbg !441
  tail call void @llvm.dbg.value(metadata double %48, metadata !374, metadata !DIExpression()), !dbg !439
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !442
  %50 = fmul double %49, 0x400921FB54442D18, !dbg !443
  %51 = fmul double %50, 5.000000e-01, !dbg !444
  tail call void @llvm.dbg.value(metadata double %51, metadata !375, metadata !DIExpression()), !dbg !439
  %handler_result5 = call double @fAddHandlerDouble(double %48, double 0x3FFA51A6625307D3), !dbg !445
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %51), !dbg !446
  store double %handler_result6, ptr %2, align 8, !dbg !446, !tbaa !173
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result5, double %51), !dbg !447
  %52 = fmul double %handler_result7, 0x3CC0000000000000, !dbg !447
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !448
  store double %52, ptr %53, align 8, !dbg !449, !tbaa !182
  %54 = tail call i32 @gsl_sf_clausen_e(double noundef %46, ptr noundef %3) #8, !dbg !450
  br label %91

55:                                               ; preds = %42
  %56 = fcmp olt double %handler_result, 1.000000e+00, !dbg !451
  br i1 %56, label %57, label %59, !dbg !452

57:                                               ; preds = %55
  %58 = tail call fastcc i32 @dilogc_unitdisk(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !453
  br label %91, !dbg !455

59:                                               ; preds = %55
  %60 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !456
  tail call void @llvm.dbg.value(metadata double %60, metadata !376, metadata !DIExpression()), !dbg !394
  %61 = fdiv double %0, %handler_result, !dbg !457
  tail call void @llvm.dbg.value(metadata double %61, metadata !379, metadata !DIExpression()), !dbg !394
  %62 = fneg double %1, !dbg !458
  %63 = fdiv double %62, %handler_result, !dbg !459
  tail call void @llvm.dbg.value(metadata double %63, metadata !380, metadata !DIExpression()), !dbg !394
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !460
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !460
  %64 = call fastcc i32 @dilogc_unitdisk(double noundef %61, double noundef %63, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !461
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !383, metadata !DIExpression()), !dbg !394
  %65 = tail call double @atan2(double noundef %1, double noundef %0) #8, !dbg !462
  tail call void @llvm.dbg.value(metadata double %65, metadata !384, metadata !DIExpression()), !dbg !394
  %66 = tail call double @llvm.fabs.f64(double %65), !dbg !463
  tail call void @llvm.dbg.value(metadata double %66, metadata !385, metadata !DIExpression()), !dbg !394
  %67 = fcmp olt double %65, 0.000000e+00, !dbg !464
  tail call void @llvm.dbg.value(metadata double poison, metadata !386, metadata !DIExpression()), !dbg !394
  %handler_result17 = call double @callHandler(i32 12, double %60, double %60), !dbg !465
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !387, metadata !DIExpression()), !dbg !394
  %handler_result8 = call double @fAddHandlerDouble(double %66, double 0xC00921FB54442D18), !dbg !465
  %68 = fneg double %handler_result8, !dbg !465
  %69 = select i1 %67, double %68, double %handler_result8, !dbg !465
  tail call void @llvm.dbg.value(metadata double %69, metadata !388, metadata !DIExpression()), !dbg !394
  %70 = fmul double %handler_result17, %handler_result17, !dbg !466
  %71 = fmul double %69, %69, !dbg !467
  %handler_result9 = call double @fSubHandlerDouble(double %70, double %71), !dbg !468
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !389, metadata !DIExpression()), !dbg !394
  %72 = fmul double %handler_result17, 2.000000e+00, !dbg !468
  %73 = fmul double %72, %69, !dbg !469
  tail call void @llvm.dbg.value(metadata double %73, metadata !390, metadata !DIExpression()), !dbg !394
  %74 = load double, ptr %7, align 8, !dbg !470, !tbaa !173
  %75 = fneg double %74, !dbg !471
  %76 = fmul double %handler_result9, 5.000000e-01, !dbg !472
  %handler_result10 = call double @fSubHandlerDouble(double %75, double %76), !dbg !473
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0xBFFA51A6625307D3), !dbg !474
  store double %handler_result11, ptr %2, align 8, !dbg !474, !tbaa !173
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !475
  %78 = load double, ptr %77, align 8, !dbg !475, !tbaa !182
  %79 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !476
  %80 = fmul double %79, 5.000000e-01, !dbg !477
  %handler_result12 = call double @fAddHandlerDouble(double %80, double 0x3FFA51A6625307D3), !dbg !478
  %81 = fmul double %handler_result12, 0x3CC0000000000000, !dbg !478
  %handler_result13 = call double @fAddHandlerDouble(double %78, double %81), !dbg !479
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !479
  store double %handler_result13, ptr %82, align 8, !dbg !480, !tbaa !182
  %83 = load double, ptr %8, align 8, !dbg !481, !tbaa !173
  %84 = fneg double %83, !dbg !482
  %85 = fmul double %73, 5.000000e-01, !dbg !483
  %handler_result14 = call double @fSubHandlerDouble(double %84, double %85), !dbg !484
  store double %handler_result14, ptr %3, align 8, !dbg !484, !tbaa !173
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !485
  %87 = load double, ptr %86, align 8, !dbg !485, !tbaa !182
  %88 = tail call double @llvm.fabs.f64(double %73), !dbg !486
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !487
  %handler_result15 = call double @fAddHandlerDouble(double %89, double %87), !dbg !488
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !488
  store double %handler_result15, ptr %90, align 8, !dbg !489, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !490
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !490
  br label %91

91:                                               ; preds = %59, %57, %45, %25, %23
  %92 = phi i32 [ %54, %45 ], [ %58, %57 ], [ %64, %59 ], [ %24, %23 ], [ %41, %25 ], !dbg !491
  ret i32 %92, !dbg !492
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !493 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !497 double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !500 i32 @gsl_sf_clausen_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dilogc_unitdisk(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !114 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !128, metadata !DIExpression(), metadata !502, metadata ptr %5, metadata !DIExpression()), !dbg !503
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !129, metadata !DIExpression(), metadata !504, metadata ptr %6, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata double %0, metadata !118, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata double %1, metadata !119, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !120, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !121, metadata !DIExpression()), !dbg !505
  %7 = tail call double @hypot(double noundef %0, double noundef %1) #8, !dbg !506
  tail call void @llvm.dbg.value(metadata double %7, metadata !122, metadata !DIExpression()), !dbg !505
  %8 = fcmp ogt double %0, 0x3FE76C8B43958106, !dbg !507
  br i1 %8, label %9, label %34, !dbg !508

9:                                                ; preds = %4
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !509
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !123, metadata !DIExpression()), !dbg !503
  %10 = fneg double %1, !dbg !509
  tail call void @llvm.dbg.value(metadata double %10, metadata !126, metadata !DIExpression()), !dbg !503
  %11 = tail call double @hypot(double noundef %handler_result, double noundef %10) #8, !dbg !510
  tail call void @llvm.dbg.value(metadata double %11, metadata !127, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !511
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !512
  %12 = call fastcc i32 @dilogc_fundamental(double noundef %11, double noundef %handler_result, double noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !130, metadata !DIExpression()), !dbg !503
  %handler_result11 = call double @callHandler(i32 12, double %7, double %7), !dbg !514
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !131, metadata !DIExpression()), !dbg !503
  %handler_result12 = call double @callHandler(i32 12, double %11, double %11), !dbg !515
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !132, metadata !DIExpression()), !dbg !503
  %13 = tail call double @atan2(double noundef %1, double noundef %0) #8, !dbg !515
  tail call void @llvm.dbg.value(metadata double %13, metadata !133, metadata !DIExpression()), !dbg !503
  %14 = tail call double @atan2(double noundef %10, double noundef %handler_result) #8, !dbg !516
  tail call void @llvm.dbg.value(metadata double %14, metadata !134, metadata !DIExpression()), !dbg !503
  %15 = load double, ptr %5, align 8, !dbg !517, !tbaa !173
  %handler_result1 = call double @fSubHandlerDouble(double 0x3FFA51A6625307D3, double %15), !dbg !518
  %16 = fmul double %handler_result11, %handler_result12, !dbg !518
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %16), !dbg !519
  %17 = fmul double %13, %14, !dbg !519
  %handler_result3 = call double @fAddHandlerDouble(double %17, double %handler_result2), !dbg !520
  store double %handler_result3, ptr %2, align 8, !dbg !520, !tbaa !173
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !521
  %19 = load double, ptr %18, align 8, !dbg !521, !tbaa !182
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !522
  %21 = tail call double @llvm.fabs.f64(double %16), !dbg !523
  %handler_result4 = call double @fAddHandlerDouble(double %21, double 0x3FFA51A6625307D3), !dbg !524
  %22 = tail call double @llvm.fabs.f64(double %17), !dbg !524
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %22), !dbg !525
  %23 = fmul double %handler_result5, 0x3CC0000000000000, !dbg !525
  %handler_result6 = call double @fAddHandlerDouble(double %19, double %23), !dbg !526
  store double %handler_result6, ptr %20, align 8, !dbg !526, !tbaa !182
  %24 = load double, ptr %6, align 8, !dbg !527, !tbaa !173
  %25 = fneg double %24, !dbg !528
  %26 = fmul double %handler_result12, %13, !dbg !529
  %handler_result7 = call double @fSubHandlerDouble(double %25, double %26), !dbg !530
  %27 = fmul double %handler_result11, %14, !dbg !530
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %27), !dbg !531
  store double %handler_result8, ptr %3, align 8, !dbg !531, !tbaa !173
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !532
  %29 = load double, ptr %28, align 8, !dbg !532, !tbaa !182
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !533
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !534
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !535
  %handler_result9 = call double @fAddHandlerDouble(double %31, double %32), !dbg !536
  %33 = fmul double %handler_result9, 0x3CC0000000000000, !dbg !536
  %handler_result10 = call double @fAddHandlerDouble(double %33, double %29), !dbg !537
  store double %handler_result10, ptr %30, align 8, !dbg !537, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !538
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !538
  br label %36

34:                                               ; preds = %4
  %35 = tail call fastcc i32 @dilogc_fundamental(double noundef %7, double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !539
  br label %36, !dbg !541

36:                                               ; preds = %34, %9
  %37 = phi i32 [ %12, %9 ], [ %35, %34 ], !dbg !542
  ret i32 %37, !dbg !543
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_dilog_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !544 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !546, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata double %1, metadata !547, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !548, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !549, metadata !DIExpression()), !dbg !554
  %handler_result = call double @callHandler(i32 2, double %1, double %1), !dbg !555
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !550, metadata !DIExpression()), !dbg !554
  %handler_result1 = call double @callHandler(i32 1, double %1, double %1), !dbg !556
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !551, metadata !DIExpression()), !dbg !554
  %5 = fmul double %handler_result, %0, !dbg !556
  tail call void @llvm.dbg.value(metadata double %5, metadata !552, metadata !DIExpression()), !dbg !554
  %6 = fmul double %handler_result1, %0, !dbg !557
  tail call void @llvm.dbg.value(metadata double %6, metadata !553, metadata !DIExpression()), !dbg !554
  %7 = tail call i32 @gsl_sf_complex_dilog_xy_e(double noundef %5, double noundef %6, ptr noundef %2, ptr noundef %3), !dbg !558
  ret i32 %7, !dbg !559
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !560 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !561 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_spence_xy_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !562 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !564, metadata !DIExpression()), !dbg !570
  tail call void @llvm.dbg.value(metadata double %1, metadata !565, metadata !DIExpression()), !dbg !570
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !566, metadata !DIExpression()), !dbg !570
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !567, metadata !DIExpression()), !dbg !570
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !571
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !568, metadata !DIExpression()), !dbg !570
  %5 = fneg double %1, !dbg !571
  tail call void @llvm.dbg.value(metadata double %5, metadata !569, metadata !DIExpression()), !dbg !570
  %6 = tail call i32 @gsl_sf_complex_dilog_xy_e(double noundef %handler_result, double noundef %5, ptr noundef %2, ptr noundef %3), !dbg !572
  ret i32 %6, !dbg !573
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_dilog(double noundef %0) local_unnamed_addr #0 !dbg !574 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !581
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !582
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !579, metadata !DIExpression(), metadata !583, metadata ptr %4, metadata !DIExpression()), !dbg !584
  tail call void @llvm.dbg.value(metadata double %0, metadata !578, metadata !DIExpression()), !dbg !584
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !581, metadata ptr %2, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !582, metadata ptr %3, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %4, metadata !150, metadata !DIExpression()), !dbg !588
  %5 = fcmp ult double %0, 0.000000e+00, !dbg !589
  br i1 %5, label %8, label %6, !dbg !590

6:                                                ; preds = %1
  %7 = call fastcc i32 @dilog_xge0(double noundef %0, ptr noundef nonnull %4), !dbg !591, !range !165
  br label %18, !dbg !592

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !593
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !593
  %9 = fneg double %0, !dbg !594
  %10 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %2), !dbg !595, !range !165
  call void @llvm.dbg.value(metadata i32 %10, metadata !155, metadata !DIExpression()), !dbg !586
  %11 = fmul double %0, %0, !dbg !596
  %12 = call fastcc i32 @dilog_xge0(double noundef %11, ptr noundef nonnull %3), !dbg !597, !range !165
  call void @llvm.dbg.value(metadata i32 %12, metadata !156, metadata !DIExpression()), !dbg !586
  %13 = load double, ptr %2, align 8, !dbg !598, !tbaa !173
  %14 = load double, ptr %3, align 8, !dbg !599, !tbaa !173
  %15 = fmul double %14, 5.000000e-01, !dbg !600
  %handler_result = call double @fSubHandlerDouble(double %15, double %13), !dbg !601
  store double %handler_result, ptr %4, align 8, !dbg !601, !tbaa !173, !DIAssignID !602
  call void @llvm.dbg.assign(metadata double %handler_result, metadata !579, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !602, metadata ptr %4, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.assign(metadata double poison, metadata !579, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !603, metadata ptr %4, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !584
  %16 = icmp eq i32 %10, 0, !dbg !604
  %17 = select i1 %16, i32 %12, i32 %10, !dbg !604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !605
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !605
  br label %18

18:                                               ; preds = %8, %6
  %19 = phi i32 [ %7, %6 ], [ %17, %8 ], !dbg !606
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !580, metadata !DIExpression()), !dbg !584
  %20 = icmp eq i32 %19, 0, !dbg !607
  br i1 %20, label %22, label %21, !dbg !585

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 661, i32 noundef %19) #8, !dbg !609
  br label %22, !dbg !609

22:                                               ; preds = %21, %18
  %23 = load double, ptr %4, align 8, !dbg !585, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !612
  ret double %23, !dbg !612
}

declare !dbg !613 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc void @dilog_series_2(double noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !dbg !63 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !74, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !75, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !619
  %3 = fmul double %0, 5.000000e-01, !dbg !621
  call void @llvm.dbg.value(metadata double %3, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %3, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 2, metadata !103, metadata !DIExpression()), !dbg !619
  %4 = fmul double %0, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %4, metadata !101, metadata !DIExpression()), !dbg !619
  %5 = fdiv double %4, 1.200000e+01, !dbg !623
  call void @llvm.dbg.value(metadata double %5, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result = call double @fAddHandlerDouble(double %3, double %5), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %4, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 3, metadata !103, metadata !DIExpression()), !dbg !619
  %6 = fmul double %4, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %6, metadata !101, metadata !DIExpression()), !dbg !619
  %7 = fdiv double %6, 3.600000e+01, !dbg !623
  call void @llvm.dbg.value(metadata double %7, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %7), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 4, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %6, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 4, metadata !103, metadata !DIExpression()), !dbg !619
  %8 = fmul double %6, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %8, metadata !101, metadata !DIExpression()), !dbg !619
  %9 = fdiv double %8, 8.000000e+01, !dbg !623
  call void @llvm.dbg.value(metadata double %9, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %9), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 5, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %8, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 5, metadata !103, metadata !DIExpression()), !dbg !619
  %10 = fmul double %8, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %10, metadata !101, metadata !DIExpression()), !dbg !619
  %11 = fdiv double %10, 1.500000e+02, !dbg !623
  call void @llvm.dbg.value(metadata double %11, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %11), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 6, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %10, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 6, metadata !103, metadata !DIExpression()), !dbg !619
  %12 = fmul double %10, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %12, metadata !101, metadata !DIExpression()), !dbg !619
  %13 = fdiv double %12, 2.520000e+02, !dbg !623
  call void @llvm.dbg.value(metadata double %13, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %13), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 7, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %12, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 7, metadata !103, metadata !DIExpression()), !dbg !619
  %14 = fmul double %12, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %14, metadata !101, metadata !DIExpression()), !dbg !619
  %15 = fdiv double %14, 3.920000e+02, !dbg !623
  call void @llvm.dbg.value(metadata double %15, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %15), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 8, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %14, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 8, metadata !103, metadata !DIExpression()), !dbg !619
  %16 = fmul double %14, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %16, metadata !101, metadata !DIExpression()), !dbg !619
  %17 = fdiv double %16, 5.760000e+02, !dbg !623
  call void @llvm.dbg.value(metadata double %17, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %17), !dbg !622
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 9, metadata !103, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %16, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 9, metadata !103, metadata !DIExpression()), !dbg !619
  %18 = fmul double %16, %0, !dbg !622
  call void @llvm.dbg.value(metadata double %18, metadata !101, metadata !DIExpression()), !dbg !619
  %19 = fdiv double %18, 8.100000e+02, !dbg !623
  call void @llvm.dbg.value(metadata double %19, metadata !104, metadata !DIExpression()), !dbg !624
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %19), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 10, metadata !103, metadata !DIExpression()), !dbg !619
  br label %20, !dbg !625

20:                                               ; preds = %36, %2
  %21 = phi i32 [ 10, %2 ], [ %40, %36 ], !dbg !619
  %22 = phi double [ %handler_result7, %2 ], [ %handler_result9, %36 ], !dbg !619
  %23 = phi double [ %18, %2 ], [ %37, %36 ], !dbg !619
  call void @llvm.dbg.value(metadata double %23, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %22, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %21, metadata !103, metadata !DIExpression()), !dbg !619
  %24 = icmp eq i32 %21, 100, !dbg !626
  br i1 %24, label %47, label %25, !dbg !625

25:                                               ; preds = %20
  %26 = fmul double %23, %0, !dbg !627
  call void @llvm.dbg.value(metadata double %26, metadata !101, metadata !DIExpression()), !dbg !619
  %27 = mul nuw nsw i32 %21, %21, !dbg !628
  %28 = sitofp i32 %27 to double, !dbg !629
  %29 = or disjoint i32 %21, 1, !dbg !630
  %30 = sitofp i32 %29 to double, !dbg !630
  %31 = fmul double %28, %30, !dbg !631
  %32 = fdiv double %26, %31, !dbg !632
  call void @llvm.dbg.value(metadata double %32, metadata !108, metadata !DIExpression()), !dbg !633
  %handler_result8 = call double @fAddHandlerDouble(double %22, double %32), !dbg !634
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !102, metadata !DIExpression()), !dbg !619
  %33 = fdiv double %32, %handler_result8, !dbg !634
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !636
  %35 = fcmp olt double %34, 0x3CA0000000000000, !dbg !637
  br i1 %35, label %47, label %36, !llvm.loop !638

36:                                               ; preds = %25
  call void @llvm.dbg.value(metadata double %26, metadata !101, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !102, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 %29, metadata !103, metadata !DIExpression()), !dbg !619
  %37 = fmul double %26, %0, !dbg !627
  call void @llvm.dbg.value(metadata double %37, metadata !101, metadata !DIExpression()), !dbg !619
  %38 = mul nuw nsw i32 %29, %29, !dbg !628
  %39 = sitofp i32 %38 to double, !dbg !629
  %40 = add nuw nsw i32 %21, 2, !dbg !630
  %41 = sitofp i32 %40 to double, !dbg !630
  %42 = fmul double %39, %41, !dbg !631
  %43 = fdiv double %37, %42, !dbg !632
  call void @llvm.dbg.value(metadata double %43, metadata !108, metadata !DIExpression()), !dbg !633
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %43), !dbg !634
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !102, metadata !DIExpression()), !dbg !619
  %44 = fdiv double %43, %handler_result9, !dbg !634
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !636
  %46 = fcmp olt double %45, 0x3CA0000000000000, !dbg !637
  br i1 %46, label %47, label %20, !llvm.loop !638

47:                                               ; preds = %36, %25, %20
  %48 = phi double [ %handler_result8, %25 ], [ %22, %20 ], [ %handler_result9, %36 ], !dbg !619
  call void @llvm.dbg.value(metadata double %48, metadata !102, metadata !DIExpression()), !dbg !619
  store double %48, ptr %1, align 8, !dbg !641, !tbaa !173
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !642
  %50 = fmul double %49, 0x3D29000000000000, !dbg !643
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !644
  store double %50, ptr %51, align 8, !dbg !645, !tbaa !182
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !618
  %52 = fcmp ogt double %0, 1.000000e-02, !dbg !646
  br i1 %52, label %53, label %58, !dbg !647

53:                                               ; preds = %47
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !648
  %handler_result22 = call double @callHandler(i32 12, double %handler_result10, double %handler_result10), !dbg !649
  %54 = fmul double %handler_result10, %handler_result22, !dbg !649
  %55 = fdiv double %54, %0, !dbg !650
  tail call void @llvm.dbg.value(metadata double %55, metadata !78, metadata !DIExpression()), !dbg !618
  %56 = load double, ptr %1, align 8, !dbg !651, !tbaa !173
  %57 = load double, ptr %51, align 8, !dbg !652, !tbaa !182
  br label %67, !dbg !653

58:                                               ; preds = %47
  %59 = fmul double %0, 1.250000e-01, !dbg !654
  %handler_result11 = call double @fAddHandlerDouble(double %59, double 0x3FC2492492492492), !dbg !655
  %60 = fmul double %handler_result11, %0, !dbg !655
  %handler_result12 = call double @fAddHandlerDouble(double %60, double 0x3FC5555555555555), !dbg !656
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !79, metadata !DIExpression()), !dbg !657
  %61 = fmul double %handler_result12, %0, !dbg !656
  %handler_result13 = call double @fAddHandlerDouble(double %61, double 2.000000e-01), !dbg !658
  %62 = fmul double %handler_result13, %0, !dbg !658
  %handler_result14 = call double @fAddHandlerDouble(double %62, double 2.500000e-01), !dbg !659
  %63 = fmul double %handler_result14, %0, !dbg !659
  %handler_result15 = call double @fAddHandlerDouble(double %63, double 0x3FD5555555555555), !dbg !660
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !83, metadata !DIExpression()), !dbg !657
  %handler_result16 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !661
  %64 = fmul double %handler_result15, %0, !dbg !661
  %handler_result17 = call double @fAddHandlerDouble(double %64, double 5.000000e-01), !dbg !662
  %65 = fmul double %handler_result17, %0, !dbg !662
  %handler_result18 = call double @fAddHandlerDouble(double %65, double 1.000000e+00), !dbg !663
  %66 = fmul double %handler_result16, %handler_result18, !dbg !663
  tail call void @llvm.dbg.value(metadata double %66, metadata !78, metadata !DIExpression()), !dbg !618
  br label %67

67:                                               ; preds = %58, %53
  %68 = phi double [ %57, %53 ], [ %50, %58 ], !dbg !652
  %69 = phi double [ %56, %53 ], [ %48, %58 ], !dbg !651
  %70 = phi double [ %55, %53 ], [ %66, %58 ], !dbg !664
  tail call void @llvm.dbg.value(metadata double %70, metadata !78, metadata !DIExpression()), !dbg !618
  %handler_result19 = call double @fAddHandlerDouble(double %70, double 1.000000e+00), !dbg !651
  %handler_result20 = call double @fAddHandlerDouble(double %69, double %handler_result19), !dbg !651
  store double %handler_result20, ptr %1, align 8, !dbg !651, !tbaa !173
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !665
  %72 = fmul double %71, 0x3CC0000000000000, !dbg !666
  %handler_result21 = call double @fAddHandlerDouble(double %72, double %68), !dbg !652
  store double %handler_result21, ptr %51, align 8, !dbg !652, !tbaa !182
  ret void, !dbg !667
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dilog_series_1(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !dbg !668 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !670, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !671, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !672, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %0, metadata !673, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %0, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata i32 2, metadata !675, metadata !DIExpression()), !dbg !680
  br label %3, !dbg !681

3:                                                ; preds = %25, %2
  %4 = phi i32 [ 2, %2 ], [ %26, %25 ]
  %5 = phi double [ %0, %2 ], [ %21, %25 ]
  %6 = phi double [ %0, %2 ], [ %handler_result3, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !675, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %5, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %6, metadata !673, metadata !DIExpression()), !dbg !680
  %7 = sitofp i32 %4 to double, !dbg !682
  %handler_result = call double @fAddHandlerDouble(double %7, double -1.000000e+00), !dbg !683
  %8 = fdiv double %handler_result, %7, !dbg !683
  tail call void @llvm.dbg.value(metadata double %8, metadata !676, metadata !DIExpression()), !dbg !684
  %9 = fmul double %5, %0, !dbg !685
  tail call void @llvm.dbg.value(metadata double %9, metadata !674, metadata !DIExpression()), !dbg !680
  %10 = fmul double %8, %8, !dbg !686
  %11 = fmul double %9, %10, !dbg !687
  tail call void @llvm.dbg.value(metadata double %11, metadata !674, metadata !DIExpression()), !dbg !680
  %handler_result1 = call double @fAddHandlerDouble(double %6, double %11), !dbg !688
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !673, metadata !DIExpression()), !dbg !680
  %12 = fdiv double %11, %handler_result1, !dbg !688
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !690
  %14 = fcmp olt double %13, 0x3CB0000000000000, !dbg !691
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = or disjoint i32 %4, 1, !dbg !692
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !675, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %11, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !673, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !675, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %11, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !673, metadata !DIExpression()), !dbg !680
  %17 = sitofp i32 %16 to double, !dbg !682
  %handler_result2 = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !683
  %18 = fdiv double %handler_result2, %17, !dbg !683
  tail call void @llvm.dbg.value(metadata double %18, metadata !676, metadata !DIExpression()), !dbg !684
  %19 = fmul double %11, %0, !dbg !685
  tail call void @llvm.dbg.value(metadata double %19, metadata !674, metadata !DIExpression()), !dbg !680
  %20 = fmul double %18, %18, !dbg !686
  %21 = fmul double %19, %20, !dbg !687
  tail call void @llvm.dbg.value(metadata double %21, metadata !674, metadata !DIExpression()), !dbg !680
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %21), !dbg !688
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !673, metadata !DIExpression()), !dbg !680
  %22 = fdiv double %21, %handler_result3, !dbg !688
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !690
  %24 = fcmp olt double %23, 0x3CB0000000000000, !dbg !691
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = add nuw nsw i32 %4, 2, !dbg !692
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !675, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %21, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !673, metadata !DIExpression()), !dbg !680
  %27 = icmp eq i32 %26, 1000, !dbg !693
  br i1 %27, label %28, label %3, !dbg !681, !llvm.loop !694

28:                                               ; preds = %25, %15, %3
  %29 = phi double [ %11, %3 ], [ %21, %15 ], [ %21, %25 ], !dbg !687
  %30 = phi double [ %handler_result1, %3 ], [ %handler_result3, %15 ], [ %handler_result3, %25 ], !dbg !696
  %31 = phi i32 [ %4, %3 ], [ %16, %15 ], [ 1000, %25 ], !dbg !697
  tail call void @llvm.dbg.value(metadata double %29, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata double %30, metadata !673, metadata !DIExpression()), !dbg !680
  store double %30, ptr %1, align 8, !dbg !698, !tbaa !173
  %32 = tail call double @llvm.fabs.f64(double %29), !dbg !699
  %33 = fmul double %32, 2.000000e+00, !dbg !700
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !701
  %35 = tail call double @llvm.fabs.f64(double %30), !dbg !702
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !703
  %handler_result4 = call double @fAddHandlerDouble(double %36, double %33), !dbg !704
  store double %handler_result4, ptr %34, align 8, !dbg !704, !tbaa !182
  %37 = icmp eq i32 %31, 1000, !dbg !705
  br i1 %37, label %38, label %39, !dbg !707

38:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 11) #8, !dbg !708
  br label %39, !dbg !708

39:                                               ; preds = %38, %28
  %40 = phi i32 [ 11, %38 ], [ 0, %28 ], !dbg !710
  ret i32 %40, !dbg !711
}

; Function Attrs: nounwind
declare !dbg !712 double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dilogc_fundamental(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !713 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !722
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !723
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !724
  tail call void @llvm.dbg.value(metadata double %0, metadata !717, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata double %1, metadata !718, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata double %2, metadata !719, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !720, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !721, metadata !DIExpression()), !dbg !725
  %9 = fcmp ogt double %0, 0x3FEF5C28F5C28F5C, !dbg !726
  br i1 %9, label %10, label %69, !dbg !728

10:                                               ; preds = %5
  call void @llvm.dbg.assign(metadata i1 undef, metadata !729, metadata !DIExpression(), metadata !724, metadata ptr %8, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %0, metadata !734, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %1, metadata !735, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %2, metadata !736, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata ptr %3, metadata !737, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata ptr %4, metadata !738, metadata !DIExpression()), !dbg !759
  %11 = tail call double @atan2(double noundef %2, double noundef %1) #8, !dbg !761
  call void @llvm.dbg.value(metadata double %11, metadata !739, metadata !DIExpression()), !dbg !759
  %12 = fdiv double %1, %0, !dbg !762
  call void @llvm.dbg.value(metadata double %12, metadata !740, metadata !DIExpression()), !dbg !759
  %13 = fdiv double %2, %0, !dbg !763
  call void @llvm.dbg.value(metadata double %13, metadata !741, metadata !DIExpression()), !dbg !759
  %handler_result52 = call double @callHandler(i32 12, double %0, double %0), !dbg !764
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !742, metadata !DIExpression()), !dbg !759
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %12), !dbg !764
  call void @llvm.dbg.value(metadata double %handler_result, metadata !743, metadata !DIExpression()), !dbg !759
  %14 = fmul double %handler_result, %handler_result, !dbg !764
  call void @llvm.dbg.value(metadata double %14, metadata !744, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !765
  %15 = fmul double %11, %11, !dbg !766
  %16 = tail call double @llvm.fabs.f64(double %11), !dbg !767
  %17 = fmul double %16, 0x401921FB54442D18, !dbg !768
  %handler_result1 = call double @fSubHandlerDouble(double %15, double %17), !dbg !769
  %18 = fmul double %handler_result1, 2.500000e-01, !dbg !769
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3FFA51A6625307D3), !dbg !770
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !759
  %19 = call i32 @gsl_sf_clausen_e(double noundef %11, ptr noundef nonnull %8) #8, !dbg !770
  %20 = load double, ptr %8, align 8, !dbg !771, !tbaa !173
  call void @llvm.dbg.value(metadata double %20, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !759
  %21 = fmul double %handler_result, 2.000000e+00, !dbg !772
  %handler_result53 = call double @callHandler(i32 12, double %21, double %21), !dbg !773
  %22 = fmul double %handler_result53, 5.000000e-01, !dbg !773
  call void @llvm.dbg.value(metadata double %22, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !759
  %23 = fneg double %13, !dbg !774
  %24 = call double @atan2(double noundef %23, double noundef %handler_result) #8, !dbg !775
  call void @llvm.dbg.value(metadata double poison, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !759
  %25 = fmul double %13, 5.000000e-01, !dbg !776
  %26 = fdiv double %25, %handler_result, !dbg !777
  call void @llvm.dbg.value(metadata double %26, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !759
  %27 = fdiv double 5.000000e-01, %handler_result, !dbg !778
  call void @llvm.dbg.value(metadata double %27, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !759
  %28 = fdiv double %25, %14, !dbg !779
  call void @llvm.dbg.value(metadata double %28, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !759
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 2.000000e+00), !dbg !780
  %29 = fmul double %handler_result3, 5.000000e-01, !dbg !780
  %30 = fdiv double %29, %14, !dbg !781
  call void @llvm.dbg.value(metadata double %30, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !745, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !759
  %31 = fmul double %14, %14, !dbg !782
  %32 = fmul double %handler_result, %31, !dbg !783
  %33 = fdiv double %25, %32, !dbg !784
  %34 = fmul double %handler_result, 8.000000e+00, !dbg !785
  %35 = fmul double %13, %13, !dbg !786
  %handler_result4 = call double @fAddHandlerDouble(double %12, double 3.000000e+00), !dbg !787
  %36 = fmul double %handler_result4, %35, !dbg !787
  %handler_result5 = call double @fSubHandlerDouble(double %34, double %36), !dbg !788
  %37 = fmul double %handler_result5, %33, !dbg !788
  call void @llvm.dbg.value(metadata double %37, metadata !749, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !752, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %20, metadata !753, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !751, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i32 1, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i64 1, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %20, metadata !753, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !752, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !751, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !755, metadata !DIExpression()), !dbg !789
  %38 = fmul double %handler_result52, %22, !dbg !790
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result2, double %38), !dbg !791
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !752, metadata !DIExpression()), !dbg !759
  %39 = fmul double %handler_result52, %24, !dbg !791
  %handler_result7 = call double @fSubHandlerDouble(double %20, double %39), !dbg !792
  call void @llvm.dbg.value(metadata i64 2, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !753, metadata !DIExpression()), !dbg !759
  %40 = fmul double %handler_result52, %handler_result52, !dbg !792
  call void @llvm.dbg.value(metadata double %40, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !751, metadata !DIExpression()), !dbg !759
  %41 = fmul double %40, 5.000000e-01, !dbg !793
  call void @llvm.dbg.value(metadata double %41, metadata !755, metadata !DIExpression()), !dbg !789
  %42 = fmul double %41, 5.000000e-01, !dbg !790
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result6, double %42), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !752, metadata !DIExpression()), !dbg !759
  %43 = fmul double %26, %41, !dbg !794
  %handler_result9 = call double @fAddHandlerDouble(double %43, double %handler_result7), !dbg !792
  call void @llvm.dbg.value(metadata i64 3, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !753, metadata !DIExpression()), !dbg !759
  %44 = fmul double %handler_result52, %40, !dbg !792
  call void @llvm.dbg.value(metadata double %44, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !751, metadata !DIExpression()), !dbg !759
  %45 = fdiv double %44, 6.000000e+00, !dbg !793
  call void @llvm.dbg.value(metadata double %45, metadata !755, metadata !DIExpression()), !dbg !789
  %46 = fmul double %27, %45, !dbg !790
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result8, double %46), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !752, metadata !DIExpression()), !dbg !759
  %47 = fmul double %45, 0.000000e+00, !dbg !794
  %handler_result11 = call double @fAddHandlerDouble(double %47, double %handler_result9), !dbg !792
  call void @llvm.dbg.value(metadata i64 4, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !753, metadata !DIExpression()), !dbg !759
  %48 = fmul double %handler_result52, %44, !dbg !792
  call void @llvm.dbg.value(metadata double %48, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 2.400000e+01, metadata !751, metadata !DIExpression()), !dbg !759
  %49 = fdiv double %48, 2.400000e+01, !dbg !793
  call void @llvm.dbg.value(metadata double %49, metadata !755, metadata !DIExpression()), !dbg !789
  %50 = fmul double %49, 0.000000e+00, !dbg !790
  %handler_result12 = call double @fAddHandlerDouble(double %50, double %handler_result10), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !752, metadata !DIExpression()), !dbg !759
  %51 = fmul double %28, %49, !dbg !794
  %handler_result13 = call double @fSubHandlerDouble(double %handler_result11, double %51), !dbg !792
  call void @llvm.dbg.value(metadata i64 5, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !753, metadata !DIExpression()), !dbg !759
  %52 = fmul double %handler_result52, %48, !dbg !792
  call void @llvm.dbg.value(metadata double %52, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 1.200000e+02, metadata !751, metadata !DIExpression()), !dbg !759
  %53 = fdiv double %52, 1.200000e+02, !dbg !793
  call void @llvm.dbg.value(metadata double %53, metadata !755, metadata !DIExpression()), !dbg !789
  %54 = fmul double %30, %53, !dbg !790
  %handler_result14 = call double @fAddHandlerDouble(double %54, double %handler_result12), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !752, metadata !DIExpression()), !dbg !759
  %55 = fmul double %53, 0.000000e+00, !dbg !794
  %handler_result15 = call double @fAddHandlerDouble(double %55, double %handler_result13), !dbg !792
  call void @llvm.dbg.value(metadata i64 6, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !753, metadata !DIExpression()), !dbg !759
  %56 = fmul double %handler_result52, %52, !dbg !792
  call void @llvm.dbg.value(metadata double %56, metadata !750, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata double 7.200000e+02, metadata !751, metadata !DIExpression()), !dbg !759
  %57 = fdiv double %56, 7.200000e+02, !dbg !793
  call void @llvm.dbg.value(metadata double %57, metadata !755, metadata !DIExpression()), !dbg !789
  %58 = fmul double %57, 0.000000e+00, !dbg !790
  %handler_result16 = call double @fAddHandlerDouble(double %58, double %handler_result14), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !752, metadata !DIExpression()), !dbg !759
  %59 = fmul double %37, %57, !dbg !794
  %handler_result17 = call double @fAddHandlerDouble(double %59, double %handler_result15), !dbg !795
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !753, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i64 7, metadata !754, metadata !DIExpression()), !dbg !759
  store double %handler_result16, ptr %3, align 8, !dbg !795, !tbaa !173
  %60 = call double @llvm.fabs.f64(double %handler_result16), !dbg !796
  %61 = fmul double %60, 0x3CE8000000000000, !dbg !797
  %62 = call double @llvm.fabs.f64(double %57), !dbg !798
  %handler_result18 = call double @fAddHandlerDouble(double %62, double %61), !dbg !799
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !799
  store double %handler_result18, ptr %63, align 8, !dbg !800, !tbaa !182
  store double %handler_result17, ptr %4, align 8, !dbg !801, !tbaa !173
  %64 = call double @llvm.fabs.f64(double %handler_result17), !dbg !802
  %65 = fmul double %64, 0x3CE8000000000000, !dbg !803
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !804
  %67 = load double, ptr %66, align 8, !dbg !804, !tbaa !182
  %handler_result19 = call double @fAddHandlerDouble(double %67, double %65), !dbg !805
  %handler_result20 = call double @fAddHandlerDouble(double %62, double %handler_result19), !dbg !806
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !806
  store double %handler_result20, ptr %68, align 8, !dbg !807, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !808
  br label %200, !dbg !809

69:                                               ; preds = %5
  %70 = fcmp ogt double %0, 2.500000e-01, !dbg !810
  br i1 %70, label %71, label %150, !dbg !812

71:                                               ; preds = %69
  call void @llvm.dbg.assign(metadata i1 undef, metadata !813, metadata !DIExpression(), metadata !722, metadata ptr %6, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !826, metadata !DIExpression(), metadata !723, metadata ptr %7, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double %0, metadata !818, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %1, metadata !819, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %2, metadata !820, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %3, metadata !821, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %4, metadata !822, metadata !DIExpression()), !dbg !834
  %72 = fcmp oeq double %0, 0.000000e+00, !dbg !835
  br i1 %72, label %73, label %76, !dbg !836

73:                                               ; preds = %71
  store double 0.000000e+00, ptr %3, align 8, !dbg !837, !tbaa !173
  store double 0.000000e+00, ptr %4, align 8, !dbg !839, !tbaa !173
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !840
  store double 0.000000e+00, ptr %74, align 8, !dbg !841, !tbaa !182
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !842
  store double 0.000000e+00, ptr %75, align 8, !dbg !843, !tbaa !182
  br label %200, !dbg !844

76:                                               ; preds = %71
  call void @llvm.dbg.value(metadata double %0, metadata !845, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %1, metadata !848, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %2, metadata !849, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr undef, metadata !850, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr undef, metadata !851, metadata !DIExpression()), !dbg !869
  %77 = fdiv double %1, %0, !dbg !871
  call void @llvm.dbg.value(metadata double %77, metadata !852, metadata !DIExpression()), !dbg !869
  %78 = fdiv double %2, %0, !dbg !872
  call void @llvm.dbg.value(metadata double %78, metadata !853, metadata !DIExpression()), !dbg !869
  %handler_result21 = call double @fSubHandlerDouble(double 1.000000e+00, double %77), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !854, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %78, metadata !855, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %77, metadata !856, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %78, metadata !857, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %0, metadata !858, metadata !DIExpression()), !dbg !869
  %79 = fmul double %0, 5.000000e-01, !dbg !873
  %80 = fmul double %79, %77, !dbg !874
  call void @llvm.dbg.value(metadata double %80, metadata !859, metadata !DIExpression()), !dbg !869
  %81 = fmul double %79, %78, !dbg !875
  call void @llvm.dbg.value(metadata double %81, metadata !860, metadata !DIExpression()), !dbg !869
  %handler_result54 = call double @callHandler(i32 12, double %0, double %0), !dbg !876
  %82 = fdiv double -1.800000e+01, %handler_result54, !dbg !876
  %83 = fptosi double %82 to i32, !dbg !877
  %84 = add i32 %83, 30, !dbg !878
  call void @llvm.dbg.value(metadata i32 %84, metadata !861, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 2, metadata !862, metadata !DIExpression()), !dbg !869
  %85 = icmp sgt i32 %83, -28, !dbg !879
  br i1 %85, label %86, label %116, !dbg !880

86:                                               ; preds = %76
  %87 = tail call i32 @llvm.smax.i32(i32 %84, i32 3), !dbg !880
  br label %88, !dbg !880

88:                                               ; preds = %88, %86
  %89 = phi double [ %77, %86 ], [ %handler_result23, %88 ]
  %90 = phi double [ %78, %86 ], [ %handler_result25, %88 ]
  %91 = phi double [ %0, %86 ], [ %99, %88 ]
  %92 = phi i32 [ 2, %86 ], [ %113, %88 ]
  %93 = phi double [ %80, %86 ], [ %handler_result27, %88 ]
  %94 = phi double [ %81, %86 ], [ %handler_result28, %88 ]
  call void @llvm.dbg.value(metadata double %89, metadata !856, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %90, metadata !857, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %91, metadata !858, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32 %92, metadata !862, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %93, metadata !859, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %94, metadata !860, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %89, metadata !868, metadata !DIExpression()), !dbg !881
  %95 = fmul double %handler_result21, %89, !dbg !882
  %96 = fmul double %78, %90, !dbg !883
  %handler_result22 = call double @fAddHandlerDouble(double %95, double %96), !dbg !884
  %handler_result23 = call double @fSubHandlerDouble(double %89, double %handler_result22), !dbg !885
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !856, metadata !DIExpression()), !dbg !869
  %97 = fmul double %handler_result21, %90, !dbg !885
  %98 = fmul double %78, %89, !dbg !886
  %handler_result24 = call double @fSubHandlerDouble(double %97, double %98), !dbg !887
  %handler_result25 = call double @fSubHandlerDouble(double %90, double %handler_result24), !dbg !888
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !857, metadata !DIExpression()), !dbg !869
  %99 = fmul double %91, %0, !dbg !888
  call void @llvm.dbg.value(metadata double %99, metadata !858, metadata !DIExpression()), !dbg !869
  %100 = sitofp i32 %92 to double, !dbg !889
  %101 = fmul double %100, %100, !dbg !890
  %handler_result26 = call double @fAddHandlerDouble(double %100, double 1.000000e+00), !dbg !891
  %102 = fmul double %101, %handler_result26, !dbg !891
  %103 = fdiv double %99, %102, !dbg !892
  %104 = fmul double %handler_result23, %103, !dbg !893
  call void @llvm.dbg.value(metadata double %104, metadata !863, metadata !DIExpression()), !dbg !881
  %105 = fmul double %handler_result25, %103, !dbg !894
  call void @llvm.dbg.value(metadata double %105, metadata !867, metadata !DIExpression()), !dbg !881
  %handler_result27 = call double @fAddHandlerDouble(double %93, double %104), !dbg !895
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !859, metadata !DIExpression()), !dbg !869
  %handler_result28 = call double @fAddHandlerDouble(double %94, double %105), !dbg !896
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !860, metadata !DIExpression()), !dbg !869
  %106 = fmul double %104, %104, !dbg !896
  %107 = fmul double %105, %105, !dbg !898
  %handler_result29 = call double @fAddHandlerDouble(double %106, double %107), !dbg !899
  %108 = fmul double %handler_result27, %handler_result27, !dbg !899
  %109 = fmul double %handler_result28, %handler_result28, !dbg !900
  %handler_result30 = call double @fAddHandlerDouble(double %108, double %109), !dbg !901
  %110 = fdiv double %handler_result29, %handler_result30, !dbg !901
  %111 = tail call double @llvm.fabs.f64(double %110), !dbg !902
  %112 = fcmp olt double %111, 0x3970000000000000, !dbg !903
  call void @llvm.dbg.value(metadata i32 %92, metadata !862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !869
  %113 = add nuw nsw i32 %92, 1
  call void @llvm.dbg.value(metadata i32 %113, metadata !862, metadata !DIExpression()), !dbg !869
  %114 = icmp eq i32 %113, %87
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %88, !llvm.loop !904

116:                                              ; preds = %88, %76
  %117 = phi double [ %81, %76 ], [ %handler_result28, %88 ], !dbg !869
  %118 = phi double [ %80, %76 ], [ %handler_result27, %88 ], !dbg !869
  call void @llvm.dbg.value(metadata double %118, metadata !859, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %117, metadata !860, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %118, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !832
  %119 = sitofp i32 %84 to double, !dbg !906
  %120 = fmul double %119, 2.000000e+00, !dbg !907
  %121 = fmul double %120, 0x3CB0000000000000, !dbg !908
  %122 = tail call double @llvm.fabs.f64(double %118), !dbg !909
  %123 = fmul double %121, %122, !dbg !910
  call void @llvm.dbg.value(metadata double %123, metadata !823, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !832
  call void @llvm.dbg.value(metadata double %117, metadata !824, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !832
  %124 = tail call double @llvm.fabs.f64(double %117), !dbg !911
  %125 = fmul double %121, %124, !dbg !912
  call void @llvm.dbg.value(metadata double %125, metadata !824, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !832
  call void @llvm.dbg.value(metadata i32 0, metadata !825, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !913
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !914
  %handler_result31 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !915
  %126 = fneg double %2, !dbg !915
  %127 = call i32 @gsl_sf_complex_log_e(double noundef %handler_result31, double noundef %126, ptr noundef nonnull %6, ptr noundef nonnull %7) #8, !dbg !916
  call void @llvm.dbg.value(metadata i32 %127, metadata !827, metadata !DIExpression()), !dbg !832
  %128 = load double, ptr %6, align 8, !dbg !917, !tbaa !173
  %129 = fmul double %128, %1, !dbg !918
  %130 = load double, ptr %7, align 8, !dbg !919, !tbaa !173
  %131 = fmul double %130, %2, !dbg !920
  %handler_result32 = call double @fAddHandlerDouble(double %129, double %131), !dbg !921
  %132 = fmul double %0, %0, !dbg !921
  %133 = fdiv double %handler_result32, %132, !dbg !922
  call void @llvm.dbg.value(metadata double %133, metadata !828, metadata !DIExpression()), !dbg !832
  %134 = fmul double %130, %1, !dbg !923
  %135 = fmul double %128, %2, !dbg !924
  %handler_result33 = call double @fSubHandlerDouble(double %134, double %135), !dbg !925
  %136 = fdiv double %handler_result33, %132, !dbg !925
  call void @llvm.dbg.value(metadata double %136, metadata !829, metadata !DIExpression()), !dbg !832
  %137 = fmul double %handler_result31, %133, !dbg !926
  %138 = fmul double %136, %2, !dbg !927
  %handler_result34 = call double @fAddHandlerDouble(double %137, double %138), !dbg !928
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !830, metadata !DIExpression()), !dbg !832
  %139 = fmul double %handler_result31, %136, !dbg !928
  %140 = fmul double %133, %2, !dbg !929
  %handler_result35 = call double @fSubHandlerDouble(double %139, double %140), !dbg !930
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !831, metadata !DIExpression()), !dbg !832
  %handler_result36 = call double @fAddHandlerDouble(double %118, double %handler_result34), !dbg !931
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double 1.000000e+00), !dbg !932
  store double %handler_result37, ptr %3, align 8, !dbg !932, !tbaa !173
  %handler_result38 = call double @fAddHandlerDouble(double %117, double %handler_result35), !dbg !933
  store double %handler_result38, ptr %4, align 8, !dbg !933, !tbaa !173
  %141 = load double, ptr %3, align 8, !dbg !934, !tbaa !173
  %142 = call double @llvm.fabs.f64(double %141), !dbg !935
  %143 = call double @llvm.fabs.f64(double %handler_result34), !dbg !936
  %handler_result39 = call double @fAddHandlerDouble(double %142, double %143), !dbg !937
  %144 = fmul double %handler_result39, 0x3CC0000000000000, !dbg !937
  %handler_result40 = call double @fAddHandlerDouble(double %123, double %144), !dbg !938
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !938
  store double %handler_result40, ptr %145, align 8, !dbg !939, !tbaa !182
  %146 = call double @llvm.fabs.f64(double %handler_result38), !dbg !940
  %147 = call double @llvm.fabs.f64(double %handler_result35), !dbg !941
  %handler_result41 = call double @fAddHandlerDouble(double %147, double %146), !dbg !942
  %148 = fmul double %handler_result41, 0x3CC0000000000000, !dbg !942
  %handler_result42 = call double @fAddHandlerDouble(double %125, double %148), !dbg !943
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !943
  store double %handler_result42, ptr %149, align 8, !dbg !944, !tbaa !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !945
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !945
  br label %200

150:                                              ; preds = %69
  call void @llvm.dbg.value(metadata double %0, metadata !946, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %1, metadata !949, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %2, metadata !950, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %3, metadata !951, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %4, metadata !952, metadata !DIExpression()), !dbg !970
  %151 = fdiv double %1, %0, !dbg !972
  call void @llvm.dbg.value(metadata double %151, metadata !953, metadata !DIExpression()), !dbg !970
  %152 = fdiv double %2, %0, !dbg !973
  call void @llvm.dbg.value(metadata double %152, metadata !954, metadata !DIExpression()), !dbg !970
  %handler_result43 = call double @fSubHandlerDouble(double 1.000000e+00, double %151), !dbg !974
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !955, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %152, metadata !956, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %151, metadata !957, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %152, metadata !958, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %0, metadata !959, metadata !DIExpression()), !dbg !970
  %153 = fmul double %151, %0, !dbg !974
  call void @llvm.dbg.value(metadata double %153, metadata !960, metadata !DIExpression()), !dbg !970
  %154 = fmul double %152, %0, !dbg !975
  call void @llvm.dbg.value(metadata double %154, metadata !961, metadata !DIExpression()), !dbg !970
  %handler_result55 = call double @callHandler(i32 12, double %0, double %0), !dbg !976
  %155 = fdiv double -2.200000e+01, %handler_result55, !dbg !976
  %156 = fptosi double %155 to i32, !dbg !977
  %157 = add i32 %156, 50, !dbg !978
  call void @llvm.dbg.value(metadata i32 %157, metadata !962, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !963, metadata !DIExpression()), !dbg !970
  %158 = icmp sgt i32 %156, -48, !dbg !979
  br i1 %158, label %159, label %188, !dbg !980

159:                                              ; preds = %150
  %160 = tail call i32 @llvm.smax.i32(i32 %157, i32 3), !dbg !980
  br label %161, !dbg !980

161:                                              ; preds = %161, %159
  %162 = phi double [ %151, %159 ], [ %handler_result45, %161 ]
  %163 = phi double [ %152, %159 ], [ %handler_result47, %161 ]
  %164 = phi double [ %0, %159 ], [ %172, %161 ]
  %165 = phi i32 [ 2, %159 ], [ %185, %161 ]
  %166 = phi double [ %153, %159 ], [ %handler_result48, %161 ]
  %167 = phi double [ %154, %159 ], [ %handler_result49, %161 ]
  call void @llvm.dbg.value(metadata double %162, metadata !957, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %163, metadata !958, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %164, metadata !959, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 %165, metadata !963, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %166, metadata !960, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %167, metadata !961, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %162, metadata !969, metadata !DIExpression()), !dbg !981
  %168 = fmul double %handler_result43, %162, !dbg !982
  %169 = fmul double %152, %163, !dbg !983
  %handler_result44 = call double @fAddHandlerDouble(double %168, double %169), !dbg !984
  %handler_result45 = call double @fSubHandlerDouble(double %162, double %handler_result44), !dbg !985
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !957, metadata !DIExpression()), !dbg !970
  %170 = fmul double %handler_result43, %163, !dbg !985
  %171 = fmul double %152, %162, !dbg !986
  %handler_result46 = call double @fSubHandlerDouble(double %170, double %171), !dbg !987
  %handler_result47 = call double @fSubHandlerDouble(double %163, double %handler_result46), !dbg !988
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !958, metadata !DIExpression()), !dbg !970
  %172 = fmul double %164, %0, !dbg !988
  call void @llvm.dbg.value(metadata double %172, metadata !959, metadata !DIExpression()), !dbg !970
  %173 = sitofp i32 %165 to double, !dbg !989
  %174 = fmul double %173, %173, !dbg !990
  %175 = fdiv double %172, %174, !dbg !991
  %176 = fmul double %handler_result45, %175, !dbg !992
  call void @llvm.dbg.value(metadata double %176, metadata !964, metadata !DIExpression()), !dbg !981
  %177 = fmul double %handler_result47, %175, !dbg !993
  call void @llvm.dbg.value(metadata double %177, metadata !968, metadata !DIExpression()), !dbg !981
  %handler_result48 = call double @fAddHandlerDouble(double %166, double %176), !dbg !994
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !960, metadata !DIExpression()), !dbg !970
  %handler_result49 = call double @fAddHandlerDouble(double %167, double %177), !dbg !995
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !961, metadata !DIExpression()), !dbg !970
  %178 = fmul double %176, %176, !dbg !995
  %179 = fmul double %177, %177, !dbg !997
  %handler_result50 = call double @fAddHandlerDouble(double %178, double %179), !dbg !998
  %180 = fmul double %handler_result48, %handler_result48, !dbg !998
  %181 = fmul double %handler_result49, %handler_result49, !dbg !999
  %handler_result51 = call double @fAddHandlerDouble(double %180, double %181), !dbg !1000
  %182 = fdiv double %handler_result50, %handler_result51, !dbg !1000
  %183 = tail call double @llvm.fabs.f64(double %182), !dbg !1001
  %184 = fcmp olt double %183, 0x3970000000000000, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %165, metadata !963, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !970
  %185 = add nuw nsw i32 %165, 1
  call void @llvm.dbg.value(metadata i32 %185, metadata !963, metadata !DIExpression()), !dbg !970
  %186 = icmp eq i32 %185, %160
  %187 = select i1 %184, i1 true, i1 %186
  br i1 %187, label %188, label %161, !llvm.loop !1003

188:                                              ; preds = %161, %150
  %189 = phi double [ %154, %150 ], [ %handler_result49, %161 ], !dbg !970
  %190 = phi double [ %153, %150 ], [ %handler_result48, %161 ], !dbg !970
  call void @llvm.dbg.value(metadata double %190, metadata !960, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %189, metadata !961, metadata !DIExpression()), !dbg !970
  store double %190, ptr %3, align 8, !dbg !1005, !tbaa !173
  %191 = sitofp i32 %157 to double, !dbg !1006
  %192 = fmul double %191, 2.000000e+00, !dbg !1007
  %193 = fmul double %192, 0x3CB0000000000000, !dbg !1008
  %194 = tail call double @llvm.fabs.f64(double %190), !dbg !1009
  %195 = fmul double %193, %194, !dbg !1010
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1011
  store double %195, ptr %196, align 8, !dbg !1012, !tbaa !182
  store double %189, ptr %4, align 8, !dbg !1013, !tbaa !173
  %197 = tail call double @llvm.fabs.f64(double %189), !dbg !1014
  %198 = fmul double %193, %197, !dbg !1015
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1016
  store double %198, ptr %199, align 8, !dbg !1017, !tbaa !182
  br label %200, !dbg !1018

200:                                              ; preds = %188, %116, %73, %10
  %201 = phi i32 [ 0, %10 ], [ 0, %188 ], [ 0, %73 ], [ %127, %116 ], !dbg !1019
  ret i32 %201, !dbg !1020
}

declare !dbg !1021 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dilog.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "75c7c7239dbccc8317bb987a6a7bcee8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !58, globals: !60, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!21, !59}
!59 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!60 = !{!0, !7, !61, !84, !86, !88, !90, !92, !94, !12, !112, !135}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "c3", scope: !63, file: !2, line: 116, type: !82, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "dilog_series_2", scope: !2, file: !2, line: 108, type: !64, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !73)
!64 = !DISubroutineType(cc: DW_CC_nocall, types: !65)
!65 = !{!21, !59, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !68, line: 37, size: 128, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !68, line: 38, baseType: !59, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !69, file: !68, line: 39, baseType: !59, size: 64, offset: 64)
!73 = !{!74, !75, !76, !78, !79, !83}
!74 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !2, line: 108, type: !59)
!75 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !2, line: 108, type: !66)
!76 = !DILocalVariable(name: "stat_s3", scope: !63, file: !2, line: 110, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!78 = !DILocalVariable(name: "t", scope: !63, file: !2, line: 111, type: !59)
!79 = !DILocalVariable(name: "t68", scope: !80, file: !2, line: 122, type: !82)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 115, column: 3)
!81 = distinct !DILexicalBlock(scope: !63, file: !2, line: 112, column: 6)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!83 = !DILocalVariable(name: "t38", scope: !80, file: !2, line: 123, type: !82)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "c4", scope: !63, file: !2, line: 117, type: !82, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "c5", scope: !63, file: !2, line: 118, type: !82, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "c6", scope: !63, file: !2, line: 119, type: !82, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "c7", scope: !63, file: !2, line: 120, type: !82, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "c8", scope: !63, file: !2, line: 121, type: !82, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "kmax", scope: !96, file: !2, line: 74, type: !77, isLocal: true, isDefinition: true)
!96 = distinct !DISubprogram(name: "series_2", scope: !2, file: !2, line: 72, type: !97, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !98)
!97 = !DISubroutineType(types: !65)
!98 = !{!99, !100, !101, !102, !103, !104, !108}
!99 = !DILocalVariable(name: "r", arg: 1, scope: !96, file: !2, line: 72, type: !59)
!100 = !DILocalVariable(name: "result", arg: 2, scope: !96, file: !2, line: 72, type: !66)
!101 = !DILocalVariable(name: "rk", scope: !96, file: !2, line: 75, type: !59)
!102 = !DILocalVariable(name: "sum", scope: !96, file: !2, line: 76, type: !59)
!103 = !DILocalVariable(name: "k", scope: !96, file: !2, line: 77, type: !21)
!104 = !DILocalVariable(name: "ds", scope: !105, file: !2, line: 80, type: !59)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 79, column: 3)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 78, column: 3)
!107 = distinct !DILexicalBlock(scope: !96, file: !2, line: 78, column: 3)
!108 = !DILocalVariable(name: "ds", scope: !109, file: !2, line: 87, type: !59)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 86, column: 3)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 85, column: 3)
!111 = distinct !DILexicalBlock(scope: !96, file: !2, line: 85, column: 3)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "MAGIC_SPLIT_VALUE", scope: !114, file: !2, line: 489, type: !82, isLocal: true, isDefinition: true)
!114 = distinct !DISubprogram(name: "dilogc_unitdisk", scope: !2, file: !2, line: 487, type: !115, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!21, !59, !59, !66, !66}
!117 = !{!118, !119, !120, !121, !122, !123, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!118 = !DILocalVariable(name: "x", arg: 1, scope: !114, file: !2, line: 487, type: !59)
!119 = !DILocalVariable(name: "y", arg: 2, scope: !114, file: !2, line: 487, type: !59)
!120 = !DILocalVariable(name: "real_dl", arg: 3, scope: !114, file: !2, line: 487, type: !66)
!121 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !114, file: !2, line: 487, type: !66)
!122 = !DILocalVariable(name: "r", scope: !114, file: !2, line: 491, type: !82)
!123 = !DILocalVariable(name: "x_tmp", scope: !124, file: !2, line: 499, type: !82)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 494, column: 3)
!125 = distinct !DILexicalBlock(scope: !114, file: !2, line: 493, column: 6)
!126 = !DILocalVariable(name: "y_tmp", scope: !124, file: !2, line: 500, type: !82)
!127 = !DILocalVariable(name: "r_tmp", scope: !124, file: !2, line: 501, type: !82)
!128 = !DILocalVariable(name: "result_re_tmp", scope: !124, file: !2, line: 505, type: !67)
!129 = !DILocalVariable(name: "result_im_tmp", scope: !124, file: !2, line: 506, type: !67)
!130 = !DILocalVariable(name: "stat_dilog", scope: !124, file: !2, line: 508, type: !77)
!131 = !DILocalVariable(name: "lnz", scope: !124, file: !2, line: 510, type: !82)
!132 = !DILocalVariable(name: "lnomz", scope: !124, file: !2, line: 511, type: !82)
!133 = !DILocalVariable(name: "argz", scope: !124, file: !2, line: 512, type: !82)
!134 = !DILocalVariable(name: "argomz", scope: !124, file: !2, line: 513, type: !82)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "zeta2", scope: !114, file: !2, line: 490, type: !82, isLocal: true, isDefinition: true)
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"PIE Level", i32 2}
!142 = !{i32 7, !"uwtable", i32 2}
!143 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!144 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!145 = distinct !DISubprogram(name: "gsl_sf_dilog_e", scope: !2, file: !2, line: 535, type: !146, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!21, !82, !66}
!148 = !{!149, !150, !151, !154, !155, !156}
!149 = !DILocalVariable(name: "x", arg: 1, scope: !145, file: !2, line: 535, type: !82)
!150 = !DILocalVariable(name: "result", arg: 2, scope: !145, file: !2, line: 535, type: !66)
!151 = !DILocalVariable(name: "d1", scope: !152, file: !2, line: 541, type: !67)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 540, column: 8)
!153 = distinct !DILexicalBlock(scope: !145, file: !2, line: 537, column: 6)
!154 = !DILocalVariable(name: "d2", scope: !152, file: !2, line: 541, type: !67)
!155 = !DILocalVariable(name: "stat_d1", scope: !152, file: !2, line: 542, type: !21)
!156 = !DILocalVariable(name: "stat_d2", scope: !152, file: !2, line: 543, type: !21)
!157 = distinct !DIAssignID()
!158 = !DILocation(line: 0, scope: !152)
!159 = distinct !DIAssignID()
!160 = !DILocation(line: 0, scope: !145)
!161 = !DILocation(line: 537, column: 8, scope: !153)
!162 = !DILocation(line: 537, column: 6, scope: !145)
!163 = !DILocation(line: 538, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !153, file: !2, line: 537, column: 16)
!165 = !{i32 0, i32 12}
!166 = !DILocation(line: 538, column: 5, scope: !164)
!167 = !DILocation(line: 541, column: 5, scope: !152)
!168 = !DILocation(line: 542, column: 31, scope: !152)
!169 = !DILocation(line: 542, column: 19, scope: !152)
!170 = !DILocation(line: 543, column: 31, scope: !152)
!171 = !DILocation(line: 543, column: 19, scope: !152)
!172 = !DILocation(line: 544, column: 24, scope: !152)
!173 = !{!174, !175, i64 0}
!174 = !{!"gsl_sf_result_struct", !175, i64 0, !175, i64 8}
!175 = !{!"double", !176, i64 0}
!176 = !{!"omnipotent char", !177, i64 0}
!177 = !{!"Simple C/C++ TBAA"}
!178 = !DILocation(line: 544, column: 39, scope: !152)
!179 = !DILocation(line: 544, column: 34, scope: !152)
!180 = !DILocation(line: 544, column: 18, scope: !152)
!181 = !DILocation(line: 545, column: 24, scope: !152)
!182 = !{!174, !175, i64 8}
!183 = !DILocation(line: 545, column: 39, scope: !152)
!184 = !DILocation(line: 545, column: 34, scope: !152)
!185 = !DILocation(line: 545, column: 13, scope: !152)
!186 = !DILocation(line: 546, column: 44, scope: !152)
!187 = !DILocation(line: 546, column: 42, scope: !152)
!188 = !DILocation(line: 546, column: 17, scope: !152)
!189 = !DILocation(line: 547, column: 12, scope: !152)
!190 = !DILocation(line: 548, column: 3, scope: !153)
!191 = !DILocation(line: 0, scope: !153)
!192 = !DILocation(line: 549, column: 1, scope: !145)
!193 = distinct !DISubprogram(name: "dilog_xge0", scope: !2, file: !2, line: 136, type: !146, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !194)
!194 = !{!195, !196, !197, !200, !201, !202, !203, !204, !205, !208, !209, !210, !211, !212, !213, !214, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !233, !234, !235}
!195 = !DILocalVariable(name: "x", arg: 1, scope: !193, file: !2, line: 136, type: !82)
!196 = !DILocalVariable(name: "result", arg: 2, scope: !193, file: !2, line: 136, type: !66)
!197 = !DILocalVariable(name: "ser", scope: !198, file: !2, line: 139, type: !67)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 138, column: 15)
!199 = distinct !DILexicalBlock(scope: !193, file: !2, line: 138, column: 6)
!200 = !DILocalVariable(name: "stat_ser", scope: !198, file: !2, line: 140, type: !77)
!201 = !DILocalVariable(name: "log_x", scope: !198, file: !2, line: 141, type: !82)
!202 = !DILocalVariable(name: "t1", scope: !198, file: !2, line: 142, type: !82)
!203 = !DILocalVariable(name: "t2", scope: !198, file: !2, line: 143, type: !82)
!204 = !DILocalVariable(name: "t3", scope: !198, file: !2, line: 144, type: !82)
!205 = !DILocalVariable(name: "ser", scope: !206, file: !2, line: 152, type: !67)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 151, column: 21)
!207 = distinct !DILexicalBlock(scope: !199, file: !2, line: 151, column: 11)
!208 = !DILocalVariable(name: "stat_ser", scope: !206, file: !2, line: 153, type: !77)
!209 = !DILocalVariable(name: "log_x", scope: !206, file: !2, line: 154, type: !82)
!210 = !DILocalVariable(name: "log_term", scope: !206, file: !2, line: 155, type: !82)
!211 = !DILocalVariable(name: "t1", scope: !206, file: !2, line: 156, type: !82)
!212 = !DILocalVariable(name: "t2", scope: !206, file: !2, line: 157, type: !82)
!213 = !DILocalVariable(name: "t3", scope: !206, file: !2, line: 158, type: !82)
!214 = !DILocalVariable(name: "eps", scope: !215, file: !2, line: 167, type: !82)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 165, column: 20)
!216 = distinct !DILexicalBlock(scope: !207, file: !2, line: 165, column: 11)
!217 = !DILocalVariable(name: "lne", scope: !215, file: !2, line: 168, type: !82)
!218 = !DILocalVariable(name: "c0", scope: !215, file: !2, line: 169, type: !82)
!219 = !DILocalVariable(name: "c1", scope: !215, file: !2, line: 170, type: !82)
!220 = !DILocalVariable(name: "c2", scope: !215, file: !2, line: 171, type: !82)
!221 = !DILocalVariable(name: "c3", scope: !215, file: !2, line: 172, type: !82)
!222 = !DILocalVariable(name: "c4", scope: !215, file: !2, line: 173, type: !82)
!223 = !DILocalVariable(name: "c5", scope: !215, file: !2, line: 174, type: !82)
!224 = !DILocalVariable(name: "c6", scope: !215, file: !2, line: 175, type: !82)
!225 = !DILocalVariable(name: "c7", scope: !215, file: !2, line: 176, type: !82)
!226 = !DILocalVariable(name: "c8", scope: !215, file: !2, line: 177, type: !82)
!227 = !DILocalVariable(name: "ser", scope: !228, file: !2, line: 188, type: !67)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 187, column: 20)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 187, column: 11)
!230 = distinct !DILexicalBlock(scope: !216, file: !2, line: 182, column: 11)
!231 = !DILocalVariable(name: "stat_ser", scope: !228, file: !2, line: 189, type: !77)
!232 = !DILocalVariable(name: "log_x", scope: !228, file: !2, line: 190, type: !82)
!233 = !DILocalVariable(name: "t1", scope: !228, file: !2, line: 191, type: !82)
!234 = !DILocalVariable(name: "t2", scope: !228, file: !2, line: 192, type: !82)
!235 = !DILocalVariable(name: "t3", scope: !228, file: !2, line: 193, type: !82)
!236 = distinct !DIAssignID()
!237 = !DILocation(line: 0, scope: !198)
!238 = distinct !DIAssignID()
!239 = !DILocation(line: 0, scope: !206)
!240 = distinct !DIAssignID()
!241 = !DILocation(line: 0, scope: !228)
!242 = !DILocation(line: 0, scope: !193)
!243 = !DILocation(line: 138, column: 8, scope: !199)
!244 = !DILocation(line: 138, column: 6, scope: !193)
!245 = !DILocation(line: 139, column: 5, scope: !198)
!246 = !DILocation(line: 140, column: 44, scope: !198)
!247 = !DILocation(line: 140, column: 26, scope: !198)
!248 = !DILocation(line: 143, column: 27, scope: !198)
!249 = !DILocation(line: 144, column: 26, scope: !198)
!250 = !DILocation(line: 144, column: 32, scope: !198)
!251 = !DILocation(line: 145, column: 28, scope: !198)
!252 = !DILocation(line: 145, column: 18, scope: !198)
!253 = !DILocation(line: 146, column: 38, scope: !198)
!254 = !DILocation(line: 146, column: 36, scope: !198)
!255 = !DILocation(line: 146, column: 56, scope: !198)
!256 = !DILocation(line: 146, column: 13, scope: !198)
!257 = !DILocation(line: 147, column: 50, scope: !198)
!258 = !DILocation(line: 147, column: 61, scope: !198)
!259 = !DILocation(line: 147, column: 36, scope: !198)
!260 = !DILocation(line: 148, column: 44, scope: !198)
!261 = !DILocation(line: 148, column: 42, scope: !198)
!262 = !DILocation(line: 148, column: 17, scope: !198)
!263 = !DILocation(line: 150, column: 3, scope: !199)
!264 = !DILocation(line: 151, column: 13, scope: !207)
!265 = !DILocation(line: 151, column: 11, scope: !199)
!266 = !DILocation(line: 152, column: 5, scope: !206)
!267 = !DILocation(line: 153, column: 50, scope: !206)
!268 = !DILocation(line: 153, column: 26, scope: !206)
!269 = !DILocation(line: 155, column: 38, scope: !206)
!270 = !DILocation(line: 155, column: 58, scope: !206)
!271 = !DILocation(line: 155, column: 35, scope: !206)
!272 = !DILocation(line: 157, column: 27, scope: !206)
!273 = !DILocation(line: 159, column: 28, scope: !206)
!274 = !DILocation(line: 159, column: 18, scope: !206)
!275 = !DILocation(line: 160, column: 38, scope: !206)
!276 = !DILocation(line: 160, column: 36, scope: !206)
!277 = !DILocation(line: 160, column: 56, scope: !206)
!278 = !DILocation(line: 160, column: 13, scope: !206)
!279 = !DILocation(line: 161, column: 50, scope: !206)
!280 = !DILocation(line: 161, column: 61, scope: !206)
!281 = !DILocation(line: 161, column: 36, scope: !206)
!282 = !DILocation(line: 162, column: 44, scope: !206)
!283 = !DILocation(line: 162, column: 42, scope: !206)
!284 = !DILocation(line: 162, column: 17, scope: !206)
!285 = !DILocation(line: 164, column: 3, scope: !207)
!286 = !DILocation(line: 165, column: 13, scope: !216)
!287 = !DILocation(line: 165, column: 11, scope: !207)
!288 = !DILocation(line: 168, column: 24, scope: !215)
!289 = !DILocation(line: 0, scope: !215)
!290 = !DILocation(line: 171, column: 34, scope: !215)
!291 = !DILocation(line: 171, column: 39, scope: !215)
!292 = !DILocation(line: 172, column: 34, scope: !215)
!293 = !DILocation(line: 172, column: 39, scope: !215)
!294 = !DILocation(line: 173, column: 34, scope: !215)
!295 = !DILocation(line: 173, column: 39, scope: !215)
!296 = !DILocation(line: 174, column: 34, scope: !215)
!297 = !DILocation(line: 174, column: 39, scope: !215)
!298 = !DILocation(line: 175, column: 34, scope: !215)
!299 = !DILocation(line: 175, column: 39, scope: !215)
!300 = !DILocation(line: 176, column: 34, scope: !215)
!301 = !DILocation(line: 176, column: 39, scope: !215)
!302 = !DILocation(line: 177, column: 34, scope: !215)
!303 = !DILocation(line: 177, column: 39, scope: !215)
!304 = !DILocation(line: 178, column: 81, scope: !215)
!305 = !DILocation(line: 178, column: 73, scope: !215)
!306 = !DILocation(line: 178, column: 65, scope: !215)
!307 = !DILocation(line: 178, column: 57, scope: !215)
!308 = !DILocation(line: 178, column: 49, scope: !215)
!309 = !DILocation(line: 178, column: 41, scope: !215)
!310 = !DILocation(line: 178, column: 33, scope: !215)
!311 = !DILocation(line: 178, column: 25, scope: !215)
!312 = !DILocation(line: 178, column: 17, scope: !215)
!313 = !DILocation(line: 179, column: 43, scope: !215)
!314 = !DILocation(line: 179, column: 41, scope: !215)
!315 = !DILocation(line: 179, column: 13, scope: !215)
!316 = !DILocation(line: 179, column: 17, scope: !215)
!317 = !DILocation(line: 182, column: 13, scope: !230)
!318 = !DILocation(line: 182, column: 11, scope: !216)
!319 = !DILocation(line: 183, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !230, file: !2, line: 182, column: 21)
!321 = !DILocation(line: 184, column: 13, scope: !320)
!322 = !DILocation(line: 184, column: 17, scope: !320)
!323 = !DILocation(line: 185, column: 5, scope: !320)
!324 = !DILocation(line: 187, column: 13, scope: !229)
!325 = !DILocation(line: 187, column: 11, scope: !230)
!326 = !DILocation(line: 188, column: 5, scope: !228)
!327 = !DILocation(line: 189, column: 26, scope: !228)
!328 = !DILocation(line: 192, column: 27, scope: !228)
!329 = !DILocation(line: 193, column: 28, scope: !228)
!330 = !DILocation(line: 194, column: 28, scope: !228)
!331 = !DILocation(line: 194, column: 18, scope: !228)
!332 = !DILocation(line: 195, column: 38, scope: !228)
!333 = !DILocation(line: 195, column: 36, scope: !228)
!334 = !DILocation(line: 195, column: 56, scope: !228)
!335 = !DILocation(line: 195, column: 13, scope: !228)
!336 = !DILocation(line: 196, column: 50, scope: !228)
!337 = !DILocation(line: 196, column: 61, scope: !228)
!338 = !DILocation(line: 196, column: 36, scope: !228)
!339 = !DILocation(line: 197, column: 44, scope: !228)
!340 = !DILocation(line: 197, column: 42, scope: !228)
!341 = !DILocation(line: 197, column: 17, scope: !228)
!342 = !DILocation(line: 199, column: 3, scope: !229)
!343 = !DILocation(line: 200, column: 13, scope: !344)
!344 = distinct !DILexicalBlock(scope: !229, file: !2, line: 200, column: 11)
!345 = !DILocation(line: 200, column: 11, scope: !229)
!346 = !DILocation(line: 201, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !2, line: 200, column: 21)
!348 = !DILocation(line: 201, column: 5, scope: !347)
!349 = !DILocation(line: 203, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !2, line: 203, column: 11)
!351 = !DILocation(line: 203, column: 11, scope: !344)
!352 = !DILocation(line: 204, column: 12, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 203, column: 20)
!354 = !DILocation(line: 204, column: 5, scope: !353)
!355 = !DILocation(line: 209, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !2, line: 206, column: 8)
!357 = !DILocation(line: 210, column: 5, scope: !356)
!358 = !DILocation(line: 0, scope: !199)
!359 = !DILocation(line: 212, column: 1, scope: !193)
!360 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_xy_e", scope: !2, file: !2, line: 553, type: !361, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!21, !82, !82, !66, !66}
!363 = !{!364, !365, !366, !367, !368, !369, !370, !374, !375, !376, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!364 = !DILocalVariable(name: "x", arg: 1, scope: !360, file: !2, line: 554, type: !82)
!365 = !DILocalVariable(name: "y", arg: 2, scope: !360, file: !2, line: 555, type: !82)
!366 = !DILocalVariable(name: "real_dl", arg: 3, scope: !360, file: !2, line: 556, type: !66)
!367 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !360, file: !2, line: 557, type: !66)
!368 = !DILocalVariable(name: "zeta2", scope: !360, file: !2, line: 560, type: !82)
!369 = !DILocalVariable(name: "r2", scope: !360, file: !2, line: 561, type: !82)
!370 = !DILocalVariable(name: "theta", scope: !371, file: !2, line: 581, type: !82)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 578, column: 3)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 577, column: 11)
!373 = distinct !DILexicalBlock(scope: !360, file: !2, line: 563, column: 6)
!374 = !DILocalVariable(name: "term1", scope: !371, file: !2, line: 582, type: !82)
!375 = !DILocalVariable(name: "term2", scope: !371, file: !2, line: 583, type: !82)
!376 = !DILocalVariable(name: "r", scope: !377, file: !2, line: 595, type: !82)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 593, column: 3)
!378 = distinct !DILexicalBlock(scope: !372, file: !2, line: 588, column: 11)
!379 = !DILocalVariable(name: "x_tmp", scope: !377, file: !2, line: 596, type: !82)
!380 = !DILocalVariable(name: "y_tmp", scope: !377, file: !2, line: 597, type: !82)
!381 = !DILocalVariable(name: "result_re_tmp", scope: !377, file: !2, line: 599, type: !67)
!382 = !DILocalVariable(name: "result_im_tmp", scope: !377, file: !2, line: 599, type: !67)
!383 = !DILocalVariable(name: "stat_dilog", scope: !377, file: !2, line: 601, type: !77)
!384 = !DILocalVariable(name: "theta", scope: !377, file: !2, line: 608, type: !82)
!385 = !DILocalVariable(name: "theta_abs", scope: !377, file: !2, line: 609, type: !82)
!386 = !DILocalVariable(name: "theta_sgn", scope: !377, file: !2, line: 610, type: !82)
!387 = !DILocalVariable(name: "ln_minusz_re", scope: !377, file: !2, line: 611, type: !82)
!388 = !DILocalVariable(name: "ln_minusz_im", scope: !377, file: !2, line: 612, type: !82)
!389 = !DILocalVariable(name: "lmz2_re", scope: !377, file: !2, line: 613, type: !82)
!390 = !DILocalVariable(name: "lmz2_im", scope: !377, file: !2, line: 614, type: !82)
!391 = distinct !DIAssignID()
!392 = distinct !DIAssignID()
!393 = distinct !DIAssignID()
!394 = !DILocation(line: 0, scope: !377)
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !360)
!397 = !DILocation(line: 561, column: 22, scope: !360)
!398 = !DILocation(line: 561, column: 28, scope: !360)
!399 = !DILocation(line: 563, column: 8, scope: !373)
!400 = !DILocation(line: 563, column: 6, scope: !360)
!401 = !DILocation(line: 565, column: 10, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !2, line: 565, column: 8)
!403 = distinct !DILexicalBlock(scope: !373, file: !2, line: 564, column: 3)
!404 = !DILocation(line: 565, column: 8, scope: !403)
!405 = !DILocation(line: 567, column: 28, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !2, line: 566, column: 5)
!407 = !DILocation(line: 568, column: 46, scope: !406)
!408 = !DILocation(line: 568, column: 44, scope: !406)
!409 = !DILocation(line: 569, column: 5, scope: !406)
!410 = !DILocation(line: 0, scope: !402)
!411 = !DILocation(line: 0, scope: !152, inlinedAt: !412)
!412 = distinct !DILocation(line: 575, column: 12, scope: !403)
!413 = !DILocation(line: 0, scope: !145, inlinedAt: !412)
!414 = !DILocation(line: 537, column: 8, scope: !153, inlinedAt: !412)
!415 = !DILocation(line: 537, column: 6, scope: !145, inlinedAt: !412)
!416 = !DILocation(line: 538, column: 12, scope: !164, inlinedAt: !412)
!417 = !DILocation(line: 538, column: 5, scope: !164, inlinedAt: !412)
!418 = !DILocation(line: 541, column: 5, scope: !152, inlinedAt: !412)
!419 = !DILocation(line: 542, column: 31, scope: !152, inlinedAt: !412)
!420 = !DILocation(line: 542, column: 19, scope: !152, inlinedAt: !412)
!421 = !DILocation(line: 543, column: 19, scope: !152, inlinedAt: !412)
!422 = !DILocation(line: 544, column: 24, scope: !152, inlinedAt: !412)
!423 = !DILocation(line: 544, column: 39, scope: !152, inlinedAt: !412)
!424 = !DILocation(line: 544, column: 34, scope: !152, inlinedAt: !412)
!425 = !DILocation(line: 544, column: 18, scope: !152, inlinedAt: !412)
!426 = !DILocation(line: 545, column: 24, scope: !152, inlinedAt: !412)
!427 = !DILocation(line: 545, column: 39, scope: !152, inlinedAt: !412)
!428 = !DILocation(line: 545, column: 34, scope: !152, inlinedAt: !412)
!429 = !DILocation(line: 545, column: 13, scope: !152, inlinedAt: !412)
!430 = !DILocation(line: 546, column: 44, scope: !152, inlinedAt: !412)
!431 = !DILocation(line: 546, column: 42, scope: !152, inlinedAt: !412)
!432 = !DILocation(line: 546, column: 17, scope: !152, inlinedAt: !412)
!433 = !DILocation(line: 547, column: 12, scope: !152, inlinedAt: !412)
!434 = !DILocation(line: 548, column: 3, scope: !153, inlinedAt: !412)
!435 = !DILocation(line: 577, column: 11, scope: !372)
!436 = !DILocation(line: 577, column: 26, scope: !372)
!437 = !DILocation(line: 577, column: 11, scope: !373)
!438 = !DILocation(line: 581, column: 26, scope: !371)
!439 = !DILocation(line: 0, scope: !371)
!440 = !DILocation(line: 582, column: 31, scope: !371)
!441 = !DILocation(line: 582, column: 37, scope: !371)
!442 = !DILocation(line: 583, column: 31, scope: !371)
!443 = !DILocation(line: 583, column: 30, scope: !371)
!444 = !DILocation(line: 583, column: 42, scope: !371)
!445 = !DILocation(line: 584, column: 34, scope: !371)
!446 = !DILocation(line: 584, column: 18, scope: !371)
!447 = !DILocation(line: 585, column: 42, scope: !371)
!448 = !DILocation(line: 585, column: 14, scope: !371)
!449 = !DILocation(line: 585, column: 18, scope: !371)
!450 = !DILocation(line: 586, column: 12, scope: !371)
!451 = !DILocation(line: 588, column: 14, scope: !378)
!452 = !DILocation(line: 588, column: 11, scope: !372)
!453 = !DILocation(line: 590, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !378, file: !2, line: 589, column: 3)
!455 = !DILocation(line: 590, column: 5, scope: !454)
!456 = !DILocation(line: 595, column: 22, scope: !377)
!457 = !DILocation(line: 596, column: 28, scope: !377)
!458 = !DILocation(line: 597, column: 26, scope: !377)
!459 = !DILocation(line: 597, column: 28, scope: !377)
!460 = !DILocation(line: 599, column: 5, scope: !377)
!461 = !DILocation(line: 602, column: 7, scope: !377)
!462 = !DILocation(line: 608, column: 26, scope: !377)
!463 = !DILocation(line: 609, column: 30, scope: !377)
!464 = !DILocation(line: 610, column: 38, scope: !377)
!465 = !DILocation(line: 612, column: 43, scope: !377)
!466 = !DILocation(line: 613, column: 40, scope: !377)
!467 = !DILocation(line: 613, column: 68, scope: !377)
!468 = !DILocation(line: 614, column: 31, scope: !377)
!469 = !DILocation(line: 614, column: 44, scope: !377)
!470 = !DILocation(line: 615, column: 35, scope: !377)
!471 = !DILocation(line: 615, column: 20, scope: !377)
!472 = !DILocation(line: 615, column: 45, scope: !377)
!473 = !DILocation(line: 615, column: 55, scope: !377)
!474 = !DILocation(line: 615, column: 18, scope: !377)
!475 = !DILocation(line: 616, column: 35, scope: !377)
!476 = !DILocation(line: 616, column: 68, scope: !377)
!477 = !DILocation(line: 616, column: 66, scope: !377)
!478 = !DILocation(line: 616, column: 60, scope: !377)
!479 = !DILocation(line: 616, column: 14, scope: !377)
!480 = !DILocation(line: 616, column: 18, scope: !377)
!481 = !DILocation(line: 617, column: 35, scope: !377)
!482 = !DILocation(line: 617, column: 20, scope: !377)
!483 = !DILocation(line: 617, column: 45, scope: !377)
!484 = !DILocation(line: 617, column: 18, scope: !377)
!485 = !DILocation(line: 618, column: 35, scope: !377)
!486 = !DILocation(line: 618, column: 61, scope: !377)
!487 = !DILocation(line: 618, column: 60, scope: !377)
!488 = !DILocation(line: 618, column: 14, scope: !377)
!489 = !DILocation(line: 618, column: 18, scope: !377)
!490 = !DILocation(line: 620, column: 3, scope: !378)
!491 = !DILocation(line: 0, scope: !373)
!492 = !DILocation(line: 621, column: 1, scope: !360)
!493 = !DISubprogram(name: "log", scope: !494, file: !494, line: 104, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!495 = !DISubroutineType(types: !496)
!496 = !{!59, !59}
!497 = !DISubprogram(name: "atan2", scope: !494, file: !494, line: 59, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DISubroutineType(types: !499)
!499 = !{!59, !59, !59}
!500 = !DISubprogram(name: "gsl_sf_clausen_e", scope: !501, file: !501, line: 46, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DIFile(filename: "../gsl/gsl_sf_clausen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "270ce6902433f043e402bc702eef83a1")
!502 = distinct !DIAssignID()
!503 = !DILocation(line: 0, scope: !124)
!504 = distinct !DIAssignID()
!505 = !DILocation(line: 0, scope: !114)
!506 = !DILocation(line: 491, column: 20, scope: !114)
!507 = !DILocation(line: 493, column: 8, scope: !125)
!508 = !DILocation(line: 493, column: 6, scope: !114)
!509 = !DILocation(line: 500, column: 30, scope: !124)
!510 = !DILocation(line: 501, column: 26, scope: !124)
!511 = !DILocation(line: 505, column: 5, scope: !124)
!512 = !DILocation(line: 506, column: 5, scope: !124)
!513 = !DILocation(line: 508, column: 28, scope: !124)
!514 = !DILocation(line: 511, column: 28, scope: !124)
!515 = !DILocation(line: 512, column: 28, scope: !124)
!516 = !DILocation(line: 513, column: 28, scope: !124)
!517 = !DILocation(line: 514, column: 36, scope: !124)
!518 = !DILocation(line: 514, column: 53, scope: !124)
!519 = !DILocation(line: 514, column: 66, scope: !124)
!520 = !DILocation(line: 514, column: 19, scope: !124)
!521 = !DILocation(line: 515, column: 36, scope: !124)
!522 = !DILocation(line: 515, column: 14, scope: !124)
!523 = !DILocation(line: 516, column: 55, scope: !124)
!524 = !DILocation(line: 516, column: 73, scope: !124)
!525 = !DILocation(line: 516, column: 44, scope: !124)
!526 = !DILocation(line: 516, column: 18, scope: !124)
!527 = !DILocation(line: 517, column: 36, scope: !124)
!528 = !DILocation(line: 517, column: 21, scope: !124)
!529 = !DILocation(line: 517, column: 46, scope: !124)
!530 = !DILocation(line: 517, column: 61, scope: !124)
!531 = !DILocation(line: 517, column: 19, scope: !124)
!532 = !DILocation(line: 518, column: 36, scope: !124)
!533 = !DILocation(line: 518, column: 14, scope: !124)
!534 = !DILocation(line: 519, column: 47, scope: !124)
!535 = !DILocation(line: 519, column: 66, scope: !124)
!536 = !DILocation(line: 519, column: 44, scope: !124)
!537 = !DILocation(line: 519, column: 18, scope: !124)
!538 = !DILocation(line: 522, column: 3, scope: !125)
!539 = !DILocation(line: 525, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !125, file: !2, line: 524, column: 3)
!541 = !DILocation(line: 525, column: 5, scope: !540)
!542 = !DILocation(line: 0, scope: !125)
!543 = !DILocation(line: 527, column: 1, scope: !114)
!544 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_e", scope: !2, file: !2, line: 625, type: !361, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553}
!546 = !DILocalVariable(name: "r", arg: 1, scope: !544, file: !2, line: 626, type: !82)
!547 = !DILocalVariable(name: "theta", arg: 2, scope: !544, file: !2, line: 627, type: !82)
!548 = !DILocalVariable(name: "real_dl", arg: 3, scope: !544, file: !2, line: 628, type: !66)
!549 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !544, file: !2, line: 629, type: !66)
!550 = !DILocalVariable(name: "cos_theta", scope: !544, file: !2, line: 632, type: !82)
!551 = !DILocalVariable(name: "sin_theta", scope: !544, file: !2, line: 633, type: !82)
!552 = !DILocalVariable(name: "x", scope: !544, file: !2, line: 634, type: !82)
!553 = !DILocalVariable(name: "y", scope: !544, file: !2, line: 635, type: !82)
!554 = !DILocation(line: 0, scope: !544)
!555 = !DILocation(line: 633, column: 28, scope: !544)
!556 = !DILocation(line: 634, column: 22, scope: !544)
!557 = !DILocation(line: 635, column: 22, scope: !544)
!558 = !DILocation(line: 636, column: 10, scope: !544)
!559 = !DILocation(line: 636, column: 3, scope: !544)
!560 = !DISubprogram(name: "cos", scope: !494, file: !494, line: 62, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubprogram(name: "sin", scope: !494, file: !494, line: 64, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = distinct !DISubprogram(name: "gsl_sf_complex_spence_xy_e", scope: !2, file: !2, line: 641, type: !361, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !563)
!563 = !{!564, !565, !566, !567, !568, !569}
!564 = !DILocalVariable(name: "x", arg: 1, scope: !562, file: !2, line: 642, type: !82)
!565 = !DILocalVariable(name: "y", arg: 2, scope: !562, file: !2, line: 643, type: !82)
!566 = !DILocalVariable(name: "real_sp", arg: 3, scope: !562, file: !2, line: 644, type: !66)
!567 = !DILocalVariable(name: "imag_sp", arg: 4, scope: !562, file: !2, line: 645, type: !66)
!568 = !DILocalVariable(name: "oms_x", scope: !562, file: !2, line: 648, type: !82)
!569 = !DILocalVariable(name: "oms_y", scope: !562, file: !2, line: 649, type: !82)
!570 = !DILocation(line: 0, scope: !562)
!571 = !DILocation(line: 649, column: 28, scope: !562)
!572 = !DILocation(line: 650, column: 10, scope: !562)
!573 = !DILocation(line: 650, column: 3, scope: !562)
!574 = distinct !DISubprogram(name: "gsl_sf_dilog", scope: !2, file: !2, line: 659, type: !575, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!59, !82}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(name: "x", arg: 1, scope: !574, file: !2, line: 659, type: !82)
!579 = !DILocalVariable(name: "result", scope: !574, file: !2, line: 661, type: !67)
!580 = !DILocalVariable(name: "status", scope: !574, file: !2, line: 661, type: !21)
!581 = distinct !DIAssignID()
!582 = distinct !DIAssignID()
!583 = distinct !DIAssignID()
!584 = !DILocation(line: 0, scope: !574)
!585 = !DILocation(line: 661, column: 3, scope: !574)
!586 = !DILocation(line: 0, scope: !152, inlinedAt: !587)
!587 = distinct !DILocation(line: 661, column: 3, scope: !574)
!588 = !DILocation(line: 0, scope: !145, inlinedAt: !587)
!589 = !DILocation(line: 537, column: 8, scope: !153, inlinedAt: !587)
!590 = !DILocation(line: 537, column: 6, scope: !145, inlinedAt: !587)
!591 = !DILocation(line: 538, column: 12, scope: !164, inlinedAt: !587)
!592 = !DILocation(line: 538, column: 5, scope: !164, inlinedAt: !587)
!593 = !DILocation(line: 541, column: 5, scope: !152, inlinedAt: !587)
!594 = !DILocation(line: 542, column: 31, scope: !152, inlinedAt: !587)
!595 = !DILocation(line: 542, column: 19, scope: !152, inlinedAt: !587)
!596 = !DILocation(line: 543, column: 31, scope: !152, inlinedAt: !587)
!597 = !DILocation(line: 543, column: 19, scope: !152, inlinedAt: !587)
!598 = !DILocation(line: 544, column: 24, scope: !152, inlinedAt: !587)
!599 = !DILocation(line: 544, column: 39, scope: !152, inlinedAt: !587)
!600 = !DILocation(line: 544, column: 34, scope: !152, inlinedAt: !587)
!601 = !DILocation(line: 544, column: 18, scope: !152, inlinedAt: !587)
!602 = distinct !DIAssignID()
!603 = distinct !DIAssignID()
!604 = !DILocation(line: 547, column: 12, scope: !152, inlinedAt: !587)
!605 = !DILocation(line: 548, column: 3, scope: !153, inlinedAt: !587)
!606 = !DILocation(line: 0, scope: !153, inlinedAt: !587)
!607 = !DILocation(line: 661, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !574, file: !2, line: 661, column: 3)
!609 = !DILocation(line: 661, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 661, column: 3)
!611 = distinct !DILexicalBlock(scope: !608, file: !2, line: 661, column: 3)
!612 = !DILocation(line: 662, column: 1, scope: !574)
!613 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616, !616, !21, !21}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!618 = !DILocation(line: 0, scope: !63)
!619 = !DILocation(line: 0, scope: !96, inlinedAt: !620)
!620 = distinct !DILocation(line: 110, column: 23, scope: !63)
!621 = !DILocation(line: 76, column: 20, scope: !96, inlinedAt: !620)
!622 = !DILocation(line: 81, column: 8, scope: !105, inlinedAt: !620)
!623 = !DILocation(line: 82, column: 12, scope: !105, inlinedAt: !620)
!624 = !DILocation(line: 0, scope: !105, inlinedAt: !620)
!625 = !DILocation(line: 85, column: 3, scope: !111, inlinedAt: !620)
!626 = !DILocation(line: 85, column: 10, scope: !110, inlinedAt: !620)
!627 = !DILocation(line: 88, column: 8, scope: !109, inlinedAt: !620)
!628 = !DILocation(line: 89, column: 15, scope: !109, inlinedAt: !620)
!629 = !DILocation(line: 89, column: 14, scope: !109, inlinedAt: !620)
!630 = !DILocation(line: 89, column: 20, scope: !109, inlinedAt: !620)
!631 = !DILocation(line: 89, column: 17, scope: !109, inlinedAt: !620)
!632 = !DILocation(line: 89, column: 12, scope: !109, inlinedAt: !620)
!633 = !DILocation(line: 0, scope: !109, inlinedAt: !620)
!634 = !DILocation(line: 91, column: 15, scope: !635, inlinedAt: !620)
!635 = distinct !DILexicalBlock(scope: !109, file: !2, line: 91, column: 8)
!636 = !DILocation(line: 91, column: 8, scope: !635, inlinedAt: !620)
!637 = !DILocation(line: 91, column: 21, scope: !635, inlinedAt: !620)
!638 = distinct !{!638, !625, !639, !640}
!639 = !DILocation(line: 92, column: 3, scope: !111, inlinedAt: !620)
!640 = !{!"llvm.loop.mustprogress"}
!641 = !DILocation(line: 94, column: 15, scope: !96, inlinedAt: !620)
!642 = !DILocation(line: 95, column: 48, scope: !96, inlinedAt: !620)
!643 = !DILocation(line: 95, column: 46, scope: !96, inlinedAt: !620)
!644 = !DILocation(line: 95, column: 11, scope: !96, inlinedAt: !620)
!645 = !DILocation(line: 95, column: 15, scope: !96, inlinedAt: !620)
!646 = !DILocation(line: 112, column: 8, scope: !81)
!647 = !DILocation(line: 112, column: 6, scope: !63)
!648 = !DILocation(line: 113, column: 21, scope: !81)
!649 = !DILocation(line: 113, column: 19, scope: !81)
!650 = !DILocation(line: 113, column: 32, scope: !81)
!651 = !DILocation(line: 126, column: 15, scope: !63)
!652 = !DILocation(line: 127, column: 15, scope: !63)
!653 = !DILocation(line: 113, column: 5, scope: !81)
!654 = !DILocation(line: 122, column: 38, scope: !80)
!655 = !DILocation(line: 122, column: 30, scope: !80)
!656 = !DILocation(line: 123, column: 49, scope: !80)
!657 = !DILocation(line: 0, scope: !80)
!658 = !DILocation(line: 123, column: 40, scope: !80)
!659 = !DILocation(line: 123, column: 31, scope: !80)
!660 = !DILocation(line: 124, column: 12, scope: !80)
!661 = !DILocation(line: 124, column: 38, scope: !80)
!662 = !DILocation(line: 124, column: 29, scope: !80)
!663 = !DILocation(line: 124, column: 19, scope: !80)
!664 = !DILocation(line: 0, scope: !81)
!665 = !DILocation(line: 127, column: 42, scope: !63)
!666 = !DILocation(line: 127, column: 40, scope: !63)
!667 = !DILocation(line: 128, column: 3, scope: !63)
!668 = distinct !DISubprogram(name: "dilog_series_1", scope: !2, file: !2, line: 38, type: !146, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676}
!670 = !DILocalVariable(name: "x", arg: 1, scope: !668, file: !2, line: 38, type: !82)
!671 = !DILocalVariable(name: "result", arg: 2, scope: !668, file: !2, line: 38, type: !66)
!672 = !DILocalVariable(name: "kmax", scope: !668, file: !2, line: 40, type: !77)
!673 = !DILocalVariable(name: "sum", scope: !668, file: !2, line: 41, type: !59)
!674 = !DILocalVariable(name: "term", scope: !668, file: !2, line: 42, type: !59)
!675 = !DILocalVariable(name: "k", scope: !668, file: !2, line: 43, type: !21)
!676 = !DILocalVariable(name: "rk", scope: !677, file: !2, line: 45, type: !82)
!677 = distinct !DILexicalBlock(scope: !678, file: !2, line: 44, column: 25)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 44, column: 3)
!679 = distinct !DILexicalBlock(scope: !668, file: !2, line: 44, column: 3)
!680 = !DILocation(line: 0, scope: !668)
!681 = !DILocation(line: 44, column: 3, scope: !679)
!682 = !DILocation(line: 45, column: 24, scope: !677)
!683 = !DILocation(line: 45, column: 30, scope: !677)
!684 = !DILocation(line: 0, scope: !677)
!685 = !DILocation(line: 46, column: 10, scope: !677)
!686 = !DILocation(line: 47, column: 15, scope: !677)
!687 = !DILocation(line: 47, column: 10, scope: !677)
!688 = !DILocation(line: 49, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !677, file: !2, line: 49, column: 8)
!690 = !DILocation(line: 49, column: 8, scope: !689)
!691 = !DILocation(line: 49, column: 23, scope: !689)
!692 = !DILocation(line: 44, column: 21, scope: !678)
!693 = !DILocation(line: 44, column: 13, scope: !678)
!694 = distinct !{!694, !681, !695, !640}
!695 = !DILocation(line: 50, column: 3, scope: !679)
!696 = !DILocation(line: 48, column: 9, scope: !677)
!697 = !DILocation(line: 44, scope: !679)
!698 = !DILocation(line: 52, column: 16, scope: !668)
!699 = !DILocation(line: 53, column: 24, scope: !668)
!700 = !DILocation(line: 53, column: 22, scope: !668)
!701 = !DILocation(line: 53, column: 11, scope: !668)
!702 = !DILocation(line: 54, column: 42, scope: !668)
!703 = !DILocation(line: 54, column: 40, scope: !668)
!704 = !DILocation(line: 54, column: 15, scope: !668)
!705 = !DILocation(line: 56, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !668, file: !2, line: 56, column: 6)
!707 = !DILocation(line: 56, column: 6, scope: !668)
!708 = !DILocation(line: 57, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !2, line: 57, column: 5)
!710 = !DILocation(line: 0, scope: !706)
!711 = !DILocation(line: 60, column: 1, scope: !668)
!712 = !DISubprogram(name: "hypot", scope: !494, file: !494, line: 147, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = distinct !DISubprogram(name: "dilogc_fundamental", scope: !2, file: !2, line: 468, type: !714, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!21, !59, !59, !59, !66, !66}
!716 = !{!717, !718, !719, !720, !721}
!717 = !DILocalVariable(name: "r", arg: 1, scope: !713, file: !2, line: 468, type: !59)
!718 = !DILocalVariable(name: "x", arg: 2, scope: !713, file: !2, line: 468, type: !59)
!719 = !DILocalVariable(name: "y", arg: 3, scope: !713, file: !2, line: 468, type: !59)
!720 = !DILocalVariable(name: "real_dl", arg: 4, scope: !713, file: !2, line: 468, type: !66)
!721 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !713, file: !2, line: 468, type: !66)
!722 = distinct !DIAssignID()
!723 = distinct !DIAssignID()
!724 = distinct !DIAssignID()
!725 = !DILocation(line: 0, scope: !713)
!726 = !DILocation(line: 470, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !713, file: !2, line: 470, column: 6)
!728 = !DILocation(line: 470, column: 6, scope: !713)
!729 = !DILocalVariable(name: "Him0", scope: !730, file: !2, line: 407, type: !67)
!730 = distinct !DISubprogram(name: "dilogc_series_3", scope: !2, file: !2, line: 389, type: !731, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!21, !82, !82, !82, !66, !66}
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !749, !750, !751, !752, !753, !729, !754, !755}
!734 = !DILocalVariable(name: "r", arg: 1, scope: !730, file: !2, line: 390, type: !82)
!735 = !DILocalVariable(name: "x", arg: 2, scope: !730, file: !2, line: 391, type: !82)
!736 = !DILocalVariable(name: "y", arg: 3, scope: !730, file: !2, line: 392, type: !82)
!737 = !DILocalVariable(name: "real_result", arg: 4, scope: !730, file: !2, line: 393, type: !66)
!738 = !DILocalVariable(name: "imag_result", arg: 5, scope: !730, file: !2, line: 394, type: !66)
!739 = !DILocalVariable(name: "theta", scope: !730, file: !2, line: 397, type: !82)
!740 = !DILocalVariable(name: "cos_theta", scope: !730, file: !2, line: 398, type: !82)
!741 = !DILocalVariable(name: "sin_theta", scope: !730, file: !2, line: 399, type: !82)
!742 = !DILocalVariable(name: "a", scope: !730, file: !2, line: 400, type: !82)
!743 = !DILocalVariable(name: "omc", scope: !730, file: !2, line: 401, type: !82)
!744 = !DILocalVariable(name: "omc2", scope: !730, file: !2, line: 402, type: !82)
!745 = !DILocalVariable(name: "H_re", scope: !730, file: !2, line: 403, type: !746)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 448, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 7)
!749 = !DILocalVariable(name: "H_im", scope: !730, file: !2, line: 404, type: !746)
!750 = !DILocalVariable(name: "an", scope: !730, file: !2, line: 405, type: !59)
!751 = !DILocalVariable(name: "nfact", scope: !730, file: !2, line: 405, type: !59)
!752 = !DILocalVariable(name: "sum_re", scope: !730, file: !2, line: 406, type: !59)
!753 = !DILocalVariable(name: "sum_im", scope: !730, file: !2, line: 406, type: !59)
!754 = !DILocalVariable(name: "n", scope: !730, file: !2, line: 408, type: !21)
!755 = !DILocalVariable(name: "t", scope: !756, file: !2, line: 437, type: !59)
!756 = distinct !DILexicalBlock(scope: !757, file: !2, line: 436, column: 23)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 436, column: 3)
!758 = distinct !DILexicalBlock(scope: !730, file: !2, line: 436, column: 3)
!759 = !DILocation(line: 0, scope: !730, inlinedAt: !760)
!760 = distinct !DILocation(line: 471, column: 12, scope: !727)
!761 = !DILocation(line: 397, column: 24, scope: !730, inlinedAt: !760)
!762 = !DILocation(line: 398, column: 29, scope: !730, inlinedAt: !760)
!763 = !DILocation(line: 399, column: 29, scope: !730, inlinedAt: !760)
!764 = !DILocation(line: 402, column: 26, scope: !730, inlinedAt: !760)
!765 = !DILocation(line: 407, column: 3, scope: !730, inlinedAt: !760)
!766 = !DILocation(line: 410, column: 40, scope: !730, inlinedAt: !760)
!767 = !DILocation(line: 410, column: 58, scope: !730, inlinedAt: !760)
!768 = !DILocation(line: 410, column: 57, scope: !730, inlinedAt: !760)
!769 = !DILocation(line: 410, column: 33, scope: !730, inlinedAt: !760)
!770 = !DILocation(line: 411, column: 3, scope: !730, inlinedAt: !760)
!771 = !DILocation(line: 412, column: 18, scope: !730, inlinedAt: !760)
!772 = !DILocation(line: 414, column: 25, scope: !730, inlinedAt: !760)
!773 = !DILocation(line: 414, column: 17, scope: !730, inlinedAt: !760)
!774 = !DILocation(line: 415, column: 20, scope: !730, inlinedAt: !760)
!775 = !DILocation(line: 415, column: 14, scope: !730, inlinedAt: !760)
!776 = !DILocation(line: 418, column: 17, scope: !730, inlinedAt: !760)
!777 = !DILocation(line: 418, column: 28, scope: !730, inlinedAt: !760)
!778 = !DILocation(line: 420, column: 17, scope: !730, inlinedAt: !760)
!779 = !DILocation(line: 424, column: 27, scope: !730, inlinedAt: !760)
!780 = !DILocation(line: 426, column: 17, scope: !730, inlinedAt: !760)
!781 = !DILocation(line: 426, column: 36, scope: !730, inlinedAt: !760)
!782 = !DILocation(line: 430, column: 34, scope: !730, inlinedAt: !760)
!783 = !DILocation(line: 430, column: 39, scope: !730, inlinedAt: !760)
!784 = !DILocation(line: 430, column: 28, scope: !730, inlinedAt: !760)
!785 = !DILocation(line: 430, column: 51, scope: !730, inlinedAt: !760)
!786 = !DILocation(line: 430, column: 67, scope: !730, inlinedAt: !760)
!787 = !DILocation(line: 430, column: 77, scope: !730, inlinedAt: !760)
!788 = !DILocation(line: 430, column: 45, scope: !730, inlinedAt: !760)
!789 = !DILocation(line: 0, scope: !756, inlinedAt: !760)
!790 = !DILocation(line: 441, column: 17, scope: !756, inlinedAt: !760)
!791 = !DILocation(line: 442, column: 12, scope: !756, inlinedAt: !760)
!792 = !DILocation(line: 438, column: 8, scope: !756, inlinedAt: !760)
!793 = !DILocation(line: 440, column: 11, scope: !756, inlinedAt: !760)
!794 = !DILocation(line: 442, column: 17, scope: !756, inlinedAt: !760)
!795 = !DILocation(line: 445, column: 20, scope: !730, inlinedAt: !760)
!796 = !DILocation(line: 446, column: 52, scope: !730, inlinedAt: !760)
!797 = !DILocation(line: 446, column: 50, scope: !730, inlinedAt: !760)
!798 = !DILocation(line: 446, column: 67, scope: !730, inlinedAt: !760)
!799 = !DILocation(line: 446, column: 16, scope: !730, inlinedAt: !760)
!800 = !DILocation(line: 446, column: 20, scope: !730, inlinedAt: !760)
!801 = !DILocation(line: 447, column: 20, scope: !730, inlinedAt: !760)
!802 = !DILocation(line: 448, column: 52, scope: !730, inlinedAt: !760)
!803 = !DILocation(line: 448, column: 50, scope: !730, inlinedAt: !760)
!804 = !DILocation(line: 448, column: 72, scope: !730, inlinedAt: !760)
!805 = !DILocation(line: 448, column: 76, scope: !730, inlinedAt: !760)
!806 = !DILocation(line: 448, column: 16, scope: !730, inlinedAt: !760)
!807 = !DILocation(line: 448, column: 20, scope: !730, inlinedAt: !760)
!808 = !DILocation(line: 451, column: 1, scope: !730, inlinedAt: !760)
!809 = !DILocation(line: 471, column: 5, scope: !727)
!810 = !DILocation(line: 472, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !727, file: !2, line: 472, column: 11)
!812 = !DILocation(line: 472, column: 11, scope: !727)
!813 = !DILocalVariable(name: "ln_omz_r", scope: !814, file: !2, line: 351, type: !67)
!814 = distinct !DILexicalBlock(scope: !815, file: !2, line: 345, column: 3)
!815 = distinct !DILexicalBlock(scope: !816, file: !2, line: 336, column: 6)
!816 = distinct !DISubprogram(name: "dilogc_series_2", scope: !2, file: !2, line: 328, type: !731, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !813, !826, !827, !828, !829, !830, !831}
!818 = !DILocalVariable(name: "r", arg: 1, scope: !816, file: !2, line: 329, type: !82)
!819 = !DILocalVariable(name: "x", arg: 2, scope: !816, file: !2, line: 330, type: !82)
!820 = !DILocalVariable(name: "y", arg: 3, scope: !816, file: !2, line: 331, type: !82)
!821 = !DILocalVariable(name: "real_dl", arg: 4, scope: !816, file: !2, line: 332, type: !66)
!822 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !816, file: !2, line: 333, type: !66)
!823 = !DILocalVariable(name: "sum_re", scope: !814, file: !2, line: 346, type: !67)
!824 = !DILocalVariable(name: "sum_im", scope: !814, file: !2, line: 347, type: !67)
!825 = !DILocalVariable(name: "stat_s3", scope: !814, file: !2, line: 348, type: !77)
!826 = !DILocalVariable(name: "ln_omz_theta", scope: !814, file: !2, line: 352, type: !67)
!827 = !DILocalVariable(name: "stat_log", scope: !814, file: !2, line: 353, type: !77)
!828 = !DILocalVariable(name: "t_x", scope: !814, file: !2, line: 354, type: !82)
!829 = !DILocalVariable(name: "t_y", scope: !814, file: !2, line: 355, type: !82)
!830 = !DILocalVariable(name: "r_x", scope: !814, file: !2, line: 358, type: !82)
!831 = !DILocalVariable(name: "r_y", scope: !814, file: !2, line: 359, type: !82)
!832 = !DILocation(line: 0, scope: !814, inlinedAt: !833)
!833 = distinct !DILocation(line: 473, column: 12, scope: !811)
!834 = !DILocation(line: 0, scope: !816, inlinedAt: !833)
!835 = !DILocation(line: 336, column: 8, scope: !815, inlinedAt: !833)
!836 = !DILocation(line: 336, column: 6, scope: !816, inlinedAt: !833)
!837 = !DILocation(line: 338, column: 18, scope: !838, inlinedAt: !833)
!838 = distinct !DILexicalBlock(scope: !815, file: !2, line: 337, column: 3)
!839 = !DILocation(line: 339, column: 18, scope: !838, inlinedAt: !833)
!840 = !DILocation(line: 340, column: 14, scope: !838, inlinedAt: !833)
!841 = !DILocation(line: 340, column: 18, scope: !838, inlinedAt: !833)
!842 = !DILocation(line: 341, column: 14, scope: !838, inlinedAt: !833)
!843 = !DILocation(line: 341, column: 18, scope: !838, inlinedAt: !833)
!844 = !DILocation(line: 342, column: 5, scope: !838, inlinedAt: !833)
!845 = !DILocalVariable(name: "r", arg: 1, scope: !846, file: !2, line: 277, type: !59)
!846 = distinct !DISubprogram(name: "series_2_c", scope: !2, file: !2, line: 276, type: !714, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !847)
!847 = !{!845, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !867, !868}
!848 = !DILocalVariable(name: "x", arg: 2, scope: !846, file: !2, line: 278, type: !59)
!849 = !DILocalVariable(name: "y", arg: 3, scope: !846, file: !2, line: 279, type: !59)
!850 = !DILocalVariable(name: "sum_re", arg: 4, scope: !846, file: !2, line: 280, type: !66)
!851 = !DILocalVariable(name: "sum_im", arg: 5, scope: !846, file: !2, line: 281, type: !66)
!852 = !DILocalVariable(name: "cos_theta", scope: !846, file: !2, line: 284, type: !82)
!853 = !DILocalVariable(name: "sin_theta", scope: !846, file: !2, line: 285, type: !82)
!854 = !DILocalVariable(name: "alpha", scope: !846, file: !2, line: 286, type: !82)
!855 = !DILocalVariable(name: "beta", scope: !846, file: !2, line: 287, type: !82)
!856 = !DILocalVariable(name: "ck", scope: !846, file: !2, line: 288, type: !59)
!857 = !DILocalVariable(name: "sk", scope: !846, file: !2, line: 289, type: !59)
!858 = !DILocalVariable(name: "rk", scope: !846, file: !2, line: 290, type: !59)
!859 = !DILocalVariable(name: "real_sum", scope: !846, file: !2, line: 291, type: !59)
!860 = !DILocalVariable(name: "imag_sum", scope: !846, file: !2, line: 292, type: !59)
!861 = !DILocalVariable(name: "kmax", scope: !846, file: !2, line: 293, type: !77)
!862 = !DILocalVariable(name: "k", scope: !846, file: !2, line: 294, type: !21)
!863 = !DILocalVariable(name: "dr", scope: !864, file: !2, line: 297, type: !59)
!864 = distinct !DILexicalBlock(scope: !865, file: !2, line: 296, column: 3)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 295, column: 3)
!866 = distinct !DILexicalBlock(scope: !846, file: !2, line: 295, column: 3)
!867 = !DILocalVariable(name: "di", scope: !864, file: !2, line: 297, type: !59)
!868 = !DILocalVariable(name: "ck_tmp", scope: !864, file: !2, line: 298, type: !82)
!869 = !DILocation(line: 0, scope: !846, inlinedAt: !870)
!870 = distinct !DILocation(line: 348, column: 25, scope: !814, inlinedAt: !833)
!871 = !DILocation(line: 284, column: 29, scope: !846, inlinedAt: !870)
!872 = !DILocation(line: 285, column: 29, scope: !846, inlinedAt: !870)
!873 = !DILocation(line: 291, column: 25, scope: !846, inlinedAt: !870)
!874 = !DILocation(line: 291, column: 28, scope: !846, inlinedAt: !870)
!875 = !DILocation(line: 292, column: 28, scope: !846, inlinedAt: !870)
!876 = !DILocation(line: 293, column: 35, scope: !846, inlinedAt: !870)
!877 = !DILocation(line: 293, column: 25, scope: !846, inlinedAt: !870)
!878 = !DILocation(line: 293, column: 23, scope: !846, inlinedAt: !870)
!879 = !DILocation(line: 295, column: 13, scope: !865, inlinedAt: !870)
!880 = !DILocation(line: 295, column: 3, scope: !866, inlinedAt: !870)
!881 = !DILocation(line: 0, scope: !864, inlinedAt: !870)
!882 = !DILocation(line: 299, column: 21, scope: !864, inlinedAt: !870)
!883 = !DILocation(line: 299, column: 31, scope: !864, inlinedAt: !870)
!884 = !DILocation(line: 299, column: 13, scope: !864, inlinedAt: !870)
!885 = !DILocation(line: 300, column: 21, scope: !864, inlinedAt: !870)
!886 = !DILocation(line: 300, column: 31, scope: !864, inlinedAt: !870)
!887 = !DILocation(line: 300, column: 13, scope: !864, inlinedAt: !870)
!888 = !DILocation(line: 301, column: 8, scope: !864, inlinedAt: !870)
!889 = !DILocation(line: 302, column: 14, scope: !864, inlinedAt: !870)
!890 = !DILocation(line: 302, column: 23, scope: !864, inlinedAt: !870)
!891 = !DILocation(line: 302, column: 25, scope: !864, inlinedAt: !870)
!892 = !DILocation(line: 302, column: 12, scope: !864, inlinedAt: !870)
!893 = !DILocation(line: 302, column: 35, scope: !864, inlinedAt: !870)
!894 = !DILocation(line: 303, column: 35, scope: !864, inlinedAt: !870)
!895 = !DILocation(line: 305, column: 14, scope: !864, inlinedAt: !870)
!896 = !DILocation(line: 306, column: 16, scope: !897, inlinedAt: !870)
!897 = distinct !DILexicalBlock(scope: !864, file: !2, line: 306, column: 8)
!898 = !DILocation(line: 306, column: 24, scope: !897, inlinedAt: !870)
!899 = !DILocation(line: 306, column: 38, scope: !897, inlinedAt: !870)
!900 = !DILocation(line: 306, column: 58, scope: !897, inlinedAt: !870)
!901 = !DILocation(line: 306, column: 28, scope: !897, inlinedAt: !870)
!902 = !DILocation(line: 306, column: 8, scope: !897, inlinedAt: !870)
!903 = !DILocation(line: 306, column: 70, scope: !897, inlinedAt: !870)
!904 = distinct !{!904, !880, !905, !640}
!905 = !DILocation(line: 307, column: 3, scope: !866, inlinedAt: !870)
!906 = !DILocation(line: 310, column: 23, scope: !846, inlinedAt: !870)
!907 = !DILocation(line: 310, column: 21, scope: !846, inlinedAt: !870)
!908 = !DILocation(line: 310, column: 28, scope: !846, inlinedAt: !870)
!909 = !DILocation(line: 310, column: 48, scope: !846, inlinedAt: !870)
!910 = !DILocation(line: 310, column: 46, scope: !846, inlinedAt: !870)
!911 = !DILocation(line: 312, column: 48, scope: !846, inlinedAt: !870)
!912 = !DILocation(line: 312, column: 46, scope: !846, inlinedAt: !870)
!913 = !DILocation(line: 351, column: 5, scope: !814, inlinedAt: !833)
!914 = !DILocation(line: 352, column: 5, scope: !814, inlinedAt: !833)
!915 = !DILocation(line: 353, column: 54, scope: !814, inlinedAt: !833)
!916 = !DILocation(line: 353, column: 26, scope: !814, inlinedAt: !833)
!917 = !DILocation(line: 354, column: 35, scope: !814, inlinedAt: !833)
!918 = !DILocation(line: 354, column: 39, scope: !814, inlinedAt: !833)
!919 = !DILocation(line: 354, column: 58, scope: !814, inlinedAt: !833)
!920 = !DILocation(line: 354, column: 62, scope: !814, inlinedAt: !833)
!921 = !DILocation(line: 354, column: 69, scope: !814, inlinedAt: !833)
!922 = !DILocation(line: 354, column: 66, scope: !814, inlinedAt: !833)
!923 = !DILocation(line: 355, column: 62, scope: !814, inlinedAt: !833)
!924 = !DILocation(line: 355, column: 43, scope: !814, inlinedAt: !833)
!925 = !DILocation(line: 355, column: 66, scope: !814, inlinedAt: !833)
!926 = !DILocation(line: 358, column: 34, scope: !814, inlinedAt: !833)
!927 = !DILocation(line: 358, column: 44, scope: !814, inlinedAt: !833)
!928 = !DILocation(line: 359, column: 34, scope: !814, inlinedAt: !833)
!929 = !DILocation(line: 359, column: 44, scope: !814, inlinedAt: !833)
!930 = !DILocation(line: 361, column: 31, scope: !814, inlinedAt: !833)
!931 = !DILocation(line: 361, column: 37, scope: !814, inlinedAt: !833)
!932 = !DILocation(line: 361, column: 18, scope: !814, inlinedAt: !833)
!933 = !DILocation(line: 362, column: 18, scope: !814, inlinedAt: !833)
!934 = !DILocation(line: 363, column: 68, scope: !814, inlinedAt: !833)
!935 = !DILocation(line: 363, column: 54, scope: !814, inlinedAt: !833)
!936 = !DILocation(line: 363, column: 75, scope: !814, inlinedAt: !833)
!937 = !DILocation(line: 363, column: 52, scope: !814, inlinedAt: !833)
!938 = !DILocation(line: 363, column: 14, scope: !814, inlinedAt: !833)
!939 = !DILocation(line: 363, column: 18, scope: !814, inlinedAt: !833)
!940 = !DILocation(line: 364, column: 54, scope: !814, inlinedAt: !833)
!941 = !DILocation(line: 364, column: 75, scope: !814, inlinedAt: !833)
!942 = !DILocation(line: 364, column: 52, scope: !814, inlinedAt: !833)
!943 = !DILocation(line: 364, column: 14, scope: !814, inlinedAt: !833)
!944 = !DILocation(line: 364, column: 18, scope: !814, inlinedAt: !833)
!945 = !DILocation(line: 366, column: 3, scope: !815, inlinedAt: !833)
!946 = !DILocalVariable(name: "r", arg: 1, scope: !947, file: !2, line: 227, type: !82)
!947 = distinct !DISubprogram(name: "dilogc_series_1", scope: !2, file: !2, line: 226, type: !731, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !948)
!948 = !{!946, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !968, !969}
!949 = !DILocalVariable(name: "x", arg: 2, scope: !947, file: !2, line: 228, type: !82)
!950 = !DILocalVariable(name: "y", arg: 3, scope: !947, file: !2, line: 229, type: !82)
!951 = !DILocalVariable(name: "real_result", arg: 4, scope: !947, file: !2, line: 230, type: !66)
!952 = !DILocalVariable(name: "imag_result", arg: 5, scope: !947, file: !2, line: 231, type: !66)
!953 = !DILocalVariable(name: "cos_theta", scope: !947, file: !2, line: 234, type: !82)
!954 = !DILocalVariable(name: "sin_theta", scope: !947, file: !2, line: 235, type: !82)
!955 = !DILocalVariable(name: "alpha", scope: !947, file: !2, line: 236, type: !82)
!956 = !DILocalVariable(name: "beta", scope: !947, file: !2, line: 237, type: !82)
!957 = !DILocalVariable(name: "ck", scope: !947, file: !2, line: 238, type: !59)
!958 = !DILocalVariable(name: "sk", scope: !947, file: !2, line: 239, type: !59)
!959 = !DILocalVariable(name: "rk", scope: !947, file: !2, line: 240, type: !59)
!960 = !DILocalVariable(name: "real_sum", scope: !947, file: !2, line: 241, type: !59)
!961 = !DILocalVariable(name: "imag_sum", scope: !947, file: !2, line: 242, type: !59)
!962 = !DILocalVariable(name: "kmax", scope: !947, file: !2, line: 243, type: !77)
!963 = !DILocalVariable(name: "k", scope: !947, file: !2, line: 244, type: !21)
!964 = !DILocalVariable(name: "dr", scope: !965, file: !2, line: 246, type: !59)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 245, column: 25)
!966 = distinct !DILexicalBlock(scope: !967, file: !2, line: 245, column: 3)
!967 = distinct !DILexicalBlock(scope: !947, file: !2, line: 245, column: 3)
!968 = !DILocalVariable(name: "di", scope: !965, file: !2, line: 246, type: !59)
!969 = !DILocalVariable(name: "ck_tmp", scope: !965, file: !2, line: 247, type: !59)
!970 = !DILocation(line: 0, scope: !947, inlinedAt: !971)
!971 = distinct !DILocation(line: 475, column: 12, scope: !811)
!972 = !DILocation(line: 234, column: 29, scope: !947, inlinedAt: !971)
!973 = !DILocation(line: 235, column: 29, scope: !947, inlinedAt: !971)
!974 = !DILocation(line: 241, column: 22, scope: !947, inlinedAt: !971)
!975 = !DILocation(line: 242, column: 22, scope: !947, inlinedAt: !971)
!976 = !DILocation(line: 243, column: 35, scope: !947, inlinedAt: !971)
!977 = !DILocation(line: 243, column: 25, scope: !947, inlinedAt: !971)
!978 = !DILocation(line: 243, column: 23, scope: !947, inlinedAt: !971)
!979 = !DILocation(line: 245, column: 13, scope: !966, inlinedAt: !971)
!980 = !DILocation(line: 245, column: 3, scope: !967, inlinedAt: !971)
!981 = !DILocation(line: 0, scope: !965, inlinedAt: !971)
!982 = !DILocation(line: 248, column: 21, scope: !965, inlinedAt: !971)
!983 = !DILocation(line: 248, column: 31, scope: !965, inlinedAt: !971)
!984 = !DILocation(line: 248, column: 13, scope: !965, inlinedAt: !971)
!985 = !DILocation(line: 249, column: 21, scope: !965, inlinedAt: !971)
!986 = !DILocation(line: 249, column: 31, scope: !965, inlinedAt: !971)
!987 = !DILocation(line: 249, column: 13, scope: !965, inlinedAt: !971)
!988 = !DILocation(line: 250, column: 8, scope: !965, inlinedAt: !971)
!989 = !DILocation(line: 251, column: 14, scope: !965, inlinedAt: !971)
!990 = !DILocation(line: 251, column: 23, scope: !965, inlinedAt: !971)
!991 = !DILocation(line: 251, column: 12, scope: !965, inlinedAt: !971)
!992 = !DILocation(line: 251, column: 27, scope: !965, inlinedAt: !971)
!993 = !DILocation(line: 252, column: 27, scope: !965, inlinedAt: !971)
!994 = !DILocation(line: 254, column: 14, scope: !965, inlinedAt: !971)
!995 = !DILocation(line: 255, column: 16, scope: !996, inlinedAt: !971)
!996 = distinct !DILexicalBlock(scope: !965, file: !2, line: 255, column: 8)
!997 = !DILocation(line: 255, column: 24, scope: !996, inlinedAt: !971)
!998 = !DILocation(line: 255, column: 38, scope: !996, inlinedAt: !971)
!999 = !DILocation(line: 255, column: 58, scope: !996, inlinedAt: !971)
!1000 = !DILocation(line: 255, column: 28, scope: !996, inlinedAt: !971)
!1001 = !DILocation(line: 255, column: 8, scope: !996, inlinedAt: !971)
!1002 = !DILocation(line: 255, column: 70, scope: !996, inlinedAt: !971)
!1003 = distinct !{!1003, !980, !1004, !640}
!1004 = !DILocation(line: 256, column: 3, scope: !967, inlinedAt: !971)
!1005 = !DILocation(line: 258, column: 20, scope: !947, inlinedAt: !971)
!1006 = !DILocation(line: 259, column: 28, scope: !947, inlinedAt: !971)
!1007 = !DILocation(line: 259, column: 26, scope: !947, inlinedAt: !971)
!1008 = !DILocation(line: 259, column: 33, scope: !947, inlinedAt: !971)
!1009 = !DILocation(line: 259, column: 53, scope: !947, inlinedAt: !971)
!1010 = !DILocation(line: 259, column: 51, scope: !947, inlinedAt: !971)
!1011 = !DILocation(line: 259, column: 16, scope: !947, inlinedAt: !971)
!1012 = !DILocation(line: 259, column: 20, scope: !947, inlinedAt: !971)
!1013 = !DILocation(line: 260, column: 20, scope: !947, inlinedAt: !971)
!1014 = !DILocation(line: 261, column: 53, scope: !947, inlinedAt: !971)
!1015 = !DILocation(line: 261, column: 51, scope: !947, inlinedAt: !971)
!1016 = !DILocation(line: 261, column: 16, scope: !947, inlinedAt: !971)
!1017 = !DILocation(line: 261, column: 20, scope: !947, inlinedAt: !971)
!1018 = !DILocation(line: 475, column: 5, scope: !811)
!1019 = !DILocation(line: 0, scope: !727)
!1020 = !DILocation(line: 476, column: 1, scope: !713)
!1021 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !1022, file: !1022, line: 62, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
