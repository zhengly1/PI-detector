; ModuleID = 'log.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #6, !dbg !134
  br label %11, !dbg !134

6:                                                ; preds = %2
  %7 = tail call double @log(double noundef %0) #6, !dbg !136
  store double %7, ptr %1, align 8, !dbg !138, !tbaa !128
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !139
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !140
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !141
  store double %9, ptr %10, align 8, !dbg !142, !tbaa !133
  br label %11, !dbg !143

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 1, %4 ], [ 0, %6 ], !dbg !144
  ret i32 %12, !dbg !145
}

declare !dbg !146 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !151 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_abs_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !155 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !157, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !158, metadata !DIExpression()), !dbg !159
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !160
  br i1 %3, label %4, label %6, !dbg !162

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !163, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !163
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !163, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 1) #6, !dbg !166
  br label %12, !dbg !166

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !168
  %8 = tail call double @log(double noundef %7) #6, !dbg !170
  store double %8, ptr %1, align 8, !dbg !171, !tbaa !128
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !172
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !173
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !174
  store double %10, ptr %11, align 8, !dbg !175, !tbaa !133
  br label %12, !dbg !176

12:                                               ; preds = %4, %6
  %13 = phi i32 [ 1, %4 ], [ 0, %6 ], !dbg !177
  ret i32 %13, !dbg !178
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_complex_log_e(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !179 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !183, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata double %1, metadata !184, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !185, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !186, metadata !DIExpression()), !dbg !193
  %5 = fcmp une double %0, 0.000000e+00, !dbg !194
  %6 = fcmp une double %1, 0.000000e+00
  %7 = or i1 %5, %6, !dbg !195
  br i1 %7, label %8, label %30, !dbg !195

8:                                                ; preds = %4
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !196
  tail call void @llvm.dbg.value(metadata double %9, metadata !187, metadata !DIExpression()), !dbg !197
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !198
  tail call void @llvm.dbg.value(metadata double %10, metadata !190, metadata !DIExpression()), !dbg !197
  %11 = fcmp olt double %9, %10, !dbg !199
  %12 = select i1 %11, double %9, double %10, !dbg !199
  tail call void @llvm.dbg.value(metadata double %12, metadata !191, metadata !DIExpression()), !dbg !197
  %13 = fcmp ogt double %9, %10, !dbg !200
  %14 = select i1 %13, double %9, double %10, !dbg !200
  tail call void @llvm.dbg.value(metadata double %14, metadata !192, metadata !DIExpression()), !dbg !197
  %15 = tail call double @log(double noundef %14) #6, !dbg !201
  %16 = fdiv double %12, %14, !dbg !202
  %17 = fmul double %16, %16, !dbg !203
  %18 = fadd double %17, 1.000000e+00, !dbg !204
  %19 = tail call double @log(double noundef %18) #6, !dbg !205
  %20 = fmul double %19, 5.000000e-01, !dbg !206
  %21 = fadd double %15, %20, !dbg !207
  store double %21, ptr %2, align 8, !dbg !208, !tbaa !128
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !209
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !210
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !211
  store double %23, ptr %24, align 8, !dbg !212, !tbaa !133
  %25 = tail call double @atan2(double noundef %1, double noundef %0) #6, !dbg !213
  store double %25, ptr %3, align 8, !dbg !214, !tbaa !128
  %26 = load double, ptr %2, align 8, !dbg !215, !tbaa !128
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !216
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !217
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !218
  store double %28, ptr %29, align 8, !dbg !219, !tbaa !133
  br label %33

30:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !220, !tbaa !128
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !220
  store double 0x7FF8000000000000, ptr %31, align 8, !dbg !220, !tbaa !133
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !220, !tbaa !128
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !220
  store double 0x7FF8000000000000, ptr %32, align 8, !dbg !220, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 159, i32 noundef 1) #6, !dbg !223
  br label %33, !dbg !223

33:                                               ; preds = %8, %30
  %34 = phi i32 [ 0, %8 ], [ 1, %30 ], !dbg !225
  ret i32 %34, !dbg !226
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !227 double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_1plusx_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !230 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !232, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !233, metadata !DIExpression()), !dbg !251
  %3 = fcmp ugt double %0, -1.000000e+00, !dbg !252
  br i1 %3, label %6, label %4, !dbg !253

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !254, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !254
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !254, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 1) #6, !dbg !257
  br label %84, !dbg !257

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !259
  %8 = fcmp olt double %7, 0x3F6428A2F98D728D, !dbg !260
  br i1 %8, label %9, label %32, !dbg !261

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !234, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !238, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double -2.500000e-01, metadata !239, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !240, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !241, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !242, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double -1.250000e-01, metadata !243, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !244, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !245, metadata !DIExpression()), !dbg !262
  %10 = fmul double %0, 1.000000e-01, !dbg !263
  %11 = fsub double 0x3FBC71C71C71C71C, %10, !dbg !264
  %12 = fmul double %11, %0, !dbg !265
  %13 = fadd double %12, -1.250000e-01, !dbg !266
  %14 = fmul double %13, %0, !dbg !267
  %15 = fadd double %14, 0x3FC2492492492492, !dbg !268
  %16 = fmul double %15, %0, !dbg !269
  %17 = fadd double %16, 0xBFC5555555555555, !dbg !270
  tail call void @llvm.dbg.value(metadata double %17, metadata !246, metadata !DIExpression()), !dbg !262
  %18 = fmul double %17, %0, !dbg !271
  %19 = fadd double %18, 2.000000e-01, !dbg !272
  %20 = fmul double %19, %0, !dbg !273
  %21 = fadd double %20, -2.500000e-01, !dbg !274
  %22 = fmul double %21, %0, !dbg !275
  %23 = fadd double %22, 0x3FD5555555555555, !dbg !276
  %24 = fmul double %23, %0, !dbg !277
  %25 = fadd double %24, -5.000000e-01, !dbg !278
  %26 = fmul double %25, %0, !dbg !279
  %27 = fadd double %26, 1.000000e+00, !dbg !280
  %28 = fmul double %27, %0, !dbg !281
  store double %28, ptr %1, align 8, !dbg !282, !tbaa !128
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !283
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !284
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !285
  store double %30, ptr %31, align 8, !dbg !286, !tbaa !133
  br label %84

32:                                               ; preds = %6
  %33 = fcmp olt double %7, 5.000000e-01, !dbg !287
  br i1 %33, label %34, label %78, !dbg !288

34:                                               ; preds = %32
  %35 = fmul double %0, 8.000000e+00, !dbg !289
  %36 = fadd double %35, 1.000000e+00, !dbg !290
  %37 = fmul double %36, 5.000000e-01, !dbg !291
  %38 = fadd double %0, 2.000000e+00, !dbg !292
  %39 = fdiv double %37, %38, !dbg !293
  tail call void @llvm.dbg.value(metadata double %39, metadata !247, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata !295, metadata !296, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %39, metadata !304, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata ptr undef, metadata !305, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !307, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !308, metadata !DIExpression()), !dbg !318
  %40 = fmul double %39, 2.000000e+00, !dbg !320
  %41 = fadd double %40, 1.000000e+00, !dbg !321
  %42 = fadd double %41, -1.000000e+00, !dbg !322
  %43 = fmul double %42, 5.000000e-01, !dbg !323
  call void @llvm.dbg.value(metadata double %43, metadata !309, metadata !DIExpression()), !dbg !318
  %44 = fmul double %43, 2.000000e+00, !dbg !324
  call void @llvm.dbg.value(metadata double %44, metadata !310, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 20, metadata !306, metadata !DIExpression()), !dbg !318
  br label %45, !dbg !325

45:                                               ; preds = %45, %34
  %46 = phi i64 [ 20, %34 ], [ %61, %45 ]
  %47 = phi double [ 0.000000e+00, %34 ], [ %54, %45 ]
  %48 = phi double [ 0.000000e+00, %34 ], [ %60, %45 ]
  %49 = phi double [ 0.000000e+00, %34 ], [ %47, %45 ]
  call void @llvm.dbg.value(metadata i64 %46, metadata !306, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %47, metadata !307, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %48, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %49, metadata !308, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %47, metadata !312, metadata !DIExpression()), !dbg !326
  %50 = fmul double %44, %47, !dbg !327
  %51 = fsub double %50, %49, !dbg !328
  %52 = getelementptr inbounds double, ptr @lopx_data, i64 %46, !dbg !329
  %53 = load double, ptr %52, align 8, !dbg !329, !tbaa !330
  %54 = fadd double %51, %53, !dbg !331
  call void @llvm.dbg.value(metadata double %54, metadata !307, metadata !DIExpression()), !dbg !318
  %55 = tail call double @llvm.fabs.f64(double %50), !dbg !332
  %56 = tail call double @llvm.fabs.f64(double %49), !dbg !333
  %57 = fadd double %55, %56, !dbg !334
  %58 = tail call double @llvm.fabs.f64(double %53), !dbg !335
  %59 = fadd double %57, %58, !dbg !336
  %60 = fadd double %48, %59, !dbg !337
  call void @llvm.dbg.value(metadata double %60, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata double %47, metadata !308, metadata !DIExpression()), !dbg !318
  %61 = add nsw i64 %46, -1, !dbg !338
  call void @llvm.dbg.value(metadata i64 %61, metadata !306, metadata !DIExpression()), !dbg !318
  %62 = icmp ugt i64 %46, 1, !dbg !339
  br i1 %62, label %45, label %63, !dbg !325, !llvm.loop !340

63:                                               ; preds = %45
  call void @llvm.dbg.value(metadata double %54, metadata !316, metadata !DIExpression()), !dbg !343
  %64 = fmul double %43, %54, !dbg !344
  %65 = fsub double %64, %47, !dbg !345
  %66 = fadd double %65, 0x3FF154F2FF74064B, !dbg !346
  call void @llvm.dbg.value(metadata double %66, metadata !307, metadata !DIExpression()), !dbg !318
  %67 = tail call double @llvm.fabs.f64(double %64), !dbg !347
  %68 = tail call double @llvm.fabs.f64(double %47), !dbg !348
  %69 = fadd double %68, %67, !dbg !349
  %70 = fadd double %69, 0x3FF154F2FF74064B, !dbg !350
  %71 = fadd double %60, %70, !dbg !351
  call void @llvm.dbg.value(metadata double %71, metadata !311, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double %66, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !352
  %73 = fadd double %72, 0x3C413556459573FA, !dbg !353
  tail call void @llvm.dbg.value(metadata double %73, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  %74 = fmul double %66, %0, !dbg !354
  store double %74, ptr %1, align 8, !dbg !355, !tbaa !128
  %75 = fmul double %73, %0, !dbg !356
  %76 = tail call double @llvm.fabs.f64(double %75), !dbg !357
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !358
  store double %76, ptr %77, align 8, !dbg !359, !tbaa !133
  br label %84

78:                                               ; preds = %32
  %79 = fadd double %0, 1.000000e+00, !dbg !360
  %80 = tail call double @log(double noundef %79) #6, !dbg !362
  store double %80, ptr %1, align 8, !dbg !363, !tbaa !128
  %81 = tail call double @llvm.fabs.f64(double %80), !dbg !364
  %82 = fmul double %81, 0x3CB0000000000000, !dbg !365
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !366
  store double %82, ptr %83, align 8, !dbg !367, !tbaa !133
  br label %84, !dbg !368

84:                                               ; preds = %4, %9, %63, %78
  %85 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %63 ], [ 0, %78 ], !dbg !369
  ret i32 %85, !dbg !370
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_log_1plusx_mx_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !371 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !373, metadata !DIExpression()), !dbg !394
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !374, metadata !DIExpression()), !dbg !394
  %3 = fcmp ugt double %0, -1.000000e+00, !dbg !395
  br i1 %3, label %6, label %4, !dbg !396

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !397, !tbaa !128
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !397
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !397, !tbaa !133
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 1) #6, !dbg !400
  br label %85, !dbg !400

6:                                                ; preds = %2
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !402
  %8 = fcmp olt double %7, 0x3F48406003B2AE5A, !dbg !403
  br i1 %8, label %9, label %31, !dbg !404

9:                                                ; preds = %6
  tail call void @llvm.dbg.value(metadata double -5.000000e-01, metadata !375, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !379, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double -2.500000e-01, metadata !380, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !381, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !382, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !383, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double -1.250000e-01, metadata !384, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !385, metadata !DIExpression()), !dbg !405
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !386, metadata !DIExpression()), !dbg !405
  %10 = fmul double %0, 1.000000e-01, !dbg !406
  %11 = fsub double 0x3FBC71C71C71C71C, %10, !dbg !407
  %12 = fmul double %11, %0, !dbg !408
  %13 = fadd double %12, -1.250000e-01, !dbg !409
  %14 = fmul double %13, %0, !dbg !410
  %15 = fadd double %14, 0x3FC2492492492492, !dbg !411
  %16 = fmul double %15, %0, !dbg !412
  %17 = fadd double %16, 0xBFC5555555555555, !dbg !413
  tail call void @llvm.dbg.value(metadata double %17, metadata !387, metadata !DIExpression()), !dbg !405
  %18 = fmul double %0, %0, !dbg !414
  %19 = fmul double %17, %0, !dbg !415
  %20 = fadd double %19, 2.000000e-01, !dbg !416
  %21 = fmul double %20, %0, !dbg !417
  %22 = fadd double %21, -2.500000e-01, !dbg !418
  %23 = fmul double %22, %0, !dbg !419
  %24 = fadd double %23, 0x3FD5555555555555, !dbg !420
  %25 = fmul double %24, %0, !dbg !421
  %26 = fadd double %25, -5.000000e-01, !dbg !422
  %27 = fmul double %18, %26, !dbg !423
  store double %27, ptr %1, align 8, !dbg !424, !tbaa !128
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !425
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !426
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !427
  store double %29, ptr %30, align 8, !dbg !428, !tbaa !133
  br label %85

31:                                               ; preds = %6
  %32 = fcmp olt double %7, 5.000000e-01, !dbg !429
  br i1 %32, label %33, label %77, !dbg !430

33:                                               ; preds = %31
  %34 = fmul double %0, 8.000000e+00, !dbg !431
  %35 = fadd double %34, 1.000000e+00, !dbg !432
  %36 = fmul double %35, 5.000000e-01, !dbg !433
  %37 = fadd double %0, 2.000000e+00, !dbg !434
  %38 = fdiv double %36, %37, !dbg !435
  tail call void @llvm.dbg.value(metadata double %38, metadata !388, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata !295, metadata !296, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %38, metadata !304, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr undef, metadata !305, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !307, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !308, metadata !DIExpression()), !dbg !437
  %39 = fmul double %38, 2.000000e+00, !dbg !439
  %40 = fadd double %39, 1.000000e+00, !dbg !440
  %41 = fadd double %40, -1.000000e+00, !dbg !441
  %42 = fmul double %41, 5.000000e-01, !dbg !442
  call void @llvm.dbg.value(metadata double %42, metadata !309, metadata !DIExpression()), !dbg !437
  %43 = fmul double %42, 2.000000e+00, !dbg !443
  call void @llvm.dbg.value(metadata double %43, metadata !310, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !311, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 19, metadata !306, metadata !DIExpression()), !dbg !437
  br label %44, !dbg !444

44:                                               ; preds = %44, %33
  %45 = phi i64 [ 19, %33 ], [ %60, %44 ]
  %46 = phi double [ 0.000000e+00, %33 ], [ %53, %44 ]
  %47 = phi double [ 0.000000e+00, %33 ], [ %59, %44 ]
  %48 = phi double [ 0.000000e+00, %33 ], [ %46, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !306, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %46, metadata !307, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %47, metadata !311, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %48, metadata !308, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %46, metadata !312, metadata !DIExpression()), !dbg !445
  %49 = fmul double %43, %46, !dbg !446
  %50 = fsub double %49, %48, !dbg !447
  %51 = getelementptr inbounds double, ptr @lopxmx_data, i64 %45, !dbg !448
  %52 = load double, ptr %51, align 8, !dbg !448, !tbaa !330
  %53 = fadd double %50, %52, !dbg !449
  call void @llvm.dbg.value(metadata double %53, metadata !307, metadata !DIExpression()), !dbg !437
  %54 = tail call double @llvm.fabs.f64(double %49), !dbg !450
  %55 = tail call double @llvm.fabs.f64(double %48), !dbg !451
  %56 = fadd double %54, %55, !dbg !452
  %57 = tail call double @llvm.fabs.f64(double %52), !dbg !453
  %58 = fadd double %56, %57, !dbg !454
  %59 = fadd double %47, %58, !dbg !455
  call void @llvm.dbg.value(metadata double %59, metadata !311, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %46, metadata !308, metadata !DIExpression()), !dbg !437
  %60 = add nsw i64 %45, -1, !dbg !456
  call void @llvm.dbg.value(metadata i64 %60, metadata !306, metadata !DIExpression()), !dbg !437
  %61 = icmp ugt i64 %45, 1, !dbg !457
  br i1 %61, label %44, label %62, !dbg !444, !llvm.loop !458

62:                                               ; preds = %44
  call void @llvm.dbg.value(metadata double %53, metadata !316, metadata !DIExpression()), !dbg !460
  %63 = fmul double %42, %53, !dbg !461
  %64 = fsub double %63, %46, !dbg !462
  %65 = fadd double %64, 0xBFE1EFA01F2185C3, !dbg !463
  call void @llvm.dbg.value(metadata double %65, metadata !307, metadata !DIExpression()), !dbg !437
  %66 = tail call double @llvm.fabs.f64(double %63), !dbg !464
  %67 = tail call double @llvm.fabs.f64(double %46), !dbg !465
  %68 = fadd double %67, %66, !dbg !466
  %69 = fadd double %68, 0x3FE1EFA01F2185C3, !dbg !467
  %70 = fadd double %59, %69, !dbg !468
  call void @llvm.dbg.value(metadata double %70, metadata !311, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata double %65, metadata !391, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !436
  %71 = fmul double %70, 0x3CB0000000000000, !dbg !469
  %72 = fadd double %71, 0x3C6E5E46887B99D5, !dbg !470
  tail call void @llvm.dbg.value(metadata double %72, metadata !391, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !436
  %73 = fmul double %0, %0, !dbg !471
  %74 = fmul double %73, %65, !dbg !472
  store double %74, ptr %1, align 8, !dbg !473, !tbaa !128
  %75 = fmul double %73, %72, !dbg !474
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !475
  store double %75, ptr %76, align 8, !dbg !476, !tbaa !133
  br label %85

77:                                               ; preds = %31
  %78 = fadd double %0, 1.000000e+00, !dbg !477
  %79 = tail call double @log(double noundef %78) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata double %79, metadata !392, metadata !DIExpression()), !dbg !479
  %80 = fsub double %79, %0, !dbg !480
  store double %80, ptr %1, align 8, !dbg !481, !tbaa !128
  %81 = tail call double @llvm.fabs.f64(double %79), !dbg !482
  %82 = fadd double %7, %81, !dbg !483
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !484
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !485
  store double %83, ptr %84, align 8, !dbg !486, !tbaa !133
  br label %85

85:                                               ; preds = %4, %9, %62, %77
  %86 = phi i32 [ 1, %4 ], [ 0, %9 ], [ 0, %62 ], [ 0, %77 ], !dbg !487
  ret i32 %86, !dbg !488
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log(double noundef %0) local_unnamed_addr #0 !dbg !489 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !493, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata double %0, metadata !119, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata ptr undef, metadata !120, metadata !DIExpression()), !dbg !497
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !499
  br i1 %2, label %3, label %5, !dbg !500

3:                                                ; preds = %1
  %4 = tail call double @log(double noundef %0) #6, !dbg !501
  tail call void @llvm.dbg.value(metadata double %4, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !496
  tail call void @llvm.dbg.value(metadata double poison, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !496
  tail call void @llvm.dbg.value(metadata double %4, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !496
  br label %6, !dbg !502

5:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !496
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !496
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #6, !dbg !503
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 1, metadata !495, metadata !DIExpression()), !dbg !496
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 1) #6, !dbg !504
  br label %6, !dbg !504

6:                                                ; preds = %3, %5
  %7 = phi double [ %4, %3 ], [ 0x7FF8000000000000, %5 ]
  ret double %7, !dbg !508
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_abs(double noundef %0) local_unnamed_addr #0 !dbg !509 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !511, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata double %0, metadata !157, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr undef, metadata !158, metadata !DIExpression()), !dbg !515
  %2 = fcmp oeq double %0, 0.000000e+00, !dbg !517
  br i1 %2, label %6, label %3, !dbg !518

3:                                                ; preds = %1
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !519
  %5 = tail call double @log(double noundef %4) #6, !dbg !520
  tail call void @llvm.dbg.value(metadata double %5, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !514
  tail call void @llvm.dbg.value(metadata double poison, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !514
  tail call void @llvm.dbg.value(metadata double %5, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 0, metadata !513, metadata !DIExpression()), !dbg !514
  br label %7, !dbg !521

6:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !514
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !514
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 1) #6, !dbg !522
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !514
  tail call void @llvm.dbg.value(metadata i32 1, metadata !513, metadata !DIExpression()), !dbg !514
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #6, !dbg !523
  br label %7, !dbg !523

7:                                                ; preds = %3, %6
  %8 = phi double [ %5, %3 ], [ 0x7FF8000000000000, %6 ]
  ret double %8, !dbg !527
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_1plusx(double noundef %0) local_unnamed_addr #0 !dbg !528 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !531, metadata !DIExpression(), metadata !533, metadata ptr %2, metadata !DIExpression()), !dbg !534
  tail call void @llvm.dbg.value(metadata double %0, metadata !530, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !535
  %3 = call i32 @gsl_sf_log_1plusx_e(double noundef %0, ptr noundef nonnull %2), !dbg !535, !range !536
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !532, metadata !DIExpression()), !dbg !534
  %4 = icmp eq i32 %3, 0, !dbg !537
  br i1 %4, label %6, label %5, !dbg !535

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 1) #6, !dbg !539
  br label %6, !dbg !539

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !535, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !542
  ret double %7, !dbg !542
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_log_1plusx_mx(double noundef %0) local_unnamed_addr #0 !dbg !543 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !546, metadata !DIExpression(), metadata !548, metadata ptr %2, metadata !DIExpression()), !dbg !549
  tail call void @llvm.dbg.value(metadata double %0, metadata !545, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !550
  %3 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %0, ptr noundef nonnull %2), !dbg !550, !range !536
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !547, metadata !DIExpression()), !dbg !549
  %4 = icmp eq i32 %3, 0, !dbg !551
  br i1 %4, label %6, label %5, !dbg !550

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 265, i32 noundef 1) #6, !dbg !553
  br label %6, !dbg !553

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !550, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !556
  ret double %7, !dbg !556
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!136 = !DILocation(line: 119, column: 19, scope: !137)
!137 = distinct !DILexicalBlock(scope: !123, file: !2, line: 118, column: 8)
!138 = !DILocation(line: 119, column: 17, scope: !137)
!139 = !DILocation(line: 120, column: 43, scope: !137)
!140 = !DILocation(line: 120, column: 41, scope: !137)
!141 = !DILocation(line: 120, column: 13, scope: !137)
!142 = !DILocation(line: 120, column: 17, scope: !137)
!143 = !DILocation(line: 121, column: 5, scope: !137)
!144 = !DILocation(line: 0, scope: !123)
!145 = !DILocation(line: 123, column: 1, scope: !107)
!146 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !149, !38, !38}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!151 = !DISubprogram(name: "log", scope: !152, file: !152, line: 104, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!153 = !DISubroutineType(types: !154)
!154 = !{!84, !84}
!155 = distinct !DISubprogram(name: "gsl_sf_log_abs_e", scope: !2, file: !2, line: 127, type: !108, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !156)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "x", arg: 1, scope: !155, file: !2, line: 127, type: !110)
!158 = !DILocalVariable(name: "result", arg: 2, scope: !155, file: !2, line: 127, type: !111)
!159 = !DILocation(line: 0, scope: !155)
!160 = !DILocation(line: 131, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !2, line: 131, column: 6)
!162 = !DILocation(line: 131, column: 6, scope: !155)
!163 = !DILocation(line: 132, column: 5, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 132, column: 5)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 131, column: 16)
!166 = !DILocation(line: 132, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !2, line: 132, column: 5)
!168 = !DILocation(line: 135, column: 23, scope: !169)
!169 = distinct !DILexicalBlock(scope: !161, file: !2, line: 134, column: 8)
!170 = !DILocation(line: 135, column: 19, scope: !169)
!171 = !DILocation(line: 135, column: 17, scope: !169)
!172 = !DILocation(line: 136, column: 43, scope: !169)
!173 = !DILocation(line: 136, column: 41, scope: !169)
!174 = !DILocation(line: 136, column: 13, scope: !169)
!175 = !DILocation(line: 136, column: 17, scope: !169)
!176 = !DILocation(line: 137, column: 5, scope: !169)
!177 = !DILocation(line: 0, scope: !161)
!178 = !DILocation(line: 139, column: 1, scope: !155)
!179 = distinct !DISubprogram(name: "gsl_sf_complex_log_e", scope: !2, file: !2, line: 142, type: !180, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!38, !110, !110, !111, !111}
!182 = !{!183, !184, !185, !186, !187, !190, !191, !192}
!183 = !DILocalVariable(name: "zr", arg: 1, scope: !179, file: !2, line: 142, type: !110)
!184 = !DILocalVariable(name: "zi", arg: 2, scope: !179, file: !2, line: 142, type: !110)
!185 = !DILocalVariable(name: "lnr", arg: 3, scope: !179, file: !2, line: 142, type: !111)
!186 = !DILocalVariable(name: "theta", arg: 4, scope: !179, file: !2, line: 142, type: !111)
!187 = !DILocalVariable(name: "ax", scope: !188, file: !2, line: 148, type: !110)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 147, column: 30)
!189 = distinct !DILexicalBlock(scope: !179, file: !2, line: 147, column: 6)
!190 = !DILocalVariable(name: "ay", scope: !188, file: !2, line: 149, type: !110)
!191 = !DILocalVariable(name: "min", scope: !188, file: !2, line: 150, type: !110)
!192 = !DILocalVariable(name: "max", scope: !188, file: !2, line: 151, type: !110)
!193 = !DILocation(line: 0, scope: !179)
!194 = !DILocation(line: 147, column: 9, scope: !189)
!195 = !DILocation(line: 147, column: 16, scope: !189)
!196 = !DILocation(line: 148, column: 23, scope: !188)
!197 = !DILocation(line: 0, scope: !188)
!198 = !DILocation(line: 149, column: 23, scope: !188)
!199 = !DILocation(line: 150, column: 24, scope: !188)
!200 = !DILocation(line: 151, column: 24, scope: !188)
!201 = !DILocation(line: 152, column: 16, scope: !188)
!202 = !DILocation(line: 152, column: 47, scope: !188)
!203 = !DILocation(line: 152, column: 52, scope: !188)
!204 = !DILocation(line: 152, column: 41, scope: !188)
!205 = !DILocation(line: 152, column: 33, scope: !188)
!206 = !DILocation(line: 152, column: 31, scope: !188)
!207 = !DILocation(line: 152, column: 25, scope: !188)
!208 = !DILocation(line: 152, column: 14, scope: !188)
!209 = !DILocation(line: 153, column: 40, scope: !188)
!210 = !DILocation(line: 153, column: 38, scope: !188)
!211 = !DILocation(line: 153, column: 10, scope: !188)
!212 = !DILocation(line: 153, column: 14, scope: !188)
!213 = !DILocation(line: 154, column: 18, scope: !188)
!214 = !DILocation(line: 154, column: 16, scope: !188)
!215 = !DILocation(line: 155, column: 46, scope: !188)
!216 = !DILocation(line: 155, column: 36, scope: !188)
!217 = !DILocation(line: 155, column: 34, scope: !188)
!218 = !DILocation(line: 155, column: 12, scope: !188)
!219 = !DILocation(line: 155, column: 16, scope: !188)
!220 = !DILocation(line: 159, column: 5, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 159, column: 5)
!222 = distinct !DILexicalBlock(scope: !189, file: !2, line: 158, column: 8)
!223 = !DILocation(line: 159, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !2, line: 159, column: 5)
!225 = !DILocation(line: 0, scope: !189)
!226 = !DILocation(line: 161, column: 1, scope: !179)
!227 = !DISubprogram(name: "atan2", scope: !152, file: !152, line: 59, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!84, !84, !84}
!230 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !2, file: !2, line: 165, type: !108, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !231)
!231 = !{!232, !233, !234, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !250}
!232 = !DILocalVariable(name: "x", arg: 1, scope: !230, file: !2, line: 165, type: !110)
!233 = !DILocalVariable(name: "result", arg: 2, scope: !230, file: !2, line: 165, type: !111)
!234 = !DILocalVariable(name: "c1", scope: !235, file: !2, line: 173, type: !110)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 172, column: 44)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 172, column: 11)
!237 = distinct !DILexicalBlock(scope: !230, file: !2, line: 169, column: 6)
!238 = !DILocalVariable(name: "c2", scope: !235, file: !2, line: 174, type: !110)
!239 = !DILocalVariable(name: "c3", scope: !235, file: !2, line: 175, type: !110)
!240 = !DILocalVariable(name: "c4", scope: !235, file: !2, line: 176, type: !110)
!241 = !DILocalVariable(name: "c5", scope: !235, file: !2, line: 177, type: !110)
!242 = !DILocalVariable(name: "c6", scope: !235, file: !2, line: 178, type: !110)
!243 = !DILocalVariable(name: "c7", scope: !235, file: !2, line: 179, type: !110)
!244 = !DILocalVariable(name: "c8", scope: !235, file: !2, line: 180, type: !110)
!245 = !DILocalVariable(name: "c9", scope: !235, file: !2, line: 181, type: !110)
!246 = !DILocalVariable(name: "t", scope: !235, file: !2, line: 182, type: !110)
!247 = !DILocalVariable(name: "t", scope: !248, file: !2, line: 188, type: !84)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 187, column: 26)
!249 = distinct !DILexicalBlock(scope: !236, file: !2, line: 187, column: 11)
!250 = !DILocalVariable(name: "c", scope: !248, file: !2, line: 189, type: !112)
!251 = !DILocation(line: 0, scope: !230)
!252 = !DILocation(line: 169, column: 8, scope: !237)
!253 = !DILocation(line: 169, column: 6, scope: !230)
!254 = !DILocation(line: 170, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 170, column: 5)
!256 = distinct !DILexicalBlock(scope: !237, file: !2, line: 169, column: 17)
!257 = !DILocation(line: 170, column: 5, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !2, line: 170, column: 5)
!259 = !DILocation(line: 172, column: 11, scope: !236)
!260 = !DILocation(line: 172, column: 19, scope: !236)
!261 = !DILocation(line: 172, column: 11, scope: !237)
!262 = !DILocation(line: 0, scope: !235)
!263 = !DILocation(line: 182, column: 54, scope: !235)
!264 = !DILocation(line: 182, column: 51, scope: !235)
!265 = !DILocation(line: 182, column: 46, scope: !235)
!266 = !DILocation(line: 182, column: 43, scope: !235)
!267 = !DILocation(line: 182, column: 38, scope: !235)
!268 = !DILocation(line: 182, column: 35, scope: !235)
!269 = !DILocation(line: 182, column: 30, scope: !235)
!270 = !DILocation(line: 182, column: 27, scope: !235)
!271 = !DILocation(line: 183, column: 63, scope: !235)
!272 = !DILocation(line: 183, column: 60, scope: !235)
!273 = !DILocation(line: 183, column: 55, scope: !235)
!274 = !DILocation(line: 183, column: 52, scope: !235)
!275 = !DILocation(line: 183, column: 47, scope: !235)
!276 = !DILocation(line: 183, column: 44, scope: !235)
!277 = !DILocation(line: 183, column: 39, scope: !235)
!278 = !DILocation(line: 183, column: 36, scope: !235)
!279 = !DILocation(line: 183, column: 31, scope: !235)
!280 = !DILocation(line: 183, column: 28, scope: !235)
!281 = !DILocation(line: 183, column: 21, scope: !235)
!282 = !DILocation(line: 183, column: 17, scope: !235)
!283 = !DILocation(line: 184, column: 37, scope: !235)
!284 = !DILocation(line: 184, column: 35, scope: !235)
!285 = !DILocation(line: 184, column: 13, scope: !235)
!286 = !DILocation(line: 184, column: 17, scope: !235)
!287 = !DILocation(line: 187, column: 19, scope: !249)
!288 = !DILocation(line: 187, column: 11, scope: !236)
!289 = !DILocation(line: 188, column: 24, scope: !248)
!290 = !DILocation(line: 188, column: 27, scope: !248)
!291 = !DILocation(line: 188, column: 19, scope: !248)
!292 = !DILocation(line: 188, column: 36, scope: !248)
!293 = !DILocation(line: 188, column: 33, scope: !248)
!294 = !DILocation(line: 0, scope: !248)
!295 = !{}
!296 = !DILocalVariable(name: "cs", arg: 1, scope: !297, file: !298, line: 3, type: !301)
!297 = distinct !DISubprogram(name: "cheb_eval_e", scope: !298, file: !298, line: 3, type: !299, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !303)
!298 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!299 = !DISubroutineType(types: !300)
!300 = !{!38, !301, !110, !111}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!303 = !{!296, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316}
!304 = !DILocalVariable(name: "x", arg: 2, scope: !297, file: !298, line: 4, type: !110)
!305 = !DILocalVariable(name: "result", arg: 3, scope: !297, file: !298, line: 5, type: !111)
!306 = !DILocalVariable(name: "j", scope: !297, file: !298, line: 7, type: !38)
!307 = !DILocalVariable(name: "d", scope: !297, file: !298, line: 8, type: !84)
!308 = !DILocalVariable(name: "dd", scope: !297, file: !298, line: 9, type: !84)
!309 = !DILocalVariable(name: "y", scope: !297, file: !298, line: 11, type: !84)
!310 = !DILocalVariable(name: "y2", scope: !297, file: !298, line: 12, type: !84)
!311 = !DILocalVariable(name: "e", scope: !297, file: !298, line: 14, type: !84)
!312 = !DILocalVariable(name: "temp", scope: !313, file: !298, line: 17, type: !84)
!313 = distinct !DILexicalBlock(scope: !314, file: !298, line: 16, column: 33)
!314 = distinct !DILexicalBlock(scope: !315, file: !298, line: 16, column: 3)
!315 = distinct !DILexicalBlock(scope: !297, file: !298, line: 16, column: 3)
!316 = !DILocalVariable(name: "temp", scope: !317, file: !298, line: 24, type: !84)
!317 = distinct !DILexicalBlock(scope: !297, file: !298, line: 23, column: 3)
!318 = !DILocation(line: 0, scope: !297, inlinedAt: !319)
!319 = distinct !DILocation(line: 190, column: 5, scope: !248)
!320 = !DILocation(line: 11, column: 19, scope: !297, inlinedAt: !319)
!321 = !DILocation(line: 11, column: 22, scope: !297, inlinedAt: !319)
!322 = !DILocation(line: 11, column: 30, scope: !297, inlinedAt: !319)
!323 = !DILocation(line: 11, column: 39, scope: !297, inlinedAt: !319)
!324 = !DILocation(line: 12, column: 19, scope: !297, inlinedAt: !319)
!325 = !DILocation(line: 16, column: 3, scope: !315, inlinedAt: !319)
!326 = !DILocation(line: 0, scope: !313, inlinedAt: !319)
!327 = !DILocation(line: 18, column: 11, scope: !313, inlinedAt: !319)
!328 = !DILocation(line: 18, column: 14, scope: !313, inlinedAt: !319)
!329 = !DILocation(line: 18, column: 21, scope: !313, inlinedAt: !319)
!330 = !{!130, !130, i64 0}
!331 = !DILocation(line: 18, column: 19, scope: !313, inlinedAt: !319)
!332 = !DILocation(line: 19, column: 10, scope: !313, inlinedAt: !319)
!333 = !DILocation(line: 19, column: 26, scope: !313, inlinedAt: !319)
!334 = !DILocation(line: 19, column: 24, scope: !313, inlinedAt: !319)
!335 = !DILocation(line: 19, column: 37, scope: !313, inlinedAt: !319)
!336 = !DILocation(line: 19, column: 35, scope: !313, inlinedAt: !319)
!337 = !DILocation(line: 19, column: 7, scope: !313, inlinedAt: !319)
!338 = !DILocation(line: 16, column: 29, scope: !314, inlinedAt: !319)
!339 = !DILocation(line: 16, column: 23, scope: !314, inlinedAt: !319)
!340 = distinct !{!340, !325, !341, !342}
!341 = !DILocation(line: 21, column: 3, scope: !315, inlinedAt: !319)
!342 = !{!"llvm.loop.mustprogress"}
!343 = !DILocation(line: 0, scope: !317, inlinedAt: !319)
!344 = !DILocation(line: 25, column: 10, scope: !317, inlinedAt: !319)
!345 = !DILocation(line: 25, column: 13, scope: !317, inlinedAt: !319)
!346 = !DILocation(line: 25, column: 18, scope: !317, inlinedAt: !319)
!347 = !DILocation(line: 26, column: 10, scope: !317, inlinedAt: !319)
!348 = !DILocation(line: 26, column: 25, scope: !317, inlinedAt: !319)
!349 = !DILocation(line: 26, column: 23, scope: !317, inlinedAt: !319)
!350 = !DILocation(line: 26, column: 34, scope: !317, inlinedAt: !319)
!351 = !DILocation(line: 26, column: 7, scope: !317, inlinedAt: !319)
!352 = !DILocation(line: 30, column: 33, scope: !297, inlinedAt: !319)
!353 = !DILocation(line: 30, column: 37, scope: !297, inlinedAt: !319)
!354 = !DILocation(line: 191, column: 21, scope: !248)
!355 = !DILocation(line: 191, column: 17, scope: !248)
!356 = !DILocation(line: 192, column: 26, scope: !248)
!357 = !DILocation(line: 192, column: 19, scope: !248)
!358 = !DILocation(line: 192, column: 13, scope: !248)
!359 = !DILocation(line: 192, column: 17, scope: !248)
!360 = !DILocation(line: 196, column: 27, scope: !361)
!361 = distinct !DILexicalBlock(scope: !249, file: !2, line: 195, column: 8)
!362 = !DILocation(line: 196, column: 19, scope: !361)
!363 = !DILocation(line: 196, column: 17, scope: !361)
!364 = !DILocation(line: 197, column: 37, scope: !361)
!365 = !DILocation(line: 197, column: 35, scope: !361)
!366 = !DILocation(line: 197, column: 13, scope: !361)
!367 = !DILocation(line: 197, column: 17, scope: !361)
!368 = !DILocation(line: 198, column: 5, scope: !361)
!369 = !DILocation(line: 0, scope: !237)
!370 = !DILocation(line: 200, column: 1, scope: !230)
!371 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx_e", scope: !2, file: !2, line: 204, type: !108, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !372)
!372 = !{!373, !374, !375, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !391, !392}
!373 = !DILocalVariable(name: "x", arg: 1, scope: !371, file: !2, line: 204, type: !110)
!374 = !DILocalVariable(name: "result", arg: 2, scope: !371, file: !2, line: 204, type: !111)
!375 = !DILocalVariable(name: "c1", scope: !376, file: !2, line: 212, type: !110)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 211, column: 44)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 211, column: 11)
!378 = distinct !DILexicalBlock(scope: !371, file: !2, line: 208, column: 6)
!379 = !DILocalVariable(name: "c2", scope: !376, file: !2, line: 213, type: !110)
!380 = !DILocalVariable(name: "c3", scope: !376, file: !2, line: 214, type: !110)
!381 = !DILocalVariable(name: "c4", scope: !376, file: !2, line: 215, type: !110)
!382 = !DILocalVariable(name: "c5", scope: !376, file: !2, line: 216, type: !110)
!383 = !DILocalVariable(name: "c6", scope: !376, file: !2, line: 217, type: !110)
!384 = !DILocalVariable(name: "c7", scope: !376, file: !2, line: 218, type: !110)
!385 = !DILocalVariable(name: "c8", scope: !376, file: !2, line: 219, type: !110)
!386 = !DILocalVariable(name: "c9", scope: !376, file: !2, line: 220, type: !110)
!387 = !DILocalVariable(name: "t", scope: !376, file: !2, line: 221, type: !110)
!388 = !DILocalVariable(name: "t", scope: !389, file: !2, line: 227, type: !84)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 226, column: 26)
!390 = distinct !DILexicalBlock(scope: !377, file: !2, line: 226, column: 11)
!391 = !DILocalVariable(name: "c", scope: !389, file: !2, line: 228, type: !112)
!392 = !DILocalVariable(name: "lterm", scope: !393, file: !2, line: 235, type: !110)
!393 = distinct !DILexicalBlock(scope: !390, file: !2, line: 234, column: 8)
!394 = !DILocation(line: 0, scope: !371)
!395 = !DILocation(line: 208, column: 8, scope: !378)
!396 = !DILocation(line: 208, column: 6, scope: !371)
!397 = !DILocation(line: 209, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 209, column: 5)
!399 = distinct !DILexicalBlock(scope: !378, file: !2, line: 208, column: 17)
!400 = !DILocation(line: 209, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !2, line: 209, column: 5)
!402 = !DILocation(line: 211, column: 11, scope: !377)
!403 = !DILocation(line: 211, column: 19, scope: !377)
!404 = !DILocation(line: 211, column: 11, scope: !378)
!405 = !DILocation(line: 0, scope: !376)
!406 = !DILocation(line: 221, column: 54, scope: !376)
!407 = !DILocation(line: 221, column: 51, scope: !376)
!408 = !DILocation(line: 221, column: 46, scope: !376)
!409 = !DILocation(line: 221, column: 43, scope: !376)
!410 = !DILocation(line: 221, column: 38, scope: !376)
!411 = !DILocation(line: 221, column: 35, scope: !376)
!412 = !DILocation(line: 221, column: 30, scope: !376)
!413 = !DILocation(line: 221, column: 27, scope: !376)
!414 = !DILocation(line: 222, column: 20, scope: !376)
!415 = !DILocation(line: 222, column: 56, scope: !376)
!416 = !DILocation(line: 222, column: 53, scope: !376)
!417 = !DILocation(line: 222, column: 48, scope: !376)
!418 = !DILocation(line: 222, column: 45, scope: !376)
!419 = !DILocation(line: 222, column: 40, scope: !376)
!420 = !DILocation(line: 222, column: 37, scope: !376)
!421 = !DILocation(line: 222, column: 32, scope: !376)
!422 = !DILocation(line: 222, column: 29, scope: !376)
!423 = !DILocation(line: 222, column: 23, scope: !376)
!424 = !DILocation(line: 222, column: 17, scope: !376)
!425 = !DILocation(line: 223, column: 37, scope: !376)
!426 = !DILocation(line: 223, column: 35, scope: !376)
!427 = !DILocation(line: 223, column: 13, scope: !376)
!428 = !DILocation(line: 223, column: 17, scope: !376)
!429 = !DILocation(line: 226, column: 19, scope: !390)
!430 = !DILocation(line: 226, column: 11, scope: !377)
!431 = !DILocation(line: 227, column: 24, scope: !389)
!432 = !DILocation(line: 227, column: 27, scope: !389)
!433 = !DILocation(line: 227, column: 19, scope: !389)
!434 = !DILocation(line: 227, column: 36, scope: !389)
!435 = !DILocation(line: 227, column: 33, scope: !389)
!436 = !DILocation(line: 0, scope: !389)
!437 = !DILocation(line: 0, scope: !297, inlinedAt: !438)
!438 = distinct !DILocation(line: 229, column: 5, scope: !389)
!439 = !DILocation(line: 11, column: 19, scope: !297, inlinedAt: !438)
!440 = !DILocation(line: 11, column: 22, scope: !297, inlinedAt: !438)
!441 = !DILocation(line: 11, column: 30, scope: !297, inlinedAt: !438)
!442 = !DILocation(line: 11, column: 39, scope: !297, inlinedAt: !438)
!443 = !DILocation(line: 12, column: 19, scope: !297, inlinedAt: !438)
!444 = !DILocation(line: 16, column: 3, scope: !315, inlinedAt: !438)
!445 = !DILocation(line: 0, scope: !313, inlinedAt: !438)
!446 = !DILocation(line: 18, column: 11, scope: !313, inlinedAt: !438)
!447 = !DILocation(line: 18, column: 14, scope: !313, inlinedAt: !438)
!448 = !DILocation(line: 18, column: 21, scope: !313, inlinedAt: !438)
!449 = !DILocation(line: 18, column: 19, scope: !313, inlinedAt: !438)
!450 = !DILocation(line: 19, column: 10, scope: !313, inlinedAt: !438)
!451 = !DILocation(line: 19, column: 26, scope: !313, inlinedAt: !438)
!452 = !DILocation(line: 19, column: 24, scope: !313, inlinedAt: !438)
!453 = !DILocation(line: 19, column: 37, scope: !313, inlinedAt: !438)
!454 = !DILocation(line: 19, column: 35, scope: !313, inlinedAt: !438)
!455 = !DILocation(line: 19, column: 7, scope: !313, inlinedAt: !438)
!456 = !DILocation(line: 16, column: 29, scope: !314, inlinedAt: !438)
!457 = !DILocation(line: 16, column: 23, scope: !314, inlinedAt: !438)
!458 = distinct !{!458, !444, !459, !342}
!459 = !DILocation(line: 21, column: 3, scope: !315, inlinedAt: !438)
!460 = !DILocation(line: 0, scope: !317, inlinedAt: !438)
!461 = !DILocation(line: 25, column: 10, scope: !317, inlinedAt: !438)
!462 = !DILocation(line: 25, column: 13, scope: !317, inlinedAt: !438)
!463 = !DILocation(line: 25, column: 18, scope: !317, inlinedAt: !438)
!464 = !DILocation(line: 26, column: 10, scope: !317, inlinedAt: !438)
!465 = !DILocation(line: 26, column: 25, scope: !317, inlinedAt: !438)
!466 = !DILocation(line: 26, column: 23, scope: !317, inlinedAt: !438)
!467 = !DILocation(line: 26, column: 34, scope: !317, inlinedAt: !438)
!468 = !DILocation(line: 26, column: 7, scope: !317, inlinedAt: !438)
!469 = !DILocation(line: 30, column: 33, scope: !297, inlinedAt: !438)
!470 = !DILocation(line: 30, column: 37, scope: !297, inlinedAt: !438)
!471 = !DILocation(line: 230, column: 20, scope: !389)
!472 = !DILocation(line: 230, column: 23, scope: !389)
!473 = !DILocation(line: 230, column: 17, scope: !389)
!474 = !DILocation(line: 231, column: 23, scope: !389)
!475 = !DILocation(line: 231, column: 13, scope: !389)
!476 = !DILocation(line: 231, column: 17, scope: !389)
!477 = !DILocation(line: 235, column: 34, scope: !393)
!478 = !DILocation(line: 235, column: 26, scope: !393)
!479 = !DILocation(line: 0, scope: !393)
!480 = !DILocation(line: 236, column: 25, scope: !393)
!481 = !DILocation(line: 236, column: 17, scope: !393)
!482 = !DILocation(line: 237, column: 38, scope: !393)
!483 = !DILocation(line: 237, column: 50, scope: !393)
!484 = !DILocation(line: 237, column: 35, scope: !393)
!485 = !DILocation(line: 237, column: 13, scope: !393)
!486 = !DILocation(line: 237, column: 17, scope: !393)
!487 = !DILocation(line: 0, scope: !378)
!488 = !DILocation(line: 240, column: 1, scope: !371)
!489 = distinct !DISubprogram(name: "gsl_sf_log", scope: !2, file: !2, line: 248, type: !490, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!84, !110}
!492 = !{!493, !494, !495}
!493 = !DILocalVariable(name: "x", arg: 1, scope: !489, file: !2, line: 248, type: !110)
!494 = !DILocalVariable(name: "result", scope: !489, file: !2, line: 250, type: !112)
!495 = !DILocalVariable(name: "status", scope: !489, file: !2, line: 250, type: !38)
!496 = !DILocation(line: 0, scope: !489)
!497 = !DILocation(line: 0, scope: !107, inlinedAt: !498)
!498 = distinct !DILocation(line: 250, column: 3, scope: !489)
!499 = !DILocation(line: 115, column: 8, scope: !123, inlinedAt: !498)
!500 = !DILocation(line: 115, column: 6, scope: !107, inlinedAt: !498)
!501 = !DILocation(line: 119, column: 19, scope: !137, inlinedAt: !498)
!502 = !DILocation(line: 250, column: 3, scope: !489)
!503 = !DILocation(line: 116, column: 5, scope: !135, inlinedAt: !498)
!504 = !DILocation(line: 250, column: 3, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 250, column: 3)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 250, column: 3)
!507 = distinct !DILexicalBlock(scope: !489, file: !2, line: 250, column: 3)
!508 = !DILocation(line: 251, column: 1, scope: !489)
!509 = distinct !DISubprogram(name: "gsl_sf_log_abs", scope: !2, file: !2, line: 253, type: !490, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !510)
!510 = !{!511, !512, !513}
!511 = !DILocalVariable(name: "x", arg: 1, scope: !509, file: !2, line: 253, type: !110)
!512 = !DILocalVariable(name: "result", scope: !509, file: !2, line: 255, type: !112)
!513 = !DILocalVariable(name: "status", scope: !509, file: !2, line: 255, type: !38)
!514 = !DILocation(line: 0, scope: !509)
!515 = !DILocation(line: 0, scope: !155, inlinedAt: !516)
!516 = distinct !DILocation(line: 255, column: 3, scope: !509)
!517 = !DILocation(line: 131, column: 8, scope: !161, inlinedAt: !516)
!518 = !DILocation(line: 131, column: 6, scope: !155, inlinedAt: !516)
!519 = !DILocation(line: 135, column: 23, scope: !169, inlinedAt: !516)
!520 = !DILocation(line: 135, column: 19, scope: !169, inlinedAt: !516)
!521 = !DILocation(line: 255, column: 3, scope: !509)
!522 = !DILocation(line: 132, column: 5, scope: !167, inlinedAt: !516)
!523 = !DILocation(line: 255, column: 3, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 255, column: 3)
!525 = distinct !DILexicalBlock(scope: !526, file: !2, line: 255, column: 3)
!526 = distinct !DILexicalBlock(scope: !509, file: !2, line: 255, column: 3)
!527 = !DILocation(line: 256, column: 1, scope: !509)
!528 = distinct !DISubprogram(name: "gsl_sf_log_1plusx", scope: !2, file: !2, line: 258, type: !490, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !529)
!529 = !{!530, !531, !532}
!530 = !DILocalVariable(name: "x", arg: 1, scope: !528, file: !2, line: 258, type: !110)
!531 = !DILocalVariable(name: "result", scope: !528, file: !2, line: 260, type: !112)
!532 = !DILocalVariable(name: "status", scope: !528, file: !2, line: 260, type: !38)
!533 = distinct !DIAssignID()
!534 = !DILocation(line: 0, scope: !528)
!535 = !DILocation(line: 260, column: 3, scope: !528)
!536 = !{i32 0, i32 2}
!537 = !DILocation(line: 260, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !528, file: !2, line: 260, column: 3)
!539 = !DILocation(line: 260, column: 3, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 260, column: 3)
!541 = distinct !DILexicalBlock(scope: !538, file: !2, line: 260, column: 3)
!542 = !DILocation(line: 261, column: 1, scope: !528)
!543 = distinct !DISubprogram(name: "gsl_sf_log_1plusx_mx", scope: !2, file: !2, line: 263, type: !490, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !544)
!544 = !{!545, !546, !547}
!545 = !DILocalVariable(name: "x", arg: 1, scope: !543, file: !2, line: 263, type: !110)
!546 = !DILocalVariable(name: "result", scope: !543, file: !2, line: 265, type: !112)
!547 = !DILocalVariable(name: "status", scope: !543, file: !2, line: 265, type: !38)
!548 = distinct !DIAssignID()
!549 = !DILocation(line: 0, scope: !543)
!550 = !DILocation(line: 265, column: 3, scope: !543)
!551 = !DILocation(line: 265, column: 3, scope: !552)
!552 = distinct !DILexicalBlock(scope: !543, file: !2, line: 265, column: 3)
!553 = !DILocation(line: 265, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 265, column: 3)
!555 = distinct !DILexicalBlock(scope: !552, file: !2, line: 265, column: 3)
!556 = !DILocation(line: 266, column: 1, scope: !543)
