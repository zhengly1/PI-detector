; ModuleID = 'laguerre.c'
source_filename = "laguerre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"laguerre.c\00", align 1, !dbg !7
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_laguerre_n_e(n, a, x, &result)\00", align 1, !dbg !12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !76 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !89, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.value(metadata double %1, metadata !90, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !91, metadata !DIExpression()), !dbg !92
  %4 = fadd double %0, 1.000000e+00, !dbg !93
  %5 = fsub double %4, %1, !dbg !95
  store double %5, ptr %2, align 8, !dbg !96, !tbaa !97
  %6 = tail call double @llvm.fabs.f64(double %0), !dbg !102
  %7 = fadd double %6, 1.000000e+00, !dbg !103
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !104
  %9 = fadd double %7, %8, !dbg !105
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !106
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !107
  store double %10, ptr %11, align 8, !dbg !108, !tbaa !109
  ret i32 0, !dbg !110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_2_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !111 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %1, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !115, metadata !DIExpression()), !dbg !121
  %4 = fcmp oeq double %0, -2.000000e+00, !dbg !122
  br i1 %4, label %5, label %10, !dbg !123

5:                                                ; preds = %3
  %6 = fmul double %1, 5.000000e-01, !dbg !124
  %7 = fmul double %6, %1, !dbg !126
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !127
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !128
  br label %34, !dbg !129

10:                                               ; preds = %3
  %11 = fadd double %0, 2.000000e+00, !dbg !130
  %12 = fmul double %11, 5.000000e-01, !dbg !131
  %13 = fadd double %0, 1.000000e+00, !dbg !132
  %14 = fmul double %13, %12, !dbg !133
  tail call void @llvm.dbg.value(metadata double %14, metadata !116, metadata !DIExpression()), !dbg !134
  %15 = fneg double %11, !dbg !135
  tail call void @llvm.dbg.value(metadata double %15, metadata !119, metadata !DIExpression()), !dbg !134
  %16 = fdiv double -5.000000e-01, %11, !dbg !136
  tail call void @llvm.dbg.value(metadata double %16, metadata !120, metadata !DIExpression()), !dbg !134
  %17 = fmul double %15, %1, !dbg !137
  %18 = fmul double %16, %1, !dbg !138
  %19 = fadd double %18, 1.000000e+00, !dbg !139
  %20 = fmul double %17, %19, !dbg !140
  %21 = fadd double %14, %20, !dbg !141
  %22 = tail call double @llvm.fabs.f64(double %14), !dbg !142
  %23 = tail call double @llvm.fabs.f64(double %17), !dbg !143
  %24 = fmul double %23, 2.000000e+00, !dbg !144
  %25 = tail call double @llvm.fabs.f64(double %18), !dbg !145
  %26 = fmul double %25, 2.000000e+00, !dbg !146
  %27 = fadd double %26, 1.000000e+00, !dbg !147
  %28 = fmul double %24, %27, !dbg !148
  %29 = fadd double %22, %28, !dbg !149
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !150
  %31 = tail call double @llvm.fabs.f64(double %21), !dbg !151
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !152
  %33 = fadd double %32, %30, !dbg !153
  br label %34

34:                                               ; preds = %10, %5
  %35 = phi double [ %7, %5 ], [ %21, %10 ], !dbg !154
  %36 = phi double [ %9, %5 ], [ %33, %10 ], !dbg !154
  store double %35, ptr %2, align 8, !dbg !154
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !154
  store double %36, ptr %37, align 8, !dbg !154
  ret i32 0, !dbg !155
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_3_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !156 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !158, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %1, metadata !159, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !170
  %4 = fcmp oeq double %0, -2.000000e+00, !dbg !171
  br i1 %4, label %5, label %19, !dbg !172

5:                                                ; preds = %3
  %6 = fmul double %1, %1, !dbg !173
  %7 = fdiv double %6, 6.000000e+00, !dbg !174
  tail call void @llvm.dbg.value(metadata double %7, metadata !161, metadata !DIExpression()), !dbg !175
  %8 = fsub double 3.000000e+00, %1, !dbg !176
  %9 = fmul double %8, %7, !dbg !177
  store double %9, ptr %2, align 8, !dbg !178, !tbaa !97
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !179
  %11 = fadd double %10, 3.000000e+00, !dbg !180
  %12 = fmul double %7, %11, !dbg !181
  %13 = fmul double %12, 2.000000e+00, !dbg !182
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !183
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !184
  %16 = tail call double @llvm.fabs.f64(double %9), !dbg !185
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !186
  %18 = fadd double %14, %17, !dbg !187
  store double %18, ptr %15, align 8, !dbg !187, !tbaa !109
  br label %65

19:                                               ; preds = %3
  %20 = fcmp oeq double %0, -3.000000e+00, !dbg !188
  br i1 %20, label %21, label %28, !dbg !189

21:                                               ; preds = %19
  %22 = fneg double %1, !dbg !190
  %23 = fmul double %22, %1, !dbg !192
  %24 = fdiv double %23, 6.000000e+00, !dbg !193
  store double %24, ptr %2, align 8, !dbg !194, !tbaa !97
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !195
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !196
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !197
  store double %26, ptr %27, align 8, !dbg !198, !tbaa !109
  br label %65, !dbg !199

28:                                               ; preds = %19
  %29 = fadd double %0, 3.000000e+00, !dbg !200
  %30 = fadd double %0, 2.000000e+00, !dbg !201
  %31 = fmul double %29, %30, !dbg !202
  %32 = fadd double %0, 1.000000e+00, !dbg !203
  %33 = fmul double %32, %31, !dbg !204
  %34 = fdiv double %33, 6.000000e+00, !dbg !205
  tail call void @llvm.dbg.value(metadata double %34, metadata !164, metadata !DIExpression()), !dbg !206
  %35 = fmul double %34, -3.000000e+00, !dbg !207
  %36 = fdiv double %35, %32, !dbg !208
  tail call void @llvm.dbg.value(metadata double %36, metadata !167, metadata !DIExpression()), !dbg !206
  %37 = fdiv double -1.000000e+00, %30, !dbg !209
  tail call void @llvm.dbg.value(metadata double %37, metadata !168, metadata !DIExpression()), !dbg !206
  %38 = fmul double %29, 3.000000e+00, !dbg !210
  %39 = fdiv double -1.000000e+00, %38, !dbg !211
  tail call void @llvm.dbg.value(metadata double %39, metadata !169, metadata !DIExpression()), !dbg !206
  %40 = fmul double %36, %1, !dbg !212
  %41 = fmul double %37, %1, !dbg !213
  %42 = fmul double %39, %1, !dbg !214
  %43 = fadd double %42, 1.000000e+00, !dbg !215
  %44 = fmul double %41, %43, !dbg !216
  %45 = fadd double %44, 1.000000e+00, !dbg !217
  %46 = fmul double %40, %45, !dbg !218
  %47 = fadd double %34, %46, !dbg !219
  store double %47, ptr %2, align 8, !dbg !220, !tbaa !97
  %48 = tail call double @llvm.fabs.f64(double %42), !dbg !221
  %49 = fmul double %48, 2.000000e+00, !dbg !222
  %50 = fadd double %49, 1.000000e+00, !dbg !223
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !224
  %52 = tail call double @llvm.fabs.f64(double %41), !dbg !225
  %53 = fmul double %52, 2.000000e+00, !dbg !226
  %54 = fmul double %53, %50, !dbg !227
  %55 = fadd double %54, 1.000000e+00, !dbg !228
  %56 = tail call double @llvm.fabs.f64(double %34), !dbg !229
  %57 = tail call double @llvm.fabs.f64(double %40), !dbg !230
  %58 = fmul double %57, 2.000000e+00, !dbg !231
  %59 = fmul double %58, %55, !dbg !232
  %60 = fadd double %56, %59, !dbg !233
  %61 = fmul double %60, 0x3CC0000000000000, !dbg !234
  %62 = tail call double @llvm.fabs.f64(double %47), !dbg !235
  %63 = fmul double %62, 0x3CC0000000000000, !dbg !236
  %64 = fadd double %63, %61, !dbg !237
  store double %64, ptr %51, align 8, !dbg !237, !tbaa !109
  br label %65

65:                                               ; preds = %28, %21, %5
  ret i32 0, !dbg !238
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_laguerre_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #3 !dbg !239 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !255, metadata !DIExpression(), metadata !266, metadata ptr %5, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !244, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %1, metadata !245, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %2, metadata !246, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !247, metadata !DIExpression()), !dbg !268
  %6 = icmp slt i32 %0, 0, !dbg !269
  br i1 %6, label %7, label %9, !dbg !270

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !271, !tbaa !97
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !271
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !271, !tbaa !109
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 244, i32 noundef 1) #9, !dbg !274
  br label %186, !dbg !274

9:                                                ; preds = %4
  switch i32 %0, label %21 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !276

10:                                               ; preds = %9
  store double 1.000000e+00, ptr %3, align 8, !dbg !277, !tbaa !97
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !279
  store double 0.000000e+00, ptr %11, align 8, !dbg !280, !tbaa !109
  br label %186, !dbg !281

12:                                               ; preds = %9
  %13 = fadd double %1, 1.000000e+00, !dbg !282
  %14 = fsub double %13, %2, !dbg !284
  store double %14, ptr %3, align 8, !dbg !285, !tbaa !97
  %15 = tail call double @llvm.fabs.f64(double %1), !dbg !286
  %16 = fadd double %15, 1.000000e+00, !dbg !287
  %17 = tail call double @llvm.fabs.f64(double %2), !dbg !288
  %18 = fadd double %16, %17, !dbg !289
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !290
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !291
  store double %19, ptr %20, align 8, !dbg !292, !tbaa !109
  br label %186, !dbg !293

21:                                               ; preds = %9
  %22 = fcmp oeq double %2, 0.000000e+00, !dbg !294
  br i1 %22, label %23, label %83, !dbg !295

23:                                               ; preds = %21
  %24 = fadd double %1, 1.000000e+00, !dbg !296
  tail call void @llvm.dbg.value(metadata double %24, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 2, metadata !254, metadata !DIExpression()), !dbg !297
  %25 = add nsw i32 %0, -1, !dbg !298
  %26 = add nsw i32 %0, -2, !dbg !298
  %27 = and i32 %25, 3, !dbg !298
  %28 = icmp ult i32 %26, 3, !dbg !298
  br i1 %28, label %57, label %29, !dbg !298

29:                                               ; preds = %23
  %30 = and i32 %25, -4, !dbg !298
  br label %31, !dbg !298

31:                                               ; preds = %31, %29
  %32 = phi double [ %24, %29 ], [ %53, %31 ]
  %33 = phi i32 [ 2, %29 ], [ %54, %31 ]
  %34 = phi i32 [ 0, %29 ], [ %55, %31 ]
  tail call void @llvm.dbg.value(metadata double %32, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !254, metadata !DIExpression()), !dbg !297
  %35 = sitofp i32 %33 to double, !dbg !300
  %36 = fadd double %35, %1, !dbg !303
  %37 = fdiv double %36, %35, !dbg !304
  %38 = fmul double %32, %37, !dbg !305
  tail call void @llvm.dbg.value(metadata double %38, metadata !248, metadata !DIExpression()), !dbg !297
  %39 = or disjoint i32 %33, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !254, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double %38, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !254, metadata !DIExpression()), !dbg !297
  %40 = sitofp i32 %39 to double, !dbg !300
  %41 = fadd double %40, %1, !dbg !303
  %42 = fdiv double %41, %40, !dbg !304
  %43 = fmul double %38, %42, !dbg !305
  tail call void @llvm.dbg.value(metadata double %43, metadata !248, metadata !DIExpression()), !dbg !297
  %44 = add nuw i32 %33, 2, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !254, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double %43, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !254, metadata !DIExpression()), !dbg !297
  %45 = sitofp i32 %44 to double, !dbg !300
  %46 = fadd double %45, %1, !dbg !303
  %47 = fdiv double %46, %45, !dbg !304
  %48 = fmul double %43, %47, !dbg !305
  tail call void @llvm.dbg.value(metadata double %48, metadata !248, metadata !DIExpression()), !dbg !297
  %49 = add nuw i32 %33, 3, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !254, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double %48, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !254, metadata !DIExpression()), !dbg !297
  %50 = sitofp i32 %49 to double, !dbg !300
  %51 = fadd double %50, %1, !dbg !303
  %52 = fdiv double %51, %50, !dbg !304
  %53 = fmul double %48, %52, !dbg !305
  tail call void @llvm.dbg.value(metadata double %53, metadata !248, metadata !DIExpression()), !dbg !297
  %54 = add nuw i32 %33, 4, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !254, metadata !DIExpression()), !dbg !297
  %55 = add i32 %34, 4, !dbg !298
  %56 = icmp eq i32 %55, %30, !dbg !298
  br i1 %56, label %57, label %31, !dbg !298, !llvm.loop !307

57:                                               ; preds = %31, %23
  %58 = phi double [ undef, %23 ], [ %53, %31 ]
  %59 = phi double [ %24, %23 ], [ %53, %31 ]
  %60 = phi i32 [ 2, %23 ], [ %54, %31 ]
  %61 = icmp eq i32 %27, 0, !dbg !298
  br i1 %61, label %73, label %62, !dbg !298

62:                                               ; preds = %57, %62
  %63 = phi double [ %69, %62 ], [ %59, %57 ]
  %64 = phi i32 [ %70, %62 ], [ %60, %57 ]
  %65 = phi i32 [ %71, %62 ], [ 0, %57 ]
  tail call void @llvm.dbg.value(metadata double %63, metadata !248, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !254, metadata !DIExpression()), !dbg !297
  %66 = sitofp i32 %64 to double, !dbg !300
  %67 = fadd double %66, %1, !dbg !303
  %68 = fdiv double %67, %66, !dbg !304
  %69 = fmul double %63, %68, !dbg !305
  tail call void @llvm.dbg.value(metadata double %69, metadata !248, metadata !DIExpression()), !dbg !297
  %70 = add nuw i32 %64, 1, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !254, metadata !DIExpression()), !dbg !297
  %71 = add i32 %65, 1, !dbg !298
  %72 = icmp eq i32 %71, %27, !dbg !298
  br i1 %72, label %73, label %62, !dbg !298, !llvm.loop !310

73:                                               ; preds = %62, %57
  %74 = phi double [ %58, %57 ], [ %69, %62 ], !dbg !305
  store double %74, ptr %3, align 8, !dbg !312, !tbaa !97
  %75 = sitofp i32 %0 to double, !dbg !313
  %76 = fadd double %75, 1.000000e+00, !dbg !314
  %77 = fmul double %76, 2.000000e+00, !dbg !315
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !316
  %79 = tail call double @llvm.fabs.f64(double %74), !dbg !317
  %80 = fmul double %78, %79, !dbg !318
  %81 = fadd double %80, 0x3CB0000000000000, !dbg !319
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !320
  store double %81, ptr %82, align 8, !dbg !321, !tbaa !109
  br label %186

83:                                               ; preds = %21
  %84 = fcmp olt double %2, 0.000000e+00, !dbg !322
  %85 = fcmp ogt double %1, -1.000000e+00
  %86 = and i1 %85, %84, !dbg !323
  br i1 %86, label %87, label %89, !dbg !323

87:                                               ; preds = %83
  %88 = tail call fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !324
  br label %186, !dbg !326

89:                                               ; preds = %83
  %90 = icmp ult i32 %0, 5, !dbg !327
  br i1 %90, label %97, label %91, !dbg !328

91:                                               ; preds = %89
  %92 = fcmp ogt double %2, 0.000000e+00, !dbg !329
  br i1 %92, label %93, label %116, !dbg !330

93:                                               ; preds = %91
  %94 = xor i32 %0, -1, !dbg !331
  %95 = sitofp i32 %94 to double, !dbg !332
  %96 = fcmp ogt double %95, %1, !dbg !333
  br i1 %96, label %97, label %102, !dbg !334

97:                                               ; preds = %93, %89
  %98 = tail call fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !335
  %99 = icmp eq i32 %98, 0, !dbg !338
  br i1 %99, label %186, label %100, !dbg !339

100:                                              ; preds = %97
  %101 = tail call fastcc i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !340
  br label %186, !dbg !341

102:                                              ; preds = %93
  %103 = sitofp i32 %0 to double, !dbg !342
  %104 = icmp ugt i32 %0, 10000000, !dbg !343
  %105 = and i1 %85, %104, !dbg !344
  br i1 %105, label %106, label %114, !dbg !344

106:                                              ; preds = %102
  %107 = fadd double %1, 1.000000e+00, !dbg !345
  %108 = fmul double %107, 2.000000e+00, !dbg !346
  %109 = fmul double %103, 4.000000e+00, !dbg !347
  %110 = fadd double %109, %108, !dbg !348
  %111 = fcmp ogt double %110, %2, !dbg !349
  br i1 %111, label %112, label %114, !dbg !350

112:                                              ; preds = %106
  %113 = tail call fastcc i32 @laguerre_large_n(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !351
  br label %186, !dbg !353

114:                                              ; preds = %106, %102
  %115 = fcmp ult double %1, 0.000000e+00, !dbg !354
  br i1 %115, label %184, label %119, !dbg !355

116:                                              ; preds = %91
  %117 = sitofp i32 %0 to double, !dbg !342
  %118 = fcmp ult double %1, 0.000000e+00, !dbg !354
  br i1 %118, label %184, label %119, !dbg !355

119:                                              ; preds = %114, %116
  %120 = phi double [ %117, %116 ], [ %103, %114 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !356
  %121 = call i32 @gsl_sf_laguerre_2_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !357
  tail call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !267
  %122 = load double, ptr %5, align 8, !dbg !358, !tbaa !97
  tail call void @llvm.dbg.value(metadata double %122, metadata !263, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 2, metadata !265, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !267
  %123 = and i32 %0, 1, !dbg !359
  %124 = fadd double %1, 1.000000e+00, !dbg !361
  %125 = fsub double %124, %2, !dbg !362
  tail call void @llvm.dbg.value(metadata double %125, metadata !262, metadata !DIExpression()), !dbg !267
  %126 = and i32 %0, 2147483646, !dbg !359
  %127 = add nsw i32 %126, -4
  br label %128, !dbg !359

128:                                              ; preds = %128, %119
  %129 = phi i32 [ 2, %119 ], [ %156, %128 ]
  %130 = phi double [ %122, %119 ], [ %155, %128 ]
  %131 = phi double [ %125, %119 ], [ %143, %128 ]
  %132 = phi i32 [ 0, %119 ], [ %157, %128 ]
  tail call void @llvm.dbg.value(metadata i32 %129, metadata !265, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %130, metadata !263, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %131, metadata !262, metadata !DIExpression()), !dbg !267
  %133 = sitofp i32 %129 to double, !dbg !363
  %134 = fadd double %133, %1, !dbg !366
  %135 = fmul double %133, 2.000000e+00, !dbg !367
  %136 = fadd double %135, %1, !dbg !368
  %137 = fadd double %136, 1.000000e+00, !dbg !369
  %138 = fsub double %137, %2, !dbg !370
  %139 = fmul double %130, %138, !dbg !371
  %140 = fmul double %131, %134, !dbg !372
  %141 = fsub double %139, %140, !dbg !372
  %142 = fadd double %133, 1.000000e+00, !dbg !373
  %143 = fdiv double %141, %142, !dbg !374
  tail call void @llvm.dbg.value(metadata double %143, metadata !264, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %130, metadata !262, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %143, metadata !263, metadata !DIExpression()), !dbg !267
  %144 = or disjoint i32 %129, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !265, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !265, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %143, metadata !263, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %130, metadata !262, metadata !DIExpression()), !dbg !267
  %145 = sitofp i32 %144 to double, !dbg !363
  %146 = fadd double %145, %1, !dbg !366
  %147 = fmul double %145, 2.000000e+00, !dbg !367
  %148 = fadd double %147, %1, !dbg !368
  %149 = fadd double %148, 1.000000e+00, !dbg !369
  %150 = fsub double %149, %2, !dbg !370
  %151 = fmul double %143, %150, !dbg !371
  %152 = fmul double %130, %146, !dbg !372
  %153 = fsub double %151, %152, !dbg !372
  %154 = fadd double %145, 1.000000e+00, !dbg !373
  %155 = fdiv double %153, %154, !dbg !374
  tail call void @llvm.dbg.value(metadata double %155, metadata !264, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %143, metadata !262, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %155, metadata !263, metadata !DIExpression()), !dbg !267
  %156 = add nuw nsw i32 %129, 2, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !265, metadata !DIExpression()), !dbg !267
  %157 = add i32 %132, 2, !dbg !359
  %158 = icmp eq i32 %132, %127, !dbg !359
  br i1 %158, label %159, label %128, !dbg !359, !llvm.loop !376

159:                                              ; preds = %128
  %160 = sitofp i32 %156 to double, !dbg !363
  %161 = icmp eq i32 %123, 0, !dbg !359
  br i1 %161, label %173, label %162, !dbg !359

162:                                              ; preds = %159
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !265, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %155, metadata !263, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %143, metadata !262, metadata !DIExpression()), !dbg !267
  %163 = fadd double %160, %1, !dbg !366
  %164 = fmul double %160, 2.000000e+00, !dbg !367
  %165 = fadd double %164, %1, !dbg !368
  %166 = fadd double %165, 1.000000e+00, !dbg !369
  %167 = fsub double %166, %2, !dbg !370
  %168 = fmul double %155, %167, !dbg !371
  %169 = fmul double %143, %163, !dbg !372
  %170 = fsub double %168, %169, !dbg !372
  %171 = fadd double %160, 1.000000e+00, !dbg !373
  %172 = fdiv double %170, %171, !dbg !374
  tail call void @llvm.dbg.value(metadata double %172, metadata !264, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %155, metadata !262, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %172, metadata !263, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !265, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !267
  br label %173, !dbg !378

173:                                              ; preds = %159, %162
  %174 = phi double [ %155, %159 ], [ %172, %162 ], !dbg !374
  store double %174, ptr %3, align 8, !dbg !378, !tbaa !97
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !379
  %176 = load double, ptr %175, align 8, !dbg !379, !tbaa !109
  %177 = fdiv double %176, %122, !dbg !380
  %178 = tail call double @llvm.fabs.f64(double %177), !dbg !381
  %179 = fadd double %178, 0x3CB0000000000000, !dbg !382
  %180 = fmul double %120, %179, !dbg !383
  %181 = tail call double @llvm.fabs.f64(double %174), !dbg !384
  %182 = fmul double %181, %180, !dbg !385
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !386
  store double %182, ptr %183, align 8, !dbg !387, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !388
  br label %186

184:                                              ; preds = %114, %116
  %185 = tail call fastcc i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !389
  br label %186, !dbg !391

186:                                              ; preds = %97, %7, %10, %12, %73, %87, %100, %112, %173, %184
  %187 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %12 ], [ 0, %73 ], [ %88, %87 ], [ %101, %100 ], [ %113, %112 ], [ 0, %173 ], [ %185, %184 ], [ 0, %97 ], !dbg !392
  ret i32 %187, !dbg !393
}

declare !dbg !394 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #3 !dbg !399 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !405, metadata !DIExpression(), metadata !424, metadata ptr %5, metadata !DIExpression()), !dbg !425
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !406, metadata !DIExpression(), metadata !426, metadata ptr %6, metadata !DIExpression()), !dbg !425
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !427
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !427, metadata ptr %7, metadata !DIExpression()), !dbg !425
  %8 = alloca double, align 8, !DIAssignID !428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !408, metadata !DIExpression(), metadata !428, metadata ptr %8, metadata !DIExpression()), !dbg !425
  %9 = alloca double, align 8, !DIAssignID !429
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !429, metadata ptr %9, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !401, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %1, metadata !402, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %2, metadata !403, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !404, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !430
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !431
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9, !dbg !433
  %10 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %5) #9, !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !410, metadata !DIExpression()), !dbg !425
  %11 = fadd double %1, 1.000000e+00, !dbg !435
  %12 = sitofp i32 %0 to double, !dbg !436
  %13 = fadd double %11, %12, !dbg !437
  %14 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %8) #9, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !411, metadata !DIExpression()), !dbg !425
  %15 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %9) #9, !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !412, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !413, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !414, metadata !DIExpression()), !dbg !425
  %16 = load double, ptr %6, align 8, !dbg !440, !tbaa !97
  %17 = load double, ptr %7, align 8, !dbg !441, !tbaa !97
  %18 = fsub double %16, %17, !dbg !442
  %19 = load double, ptr %5, align 8, !dbg !443, !tbaa !97
  %20 = fsub double %18, %19, !dbg !444
  tail call void @llvm.dbg.value(metadata double %20, metadata !417, metadata !DIExpression()), !dbg !425
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !445
  %22 = load double, ptr %21, align 8, !dbg !445, !tbaa !109
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !446
  %24 = load double, ptr %23, align 8, !dbg !446, !tbaa !109
  %25 = fadd double %22, %24, !dbg !447
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !448
  %27 = load double, ptr %26, align 8, !dbg !448, !tbaa !109
  %28 = fadd double %25, %27, !dbg !449
  %29 = call double @llvm.fabs.f64(double %20), !dbg !450
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !451
  %31 = fadd double %30, %28, !dbg !452
  tail call void @llvm.dbg.value(metadata double %31, metadata !418, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !425
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !413, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !414, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !416, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !425
  %32 = icmp sgt i32 %0, 0, !dbg !453
  br i1 %32, label %33, label %60, !dbg !454

33:                                               ; preds = %4, %52
  %34 = phi double [ %54, %52 ], [ 1.000000e+00, %4 ]
  %35 = phi double [ %58, %52 ], [ 0.000000e+00, %4 ]
  %36 = phi i32 [ %37, %52 ], [ %0, %4 ]
  %37 = add nsw i32 %36, -1, !dbg !455
  tail call void @llvm.dbg.value(metadata double %34, metadata !413, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %35, metadata !414, metadata !DIExpression()), !dbg !425
  %38 = sub nsw i32 %37, %0, !dbg !456
  %39 = sitofp i32 %38 to double, !dbg !457
  %40 = sitofp i32 %37 to double, !dbg !458
  %41 = fadd double %11, %40, !dbg !459
  %42 = fdiv double %39, %41, !dbg !460
  %43 = sitofp i32 %36 to double, !dbg !461
  %44 = fdiv double %2, %43, !dbg !462
  %45 = fmul double %44, %42, !dbg !463
  tail call void @llvm.dbg.value(metadata double %45, metadata !419, metadata !DIExpression()), !dbg !464
  %46 = fdiv double 1.000000e+00, %34, !dbg !465
  %47 = fadd double %46, %45, !dbg !466
  tail call void @llvm.dbg.value(metadata double %47, metadata !423, metadata !DIExpression()), !dbg !464
  %48 = fdiv double 0x7FECCCCCCCCCCCCC, %34, !dbg !467
  %49 = fcmp ule double %47, %48, !dbg !469
  br i1 %49, label %52, label %50, !dbg !470

50:                                               ; preds = %33
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !471, !tbaa !97
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !471
  store double 0x7FF0000000000000, ptr %51, align 8, !dbg !471, !tbaa !109
  tail call void @llvm.dbg.value(metadata double poison, metadata !413, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !425
  br label %70

52:                                               ; preds = %33
  %53 = fmul double %34, %45, !dbg !474
  %54 = fadd double %53, 1.000000e+00, !dbg !476
  tail call void @llvm.dbg.value(metadata double %54, metadata !413, metadata !DIExpression()), !dbg !425
  %55 = call double @llvm.fabs.f64(double %45), !dbg !477
  %56 = fmul double %35, %55, !dbg !478
  %57 = fadd double %56, 0x3CB0000000000000, !dbg !479
  %58 = fadd double %35, %57, !dbg !480
  tail call void @llvm.dbg.value(metadata double %58, metadata !414, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !416, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !425
  %59 = icmp ugt i32 %36, 1, !dbg !453
  br i1 %59, label %33, label %60, !dbg !454

60:                                               ; preds = %52, %4
  %61 = phi double [ 0.000000e+00, %4 ], [ %58, %52 ], !dbg !481
  %62 = phi double [ 1.000000e+00, %4 ], [ %54, %52 ], !dbg !482
  %63 = call i32 @gsl_sf_exp_mult_err_e(double noundef %20, double noundef %31, double noundef %62, double noundef %61, ptr noundef %3) #9, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !415, metadata !DIExpression()), !dbg !425
  %64 = icmp eq i32 %63, 0, !dbg !484
  br i1 %64, label %65, label %70, !dbg !484

65:                                               ; preds = %60
  %66 = icmp eq i32 %10, 0, !dbg !484
  br i1 %66, label %67, label %70, !dbg !484

67:                                               ; preds = %65
  %68 = icmp eq i32 %14, 0, !dbg !484
  %69 = select i1 %68, i32 %15, i32 %14, !dbg !484
  br label %70, !dbg !484

70:                                               ; preds = %50, %60, %65, %67
  %71 = phi i32 [ %63, %60 ], [ %10, %65 ], [ %69, %67 ], [ 16, %50 ], !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !485
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !485
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !485
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !485
  ret i32 %71, !dbg !485
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !dbg !486 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !495, metadata !DIExpression(), metadata !503, metadata ptr %5, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !488, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double %1, metadata !489, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double %2, metadata !490, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !491, metadata !DIExpression()), !dbg !504
  %6 = fadd double %1, 1.000000e+00, !dbg !505
  tail call void @llvm.dbg.value(metadata double %6, metadata !492, metadata !DIExpression()), !dbg !504
  %7 = fneg double %2, !dbg !506
  tail call void @llvm.dbg.value(metadata double %7, metadata !493, metadata !DIExpression()), !dbg !504
  %8 = fcmp olt double %2, 0.000000e+00, !dbg !507
  br i1 %8, label %13, label %9, !dbg !508

9:                                                ; preds = %4
  %10 = and i32 %0, 1, !dbg !509
  %11 = icmp eq i32 %10, 0, !dbg !509
  %12 = select i1 %11, double 1.000000e+00, double -1.000000e+00, !dbg !509
  br label %13, !dbg !508

13:                                               ; preds = %4, %9
  %14 = phi double [ %12, %9 ], [ 1.000000e+00, %4 ], !dbg !508
  tail call void @llvm.dbg.value(metadata double %14, metadata !494, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !510
  %15 = tail call double @llvm.fabs.f64(double %2), !dbg !511
  %16 = call i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %15, ptr noundef nonnull %5) #9, !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !496, metadata !DIExpression()), !dbg !504
  switch i32 %16, label %51 [
    i32 0, label %17
    i32 16, label %50
  ], !dbg !513

17:                                               ; preds = %13
  %18 = load double, ptr %5, align 8, !dbg !514, !tbaa !97
  %19 = fmul double %14, %18, !dbg !515
  tail call void @llvm.dbg.value(metadata double %19, metadata !497, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %19, metadata !500, metadata !DIExpression()), !dbg !516
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !517
  %21 = load double, ptr %20, align 8, !dbg !517, !tbaa !109
  tail call void @llvm.dbg.value(metadata double %21, metadata !501, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !516
  tail call void @llvm.dbg.value(metadata double %19, metadata !500, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %19, metadata !497, metadata !DIExpression()), !dbg !516
  %22 = icmp sgt i32 %0, 0, !dbg !518
  br i1 %22, label %23, label %43, !dbg !521

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %28, %23 ], [ %0, %17 ]
  %25 = phi double [ %41, %23 ], [ %21, %17 ]
  %26 = phi double [ %38, %23 ], [ %19, %17 ]
  %27 = phi double [ %37, %23 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !516
  tail call void @llvm.dbg.value(metadata double %25, metadata !501, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %26, metadata !500, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata double %27, metadata !497, metadata !DIExpression()), !dbg !516
  %28 = add nsw i32 %24, -1, !dbg !522
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !502, metadata !DIExpression()), !dbg !516
  %29 = sitofp i32 %28 to double, !dbg !523
  %30 = fadd double %6, %29, !dbg !525
  %31 = sub nsw i32 %0, %28, !dbg !526
  %32 = sitofp i32 %31 to double, !dbg !527
  %33 = fdiv double %30, %32, !dbg !528
  %34 = fadd double %29, 1.000000e+00, !dbg !529
  %35 = fmul double %34, %33, !dbg !530
  %36 = fdiv double %35, %7, !dbg !531
  %37 = fmul double %27, %36, !dbg !532
  tail call void @llvm.dbg.value(metadata double %37, metadata !497, metadata !DIExpression()), !dbg !516
  %38 = fadd double %26, %37, !dbg !533
  tail call void @llvm.dbg.value(metadata double %38, metadata !500, metadata !DIExpression()), !dbg !516
  %39 = call double @llvm.fabs.f64(double %37), !dbg !534
  %40 = fmul double %39, 0x3CD0000000000000, !dbg !535
  %41 = fadd double %25, %40, !dbg !536
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !502, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !516
  tail call void @llvm.dbg.value(metadata double %41, metadata !501, metadata !DIExpression()), !dbg !516
  %42 = icmp ugt i32 %24, 1, !dbg !518
  br i1 %42, label %23, label %43, !dbg !521, !llvm.loop !537

43:                                               ; preds = %23, %17
  %44 = phi double [ %19, %17 ], [ %38, %23 ], !dbg !516
  %45 = phi double [ %21, %17 ], [ %41, %23 ], !dbg !516
  store double %44, ptr %3, align 8, !dbg !539, !tbaa !97
  %46 = call double @llvm.fabs.f64(double %44), !dbg !540
  %47 = fmul double %46, 0x3CC0000000000000, !dbg !541
  %48 = fadd double %45, %47, !dbg !542
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !543
  store double %48, ptr %49, align 8, !dbg !544, !tbaa !109
  br label %52

50:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !545
  br label %52, !dbg !548

51:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !549
  br label %52, !dbg !551

52:                                               ; preds = %51, %50, %43
  %53 = phi i32 [ 0, %43 ], [ 16, %50 ], [ %16, %51 ], !dbg !552
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !553
  ret i32 %53, !dbg !553
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @laguerre_large_n(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #3 !dbg !554 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !567, metadata !DIExpression(), metadata !582, metadata ptr %5, metadata !DIExpression()), !dbg !583
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !584
  call void @llvm.dbg.assign(metadata i1 undef, metadata !568, metadata !DIExpression(), metadata !584, metadata ptr %6, metadata !DIExpression()), !dbg !583
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !556, metadata !DIExpression()), !dbg !583
  tail call void @llvm.dbg.value(metadata double %1, metadata !557, metadata !DIExpression()), !dbg !583
  tail call void @llvm.dbg.value(metadata double %2, metadata !558, metadata !DIExpression()), !dbg !583
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !559, metadata !DIExpression()), !dbg !583
  %7 = sub nsw i32 0, %0, !dbg !585
  %8 = sitofp i32 %7 to double, !dbg !585
  tail call void @llvm.dbg.value(metadata double %8, metadata !560, metadata !DIExpression()), !dbg !583
  %9 = fadd double %1, 1.000000e+00, !dbg !586
  tail call void @llvm.dbg.value(metadata double %9, metadata !561, metadata !DIExpression()), !dbg !583
  %10 = fmul double %9, 2.000000e+00, !dbg !587
  %11 = fmul double %8, 4.000000e+00, !dbg !588
  %12 = fsub double %10, %11, !dbg !589
  tail call void @llvm.dbg.value(metadata double %12, metadata !562, metadata !DIExpression()), !dbg !583
  %13 = fdiv double %2, %12, !dbg !590
  tail call void @llvm.dbg.value(metadata double %13, metadata !563, metadata !DIExpression()), !dbg !583
  %14 = fsub double 1.000000e+00, %13, !dbg !591
  tail call void @llvm.dbg.value(metadata double %14, metadata !564, metadata !DIExpression()), !dbg !583
  %15 = tail call double @sqrt(double noundef %13) #9, !dbg !592
  %16 = tail call double @asin(double noundef %15) #9, !dbg !593
  tail call void @llvm.dbg.value(metadata double %16, metadata !565, metadata !DIExpression()), !dbg !583
  %17 = fmul double %12, 0x4003BD3CC9BE45DE, !dbg !594
  %18 = fmul double %12, %17, !dbg !595
  %19 = fmul double %13, %18, !dbg !596
  %20 = fmul double %14, %19, !dbg !597
  tail call void @llvm.dbg.value(metadata double %20, metadata !566, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !598
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !599
  %21 = sitofp i32 %0 to double, !dbg !600
  %22 = fadd double %9, %21, !dbg !601
  %23 = call i32 @gsl_sf_lngamma_e(double noundef %22, ptr noundef nonnull %5) #9, !dbg !602
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !569, metadata !DIExpression()), !dbg !583
  %24 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %6) #9, !dbg !603
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !570, metadata !DIExpression()), !dbg !583
  %25 = fsub double 1.000000e+00, %9, !dbg !604
  %26 = fmul double %25, 5.000000e-01, !dbg !605
  %27 = fmul double %2, 2.500000e-01, !dbg !606
  %28 = fmul double %27, %12, !dbg !607
  %29 = call double @log(double noundef %28) #9, !dbg !608
  %30 = fmul double %26, %29, !dbg !609
  tail call void @llvm.dbg.value(metadata double %30, metadata !571, metadata !DIExpression()), !dbg !583
  %31 = call double @log(double noundef %20) #9, !dbg !610
  %32 = fmul double %31, 2.500000e-01, !dbg !611
  tail call void @llvm.dbg.value(metadata double %32, metadata !572, metadata !DIExpression()), !dbg !583
  %33 = load double, ptr %5, align 8, !dbg !612, !tbaa !97
  %34 = load double, ptr %6, align 8, !dbg !613, !tbaa !97
  %35 = fsub double %33, %34, !dbg !614
  %36 = fmul double %2, 5.000000e-01, !dbg !615
  %37 = fadd double %36, %35, !dbg !616
  %38 = fadd double %30, %37, !dbg !617
  %39 = fsub double %38, %32, !dbg !618
  tail call void @llvm.dbg.value(metadata double %39, metadata !573, metadata !DIExpression()), !dbg !583
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !619
  %41 = load double, ptr %40, align 8, !dbg !619, !tbaa !109
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !620
  %43 = load double, ptr %42, align 8, !dbg !620, !tbaa !109
  %44 = fadd double %41, %43, !dbg !621
  %45 = call double @llvm.fabs.f64(double %30), !dbg !622
  %46 = call double @llvm.fabs.f64(double %32), !dbg !623
  %47 = fadd double %45, %46, !dbg !624
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !625
  %49 = fadd double %48, %44, !dbg !626
  tail call void @llvm.dbg.value(metadata double %49, metadata !574, metadata !DIExpression()), !dbg !583
  %50 = fmul double %12, 2.500000e-01, !dbg !627
  %51 = fmul double %16, 2.000000e+00, !dbg !628
  %52 = call double @sin(double noundef %51) #9, !dbg !629
  %53 = fadd double %51, %52, !dbg !630
  %54 = fmul double %50, %53, !dbg !631
  tail call void @llvm.dbg.value(metadata double %54, metadata !575, metadata !DIExpression()), !dbg !583
  %55 = call double @sin(double noundef %54) #9, !dbg !632
  %56 = fneg double %55, !dbg !633
  tail call void @llvm.dbg.value(metadata double %56, metadata !576, metadata !DIExpression()), !dbg !583
  %57 = fmul double %14, 4.000000e+00, !dbg !634
  %58 = fdiv double 5.000000e+00, %57, !dbg !635
  %59 = fmul double %9, 3.000000e+00, !dbg !636
  %60 = fmul double %9, %59, !dbg !637
  %61 = fmul double %9, 6.000000e+00, !dbg !638
  %62 = fsub double %60, %61, !dbg !639
  %63 = fadd double %62, 2.000000e+00, !dbg !640
  %64 = fmul double %63, %14, !dbg !641
  %65 = fadd double %64, %58, !dbg !642
  %66 = fadd double %65, -1.000000e+00, !dbg !643
  tail call void @llvm.dbg.value(metadata double poison, metadata !577, metadata !DIExpression()), !dbg !583
  %67 = fmul double %66, 0xBFB5555555555555, !dbg !644
  %68 = call double @cos(double noundef %54) #9, !dbg !645
  %69 = fmul double %67, %68, !dbg !646
  %70 = call double @sin(double noundef %51) #9, !dbg !647
  %71 = fmul double %50, %70, !dbg !648
  %72 = fdiv double %69, %71, !dbg !649
  tail call void @llvm.dbg.value(metadata double %72, metadata !578, metadata !DIExpression()), !dbg !583
  %73 = fsub double %72, %55, !dbg !650
  tail call void @llvm.dbg.value(metadata double %73, metadata !579, metadata !DIExpression()), !dbg !583
  %74 = fmul double %72, %72, !dbg !651
  %75 = call double @llvm.fabs.f64(double %56), !dbg !652
  %76 = call double @llvm.fabs.f64(double %72), !dbg !653
  %77 = fadd double %75, %76, !dbg !654
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !655
  %79 = fadd double %74, %78, !dbg !656
  tail call void @llvm.dbg.value(metadata double %79, metadata !580, metadata !DIExpression()), !dbg !583
  %80 = call i32 @gsl_sf_exp_mult_err_e(double noundef %39, double noundef %49, double noundef %73, double noundef %79, ptr noundef %3) #9, !dbg !657
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !581, metadata !DIExpression()), !dbg !583
  %81 = load double, ptr %3, align 8, !dbg !658, !tbaa !97
  %82 = call double @llvm.fabs.f64(double %81), !dbg !659
  %83 = fmul double %82, 0x3E60000000000000, !dbg !660
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !661
  %85 = load double, ptr %84, align 8, !dbg !662, !tbaa !109
  %86 = fadd double %85, %83, !dbg !662
  store double %86, ptr %84, align 8, !dbg !662, !tbaa !109
  %87 = icmp eq i32 %80, 0, !dbg !663
  %88 = icmp eq i32 %24, 0, !dbg !663
  %89 = select i1 %88, i32 %23, i32 %24, !dbg !663
  %90 = select i1 %87, i32 %89, i32 %80, !dbg !663
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !664
  ret i32 %90, !dbg !665
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_laguerre_1(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !666 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !670, metadata !DIExpression()), !dbg !674
  tail call void @llvm.dbg.value(metadata double %1, metadata !671, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata double %0, metadata !89, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %1, metadata !90, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata ptr undef, metadata !91, metadata !DIExpression()), !dbg !675
  %3 = fadd double %0, 1.000000e+00, !dbg !677
  %4 = fsub double %3, %1, !dbg !678
  tail call void @llvm.dbg.value(metadata double %4, metadata !672, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !674
  tail call void @llvm.dbg.value(metadata double poison, metadata !672, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !674
  tail call void @llvm.dbg.value(metadata i32 0, metadata !673, metadata !DIExpression()), !dbg !674
  ret double %4, !dbg !679
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_laguerre_2(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !680 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !682, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata double %1, metadata !683, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata double %0, metadata !113, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata double %1, metadata !114, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata ptr undef, metadata !115, metadata !DIExpression()), !dbg !687
  %3 = fcmp oeq double %0, -2.000000e+00, !dbg !689
  br i1 %3, label %4, label %7, !dbg !690

4:                                                ; preds = %2
  %5 = fmul double %1, 5.000000e-01, !dbg !691
  %6 = fmul double %5, %1, !dbg !692
  br label %19, !dbg !693

7:                                                ; preds = %2
  %8 = fadd double %0, 2.000000e+00, !dbg !694
  %9 = fmul double %8, 5.000000e-01, !dbg !695
  %10 = fadd double %0, 1.000000e+00, !dbg !696
  %11 = fmul double %10, %9, !dbg !697
  call void @llvm.dbg.value(metadata double %11, metadata !116, metadata !DIExpression()), !dbg !698
  %12 = fneg double %8, !dbg !699
  call void @llvm.dbg.value(metadata double %12, metadata !119, metadata !DIExpression()), !dbg !698
  %13 = fdiv double 5.000000e-01, %8, !dbg !700
  call void @llvm.dbg.value(metadata double %13, metadata !120, metadata !DIExpression()), !dbg !698
  %14 = fmul double %12, %1, !dbg !701
  %15 = fmul double %13, %1, !dbg !702
  %16 = fsub double 1.000000e+00, %15, !dbg !703
  %17 = fmul double %14, %16, !dbg !704
  %18 = fadd double %11, %17, !dbg !705
  br label %19

19:                                               ; preds = %4, %7
  %20 = phi double [ %6, %4 ], [ %18, %7 ], !dbg !706
  tail call void @llvm.dbg.value(metadata double %20, metadata !684, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !686
  tail call void @llvm.dbg.value(metadata double poison, metadata !684, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !686
  tail call void @llvm.dbg.value(metadata i32 0, metadata !685, metadata !DIExpression()), !dbg !686
  ret double %20, !dbg !707
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_laguerre_3(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !708 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !712, metadata !DIExpression(), metadata !714, metadata ptr %3, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %0, metadata !710, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %1, metadata !711, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !716
  %4 = call i32 @gsl_sf_laguerre_3_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 0, metadata !713, metadata !DIExpression()), !dbg !715
  %5 = load double, ptr %3, align 8, !dbg !716, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !717
  ret double %5, !dbg !717
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_laguerre_n(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 !dbg !718 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !725, metadata !DIExpression(), metadata !727, metadata ptr %4, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !722, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %1, metadata !723, metadata !DIExpression()), !dbg !728
  tail call void @llvm.dbg.value(metadata double %2, metadata !724, metadata !DIExpression()), !dbg !728
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !729
  %5 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !729
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !726, metadata !DIExpression()), !dbg !728
  %6 = icmp eq i32 %5, 0, !dbg !730
  br i1 %6, label %8, label %7, !dbg !729

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 334, i32 noundef %5) #9, !dbg !732
  br label %8, !dbg !732

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !729, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !735
  ret double %9, !dbg !735
}

declare !dbg !736 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !742 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !746 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !750 i32 @gsl_sf_taylorcoeff_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !753 double @asin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !757 double @sqrt(double noundef) local_unnamed_addr #6

declare !dbg !758 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !761 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !762 double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !763 double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "laguerre.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c5a290d7ce6958bcc8af086b9673dfc2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, globals: !58, splitDebugInlining: false, nameTableKind: None)
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
!58 = !{!0, !7, !59, !64, !66, !12}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 35)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !61, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !61, isLocal: true, isDefinition: true)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!75 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!76 = distinct !DISubprogram(name: "gsl_sf_laguerre_1_e", scope: !2, file: !2, line: 174, type: !77, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !88)
!77 = !DISubroutineType(types: !78)
!78 = !{!21, !79, !79, !81}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !83, line: 37, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !83, line: 38, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !84, file: !83, line: 39, baseType: !80, size: 64, offset: 64)
!88 = !{!89, !90, !91}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !76, file: !2, line: 174, type: !79)
!90 = !DILocalVariable(name: "x", arg: 2, scope: !76, file: !2, line: 174, type: !79)
!91 = !DILocalVariable(name: "result", arg: 3, scope: !76, file: !2, line: 174, type: !81)
!92 = !DILocation(line: 0, scope: !76)
!93 = !DILocation(line: 179, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !76, file: !2, line: 178, column: 3)
!95 = !DILocation(line: 179, column: 27, scope: !94)
!96 = !DILocation(line: 179, column: 17, scope: !94)
!97 = !{!98, !99, i64 0}
!98 = !{!"gsl_sf_result_struct", !99, i64 0, !99, i64 8}
!99 = !{!"double", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !DILocation(line: 180, column: 50, scope: !94)
!103 = !DILocation(line: 180, column: 48, scope: !94)
!104 = !DILocation(line: 180, column: 60, scope: !94)
!105 = !DILocation(line: 180, column: 58, scope: !94)
!106 = !DILocation(line: 180, column: 41, scope: !94)
!107 = !DILocation(line: 180, column: 13, scope: !94)
!108 = !DILocation(line: 180, column: 17, scope: !94)
!109 = !{!98, !99, i64 8}
!110 = !DILocation(line: 181, column: 5, scope: !94)
!111 = distinct !DISubprogram(name: "gsl_sf_laguerre_2_e", scope: !2, file: !2, line: 186, type: !77, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !112)
!112 = !{!113, !114, !115, !116, !119, !120}
!113 = !DILocalVariable(name: "a", arg: 1, scope: !111, file: !2, line: 186, type: !79)
!114 = !DILocalVariable(name: "x", arg: 2, scope: !111, file: !2, line: 186, type: !79)
!115 = !DILocalVariable(name: "result", arg: 3, scope: !111, file: !2, line: 186, type: !81)
!116 = !DILocalVariable(name: "c0", scope: !117, file: !2, line: 196, type: !80)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 195, column: 8)
!118 = distinct !DILexicalBlock(scope: !111, file: !2, line: 190, column: 6)
!119 = !DILocalVariable(name: "c1", scope: !117, file: !2, line: 197, type: !80)
!120 = !DILocalVariable(name: "c2", scope: !117, file: !2, line: 198, type: !80)
!121 = !DILocation(line: 0, scope: !111)
!122 = !DILocation(line: 190, column: 8, scope: !118)
!123 = !DILocation(line: 190, column: 6, scope: !111)
!124 = !DILocation(line: 191, column: 22, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !2, line: 190, column: 17)
!126 = !DILocation(line: 191, column: 24, scope: !125)
!127 = !DILocation(line: 192, column: 43, scope: !125)
!128 = !DILocation(line: 192, column: 41, scope: !125)
!129 = !DILocation(line: 193, column: 5, scope: !125)
!130 = !DILocation(line: 196, column: 27, scope: !117)
!131 = !DILocation(line: 196, column: 21, scope: !117)
!132 = !DILocation(line: 196, column: 35, scope: !117)
!133 = !DILocation(line: 196, column: 30, scope: !117)
!134 = !DILocation(line: 0, scope: !117)
!135 = !DILocation(line: 197, column: 17, scope: !117)
!136 = !DILocation(line: 198, column: 21, scope: !117)
!137 = !DILocation(line: 199, column: 27, scope: !117)
!138 = !DILocation(line: 199, column: 39, scope: !117)
!139 = !DILocation(line: 199, column: 35, scope: !117)
!140 = !DILocation(line: 199, column: 29, scope: !117)
!141 = !DILocation(line: 199, column: 23, scope: !117)
!142 = !DILocation(line: 200, column: 45, scope: !117)
!143 = !DILocation(line: 200, column: 62, scope: !117)
!144 = !DILocation(line: 200, column: 60, scope: !117)
!145 = !DILocation(line: 200, column: 88, scope: !117)
!146 = !DILocation(line: 200, column: 86, scope: !117)
!147 = !DILocation(line: 200, column: 80, scope: !117)
!148 = !DILocation(line: 200, column: 73, scope: !117)
!149 = !DILocation(line: 200, column: 54, scope: !117)
!150 = !DILocation(line: 200, column: 42, scope: !117)
!151 = !DILocation(line: 201, column: 44, scope: !117)
!152 = !DILocation(line: 201, column: 42, scope: !117)
!153 = !DILocation(line: 201, column: 17, scope: !117)
!154 = !DILocation(line: 0, scope: !118)
!155 = !DILocation(line: 204, column: 1, scope: !111)
!156 = distinct !DISubprogram(name: "gsl_sf_laguerre_3_e", scope: !2, file: !2, line: 207, type: !77, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !157)
!157 = !{!158, !159, !160, !161, !164, !167, !168, !169}
!158 = !DILocalVariable(name: "a", arg: 1, scope: !156, file: !2, line: 207, type: !79)
!159 = !DILocalVariable(name: "x", arg: 2, scope: !156, file: !2, line: 207, type: !79)
!160 = !DILocalVariable(name: "result", arg: 3, scope: !156, file: !2, line: 207, type: !81)
!161 = !DILocalVariable(name: "x2_6", scope: !162, file: !2, line: 212, type: !80)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 211, column: 17)
!163 = distinct !DILexicalBlock(scope: !156, file: !2, line: 211, column: 6)
!164 = !DILocalVariable(name: "c0", scope: !165, file: !2, line: 224, type: !80)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 223, column: 8)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 218, column: 11)
!167 = !DILocalVariable(name: "c1", scope: !165, file: !2, line: 225, type: !80)
!168 = !DILocalVariable(name: "c2", scope: !165, file: !2, line: 226, type: !80)
!169 = !DILocalVariable(name: "c3", scope: !165, file: !2, line: 227, type: !80)
!170 = !DILocation(line: 0, scope: !156)
!171 = !DILocation(line: 211, column: 8, scope: !163)
!172 = !DILocation(line: 211, column: 6, scope: !156)
!173 = !DILocation(line: 212, column: 21, scope: !162)
!174 = !DILocation(line: 212, column: 23, scope: !162)
!175 = !DILocation(line: 0, scope: !162)
!176 = !DILocation(line: 213, column: 32, scope: !162)
!177 = !DILocation(line: 213, column: 25, scope: !162)
!178 = !DILocation(line: 213, column: 18, scope: !162)
!179 = !DILocation(line: 214, column: 34, scope: !162)
!180 = !DILocation(line: 214, column: 32, scope: !162)
!181 = !DILocation(line: 214, column: 25, scope: !162)
!182 = !DILocation(line: 214, column: 43, scope: !162)
!183 = !DILocation(line: 214, column: 49, scope: !162)
!184 = !DILocation(line: 214, column: 13, scope: !162)
!185 = !DILocation(line: 215, column: 44, scope: !162)
!186 = !DILocation(line: 215, column: 42, scope: !162)
!187 = !DILocation(line: 215, column: 17, scope: !162)
!188 = !DILocation(line: 218, column: 13, scope: !166)
!189 = !DILocation(line: 218, column: 11, scope: !163)
!190 = !DILocation(line: 219, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !166, file: !2, line: 218, column: 22)
!192 = !DILocation(line: 219, column: 21, scope: !191)
!193 = !DILocation(line: 219, column: 23, scope: !191)
!194 = !DILocation(line: 219, column: 17, scope: !191)
!195 = !DILocation(line: 220, column: 43, scope: !191)
!196 = !DILocation(line: 220, column: 41, scope: !191)
!197 = !DILocation(line: 220, column: 13, scope: !191)
!198 = !DILocation(line: 220, column: 17, scope: !191)
!199 = !DILocation(line: 221, column: 5, scope: !191)
!200 = !DILocation(line: 224, column: 21, scope: !165)
!201 = !DILocation(line: 224, column: 29, scope: !165)
!202 = !DILocation(line: 224, column: 24, scope: !165)
!203 = !DILocation(line: 224, column: 37, scope: !165)
!204 = !DILocation(line: 224, column: 32, scope: !165)
!205 = !DILocation(line: 224, column: 41, scope: !165)
!206 = !DILocation(line: 0, scope: !165)
!207 = !DILocation(line: 225, column: 21, scope: !165)
!208 = !DILocation(line: 225, column: 27, scope: !165)
!209 = !DILocation(line: 226, column: 21, scope: !165)
!210 = !DILocation(line: 227, column: 26, scope: !165)
!211 = !DILocation(line: 227, column: 21, scope: !165)
!212 = !DILocation(line: 228, column: 27, scope: !165)
!213 = !DILocation(line: 228, column: 39, scope: !165)
!214 = !DILocation(line: 228, column: 51, scope: !165)
!215 = !DILocation(line: 228, column: 47, scope: !165)
!216 = !DILocation(line: 228, column: 41, scope: !165)
!217 = !DILocation(line: 228, column: 35, scope: !165)
!218 = !DILocation(line: 228, column: 29, scope: !165)
!219 = !DILocation(line: 228, column: 23, scope: !165)
!220 = !DILocation(line: 228, column: 18, scope: !165)
!221 = !DILocation(line: 229, column: 32, scope: !165)
!222 = !DILocation(line: 229, column: 30, scope: !165)
!223 = !DILocation(line: 229, column: 24, scope: !165)
!224 = !DILocation(line: 229, column: 13, scope: !165)
!225 = !DILocation(line: 230, column: 32, scope: !165)
!226 = !DILocation(line: 230, column: 30, scope: !165)
!227 = !DILocation(line: 230, column: 43, scope: !165)
!228 = !DILocation(line: 230, column: 24, scope: !165)
!229 = !DILocation(line: 231, column: 45, scope: !165)
!230 = !DILocation(line: 231, column: 62, scope: !165)
!231 = !DILocation(line: 231, column: 60, scope: !165)
!232 = !DILocation(line: 231, column: 73, scope: !165)
!233 = !DILocation(line: 231, column: 54, scope: !165)
!234 = !DILocation(line: 231, column: 42, scope: !165)
!235 = !DILocation(line: 232, column: 44, scope: !165)
!236 = !DILocation(line: 232, column: 42, scope: !165)
!237 = !DILocation(line: 232, column: 17, scope: !165)
!238 = !DILocation(line: 235, column: 1, scope: !156)
!239 = distinct !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !2, file: !2, line: 238, type: !240, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !243)
!240 = !DISubroutineType(types: !241)
!241 = !{!21, !242, !79, !79, !81}
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!243 = !{!244, !245, !246, !247, !248, !254, !255, !261, !262, !263, !264, !265}
!244 = !DILocalVariable(name: "n", arg: 1, scope: !239, file: !2, line: 238, type: !242)
!245 = !DILocalVariable(name: "a", arg: 2, scope: !239, file: !2, line: 238, type: !79)
!246 = !DILocalVariable(name: "x", arg: 3, scope: !239, file: !2, line: 238, type: !79)
!247 = !DILocalVariable(name: "result", arg: 4, scope: !239, file: !2, line: 239, type: !81)
!248 = !DILocalVariable(name: "product", scope: !249, file: !2, line: 257, type: !80)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 256, column: 21)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 256, column: 11)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 251, column: 11)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 246, column: 11)
!253 = distinct !DILexicalBlock(scope: !239, file: !2, line: 243, column: 6)
!254 = !DILocalVariable(name: "k", scope: !249, file: !2, line: 258, type: !21)
!255 = !DILocalVariable(name: "lg2", scope: !256, file: !2, line: 290, type: !82)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 289, column: 46)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 289, column: 11)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 286, column: 11)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 273, column: 11)
!260 = distinct !DILexicalBlock(scope: !250, file: !2, line: 266, column: 11)
!261 = !DILocalVariable(name: "stat_lg2", scope: !256, file: !2, line: 291, type: !21)
!262 = !DILocalVariable(name: "Lkm1", scope: !256, file: !2, line: 292, type: !80)
!263 = !DILocalVariable(name: "Lk", scope: !256, file: !2, line: 293, type: !80)
!264 = !DILocalVariable(name: "Lkp1", scope: !256, file: !2, line: 294, type: !80)
!265 = !DILocalVariable(name: "k", scope: !256, file: !2, line: 295, type: !21)
!266 = distinct !DIAssignID()
!267 = !DILocation(line: 0, scope: !256)
!268 = !DILocation(line: 0, scope: !239)
!269 = !DILocation(line: 243, column: 8, scope: !253)
!270 = !DILocation(line: 243, column: 6, scope: !239)
!271 = !DILocation(line: 244, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 244, column: 5)
!273 = distinct !DILexicalBlock(scope: !253, file: !2, line: 243, column: 13)
!274 = !DILocation(line: 244, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !2, line: 244, column: 5)
!276 = !DILocation(line: 246, column: 11, scope: !253)
!277 = !DILocation(line: 247, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !252, file: !2, line: 246, column: 19)
!279 = !DILocation(line: 248, column: 13, scope: !278)
!280 = !DILocation(line: 248, column: 17, scope: !278)
!281 = !DILocation(line: 249, column: 5, scope: !278)
!282 = !DILocation(line: 252, column: 23, scope: !283)
!283 = distinct !DILexicalBlock(scope: !251, file: !2, line: 251, column: 19)
!284 = !DILocation(line: 252, column: 27, scope: !283)
!285 = !DILocation(line: 252, column: 17, scope: !283)
!286 = !DILocation(line: 253, column: 50, scope: !283)
!287 = !DILocation(line: 253, column: 48, scope: !283)
!288 = !DILocation(line: 253, column: 60, scope: !283)
!289 = !DILocation(line: 253, column: 58, scope: !283)
!290 = !DILocation(line: 253, column: 41, scope: !283)
!291 = !DILocation(line: 253, column: 13, scope: !283)
!292 = !DILocation(line: 253, column: 17, scope: !283)
!293 = !DILocation(line: 254, column: 5, scope: !283)
!294 = !DILocation(line: 256, column: 13, scope: !250)
!295 = !DILocation(line: 256, column: 11, scope: !251)
!296 = !DILocation(line: 257, column: 24, scope: !249)
!297 = !DILocation(line: 0, scope: !249)
!298 = !DILocation(line: 259, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !249, file: !2, line: 259, column: 5)
!300 = !DILocation(line: 260, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 259, column: 25)
!302 = distinct !DILexicalBlock(scope: !299, file: !2, line: 259, column: 5)
!303 = !DILocation(line: 260, column: 21, scope: !301)
!304 = !DILocation(line: 260, column: 25, scope: !301)
!305 = !DILocation(line: 260, column: 15, scope: !301)
!306 = !DILocation(line: 259, column: 21, scope: !302)
!307 = distinct !{!307, !298, !308, !309}
!308 = !DILocation(line: 261, column: 5, scope: !299)
!309 = !{!"llvm.loop.mustprogress"}
!310 = distinct !{!310, !311}
!311 = !{!"llvm.loop.unroll.disable"}
!312 = !DILocation(line: 262, column: 17, scope: !249)
!313 = !DILocation(line: 263, column: 26, scope: !249)
!314 = !DILocation(line: 263, column: 28, scope: !249)
!315 = !DILocation(line: 263, column: 23, scope: !249)
!316 = !DILocation(line: 263, column: 35, scope: !249)
!317 = !DILocation(line: 263, column: 55, scope: !249)
!318 = !DILocation(line: 263, column: 53, scope: !249)
!319 = !DILocation(line: 263, column: 69, scope: !249)
!320 = !DILocation(line: 263, column: 13, scope: !249)
!321 = !DILocation(line: 263, column: 17, scope: !249)
!322 = !DILocation(line: 266, column: 13, scope: !260)
!323 = !DILocation(line: 266, column: 19, scope: !260)
!324 = !DILocation(line: 271, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !260, file: !2, line: 266, column: 32)
!326 = !DILocation(line: 271, column: 5, scope: !325)
!327 = !DILocation(line: 273, column: 13, scope: !259)
!328 = !DILocation(line: 273, column: 17, scope: !259)
!329 = !DILocation(line: 273, column: 23, scope: !259)
!330 = !DILocation(line: 273, column: 29, scope: !259)
!331 = !DILocation(line: 273, column: 38, scope: !259)
!332 = !DILocation(line: 273, column: 36, scope: !259)
!333 = !DILocation(line: 273, column: 34, scope: !259)
!334 = !DILocation(line: 273, column: 11, scope: !260)
!335 = !DILocation(line: 281, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 281, column: 8)
!337 = distinct !DILexicalBlock(scope: !259, file: !2, line: 273, column: 43)
!338 = !DILocation(line: 281, column: 39, scope: !336)
!339 = !DILocation(line: 281, column: 8, scope: !337)
!340 = !DILocation(line: 284, column: 14, scope: !336)
!341 = !DILocation(line: 284, column: 7, scope: !336)
!342 = !DILocation(line: 286, column: 11, scope: !258)
!343 = !DILocation(line: 286, column: 13, scope: !258)
!344 = !DILocation(line: 286, column: 23, scope: !258)
!345 = !DILocation(line: 286, column: 59, scope: !258)
!346 = !DILocation(line: 286, column: 56, scope: !258)
!347 = !DILocation(line: 286, column: 68, scope: !258)
!348 = !DILocation(line: 286, column: 64, scope: !258)
!349 = !DILocation(line: 286, column: 51, scope: !258)
!350 = !DILocation(line: 286, column: 11, scope: !259)
!351 = !DILocation(line: 287, column: 12, scope: !352)
!352 = distinct !DILexicalBlock(scope: !258, file: !2, line: 286, column: 72)
!353 = !DILocation(line: 287, column: 5, scope: !352)
!354 = !DILocation(line: 289, column: 13, scope: !257)
!355 = !DILocation(line: 289, column: 20, scope: !257)
!356 = !DILocation(line: 290, column: 5, scope: !256)
!357 = !DILocation(line: 291, column: 20, scope: !256)
!358 = !DILocation(line: 293, column: 23, scope: !256)
!359 = !DILocation(line: 297, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !256, file: !2, line: 297, column: 5)
!361 = !DILocation(line: 292, column: 23, scope: !256)
!362 = !DILocation(line: 292, column: 27, scope: !256)
!363 = !DILocation(line: 298, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 297, column: 24)
!365 = distinct !DILexicalBlock(scope: !360, file: !2, line: 297, column: 5)
!366 = !DILocation(line: 298, column: 18, scope: !364)
!367 = !DILocation(line: 298, column: 33, scope: !364)
!368 = !DILocation(line: 298, column: 35, scope: !364)
!369 = !DILocation(line: 298, column: 37, scope: !364)
!370 = !DILocation(line: 298, column: 41, scope: !364)
!371 = !DILocation(line: 298, column: 44, scope: !364)
!372 = !DILocation(line: 298, column: 27, scope: !364)
!373 = !DILocation(line: 298, column: 51, scope: !364)
!374 = !DILocation(line: 298, column: 48, scope: !364)
!375 = !DILocation(line: 297, column: 20, scope: !365)
!376 = distinct !{!376, !359, !377, !309}
!377 = !DILocation(line: 301, column: 5, scope: !360)
!378 = !DILocation(line: 302, column: 17, scope: !256)
!379 = !DILocation(line: 303, column: 29, scope: !256)
!380 = !DILocation(line: 303, column: 32, scope: !256)
!381 = !DILocation(line: 303, column: 20, scope: !256)
!382 = !DILocation(line: 303, column: 42, scope: !256)
!383 = !DILocation(line: 303, column: 61, scope: !256)
!384 = !DILocation(line: 303, column: 67, scope: !256)
!385 = !DILocation(line: 303, column: 65, scope: !256)
!386 = !DILocation(line: 303, column: 13, scope: !256)
!387 = !DILocation(line: 303, column: 17, scope: !256)
!388 = !DILocation(line: 305, column: 3, scope: !257)
!389 = !DILocation(line: 308, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !257, file: !2, line: 306, column: 8)
!391 = !DILocation(line: 308, column: 5, scope: !390)
!392 = !DILocation(line: 0, scope: !253)
!393 = !DILocation(line: 310, column: 1, scope: !239)
!394 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !397, !21, !21}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!399 = distinct !DISubprogram(name: "laguerre_n_cp", scope: !2, file: !2, line: 89, type: !240, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !423}
!401 = !DILocalVariable(name: "n", arg: 1, scope: !399, file: !2, line: 89, type: !242)
!402 = !DILocalVariable(name: "a", arg: 2, scope: !399, file: !2, line: 89, type: !79)
!403 = !DILocalVariable(name: "x", arg: 3, scope: !399, file: !2, line: 89, type: !79)
!404 = !DILocalVariable(name: "result", arg: 4, scope: !399, file: !2, line: 89, type: !81)
!405 = !DILocalVariable(name: "lnfact", scope: !399, file: !2, line: 91, type: !82)
!406 = !DILocalVariable(name: "lg1", scope: !399, file: !2, line: 92, type: !82)
!407 = !DILocalVariable(name: "lg2", scope: !399, file: !2, line: 93, type: !82)
!408 = !DILocalVariable(name: "s1", scope: !399, file: !2, line: 94, type: !80)
!409 = !DILocalVariable(name: "s2", scope: !399, file: !2, line: 94, type: !80)
!410 = !DILocalVariable(name: "stat_f", scope: !399, file: !2, line: 95, type: !21)
!411 = !DILocalVariable(name: "stat_g1", scope: !399, file: !2, line: 96, type: !21)
!412 = !DILocalVariable(name: "stat_g2", scope: !399, file: !2, line: 97, type: !21)
!413 = !DILocalVariable(name: "poly_1F1_val", scope: !399, file: !2, line: 98, type: !80)
!414 = !DILocalVariable(name: "poly_1F1_err", scope: !399, file: !2, line: 99, type: !80)
!415 = !DILocalVariable(name: "stat_e", scope: !399, file: !2, line: 100, type: !21)
!416 = !DILocalVariable(name: "k", scope: !399, file: !2, line: 101, type: !21)
!417 = !DILocalVariable(name: "lnpre_val", scope: !399, file: !2, line: 103, type: !80)
!418 = !DILocalVariable(name: "lnpre_err", scope: !399, file: !2, line: 104, type: !80)
!419 = !DILocalVariable(name: "t", scope: !420, file: !2, line: 107, type: !80)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 106, column: 25)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 106, column: 3)
!422 = distinct !DILexicalBlock(scope: !399, file: !2, line: 106, column: 3)
!423 = !DILocalVariable(name: "r", scope: !420, file: !2, line: 108, type: !80)
!424 = distinct !DIAssignID()
!425 = !DILocation(line: 0, scope: !399)
!426 = distinct !DIAssignID()
!427 = distinct !DIAssignID()
!428 = distinct !DIAssignID()
!429 = distinct !DIAssignID()
!430 = !DILocation(line: 91, column: 3, scope: !399)
!431 = !DILocation(line: 92, column: 3, scope: !399)
!432 = !DILocation(line: 93, column: 3, scope: !399)
!433 = !DILocation(line: 94, column: 3, scope: !399)
!434 = !DILocation(line: 95, column: 16, scope: !399)
!435 = !DILocation(line: 96, column: 39, scope: !399)
!436 = !DILocation(line: 96, column: 44, scope: !399)
!437 = !DILocation(line: 96, column: 43, scope: !399)
!438 = !DILocation(line: 96, column: 17, scope: !399)
!439 = !DILocation(line: 97, column: 17, scope: !399)
!440 = !DILocation(line: 103, column: 27, scope: !399)
!441 = !DILocation(line: 103, column: 37, scope: !399)
!442 = !DILocation(line: 103, column: 31, scope: !399)
!443 = !DILocation(line: 103, column: 51, scope: !399)
!444 = !DILocation(line: 103, column: 42, scope: !399)
!445 = !DILocation(line: 104, column: 26, scope: !399)
!446 = !DILocation(line: 104, column: 36, scope: !399)
!447 = !DILocation(line: 104, column: 30, scope: !399)
!448 = !DILocation(line: 104, column: 49, scope: !399)
!449 = !DILocation(line: 104, column: 40, scope: !399)
!450 = !DILocation(line: 104, column: 79, scope: !399)
!451 = !DILocation(line: 104, column: 77, scope: !399)
!452 = !DILocation(line: 104, column: 53, scope: !399)
!453 = !DILocation(line: 106, column: 15, scope: !421)
!454 = !DILocation(line: 106, column: 3, scope: !422)
!455 = !DILocation(line: 106, scope: !422)
!456 = !DILocation(line: 107, column: 19, scope: !420)
!457 = !DILocation(line: 107, column: 16, scope: !420)
!458 = !DILocation(line: 107, column: 30, scope: !420)
!459 = !DILocation(line: 107, column: 29, scope: !420)
!460 = !DILocation(line: 107, column: 22, scope: !420)
!461 = !DILocation(line: 107, column: 38, scope: !420)
!462 = !DILocation(line: 107, column: 37, scope: !420)
!463 = !DILocation(line: 107, column: 33, scope: !420)
!464 = !DILocation(line: 0, scope: !420)
!465 = !DILocation(line: 108, column: 23, scope: !420)
!466 = !DILocation(line: 108, column: 18, scope: !420)
!467 = !DILocation(line: 109, column: 27, scope: !468)
!468 = distinct !DILexicalBlock(scope: !420, file: !2, line: 109, column: 8)
!469 = !DILocation(line: 109, column: 10, scope: !468)
!470 = !DILocation(line: 109, column: 8, scope: !420)
!471 = !DILocation(line: 111, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 111, column: 7)
!473 = distinct !DILexicalBlock(scope: !468, file: !2, line: 109, column: 42)
!474 = !DILocation(line: 115, column: 31, scope: !475)
!475 = distinct !DILexicalBlock(scope: !468, file: !2, line: 113, column: 10)
!476 = !DILocation(line: 115, column: 27, scope: !475)
!477 = !DILocation(line: 116, column: 41, scope: !475)
!478 = !DILocation(line: 116, column: 49, scope: !475)
!479 = !DILocation(line: 116, column: 39, scope: !475)
!480 = !DILocation(line: 116, column: 20, scope: !475)
!481 = !DILocation(line: 99, column: 10, scope: !399)
!482 = !DILocation(line: 98, column: 10, scope: !399)
!483 = !DILocation(line: 120, column: 12, scope: !399)
!484 = !DILocation(line: 124, column: 10, scope: !399)
!485 = !DILocation(line: 125, column: 1, scope: !399)
!486 = distinct !DISubprogram(name: "laguerre_n_poly_safe", scope: !2, file: !2, line: 135, type: !240, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !500, !501, !502}
!488 = !DILocalVariable(name: "n", arg: 1, scope: !486, file: !2, line: 135, type: !242)
!489 = !DILocalVariable(name: "a", arg: 2, scope: !486, file: !2, line: 135, type: !79)
!490 = !DILocalVariable(name: "x", arg: 3, scope: !486, file: !2, line: 135, type: !79)
!491 = !DILocalVariable(name: "result", arg: 4, scope: !486, file: !2, line: 135, type: !81)
!492 = !DILocalVariable(name: "b", scope: !486, file: !2, line: 137, type: !79)
!493 = !DILocalVariable(name: "mx", scope: !486, file: !2, line: 138, type: !79)
!494 = !DILocalVariable(name: "tc_sgn", scope: !486, file: !2, line: 139, type: !79)
!495 = !DILocalVariable(name: "tc", scope: !486, file: !2, line: 140, type: !82)
!496 = !DILocalVariable(name: "stat_tc", scope: !486, file: !2, line: 141, type: !21)
!497 = !DILocalVariable(name: "term", scope: !498, file: !2, line: 144, type: !80)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 143, column: 30)
!499 = distinct !DILexicalBlock(scope: !486, file: !2, line: 143, column: 6)
!500 = !DILocalVariable(name: "sum_val", scope: !498, file: !2, line: 145, type: !80)
!501 = !DILocalVariable(name: "sum_err", scope: !498, file: !2, line: 146, type: !80)
!502 = !DILocalVariable(name: "k", scope: !498, file: !2, line: 147, type: !21)
!503 = distinct !DIAssignID()
!504 = !DILocation(line: 0, scope: !486)
!505 = !DILocation(line: 137, column: 22, scope: !486)
!506 = !DILocation(line: 138, column: 21, scope: !486)
!507 = !DILocation(line: 139, column: 28, scope: !486)
!508 = !DILocation(line: 139, column: 26, scope: !486)
!509 = !DILocation(line: 139, column: 43, scope: !486)
!510 = !DILocation(line: 140, column: 3, scope: !486)
!511 = !DILocation(line: 141, column: 41, scope: !486)
!512 = !DILocation(line: 141, column: 17, scope: !486)
!513 = !DILocation(line: 143, column: 6, scope: !486)
!514 = !DILocation(line: 144, column: 22, scope: !498)
!515 = !DILocation(line: 144, column: 26, scope: !498)
!516 = !DILocation(line: 0, scope: !498)
!517 = !DILocation(line: 146, column: 25, scope: !498)
!518 = !DILocation(line: 148, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 148, column: 5)
!520 = distinct !DILexicalBlock(scope: !498, file: !2, line: 148, column: 5)
!521 = !DILocation(line: 148, column: 5, scope: !520)
!522 = !DILocation(line: 148, scope: !520)
!523 = !DILocation(line: 149, column: 19, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !2, line: 148, column: 27)
!525 = !DILocation(line: 149, column: 18, scope: !524)
!526 = !DILocation(line: 149, column: 24, scope: !524)
!527 = !DILocation(line: 149, column: 22, scope: !524)
!528 = !DILocation(line: 149, column: 21, scope: !524)
!529 = !DILocation(line: 149, column: 31, scope: !524)
!530 = !DILocation(line: 149, column: 28, scope: !524)
!531 = !DILocation(line: 149, column: 36, scope: !524)
!532 = !DILocation(line: 149, column: 12, scope: !524)
!533 = !DILocation(line: 150, column: 15, scope: !524)
!534 = !DILocation(line: 151, column: 42, scope: !524)
!535 = !DILocation(line: 151, column: 40, scope: !524)
!536 = !DILocation(line: 151, column: 15, scope: !524)
!537 = distinct !{!537, !521, !538, !309}
!538 = !DILocation(line: 152, column: 5, scope: !520)
!539 = !DILocation(line: 153, column: 17, scope: !498)
!540 = !DILocation(line: 154, column: 53, scope: !498)
!541 = !DILocation(line: 154, column: 51, scope: !498)
!542 = !DILocation(line: 154, column: 27, scope: !498)
!543 = !DILocation(line: 154, column: 13, scope: !498)
!544 = !DILocation(line: 154, column: 17, scope: !498)
!545 = !DILocation(line: 159, column: 17, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 157, column: 35)
!547 = distinct !DILexicalBlock(scope: !499, file: !2, line: 157, column: 11)
!548 = !DILocation(line: 160, column: 5, scope: !546)
!549 = !DILocation(line: 164, column: 17, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !2, line: 162, column: 8)
!551 = !DILocation(line: 165, column: 5, scope: !550)
!552 = !DILocation(line: 0, scope: !499)
!553 = !DILocation(line: 167, column: 1, scope: !486)
!554 = distinct !DISubprogram(name: "laguerre_large_n", scope: !2, file: !2, line: 48, type: !240, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!556 = !DILocalVariable(name: "n", arg: 1, scope: !554, file: !2, line: 48, type: !242)
!557 = !DILocalVariable(name: "alpha", arg: 2, scope: !554, file: !2, line: 48, type: !79)
!558 = !DILocalVariable(name: "x", arg: 3, scope: !554, file: !2, line: 48, type: !79)
!559 = !DILocalVariable(name: "result", arg: 4, scope: !554, file: !2, line: 49, type: !81)
!560 = !DILocalVariable(name: "a", scope: !554, file: !2, line: 51, type: !79)
!561 = !DILocalVariable(name: "b", scope: !554, file: !2, line: 52, type: !79)
!562 = !DILocalVariable(name: "eta", scope: !554, file: !2, line: 53, type: !79)
!563 = !DILocalVariable(name: "cos2th", scope: !554, file: !2, line: 54, type: !79)
!564 = !DILocalVariable(name: "sin2th", scope: !554, file: !2, line: 55, type: !79)
!565 = !DILocalVariable(name: "eps", scope: !554, file: !2, line: 56, type: !79)
!566 = !DILocalVariable(name: "pre_h", scope: !554, file: !2, line: 57, type: !79)
!567 = !DILocalVariable(name: "lg_b", scope: !554, file: !2, line: 58, type: !82)
!568 = !DILocalVariable(name: "lnfact", scope: !554, file: !2, line: 59, type: !82)
!569 = !DILocalVariable(name: "stat_lg", scope: !554, file: !2, line: 60, type: !21)
!570 = !DILocalVariable(name: "stat_lf", scope: !554, file: !2, line: 61, type: !21)
!571 = !DILocalVariable(name: "pre_term1", scope: !554, file: !2, line: 62, type: !80)
!572 = !DILocalVariable(name: "pre_term2", scope: !554, file: !2, line: 63, type: !80)
!573 = !DILocalVariable(name: "lnpre_val", scope: !554, file: !2, line: 64, type: !80)
!574 = !DILocalVariable(name: "lnpre_err", scope: !554, file: !2, line: 65, type: !80)
!575 = !DILocalVariable(name: "phi1", scope: !554, file: !2, line: 67, type: !80)
!576 = !DILocalVariable(name: "ser_term1", scope: !554, file: !2, line: 68, type: !80)
!577 = !DILocalVariable(name: "A1", scope: !554, file: !2, line: 70, type: !80)
!578 = !DILocalVariable(name: "ser_term2", scope: !554, file: !2, line: 71, type: !80)
!579 = !DILocalVariable(name: "ser_val", scope: !554, file: !2, line: 73, type: !80)
!580 = !DILocalVariable(name: "ser_err", scope: !554, file: !2, line: 74, type: !80)
!581 = !DILocalVariable(name: "stat_e", scope: !554, file: !2, line: 75, type: !21)
!582 = distinct !DIAssignID()
!583 = !DILocation(line: 0, scope: !554)
!584 = distinct !DIAssignID()
!585 = !DILocation(line: 51, column: 20, scope: !554)
!586 = !DILocation(line: 52, column: 26, scope: !554)
!587 = !DILocation(line: 53, column: 28, scope: !554)
!588 = !DILocation(line: 53, column: 36, scope: !554)
!589 = !DILocation(line: 53, column: 31, scope: !554)
!590 = !DILocation(line: 54, column: 26, scope: !554)
!591 = !DILocation(line: 55, column: 29, scope: !554)
!592 = !DILocation(line: 56, column: 27, scope: !554)
!593 = !DILocation(line: 56, column: 22, scope: !554)
!594 = !DILocation(line: 57, column: 39, scope: !554)
!595 = !DILocation(line: 57, column: 43, scope: !554)
!596 = !DILocation(line: 57, column: 47, scope: !554)
!597 = !DILocation(line: 57, column: 54, scope: !554)
!598 = !DILocation(line: 58, column: 3, scope: !554)
!599 = !DILocation(line: 59, column: 3, scope: !554)
!600 = !DILocation(line: 60, column: 36, scope: !554)
!601 = !DILocation(line: 60, column: 35, scope: !554)
!602 = !DILocation(line: 60, column: 17, scope: !554)
!603 = !DILocation(line: 61, column: 17, scope: !554)
!604 = !DILocation(line: 62, column: 30, scope: !554)
!605 = !DILocation(line: 62, column: 25, scope: !554)
!606 = !DILocation(line: 62, column: 42, scope: !554)
!607 = !DILocation(line: 62, column: 44, scope: !554)
!608 = !DILocation(line: 62, column: 34, scope: !554)
!609 = !DILocation(line: 62, column: 33, scope: !554)
!610 = !DILocation(line: 63, column: 27, scope: !554)
!611 = !DILocation(line: 63, column: 26, scope: !554)
!612 = !DILocation(line: 64, column: 27, scope: !554)
!613 = !DILocation(line: 64, column: 40, scope: !554)
!614 = !DILocation(line: 64, column: 31, scope: !554)
!615 = !DILocation(line: 64, column: 49, scope: !554)
!616 = !DILocation(line: 64, column: 44, scope: !554)
!617 = !DILocation(line: 64, column: 52, scope: !554)
!618 = !DILocation(line: 64, column: 64, scope: !554)
!619 = !DILocation(line: 65, column: 27, scope: !554)
!620 = !DILocation(line: 65, column: 40, scope: !554)
!621 = !DILocation(line: 65, column: 31, scope: !554)
!622 = !DILocation(line: 65, column: 65, scope: !554)
!623 = !DILocation(line: 65, column: 81, scope: !554)
!624 = !DILocation(line: 65, column: 80, scope: !554)
!625 = !DILocation(line: 65, column: 62, scope: !554)
!626 = !DILocation(line: 65, column: 44, scope: !554)
!627 = !DILocation(line: 67, column: 21, scope: !554)
!628 = !DILocation(line: 67, column: 28, scope: !554)
!629 = !DILocation(line: 67, column: 35, scope: !554)
!630 = !DILocation(line: 67, column: 33, scope: !554)
!631 = !DILocation(line: 67, column: 25, scope: !554)
!632 = !DILocation(line: 68, column: 23, scope: !554)
!633 = !DILocation(line: 68, column: 22, scope: !554)
!634 = !DILocation(line: 70, column: 35, scope: !554)
!635 = !DILocation(line: 70, column: 30, scope: !554)
!636 = !DILocation(line: 70, column: 48, scope: !554)
!637 = !DILocation(line: 70, column: 50, scope: !554)
!638 = !DILocation(line: 70, column: 56, scope: !554)
!639 = !DILocation(line: 70, column: 52, scope: !554)
!640 = !DILocation(line: 70, column: 58, scope: !554)
!641 = !DILocation(line: 70, column: 63, scope: !554)
!642 = !DILocation(line: 70, column: 43, scope: !554)
!643 = !DILocation(line: 70, column: 71, scope: !554)
!644 = !DILocation(line: 71, column: 22, scope: !554)
!645 = !DILocation(line: 71, column: 28, scope: !554)
!646 = !DILocation(line: 71, column: 26, scope: !554)
!647 = !DILocation(line: 71, column: 48, scope: !554)
!648 = !DILocation(line: 71, column: 47, scope: !554)
!649 = !DILocation(line: 71, column: 37, scope: !554)
!650 = !DILocation(line: 73, column: 30, scope: !554)
!651 = !DILocation(line: 74, column: 29, scope: !554)
!652 = !DILocation(line: 74, column: 61, scope: !554)
!653 = !DILocation(line: 74, column: 79, scope: !554)
!654 = !DILocation(line: 74, column: 77, scope: !554)
!655 = !DILocation(line: 74, column: 58, scope: !554)
!656 = !DILocation(line: 74, column: 40, scope: !554)
!657 = !DILocation(line: 75, column: 16, scope: !554)
!658 = !DILocation(line: 76, column: 60, scope: !554)
!659 = !DILocation(line: 76, column: 47, scope: !554)
!660 = !DILocation(line: 76, column: 45, scope: !554)
!661 = !DILocation(line: 76, column: 11, scope: !554)
!662 = !DILocation(line: 76, column: 15, scope: !554)
!663 = !DILocation(line: 77, column: 10, scope: !554)
!664 = !DILocation(line: 78, column: 1, scope: !554)
!665 = !DILocation(line: 77, column: 3, scope: !554)
!666 = distinct !DISubprogram(name: "gsl_sf_laguerre_1", scope: !2, file: !2, line: 317, type: !667, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!80, !80, !80}
!669 = !{!670, !671, !672, !673}
!670 = !DILocalVariable(name: "a", arg: 1, scope: !666, file: !2, line: 317, type: !80)
!671 = !DILocalVariable(name: "x", arg: 2, scope: !666, file: !2, line: 317, type: !80)
!672 = !DILocalVariable(name: "result", scope: !666, file: !2, line: 319, type: !82)
!673 = !DILocalVariable(name: "status", scope: !666, file: !2, line: 319, type: !21)
!674 = !DILocation(line: 0, scope: !666)
!675 = !DILocation(line: 0, scope: !76, inlinedAt: !676)
!676 = distinct !DILocation(line: 319, column: 3, scope: !666)
!677 = !DILocation(line: 179, column: 23, scope: !94, inlinedAt: !676)
!678 = !DILocation(line: 179, column: 27, scope: !94, inlinedAt: !676)
!679 = !DILocation(line: 320, column: 1, scope: !666)
!680 = distinct !DISubprogram(name: "gsl_sf_laguerre_2", scope: !2, file: !2, line: 322, type: !667, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !681)
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(name: "a", arg: 1, scope: !680, file: !2, line: 322, type: !80)
!683 = !DILocalVariable(name: "x", arg: 2, scope: !680, file: !2, line: 322, type: !80)
!684 = !DILocalVariable(name: "result", scope: !680, file: !2, line: 324, type: !82)
!685 = !DILocalVariable(name: "status", scope: !680, file: !2, line: 324, type: !21)
!686 = !DILocation(line: 0, scope: !680)
!687 = !DILocation(line: 0, scope: !111, inlinedAt: !688)
!688 = distinct !DILocation(line: 324, column: 3, scope: !680)
!689 = !DILocation(line: 190, column: 8, scope: !118, inlinedAt: !688)
!690 = !DILocation(line: 190, column: 6, scope: !111, inlinedAt: !688)
!691 = !DILocation(line: 191, column: 22, scope: !125, inlinedAt: !688)
!692 = !DILocation(line: 191, column: 24, scope: !125, inlinedAt: !688)
!693 = !DILocation(line: 193, column: 5, scope: !125, inlinedAt: !688)
!694 = !DILocation(line: 196, column: 27, scope: !117, inlinedAt: !688)
!695 = !DILocation(line: 196, column: 21, scope: !117, inlinedAt: !688)
!696 = !DILocation(line: 196, column: 35, scope: !117, inlinedAt: !688)
!697 = !DILocation(line: 196, column: 30, scope: !117, inlinedAt: !688)
!698 = !DILocation(line: 0, scope: !117, inlinedAt: !688)
!699 = !DILocation(line: 197, column: 17, scope: !117, inlinedAt: !688)
!700 = !DILocation(line: 198, column: 21, scope: !117, inlinedAt: !688)
!701 = !DILocation(line: 199, column: 27, scope: !117, inlinedAt: !688)
!702 = !DILocation(line: 199, column: 39, scope: !117, inlinedAt: !688)
!703 = !DILocation(line: 199, column: 35, scope: !117, inlinedAt: !688)
!704 = !DILocation(line: 199, column: 29, scope: !117, inlinedAt: !688)
!705 = !DILocation(line: 199, column: 23, scope: !117, inlinedAt: !688)
!706 = !DILocation(line: 0, scope: !118, inlinedAt: !688)
!707 = !DILocation(line: 325, column: 1, scope: !680)
!708 = distinct !DISubprogram(name: "gsl_sf_laguerre_3", scope: !2, file: !2, line: 327, type: !667, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !709)
!709 = !{!710, !711, !712, !713}
!710 = !DILocalVariable(name: "a", arg: 1, scope: !708, file: !2, line: 327, type: !80)
!711 = !DILocalVariable(name: "x", arg: 2, scope: !708, file: !2, line: 327, type: !80)
!712 = !DILocalVariable(name: "result", scope: !708, file: !2, line: 329, type: !82)
!713 = !DILocalVariable(name: "status", scope: !708, file: !2, line: 329, type: !21)
!714 = distinct !DIAssignID()
!715 = !DILocation(line: 0, scope: !708)
!716 = !DILocation(line: 329, column: 3, scope: !708)
!717 = !DILocation(line: 330, column: 1, scope: !708)
!718 = distinct !DISubprogram(name: "gsl_sf_laguerre_n", scope: !2, file: !2, line: 332, type: !719, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!80, !21, !80, !80}
!721 = !{!722, !723, !724, !725, !726}
!722 = !DILocalVariable(name: "n", arg: 1, scope: !718, file: !2, line: 332, type: !21)
!723 = !DILocalVariable(name: "a", arg: 2, scope: !718, file: !2, line: 332, type: !80)
!724 = !DILocalVariable(name: "x", arg: 3, scope: !718, file: !2, line: 332, type: !80)
!725 = !DILocalVariable(name: "result", scope: !718, file: !2, line: 334, type: !82)
!726 = !DILocalVariable(name: "status", scope: !718, file: !2, line: 334, type: !21)
!727 = distinct !DIAssignID()
!728 = !DILocation(line: 0, scope: !718)
!729 = !DILocation(line: 334, column: 3, scope: !718)
!730 = !DILocation(line: 334, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !718, file: !2, line: 334, column: 3)
!732 = !DILocation(line: 334, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 334, column: 3)
!734 = distinct !DILexicalBlock(scope: !731, file: !2, line: 334, column: 3)
!735 = !DILocation(line: 335, column: 1, scope: !718)
!736 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !737, file: !737, line: 136, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!738 = !DISubroutineType(types: !739)
!739 = !{!21, !740, !81}
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!742 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !737, file: !737, line: 58, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DISubroutineType(types: !744)
!744 = !{!21, !80, !81, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!746 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !747, file: !747, line: 122, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!748 = !DISubroutineType(types: !749)
!749 = !{!21, !79, !79, !79, !79, !81}
!750 = !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !737, file: !737, line: 111, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DISubroutineType(types: !752)
!752 = !{!21, !242, !79, !81}
!753 = !DISubprogram(name: "asin", scope: !754, file: !754, line: 55, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!755 = !DISubroutineType(types: !756)
!756 = !{!80, !80}
!757 = !DISubprogram(name: "sqrt", scope: !754, file: !754, line: 143, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !737, file: !737, line: 47, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DISubroutineType(types: !760)
!760 = !{!21, !80, !81}
!761 = !DISubprogram(name: "log", scope: !754, file: !754, line: 104, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DISubprogram(name: "sin", scope: !754, file: !754, line: 64, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubprogram(name: "cos", scope: !754, file: !754, line: 62, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
