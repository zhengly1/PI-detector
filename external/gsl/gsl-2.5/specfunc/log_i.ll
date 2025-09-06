; ModuleID = 'log.ll'
source_filename = "log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"log.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [25 x i8] c"gsl_sf_log_e(x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_log_abs_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [32 x i8] c"gsl_sf_log_1plusx_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_log_1plusx_mx_e(x, &result)\00", align 1, !dbg !27
@lopx_data = internal unnamed_addr constant [21 x double] [double 0x400154F2FF74064B, double 0xBFD24827A76F5655, double 0x3F8F1578BA172797, double 0xBF6066D4F46F9C1B, double 0x3F292E448F91A693, double 0xBEFAC5DA2570740B, double 0x3EC854ABF2478DF1, double 0xBE9A1678662CBAB6, double 0x3E69A1D75B785524, double 0xBE3BB4110B46F7FB, double 0x3E0C6EF0DB053944, double 0xBDDEF3DF3B59CD2E, double 0x3DB052607B1FF7DC, double 0xBD81E193293BDE47, double 0x3D533459E4FAFCAF, double 0xBD25282240EEAE5E, double 0x3CF704469B786A68, double 0xBCC97AF78DD66016, double 0x3C9BFBF5AEA7147A, double 0xBC6F1CA5B981D327, double 0x3C413556459573FA], align 16, !dbg !32
@lopxmx_data = internal unnamed_addr constant [20 x double] [double 0xBFF1EFA01F2185C3, double 0x3FC9074757AD1436, double 0xBF8E0DC5808E6080, double 0x3F5B4EFE163C1CBE, double 0xBF284E1E2A0C3A2C, double 0x3EF7E8BDE99BFB11, double 0xBEC783AA6FE8A397, double 0x3E981DDB03754A22, double 0xBE68D36EB4473126, double 0x3E3A1F850BD62A1E, double 0xBE0B9AC404474E93, double 0x3DDD8DD9608B4CCD, double 0xBDAFC3FCB2FFEE47, double 0x3D8137A736D0474D, double 0xBD52BA6E42B95CAC, double 0x3D247E2C285B7015, double 0xBCF67D66BB2CAB8A, double 0x3CC8C9F2503F956B, double 0xBC9B6447F503A1C6, double 0x3C6E5E46887B99D5], align 16, !dbg !91

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !107 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !119, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !120, metadata !DIExpression()), !dbg !121
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !122
  br i1 %3, label %6, label %4, !dbg !124

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !125, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !125
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !125, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #5, !dbg !134
  br label %10, !dbg !134

6:                                                ; preds = %2
  %handler_result = call double @callHandler(i32 12, double %0, double %0), !dbg !136
  store double %handler_result, ptr %1, align 8, !dbg !136, !tbaa !128
  %7 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !138
  %8 = fmul double %7, 0x3CC0000000000000, !dbg !139
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !140
  store double %8, ptr %9, align 8, !dbg !141, !tbaa !133
  br label %10, !dbg !142

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 1, %4 ], [ 0, %6 ], !dbg !143
  ret i32 %11, !dbg !144
}

declare !dbg !145 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !150 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_abs_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !154 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !156, metadata !DIExpression()), !dbg !158
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !157, metadata !DIExpression()), !dbg !158
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !159
  br i1 %3, label %4, label %6, !dbg !161

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !162, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !162
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !162, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 1) #5, !dbg !165
  br label %11, !dbg !165

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !167
  %handler_result = call double @callHandler(i32 12, double %7, double %7), !dbg !169
  store double %handler_result, ptr %1, align 8, !dbg !169, !tbaa !128
  %8 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !170
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !171
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !172
  store double %9, ptr %10, align 8, !dbg !173, !tbaa !133
  br label %11, !dbg !174

11:                                               ; preds = %6, %4
  %12 = phi i32 [ 1, %4 ], [ 0, %6 ], !dbg !175
  ret i32 %12, !dbg !176
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_log_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !177 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !181, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %1, metadata !182, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !183, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !184, metadata !DIExpression()), !dbg !191
  %5 = fcmp une double %0, 0.000000e+00, !dbg !192
  %6 = fcmp une double %1, 0.000000e+00
  %7 = or i1 %5, %6, !dbg !193
  br i1 %7, label %8, label %26, !dbg !193

8:                                                ; preds = %4
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !194
  tail call void @llvm.dbg.value(metadata double %9, metadata !185, metadata !DIExpression()), !dbg !195
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !196
  tail call void @llvm.dbg.value(metadata double %10, metadata !188, metadata !DIExpression()), !dbg !195
  %11 = fcmp olt double %9, %10, !dbg !197
  %12 = select i1 %11, double %9, double %10, !dbg !197
  tail call void @llvm.dbg.value(metadata double %12, metadata !189, metadata !DIExpression()), !dbg !195
  %13 = fcmp ogt double %9, %10, !dbg !198
  %14 = select i1 %13, double %9, double %10, !dbg !198
  tail call void @llvm.dbg.value(metadata double %14, metadata !190, metadata !DIExpression()), !dbg !195
  %handler_result2 = call double @callHandler(i32 12, double %14, double %14), !dbg !199
  %15 = fdiv double %12, %14, !dbg !199
  %16 = fmul double %15, %15, !dbg !200
  %handler_result = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !201
  %handler_result3 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !202
  %17 = fmul double %handler_result3, 5.000000e-01, !dbg !202
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result2, double %17), !dbg !203
  store double %handler_result1, ptr %2, align 8, !dbg !203, !tbaa !128
  %18 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !204
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !205
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !206
  store double %19, ptr %20, align 8, !dbg !207, !tbaa !133
  %21 = tail call double @atan2(double noundef %1, double noundef %0) #5, !dbg !208
  store double %21, ptr %3, align 8, !dbg !209, !tbaa !128
  %22 = load double, ptr %2, align 8, !dbg !210, !tbaa !128
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !211
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !212
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !213
  store double %24, ptr %25, align 8, !dbg !214, !tbaa !133
  br label %29

26:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !215, !tbaa !128
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !215
  store double 0x7FF8000000000000, ptr %27, align 8, !dbg !215, !tbaa !133
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !215, !tbaa !128
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !215
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !215, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 159, i32 noundef 1) #5, !dbg !218
  br label %29, !dbg !218

29:                                               ; preds = %26, %8
  %30 = phi i32 [ 0, %8 ], [ 1, %26 ], !dbg !220
  ret i32 %30, !dbg !221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !222 double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_1plusx_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !225 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !227, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !228, metadata !DIExpression()), !dbg !246
  %3 = fcmp ugt double %0, -1.000000e+00, !dbg !247
  br i1 %3, label %6, label %4, !dbg !248

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !249, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !249
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !249, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 1) #5, !dbg !252
  br label %58, !dbg !252

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !254
  %8 = fcmp olt double %7, 0x3F6428A2F98D728D, !dbg !255
  br i1 %8, label %9, label %23, !dbg !256

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !229, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !233, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double -2.500000e-01, metadata !234, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !235, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !236, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !237, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double -1.250000e-01, metadata !238, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !239, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !240, metadata !DIExpression()), !dbg !257
  %10 = fmul double %0, 1.000000e-01, !dbg !258
  %handler_result = call double @fSubHandlerDouble(double 0x3FBC71C71C71C71C, double %10), !dbg !259
  %11 = fmul double %handler_result, %0, !dbg !259
  %handler_result1 = call double @fAddHandlerDouble(double %11, double -1.250000e-01), !dbg !260
  %12 = fmul double %handler_result1, %0, !dbg !260
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 0x3FC2492492492492), !dbg !261
  %13 = fmul double %handler_result2, %0, !dbg !261
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 0xBFC5555555555555), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !241, metadata !DIExpression()), !dbg !257
  %14 = fmul double %handler_result3, %0, !dbg !262
  %handler_result4 = call double @fAddHandlerDouble(double %14, double 2.000000e-01), !dbg !263
  %15 = fmul double %handler_result4, %0, !dbg !263
  %handler_result5 = call double @fAddHandlerDouble(double %15, double -2.500000e-01), !dbg !264
  %16 = fmul double %handler_result5, %0, !dbg !264
  %handler_result6 = call double @fAddHandlerDouble(double %16, double 0x3FD5555555555555), !dbg !265
  %17 = fmul double %handler_result6, %0, !dbg !265
  %handler_result7 = call double @fAddHandlerDouble(double %17, double -5.000000e-01), !dbg !266
  %18 = fmul double %handler_result7, %0, !dbg !266
  %handler_result8 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !267
  %19 = fmul double %handler_result8, %0, !dbg !267
  store double %19, ptr %1, align 8, !dbg !268, !tbaa !128
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !269
  %21 = fmul double %20, 0x3CB0000000000000, !dbg !270
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !271
  store double %21, ptr %22, align 8, !dbg !272, !tbaa !133
  br label %58

23:                                               ; preds = %6
  %24 = fcmp olt double %7, 5.000000e-01, !dbg !273
  br i1 %24, label %25, label %54, !dbg !274

25:                                               ; preds = %23
  %26 = fmul double %0, 8.000000e+00, !dbg !275
  %handler_result9 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !276
  %27 = fmul double %handler_result9, 5.000000e-01, !dbg !276
  %handler_result10 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !277
  %28 = fdiv double %27, %handler_result10, !dbg !277
  tail call void @llvm.dbg.value(metadata double %28, metadata !242, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata !279, metadata !280, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %28, metadata !288, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata ptr undef, metadata !289, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !292, metadata !DIExpression()), !dbg !302
  %29 = fmul double %28, 2.000000e+00, !dbg !304
  %handler_result11 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !305
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double -1.000000e+00), !dbg !306
  %30 = fmul double %handler_result12, 5.000000e-01, !dbg !306
  call void @llvm.dbg.value(metadata double %30, metadata !293, metadata !DIExpression()), !dbg !302
  %31 = fmul double %30, 2.000000e+00, !dbg !307
  call void @llvm.dbg.value(metadata double %31, metadata !294, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i32 20, metadata !290, metadata !DIExpression()), !dbg !302
  br label %32, !dbg !308

32:                                               ; preds = %32, %25
  %33 = phi i64 [ 20, %25 ], [ %43, %32 ]
  %34 = phi double [ 0.000000e+00, %25 ], [ %handler_result14, %32 ]
  %35 = phi double [ 0.000000e+00, %25 ], [ %handler_result17, %32 ]
  %36 = phi double [ 0.000000e+00, %25 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !290, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %34, metadata !291, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %35, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %36, metadata !292, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %34, metadata !296, metadata !DIExpression()), !dbg !309
  %37 = fmul double %31, %34, !dbg !310
  %handler_result13 = call double @fSubHandlerDouble(double %37, double %36), !dbg !311
  %38 = getelementptr inbounds double, ptr @lopx_data, i64 %33, !dbg !311
  %39 = load double, ptr %38, align 8, !dbg !311, !tbaa !312
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %39), !dbg !313
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !291, metadata !DIExpression()), !dbg !302
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !313
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !314
  %handler_result15 = call double @fAddHandlerDouble(double %40, double %41), !dbg !315
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !315
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double %42), !dbg !316
  %handler_result17 = call double @fAddHandlerDouble(double %35, double %handler_result16), !dbg !317
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %34, metadata !292, metadata !DIExpression()), !dbg !302
  %43 = add nsw i64 %33, -1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %43, metadata !290, metadata !DIExpression()), !dbg !302
  %44 = icmp ugt i64 %33, 1, !dbg !318
  br i1 %44, label %32, label %45, !dbg !308, !llvm.loop !319

45:                                               ; preds = %32
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !300, metadata !DIExpression()), !dbg !322
  %46 = fmul double %30, %handler_result14, !dbg !323
  %handler_result18 = call double @fSubHandlerDouble(double %46, double %34), !dbg !324
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FF154F2FF74064B), !dbg !325
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !291, metadata !DIExpression()), !dbg !302
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !325
  %48 = tail call double @llvm.fabs.f64(double %34), !dbg !326
  %handler_result20 = call double @fAddHandlerDouble(double %48, double %47), !dbg !327
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0x3FF154F2FF74064B), !dbg !328
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result21), !dbg !329
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !295, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !245, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !278
  %49 = fmul double %handler_result22, 0x3CB0000000000000, !dbg !329
  %handler_result23 = call double @fAddHandlerDouble(double %49, double 0x3C413556459573FA), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !245, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !278
  %50 = fmul double %handler_result19, %0, !dbg !330
  store double %50, ptr %1, align 8, !dbg !331, !tbaa !128
  %51 = fmul double %handler_result23, %0, !dbg !332
  %52 = tail call double @llvm.fabs.f64(double %51), !dbg !333
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !334
  store double %52, ptr %53, align 8, !dbg !335, !tbaa !133
  br label %58

54:                                               ; preds = %23
  %handler_result24 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !336
  %handler_result25 = call double @callHandler(i32 12, double %handler_result24, double %handler_result24), !dbg !338
  store double %handler_result25, ptr %1, align 8, !dbg !338, !tbaa !128
  %55 = tail call double @llvm.fabs.f64(double %handler_result25), !dbg !339
  %56 = fmul double %55, 0x3CB0000000000000, !dbg !340
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !341
  store double %56, ptr %57, align 8, !dbg !342, !tbaa !133
  br label %58, !dbg !343

58:                                               ; preds = %54, %45, %9, %4
  %59 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %45 ], [ 0, %54 ], !dbg !344
  ret i32 %59, !dbg !345
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_1plusx_mx_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !346 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !348, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !349, metadata !DIExpression()), !dbg !369
  %3 = fcmp ugt double %0, -1.000000e+00, !dbg !370
  br i1 %3, label %6, label %4, !dbg !371

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !372, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !372
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !372, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 1) #5, !dbg !375
  br label %58, !dbg !375

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !377
  %8 = fcmp olt double %7, 0x3F48406003B2AE5A, !dbg !378
  br i1 %8, label %9, label %23, !dbg !379

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !350, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !354, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double -2.500000e-01, metadata !355, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !356, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !357, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !358, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double -1.250000e-01, metadata !359, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !360, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !361, metadata !DIExpression()), !dbg !380
  %10 = fmul double %0, 1.000000e-01, !dbg !381
  %handler_result = call double @fSubHandlerDouble(double 0x3FBC71C71C71C71C, double %10), !dbg !382
  %11 = fmul double %handler_result, %0, !dbg !382
  %handler_result1 = call double @fAddHandlerDouble(double %11, double -1.250000e-01), !dbg !383
  %12 = fmul double %handler_result1, %0, !dbg !383
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 0x3FC2492492492492), !dbg !384
  %13 = fmul double %handler_result2, %0, !dbg !384
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 0xBFC5555555555555), !dbg !385
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !362, metadata !DIExpression()), !dbg !380
  %14 = fmul double %0, %0, !dbg !385
  %15 = fmul double %handler_result3, %0, !dbg !386
  %handler_result4 = call double @fAddHandlerDouble(double %15, double 2.000000e-01), !dbg !387
  %16 = fmul double %handler_result4, %0, !dbg !387
  %handler_result5 = call double @fAddHandlerDouble(double %16, double -2.500000e-01), !dbg !388
  %17 = fmul double %handler_result5, %0, !dbg !388
  %handler_result6 = call double @fAddHandlerDouble(double %17, double 0x3FD5555555555555), !dbg !389
  %18 = fmul double %handler_result6, %0, !dbg !389
  %handler_result7 = call double @fAddHandlerDouble(double %18, double -5.000000e-01), !dbg !390
  %19 = fmul double %14, %handler_result7, !dbg !390
  store double %19, ptr %1, align 8, !dbg !391, !tbaa !128
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !392
  %21 = fmul double %20, 0x3CB0000000000000, !dbg !393
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !394
  store double %21, ptr %22, align 8, !dbg !395, !tbaa !133
  br label %58

23:                                               ; preds = %6
  %24 = fcmp olt double %7, 5.000000e-01, !dbg !396
  br i1 %24, label %25, label %54, !dbg !397

25:                                               ; preds = %23
  %26 = fmul double %0, 8.000000e+00, !dbg !398
  %handler_result8 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !399
  %27 = fmul double %handler_result8, 5.000000e-01, !dbg !399
  %handler_result9 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !400
  %28 = fdiv double %27, %handler_result9, !dbg !400
  tail call void @llvm.dbg.value(metadata double %28, metadata !363, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata !279, metadata !280, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %28, metadata !288, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata ptr undef, metadata !289, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !291, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !292, metadata !DIExpression()), !dbg !402
  %29 = fmul double %28, 2.000000e+00, !dbg !404
  %handler_result10 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !405
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double -1.000000e+00), !dbg !406
  %30 = fmul double %handler_result11, 5.000000e-01, !dbg !406
  call void @llvm.dbg.value(metadata double %30, metadata !293, metadata !DIExpression()), !dbg !402
  %31 = fmul double %30, 2.000000e+00, !dbg !407
  call void @llvm.dbg.value(metadata double %31, metadata !294, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !295, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i32 19, metadata !290, metadata !DIExpression()), !dbg !402
  br label %32, !dbg !408

32:                                               ; preds = %32, %25
  %33 = phi i64 [ 19, %25 ], [ %43, %32 ]
  %34 = phi double [ 0.000000e+00, %25 ], [ %handler_result13, %32 ]
  %35 = phi double [ 0.000000e+00, %25 ], [ %handler_result16, %32 ]
  %36 = phi double [ 0.000000e+00, %25 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !290, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %34, metadata !291, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %35, metadata !295, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %36, metadata !292, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %34, metadata !296, metadata !DIExpression()), !dbg !409
  %37 = fmul double %31, %34, !dbg !410
  %handler_result12 = call double @fSubHandlerDouble(double %37, double %36), !dbg !411
  %38 = getelementptr inbounds double, ptr @lopxmx_data, i64 %33, !dbg !411
  %39 = load double, ptr %38, align 8, !dbg !411, !tbaa !312
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double %39), !dbg !412
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !291, metadata !DIExpression()), !dbg !402
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !412
  %41 = tail call double @llvm.fabs.f64(double %36), !dbg !413
  %handler_result14 = call double @fAddHandlerDouble(double %40, double %41), !dbg !414
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !414
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %42), !dbg !415
  %handler_result16 = call double @fAddHandlerDouble(double %35, double %handler_result15), !dbg !416
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !295, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %34, metadata !292, metadata !DIExpression()), !dbg !402
  %43 = add nsw i64 %33, -1, !dbg !416
  call void @llvm.dbg.value(metadata i64 %43, metadata !290, metadata !DIExpression()), !dbg !402
  %44 = icmp ugt i64 %33, 1, !dbg !417
  br i1 %44, label %32, label %45, !dbg !408, !llvm.loop !418

45:                                               ; preds = %32
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !300, metadata !DIExpression()), !dbg !420
  %46 = fmul double %30, %handler_result13, !dbg !421
  %handler_result17 = call double @fSubHandlerDouble(double %46, double %34), !dbg !422
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 0xBFE1EFA01F2185C3), !dbg !423
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !291, metadata !DIExpression()), !dbg !402
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !423
  %48 = tail call double @llvm.fabs.f64(double %34), !dbg !424
  %handler_result19 = call double @fAddHandlerDouble(double %48, double %47), !dbg !425
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0x3FE1EFA01F2185C3), !dbg !426
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result16, double %handler_result20), !dbg !427
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !295, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !401
  %49 = fmul double %handler_result21, 0x3CB0000000000000, !dbg !427
  %handler_result22 = call double @fAddHandlerDouble(double %49, double 0x3C6E5E46887B99D5), !dbg !428
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !401
  %50 = fmul double %0, %0, !dbg !428
  %51 = fmul double %50, %handler_result18, !dbg !429
  store double %51, ptr %1, align 8, !dbg !430, !tbaa !128
  %52 = fmul double %50, %handler_result22, !dbg !431
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !432
  store double %52, ptr %53, align 8, !dbg !433, !tbaa !133
  br label %58

54:                                               ; preds = %23
  %handler_result23 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !434
  %handler_result26 = call double @callHandler(i32 12, double %handler_result23, double %handler_result23), !dbg !435
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !367, metadata !DIExpression()), !dbg !436
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result26, double %0), !dbg !435
  store double %handler_result24, ptr %1, align 8, !dbg !435, !tbaa !128
  %55 = tail call double @llvm.fabs.f64(double %handler_result26), !dbg !437
  %handler_result25 = call double @fAddHandlerDouble(double %7, double %55), !dbg !438
  %56 = fmul double %handler_result25, 0x3CB0000000000000, !dbg !438
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !439
  store double %56, ptr %57, align 8, !dbg !440, !tbaa !133
  br label %58

58:                                               ; preds = %54, %45, %9, %4
  %59 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %45 ], [ 0, %54 ], !dbg !441
  ret i32 %59, !dbg !442
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log(double noundef %0) local_unnamed_addr #0 !dbg !443 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !447, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata double %0, metadata !119, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata ptr undef, metadata !120, metadata !DIExpression()), !dbg !451
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !453
  br i1 %2, label %3, label %4, !dbg !454

3:                                                ; preds = %1
  %handler_result = call double @callHandler(i32 12, double %0, double %0), !dbg !455
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata double poison, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata i32 0, metadata !449, metadata !DIExpression()), !dbg !450
  br label %5, !dbg !455

4:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !450
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #5, !dbg !456
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata i32 1, metadata !449, metadata !DIExpression()), !dbg !450
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 1) #5, !dbg !457
  br label %5, !dbg !457

5:                                                ; preds = %4, %3
  %6 = phi double [ %handler_result, %3 ], [ 0x7FF8000000000000, %4 ]
  ret double %6, !dbg !461
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_abs(double noundef %0) local_unnamed_addr #0 !dbg !462 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %0, metadata !156, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !468
  %2 = fcmp oeq double %0, 0.000000e+00, !dbg !470
  br i1 %2, label %5, label %3, !dbg !471

3:                                                ; preds = %1
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !472
  %handler_result = call double @callHandler(i32 12, double %4, double %4), !dbg !473
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !467
  tail call void @llvm.dbg.value(metadata double poison, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !467
  br label %6, !dbg !473

5:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !467
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !467
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 1) #5, !dbg !474
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 1, metadata !466, metadata !DIExpression()), !dbg !467
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #5, !dbg !475
  br label %6, !dbg !475

6:                                                ; preds = %5, %3
  %7 = phi double [ %handler_result, %3 ], [ 0x7FF8000000000000, %5 ]
  ret double %7, !dbg !479
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_1plusx(double noundef %0) local_unnamed_addr #0 !dbg !480 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !485
  call void @llvm.dbg.assign(metadata i1 undef, metadata !483, metadata !DIExpression(), metadata !485, metadata ptr %2, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata double %0, metadata !482, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !487
  %3 = call i32 @gsl_sf_log_1plusx_e(double noundef %0, ptr noundef nonnull %2), !dbg !487, !range !488
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !484, metadata !DIExpression()), !dbg !486
  %4 = icmp eq i32 %3, 0, !dbg !489
  br i1 %4, label %6, label %5, !dbg !487

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 1) #5, !dbg !491
  br label %6, !dbg !491

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !487, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !494
  ret double %7, !dbg !494
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_1plusx_mx(double noundef %0) local_unnamed_addr #0 !dbg !495 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !498, metadata !DIExpression(), metadata !500, metadata ptr %2, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata double %0, metadata !497, metadata !DIExpression()), !dbg !501
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !502
  %3 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %0, ptr noundef nonnull %2), !dbg !502, !range !488
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !499, metadata !DIExpression()), !dbg !501
  %4 = icmp eq i32 %3, 0, !dbg !503
  br i1 %4, label %6, label %5, !dbg !502

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 265, i32 noundef 1) #5, !dbg !505
  br label %6, !dbg !505

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !502, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !508
  ret double %7, !dbg !508
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @callHandler(i32, double, double)

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "log.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c44914d70e5cad996dbfe5561288b561")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 25)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 32)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 35)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "lopx_data", scope: !34, file: !2, line: 41, type: !96, isLocal: true, isDefinition: true)
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
!75 = !{!0, !7, !12, !17, !22, !27, !76, !32, !89, !91}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "lopx_cs", scope: !34, file: !2, line: 64, type: !78, isLocal: true, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !79, line: 29, baseType: !80)
!79 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !79, line: 22, size: 320, elements: !81)
!81 = !{!82, !85, !86, !87, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !80, file: !79, line: 23, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !80, file: !79, line: 24, baseType: !38, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !80, file: !79, line: 25, baseType: !84, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !79, line: 26, baseType: !84, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !80, file: !79, line: 27, baseType: !38, size: 32, offset: 256)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "lopxmx_cs", scope: !34, file: !2, line: 100, type: !78, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "lopxmx_data", scope: !34, file: !2, line: 78, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1280, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1344, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 21)
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 2}
!105 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!106 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!107 = distinct !DISubprogram(name: "gsl_sf_log_e", scope: !2, file: !2, line: 111, type: !108, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !118)
!108 = !DISubroutineType(types: !109)
!109 = !{!38, !110, !111}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !113, line: 41, baseType: !114)
!113 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !113, line: 37, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !114, file: !113, line: 38, baseType: !84, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !114, file: !113, line: 39, baseType: !84, size: 64, offset: 64)
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "x", arg: 1, scope: !107, file: !2, line: 111, type: !110)
!120 = !DILocalVariable(name: "result", arg: 2, scope: !107, file: !2, line: 111, type: !111)
!121 = !DILocation(line: 0, scope: !107)
!122 = !DILocation(line: 115, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !107, file: !2, line: 115, column: 6)
!124 = !DILocation(line: 115, column: 6, scope: !107)
!125 = !DILocation(line: 116, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 116, column: 5)
!127 = distinct !DILexicalBlock(scope: !123, file: !2, line: 115, column: 16)
!128 = !{!129, !130, i64 0}
!129 = !{!"gsl_sf_result_struct", !130, i64 0, !130, i64 8}
!130 = !{!"double", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !{!129, !130, i64 8}
!134 = !DILocation(line: 116, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !126, file: !2, line: 116, column: 5)
!136 = !DILocation(line: 119, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !123, file: !2, line: 118, column: 8)
!138 = !DILocation(line: 120, column: 43, scope: !137)
!139 = !DILocation(line: 120, column: 41, scope: !137)
!140 = !DILocation(line: 120, column: 13, scope: !137)
!141 = !DILocation(line: 120, column: 17, scope: !137)
!142 = !DILocation(line: 121, column: 5, scope: !137)
!143 = !DILocation(line: 0, scope: !123)
!144 = !DILocation(line: 123, column: 1, scope: !107)
!145 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148, !148, !38, !38}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!150 = !DISubprogram(name: "log", scope: !151, file: !151, line: 104, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!152 = !DISubroutineType(types: !153)
!153 = !{!84, !84}
!154 = distinct !DISubprogram(name: "gsl_sf_log_abs_e", scope: !2, file: !2, line: 127, type: !108, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "x", arg: 1, scope: !154, file: !2, line: 127, type: !110)
!157 = !DILocalVariable(name: "result", arg: 2, scope: !154, file: !2, line: 127, type: !111)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 131, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !2, line: 131, column: 6)
!161 = !DILocation(line: 131, column: 6, scope: !154)
!162 = !DILocation(line: 132, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 132, column: 5)
!164 = distinct !DILexicalBlock(scope: !160, file: !2, line: 131, column: 16)
!165 = !DILocation(line: 132, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 132, column: 5)
!167 = !DILocation(line: 135, column: 23, scope: !168)
!168 = distinct !DILexicalBlock(scope: !160, file: !2, line: 134, column: 8)
!169 = !DILocation(line: 135, column: 17, scope: !168)
!170 = !DILocation(line: 136, column: 43, scope: !168)
!171 = !DILocation(line: 136, column: 41, scope: !168)
!172 = !DILocation(line: 136, column: 13, scope: !168)
!173 = !DILocation(line: 136, column: 17, scope: !168)
!174 = !DILocation(line: 137, column: 5, scope: !168)
!175 = !DILocation(line: 0, scope: !160)
!176 = !DILocation(line: 139, column: 1, scope: !154)
!177 = distinct !DISubprogram(name: "gsl_sf_complex_log_e", scope: !2, file: !2, line: 142, type: !178, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!38, !110, !110, !111, !111}
!180 = !{!181, !182, !183, !184, !185, !188, !189, !190}
!181 = !DILocalVariable(name: "zr", arg: 1, scope: !177, file: !2, line: 142, type: !110)
!182 = !DILocalVariable(name: "zi", arg: 2, scope: !177, file: !2, line: 142, type: !110)
!183 = !DILocalVariable(name: "lnr", arg: 3, scope: !177, file: !2, line: 142, type: !111)
!184 = !DILocalVariable(name: "theta", arg: 4, scope: !177, file: !2, line: 142, type: !111)
!185 = !DILocalVariable(name: "ax", scope: !186, file: !2, line: 148, type: !110)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 147, column: 30)
!187 = distinct !DILexicalBlock(scope: !177, file: !2, line: 147, column: 6)
!188 = !DILocalVariable(name: "ay", scope: !186, file: !2, line: 149, type: !110)
!189 = !DILocalVariable(name: "min", scope: !186, file: !2, line: 150, type: !110)
!190 = !DILocalVariable(name: "max", scope: !186, file: !2, line: 151, type: !110)
!191 = !DILocation(line: 0, scope: !177)
!192 = !DILocation(line: 147, column: 9, scope: !187)
!193 = !DILocation(line: 147, column: 16, scope: !187)
!194 = !DILocation(line: 148, column: 23, scope: !186)
!195 = !DILocation(line: 0, scope: !186)
!196 = !DILocation(line: 149, column: 23, scope: !186)
!197 = !DILocation(line: 150, column: 24, scope: !186)
!198 = !DILocation(line: 151, column: 24, scope: !186)
!199 = !DILocation(line: 152, column: 47, scope: !186)
!200 = !DILocation(line: 152, column: 52, scope: !186)
!201 = !DILocation(line: 152, column: 33, scope: !186)
!202 = !DILocation(line: 152, column: 31, scope: !186)
!203 = !DILocation(line: 152, column: 14, scope: !186)
!204 = !DILocation(line: 153, column: 40, scope: !186)
!205 = !DILocation(line: 153, column: 38, scope: !186)
!206 = !DILocation(line: 153, column: 10, scope: !186)
!207 = !DILocation(line: 153, column: 14, scope: !186)
!208 = !DILocation(line: 154, column: 18, scope: !186)
!209 = !DILocation(line: 154, column: 16, scope: !186)
!210 = !DILocation(line: 155, column: 46, scope: !186)
!211 = !DILocation(line: 155, column: 36, scope: !186)
!212 = !DILocation(line: 155, column: 34, scope: !186)
!213 = !DILocation(line: 155, column: 12, scope: !186)
!214 = !DILocation(line: 155, column: 16, scope: !186)
!215 = !DILocation(line: 159, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 159, column: 5)
!217 = distinct !DILexicalBlock(scope: !187, file: !2, line: 158, column: 8)
!218 = !DILocation(line: 159, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !2, line: 159, column: 5)
!220 = !DILocation(line: 0, scope: !187)
!221 = !DILocation(line: 161, column: 1, scope: !177)
!222 = !DISubprogram(name: "atan2", scope: !151, file: !151, line: 59, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{!84, !84, !84}
!225 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !2, file: !2, line: 165, type: !108, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !226)
!226 = !{!227, !228, !229, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !245}
!227 = !DILocalVariable(name: "x", arg: 1, scope: !225, file: !2, line: 165, type: !110)
!228 = !DILocalVariable(name: "result", arg: 2, scope: !225, file: !2, line: 165, type: !111)
!229 = !DILocalVariable(name: "c1", scope: !230, file: !2, line: 173, type: !110)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 172, column: 44)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 172, column: 11)
!232 = distinct !DILexicalBlock(scope: !225, file: !2, line: 169, column: 6)
!233 = !DILocalVariable(name: "c2", scope: !230, file: !2, line: 174, type: !110)
!234 = !DILocalVariable(name: "c3", scope: !230, file: !2, line: 175, type: !110)
!235 = !DILocalVariable(name: "c4", scope: !230, file: !2, line: 176, type: !110)
!236 = !DILocalVariable(name: "c5", scope: !230, file: !2, line: 177, type: !110)
!237 = !DILocalVariable(name: "c6", scope: !230, file: !2, line: 178, type: !110)
!238 = !DILocalVariable(name: "c7", scope: !230, file: !2, line: 179, type: !110)
!239 = !DILocalVariable(name: "c8", scope: !230, file: !2, line: 180, type: !110)
!240 = !DILocalVariable(name: "c9", scope: !230, file: !2, line: 181, type: !110)
!241 = !DILocalVariable(name: "t", scope: !230, file: !2, line: 182, type: !110)
!242 = !DILocalVariable(name: "t", scope: !243, file: !2, line: 188, type: !84)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 187, column: 26)
!244 = distinct !DILexicalBlock(scope: !231, file: !2, line: 187, column: 11)
!245 = !DILocalVariable(name: "c", scope: !243, file: !2, line: 189, type: !112)
!246 = !DILocation(line: 0, scope: !225)
!247 = !DILocation(line: 169, column: 8, scope: !232)
!248 = !DILocation(line: 169, column: 6, scope: !225)
!249 = !DILocation(line: 170, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 170, column: 5)
!251 = distinct !DILexicalBlock(scope: !232, file: !2, line: 169, column: 17)
!252 = !DILocation(line: 170, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !2, line: 170, column: 5)
!254 = !DILocation(line: 172, column: 11, scope: !231)
!255 = !DILocation(line: 172, column: 19, scope: !231)
!256 = !DILocation(line: 172, column: 11, scope: !232)
!257 = !DILocation(line: 0, scope: !230)
!258 = !DILocation(line: 182, column: 54, scope: !230)
!259 = !DILocation(line: 182, column: 46, scope: !230)
!260 = !DILocation(line: 182, column: 38, scope: !230)
!261 = !DILocation(line: 182, column: 30, scope: !230)
!262 = !DILocation(line: 183, column: 63, scope: !230)
!263 = !DILocation(line: 183, column: 55, scope: !230)
!264 = !DILocation(line: 183, column: 47, scope: !230)
!265 = !DILocation(line: 183, column: 39, scope: !230)
!266 = !DILocation(line: 183, column: 31, scope: !230)
!267 = !DILocation(line: 183, column: 21, scope: !230)
!268 = !DILocation(line: 183, column: 17, scope: !230)
!269 = !DILocation(line: 184, column: 37, scope: !230)
!270 = !DILocation(line: 184, column: 35, scope: !230)
!271 = !DILocation(line: 184, column: 13, scope: !230)
!272 = !DILocation(line: 184, column: 17, scope: !230)
!273 = !DILocation(line: 187, column: 19, scope: !244)
!274 = !DILocation(line: 187, column: 11, scope: !231)
!275 = !DILocation(line: 188, column: 24, scope: !243)
!276 = !DILocation(line: 188, column: 19, scope: !243)
!277 = !DILocation(line: 188, column: 33, scope: !243)
!278 = !DILocation(line: 0, scope: !243)
!279 = !{}
!280 = !DILocalVariable(name: "cs", arg: 1, scope: !281, file: !282, line: 3, type: !285)
!281 = distinct !DISubprogram(name: "cheb_eval_e", scope: !282, file: !282, line: 3, type: !283, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !287)
!282 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!283 = !DISubroutineType(types: !284)
!284 = !{!38, !285, !110, !111}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!287 = !{!280, !288, !289, !290, !291, !292, !293, !294, !295, !296, !300}
!288 = !DILocalVariable(name: "x", arg: 2, scope: !281, file: !282, line: 4, type: !110)
!289 = !DILocalVariable(name: "result", arg: 3, scope: !281, file: !282, line: 5, type: !111)
!290 = !DILocalVariable(name: "j", scope: !281, file: !282, line: 7, type: !38)
!291 = !DILocalVariable(name: "d", scope: !281, file: !282, line: 8, type: !84)
!292 = !DILocalVariable(name: "dd", scope: !281, file: !282, line: 9, type: !84)
!293 = !DILocalVariable(name: "y", scope: !281, file: !282, line: 11, type: !84)
!294 = !DILocalVariable(name: "y2", scope: !281, file: !282, line: 12, type: !84)
!295 = !DILocalVariable(name: "e", scope: !281, file: !282, line: 14, type: !84)
!296 = !DILocalVariable(name: "temp", scope: !297, file: !282, line: 17, type: !84)
!297 = distinct !DILexicalBlock(scope: !298, file: !282, line: 16, column: 33)
!298 = distinct !DILexicalBlock(scope: !299, file: !282, line: 16, column: 3)
!299 = distinct !DILexicalBlock(scope: !281, file: !282, line: 16, column: 3)
!300 = !DILocalVariable(name: "temp", scope: !301, file: !282, line: 24, type: !84)
!301 = distinct !DILexicalBlock(scope: !281, file: !282, line: 23, column: 3)
!302 = !DILocation(line: 0, scope: !281, inlinedAt: !303)
!303 = distinct !DILocation(line: 190, column: 5, scope: !243)
!304 = !DILocation(line: 11, column: 19, scope: !281, inlinedAt: !303)
!305 = !DILocation(line: 11, column: 30, scope: !281, inlinedAt: !303)
!306 = !DILocation(line: 11, column: 39, scope: !281, inlinedAt: !303)
!307 = !DILocation(line: 12, column: 19, scope: !281, inlinedAt: !303)
!308 = !DILocation(line: 16, column: 3, scope: !299, inlinedAt: !303)
!309 = !DILocation(line: 0, scope: !297, inlinedAt: !303)
!310 = !DILocation(line: 18, column: 11, scope: !297, inlinedAt: !303)
!311 = !DILocation(line: 18, column: 21, scope: !297, inlinedAt: !303)
!312 = !{!130, !130, i64 0}
!313 = !DILocation(line: 19, column: 10, scope: !297, inlinedAt: !303)
!314 = !DILocation(line: 19, column: 26, scope: !297, inlinedAt: !303)
!315 = !DILocation(line: 19, column: 37, scope: !297, inlinedAt: !303)
!316 = !DILocation(line: 19, column: 7, scope: !297, inlinedAt: !303)
!317 = !DILocation(line: 16, column: 29, scope: !298, inlinedAt: !303)
!318 = !DILocation(line: 16, column: 23, scope: !298, inlinedAt: !303)
!319 = distinct !{!319, !308, !320, !321}
!320 = !DILocation(line: 21, column: 3, scope: !299, inlinedAt: !303)
!321 = !{!"llvm.loop.mustprogress"}
!322 = !DILocation(line: 0, scope: !301, inlinedAt: !303)
!323 = !DILocation(line: 25, column: 10, scope: !301, inlinedAt: !303)
!324 = !DILocation(line: 25, column: 18, scope: !301, inlinedAt: !303)
!325 = !DILocation(line: 26, column: 10, scope: !301, inlinedAt: !303)
!326 = !DILocation(line: 26, column: 25, scope: !301, inlinedAt: !303)
!327 = !DILocation(line: 26, column: 34, scope: !301, inlinedAt: !303)
!328 = !DILocation(line: 26, column: 7, scope: !301, inlinedAt: !303)
!329 = !DILocation(line: 30, column: 33, scope: !281, inlinedAt: !303)
!330 = !DILocation(line: 191, column: 21, scope: !243)
!331 = !DILocation(line: 191, column: 17, scope: !243)
!332 = !DILocation(line: 192, column: 26, scope: !243)
!333 = !DILocation(line: 192, column: 19, scope: !243)
!334 = !DILocation(line: 192, column: 13, scope: !243)
!335 = !DILocation(line: 192, column: 17, scope: !243)
!336 = !DILocation(line: 196, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !244, file: !2, line: 195, column: 8)
!338 = !DILocation(line: 196, column: 17, scope: !337)
!339 = !DILocation(line: 197, column: 37, scope: !337)
!340 = !DILocation(line: 197, column: 35, scope: !337)
!341 = !DILocation(line: 197, column: 13, scope: !337)
!342 = !DILocation(line: 197, column: 17, scope: !337)
!343 = !DILocation(line: 198, column: 5, scope: !337)
!344 = !DILocation(line: 0, scope: !232)
!345 = !DILocation(line: 200, column: 1, scope: !225)
!346 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx_e", scope: !2, file: !2, line: 204, type: !108, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !347)
!347 = !{!348, !349, !350, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !366, !367}
!348 = !DILocalVariable(name: "x", arg: 1, scope: !346, file: !2, line: 204, type: !110)
!349 = !DILocalVariable(name: "result", arg: 2, scope: !346, file: !2, line: 204, type: !111)
!350 = !DILocalVariable(name: "c1", scope: !351, file: !2, line: 212, type: !110)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 211, column: 44)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 211, column: 11)
!353 = distinct !DILexicalBlock(scope: !346, file: !2, line: 208, column: 6)
!354 = !DILocalVariable(name: "c2", scope: !351, file: !2, line: 213, type: !110)
!355 = !DILocalVariable(name: "c3", scope: !351, file: !2, line: 214, type: !110)
!356 = !DILocalVariable(name: "c4", scope: !351, file: !2, line: 215, type: !110)
!357 = !DILocalVariable(name: "c5", scope: !351, file: !2, line: 216, type: !110)
!358 = !DILocalVariable(name: "c6", scope: !351, file: !2, line: 217, type: !110)
!359 = !DILocalVariable(name: "c7", scope: !351, file: !2, line: 218, type: !110)
!360 = !DILocalVariable(name: "c8", scope: !351, file: !2, line: 219, type: !110)
!361 = !DILocalVariable(name: "c9", scope: !351, file: !2, line: 220, type: !110)
!362 = !DILocalVariable(name: "t", scope: !351, file: !2, line: 221, type: !110)
!363 = !DILocalVariable(name: "t", scope: !364, file: !2, line: 227, type: !84)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 226, column: 26)
!365 = distinct !DILexicalBlock(scope: !352, file: !2, line: 226, column: 11)
!366 = !DILocalVariable(name: "c", scope: !364, file: !2, line: 228, type: !112)
!367 = !DILocalVariable(name: "lterm", scope: !368, file: !2, line: 235, type: !110)
!368 = distinct !DILexicalBlock(scope: !365, file: !2, line: 234, column: 8)
!369 = !DILocation(line: 0, scope: !346)
!370 = !DILocation(line: 208, column: 8, scope: !353)
!371 = !DILocation(line: 208, column: 6, scope: !346)
!372 = !DILocation(line: 209, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 209, column: 5)
!374 = distinct !DILexicalBlock(scope: !353, file: !2, line: 208, column: 17)
!375 = !DILocation(line: 209, column: 5, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !2, line: 209, column: 5)
!377 = !DILocation(line: 211, column: 11, scope: !352)
!378 = !DILocation(line: 211, column: 19, scope: !352)
!379 = !DILocation(line: 211, column: 11, scope: !353)
!380 = !DILocation(line: 0, scope: !351)
!381 = !DILocation(line: 221, column: 54, scope: !351)
!382 = !DILocation(line: 221, column: 46, scope: !351)
!383 = !DILocation(line: 221, column: 38, scope: !351)
!384 = !DILocation(line: 221, column: 30, scope: !351)
!385 = !DILocation(line: 222, column: 20, scope: !351)
!386 = !DILocation(line: 222, column: 56, scope: !351)
!387 = !DILocation(line: 222, column: 48, scope: !351)
!388 = !DILocation(line: 222, column: 40, scope: !351)
!389 = !DILocation(line: 222, column: 32, scope: !351)
!390 = !DILocation(line: 222, column: 23, scope: !351)
!391 = !DILocation(line: 222, column: 17, scope: !351)
!392 = !DILocation(line: 223, column: 37, scope: !351)
!393 = !DILocation(line: 223, column: 35, scope: !351)
!394 = !DILocation(line: 223, column: 13, scope: !351)
!395 = !DILocation(line: 223, column: 17, scope: !351)
!396 = !DILocation(line: 226, column: 19, scope: !365)
!397 = !DILocation(line: 226, column: 11, scope: !352)
!398 = !DILocation(line: 227, column: 24, scope: !364)
!399 = !DILocation(line: 227, column: 19, scope: !364)
!400 = !DILocation(line: 227, column: 33, scope: !364)
!401 = !DILocation(line: 0, scope: !364)
!402 = !DILocation(line: 0, scope: !281, inlinedAt: !403)
!403 = distinct !DILocation(line: 229, column: 5, scope: !364)
!404 = !DILocation(line: 11, column: 19, scope: !281, inlinedAt: !403)
!405 = !DILocation(line: 11, column: 30, scope: !281, inlinedAt: !403)
!406 = !DILocation(line: 11, column: 39, scope: !281, inlinedAt: !403)
!407 = !DILocation(line: 12, column: 19, scope: !281, inlinedAt: !403)
!408 = !DILocation(line: 16, column: 3, scope: !299, inlinedAt: !403)
!409 = !DILocation(line: 0, scope: !297, inlinedAt: !403)
!410 = !DILocation(line: 18, column: 11, scope: !297, inlinedAt: !403)
!411 = !DILocation(line: 18, column: 21, scope: !297, inlinedAt: !403)
!412 = !DILocation(line: 19, column: 10, scope: !297, inlinedAt: !403)
!413 = !DILocation(line: 19, column: 26, scope: !297, inlinedAt: !403)
!414 = !DILocation(line: 19, column: 37, scope: !297, inlinedAt: !403)
!415 = !DILocation(line: 19, column: 7, scope: !297, inlinedAt: !403)
!416 = !DILocation(line: 16, column: 29, scope: !298, inlinedAt: !403)
!417 = !DILocation(line: 16, column: 23, scope: !298, inlinedAt: !403)
!418 = distinct !{!418, !408, !419, !321}
!419 = !DILocation(line: 21, column: 3, scope: !299, inlinedAt: !403)
!420 = !DILocation(line: 0, scope: !301, inlinedAt: !403)
!421 = !DILocation(line: 25, column: 10, scope: !301, inlinedAt: !403)
!422 = !DILocation(line: 25, column: 18, scope: !301, inlinedAt: !403)
!423 = !DILocation(line: 26, column: 10, scope: !301, inlinedAt: !403)
!424 = !DILocation(line: 26, column: 25, scope: !301, inlinedAt: !403)
!425 = !DILocation(line: 26, column: 34, scope: !301, inlinedAt: !403)
!426 = !DILocation(line: 26, column: 7, scope: !301, inlinedAt: !403)
!427 = !DILocation(line: 30, column: 33, scope: !281, inlinedAt: !403)
!428 = !DILocation(line: 230, column: 20, scope: !364)
!429 = !DILocation(line: 230, column: 23, scope: !364)
!430 = !DILocation(line: 230, column: 17, scope: !364)
!431 = !DILocation(line: 231, column: 23, scope: !364)
!432 = !DILocation(line: 231, column: 13, scope: !364)
!433 = !DILocation(line: 231, column: 17, scope: !364)
!434 = !DILocation(line: 235, column: 26, scope: !368)
!435 = !DILocation(line: 236, column: 17, scope: !368)
!436 = !DILocation(line: 0, scope: !368)
!437 = !DILocation(line: 237, column: 38, scope: !368)
!438 = !DILocation(line: 237, column: 35, scope: !368)
!439 = !DILocation(line: 237, column: 13, scope: !368)
!440 = !DILocation(line: 237, column: 17, scope: !368)
!441 = !DILocation(line: 0, scope: !353)
!442 = !DILocation(line: 240, column: 1, scope: !346)
!443 = distinct !DISubprogram(name: "gsl_sf_log", scope: !2, file: !2, line: 248, type: !444, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!84, !110}
!446 = !{!447, !448, !449}
!447 = !DILocalVariable(name: "x", arg: 1, scope: !443, file: !2, line: 248, type: !110)
!448 = !DILocalVariable(name: "result", scope: !443, file: !2, line: 250, type: !112)
!449 = !DILocalVariable(name: "status", scope: !443, file: !2, line: 250, type: !38)
!450 = !DILocation(line: 0, scope: !443)
!451 = !DILocation(line: 0, scope: !107, inlinedAt: !452)
!452 = distinct !DILocation(line: 250, column: 3, scope: !443)
!453 = !DILocation(line: 115, column: 8, scope: !123, inlinedAt: !452)
!454 = !DILocation(line: 115, column: 6, scope: !107, inlinedAt: !452)
!455 = !DILocation(line: 250, column: 3, scope: !443)
!456 = !DILocation(line: 116, column: 5, scope: !135, inlinedAt: !452)
!457 = !DILocation(line: 250, column: 3, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 250, column: 3)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 250, column: 3)
!460 = distinct !DILexicalBlock(scope: !443, file: !2, line: 250, column: 3)
!461 = !DILocation(line: 251, column: 1, scope: !443)
!462 = distinct !DISubprogram(name: "gsl_sf_log_abs", scope: !2, file: !2, line: 253, type: !444, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !463)
!463 = !{!464, !465, !466}
!464 = !DILocalVariable(name: "x", arg: 1, scope: !462, file: !2, line: 253, type: !110)
!465 = !DILocalVariable(name: "result", scope: !462, file: !2, line: 255, type: !112)
!466 = !DILocalVariable(name: "status", scope: !462, file: !2, line: 255, type: !38)
!467 = !DILocation(line: 0, scope: !462)
!468 = !DILocation(line: 0, scope: !154, inlinedAt: !469)
!469 = distinct !DILocation(line: 255, column: 3, scope: !462)
!470 = !DILocation(line: 131, column: 8, scope: !160, inlinedAt: !469)
!471 = !DILocation(line: 131, column: 6, scope: !154, inlinedAt: !469)
!472 = !DILocation(line: 135, column: 23, scope: !168, inlinedAt: !469)
!473 = !DILocation(line: 255, column: 3, scope: !462)
!474 = !DILocation(line: 132, column: 5, scope: !166, inlinedAt: !469)
!475 = !DILocation(line: 255, column: 3, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !2, line: 255, column: 3)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 255, column: 3)
!478 = distinct !DILexicalBlock(scope: !462, file: !2, line: 255, column: 3)
!479 = !DILocation(line: 256, column: 1, scope: !462)
!480 = distinct !DISubprogram(name: "gsl_sf_log_1plusx", scope: !2, file: !2, line: 258, type: !444, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !481)
!481 = !{!482, !483, !484}
!482 = !DILocalVariable(name: "x", arg: 1, scope: !480, file: !2, line: 258, type: !110)
!483 = !DILocalVariable(name: "result", scope: !480, file: !2, line: 260, type: !112)
!484 = !DILocalVariable(name: "status", scope: !480, file: !2, line: 260, type: !38)
!485 = distinct !DIAssignID()
!486 = !DILocation(line: 0, scope: !480)
!487 = !DILocation(line: 260, column: 3, scope: !480)
!488 = !{i32 0, i32 2}
!489 = !DILocation(line: 260, column: 3, scope: !490)
!490 = distinct !DILexicalBlock(scope: !480, file: !2, line: 260, column: 3)
!491 = !DILocation(line: 260, column: 3, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 260, column: 3)
!493 = distinct !DILexicalBlock(scope: !490, file: !2, line: 260, column: 3)
!494 = !DILocation(line: 261, column: 1, scope: !480)
!495 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx", scope: !2, file: !2, line: 263, type: !444, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !496)
!496 = !{!497, !498, !499}
!497 = !DILocalVariable(name: "x", arg: 1, scope: !495, file: !2, line: 263, type: !110)
!498 = !DILocalVariable(name: "result", scope: !495, file: !2, line: 265, type: !112)
!499 = !DILocalVariable(name: "status", scope: !495, file: !2, line: 265, type: !38)
!500 = distinct !DIAssignID()
!501 = !DILocation(line: 0, scope: !495)
!502 = !DILocation(line: 265, column: 3, scope: !495)
!503 = !DILocation(line: 265, column: 3, scope: !504)
!504 = distinct !DILexicalBlock(scope: !495, file: !2, line: 265, column: 3)
!505 = !DILocation(line: 265, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 265, column: 3)
!507 = distinct !DILexicalBlock(scope: !504, file: !2, line: 265, column: 3)
!508 = !DILocation(line: 266, column: 1, scope: !495)
