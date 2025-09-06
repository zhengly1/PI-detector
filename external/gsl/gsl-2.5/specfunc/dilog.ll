; ModuleID = 'dilog.c'
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
  br label %29, !dbg !166

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !167
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !167
  %9 = fneg double %0, !dbg !168
  %10 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %3), !dbg !169, !range !165
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !155, metadata !DIExpression()), !dbg !158
  %11 = fmul double %0, %0, !dbg !170
  %12 = call fastcc i32 @dilog_xge0(double noundef %11, ptr noundef nonnull %4), !dbg !171, !range !165
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !156, metadata !DIExpression()), !dbg !158
  %13 = load double, ptr %3, align 8, !dbg !172, !tbaa !173
  %14 = load double, ptr %4, align 8, !dbg !178, !tbaa !173
  %15 = fmul double %14, 5.000000e-01, !dbg !179
  %16 = fsub double %15, %13, !dbg !180
  store double %16, ptr %1, align 8, !dbg !181, !tbaa !173
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !182
  %18 = load double, ptr %17, align 8, !dbg !182, !tbaa !183
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !184
  %20 = load double, ptr %19, align 8, !dbg !184, !tbaa !183
  %21 = fmul double %20, 5.000000e-01, !dbg !185
  %22 = fadd double %18, %21, !dbg !186
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !187
  %24 = tail call double @llvm.fabs.f64(double %16), !dbg !188
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !189
  %26 = fadd double %25, %22, !dbg !190
  store double %26, ptr %23, align 8, !dbg !190, !tbaa !183
  %27 = icmp eq i32 %10, 0, !dbg !191
  %28 = select i1 %27, i32 %12, i32 %10, !dbg !191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !192
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !192
  br label %29

29:                                               ; preds = %8, %6
  %30 = phi i32 [ %7, %6 ], [ %28, %8 ], !dbg !193
  ret i32 %30, !dbg !194
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dilog_xge0(double noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !dbg !195 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !199, metadata !DIExpression(), metadata !238, metadata ptr %3, metadata !DIExpression()), !dbg !239
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !207, metadata !DIExpression(), metadata !240, metadata ptr %4, metadata !DIExpression()), !dbg !241
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !229, metadata !DIExpression(), metadata !242, metadata ptr %5, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata double %0, metadata !197, metadata !DIExpression()), !dbg !244
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !198, metadata !DIExpression()), !dbg !244
  %6 = fcmp ogt double %0, 2.000000e+00, !dbg !245
  br i1 %6, label %7, label %30, !dbg !246

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !247
  %8 = fdiv double 1.000000e+00, %0, !dbg !248
  call fastcc void @dilog_series_2(double noundef %8, ptr noundef nonnull %3), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !239
  %9 = tail call double @log(double noundef %0) #9, !dbg !250
  tail call void @llvm.dbg.value(metadata double %9, metadata !203, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double 0x400A51A6625307D3, metadata !204, metadata !DIExpression()), !dbg !239
  %10 = load double, ptr %3, align 8, !dbg !251, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %10, metadata !205, metadata !DIExpression()), !dbg !239
  %11 = fmul double %9, 5.000000e-01, !dbg !252
  %12 = fmul double %9, %11, !dbg !253
  tail call void @llvm.dbg.value(metadata double %12, metadata !206, metadata !DIExpression()), !dbg !239
  %13 = fsub double 0x400A51A6625307D3, %10, !dbg !254
  %14 = fsub double %13, %12, !dbg !255
  store double %14, ptr %1, align 8, !dbg !256, !tbaa !173
  %15 = tail call double @llvm.fabs.f64(double %9), !dbg !257
  %16 = fmul double %15, 0x3CB0000000000000, !dbg !258
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !259
  %18 = load double, ptr %17, align 8, !dbg !259, !tbaa !183
  %19 = fadd double %16, %18, !dbg !260
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !261
  %21 = tail call double @llvm.fabs.f64(double %10), !dbg !262
  %22 = fadd double %21, 0x400A51A6625307D3, !dbg !263
  %23 = tail call double @llvm.fabs.f64(double %12), !dbg !264
  %24 = fadd double %22, %23, !dbg !265
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !266
  %26 = fadd double %19, %25, !dbg !267
  %27 = tail call double @llvm.fabs.f64(double %14), !dbg !268
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !269
  %29 = fadd double %28, %26, !dbg !270
  store double %29, ptr %20, align 8, !dbg !270, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !271
  br label %141

30:                                               ; preds = %2
  %31 = fcmp ogt double %0, 1.010000e+00, !dbg !272
  br i1 %31, label %32, label %58, !dbg !273

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !274
  %33 = fdiv double 1.000000e+00, %0, !dbg !275
  %34 = fsub double 1.000000e+00, %33, !dbg !276
  call fastcc void @dilog_series_2(double noundef %34, ptr noundef nonnull %4), !dbg !277
  tail call void @llvm.dbg.value(metadata i32 0, metadata !210, metadata !DIExpression()), !dbg !241
  %35 = tail call double @log(double noundef %0) #9, !dbg !278
  tail call void @llvm.dbg.value(metadata double %35, metadata !211, metadata !DIExpression()), !dbg !241
  %36 = tail call double @log(double noundef %34) #9, !dbg !279
  %37 = fmul double %35, 5.000000e-01, !dbg !280
  %38 = fadd double %36, %37, !dbg !281
  %39 = fmul double %35, %38, !dbg !282
  tail call void @llvm.dbg.value(metadata double %39, metadata !212, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !213, metadata !DIExpression()), !dbg !241
  %40 = load double, ptr %4, align 8, !dbg !283, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %40, metadata !214, metadata !DIExpression()), !dbg !241
  tail call void @llvm.dbg.value(metadata double %39, metadata !215, metadata !DIExpression()), !dbg !241
  %41 = fadd double %40, 0x3FFA51A6625307D3, !dbg !284
  %42 = fsub double %41, %39, !dbg !285
  store double %42, ptr %1, align 8, !dbg !286, !tbaa !173
  %43 = tail call double @llvm.fabs.f64(double %35), !dbg !287
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !288
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !289
  %46 = load double, ptr %45, align 8, !dbg !289, !tbaa !183
  %47 = fadd double %44, %46, !dbg !290
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !291
  %49 = tail call double @llvm.fabs.f64(double %40), !dbg !292
  %50 = fadd double %49, 0x3FFA51A6625307D3, !dbg !293
  %51 = tail call double @llvm.fabs.f64(double %39), !dbg !294
  %52 = fadd double %50, %51, !dbg !295
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !296
  %54 = fadd double %47, %53, !dbg !297
  %55 = tail call double @llvm.fabs.f64(double %42), !dbg !298
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !299
  %57 = fadd double %56, %54, !dbg !300
  store double %57, ptr %48, align 8, !dbg !300, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !301
  br label %141

58:                                               ; preds = %30
  %59 = fcmp ogt double %0, 1.000000e+00, !dbg !302
  br i1 %59, label %60, label %104, !dbg !303

60:                                               ; preds = %58
  %61 = fadd double %0, -1.000000e+00, !dbg !304
  tail call void @llvm.dbg.value(metadata double %61, metadata !216, metadata !DIExpression()), !dbg !305
  %62 = tail call double @log(double noundef %61) #9, !dbg !306
  tail call void @llvm.dbg.value(metadata double %62, metadata !219, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !220, metadata !DIExpression()), !dbg !305
  %63 = fsub double 1.000000e+00, %62, !dbg !307
  tail call void @llvm.dbg.value(metadata double %63, metadata !221, metadata !DIExpression()), !dbg !305
  %64 = fmul double %62, 2.000000e+00, !dbg !308
  %65 = fsub double 1.000000e+00, %64, !dbg !309
  %66 = fmul double %65, 2.500000e-01, !dbg !310
  tail call void @llvm.dbg.value(metadata double %66, metadata !222, metadata !DIExpression()), !dbg !305
  %67 = fmul double %62, 3.000000e+00, !dbg !311
  %68 = fsub double 1.000000e+00, %67, !dbg !312
  %69 = fdiv double %68, 9.000000e+00, !dbg !313
  tail call void @llvm.dbg.value(metadata double %69, metadata !223, metadata !DIExpression()), !dbg !305
  %70 = fmul double %62, 4.000000e+00, !dbg !314
  %71 = fsub double 1.000000e+00, %70, !dbg !315
  %72 = fmul double %71, 6.250000e-02, !dbg !316
  tail call void @llvm.dbg.value(metadata double %72, metadata !224, metadata !DIExpression()), !dbg !305
  %73 = fmul double %62, 5.000000e+00, !dbg !317
  %74 = fsub double 1.000000e+00, %73, !dbg !318
  %75 = fdiv double %74, 2.500000e+01, !dbg !319
  tail call void @llvm.dbg.value(metadata double %75, metadata !225, metadata !DIExpression()), !dbg !305
  %76 = fmul double %62, 6.000000e+00, !dbg !320
  %77 = fsub double 1.000000e+00, %76, !dbg !321
  %78 = fdiv double %77, 3.600000e+01, !dbg !322
  tail call void @llvm.dbg.value(metadata double %78, metadata !226, metadata !DIExpression()), !dbg !305
  %79 = fmul double %62, 7.000000e+00, !dbg !323
  %80 = fsub double 1.000000e+00, %79, !dbg !324
  %81 = fdiv double %80, 4.900000e+01, !dbg !325
  tail call void @llvm.dbg.value(metadata double %81, metadata !227, metadata !DIExpression()), !dbg !305
  %82 = fmul double %62, 8.000000e+00, !dbg !326
  %83 = fsub double 1.000000e+00, %82, !dbg !327
  %84 = fmul double %83, 1.562500e-02, !dbg !328
  tail call void @llvm.dbg.value(metadata double %84, metadata !228, metadata !DIExpression()), !dbg !305
  %85 = fmul double %61, %84, !dbg !329
  %86 = fsub double %81, %85, !dbg !330
  %87 = fmul double %61, %86, !dbg !331
  %88 = fsub double %87, %78, !dbg !332
  %89 = fmul double %61, %88, !dbg !333
  %90 = fadd double %75, %89, !dbg !334
  %91 = fmul double %61, %90, !dbg !335
  %92 = fsub double %91, %72, !dbg !336
  %93 = fmul double %61, %92, !dbg !337
  %94 = fadd double %69, %93, !dbg !338
  %95 = fmul double %61, %94, !dbg !339
  %96 = fsub double %95, %66, !dbg !340
  %97 = fmul double %61, %96, !dbg !341
  %98 = fadd double %63, %97, !dbg !342
  %99 = fmul double %61, %98, !dbg !343
  %100 = fadd double %99, 0x3FFA51A6625307D3, !dbg !344
  store double %100, ptr %1, align 8, !dbg !345, !tbaa !173
  %101 = tail call double @llvm.fabs.f64(double %100), !dbg !346
  %102 = fmul double %101, 0x3CC0000000000000, !dbg !347
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !348
  store double %102, ptr %103, align 8, !dbg !349, !tbaa !183
  br label %141

104:                                              ; preds = %58
  %105 = fcmp oeq double %0, 1.000000e+00, !dbg !350
  br i1 %105, label %106, label %108, !dbg !351

106:                                              ; preds = %104
  store double 0x3FFA51A6625307D3, ptr %1, align 8, !dbg !352, !tbaa !173
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !354
  store double 0x3CCA51A6625307D3, ptr %107, align 8, !dbg !355, !tbaa !183
  br label %141, !dbg !356

108:                                              ; preds = %104
  %109 = fcmp ogt double %0, 5.000000e-01, !dbg !357
  br i1 %109, label %110, label %133, !dbg !358

110:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !359
  %111 = fsub double 1.000000e+00, %0, !dbg !360
  call fastcc void @dilog_series_2(double noundef %111, ptr noundef nonnull %5), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 0, metadata !233, metadata !DIExpression()), !dbg !243
  %112 = tail call double @log(double noundef %0) #9, !dbg !362
  tail call void @llvm.dbg.value(metadata double %112, metadata !234, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !235, metadata !DIExpression()), !dbg !243
  %113 = load double, ptr %5, align 8, !dbg !363, !tbaa !173
  tail call void @llvm.dbg.value(metadata double %113, metadata !236, metadata !DIExpression()), !dbg !243
  %114 = tail call double @log(double noundef %111) #9, !dbg !364
  %115 = fmul double %112, %114, !dbg !365
  tail call void @llvm.dbg.value(metadata double %115, metadata !237, metadata !DIExpression()), !dbg !243
  %116 = fsub double 0x3FFA51A6625307D3, %113, !dbg !366
  %117 = fsub double %116, %115, !dbg !367
  store double %117, ptr %1, align 8, !dbg !368, !tbaa !173
  %118 = tail call double @llvm.fabs.f64(double %112), !dbg !369
  %119 = fmul double %118, 0x3CB0000000000000, !dbg !370
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !371
  %121 = load double, ptr %120, align 8, !dbg !371, !tbaa !183
  %122 = fadd double %119, %121, !dbg !372
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !373
  %124 = tail call double @llvm.fabs.f64(double %113), !dbg !374
  %125 = fadd double %124, 0x3FFA51A6625307D3, !dbg !375
  %126 = tail call double @llvm.fabs.f64(double %115), !dbg !376
  %127 = fadd double %125, %126, !dbg !377
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !378
  %129 = fadd double %122, %128, !dbg !379
  %130 = tail call double @llvm.fabs.f64(double %117), !dbg !380
  %131 = fmul double %130, 0x3CC0000000000000, !dbg !381
  %132 = fadd double %131, %129, !dbg !382
  store double %132, ptr %123, align 8, !dbg !382, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !383
  br label %141

133:                                              ; preds = %108
  %134 = fcmp ogt double %0, 2.500000e-01, !dbg !384
  br i1 %134, label %135, label %136, !dbg !386

135:                                              ; preds = %133
  tail call fastcc void @dilog_series_2(double noundef %0, ptr noundef %1), !dbg !387
  br label %141, !dbg !389

136:                                              ; preds = %133
  %137 = fcmp ogt double %0, 0.000000e+00, !dbg !390
  br i1 %137, label %138, label %140, !dbg !392

138:                                              ; preds = %136
  %139 = tail call fastcc i32 @dilog_series_1(double noundef %0, ptr noundef %1), !dbg !393, !range !165
  br label %141, !dbg !395

140:                                              ; preds = %136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !396
  br label %141, !dbg !398

141:                                              ; preds = %140, %138, %135, %110, %106, %60, %32, %7
  %142 = phi i32 [ 0, %7 ], [ 0, %32 ], [ 0, %60 ], [ 0, %106 ], [ 0, %110 ], [ 0, %135 ], [ %139, %138 ], [ 0, %140 ], !dbg !399
  ret i32 %142, !dbg !400
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_dilog_xy_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !401 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !432
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !433
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !422, metadata !DIExpression(), metadata !434, metadata ptr %7, metadata !DIExpression()), !dbg !435
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !423, metadata !DIExpression(), metadata !436, metadata ptr %8, metadata !DIExpression()), !dbg !435
  tail call void @llvm.dbg.value(metadata double %0, metadata !405, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata double %1, metadata !406, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !408, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata double 0x3FFA51A6625307D3, metadata !409, metadata !DIExpression()), !dbg !437
  %9 = fmul double %0, %0, !dbg !438
  %10 = fmul double %1, %1, !dbg !439
  %11 = fadd double %9, %10, !dbg !440
  tail call void @llvm.dbg.value(metadata double %11, metadata !410, metadata !DIExpression()), !dbg !437
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !441
  br i1 %12, label %13, label %47, !dbg !442

13:                                               ; preds = %4
  %14 = fcmp ult double %0, 1.000000e+00, !dbg !443
  br i1 %14, label %20, label %15, !dbg !446

15:                                               ; preds = %13
  %16 = tail call double @log(double noundef %0) #9, !dbg !447
  %17 = fmul double %16, 0xC00921FB54442D18, !dbg !449
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !450
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !451
  br label %20, !dbg !452

20:                                               ; preds = %13, %15
  %21 = phi double [ %17, %15 ], [ 0.000000e+00, %13 ], !dbg !453
  %22 = phi double [ %19, %15 ], [ 0.000000e+00, %13 ], !dbg !453
  store double %21, ptr %3, align 8, !dbg !453
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !453
  store double %22, ptr %23, align 8, !dbg !453
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !432, metadata ptr %5, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !433, metadata ptr %6, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %2, metadata !150, metadata !DIExpression()), !dbg !456
  %24 = fcmp ult double %0, 0.000000e+00, !dbg !457
  br i1 %24, label %27, label %25, !dbg !458

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @dilog_xge0(double noundef %0, ptr noundef %2), !dbg !459, !range !165
  br label %109, !dbg !460

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !461
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !461
  %28 = fneg double %0, !dbg !462
  %29 = call fastcc i32 @dilog_xge0(double noundef %28, ptr noundef nonnull %5), !dbg !463, !range !165
  call void @llvm.dbg.value(metadata i32 %29, metadata !155, metadata !DIExpression()), !dbg !454
  %30 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %6), !dbg !464, !range !165
  call void @llvm.dbg.value(metadata i32 %30, metadata !156, metadata !DIExpression()), !dbg !454
  %31 = load double, ptr %5, align 8, !dbg !465, !tbaa !173
  %32 = load double, ptr %6, align 8, !dbg !466, !tbaa !173
  %33 = fmul double %32, 5.000000e-01, !dbg !467
  %34 = fsub double %33, %31, !dbg !468
  store double %34, ptr %2, align 8, !dbg !469, !tbaa !173
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !470
  %36 = load double, ptr %35, align 8, !dbg !470, !tbaa !183
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !471
  %38 = load double, ptr %37, align 8, !dbg !471, !tbaa !183
  %39 = fmul double %38, 5.000000e-01, !dbg !472
  %40 = fadd double %36, %39, !dbg !473
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !474
  %42 = tail call double @llvm.fabs.f64(double %34), !dbg !475
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !476
  %44 = fadd double %43, %40, !dbg !477
  store double %44, ptr %41, align 8, !dbg !477, !tbaa !183
  %45 = icmp eq i32 %29, 0, !dbg !478
  %46 = select i1 %45, i32 %30, i32 %29, !dbg !478
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !479
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !479
  br label %109

47:                                               ; preds = %4
  %48 = fadd double %11, -1.000000e+00, !dbg !480
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !481
  %50 = fcmp olt double %49, 0x3CB0000000000000, !dbg !482
  br i1 %50, label %51, label %64, !dbg !483

51:                                               ; preds = %47
  %52 = tail call double @atan2(double noundef %1, double noundef %0) #9, !dbg !484
  tail call void @llvm.dbg.value(metadata double %52, metadata !411, metadata !DIExpression()), !dbg !485
  %53 = fmul double %52, %52, !dbg !486
  %54 = fmul double %53, 2.500000e-01, !dbg !487
  tail call void @llvm.dbg.value(metadata double %54, metadata !415, metadata !DIExpression()), !dbg !485
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !488
  %56 = fmul double %55, 0x400921FB54442D18, !dbg !489
  %57 = fmul double %56, 5.000000e-01, !dbg !490
  tail call void @llvm.dbg.value(metadata double %57, metadata !416, metadata !DIExpression()), !dbg !485
  %58 = fadd double %54, 0x3FFA51A6625307D3, !dbg !491
  %59 = fsub double %58, %57, !dbg !492
  store double %59, ptr %2, align 8, !dbg !493, !tbaa !173
  %60 = fadd double %58, %57, !dbg !494
  %61 = fmul double %60, 0x3CC0000000000000, !dbg !495
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !496
  store double %61, ptr %62, align 8, !dbg !497, !tbaa !183
  %63 = tail call i32 @gsl_sf_clausen_e(double noundef %52, ptr noundef %3) #9, !dbg !498
  br label %109

64:                                               ; preds = %47
  %65 = fcmp olt double %11, 1.000000e+00, !dbg !499
  br i1 %65, label %66, label %68, !dbg !500

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @dilogc_unitdisk(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !501
  br label %109, !dbg !503

68:                                               ; preds = %64
  %69 = tail call double @llvm.sqrt.f64(double %11), !dbg !504
  tail call void @llvm.dbg.value(metadata double %69, metadata !417, metadata !DIExpression()), !dbg !435
  %70 = fdiv double %0, %11, !dbg !505
  tail call void @llvm.dbg.value(metadata double %70, metadata !420, metadata !DIExpression()), !dbg !435
  %71 = fneg double %1, !dbg !506
  %72 = fdiv double %71, %11, !dbg !507
  tail call void @llvm.dbg.value(metadata double %72, metadata !421, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !508
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !508
  %73 = call fastcc i32 @dilogc_unitdisk(double noundef %70, double noundef %72, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !424, metadata !DIExpression()), !dbg !435
  %74 = tail call double @atan2(double noundef %1, double noundef %0) #9, !dbg !510
  tail call void @llvm.dbg.value(metadata double %74, metadata !425, metadata !DIExpression()), !dbg !435
  %75 = tail call double @llvm.fabs.f64(double %74), !dbg !511
  tail call void @llvm.dbg.value(metadata double %75, metadata !426, metadata !DIExpression()), !dbg !435
  %76 = fcmp olt double %74, 0.000000e+00, !dbg !512
  tail call void @llvm.dbg.value(metadata double poison, metadata !427, metadata !DIExpression()), !dbg !435
  %77 = tail call double @log(double noundef %69) #9, !dbg !513
  tail call void @llvm.dbg.value(metadata double %77, metadata !428, metadata !DIExpression()), !dbg !435
  %78 = fadd double %75, 0xC00921FB54442D18, !dbg !514
  %79 = fneg double %78, !dbg !515
  %80 = select i1 %76, double %79, double %78, !dbg !515
  tail call void @llvm.dbg.value(metadata double %80, metadata !429, metadata !DIExpression()), !dbg !435
  %81 = fmul double %77, %77, !dbg !516
  %82 = fmul double %80, %80, !dbg !517
  %83 = fsub double %81, %82, !dbg !518
  tail call void @llvm.dbg.value(metadata double %83, metadata !430, metadata !DIExpression()), !dbg !435
  %84 = fmul double %77, 2.000000e+00, !dbg !519
  %85 = fmul double %84, %80, !dbg !520
  tail call void @llvm.dbg.value(metadata double %85, metadata !431, metadata !DIExpression()), !dbg !435
  %86 = load double, ptr %7, align 8, !dbg !521, !tbaa !173
  %87 = fneg double %86, !dbg !522
  %88 = fmul double %83, 5.000000e-01, !dbg !523
  %89 = fsub double %87, %88, !dbg !524
  %90 = fadd double %89, 0xBFFA51A6625307D3, !dbg !525
  store double %90, ptr %2, align 8, !dbg !526, !tbaa !173
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !527
  %92 = load double, ptr %91, align 8, !dbg !527, !tbaa !183
  %93 = tail call double @llvm.fabs.f64(double %83), !dbg !528
  %94 = fmul double %93, 5.000000e-01, !dbg !529
  %95 = fadd double %94, 0x3FFA51A6625307D3, !dbg !530
  %96 = fmul double %95, 0x3CC0000000000000, !dbg !531
  %97 = fadd double %92, %96, !dbg !532
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !533
  store double %97, ptr %98, align 8, !dbg !534, !tbaa !183
  %99 = load double, ptr %8, align 8, !dbg !535, !tbaa !173
  %100 = fneg double %99, !dbg !536
  %101 = fmul double %85, 5.000000e-01, !dbg !537
  %102 = fsub double %100, %101, !dbg !538
  store double %102, ptr %3, align 8, !dbg !539, !tbaa !173
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !540
  %104 = load double, ptr %103, align 8, !dbg !540, !tbaa !183
  %105 = tail call double @llvm.fabs.f64(double %85), !dbg !541
  %106 = fmul double %105, 0x3CC0000000000000, !dbg !542
  %107 = fadd double %106, %104, !dbg !543
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !544
  store double %107, ptr %108, align 8, !dbg !545, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !546
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !546
  br label %109

109:                                              ; preds = %27, %25, %68, %66, %51
  %110 = phi i32 [ %63, %51 ], [ %67, %66 ], [ %73, %68 ], [ %26, %25 ], [ %46, %27 ], !dbg !547
  ret i32 %110, !dbg !548
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !549 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !553 double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !556 i32 @gsl_sf_clausen_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dilogc_unitdisk(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !114 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !128, metadata !DIExpression(), metadata !558, metadata ptr %5, metadata !DIExpression()), !dbg !559
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !129, metadata !DIExpression(), metadata !560, metadata ptr %6, metadata !DIExpression()), !dbg !559
  tail call void @llvm.dbg.value(metadata double %0, metadata !118, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata double %1, metadata !119, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !120, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !121, metadata !DIExpression()), !dbg !561
  %7 = tail call double @hypot(double noundef %0, double noundef %1) #9, !dbg !562
  tail call void @llvm.dbg.value(metadata double %7, metadata !122, metadata !DIExpression()), !dbg !561
  %8 = fcmp ogt double %0, 0x3FE76C8B43958106, !dbg !563
  br i1 %8, label %9, label %47, !dbg !564

9:                                                ; preds = %4
  %10 = fsub double 1.000000e+00, %0, !dbg !565
  tail call void @llvm.dbg.value(metadata double %10, metadata !123, metadata !DIExpression()), !dbg !559
  %11 = fneg double %1, !dbg !566
  tail call void @llvm.dbg.value(metadata double %11, metadata !126, metadata !DIExpression()), !dbg !559
  %12 = tail call double @hypot(double noundef %10, double noundef %11) #9, !dbg !567
  tail call void @llvm.dbg.value(metadata double %12, metadata !127, metadata !DIExpression()), !dbg !559
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !568
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !569
  %13 = call fastcc i32 @dilogc_fundamental(double noundef %12, double noundef %10, double noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %6), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !130, metadata !DIExpression()), !dbg !559
  %14 = tail call double @log(double noundef %7) #9, !dbg !571
  tail call void @llvm.dbg.value(metadata double %14, metadata !131, metadata !DIExpression()), !dbg !559
  %15 = tail call double @log(double noundef %12) #9, !dbg !572
  tail call void @llvm.dbg.value(metadata double %15, metadata !132, metadata !DIExpression()), !dbg !559
  %16 = tail call double @atan2(double noundef %1, double noundef %0) #9, !dbg !573
  tail call void @llvm.dbg.value(metadata double %16, metadata !133, metadata !DIExpression()), !dbg !559
  %17 = tail call double @atan2(double noundef %11, double noundef %10) #9, !dbg !574
  tail call void @llvm.dbg.value(metadata double %17, metadata !134, metadata !DIExpression()), !dbg !559
  %18 = load double, ptr %5, align 8, !dbg !575, !tbaa !173
  %19 = fsub double 0x3FFA51A6625307D3, %18, !dbg !576
  %20 = fmul double %14, %15, !dbg !577
  %21 = fsub double %19, %20, !dbg !578
  %22 = fmul double %16, %17, !dbg !579
  %23 = fadd double %22, %21, !dbg !580
  store double %23, ptr %2, align 8, !dbg !581, !tbaa !173
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !582
  %25 = load double, ptr %24, align 8, !dbg !582, !tbaa !183
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !583
  %27 = tail call double @llvm.fabs.f64(double %20), !dbg !584
  %28 = fadd double %27, 0x3FFA51A6625307D3, !dbg !585
  %29 = tail call double @llvm.fabs.f64(double %22), !dbg !586
  %30 = fadd double %28, %29, !dbg !587
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !588
  %32 = fadd double %25, %31, !dbg !589
  store double %32, ptr %26, align 8, !dbg !589, !tbaa !183
  %33 = load double, ptr %6, align 8, !dbg !590, !tbaa !173
  %34 = fneg double %33, !dbg !591
  %35 = fmul double %15, %16, !dbg !592
  %36 = fsub double %34, %35, !dbg !593
  %37 = fmul double %14, %17, !dbg !594
  %38 = fsub double %36, %37, !dbg !595
  store double %38, ptr %3, align 8, !dbg !596, !tbaa !173
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !597
  %40 = load double, ptr %39, align 8, !dbg !597, !tbaa !183
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !598
  %42 = tail call double @llvm.fabs.f64(double %35), !dbg !599
  %43 = tail call double @llvm.fabs.f64(double %37), !dbg !600
  %44 = fadd double %42, %43, !dbg !601
  %45 = fmul double %44, 0x3CC0000000000000, !dbg !602
  %46 = fadd double %45, %40, !dbg !603
  store double %46, ptr %41, align 8, !dbg !603, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !604
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !604
  br label %49

47:                                               ; preds = %4
  %48 = tail call fastcc i32 @dilogc_fundamental(double noundef %7, double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3), !dbg !605
  br label %49, !dbg !607

49:                                               ; preds = %47, %9
  %50 = phi i32 [ %13, %9 ], [ %48, %47 ], !dbg !608
  ret i32 %50, !dbg !609
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_dilog_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !610 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !612, metadata !DIExpression()), !dbg !620
  tail call void @llvm.dbg.value(metadata double %1, metadata !613, metadata !DIExpression()), !dbg !620
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !620
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !615, metadata !DIExpression()), !dbg !620
  %5 = tail call double @cos(double noundef %1) #9, !dbg !621
  tail call void @llvm.dbg.value(metadata double %5, metadata !616, metadata !DIExpression()), !dbg !620
  %6 = tail call double @sin(double noundef %1) #9, !dbg !622
  tail call void @llvm.dbg.value(metadata double %6, metadata !617, metadata !DIExpression()), !dbg !620
  %7 = fmul double %5, %0, !dbg !623
  tail call void @llvm.dbg.value(metadata double %7, metadata !618, metadata !DIExpression()), !dbg !620
  %8 = fmul double %6, %0, !dbg !624
  tail call void @llvm.dbg.value(metadata double %8, metadata !619, metadata !DIExpression()), !dbg !620
  %9 = tail call i32 @gsl_sf_complex_dilog_xy_e(double noundef %7, double noundef %8, ptr noundef %2, ptr noundef %3), !dbg !625
  ret i32 %9, !dbg !626
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !627 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !628 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_complex_spence_xy_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !629 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !631, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata double %1, metadata !632, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !633, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !634, metadata !DIExpression()), !dbg !637
  %5 = fsub double 1.000000e+00, %0, !dbg !638
  tail call void @llvm.dbg.value(metadata double %5, metadata !635, metadata !DIExpression()), !dbg !637
  %6 = fneg double %1, !dbg !639
  tail call void @llvm.dbg.value(metadata double %6, metadata !636, metadata !DIExpression()), !dbg !637
  %7 = tail call i32 @gsl_sf_complex_dilog_xy_e(double noundef %5, double noundef %6, ptr noundef %2, ptr noundef %3), !dbg !640
  ret i32 %7, !dbg !641
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_dilog(double noundef %0) local_unnamed_addr #0 !dbg !642 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !649
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !650
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !647, metadata !DIExpression(), metadata !651, metadata ptr %4, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata double %0, metadata !646, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !151, metadata !DIExpression(), metadata !649, metadata ptr %2, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !650, metadata ptr %3, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata double %0, metadata !149, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata ptr %4, metadata !150, metadata !DIExpression()), !dbg !656
  %5 = fcmp ult double %0, 0.000000e+00, !dbg !657
  br i1 %5, label %8, label %6, !dbg !658

6:                                                ; preds = %1
  %7 = call fastcc i32 @dilog_xge0(double noundef %0, ptr noundef nonnull %4), !dbg !659, !range !165
  br label %19, !dbg !660

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9, !dbg !661
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !661
  %9 = fneg double %0, !dbg !662
  %10 = call fastcc i32 @dilog_xge0(double noundef %9, ptr noundef nonnull %2), !dbg !663, !range !165
  call void @llvm.dbg.value(metadata i32 %10, metadata !155, metadata !DIExpression()), !dbg !654
  %11 = fmul double %0, %0, !dbg !664
  %12 = call fastcc i32 @dilog_xge0(double noundef %11, ptr noundef nonnull %3), !dbg !665, !range !165
  call void @llvm.dbg.value(metadata i32 %12, metadata !156, metadata !DIExpression()), !dbg !654
  %13 = load double, ptr %2, align 8, !dbg !666, !tbaa !173
  %14 = load double, ptr %3, align 8, !dbg !667, !tbaa !173
  %15 = fmul double %14, 5.000000e-01, !dbg !668
  %16 = fsub double %15, %13, !dbg !669
  store double %16, ptr %4, align 8, !dbg !670, !tbaa !173, !DIAssignID !671
  call void @llvm.dbg.assign(metadata double %16, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !671, metadata ptr %4, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.assign(metadata double poison, metadata !647, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !672, metadata ptr %4, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !652
  %17 = icmp eq i32 %10, 0, !dbg !673
  %18 = select i1 %17, i32 %12, i32 %10, !dbg !673
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !674
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9, !dbg !674
  br label %19

19:                                               ; preds = %6, %8
  %20 = phi i32 [ %7, %6 ], [ %18, %8 ], !dbg !675
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !648, metadata !DIExpression()), !dbg !652
  %21 = icmp eq i32 %20, 0, !dbg !676
  br i1 %21, label %23, label %22, !dbg !653

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 661, i32 noundef %20) #9, !dbg !678
  br label %23, !dbg !678

23:                                               ; preds = %19, %22
  %24 = load double, ptr %4, align 8, !dbg !653, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !681
  ret double %24, !dbg !681
}

declare !dbg !682 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc void @dilog_series_2(double noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !dbg !63 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !74, metadata !DIExpression()), !dbg !687
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !75, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !688
  %3 = fmul double %0, 5.000000e-01, !dbg !690
  call void @llvm.dbg.value(metadata double %3, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 2, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %3, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 2, metadata !103, metadata !DIExpression()), !dbg !688
  %4 = fmul double %0, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %4, metadata !101, metadata !DIExpression()), !dbg !688
  %5 = fdiv double %4, 1.200000e+01, !dbg !692
  call void @llvm.dbg.value(metadata double %5, metadata !104, metadata !DIExpression()), !dbg !693
  %6 = fadd double %3, %5, !dbg !694
  call void @llvm.dbg.value(metadata double %6, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 3, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %4, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %6, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 3, metadata !103, metadata !DIExpression()), !dbg !688
  %7 = fmul double %4, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %7, metadata !101, metadata !DIExpression()), !dbg !688
  %8 = fdiv double %7, 3.600000e+01, !dbg !692
  call void @llvm.dbg.value(metadata double %8, metadata !104, metadata !DIExpression()), !dbg !693
  %9 = fadd double %6, %8, !dbg !694
  call void @llvm.dbg.value(metadata double %9, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 4, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %7, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %9, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 4, metadata !103, metadata !DIExpression()), !dbg !688
  %10 = fmul double %7, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %10, metadata !101, metadata !DIExpression()), !dbg !688
  %11 = fdiv double %10, 8.000000e+01, !dbg !692
  call void @llvm.dbg.value(metadata double %11, metadata !104, metadata !DIExpression()), !dbg !693
  %12 = fadd double %9, %11, !dbg !694
  call void @llvm.dbg.value(metadata double %12, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 5, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %10, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %12, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 5, metadata !103, metadata !DIExpression()), !dbg !688
  %13 = fmul double %10, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %13, metadata !101, metadata !DIExpression()), !dbg !688
  %14 = fdiv double %13, 1.500000e+02, !dbg !692
  call void @llvm.dbg.value(metadata double %14, metadata !104, metadata !DIExpression()), !dbg !693
  %15 = fadd double %12, %14, !dbg !694
  call void @llvm.dbg.value(metadata double %15, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 6, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %13, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %15, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 6, metadata !103, metadata !DIExpression()), !dbg !688
  %16 = fmul double %13, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %16, metadata !101, metadata !DIExpression()), !dbg !688
  %17 = fdiv double %16, 2.520000e+02, !dbg !692
  call void @llvm.dbg.value(metadata double %17, metadata !104, metadata !DIExpression()), !dbg !693
  %18 = fadd double %15, %17, !dbg !694
  call void @llvm.dbg.value(metadata double %18, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 7, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %16, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %18, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 7, metadata !103, metadata !DIExpression()), !dbg !688
  %19 = fmul double %16, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %19, metadata !101, metadata !DIExpression()), !dbg !688
  %20 = fdiv double %19, 3.920000e+02, !dbg !692
  call void @llvm.dbg.value(metadata double %20, metadata !104, metadata !DIExpression()), !dbg !693
  %21 = fadd double %18, %20, !dbg !694
  call void @llvm.dbg.value(metadata double %21, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 8, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %19, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %21, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 8, metadata !103, metadata !DIExpression()), !dbg !688
  %22 = fmul double %19, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %22, metadata !101, metadata !DIExpression()), !dbg !688
  %23 = fdiv double %22, 5.760000e+02, !dbg !692
  call void @llvm.dbg.value(metadata double %23, metadata !104, metadata !DIExpression()), !dbg !693
  %24 = fadd double %21, %23, !dbg !694
  call void @llvm.dbg.value(metadata double %24, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 9, metadata !103, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %22, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %24, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 9, metadata !103, metadata !DIExpression()), !dbg !688
  %25 = fmul double %22, %0, !dbg !691
  call void @llvm.dbg.value(metadata double %25, metadata !101, metadata !DIExpression()), !dbg !688
  %26 = fdiv double %25, 8.100000e+02, !dbg !692
  call void @llvm.dbg.value(metadata double %26, metadata !104, metadata !DIExpression()), !dbg !693
  %27 = fadd double %24, %26, !dbg !694
  call void @llvm.dbg.value(metadata double %27, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 10, metadata !103, metadata !DIExpression()), !dbg !688
  br label %28, !dbg !695

28:                                               ; preds = %45, %2
  %29 = phi i32 [ 10, %2 ], [ %49, %45 ], !dbg !688
  %30 = phi double [ %27, %2 ], [ %53, %45 ], !dbg !688
  %31 = phi double [ %25, %2 ], [ %46, %45 ], !dbg !688
  call void @llvm.dbg.value(metadata double %31, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %30, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %29, metadata !103, metadata !DIExpression()), !dbg !688
  %32 = icmp eq i32 %29, 100, !dbg !696
  br i1 %32, label %57, label %33, !dbg !695

33:                                               ; preds = %28
  %34 = fmul double %31, %0, !dbg !697
  call void @llvm.dbg.value(metadata double %34, metadata !101, metadata !DIExpression()), !dbg !688
  %35 = mul nuw nsw i32 %29, %29, !dbg !698
  %36 = sitofp i32 %35 to double, !dbg !699
  %37 = or disjoint i32 %29, 1, !dbg !700
  %38 = sitofp i32 %37 to double, !dbg !700
  %39 = fmul double %36, %38, !dbg !701
  %40 = fdiv double %34, %39, !dbg !702
  call void @llvm.dbg.value(metadata double %40, metadata !108, metadata !DIExpression()), !dbg !703
  %41 = fadd double %30, %40, !dbg !704
  call void @llvm.dbg.value(metadata double %41, metadata !102, metadata !DIExpression()), !dbg !688
  %42 = fdiv double %40, %41, !dbg !705
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !707
  %44 = fcmp olt double %43, 0x3CA0000000000000, !dbg !708
  br i1 %44, label %57, label %45, !llvm.loop !709

45:                                               ; preds = %33
  call void @llvm.dbg.value(metadata double %34, metadata !101, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata double %41, metadata !102, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %37, metadata !103, metadata !DIExpression()), !dbg !688
  %46 = fmul double %34, %0, !dbg !697
  call void @llvm.dbg.value(metadata double %46, metadata !101, metadata !DIExpression()), !dbg !688
  %47 = mul nuw nsw i32 %37, %37, !dbg !698
  %48 = sitofp i32 %47 to double, !dbg !699
  %49 = add nuw nsw i32 %29, 2, !dbg !700
  %50 = sitofp i32 %49 to double, !dbg !700
  %51 = fmul double %48, %50, !dbg !701
  %52 = fdiv double %46, %51, !dbg !702
  call void @llvm.dbg.value(metadata double %52, metadata !108, metadata !DIExpression()), !dbg !703
  %53 = fadd double %41, %52, !dbg !704
  call void @llvm.dbg.value(metadata double %53, metadata !102, metadata !DIExpression()), !dbg !688
  %54 = fdiv double %52, %53, !dbg !705
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !707
  %56 = fcmp olt double %55, 0x3CA0000000000000, !dbg !708
  br i1 %56, label %57, label %28, !llvm.loop !709

57:                                               ; preds = %45, %28, %33
  %58 = phi double [ %41, %33 ], [ %30, %28 ], [ %53, %45 ], !dbg !688
  call void @llvm.dbg.value(metadata double %58, metadata !102, metadata !DIExpression()), !dbg !688
  store double %58, ptr %1, align 8, !dbg !712, !tbaa !173
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !713
  %60 = fmul double %59, 0x3D29000000000000, !dbg !714
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !715
  store double %60, ptr %61, align 8, !dbg !716, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !687
  %62 = fcmp ogt double %0, 1.000000e-02, !dbg !717
  br i1 %62, label %63, label %70, !dbg !718

63:                                               ; preds = %57
  %64 = fsub double 1.000000e+00, %0, !dbg !719
  %65 = tail call double @log(double noundef %64) #9, !dbg !720
  %66 = fmul double %64, %65, !dbg !721
  %67 = fdiv double %66, %0, !dbg !722
  tail call void @llvm.dbg.value(metadata double %67, metadata !78, metadata !DIExpression()), !dbg !687
  %68 = load double, ptr %1, align 8, !dbg !723, !tbaa !173
  %69 = load double, ptr %61, align 8, !dbg !724, !tbaa !183
  br label %87, !dbg !725

70:                                               ; preds = %57
  %71 = fmul double %0, 1.250000e-01, !dbg !726
  %72 = fadd double %71, 0x3FC2492492492492, !dbg !727
  %73 = fmul double %72, %0, !dbg !728
  %74 = fadd double %73, 0x3FC5555555555555, !dbg !729
  tail call void @llvm.dbg.value(metadata double %74, metadata !79, metadata !DIExpression()), !dbg !730
  %75 = fmul double %74, %0, !dbg !731
  %76 = fadd double %75, 2.000000e-01, !dbg !732
  %77 = fmul double %76, %0, !dbg !733
  %78 = fadd double %77, 2.500000e-01, !dbg !734
  %79 = fmul double %78, %0, !dbg !735
  %80 = fadd double %79, 0x3FD5555555555555, !dbg !736
  tail call void @llvm.dbg.value(metadata double %80, metadata !83, metadata !DIExpression()), !dbg !730
  %81 = fadd double %0, -1.000000e+00, !dbg !737
  %82 = fmul double %80, %0, !dbg !738
  %83 = fadd double %82, 5.000000e-01, !dbg !739
  %84 = fmul double %83, %0, !dbg !740
  %85 = fadd double %84, 1.000000e+00, !dbg !741
  %86 = fmul double %81, %85, !dbg !742
  tail call void @llvm.dbg.value(metadata double %86, metadata !78, metadata !DIExpression()), !dbg !687
  br label %87

87:                                               ; preds = %70, %63
  %88 = phi double [ %69, %63 ], [ %60, %70 ], !dbg !724
  %89 = phi double [ %68, %63 ], [ %58, %70 ], !dbg !723
  %90 = phi double [ %67, %63 ], [ %86, %70 ], !dbg !743
  tail call void @llvm.dbg.value(metadata double %90, metadata !78, metadata !DIExpression()), !dbg !687
  %91 = fadd double %90, 1.000000e+00, !dbg !744
  %92 = fadd double %89, %91, !dbg !723
  store double %92, ptr %1, align 8, !dbg !723, !tbaa !173
  %93 = tail call double @llvm.fabs.f64(double %90), !dbg !745
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !746
  %95 = fadd double %94, %88, !dbg !724
  store double %95, ptr %61, align 8, !dbg !724, !tbaa !183
  ret void, !dbg !747
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dilog_series_1(double noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !dbg !748 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !750, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !751, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !752, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %0, metadata !753, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %0, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 2, metadata !755, metadata !DIExpression()), !dbg !760
  br label %3, !dbg !761

3:                                                ; preds = %29, %2
  %4 = phi i32 [ 2, %2 ], [ %30, %29 ]
  %5 = phi double [ %0, %2 ], [ %24, %29 ]
  %6 = phi double [ %0, %2 ], [ %25, %29 ]
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !755, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %5, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %6, metadata !753, metadata !DIExpression()), !dbg !760
  %7 = sitofp i32 %4 to double, !dbg !762
  %8 = fadd double %7, -1.000000e+00, !dbg !763
  %9 = fdiv double %8, %7, !dbg !764
  tail call void @llvm.dbg.value(metadata double %9, metadata !756, metadata !DIExpression()), !dbg !765
  %10 = fmul double %5, %0, !dbg !766
  tail call void @llvm.dbg.value(metadata double %10, metadata !754, metadata !DIExpression()), !dbg !760
  %11 = fmul double %9, %9, !dbg !767
  %12 = fmul double %10, %11, !dbg !768
  tail call void @llvm.dbg.value(metadata double %12, metadata !754, metadata !DIExpression()), !dbg !760
  %13 = fadd double %6, %12, !dbg !769
  tail call void @llvm.dbg.value(metadata double %13, metadata !753, metadata !DIExpression()), !dbg !760
  %14 = fdiv double %12, %13, !dbg !770
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !772
  %16 = fcmp olt double %15, 0x3CB0000000000000, !dbg !773
  br i1 %16, label %32, label %17

17:                                               ; preds = %3
  %18 = or disjoint i32 %4, 1, !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !755, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %12, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %13, metadata !753, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !755, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %12, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %13, metadata !753, metadata !DIExpression()), !dbg !760
  %19 = sitofp i32 %18 to double, !dbg !762
  %20 = fadd double %19, -1.000000e+00, !dbg !763
  %21 = fdiv double %20, %19, !dbg !764
  tail call void @llvm.dbg.value(metadata double %21, metadata !756, metadata !DIExpression()), !dbg !765
  %22 = fmul double %12, %0, !dbg !766
  tail call void @llvm.dbg.value(metadata double %22, metadata !754, metadata !DIExpression()), !dbg !760
  %23 = fmul double %21, %21, !dbg !767
  %24 = fmul double %22, %23, !dbg !768
  tail call void @llvm.dbg.value(metadata double %24, metadata !754, metadata !DIExpression()), !dbg !760
  %25 = fadd double %13, %24, !dbg !769
  tail call void @llvm.dbg.value(metadata double %25, metadata !753, metadata !DIExpression()), !dbg !760
  %26 = fdiv double %24, %25, !dbg !770
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !772
  %28 = fcmp olt double %27, 0x3CB0000000000000, !dbg !773
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = add nuw nsw i32 %4, 2, !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !755, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %24, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %25, metadata !753, metadata !DIExpression()), !dbg !760
  %31 = icmp eq i32 %30, 1000, !dbg !775
  br i1 %31, label %32, label %3, !dbg !761, !llvm.loop !776

32:                                               ; preds = %29, %17, %3
  %33 = phi double [ %12, %3 ], [ %24, %17 ], [ %24, %29 ], !dbg !768
  %34 = phi double [ %13, %3 ], [ %25, %17 ], [ %25, %29 ], !dbg !769
  %35 = phi i32 [ %4, %3 ], [ %18, %17 ], [ 1000, %29 ], !dbg !778
  tail call void @llvm.dbg.value(metadata double %33, metadata !754, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double %34, metadata !753, metadata !DIExpression()), !dbg !760
  store double %34, ptr %1, align 8, !dbg !779, !tbaa !173
  %36 = tail call double @llvm.fabs.f64(double %33), !dbg !780
  %37 = fmul double %36, 2.000000e+00, !dbg !781
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !782
  %39 = tail call double @llvm.fabs.f64(double %34), !dbg !783
  %40 = fmul double %39, 0x3CC0000000000000, !dbg !784
  %41 = fadd double %40, %37, !dbg !785
  store double %41, ptr %38, align 8, !dbg !785, !tbaa !183
  %42 = icmp eq i32 %35, 1000, !dbg !786
  br i1 %42, label %43, label %44, !dbg !788

43:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 11) #9, !dbg !789
  br label %44, !dbg !789

44:                                               ; preds = %32, %43
  %45 = phi i32 [ 11, %43 ], [ 0, %32 ], !dbg !791
  ret i32 %45, !dbg !792
}

; Function Attrs: nounwind
declare !dbg !793 double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dilogc_fundamental(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !794 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !803
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !804
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !805
  tail call void @llvm.dbg.value(metadata double %0, metadata !798, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata double %1, metadata !799, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata double %2, metadata !800, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !801, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !802, metadata !DIExpression()), !dbg !806
  %9 = fcmp ogt double %0, 0x3FEF5C28F5C28F5C, !dbg !807
  br i1 %9, label %10, label %92, !dbg !809

10:                                               ; preds = %5
  call void @llvm.dbg.assign(metadata i1 undef, metadata !810, metadata !DIExpression(), metadata !805, metadata ptr %8, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %0, metadata !815, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %1, metadata !816, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %2, metadata !817, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr %3, metadata !818, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr %4, metadata !819, metadata !DIExpression()), !dbg !840
  %11 = tail call double @atan2(double noundef %2, double noundef %1) #9, !dbg !842
  call void @llvm.dbg.value(metadata double %11, metadata !820, metadata !DIExpression()), !dbg !840
  %12 = fdiv double %1, %0, !dbg !843
  call void @llvm.dbg.value(metadata double %12, metadata !821, metadata !DIExpression()), !dbg !840
  %13 = fdiv double %2, %0, !dbg !844
  call void @llvm.dbg.value(metadata double %13, metadata !822, metadata !DIExpression()), !dbg !840
  %14 = tail call double @log(double noundef %0) #9, !dbg !845
  call void @llvm.dbg.value(metadata double %14, metadata !823, metadata !DIExpression()), !dbg !840
  %15 = fsub double 1.000000e+00, %12, !dbg !846
  call void @llvm.dbg.value(metadata double %15, metadata !824, metadata !DIExpression()), !dbg !840
  %16 = fmul double %15, %15, !dbg !847
  call void @llvm.dbg.value(metadata double %16, metadata !825, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !848
  %17 = fmul double %11, %11, !dbg !849
  %18 = tail call double @llvm.fabs.f64(double %11), !dbg !850
  %19 = fmul double %18, 0x401921FB54442D18, !dbg !851
  %20 = fsub double %17, %19, !dbg !852
  %21 = fmul double %20, 2.500000e-01, !dbg !853
  %22 = fadd double %21, 0x3FFA51A6625307D3, !dbg !854
  call void @llvm.dbg.value(metadata double %22, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !840
  %23 = call i32 @gsl_sf_clausen_e(double noundef %11, ptr noundef nonnull %8) #9, !dbg !855
  %24 = load double, ptr %8, align 8, !dbg !856, !tbaa !173
  call void @llvm.dbg.value(metadata double %24, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !840
  %25 = fmul double %15, 2.000000e+00, !dbg !857
  %26 = call double @log(double noundef %25) #9, !dbg !858
  %27 = fmul double %26, 5.000000e-01, !dbg !859
  call void @llvm.dbg.value(metadata double %27, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !840
  %28 = fneg double %13, !dbg !860
  %29 = call double @atan2(double noundef %28, double noundef %15) #9, !dbg !861
  call void @llvm.dbg.value(metadata double poison, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !840
  %30 = fmul double %13, 5.000000e-01, !dbg !862
  %31 = fdiv double %30, %15, !dbg !863
  call void @llvm.dbg.value(metadata double %31, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !840
  %32 = fdiv double 5.000000e-01, %15, !dbg !864
  call void @llvm.dbg.value(metadata double %32, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !840
  %33 = fdiv double %30, %16, !dbg !865
  call void @llvm.dbg.value(metadata double %33, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !840
  %34 = fadd double %12, 2.000000e+00, !dbg !866
  %35 = fmul double %34, 5.000000e-01, !dbg !867
  %36 = fdiv double %35, %16, !dbg !868
  call void @llvm.dbg.value(metadata double %36, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !826, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !840
  %37 = fmul double %16, %16, !dbg !869
  %38 = fmul double %15, %37, !dbg !870
  %39 = fdiv double %30, %38, !dbg !871
  %40 = fmul double %15, 8.000000e+00, !dbg !872
  %41 = fmul double %13, %13, !dbg !873
  %42 = fadd double %12, 3.000000e+00, !dbg !874
  %43 = fmul double %42, %41, !dbg !875
  %44 = fsub double %40, %43, !dbg !876
  %45 = fmul double %44, %39, !dbg !877
  call void @llvm.dbg.value(metadata double %45, metadata !830, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !840
  call void @llvm.dbg.value(metadata double %22, metadata !833, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %24, metadata !834, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !832, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i32 1, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 1, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %24, metadata !834, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %22, metadata !833, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %14, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !832, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %14, metadata !836, metadata !DIExpression()), !dbg !878
  %46 = fmul double %14, %27, !dbg !879
  %47 = fsub double %22, %46, !dbg !880
  call void @llvm.dbg.value(metadata double %47, metadata !833, metadata !DIExpression()), !dbg !840
  %48 = fmul double %14, %29, !dbg !881
  %49 = fsub double %24, %48, !dbg !881
  call void @llvm.dbg.value(metadata i64 2, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %49, metadata !834, metadata !DIExpression()), !dbg !840
  %50 = fmul double %14, %14, !dbg !882
  call void @llvm.dbg.value(metadata double %50, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !832, metadata !DIExpression()), !dbg !840
  %51 = fmul double %50, 5.000000e-01, !dbg !883
  call void @llvm.dbg.value(metadata double %51, metadata !836, metadata !DIExpression()), !dbg !878
  %52 = fmul double %51, 5.000000e-01, !dbg !879
  %53 = fsub double %47, %52, !dbg !880
  call void @llvm.dbg.value(metadata double %53, metadata !833, metadata !DIExpression()), !dbg !840
  %54 = fmul double %31, %51, !dbg !884
  %55 = fadd double %54, %49, !dbg !881
  call void @llvm.dbg.value(metadata i64 3, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %55, metadata !834, metadata !DIExpression()), !dbg !840
  %56 = fmul double %14, %50, !dbg !882
  call void @llvm.dbg.value(metadata double %56, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !832, metadata !DIExpression()), !dbg !840
  %57 = fdiv double %56, 6.000000e+00, !dbg !883
  call void @llvm.dbg.value(metadata double %57, metadata !836, metadata !DIExpression()), !dbg !878
  %58 = fmul double %32, %57, !dbg !879
  %59 = fsub double %53, %58, !dbg !880
  call void @llvm.dbg.value(metadata double %59, metadata !833, metadata !DIExpression()), !dbg !840
  %60 = fmul double %57, 0.000000e+00, !dbg !884
  %61 = fadd double %60, %55, !dbg !881
  call void @llvm.dbg.value(metadata i64 4, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %61, metadata !834, metadata !DIExpression()), !dbg !840
  %62 = fmul double %14, %56, !dbg !882
  call void @llvm.dbg.value(metadata double %62, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 2.400000e+01, metadata !832, metadata !DIExpression()), !dbg !840
  %63 = fdiv double %62, 2.400000e+01, !dbg !883
  call void @llvm.dbg.value(metadata double %63, metadata !836, metadata !DIExpression()), !dbg !878
  %64 = fmul double %63, 0.000000e+00, !dbg !879
  %65 = fadd double %64, %59, !dbg !880
  call void @llvm.dbg.value(metadata double %65, metadata !833, metadata !DIExpression()), !dbg !840
  %66 = fmul double %33, %63, !dbg !884
  %67 = fsub double %61, %66, !dbg !881
  call void @llvm.dbg.value(metadata i64 5, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %67, metadata !834, metadata !DIExpression()), !dbg !840
  %68 = fmul double %14, %62, !dbg !882
  call void @llvm.dbg.value(metadata double %68, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 1.200000e+02, metadata !832, metadata !DIExpression()), !dbg !840
  %69 = fdiv double %68, 1.200000e+02, !dbg !883
  call void @llvm.dbg.value(metadata double %69, metadata !836, metadata !DIExpression()), !dbg !878
  %70 = fmul double %36, %69, !dbg !879
  %71 = fadd double %70, %65, !dbg !880
  call void @llvm.dbg.value(metadata double %71, metadata !833, metadata !DIExpression()), !dbg !840
  %72 = fmul double %69, 0.000000e+00, !dbg !884
  %73 = fadd double %72, %67, !dbg !881
  call void @llvm.dbg.value(metadata i64 6, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %73, metadata !834, metadata !DIExpression()), !dbg !840
  %74 = fmul double %14, %68, !dbg !882
  call void @llvm.dbg.value(metadata double %74, metadata !831, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double 7.200000e+02, metadata !832, metadata !DIExpression()), !dbg !840
  %75 = fdiv double %74, 7.200000e+02, !dbg !883
  call void @llvm.dbg.value(metadata double %75, metadata !836, metadata !DIExpression()), !dbg !878
  %76 = fmul double %75, 0.000000e+00, !dbg !879
  %77 = fadd double %76, %71, !dbg !880
  call void @llvm.dbg.value(metadata double %77, metadata !833, metadata !DIExpression()), !dbg !840
  %78 = fmul double %45, %75, !dbg !884
  %79 = fadd double %78, %73, !dbg !881
  call void @llvm.dbg.value(metadata double %79, metadata !834, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 7, metadata !835, metadata !DIExpression()), !dbg !840
  store double %77, ptr %3, align 8, !dbg !885, !tbaa !173
  %80 = call double @llvm.fabs.f64(double %77), !dbg !886
  %81 = fmul double %80, 0x3CE8000000000000, !dbg !887
  %82 = call double @llvm.fabs.f64(double %75), !dbg !888
  %83 = fadd double %82, %81, !dbg !889
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !890
  store double %83, ptr %84, align 8, !dbg !891, !tbaa !183
  store double %79, ptr %4, align 8, !dbg !892, !tbaa !173
  %85 = call double @llvm.fabs.f64(double %79), !dbg !893
  %86 = fmul double %85, 0x3CE8000000000000, !dbg !894
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !895
  %88 = load double, ptr %87, align 8, !dbg !895, !tbaa !183
  %89 = fadd double %88, %86, !dbg !896
  %90 = fadd double %82, %89, !dbg !897
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !898
  store double %90, ptr %91, align 8, !dbg !899, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !900
  br label %256, !dbg !901

92:                                               ; preds = %5
  %93 = fcmp ogt double %0, 2.500000e-01, !dbg !902
  br i1 %93, label %94, label %196, !dbg !904

94:                                               ; preds = %92
  call void @llvm.dbg.assign(metadata i1 undef, metadata !905, metadata !DIExpression(), metadata !803, metadata ptr %6, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.assign(metadata i1 undef, metadata !918, metadata !DIExpression(), metadata !804, metadata ptr %7, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %0, metadata !910, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata double %1, metadata !911, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata double %2, metadata !912, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata ptr %3, metadata !913, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !926
  %95 = fcmp oeq double %0, 0.000000e+00, !dbg !927
  br i1 %95, label %96, label %99, !dbg !928

96:                                               ; preds = %94
  store double 0.000000e+00, ptr %3, align 8, !dbg !929, !tbaa !173
  store double 0.000000e+00, ptr %4, align 8, !dbg !931, !tbaa !173
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !932
  store double 0.000000e+00, ptr %97, align 8, !dbg !933, !tbaa !183
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !934
  store double 0.000000e+00, ptr %98, align 8, !dbg !935, !tbaa !183
  br label %256, !dbg !936

99:                                               ; preds = %94
  call void @llvm.dbg.value(metadata double %0, metadata !937, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %1, metadata !940, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %2, metadata !941, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !942, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !943, metadata !DIExpression()), !dbg !961
  %100 = fdiv double %1, %0, !dbg !963
  call void @llvm.dbg.value(metadata double %100, metadata !944, metadata !DIExpression()), !dbg !961
  %101 = fdiv double %2, %0, !dbg !964
  call void @llvm.dbg.value(metadata double %101, metadata !945, metadata !DIExpression()), !dbg !961
  %102 = fsub double 1.000000e+00, %100, !dbg !965
  call void @llvm.dbg.value(metadata double %102, metadata !946, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %101, metadata !947, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %100, metadata !948, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %101, metadata !949, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %0, metadata !950, metadata !DIExpression()), !dbg !961
  %103 = fmul double %0, 5.000000e-01, !dbg !966
  %104 = fmul double %103, %100, !dbg !967
  call void @llvm.dbg.value(metadata double %104, metadata !951, metadata !DIExpression()), !dbg !961
  %105 = fmul double %103, %101, !dbg !968
  call void @llvm.dbg.value(metadata double %105, metadata !952, metadata !DIExpression()), !dbg !961
  %106 = tail call double @log(double noundef %0) #9, !dbg !969
  %107 = fdiv double -1.800000e+01, %106, !dbg !970
  %108 = fptosi double %107 to i32, !dbg !971
  %109 = add i32 %108, 30, !dbg !972
  call void @llvm.dbg.value(metadata i32 %109, metadata !953, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 2, metadata !954, metadata !DIExpression()), !dbg !961
  %110 = icmp sgt i32 %108, -28, !dbg !973
  br i1 %110, label %111, label %150, !dbg !974

111:                                              ; preds = %99
  %112 = tail call i32 @llvm.smax.i32(i32 %109, i32 3), !dbg !974
  br label %113, !dbg !974

113:                                              ; preds = %113, %111
  %114 = phi double [ %100, %111 ], [ %123, %113 ]
  %115 = phi double [ %101, %111 ], [ %127, %113 ]
  %116 = phi double [ %0, %111 ], [ %128, %113 ]
  %117 = phi i32 [ 2, %111 ], [ %147, %113 ]
  %118 = phi double [ %104, %111 ], [ %136, %113 ]
  %119 = phi double [ %105, %111 ], [ %137, %113 ]
  call void @llvm.dbg.value(metadata double %114, metadata !948, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %115, metadata !949, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %116, metadata !950, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 %117, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %118, metadata !951, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %119, metadata !952, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %114, metadata !960, metadata !DIExpression()), !dbg !975
  %120 = fmul double %102, %114, !dbg !976
  %121 = fmul double %101, %115, !dbg !977
  %122 = fadd double %120, %121, !dbg !978
  %123 = fsub double %114, %122, !dbg !979
  call void @llvm.dbg.value(metadata double %123, metadata !948, metadata !DIExpression()), !dbg !961
  %124 = fmul double %102, %115, !dbg !980
  %125 = fmul double %101, %114, !dbg !981
  %126 = fsub double %124, %125, !dbg !982
  %127 = fsub double %115, %126, !dbg !983
  call void @llvm.dbg.value(metadata double %127, metadata !949, metadata !DIExpression()), !dbg !961
  %128 = fmul double %116, %0, !dbg !984
  call void @llvm.dbg.value(metadata double %128, metadata !950, metadata !DIExpression()), !dbg !961
  %129 = sitofp i32 %117 to double, !dbg !985
  %130 = fmul double %129, %129, !dbg !986
  %131 = fadd double %129, 1.000000e+00, !dbg !987
  %132 = fmul double %130, %131, !dbg !988
  %133 = fdiv double %128, %132, !dbg !989
  %134 = fmul double %123, %133, !dbg !990
  call void @llvm.dbg.value(metadata double %134, metadata !955, metadata !DIExpression()), !dbg !975
  %135 = fmul double %127, %133, !dbg !991
  call void @llvm.dbg.value(metadata double %135, metadata !959, metadata !DIExpression()), !dbg !975
  %136 = fadd double %118, %134, !dbg !992
  call void @llvm.dbg.value(metadata double %136, metadata !951, metadata !DIExpression()), !dbg !961
  %137 = fadd double %119, %135, !dbg !993
  call void @llvm.dbg.value(metadata double %137, metadata !952, metadata !DIExpression()), !dbg !961
  %138 = fmul double %134, %134, !dbg !994
  %139 = fmul double %135, %135, !dbg !996
  %140 = fadd double %138, %139, !dbg !997
  %141 = fmul double %136, %136, !dbg !998
  %142 = fmul double %137, %137, !dbg !999
  %143 = fadd double %141, %142, !dbg !1000
  %144 = fdiv double %140, %143, !dbg !1001
  %145 = tail call double @llvm.fabs.f64(double %144), !dbg !1002
  %146 = fcmp olt double %145, 0x3970000000000000, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %117, metadata !954, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !961
  %147 = add nuw nsw i32 %117, 1
  call void @llvm.dbg.value(metadata i32 %147, metadata !954, metadata !DIExpression()), !dbg !961
  %148 = icmp eq i32 %147, %112
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %150, label %113, !llvm.loop !1004

150:                                              ; preds = %113, %99
  %151 = phi double [ %105, %99 ], [ %137, %113 ], !dbg !961
  %152 = phi double [ %104, %99 ], [ %136, %113 ], !dbg !961
  call void @llvm.dbg.value(metadata double %152, metadata !951, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %151, metadata !952, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata double %152, metadata !915, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !924
  %153 = sitofp i32 %109 to double, !dbg !1006
  %154 = fmul double %153, 2.000000e+00, !dbg !1007
  %155 = fmul double %154, 0x3CB0000000000000, !dbg !1008
  %156 = tail call double @llvm.fabs.f64(double %152), !dbg !1009
  %157 = fmul double %155, %156, !dbg !1010
  call void @llvm.dbg.value(metadata double %157, metadata !915, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !924
  call void @llvm.dbg.value(metadata double %151, metadata !916, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !924
  %158 = tail call double @llvm.fabs.f64(double %151), !dbg !1011
  %159 = fmul double %155, %158, !dbg !1012
  call void @llvm.dbg.value(metadata double %159, metadata !916, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !924
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1013
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1014
  %160 = fsub double 1.000000e+00, %1, !dbg !1015
  %161 = fneg double %2, !dbg !1016
  %162 = call i32 @gsl_sf_complex_log_e(double noundef %160, double noundef %161, ptr noundef nonnull %6, ptr noundef nonnull %7) #9, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %162, metadata !919, metadata !DIExpression()), !dbg !924
  %163 = load double, ptr %6, align 8, !dbg !1018, !tbaa !173
  %164 = fmul double %163, %1, !dbg !1019
  %165 = load double, ptr %7, align 8, !dbg !1020, !tbaa !173
  %166 = fmul double %165, %2, !dbg !1021
  %167 = fadd double %164, %166, !dbg !1022
  %168 = fmul double %0, %0, !dbg !1023
  %169 = fdiv double %167, %168, !dbg !1024
  call void @llvm.dbg.value(metadata double %169, metadata !920, metadata !DIExpression()), !dbg !924
  %170 = fmul double %165, %1, !dbg !1025
  %171 = fmul double %163, %2, !dbg !1026
  %172 = fsub double %170, %171, !dbg !1026
  %173 = fdiv double %172, %168, !dbg !1027
  call void @llvm.dbg.value(metadata double %173, metadata !921, metadata !DIExpression()), !dbg !924
  %174 = fmul double %160, %169, !dbg !1028
  %175 = fmul double %173, %2, !dbg !1029
  %176 = fadd double %174, %175, !dbg !1030
  call void @llvm.dbg.value(metadata double %176, metadata !922, metadata !DIExpression()), !dbg !924
  %177 = fmul double %160, %173, !dbg !1031
  %178 = fmul double %169, %2, !dbg !1032
  %179 = fsub double %177, %178, !dbg !1033
  call void @llvm.dbg.value(metadata double %179, metadata !923, metadata !DIExpression()), !dbg !924
  %180 = fadd double %152, %176, !dbg !1034
  %181 = fadd double %180, 1.000000e+00, !dbg !1035
  store double %181, ptr %3, align 8, !dbg !1036, !tbaa !173
  %182 = fadd double %151, %179, !dbg !1037
  store double %182, ptr %4, align 8, !dbg !1038, !tbaa !173
  %183 = load double, ptr %3, align 8, !dbg !1039, !tbaa !173
  %184 = call double @llvm.fabs.f64(double %183), !dbg !1040
  %185 = call double @llvm.fabs.f64(double %176), !dbg !1041
  %186 = fadd double %184, %185, !dbg !1042
  %187 = fmul double %186, 0x3CC0000000000000, !dbg !1043
  %188 = fadd double %157, %187, !dbg !1044
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1045
  store double %188, ptr %189, align 8, !dbg !1046, !tbaa !183
  %190 = call double @llvm.fabs.f64(double %182), !dbg !1047
  %191 = call double @llvm.fabs.f64(double %179), !dbg !1048
  %192 = fadd double %191, %190, !dbg !1049
  %193 = fmul double %192, 0x3CC0000000000000, !dbg !1050
  %194 = fadd double %159, %193, !dbg !1051
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1052
  store double %194, ptr %195, align 8, !dbg !1053, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1054
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1054
  br label %256

196:                                              ; preds = %92
  call void @llvm.dbg.value(metadata double %0, metadata !1055, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %1, metadata !1058, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %2, metadata !1059, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr %3, metadata !1060, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata ptr %4, metadata !1061, metadata !DIExpression()), !dbg !1079
  %197 = fdiv double %1, %0, !dbg !1081
  call void @llvm.dbg.value(metadata double %197, metadata !1062, metadata !DIExpression()), !dbg !1079
  %198 = fdiv double %2, %0, !dbg !1082
  call void @llvm.dbg.value(metadata double %198, metadata !1063, metadata !DIExpression()), !dbg !1079
  %199 = fsub double 1.000000e+00, %197, !dbg !1083
  call void @llvm.dbg.value(metadata double %199, metadata !1064, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %198, metadata !1065, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %197, metadata !1066, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %198, metadata !1067, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %0, metadata !1068, metadata !DIExpression()), !dbg !1079
  %200 = fmul double %197, %0, !dbg !1084
  call void @llvm.dbg.value(metadata double %200, metadata !1069, metadata !DIExpression()), !dbg !1079
  %201 = fmul double %198, %0, !dbg !1085
  call void @llvm.dbg.value(metadata double %201, metadata !1070, metadata !DIExpression()), !dbg !1079
  %202 = tail call double @log(double noundef %0) #9, !dbg !1086
  %203 = fdiv double -2.200000e+01, %202, !dbg !1087
  %204 = fptosi double %203 to i32, !dbg !1088
  %205 = add i32 %204, 50, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %205, metadata !1071, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 2, metadata !1072, metadata !DIExpression()), !dbg !1079
  %206 = icmp sgt i32 %204, -48, !dbg !1090
  br i1 %206, label %207, label %244, !dbg !1091

207:                                              ; preds = %196
  %208 = tail call i32 @llvm.smax.i32(i32 %205, i32 3), !dbg !1091
  br label %209, !dbg !1091

209:                                              ; preds = %209, %207
  %210 = phi double [ %197, %207 ], [ %219, %209 ]
  %211 = phi double [ %198, %207 ], [ %223, %209 ]
  %212 = phi double [ %0, %207 ], [ %224, %209 ]
  %213 = phi i32 [ 2, %207 ], [ %241, %209 ]
  %214 = phi double [ %200, %207 ], [ %230, %209 ]
  %215 = phi double [ %201, %207 ], [ %231, %209 ]
  call void @llvm.dbg.value(metadata double %210, metadata !1066, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %211, metadata !1067, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %212, metadata !1068, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 %213, metadata !1072, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %214, metadata !1069, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %215, metadata !1070, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %210, metadata !1078, metadata !DIExpression()), !dbg !1092
  %216 = fmul double %199, %210, !dbg !1093
  %217 = fmul double %198, %211, !dbg !1094
  %218 = fadd double %216, %217, !dbg !1095
  %219 = fsub double %210, %218, !dbg !1096
  call void @llvm.dbg.value(metadata double %219, metadata !1066, metadata !DIExpression()), !dbg !1079
  %220 = fmul double %199, %211, !dbg !1097
  %221 = fmul double %198, %210, !dbg !1098
  %222 = fsub double %220, %221, !dbg !1099
  %223 = fsub double %211, %222, !dbg !1100
  call void @llvm.dbg.value(metadata double %223, metadata !1067, metadata !DIExpression()), !dbg !1079
  %224 = fmul double %212, %0, !dbg !1101
  call void @llvm.dbg.value(metadata double %224, metadata !1068, metadata !DIExpression()), !dbg !1079
  %225 = sitofp i32 %213 to double, !dbg !1102
  %226 = fmul double %225, %225, !dbg !1103
  %227 = fdiv double %224, %226, !dbg !1104
  %228 = fmul double %219, %227, !dbg !1105
  call void @llvm.dbg.value(metadata double %228, metadata !1073, metadata !DIExpression()), !dbg !1092
  %229 = fmul double %223, %227, !dbg !1106
  call void @llvm.dbg.value(metadata double %229, metadata !1077, metadata !DIExpression()), !dbg !1092
  %230 = fadd double %214, %228, !dbg !1107
  call void @llvm.dbg.value(metadata double %230, metadata !1069, metadata !DIExpression()), !dbg !1079
  %231 = fadd double %215, %229, !dbg !1108
  call void @llvm.dbg.value(metadata double %231, metadata !1070, metadata !DIExpression()), !dbg !1079
  %232 = fmul double %228, %228, !dbg !1109
  %233 = fmul double %229, %229, !dbg !1111
  %234 = fadd double %232, %233, !dbg !1112
  %235 = fmul double %230, %230, !dbg !1113
  %236 = fmul double %231, %231, !dbg !1114
  %237 = fadd double %235, %236, !dbg !1115
  %238 = fdiv double %234, %237, !dbg !1116
  %239 = tail call double @llvm.fabs.f64(double %238), !dbg !1117
  %240 = fcmp olt double %239, 0x3970000000000000, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %213, metadata !1072, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1079
  %241 = add nuw nsw i32 %213, 1
  call void @llvm.dbg.value(metadata i32 %241, metadata !1072, metadata !DIExpression()), !dbg !1079
  %242 = icmp eq i32 %241, %208
  %243 = select i1 %240, i1 true, i1 %242
  br i1 %243, label %244, label %209, !llvm.loop !1119

244:                                              ; preds = %209, %196
  %245 = phi double [ %201, %196 ], [ %231, %209 ], !dbg !1079
  %246 = phi double [ %200, %196 ], [ %230, %209 ], !dbg !1079
  call void @llvm.dbg.value(metadata double %246, metadata !1069, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata double %245, metadata !1070, metadata !DIExpression()), !dbg !1079
  store double %246, ptr %3, align 8, !dbg !1121, !tbaa !173
  %247 = sitofp i32 %205 to double, !dbg !1122
  %248 = fmul double %247, 2.000000e+00, !dbg !1123
  %249 = fmul double %248, 0x3CB0000000000000, !dbg !1124
  %250 = tail call double @llvm.fabs.f64(double %246), !dbg !1125
  %251 = fmul double %249, %250, !dbg !1126
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1127
  store double %251, ptr %252, align 8, !dbg !1128, !tbaa !183
  store double %245, ptr %4, align 8, !dbg !1129, !tbaa !173
  %253 = tail call double @llvm.fabs.f64(double %245), !dbg !1130
  %254 = fmul double %249, %253, !dbg !1131
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1132
  store double %254, ptr %255, align 8, !dbg !1133, !tbaa !183
  br label %256, !dbg !1134

256:                                              ; preds = %150, %96, %244, %10
  %257 = phi i32 [ 0, %10 ], [ 0, %244 ], [ 0, %96 ], [ %162, %150 ], !dbg !1135
  ret i32 %257, !dbg !1136
}

declare !dbg !1137 i32 @gsl_sf_complex_log_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!180 = !DILocation(line: 544, column: 28, scope: !152)
!181 = !DILocation(line: 544, column: 18, scope: !152)
!182 = !DILocation(line: 545, column: 24, scope: !152)
!183 = !{!174, !175, i64 8}
!184 = !DILocation(line: 545, column: 39, scope: !152)
!185 = !DILocation(line: 545, column: 34, scope: !152)
!186 = !DILocation(line: 545, column: 28, scope: !152)
!187 = !DILocation(line: 545, column: 13, scope: !152)
!188 = !DILocation(line: 546, column: 44, scope: !152)
!189 = !DILocation(line: 546, column: 42, scope: !152)
!190 = !DILocation(line: 546, column: 17, scope: !152)
!191 = !DILocation(line: 547, column: 12, scope: !152)
!192 = !DILocation(line: 548, column: 3, scope: !153)
!193 = !DILocation(line: 0, scope: !153)
!194 = !DILocation(line: 549, column: 1, scope: !145)
!195 = distinct !DISubprogram(name: "dilog_xge0", scope: !2, file: !2, line: 136, type: !146, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !196)
!196 = !{!197, !198, !199, !202, !203, !204, !205, !206, !207, !210, !211, !212, !213, !214, !215, !216, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !233, !234, !235, !236, !237}
!197 = !DILocalVariable(name: "x", arg: 1, scope: !195, file: !2, line: 136, type: !82)
!198 = !DILocalVariable(name: "result", arg: 2, scope: !195, file: !2, line: 136, type: !66)
!199 = !DILocalVariable(name: "ser", scope: !200, file: !2, line: 139, type: !67)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 138, column: 15)
!201 = distinct !DILexicalBlock(scope: !195, file: !2, line: 138, column: 6)
!202 = !DILocalVariable(name: "stat_ser", scope: !200, file: !2, line: 140, type: !77)
!203 = !DILocalVariable(name: "log_x", scope: !200, file: !2, line: 141, type: !82)
!204 = !DILocalVariable(name: "t1", scope: !200, file: !2, line: 142, type: !82)
!205 = !DILocalVariable(name: "t2", scope: !200, file: !2, line: 143, type: !82)
!206 = !DILocalVariable(name: "t3", scope: !200, file: !2, line: 144, type: !82)
!207 = !DILocalVariable(name: "ser", scope: !208, file: !2, line: 152, type: !67)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 151, column: 21)
!209 = distinct !DILexicalBlock(scope: !201, file: !2, line: 151, column: 11)
!210 = !DILocalVariable(name: "stat_ser", scope: !208, file: !2, line: 153, type: !77)
!211 = !DILocalVariable(name: "log_x", scope: !208, file: !2, line: 154, type: !82)
!212 = !DILocalVariable(name: "log_term", scope: !208, file: !2, line: 155, type: !82)
!213 = !DILocalVariable(name: "t1", scope: !208, file: !2, line: 156, type: !82)
!214 = !DILocalVariable(name: "t2", scope: !208, file: !2, line: 157, type: !82)
!215 = !DILocalVariable(name: "t3", scope: !208, file: !2, line: 158, type: !82)
!216 = !DILocalVariable(name: "eps", scope: !217, file: !2, line: 167, type: !82)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 165, column: 20)
!218 = distinct !DILexicalBlock(scope: !209, file: !2, line: 165, column: 11)
!219 = !DILocalVariable(name: "lne", scope: !217, file: !2, line: 168, type: !82)
!220 = !DILocalVariable(name: "c0", scope: !217, file: !2, line: 169, type: !82)
!221 = !DILocalVariable(name: "c1", scope: !217, file: !2, line: 170, type: !82)
!222 = !DILocalVariable(name: "c2", scope: !217, file: !2, line: 171, type: !82)
!223 = !DILocalVariable(name: "c3", scope: !217, file: !2, line: 172, type: !82)
!224 = !DILocalVariable(name: "c4", scope: !217, file: !2, line: 173, type: !82)
!225 = !DILocalVariable(name: "c5", scope: !217, file: !2, line: 174, type: !82)
!226 = !DILocalVariable(name: "c6", scope: !217, file: !2, line: 175, type: !82)
!227 = !DILocalVariable(name: "c7", scope: !217, file: !2, line: 176, type: !82)
!228 = !DILocalVariable(name: "c8", scope: !217, file: !2, line: 177, type: !82)
!229 = !DILocalVariable(name: "ser", scope: !230, file: !2, line: 188, type: !67)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 187, column: 20)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 187, column: 11)
!232 = distinct !DILexicalBlock(scope: !218, file: !2, line: 182, column: 11)
!233 = !DILocalVariable(name: "stat_ser", scope: !230, file: !2, line: 189, type: !77)
!234 = !DILocalVariable(name: "log_x", scope: !230, file: !2, line: 190, type: !82)
!235 = !DILocalVariable(name: "t1", scope: !230, file: !2, line: 191, type: !82)
!236 = !DILocalVariable(name: "t2", scope: !230, file: !2, line: 192, type: !82)
!237 = !DILocalVariable(name: "t3", scope: !230, file: !2, line: 193, type: !82)
!238 = distinct !DIAssignID()
!239 = !DILocation(line: 0, scope: !200)
!240 = distinct !DIAssignID()
!241 = !DILocation(line: 0, scope: !208)
!242 = distinct !DIAssignID()
!243 = !DILocation(line: 0, scope: !230)
!244 = !DILocation(line: 0, scope: !195)
!245 = !DILocation(line: 138, column: 8, scope: !201)
!246 = !DILocation(line: 138, column: 6, scope: !195)
!247 = !DILocation(line: 139, column: 5, scope: !200)
!248 = !DILocation(line: 140, column: 44, scope: !200)
!249 = !DILocation(line: 140, column: 26, scope: !200)
!250 = !DILocation(line: 141, column: 26, scope: !200)
!251 = !DILocation(line: 143, column: 27, scope: !200)
!252 = !DILocation(line: 144, column: 26, scope: !200)
!253 = !DILocation(line: 144, column: 32, scope: !200)
!254 = !DILocation(line: 145, column: 23, scope: !200)
!255 = !DILocation(line: 145, column: 28, scope: !200)
!256 = !DILocation(line: 145, column: 18, scope: !200)
!257 = !DILocation(line: 146, column: 38, scope: !200)
!258 = !DILocation(line: 146, column: 36, scope: !200)
!259 = !DILocation(line: 146, column: 56, scope: !200)
!260 = !DILocation(line: 146, column: 50, scope: !200)
!261 = !DILocation(line: 146, column: 13, scope: !200)
!262 = !DILocation(line: 147, column: 50, scope: !200)
!263 = !DILocation(line: 147, column: 48, scope: !200)
!264 = !DILocation(line: 147, column: 61, scope: !200)
!265 = !DILocation(line: 147, column: 59, scope: !200)
!266 = !DILocation(line: 147, column: 36, scope: !200)
!267 = !DILocation(line: 147, column: 17, scope: !200)
!268 = !DILocation(line: 148, column: 44, scope: !200)
!269 = !DILocation(line: 148, column: 42, scope: !200)
!270 = !DILocation(line: 148, column: 17, scope: !200)
!271 = !DILocation(line: 150, column: 3, scope: !201)
!272 = !DILocation(line: 151, column: 13, scope: !209)
!273 = !DILocation(line: 151, column: 11, scope: !201)
!274 = !DILocation(line: 152, column: 5, scope: !208)
!275 = !DILocation(line: 153, column: 50, scope: !208)
!276 = !DILocation(line: 153, column: 45, scope: !208)
!277 = !DILocation(line: 153, column: 26, scope: !208)
!278 = !DILocation(line: 154, column: 29, scope: !208)
!279 = !DILocation(line: 155, column: 38, scope: !208)
!280 = !DILocation(line: 155, column: 58, scope: !208)
!281 = !DILocation(line: 155, column: 53, scope: !208)
!282 = !DILocation(line: 155, column: 35, scope: !208)
!283 = !DILocation(line: 157, column: 27, scope: !208)
!284 = !DILocation(line: 159, column: 23, scope: !208)
!285 = !DILocation(line: 159, column: 28, scope: !208)
!286 = !DILocation(line: 159, column: 18, scope: !208)
!287 = !DILocation(line: 160, column: 38, scope: !208)
!288 = !DILocation(line: 160, column: 36, scope: !208)
!289 = !DILocation(line: 160, column: 56, scope: !208)
!290 = !DILocation(line: 160, column: 50, scope: !208)
!291 = !DILocation(line: 160, column: 13, scope: !208)
!292 = !DILocation(line: 161, column: 50, scope: !208)
!293 = !DILocation(line: 161, column: 48, scope: !208)
!294 = !DILocation(line: 161, column: 61, scope: !208)
!295 = !DILocation(line: 161, column: 59, scope: !208)
!296 = !DILocation(line: 161, column: 36, scope: !208)
!297 = !DILocation(line: 161, column: 17, scope: !208)
!298 = !DILocation(line: 162, column: 44, scope: !208)
!299 = !DILocation(line: 162, column: 42, scope: !208)
!300 = !DILocation(line: 162, column: 17, scope: !208)
!301 = !DILocation(line: 164, column: 3, scope: !209)
!302 = !DILocation(line: 165, column: 13, scope: !218)
!303 = !DILocation(line: 165, column: 11, scope: !209)
!304 = !DILocation(line: 167, column: 26, scope: !217)
!305 = !DILocation(line: 0, scope: !217)
!306 = !DILocation(line: 168, column: 24, scope: !217)
!307 = !DILocation(line: 170, column: 29, scope: !217)
!308 = !DILocation(line: 171, column: 34, scope: !217)
!309 = !DILocation(line: 171, column: 29, scope: !217)
!310 = !DILocation(line: 171, column: 39, scope: !217)
!311 = !DILocation(line: 172, column: 34, scope: !217)
!312 = !DILocation(line: 172, column: 29, scope: !217)
!313 = !DILocation(line: 172, column: 39, scope: !217)
!314 = !DILocation(line: 173, column: 34, scope: !217)
!315 = !DILocation(line: 173, column: 29, scope: !217)
!316 = !DILocation(line: 173, column: 39, scope: !217)
!317 = !DILocation(line: 174, column: 34, scope: !217)
!318 = !DILocation(line: 174, column: 29, scope: !217)
!319 = !DILocation(line: 174, column: 39, scope: !217)
!320 = !DILocation(line: 175, column: 34, scope: !217)
!321 = !DILocation(line: 175, column: 29, scope: !217)
!322 = !DILocation(line: 175, column: 39, scope: !217)
!323 = !DILocation(line: 176, column: 34, scope: !217)
!324 = !DILocation(line: 176, column: 29, scope: !217)
!325 = !DILocation(line: 176, column: 39, scope: !217)
!326 = !DILocation(line: 177, column: 34, scope: !217)
!327 = !DILocation(line: 177, column: 29, scope: !217)
!328 = !DILocation(line: 177, column: 39, scope: !217)
!329 = !DILocation(line: 178, column: 81, scope: !217)
!330 = !DILocation(line: 178, column: 77, scope: !217)
!331 = !DILocation(line: 178, column: 73, scope: !217)
!332 = !DILocation(line: 178, column: 69, scope: !217)
!333 = !DILocation(line: 178, column: 65, scope: !217)
!334 = !DILocation(line: 178, column: 61, scope: !217)
!335 = !DILocation(line: 178, column: 57, scope: !217)
!336 = !DILocation(line: 178, column: 53, scope: !217)
!337 = !DILocation(line: 178, column: 49, scope: !217)
!338 = !DILocation(line: 178, column: 45, scope: !217)
!339 = !DILocation(line: 178, column: 41, scope: !217)
!340 = !DILocation(line: 178, column: 37, scope: !217)
!341 = !DILocation(line: 178, column: 33, scope: !217)
!342 = !DILocation(line: 178, column: 29, scope: !217)
!343 = !DILocation(line: 178, column: 25, scope: !217)
!344 = !DILocation(line: 178, column: 21, scope: !217)
!345 = !DILocation(line: 178, column: 17, scope: !217)
!346 = !DILocation(line: 179, column: 43, scope: !217)
!347 = !DILocation(line: 179, column: 41, scope: !217)
!348 = !DILocation(line: 179, column: 13, scope: !217)
!349 = !DILocation(line: 179, column: 17, scope: !217)
!350 = !DILocation(line: 182, column: 13, scope: !232)
!351 = !DILocation(line: 182, column: 11, scope: !218)
!352 = !DILocation(line: 183, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !232, file: !2, line: 182, column: 21)
!354 = !DILocation(line: 184, column: 13, scope: !353)
!355 = !DILocation(line: 184, column: 17, scope: !353)
!356 = !DILocation(line: 185, column: 5, scope: !353)
!357 = !DILocation(line: 187, column: 13, scope: !231)
!358 = !DILocation(line: 187, column: 11, scope: !232)
!359 = !DILocation(line: 188, column: 5, scope: !230)
!360 = !DILocation(line: 189, column: 44, scope: !230)
!361 = !DILocation(line: 189, column: 26, scope: !230)
!362 = !DILocation(line: 190, column: 26, scope: !230)
!363 = !DILocation(line: 192, column: 27, scope: !230)
!364 = !DILocation(line: 193, column: 29, scope: !230)
!365 = !DILocation(line: 193, column: 28, scope: !230)
!366 = !DILocation(line: 194, column: 23, scope: !230)
!367 = !DILocation(line: 194, column: 28, scope: !230)
!368 = !DILocation(line: 194, column: 18, scope: !230)
!369 = !DILocation(line: 195, column: 38, scope: !230)
!370 = !DILocation(line: 195, column: 36, scope: !230)
!371 = !DILocation(line: 195, column: 56, scope: !230)
!372 = !DILocation(line: 195, column: 50, scope: !230)
!373 = !DILocation(line: 195, column: 13, scope: !230)
!374 = !DILocation(line: 196, column: 50, scope: !230)
!375 = !DILocation(line: 196, column: 48, scope: !230)
!376 = !DILocation(line: 196, column: 61, scope: !230)
!377 = !DILocation(line: 196, column: 59, scope: !230)
!378 = !DILocation(line: 196, column: 36, scope: !230)
!379 = !DILocation(line: 196, column: 17, scope: !230)
!380 = !DILocation(line: 197, column: 44, scope: !230)
!381 = !DILocation(line: 197, column: 42, scope: !230)
!382 = !DILocation(line: 197, column: 17, scope: !230)
!383 = !DILocation(line: 199, column: 3, scope: !231)
!384 = !DILocation(line: 200, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !231, file: !2, line: 200, column: 11)
!386 = !DILocation(line: 200, column: 11, scope: !231)
!387 = !DILocation(line: 201, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !2, line: 200, column: 21)
!389 = !DILocation(line: 201, column: 5, scope: !388)
!390 = !DILocation(line: 203, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !385, file: !2, line: 203, column: 11)
!392 = !DILocation(line: 203, column: 11, scope: !385)
!393 = !DILocation(line: 204, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 203, column: 20)
!395 = !DILocation(line: 204, column: 5, scope: !394)
!396 = !DILocation(line: 209, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !2, line: 206, column: 8)
!398 = !DILocation(line: 210, column: 5, scope: !397)
!399 = !DILocation(line: 0, scope: !201)
!400 = !DILocation(line: 212, column: 1, scope: !195)
!401 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_xy_e", scope: !2, file: !2, line: 553, type: !402, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!21, !82, !82, !66, !66}
!404 = !{!405, !406, !407, !408, !409, !410, !411, !415, !416, !417, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!405 = !DILocalVariable(name: "x", arg: 1, scope: !401, file: !2, line: 554, type: !82)
!406 = !DILocalVariable(name: "y", arg: 2, scope: !401, file: !2, line: 555, type: !82)
!407 = !DILocalVariable(name: "real_dl", arg: 3, scope: !401, file: !2, line: 556, type: !66)
!408 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !401, file: !2, line: 557, type: !66)
!409 = !DILocalVariable(name: "zeta2", scope: !401, file: !2, line: 560, type: !82)
!410 = !DILocalVariable(name: "r2", scope: !401, file: !2, line: 561, type: !82)
!411 = !DILocalVariable(name: "theta", scope: !412, file: !2, line: 581, type: !82)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 578, column: 3)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 577, column: 11)
!414 = distinct !DILexicalBlock(scope: !401, file: !2, line: 563, column: 6)
!415 = !DILocalVariable(name: "term1", scope: !412, file: !2, line: 582, type: !82)
!416 = !DILocalVariable(name: "term2", scope: !412, file: !2, line: 583, type: !82)
!417 = !DILocalVariable(name: "r", scope: !418, file: !2, line: 595, type: !82)
!418 = distinct !DILexicalBlock(scope: !419, file: !2, line: 593, column: 3)
!419 = distinct !DILexicalBlock(scope: !413, file: !2, line: 588, column: 11)
!420 = !DILocalVariable(name: "x_tmp", scope: !418, file: !2, line: 596, type: !82)
!421 = !DILocalVariable(name: "y_tmp", scope: !418, file: !2, line: 597, type: !82)
!422 = !DILocalVariable(name: "result_re_tmp", scope: !418, file: !2, line: 599, type: !67)
!423 = !DILocalVariable(name: "result_im_tmp", scope: !418, file: !2, line: 599, type: !67)
!424 = !DILocalVariable(name: "stat_dilog", scope: !418, file: !2, line: 601, type: !77)
!425 = !DILocalVariable(name: "theta", scope: !418, file: !2, line: 608, type: !82)
!426 = !DILocalVariable(name: "theta_abs", scope: !418, file: !2, line: 609, type: !82)
!427 = !DILocalVariable(name: "theta_sgn", scope: !418, file: !2, line: 610, type: !82)
!428 = !DILocalVariable(name: "ln_minusz_re", scope: !418, file: !2, line: 611, type: !82)
!429 = !DILocalVariable(name: "ln_minusz_im", scope: !418, file: !2, line: 612, type: !82)
!430 = !DILocalVariable(name: "lmz2_re", scope: !418, file: !2, line: 613, type: !82)
!431 = !DILocalVariable(name: "lmz2_im", scope: !418, file: !2, line: 614, type: !82)
!432 = distinct !DIAssignID()
!433 = distinct !DIAssignID()
!434 = distinct !DIAssignID()
!435 = !DILocation(line: 0, scope: !418)
!436 = distinct !DIAssignID()
!437 = !DILocation(line: 0, scope: !401)
!438 = !DILocation(line: 561, column: 22, scope: !401)
!439 = !DILocation(line: 561, column: 28, scope: !401)
!440 = !DILocation(line: 561, column: 25, scope: !401)
!441 = !DILocation(line: 563, column: 8, scope: !414)
!442 = !DILocation(line: 563, column: 6, scope: !401)
!443 = !DILocation(line: 565, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !2, line: 565, column: 8)
!445 = distinct !DILexicalBlock(scope: !414, file: !2, line: 564, column: 3)
!446 = !DILocation(line: 565, column: 8, scope: !445)
!447 = !DILocation(line: 567, column: 30, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 566, column: 5)
!449 = !DILocation(line: 567, column: 28, scope: !448)
!450 = !DILocation(line: 568, column: 46, scope: !448)
!451 = !DILocation(line: 568, column: 44, scope: !448)
!452 = !DILocation(line: 569, column: 5, scope: !448)
!453 = !DILocation(line: 0, scope: !444)
!454 = !DILocation(line: 0, scope: !152, inlinedAt: !455)
!455 = distinct !DILocation(line: 575, column: 12, scope: !445)
!456 = !DILocation(line: 0, scope: !145, inlinedAt: !455)
!457 = !DILocation(line: 537, column: 8, scope: !153, inlinedAt: !455)
!458 = !DILocation(line: 537, column: 6, scope: !145, inlinedAt: !455)
!459 = !DILocation(line: 538, column: 12, scope: !164, inlinedAt: !455)
!460 = !DILocation(line: 538, column: 5, scope: !164, inlinedAt: !455)
!461 = !DILocation(line: 541, column: 5, scope: !152, inlinedAt: !455)
!462 = !DILocation(line: 542, column: 31, scope: !152, inlinedAt: !455)
!463 = !DILocation(line: 542, column: 19, scope: !152, inlinedAt: !455)
!464 = !DILocation(line: 543, column: 19, scope: !152, inlinedAt: !455)
!465 = !DILocation(line: 544, column: 24, scope: !152, inlinedAt: !455)
!466 = !DILocation(line: 544, column: 39, scope: !152, inlinedAt: !455)
!467 = !DILocation(line: 544, column: 34, scope: !152, inlinedAt: !455)
!468 = !DILocation(line: 544, column: 28, scope: !152, inlinedAt: !455)
!469 = !DILocation(line: 544, column: 18, scope: !152, inlinedAt: !455)
!470 = !DILocation(line: 545, column: 24, scope: !152, inlinedAt: !455)
!471 = !DILocation(line: 545, column: 39, scope: !152, inlinedAt: !455)
!472 = !DILocation(line: 545, column: 34, scope: !152, inlinedAt: !455)
!473 = !DILocation(line: 545, column: 28, scope: !152, inlinedAt: !455)
!474 = !DILocation(line: 545, column: 13, scope: !152, inlinedAt: !455)
!475 = !DILocation(line: 546, column: 44, scope: !152, inlinedAt: !455)
!476 = !DILocation(line: 546, column: 42, scope: !152, inlinedAt: !455)
!477 = !DILocation(line: 546, column: 17, scope: !152, inlinedAt: !455)
!478 = !DILocation(line: 547, column: 12, scope: !152, inlinedAt: !455)
!479 = !DILocation(line: 548, column: 3, scope: !153, inlinedAt: !455)
!480 = !DILocation(line: 577, column: 19, scope: !413)
!481 = !DILocation(line: 577, column: 11, scope: !413)
!482 = !DILocation(line: 577, column: 26, scope: !413)
!483 = !DILocation(line: 577, column: 11, scope: !414)
!484 = !DILocation(line: 581, column: 26, scope: !412)
!485 = !DILocation(line: 0, scope: !412)
!486 = !DILocation(line: 582, column: 31, scope: !412)
!487 = !DILocation(line: 582, column: 37, scope: !412)
!488 = !DILocation(line: 583, column: 31, scope: !412)
!489 = !DILocation(line: 583, column: 30, scope: !412)
!490 = !DILocation(line: 583, column: 42, scope: !412)
!491 = !DILocation(line: 584, column: 26, scope: !412)
!492 = !DILocation(line: 584, column: 34, scope: !412)
!493 = !DILocation(line: 584, column: 18, scope: !412)
!494 = !DILocation(line: 585, column: 59, scope: !412)
!495 = !DILocation(line: 585, column: 42, scope: !412)
!496 = !DILocation(line: 585, column: 14, scope: !412)
!497 = !DILocation(line: 585, column: 18, scope: !412)
!498 = !DILocation(line: 586, column: 12, scope: !412)
!499 = !DILocation(line: 588, column: 14, scope: !419)
!500 = !DILocation(line: 588, column: 11, scope: !413)
!501 = !DILocation(line: 590, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !419, file: !2, line: 589, column: 3)
!503 = !DILocation(line: 590, column: 5, scope: !502)
!504 = !DILocation(line: 595, column: 22, scope: !418)
!505 = !DILocation(line: 596, column: 28, scope: !418)
!506 = !DILocation(line: 597, column: 26, scope: !418)
!507 = !DILocation(line: 597, column: 28, scope: !418)
!508 = !DILocation(line: 599, column: 5, scope: !418)
!509 = !DILocation(line: 602, column: 7, scope: !418)
!510 = !DILocation(line: 608, column: 26, scope: !418)
!511 = !DILocation(line: 609, column: 30, scope: !418)
!512 = !DILocation(line: 610, column: 38, scope: !418)
!513 = !DILocation(line: 611, column: 33, scope: !418)
!514 = !DILocation(line: 612, column: 56, scope: !418)
!515 = !DILocation(line: 612, column: 43, scope: !418)
!516 = !DILocation(line: 613, column: 40, scope: !418)
!517 = !DILocation(line: 613, column: 68, scope: !418)
!518 = !DILocation(line: 613, column: 54, scope: !418)
!519 = !DILocation(line: 614, column: 31, scope: !418)
!520 = !DILocation(line: 614, column: 44, scope: !418)
!521 = !DILocation(line: 615, column: 35, scope: !418)
!522 = !DILocation(line: 615, column: 20, scope: !418)
!523 = !DILocation(line: 615, column: 45, scope: !418)
!524 = !DILocation(line: 615, column: 39, scope: !418)
!525 = !DILocation(line: 615, column: 55, scope: !418)
!526 = !DILocation(line: 615, column: 18, scope: !418)
!527 = !DILocation(line: 616, column: 35, scope: !418)
!528 = !DILocation(line: 616, column: 68, scope: !418)
!529 = !DILocation(line: 616, column: 66, scope: !418)
!530 = !DILocation(line: 616, column: 82, scope: !418)
!531 = !DILocation(line: 616, column: 60, scope: !418)
!532 = !DILocation(line: 616, column: 39, scope: !418)
!533 = !DILocation(line: 616, column: 14, scope: !418)
!534 = !DILocation(line: 616, column: 18, scope: !418)
!535 = !DILocation(line: 617, column: 35, scope: !418)
!536 = !DILocation(line: 617, column: 20, scope: !418)
!537 = !DILocation(line: 617, column: 45, scope: !418)
!538 = !DILocation(line: 617, column: 39, scope: !418)
!539 = !DILocation(line: 617, column: 18, scope: !418)
!540 = !DILocation(line: 618, column: 35, scope: !418)
!541 = !DILocation(line: 618, column: 61, scope: !418)
!542 = !DILocation(line: 618, column: 60, scope: !418)
!543 = !DILocation(line: 618, column: 39, scope: !418)
!544 = !DILocation(line: 618, column: 14, scope: !418)
!545 = !DILocation(line: 618, column: 18, scope: !418)
!546 = !DILocation(line: 620, column: 3, scope: !419)
!547 = !DILocation(line: 0, scope: !414)
!548 = !DILocation(line: 621, column: 1, scope: !401)
!549 = !DISubprogram(name: "log", scope: !550, file: !550, line: 104, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!551 = !DISubroutineType(types: !552)
!552 = !{!59, !59}
!553 = !DISubprogram(name: "atan2", scope: !550, file: !550, line: 59, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DISubroutineType(types: !555)
!555 = !{!59, !59, !59}
!556 = !DISubprogram(name: "gsl_sf_clausen_e", scope: !557, file: !557, line: 46, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DIFile(filename: "../gsl/gsl_sf_clausen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "270ce6902433f043e402bc702eef83a1")
!558 = distinct !DIAssignID()
!559 = !DILocation(line: 0, scope: !124)
!560 = distinct !DIAssignID()
!561 = !DILocation(line: 0, scope: !114)
!562 = !DILocation(line: 491, column: 20, scope: !114)
!563 = !DILocation(line: 493, column: 8, scope: !125)
!564 = !DILocation(line: 493, column: 6, scope: !114)
!565 = !DILocation(line: 499, column: 30, scope: !124)
!566 = !DILocation(line: 500, column: 30, scope: !124)
!567 = !DILocation(line: 501, column: 26, scope: !124)
!568 = !DILocation(line: 505, column: 5, scope: !124)
!569 = !DILocation(line: 506, column: 5, scope: !124)
!570 = !DILocation(line: 508, column: 28, scope: !124)
!571 = !DILocation(line: 510, column: 28, scope: !124)
!572 = !DILocation(line: 511, column: 28, scope: !124)
!573 = !DILocation(line: 512, column: 28, scope: !124)
!574 = !DILocation(line: 513, column: 28, scope: !124)
!575 = !DILocation(line: 514, column: 36, scope: !124)
!576 = !DILocation(line: 514, column: 40, scope: !124)
!577 = !DILocation(line: 514, column: 53, scope: !124)
!578 = !DILocation(line: 514, column: 48, scope: !124)
!579 = !DILocation(line: 514, column: 66, scope: !124)
!580 = !DILocation(line: 514, column: 60, scope: !124)
!581 = !DILocation(line: 514, column: 19, scope: !124)
!582 = !DILocation(line: 515, column: 36, scope: !124)
!583 = !DILocation(line: 515, column: 14, scope: !124)
!584 = !DILocation(line: 516, column: 55, scope: !124)
!585 = !DILocation(line: 516, column: 53, scope: !124)
!586 = !DILocation(line: 516, column: 73, scope: !124)
!587 = !DILocation(line: 516, column: 71, scope: !124)
!588 = !DILocation(line: 516, column: 44, scope: !124)
!589 = !DILocation(line: 516, column: 18, scope: !124)
!590 = !DILocation(line: 517, column: 36, scope: !124)
!591 = !DILocation(line: 517, column: 21, scope: !124)
!592 = !DILocation(line: 517, column: 46, scope: !124)
!593 = !DILocation(line: 517, column: 40, scope: !124)
!594 = !DILocation(line: 517, column: 61, scope: !124)
!595 = !DILocation(line: 517, column: 53, scope: !124)
!596 = !DILocation(line: 517, column: 19, scope: !124)
!597 = !DILocation(line: 518, column: 36, scope: !124)
!598 = !DILocation(line: 518, column: 14, scope: !124)
!599 = !DILocation(line: 519, column: 47, scope: !124)
!600 = !DILocation(line: 519, column: 66, scope: !124)
!601 = !DILocation(line: 519, column: 64, scope: !124)
!602 = !DILocation(line: 519, column: 44, scope: !124)
!603 = !DILocation(line: 519, column: 18, scope: !124)
!604 = !DILocation(line: 522, column: 3, scope: !125)
!605 = !DILocation(line: 525, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !125, file: !2, line: 524, column: 3)
!607 = !DILocation(line: 525, column: 5, scope: !606)
!608 = !DILocation(line: 0, scope: !125)
!609 = !DILocation(line: 527, column: 1, scope: !114)
!610 = distinct !DISubprogram(name: "gsl_sf_complex_dilog_e", scope: !2, file: !2, line: 625, type: !402, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619}
!612 = !DILocalVariable(name: "r", arg: 1, scope: !610, file: !2, line: 626, type: !82)
!613 = !DILocalVariable(name: "theta", arg: 2, scope: !610, file: !2, line: 627, type: !82)
!614 = !DILocalVariable(name: "real_dl", arg: 3, scope: !610, file: !2, line: 628, type: !66)
!615 = !DILocalVariable(name: "imag_dl", arg: 4, scope: !610, file: !2, line: 629, type: !66)
!616 = !DILocalVariable(name: "cos_theta", scope: !610, file: !2, line: 632, type: !82)
!617 = !DILocalVariable(name: "sin_theta", scope: !610, file: !2, line: 633, type: !82)
!618 = !DILocalVariable(name: "x", scope: !610, file: !2, line: 634, type: !82)
!619 = !DILocalVariable(name: "y", scope: !610, file: !2, line: 635, type: !82)
!620 = !DILocation(line: 0, scope: !610)
!621 = !DILocation(line: 632, column: 28, scope: !610)
!622 = !DILocation(line: 633, column: 28, scope: !610)
!623 = !DILocation(line: 634, column: 22, scope: !610)
!624 = !DILocation(line: 635, column: 22, scope: !610)
!625 = !DILocation(line: 636, column: 10, scope: !610)
!626 = !DILocation(line: 636, column: 3, scope: !610)
!627 = !DISubprogram(name: "cos", scope: !550, file: !550, line: 62, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!628 = !DISubprogram(name: "sin", scope: !550, file: !550, line: 64, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = distinct !DISubprogram(name: "gsl_sf_complex_spence_xy_e", scope: !2, file: !2, line: 641, type: !402, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !630)
!630 = !{!631, !632, !633, !634, !635, !636}
!631 = !DILocalVariable(name: "x", arg: 1, scope: !629, file: !2, line: 642, type: !82)
!632 = !DILocalVariable(name: "y", arg: 2, scope: !629, file: !2, line: 643, type: !82)
!633 = !DILocalVariable(name: "real_sp", arg: 3, scope: !629, file: !2, line: 644, type: !66)
!634 = !DILocalVariable(name: "imag_sp", arg: 4, scope: !629, file: !2, line: 645, type: !66)
!635 = !DILocalVariable(name: "oms_x", scope: !629, file: !2, line: 648, type: !82)
!636 = !DILocalVariable(name: "oms_y", scope: !629, file: !2, line: 649, type: !82)
!637 = !DILocation(line: 0, scope: !629)
!638 = !DILocation(line: 648, column: 28, scope: !629)
!639 = !DILocation(line: 649, column: 28, scope: !629)
!640 = !DILocation(line: 650, column: 10, scope: !629)
!641 = !DILocation(line: 650, column: 3, scope: !629)
!642 = distinct !DISubprogram(name: "gsl_sf_dilog", scope: !2, file: !2, line: 659, type: !643, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!59, !82}
!645 = !{!646, !647, !648}
!646 = !DILocalVariable(name: "x", arg: 1, scope: !642, file: !2, line: 659, type: !82)
!647 = !DILocalVariable(name: "result", scope: !642, file: !2, line: 661, type: !67)
!648 = !DILocalVariable(name: "status", scope: !642, file: !2, line: 661, type: !21)
!649 = distinct !DIAssignID()
!650 = distinct !DIAssignID()
!651 = distinct !DIAssignID()
!652 = !DILocation(line: 0, scope: !642)
!653 = !DILocation(line: 661, column: 3, scope: !642)
!654 = !DILocation(line: 0, scope: !152, inlinedAt: !655)
!655 = distinct !DILocation(line: 661, column: 3, scope: !642)
!656 = !DILocation(line: 0, scope: !145, inlinedAt: !655)
!657 = !DILocation(line: 537, column: 8, scope: !153, inlinedAt: !655)
!658 = !DILocation(line: 537, column: 6, scope: !145, inlinedAt: !655)
!659 = !DILocation(line: 538, column: 12, scope: !164, inlinedAt: !655)
!660 = !DILocation(line: 538, column: 5, scope: !164, inlinedAt: !655)
!661 = !DILocation(line: 541, column: 5, scope: !152, inlinedAt: !655)
!662 = !DILocation(line: 542, column: 31, scope: !152, inlinedAt: !655)
!663 = !DILocation(line: 542, column: 19, scope: !152, inlinedAt: !655)
!664 = !DILocation(line: 543, column: 31, scope: !152, inlinedAt: !655)
!665 = !DILocation(line: 543, column: 19, scope: !152, inlinedAt: !655)
!666 = !DILocation(line: 544, column: 24, scope: !152, inlinedAt: !655)
!667 = !DILocation(line: 544, column: 39, scope: !152, inlinedAt: !655)
!668 = !DILocation(line: 544, column: 34, scope: !152, inlinedAt: !655)
!669 = !DILocation(line: 544, column: 28, scope: !152, inlinedAt: !655)
!670 = !DILocation(line: 544, column: 18, scope: !152, inlinedAt: !655)
!671 = distinct !DIAssignID()
!672 = distinct !DIAssignID()
!673 = !DILocation(line: 547, column: 12, scope: !152, inlinedAt: !655)
!674 = !DILocation(line: 548, column: 3, scope: !153, inlinedAt: !655)
!675 = !DILocation(line: 0, scope: !153, inlinedAt: !655)
!676 = !DILocation(line: 661, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !642, file: !2, line: 661, column: 3)
!678 = !DILocation(line: 661, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 661, column: 3)
!680 = distinct !DILexicalBlock(scope: !677, file: !2, line: 661, column: 3)
!681 = !DILocation(line: 662, column: 1, scope: !642)
!682 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !685, !685, !21, !21}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!687 = !DILocation(line: 0, scope: !63)
!688 = !DILocation(line: 0, scope: !96, inlinedAt: !689)
!689 = distinct !DILocation(line: 110, column: 23, scope: !63)
!690 = !DILocation(line: 76, column: 20, scope: !96, inlinedAt: !689)
!691 = !DILocation(line: 81, column: 8, scope: !105, inlinedAt: !689)
!692 = !DILocation(line: 82, column: 12, scope: !105, inlinedAt: !689)
!693 = !DILocation(line: 0, scope: !105, inlinedAt: !689)
!694 = !DILocation(line: 83, column: 9, scope: !105, inlinedAt: !689)
!695 = !DILocation(line: 85, column: 3, scope: !111, inlinedAt: !689)
!696 = !DILocation(line: 85, column: 10, scope: !110, inlinedAt: !689)
!697 = !DILocation(line: 88, column: 8, scope: !109, inlinedAt: !689)
!698 = !DILocation(line: 89, column: 15, scope: !109, inlinedAt: !689)
!699 = !DILocation(line: 89, column: 14, scope: !109, inlinedAt: !689)
!700 = !DILocation(line: 89, column: 20, scope: !109, inlinedAt: !689)
!701 = !DILocation(line: 89, column: 17, scope: !109, inlinedAt: !689)
!702 = !DILocation(line: 89, column: 12, scope: !109, inlinedAt: !689)
!703 = !DILocation(line: 0, scope: !109, inlinedAt: !689)
!704 = !DILocation(line: 90, column: 9, scope: !109, inlinedAt: !689)
!705 = !DILocation(line: 91, column: 15, scope: !706, inlinedAt: !689)
!706 = distinct !DILexicalBlock(scope: !109, file: !2, line: 91, column: 8)
!707 = !DILocation(line: 91, column: 8, scope: !706, inlinedAt: !689)
!708 = !DILocation(line: 91, column: 21, scope: !706, inlinedAt: !689)
!709 = distinct !{!709, !695, !710, !711}
!710 = !DILocation(line: 92, column: 3, scope: !111, inlinedAt: !689)
!711 = !{!"llvm.loop.mustprogress"}
!712 = !DILocation(line: 94, column: 15, scope: !96, inlinedAt: !689)
!713 = !DILocation(line: 95, column: 48, scope: !96, inlinedAt: !689)
!714 = !DILocation(line: 95, column: 46, scope: !96, inlinedAt: !689)
!715 = !DILocation(line: 95, column: 11, scope: !96, inlinedAt: !689)
!716 = !DILocation(line: 95, column: 15, scope: !96, inlinedAt: !689)
!717 = !DILocation(line: 112, column: 8, scope: !81)
!718 = !DILocation(line: 112, column: 6, scope: !63)
!719 = !DILocation(line: 113, column: 14, scope: !81)
!720 = !DILocation(line: 113, column: 21, scope: !81)
!721 = !DILocation(line: 113, column: 19, scope: !81)
!722 = !DILocation(line: 113, column: 32, scope: !81)
!723 = !DILocation(line: 126, column: 15, scope: !63)
!724 = !DILocation(line: 127, column: 15, scope: !63)
!725 = !DILocation(line: 113, column: 5, scope: !81)
!726 = !DILocation(line: 122, column: 38, scope: !80)
!727 = !DILocation(line: 122, column: 35, scope: !80)
!728 = !DILocation(line: 122, column: 30, scope: !80)
!729 = !DILocation(line: 122, column: 27, scope: !80)
!730 = !DILocation(line: 0, scope: !80)
!731 = !DILocation(line: 123, column: 49, scope: !80)
!732 = !DILocation(line: 123, column: 45, scope: !80)
!733 = !DILocation(line: 123, column: 40, scope: !80)
!734 = !DILocation(line: 123, column: 36, scope: !80)
!735 = !DILocation(line: 123, column: 31, scope: !80)
!736 = !DILocation(line: 123, column: 27, scope: !80)
!737 = !DILocation(line: 124, column: 12, scope: !80)
!738 = !DILocation(line: 124, column: 38, scope: !80)
!739 = !DILocation(line: 124, column: 35, scope: !80)
!740 = !DILocation(line: 124, column: 29, scope: !80)
!741 = !DILocation(line: 124, column: 26, scope: !80)
!742 = !DILocation(line: 124, column: 19, scope: !80)
!743 = !DILocation(line: 0, scope: !81)
!744 = !DILocation(line: 126, column: 22, scope: !63)
!745 = !DILocation(line: 127, column: 42, scope: !63)
!746 = !DILocation(line: 127, column: 40, scope: !63)
!747 = !DILocation(line: 128, column: 3, scope: !63)
!748 = distinct !DISubprogram(name: "dilog_series_1", scope: !2, file: !2, line: 38, type: !146, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756}
!750 = !DILocalVariable(name: "x", arg: 1, scope: !748, file: !2, line: 38, type: !82)
!751 = !DILocalVariable(name: "result", arg: 2, scope: !748, file: !2, line: 38, type: !66)
!752 = !DILocalVariable(name: "kmax", scope: !748, file: !2, line: 40, type: !77)
!753 = !DILocalVariable(name: "sum", scope: !748, file: !2, line: 41, type: !59)
!754 = !DILocalVariable(name: "term", scope: !748, file: !2, line: 42, type: !59)
!755 = !DILocalVariable(name: "k", scope: !748, file: !2, line: 43, type: !21)
!756 = !DILocalVariable(name: "rk", scope: !757, file: !2, line: 45, type: !82)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 44, column: 25)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 44, column: 3)
!759 = distinct !DILexicalBlock(scope: !748, file: !2, line: 44, column: 3)
!760 = !DILocation(line: 0, scope: !748)
!761 = !DILocation(line: 44, column: 3, scope: !759)
!762 = !DILocation(line: 45, column: 24, scope: !757)
!763 = !DILocation(line: 45, column: 25, scope: !757)
!764 = !DILocation(line: 45, column: 30, scope: !757)
!765 = !DILocation(line: 0, scope: !757)
!766 = !DILocation(line: 46, column: 10, scope: !757)
!767 = !DILocation(line: 47, column: 15, scope: !757)
!768 = !DILocation(line: 47, column: 10, scope: !757)
!769 = !DILocation(line: 48, column: 9, scope: !757)
!770 = !DILocation(line: 49, column: 17, scope: !771)
!771 = distinct !DILexicalBlock(scope: !757, file: !2, line: 49, column: 8)
!772 = !DILocation(line: 49, column: 8, scope: !771)
!773 = !DILocation(line: 49, column: 23, scope: !771)
!774 = !DILocation(line: 44, column: 21, scope: !758)
!775 = !DILocation(line: 44, column: 13, scope: !758)
!776 = distinct !{!776, !761, !777, !711}
!777 = !DILocation(line: 50, column: 3, scope: !759)
!778 = !DILocation(line: 44, scope: !759)
!779 = !DILocation(line: 52, column: 16, scope: !748)
!780 = !DILocation(line: 53, column: 24, scope: !748)
!781 = !DILocation(line: 53, column: 22, scope: !748)
!782 = !DILocation(line: 53, column: 11, scope: !748)
!783 = !DILocation(line: 54, column: 42, scope: !748)
!784 = !DILocation(line: 54, column: 40, scope: !748)
!785 = !DILocation(line: 54, column: 15, scope: !748)
!786 = !DILocation(line: 56, column: 8, scope: !787)
!787 = distinct !DILexicalBlock(scope: !748, file: !2, line: 56, column: 6)
!788 = !DILocation(line: 56, column: 6, scope: !748)
!789 = !DILocation(line: 57, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !787, file: !2, line: 57, column: 5)
!791 = !DILocation(line: 0, scope: !787)
!792 = !DILocation(line: 60, column: 1, scope: !748)
!793 = !DISubprogram(name: "hypot", scope: !550, file: !550, line: 147, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = distinct !DISubprogram(name: "dilogc_fundamental", scope: !2, file: !2, line: 468, type: !795, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!21, !59, !59, !59, !66, !66}
!797 = !{!798, !799, !800, !801, !802}
!798 = !DILocalVariable(name: "r", arg: 1, scope: !794, file: !2, line: 468, type: !59)
!799 = !DILocalVariable(name: "x", arg: 2, scope: !794, file: !2, line: 468, type: !59)
!800 = !DILocalVariable(name: "y", arg: 3, scope: !794, file: !2, line: 468, type: !59)
!801 = !DILocalVariable(name: "real_dl", arg: 4, scope: !794, file: !2, line: 468, type: !66)
!802 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !794, file: !2, line: 468, type: !66)
!803 = distinct !DIAssignID()
!804 = distinct !DIAssignID()
!805 = distinct !DIAssignID()
!806 = !DILocation(line: 0, scope: !794)
!807 = !DILocation(line: 470, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !794, file: !2, line: 470, column: 6)
!809 = !DILocation(line: 470, column: 6, scope: !794)
!810 = !DILocalVariable(name: "Him0", scope: !811, file: !2, line: 407, type: !67)
!811 = distinct !DISubprogram(name: "dilogc_series_3", scope: !2, file: !2, line: 389, type: !812, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!21, !82, !82, !82, !66, !66}
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !830, !831, !832, !833, !834, !810, !835, !836}
!815 = !DILocalVariable(name: "r", arg: 1, scope: !811, file: !2, line: 390, type: !82)
!816 = !DILocalVariable(name: "x", arg: 2, scope: !811, file: !2, line: 391, type: !82)
!817 = !DILocalVariable(name: "y", arg: 3, scope: !811, file: !2, line: 392, type: !82)
!818 = !DILocalVariable(name: "real_result", arg: 4, scope: !811, file: !2, line: 393, type: !66)
!819 = !DILocalVariable(name: "imag_result", arg: 5, scope: !811, file: !2, line: 394, type: !66)
!820 = !DILocalVariable(name: "theta", scope: !811, file: !2, line: 397, type: !82)
!821 = !DILocalVariable(name: "cos_theta", scope: !811, file: !2, line: 398, type: !82)
!822 = !DILocalVariable(name: "sin_theta", scope: !811, file: !2, line: 399, type: !82)
!823 = !DILocalVariable(name: "a", scope: !811, file: !2, line: 400, type: !82)
!824 = !DILocalVariable(name: "omc", scope: !811, file: !2, line: 401, type: !82)
!825 = !DILocalVariable(name: "omc2", scope: !811, file: !2, line: 402, type: !82)
!826 = !DILocalVariable(name: "H_re", scope: !811, file: !2, line: 403, type: !827)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 448, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 7)
!830 = !DILocalVariable(name: "H_im", scope: !811, file: !2, line: 404, type: !827)
!831 = !DILocalVariable(name: "an", scope: !811, file: !2, line: 405, type: !59)
!832 = !DILocalVariable(name: "nfact", scope: !811, file: !2, line: 405, type: !59)
!833 = !DILocalVariable(name: "sum_re", scope: !811, file: !2, line: 406, type: !59)
!834 = !DILocalVariable(name: "sum_im", scope: !811, file: !2, line: 406, type: !59)
!835 = !DILocalVariable(name: "n", scope: !811, file: !2, line: 408, type: !21)
!836 = !DILocalVariable(name: "t", scope: !837, file: !2, line: 437, type: !59)
!837 = distinct !DILexicalBlock(scope: !838, file: !2, line: 436, column: 23)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 436, column: 3)
!839 = distinct !DILexicalBlock(scope: !811, file: !2, line: 436, column: 3)
!840 = !DILocation(line: 0, scope: !811, inlinedAt: !841)
!841 = distinct !DILocation(line: 471, column: 12, scope: !808)
!842 = !DILocation(line: 397, column: 24, scope: !811, inlinedAt: !841)
!843 = !DILocation(line: 398, column: 29, scope: !811, inlinedAt: !841)
!844 = !DILocation(line: 399, column: 29, scope: !811, inlinedAt: !841)
!845 = !DILocation(line: 400, column: 20, scope: !811, inlinedAt: !841)
!846 = !DILocation(line: 401, column: 26, scope: !811, inlinedAt: !841)
!847 = !DILocation(line: 402, column: 26, scope: !811, inlinedAt: !841)
!848 = !DILocation(line: 407, column: 3, scope: !811, inlinedAt: !841)
!849 = !DILocation(line: 410, column: 40, scope: !811, inlinedAt: !841)
!850 = !DILocation(line: 410, column: 58, scope: !811, inlinedAt: !841)
!851 = !DILocation(line: 410, column: 57, scope: !811, inlinedAt: !841)
!852 = !DILocation(line: 410, column: 47, scope: !811, inlinedAt: !841)
!853 = !DILocation(line: 410, column: 33, scope: !811, inlinedAt: !841)
!854 = !DILocation(line: 410, column: 27, scope: !811, inlinedAt: !841)
!855 = !DILocation(line: 411, column: 3, scope: !811, inlinedAt: !841)
!856 = !DILocation(line: 412, column: 18, scope: !811, inlinedAt: !841)
!857 = !DILocation(line: 414, column: 25, scope: !811, inlinedAt: !841)
!858 = !DILocation(line: 414, column: 18, scope: !811, inlinedAt: !841)
!859 = !DILocation(line: 414, column: 17, scope: !811, inlinedAt: !841)
!860 = !DILocation(line: 415, column: 20, scope: !811, inlinedAt: !841)
!861 = !DILocation(line: 415, column: 14, scope: !811, inlinedAt: !841)
!862 = !DILocation(line: 418, column: 17, scope: !811, inlinedAt: !841)
!863 = !DILocation(line: 418, column: 28, scope: !811, inlinedAt: !841)
!864 = !DILocation(line: 420, column: 17, scope: !811, inlinedAt: !841)
!865 = !DILocation(line: 424, column: 27, scope: !811, inlinedAt: !841)
!866 = !DILocation(line: 426, column: 24, scope: !811, inlinedAt: !841)
!867 = !DILocation(line: 426, column: 17, scope: !811, inlinedAt: !841)
!868 = !DILocation(line: 426, column: 36, scope: !811, inlinedAt: !841)
!869 = !DILocation(line: 430, column: 34, scope: !811, inlinedAt: !841)
!870 = !DILocation(line: 430, column: 39, scope: !811, inlinedAt: !841)
!871 = !DILocation(line: 430, column: 28, scope: !811, inlinedAt: !841)
!872 = !DILocation(line: 430, column: 51, scope: !811, inlinedAt: !841)
!873 = !DILocation(line: 430, column: 67, scope: !811, inlinedAt: !841)
!874 = !DILocation(line: 430, column: 83, scope: !811, inlinedAt: !841)
!875 = !DILocation(line: 430, column: 77, scope: !811, inlinedAt: !841)
!876 = !DILocation(line: 430, column: 56, scope: !811, inlinedAt: !841)
!877 = !DILocation(line: 430, column: 45, scope: !811, inlinedAt: !841)
!878 = !DILocation(line: 0, scope: !837, inlinedAt: !841)
!879 = !DILocation(line: 441, column: 17, scope: !837, inlinedAt: !841)
!880 = !DILocation(line: 441, column: 12, scope: !837, inlinedAt: !841)
!881 = !DILocation(line: 442, column: 12, scope: !837, inlinedAt: !841)
!882 = !DILocation(line: 438, column: 8, scope: !837, inlinedAt: !841)
!883 = !DILocation(line: 440, column: 11, scope: !837, inlinedAt: !841)
!884 = !DILocation(line: 442, column: 17, scope: !837, inlinedAt: !841)
!885 = !DILocation(line: 445, column: 20, scope: !811, inlinedAt: !841)
!886 = !DILocation(line: 446, column: 52, scope: !811, inlinedAt: !841)
!887 = !DILocation(line: 446, column: 50, scope: !811, inlinedAt: !841)
!888 = !DILocation(line: 446, column: 67, scope: !811, inlinedAt: !841)
!889 = !DILocation(line: 446, column: 65, scope: !811, inlinedAt: !841)
!890 = !DILocation(line: 446, column: 16, scope: !811, inlinedAt: !841)
!891 = !DILocation(line: 446, column: 20, scope: !811, inlinedAt: !841)
!892 = !DILocation(line: 447, column: 20, scope: !811, inlinedAt: !841)
!893 = !DILocation(line: 448, column: 52, scope: !811, inlinedAt: !841)
!894 = !DILocation(line: 448, column: 50, scope: !811, inlinedAt: !841)
!895 = !DILocation(line: 448, column: 72, scope: !811, inlinedAt: !841)
!896 = !DILocation(line: 448, column: 65, scope: !811, inlinedAt: !841)
!897 = !DILocation(line: 448, column: 76, scope: !811, inlinedAt: !841)
!898 = !DILocation(line: 448, column: 16, scope: !811, inlinedAt: !841)
!899 = !DILocation(line: 448, column: 20, scope: !811, inlinedAt: !841)
!900 = !DILocation(line: 451, column: 1, scope: !811, inlinedAt: !841)
!901 = !DILocation(line: 471, column: 5, scope: !808)
!902 = !DILocation(line: 472, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !808, file: !2, line: 472, column: 11)
!904 = !DILocation(line: 472, column: 11, scope: !808)
!905 = !DILocalVariable(name: "ln_omz_r", scope: !906, file: !2, line: 351, type: !67)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 345, column: 3)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 336, column: 6)
!908 = distinct !DISubprogram(name: "dilogc_series_2", scope: !2, file: !2, line: 328, type: !812, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !905, !918, !919, !920, !921, !922, !923}
!910 = !DILocalVariable(name: "r", arg: 1, scope: !908, file: !2, line: 329, type: !82)
!911 = !DILocalVariable(name: "x", arg: 2, scope: !908, file: !2, line: 330, type: !82)
!912 = !DILocalVariable(name: "y", arg: 3, scope: !908, file: !2, line: 331, type: !82)
!913 = !DILocalVariable(name: "real_dl", arg: 4, scope: !908, file: !2, line: 332, type: !66)
!914 = !DILocalVariable(name: "imag_dl", arg: 5, scope: !908, file: !2, line: 333, type: !66)
!915 = !DILocalVariable(name: "sum_re", scope: !906, file: !2, line: 346, type: !67)
!916 = !DILocalVariable(name: "sum_im", scope: !906, file: !2, line: 347, type: !67)
!917 = !DILocalVariable(name: "stat_s3", scope: !906, file: !2, line: 348, type: !77)
!918 = !DILocalVariable(name: "ln_omz_theta", scope: !906, file: !2, line: 352, type: !67)
!919 = !DILocalVariable(name: "stat_log", scope: !906, file: !2, line: 353, type: !77)
!920 = !DILocalVariable(name: "t_x", scope: !906, file: !2, line: 354, type: !82)
!921 = !DILocalVariable(name: "t_y", scope: !906, file: !2, line: 355, type: !82)
!922 = !DILocalVariable(name: "r_x", scope: !906, file: !2, line: 358, type: !82)
!923 = !DILocalVariable(name: "r_y", scope: !906, file: !2, line: 359, type: !82)
!924 = !DILocation(line: 0, scope: !906, inlinedAt: !925)
!925 = distinct !DILocation(line: 473, column: 12, scope: !903)
!926 = !DILocation(line: 0, scope: !908, inlinedAt: !925)
!927 = !DILocation(line: 336, column: 8, scope: !907, inlinedAt: !925)
!928 = !DILocation(line: 336, column: 6, scope: !908, inlinedAt: !925)
!929 = !DILocation(line: 338, column: 18, scope: !930, inlinedAt: !925)
!930 = distinct !DILexicalBlock(scope: !907, file: !2, line: 337, column: 3)
!931 = !DILocation(line: 339, column: 18, scope: !930, inlinedAt: !925)
!932 = !DILocation(line: 340, column: 14, scope: !930, inlinedAt: !925)
!933 = !DILocation(line: 340, column: 18, scope: !930, inlinedAt: !925)
!934 = !DILocation(line: 341, column: 14, scope: !930, inlinedAt: !925)
!935 = !DILocation(line: 341, column: 18, scope: !930, inlinedAt: !925)
!936 = !DILocation(line: 342, column: 5, scope: !930, inlinedAt: !925)
!937 = !DILocalVariable(name: "r", arg: 1, scope: !938, file: !2, line: 277, type: !59)
!938 = distinct !DISubprogram(name: "series_2_c", scope: !2, file: !2, line: 276, type: !795, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !939)
!939 = !{!937, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !959, !960}
!940 = !DILocalVariable(name: "x", arg: 2, scope: !938, file: !2, line: 278, type: !59)
!941 = !DILocalVariable(name: "y", arg: 3, scope: !938, file: !2, line: 279, type: !59)
!942 = !DILocalVariable(name: "sum_re", arg: 4, scope: !938, file: !2, line: 280, type: !66)
!943 = !DILocalVariable(name: "sum_im", arg: 5, scope: !938, file: !2, line: 281, type: !66)
!944 = !DILocalVariable(name: "cos_theta", scope: !938, file: !2, line: 284, type: !82)
!945 = !DILocalVariable(name: "sin_theta", scope: !938, file: !2, line: 285, type: !82)
!946 = !DILocalVariable(name: "alpha", scope: !938, file: !2, line: 286, type: !82)
!947 = !DILocalVariable(name: "beta", scope: !938, file: !2, line: 287, type: !82)
!948 = !DILocalVariable(name: "ck", scope: !938, file: !2, line: 288, type: !59)
!949 = !DILocalVariable(name: "sk", scope: !938, file: !2, line: 289, type: !59)
!950 = !DILocalVariable(name: "rk", scope: !938, file: !2, line: 290, type: !59)
!951 = !DILocalVariable(name: "real_sum", scope: !938, file: !2, line: 291, type: !59)
!952 = !DILocalVariable(name: "imag_sum", scope: !938, file: !2, line: 292, type: !59)
!953 = !DILocalVariable(name: "kmax", scope: !938, file: !2, line: 293, type: !77)
!954 = !DILocalVariable(name: "k", scope: !938, file: !2, line: 294, type: !21)
!955 = !DILocalVariable(name: "dr", scope: !956, file: !2, line: 297, type: !59)
!956 = distinct !DILexicalBlock(scope: !957, file: !2, line: 296, column: 3)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 295, column: 3)
!958 = distinct !DILexicalBlock(scope: !938, file: !2, line: 295, column: 3)
!959 = !DILocalVariable(name: "di", scope: !956, file: !2, line: 297, type: !59)
!960 = !DILocalVariable(name: "ck_tmp", scope: !956, file: !2, line: 298, type: !82)
!961 = !DILocation(line: 0, scope: !938, inlinedAt: !962)
!962 = distinct !DILocation(line: 348, column: 25, scope: !906, inlinedAt: !925)
!963 = !DILocation(line: 284, column: 29, scope: !938, inlinedAt: !962)
!964 = !DILocation(line: 285, column: 29, scope: !938, inlinedAt: !962)
!965 = !DILocation(line: 286, column: 28, scope: !938, inlinedAt: !962)
!966 = !DILocation(line: 291, column: 25, scope: !938, inlinedAt: !962)
!967 = !DILocation(line: 291, column: 28, scope: !938, inlinedAt: !962)
!968 = !DILocation(line: 292, column: 28, scope: !938, inlinedAt: !962)
!969 = !DILocation(line: 293, column: 38, scope: !938, inlinedAt: !962)
!970 = !DILocation(line: 293, column: 35, scope: !938, inlinedAt: !962)
!971 = !DILocation(line: 293, column: 25, scope: !938, inlinedAt: !962)
!972 = !DILocation(line: 293, column: 23, scope: !938, inlinedAt: !962)
!973 = !DILocation(line: 295, column: 13, scope: !957, inlinedAt: !962)
!974 = !DILocation(line: 295, column: 3, scope: !958, inlinedAt: !962)
!975 = !DILocation(line: 0, scope: !956, inlinedAt: !962)
!976 = !DILocation(line: 299, column: 21, scope: !956, inlinedAt: !962)
!977 = !DILocation(line: 299, column: 31, scope: !956, inlinedAt: !962)
!978 = !DILocation(line: 299, column: 25, scope: !956, inlinedAt: !962)
!979 = !DILocation(line: 299, column: 13, scope: !956, inlinedAt: !962)
!980 = !DILocation(line: 300, column: 21, scope: !956, inlinedAt: !962)
!981 = !DILocation(line: 300, column: 31, scope: !956, inlinedAt: !962)
!982 = !DILocation(line: 300, column: 25, scope: !956, inlinedAt: !962)
!983 = !DILocation(line: 300, column: 13, scope: !956, inlinedAt: !962)
!984 = !DILocation(line: 301, column: 8, scope: !956, inlinedAt: !962)
!985 = !DILocation(line: 302, column: 14, scope: !956, inlinedAt: !962)
!986 = !DILocation(line: 302, column: 23, scope: !956, inlinedAt: !962)
!987 = !DILocation(line: 302, column: 28, scope: !956, inlinedAt: !962)
!988 = !DILocation(line: 302, column: 25, scope: !956, inlinedAt: !962)
!989 = !DILocation(line: 302, column: 12, scope: !956, inlinedAt: !962)
!990 = !DILocation(line: 302, column: 35, scope: !956, inlinedAt: !962)
!991 = !DILocation(line: 303, column: 35, scope: !956, inlinedAt: !962)
!992 = !DILocation(line: 304, column: 14, scope: !956, inlinedAt: !962)
!993 = !DILocation(line: 305, column: 14, scope: !956, inlinedAt: !962)
!994 = !DILocation(line: 306, column: 16, scope: !995, inlinedAt: !962)
!995 = distinct !DILexicalBlock(scope: !956, file: !2, line: 306, column: 8)
!996 = !DILocation(line: 306, column: 24, scope: !995, inlinedAt: !962)
!997 = !DILocation(line: 306, column: 20, scope: !995, inlinedAt: !962)
!998 = !DILocation(line: 306, column: 38, scope: !995, inlinedAt: !962)
!999 = !DILocation(line: 306, column: 58, scope: !995, inlinedAt: !962)
!1000 = !DILocation(line: 306, column: 48, scope: !995, inlinedAt: !962)
!1001 = !DILocation(line: 306, column: 28, scope: !995, inlinedAt: !962)
!1002 = !DILocation(line: 306, column: 8, scope: !995, inlinedAt: !962)
!1003 = !DILocation(line: 306, column: 70, scope: !995, inlinedAt: !962)
!1004 = distinct !{!1004, !974, !1005, !711}
!1005 = !DILocation(line: 307, column: 3, scope: !958, inlinedAt: !962)
!1006 = !DILocation(line: 310, column: 23, scope: !938, inlinedAt: !962)
!1007 = !DILocation(line: 310, column: 21, scope: !938, inlinedAt: !962)
!1008 = !DILocation(line: 310, column: 28, scope: !938, inlinedAt: !962)
!1009 = !DILocation(line: 310, column: 48, scope: !938, inlinedAt: !962)
!1010 = !DILocation(line: 310, column: 46, scope: !938, inlinedAt: !962)
!1011 = !DILocation(line: 312, column: 48, scope: !938, inlinedAt: !962)
!1012 = !DILocation(line: 312, column: 46, scope: !938, inlinedAt: !962)
!1013 = !DILocation(line: 351, column: 5, scope: !906, inlinedAt: !925)
!1014 = !DILocation(line: 352, column: 5, scope: !906, inlinedAt: !925)
!1015 = !DILocation(line: 353, column: 50, scope: !906, inlinedAt: !925)
!1016 = !DILocation(line: 353, column: 54, scope: !906, inlinedAt: !925)
!1017 = !DILocation(line: 353, column: 26, scope: !906, inlinedAt: !925)
!1018 = !DILocation(line: 354, column: 35, scope: !906, inlinedAt: !925)
!1019 = !DILocation(line: 354, column: 39, scope: !906, inlinedAt: !925)
!1020 = !DILocation(line: 354, column: 58, scope: !906, inlinedAt: !925)
!1021 = !DILocation(line: 354, column: 62, scope: !906, inlinedAt: !925)
!1022 = !DILocation(line: 354, column: 43, scope: !906, inlinedAt: !925)
!1023 = !DILocation(line: 354, column: 69, scope: !906, inlinedAt: !925)
!1024 = !DILocation(line: 354, column: 66, scope: !906, inlinedAt: !925)
!1025 = !DILocation(line: 355, column: 62, scope: !906, inlinedAt: !925)
!1026 = !DILocation(line: 355, column: 43, scope: !906, inlinedAt: !925)
!1027 = !DILocation(line: 355, column: 66, scope: !906, inlinedAt: !925)
!1028 = !DILocation(line: 358, column: 34, scope: !906, inlinedAt: !925)
!1029 = !DILocation(line: 358, column: 44, scope: !906, inlinedAt: !925)
!1030 = !DILocation(line: 358, column: 40, scope: !906, inlinedAt: !925)
!1031 = !DILocation(line: 359, column: 34, scope: !906, inlinedAt: !925)
!1032 = !DILocation(line: 359, column: 44, scope: !906, inlinedAt: !925)
!1033 = !DILocation(line: 359, column: 40, scope: !906, inlinedAt: !925)
!1034 = !DILocation(line: 361, column: 31, scope: !906, inlinedAt: !925)
!1035 = !DILocation(line: 361, column: 37, scope: !906, inlinedAt: !925)
!1036 = !DILocation(line: 361, column: 18, scope: !906, inlinedAt: !925)
!1037 = !DILocation(line: 362, column: 31, scope: !906, inlinedAt: !925)
!1038 = !DILocation(line: 362, column: 18, scope: !906, inlinedAt: !925)
!1039 = !DILocation(line: 363, column: 68, scope: !906, inlinedAt: !925)
!1040 = !DILocation(line: 363, column: 54, scope: !906, inlinedAt: !925)
!1041 = !DILocation(line: 363, column: 75, scope: !906, inlinedAt: !925)
!1042 = !DILocation(line: 363, column: 73, scope: !906, inlinedAt: !925)
!1043 = !DILocation(line: 363, column: 52, scope: !906, inlinedAt: !925)
!1044 = !DILocation(line: 363, column: 31, scope: !906, inlinedAt: !925)
!1045 = !DILocation(line: 363, column: 14, scope: !906, inlinedAt: !925)
!1046 = !DILocation(line: 363, column: 18, scope: !906, inlinedAt: !925)
!1047 = !DILocation(line: 364, column: 54, scope: !906, inlinedAt: !925)
!1048 = !DILocation(line: 364, column: 75, scope: !906, inlinedAt: !925)
!1049 = !DILocation(line: 364, column: 73, scope: !906, inlinedAt: !925)
!1050 = !DILocation(line: 364, column: 52, scope: !906, inlinedAt: !925)
!1051 = !DILocation(line: 364, column: 31, scope: !906, inlinedAt: !925)
!1052 = !DILocation(line: 364, column: 14, scope: !906, inlinedAt: !925)
!1053 = !DILocation(line: 364, column: 18, scope: !906, inlinedAt: !925)
!1054 = !DILocation(line: 366, column: 3, scope: !907, inlinedAt: !925)
!1055 = !DILocalVariable(name: "r", arg: 1, scope: !1056, file: !2, line: 227, type: !82)
!1056 = distinct !DISubprogram(name: "dilogc_series_1", scope: !2, file: !2, line: 226, type: !812, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1057)
!1057 = !{!1055, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1077, !1078}
!1058 = !DILocalVariable(name: "x", arg: 2, scope: !1056, file: !2, line: 228, type: !82)
!1059 = !DILocalVariable(name: "y", arg: 3, scope: !1056, file: !2, line: 229, type: !82)
!1060 = !DILocalVariable(name: "real_result", arg: 4, scope: !1056, file: !2, line: 230, type: !66)
!1061 = !DILocalVariable(name: "imag_result", arg: 5, scope: !1056, file: !2, line: 231, type: !66)
!1062 = !DILocalVariable(name: "cos_theta", scope: !1056, file: !2, line: 234, type: !82)
!1063 = !DILocalVariable(name: "sin_theta", scope: !1056, file: !2, line: 235, type: !82)
!1064 = !DILocalVariable(name: "alpha", scope: !1056, file: !2, line: 236, type: !82)
!1065 = !DILocalVariable(name: "beta", scope: !1056, file: !2, line: 237, type: !82)
!1066 = !DILocalVariable(name: "ck", scope: !1056, file: !2, line: 238, type: !59)
!1067 = !DILocalVariable(name: "sk", scope: !1056, file: !2, line: 239, type: !59)
!1068 = !DILocalVariable(name: "rk", scope: !1056, file: !2, line: 240, type: !59)
!1069 = !DILocalVariable(name: "real_sum", scope: !1056, file: !2, line: 241, type: !59)
!1070 = !DILocalVariable(name: "imag_sum", scope: !1056, file: !2, line: 242, type: !59)
!1071 = !DILocalVariable(name: "kmax", scope: !1056, file: !2, line: 243, type: !77)
!1072 = !DILocalVariable(name: "k", scope: !1056, file: !2, line: 244, type: !21)
!1073 = !DILocalVariable(name: "dr", scope: !1074, file: !2, line: 246, type: !59)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 245, column: 25)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 245, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 245, column: 3)
!1077 = !DILocalVariable(name: "di", scope: !1074, file: !2, line: 246, type: !59)
!1078 = !DILocalVariable(name: "ck_tmp", scope: !1074, file: !2, line: 247, type: !59)
!1079 = !DILocation(line: 0, scope: !1056, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 475, column: 12, scope: !903)
!1081 = !DILocation(line: 234, column: 29, scope: !1056, inlinedAt: !1080)
!1082 = !DILocation(line: 235, column: 29, scope: !1056, inlinedAt: !1080)
!1083 = !DILocation(line: 236, column: 28, scope: !1056, inlinedAt: !1080)
!1084 = !DILocation(line: 241, column: 22, scope: !1056, inlinedAt: !1080)
!1085 = !DILocation(line: 242, column: 22, scope: !1056, inlinedAt: !1080)
!1086 = !DILocation(line: 243, column: 38, scope: !1056, inlinedAt: !1080)
!1087 = !DILocation(line: 243, column: 35, scope: !1056, inlinedAt: !1080)
!1088 = !DILocation(line: 243, column: 25, scope: !1056, inlinedAt: !1080)
!1089 = !DILocation(line: 243, column: 23, scope: !1056, inlinedAt: !1080)
!1090 = !DILocation(line: 245, column: 13, scope: !1075, inlinedAt: !1080)
!1091 = !DILocation(line: 245, column: 3, scope: !1076, inlinedAt: !1080)
!1092 = !DILocation(line: 0, scope: !1074, inlinedAt: !1080)
!1093 = !DILocation(line: 248, column: 21, scope: !1074, inlinedAt: !1080)
!1094 = !DILocation(line: 248, column: 31, scope: !1074, inlinedAt: !1080)
!1095 = !DILocation(line: 248, column: 25, scope: !1074, inlinedAt: !1080)
!1096 = !DILocation(line: 248, column: 13, scope: !1074, inlinedAt: !1080)
!1097 = !DILocation(line: 249, column: 21, scope: !1074, inlinedAt: !1080)
!1098 = !DILocation(line: 249, column: 31, scope: !1074, inlinedAt: !1080)
!1099 = !DILocation(line: 249, column: 25, scope: !1074, inlinedAt: !1080)
!1100 = !DILocation(line: 249, column: 13, scope: !1074, inlinedAt: !1080)
!1101 = !DILocation(line: 250, column: 8, scope: !1074, inlinedAt: !1080)
!1102 = !DILocation(line: 251, column: 14, scope: !1074, inlinedAt: !1080)
!1103 = !DILocation(line: 251, column: 23, scope: !1074, inlinedAt: !1080)
!1104 = !DILocation(line: 251, column: 12, scope: !1074, inlinedAt: !1080)
!1105 = !DILocation(line: 251, column: 27, scope: !1074, inlinedAt: !1080)
!1106 = !DILocation(line: 252, column: 27, scope: !1074, inlinedAt: !1080)
!1107 = !DILocation(line: 253, column: 14, scope: !1074, inlinedAt: !1080)
!1108 = !DILocation(line: 254, column: 14, scope: !1074, inlinedAt: !1080)
!1109 = !DILocation(line: 255, column: 16, scope: !1110, inlinedAt: !1080)
!1110 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 255, column: 8)
!1111 = !DILocation(line: 255, column: 24, scope: !1110, inlinedAt: !1080)
!1112 = !DILocation(line: 255, column: 20, scope: !1110, inlinedAt: !1080)
!1113 = !DILocation(line: 255, column: 38, scope: !1110, inlinedAt: !1080)
!1114 = !DILocation(line: 255, column: 58, scope: !1110, inlinedAt: !1080)
!1115 = !DILocation(line: 255, column: 48, scope: !1110, inlinedAt: !1080)
!1116 = !DILocation(line: 255, column: 28, scope: !1110, inlinedAt: !1080)
!1117 = !DILocation(line: 255, column: 8, scope: !1110, inlinedAt: !1080)
!1118 = !DILocation(line: 255, column: 70, scope: !1110, inlinedAt: !1080)
!1119 = distinct !{!1119, !1091, !1120, !711}
!1120 = !DILocation(line: 256, column: 3, scope: !1076, inlinedAt: !1080)
!1121 = !DILocation(line: 258, column: 20, scope: !1056, inlinedAt: !1080)
!1122 = !DILocation(line: 259, column: 28, scope: !1056, inlinedAt: !1080)
!1123 = !DILocation(line: 259, column: 26, scope: !1056, inlinedAt: !1080)
!1124 = !DILocation(line: 259, column: 33, scope: !1056, inlinedAt: !1080)
!1125 = !DILocation(line: 259, column: 53, scope: !1056, inlinedAt: !1080)
!1126 = !DILocation(line: 259, column: 51, scope: !1056, inlinedAt: !1080)
!1127 = !DILocation(line: 259, column: 16, scope: !1056, inlinedAt: !1080)
!1128 = !DILocation(line: 259, column: 20, scope: !1056, inlinedAt: !1080)
!1129 = !DILocation(line: 260, column: 20, scope: !1056, inlinedAt: !1080)
!1130 = !DILocation(line: 261, column: 53, scope: !1056, inlinedAt: !1080)
!1131 = !DILocation(line: 261, column: 51, scope: !1056, inlinedAt: !1080)
!1132 = !DILocation(line: 261, column: 16, scope: !1056, inlinedAt: !1080)
!1133 = !DILocation(line: 261, column: 20, scope: !1056, inlinedAt: !1080)
!1134 = !DILocation(line: 475, column: 5, scope: !903)
!1135 = !DILocation(line: 0, scope: !808)
!1136 = !DILocation(line: 476, column: 1, scope: !794)
!1137 = !DISubprogram(name: "gsl_sf_complex_log_e", scope: !1138, file: !1138, line: 62, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
