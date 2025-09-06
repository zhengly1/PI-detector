; ModuleID = 'coulomb_bound.c'
source_filename = "coulomb_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"coulomb_bound.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_hydrogenicR_1_e(Z, r, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [42 x i8] c"gsl_sf_hydrogenicR_e(n, l, Z, r, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hydrogenicR_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !77 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !90, metadata !DIExpression()), !dbg !98
  tail call void @llvm.dbg.value(metadata double %1, metadata !91, metadata !DIExpression()), !dbg !98
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !92, metadata !DIExpression()), !dbg !98
  %4 = fcmp ogt double %0, 0.000000e+00, !dbg !99
  %5 = fcmp oge double %1, 0.000000e+00
  %6 = and i1 %4, %5, !dbg !100
  br i1 %6, label %7, label %23, !dbg !100

7:                                                ; preds = %3
  %8 = fmul double %0, 2.000000e+00, !dbg !101
  tail call void @llvm.dbg.value(metadata double %8, metadata !93, metadata !DIExpression()), !dbg !102
  %9 = tail call double @sqrt(double noundef %0) #6, !dbg !103
  %10 = fmul double %8, %9, !dbg !104
  tail call void @llvm.dbg.value(metadata double %10, metadata !96, metadata !DIExpression()), !dbg !102
  %11 = fneg double %0, !dbg !105
  %12 = fmul double %11, %1, !dbg !106
  %13 = tail call double @exp(double noundef %12) #6, !dbg !107
  tail call void @llvm.dbg.value(metadata double %13, metadata !97, metadata !DIExpression()), !dbg !102
  %14 = fmul double %10, %13, !dbg !108
  store double %14, ptr %2, align 8, !dbg !109, !tbaa !110
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !115
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !116
  %17 = fmul double %0, %1, !dbg !117
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !118
  %19 = fmul double %18, %16, !dbg !119
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !120
  store double %19, ptr %20, align 8, !dbg !121, !tbaa !122
  %21 = fcmp olt double %15, 0x10000000000000, !dbg !123
  br i1 %21, label %22, label %25, !dbg !125

22:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 15) #6, !dbg !126
  br label %25, !dbg !126

23:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !128, !tbaa !110
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !128
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !128, !tbaa !122
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 1) #6, !dbg !131
  br label %25, !dbg !131

25:                                               ; preds = %22, %7, %23
  %26 = phi i32 [ 1, %23 ], [ 15, %22 ], [ 0, %7 ], !dbg !133
  ret i32 %26, !dbg !134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !135 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !139 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !140 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hydrogenicR_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !145 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !167
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !168
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !169
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !163, metadata !DIExpression(), metadata !170, metadata ptr %9, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !150, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !151, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %2, metadata !152, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata double %3, metadata !153, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !154, metadata !DIExpression()), !dbg !172
  %10 = icmp slt i32 %0, 1, !dbg !173
  br i1 %10, label %17, label %11, !dbg !174

11:                                               ; preds = %5
  %12 = icmp sle i32 %0, %1, !dbg !175
  %13 = fcmp ole double %2, 0.000000e+00
  %14 = or i1 %12, %13, !dbg !176
  %15 = fcmp olt double %3, 0.000000e+00
  %16 = or i1 %14, %15, !dbg !176
  br i1 %16, label %17, label %19, !dbg !176

17:                                               ; preds = %5, %11
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !177, !tbaa !110
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !177
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !177, !tbaa !122
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 1) #6, !dbg !180
  br label %117, !dbg !180

19:                                               ; preds = %11
  %20 = fmul double %2, 2.000000e+00, !dbg !182
  %21 = sitofp i32 %0 to double, !dbg !183
  %22 = fdiv double %20, %21, !dbg !184
  tail call void @llvm.dbg.value(metadata double %22, metadata !155, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !185, metadata !DIExpression(), metadata !167, metadata ptr %6, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !196, metadata !DIExpression(), metadata !168, metadata ptr %7, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !197, metadata !DIExpression(), metadata !169, metadata ptr %8, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %0, metadata !190, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %1, metadata !191, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %2, metadata !192, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr undef, metadata !193, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata double %22, metadata !194, metadata !DIExpression()), !dbg !203
  %23 = fmul double %22, %22, !dbg !205
  %24 = fmul double %22, %23, !dbg !206
  %25 = fmul double %21, 2.000000e+00, !dbg !207
  %26 = fdiv double %24, %25, !dbg !208
  %27 = tail call double @sqrt(double noundef %26) #6, !dbg !209
  call void @llvm.dbg.value(metadata double %27, metadata !195, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !210
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !210
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !211
  %28 = add nsw i32 %1, %0, !dbg !212
  %29 = call i32 @gsl_sf_lnfact_e(i32 noundef %28, ptr noundef nonnull %6) #6, !dbg !213
  call void @llvm.dbg.value(metadata i32 %29, metadata !198, metadata !DIExpression()), !dbg !203
  %30 = xor i32 %1, -1, !dbg !214
  %31 = add i32 %30, %0, !dbg !214
  %32 = call i32 @gsl_sf_lnfact_e(i32 noundef %31, ptr noundef nonnull %7) #6, !dbg !215
  call void @llvm.dbg.value(metadata i32 %32, metadata !199, metadata !DIExpression()), !dbg !203
  %33 = load double, ptr %7, align 8, !dbg !216, !tbaa !110
  %34 = load double, ptr %6, align 8, !dbg !217, !tbaa !110
  %35 = fsub double %33, %34, !dbg !218
  %36 = fmul double %35, 5.000000e-01, !dbg !219
  call void @llvm.dbg.value(metadata double %36, metadata !200, metadata !DIExpression()), !dbg !203
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !220
  %38 = load double, ptr %37, align 8, !dbg !220, !tbaa !122
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !221
  %40 = load double, ptr %39, align 8, !dbg !221, !tbaa !122
  %41 = fadd double %38, %40, !dbg !222
  %42 = fmul double %41, 5.000000e-01, !dbg !223
  %43 = call double @llvm.fabs.f64(double %36), !dbg !224
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !225
  %45 = fadd double %42, %44, !dbg !226
  call void @llvm.dbg.value(metadata double %45, metadata !201, metadata !DIExpression()), !dbg !203
  %46 = call i32 @gsl_sf_exp_err_e(double noundef %36, double noundef %45, ptr noundef nonnull %8) #6, !dbg !227
  call void @llvm.dbg.value(metadata i32 %46, metadata !202, metadata !DIExpression()), !dbg !203
  %47 = load double, ptr %8, align 8, !dbg !228, !tbaa !110
  %48 = fmul double %27, %47, !dbg !229
  tail call void @llvm.dbg.value(metadata double %48, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !171
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !230
  %50 = load double, ptr %49, align 8, !dbg !230, !tbaa !122
  %51 = fmul double %27, %50, !dbg !231
  %52 = call double @llvm.fabs.f64(double %48), !dbg !232
  %53 = fmul double %52, 0x3CC0000000000000, !dbg !233
  %54 = fadd double %51, %53, !dbg !234
  tail call void @llvm.dbg.value(metadata double %54, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !171
  %55 = icmp eq i32 %46, 0, !dbg !235
  %56 = icmp eq i32 %29, 0, !dbg !235
  %57 = select i1 %56, i32 %32, i32 %29, !dbg !235
  %58 = select i1 %55, i32 %57, i32 %46, !dbg !235
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !236
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !236
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !159, metadata !DIExpression()), !dbg !171
  %59 = fmul double %22, %3, !dbg !237
  tail call void @llvm.dbg.value(metadata double %59, metadata !160, metadata !DIExpression()), !dbg !171
  %60 = fmul double %59, -5.000000e-01, !dbg !238
  %61 = call double @exp(double noundef %60) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata double %61, metadata !161, metadata !DIExpression()), !dbg !171
  %62 = call double @gsl_sf_pow_int(double noundef %59, i32 noundef %1) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata double %62, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !241
  %63 = shl nsw i32 %1, 1, !dbg !242
  %64 = or disjoint i32 %63, 1, !dbg !243
  %65 = sitofp i32 %64 to double, !dbg !244
  %66 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %31, double noundef %65, double noundef %59, ptr noundef nonnull %9) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !164, metadata !DIExpression()), !dbg !171
  %67 = fmul double %48, %61, !dbg !246
  %68 = fmul double %67, %62, !dbg !247
  tail call void @llvm.dbg.value(metadata double %68, metadata !165, metadata !DIExpression()), !dbg !171
  %69 = fmul double %54, %61, !dbg !248
  %70 = fmul double %69, %62, !dbg !249
  tail call void @llvm.dbg.value(metadata double %70, metadata !166, metadata !DIExpression()), !dbg !171
  %71 = fmul double %59, 5.000000e-01, !dbg !250
  %72 = fadd double %71, 1.000000e+00, !dbg !251
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !252
  %74 = fmul double %73, %48, !dbg !253
  %75 = fmul double %74, %61, !dbg !254
  %76 = fmul double %75, %62, !dbg !255
  %77 = fadd double %70, %76, !dbg !256
  tail call void @llvm.dbg.value(metadata double %77, metadata !166, metadata !DIExpression()), !dbg !171
  %78 = sitofp i32 %1 to double, !dbg !257
  %79 = fadd double %78, 1.000000e+00, !dbg !258
  %80 = fmul double %79, 0x3CB0000000000000, !dbg !259
  %81 = fmul double %80, %67, !dbg !260
  %82 = fmul double %62, %81, !dbg !261
  %83 = fadd double %77, %82, !dbg !262
  tail call void @llvm.dbg.value(metadata double %83, metadata !166, metadata !DIExpression()), !dbg !171
  %84 = load double, ptr %9, align 8, !dbg !263
  %85 = fmul double %68, %84, !dbg !264
  store double %85, ptr %4, align 8, !dbg !265, !tbaa !110
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !266
  %87 = load double, ptr %86, align 8, !dbg !266, !tbaa !122
  %88 = fmul double %68, %87, !dbg !267
  %89 = call double @llvm.fabs.f64(double %84), !dbg !268
  %90 = fmul double %83, %89, !dbg !269
  %91 = fadd double %90, %88, !dbg !270
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !271
  %93 = call double @llvm.fabs.f64(double %85), !dbg !272
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !273
  %95 = fadd double %94, %91, !dbg !274
  store double %95, ptr %92, align 8, !dbg !274, !tbaa !122
  %96 = icmp eq i32 %1, 0, !dbg !275
  br i1 %96, label %103, label %97, !dbg !277

97:                                               ; preds = %19
  %98 = fcmp ogt double %3, 0.000000e+00, !dbg !278
  %99 = icmp sgt i32 %1, 0
  %100 = and i1 %99, %98, !dbg !279
  %101 = fcmp une double %84, 0.000000e+00
  %102 = select i1 %100, i1 %101, i1 false, !dbg !279
  br i1 %102, label %105, label %112, !dbg !279

103:                                              ; preds = %19
  %104 = fcmp une double %84, 0.000000e+00, !dbg !280
  br i1 %104, label %105, label %112, !dbg !281

105:                                              ; preds = %97, %103
  %106 = icmp eq i32 %66, 0, !dbg !282
  %107 = icmp eq i32 %58, 0
  %108 = select i1 %106, i1 %107, i1 false, !dbg !283
  %109 = fcmp olt double %93, 0x10000000000000
  %110 = select i1 %108, i1 %109, i1 false, !dbg !283
  br i1 %110, label %111, label %112, !dbg !283

111:                                              ; preds = %105
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 15) #6, !dbg !284
  br label %115, !dbg !284

112:                                              ; preds = %105, %103, %97
  %113 = icmp eq i32 %66, 0, !dbg !288
  %114 = select i1 %113, i32 %58, i32 %66, !dbg !288
  br label %115, !dbg !289

115:                                              ; preds = %112, %111
  %116 = phi i32 [ 15, %111 ], [ %114, %112 ], !dbg !171
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !290
  br label %117

117:                                              ; preds = %17, %115
  %118 = phi i32 [ 1, %17 ], [ %116, %115 ], !dbg !291
  ret i32 %118, !dbg !292
}

declare !dbg !293 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !297 i32 @gsl_sf_laguerre_n_e(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hydrogenicR_1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !301 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !305, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata double %1, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata double %0, metadata !90, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata double %1, metadata !91, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr undef, metadata !92, metadata !DIExpression()), !dbg !310
  %3 = fcmp ogt double %0, 0.000000e+00, !dbg !312
  %4 = fcmp oge double %1, 0.000000e+00
  %5 = and i1 %3, %4, !dbg !313
  br i1 %5, label %6, label %17, !dbg !313

6:                                                ; preds = %2
  %7 = fmul double %0, 2.000000e+00, !dbg !314
  call void @llvm.dbg.value(metadata double %7, metadata !93, metadata !DIExpression()), !dbg !315
  %8 = tail call double @sqrt(double noundef %0) #6, !dbg !316
  %9 = fmul double %7, %8, !dbg !317
  call void @llvm.dbg.value(metadata double %9, metadata !96, metadata !DIExpression()), !dbg !315
  %10 = fneg double %0, !dbg !318
  %11 = fmul double %10, %1, !dbg !319
  %12 = tail call double @exp(double noundef %11) #6, !dbg !320
  call void @llvm.dbg.value(metadata double %12, metadata !97, metadata !DIExpression()), !dbg !315
  %13 = fmul double %9, %12, !dbg !321
  tail call void @llvm.dbg.value(metadata double %13, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !309
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !322
  tail call void @llvm.dbg.value(metadata double poison, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !309
  %15 = fcmp olt double %14, 0x10000000000000, !dbg !323
  br i1 %15, label %16, label %21, !dbg !324

16:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 15) #6, !dbg !325
  br label %18, !dbg !325

17:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !309
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !309
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 1) #6, !dbg !326
  br label %18, !dbg !326

18:                                               ; preds = %17, %16
  %19 = phi double [ 0x7FF8000000000000, %17 ], [ %13, %16 ]
  %20 = phi i32 [ 1, %17 ], [ 15, %16 ]
  tail call void @llvm.dbg.value(metadata double %19, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !309
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !308, metadata !DIExpression()), !dbg !309
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef %20) #6, !dbg !327
  br label %21, !dbg !327

21:                                               ; preds = %6, %18
  %22 = phi double [ %19, %18 ], [ %13, %6 ]
  ret double %22, !dbg !331
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hydrogenicR(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 !dbg !332 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !342, metadata ptr %5, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !336, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !337, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata double %2, metadata !338, metadata !DIExpression()), !dbg !343
  tail call void @llvm.dbg.value(metadata double %3, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !344
  %6 = call i32 @gsl_sf_hydrogenicR_e(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %5), !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !341, metadata !DIExpression()), !dbg !343
  %7 = icmp eq i32 %6, 0, !dbg !345
  br i1 %7, label %9, label %8, !dbg !344

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef %6) #6, !dbg !347
  br label %9, !dbg !347

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !344, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !350
  ret double %10, !dbg !350
}

declare !dbg !351 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !357 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "coulomb_bound.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d6a65d7e72a811af028b075f37cd162")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 42)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, globals: !68, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 39, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!33 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!34 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!35 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!36 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!37 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!38 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!39 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!40 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!41 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!42 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!43 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!44 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!45 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!46 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!47 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!48 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!49 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!50 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!51 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!52 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!53 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!54 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!55 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!56 = !DIEnumerator(name: "GSL_ESING", value: 21)
!57 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!58 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!59 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!60 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!61 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!62 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!63 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!64 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!65 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!66 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!67 = !DIEnumerator(name: "GSL_EOF", value: 32)
!68 = !{!0, !7, !12, !17, !22}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 8, !"PIC Level", i32 2}
!73 = !{i32 7, !"PIE Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 2}
!75 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!76 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!77 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_1_e", scope: !2, file: !2, line: 58, type: !78, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !89)
!78 = !DISubroutineType(types: !79)
!79 = !{!31, !80, !80, !82}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !84, line: 41, baseType: !85)
!84 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !84, line: 37, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !84, line: 38, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !85, file: !84, line: 39, baseType: !81, size: 64, offset: 64)
!89 = !{!90, !91, !92, !93, !96, !97}
!90 = !DILocalVariable(name: "Z", arg: 1, scope: !77, file: !2, line: 58, type: !80)
!91 = !DILocalVariable(name: "r", arg: 2, scope: !77, file: !2, line: 58, type: !80)
!92 = !DILocalVariable(name: "result", arg: 3, scope: !77, file: !2, line: 58, type: !82)
!93 = !DILocalVariable(name: "A", scope: !94, file: !2, line: 61, type: !81)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 60, column: 27)
!95 = distinct !DILexicalBlock(scope: !77, file: !2, line: 60, column: 6)
!96 = !DILocalVariable(name: "norm", scope: !94, file: !2, line: 62, type: !81)
!97 = !DILocalVariable(name: "ea", scope: !94, file: !2, line: 63, type: !81)
!98 = !DILocation(line: 0, scope: !77)
!99 = !DILocation(line: 60, column: 8, scope: !95)
!100 = !DILocation(line: 60, column: 14, scope: !95)
!101 = !DILocation(line: 61, column: 19, scope: !94)
!102 = !DILocation(line: 0, scope: !94)
!103 = !DILocation(line: 62, column: 21, scope: !94)
!104 = !DILocation(line: 62, column: 20, scope: !94)
!105 = !DILocation(line: 63, column: 21, scope: !94)
!106 = !DILocation(line: 63, column: 23, scope: !94)
!107 = !DILocation(line: 63, column: 17, scope: !94)
!108 = !DILocation(line: 64, column: 23, scope: !94)
!109 = !DILocation(line: 64, column: 17, scope: !94)
!110 = !{!111, !112, i64 0}
!111 = !{!"gsl_sf_result_struct", !112, i64 0, !112, i64 8}
!112 = !{!"double", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !DILocation(line: 65, column: 43, scope: !94)
!116 = !DILocation(line: 65, column: 41, scope: !94)
!117 = !DILocation(line: 65, column: 69, scope: !94)
!118 = !DILocation(line: 65, column: 63, scope: !94)
!119 = !DILocation(line: 65, column: 61, scope: !94)
!120 = !DILocation(line: 65, column: 13, scope: !94)
!121 = !DILocation(line: 65, column: 17, scope: !94)
!122 = !{!111, !112, i64 8}
!123 = !DILocation(line: 66, column: 5, scope: !124)
!124 = distinct !DILexicalBlock(scope: !94, file: !2, line: 66, column: 5)
!125 = !DILocation(line: 66, column: 5, scope: !94)
!126 = !DILocation(line: 66, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !2, line: 66, column: 5)
!128 = !DILocation(line: 70, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 70, column: 5)
!130 = distinct !DILexicalBlock(scope: !95, file: !2, line: 69, column: 8)
!131 = !DILocation(line: 70, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !2, line: 70, column: 5)
!133 = !DILocation(line: 0, scope: !95)
!134 = !DILocation(line: 72, column: 1, scope: !77)
!135 = !DISubprogram(name: "sqrt", scope: !136, file: !136, line: 143, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!137 = !DISubroutineType(types: !138)
!138 = !{!81, !81}
!139 = !DISubprogram(name: "exp", scope: !136, file: !136, line: 95, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubprogram(name: "gsl_error", scope: !30, file: !30, line: 77, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !143, !143, !31, !31}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!145 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_e", scope: !2, file: !2, line: 76, type: !146, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !149)
!146 = !DISubroutineType(types: !147)
!147 = !{!31, !148, !148, !80, !80, !82}
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!149 = !{!150, !151, !152, !153, !154, !155, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!150 = !DILocalVariable(name: "n", arg: 1, scope: !145, file: !2, line: 76, type: !148)
!151 = !DILocalVariable(name: "l", arg: 2, scope: !145, file: !2, line: 76, type: !148)
!152 = !DILocalVariable(name: "Z", arg: 3, scope: !145, file: !2, line: 77, type: !80)
!153 = !DILocalVariable(name: "r", arg: 4, scope: !145, file: !2, line: 77, type: !80)
!154 = !DILocalVariable(name: "result", arg: 5, scope: !145, file: !2, line: 78, type: !82)
!155 = !DILocalVariable(name: "A", scope: !156, file: !2, line: 84, type: !81)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 83, column: 8)
!157 = distinct !DILexicalBlock(scope: !145, file: !2, line: 80, column: 6)
!158 = !DILocalVariable(name: "norm", scope: !156, file: !2, line: 85, type: !83)
!159 = !DILocalVariable(name: "stat_norm", scope: !156, file: !2, line: 86, type: !31)
!160 = !DILocalVariable(name: "rho", scope: !156, file: !2, line: 87, type: !81)
!161 = !DILocalVariable(name: "ea", scope: !156, file: !2, line: 88, type: !81)
!162 = !DILocalVariable(name: "pp", scope: !156, file: !2, line: 89, type: !81)
!163 = !DILocalVariable(name: "lag", scope: !156, file: !2, line: 90, type: !83)
!164 = !DILocalVariable(name: "stat_lag", scope: !156, file: !2, line: 91, type: !31)
!165 = !DILocalVariable(name: "W_val", scope: !156, file: !2, line: 92, type: !81)
!166 = !DILocalVariable(name: "W_err", scope: !156, file: !2, line: 93, type: !81)
!167 = distinct !DIAssignID()
!168 = distinct !DIAssignID()
!169 = distinct !DIAssignID()
!170 = distinct !DIAssignID()
!171 = !DILocation(line: 0, scope: !156)
!172 = !DILocation(line: 0, scope: !145)
!173 = !DILocation(line: 80, column: 8, scope: !157)
!174 = !DILocation(line: 80, column: 12, scope: !157)
!175 = !DILocation(line: 80, column: 17, scope: !157)
!176 = !DILocation(line: 80, column: 23, scope: !157)
!177 = !DILocation(line: 81, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 81, column: 5)
!179 = distinct !DILexicalBlock(scope: !157, file: !2, line: 80, column: 47)
!180 = !DILocation(line: 81, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !2, line: 81, column: 5)
!182 = !DILocation(line: 84, column: 19, scope: !156)
!183 = !DILocation(line: 84, column: 22, scope: !156)
!184 = !DILocation(line: 84, column: 21, scope: !156)
!185 = !DILocalVariable(name: "ln_a", scope: !186, file: !2, line: 41, type: !83)
!186 = distinct !DISubprogram(name: "R_norm", scope: !2, file: !2, line: 37, type: !187, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!31, !148, !148, !80, !82}
!189 = !{!190, !191, !192, !193, !194, !195, !185, !196, !197, !198, !199, !200, !201, !202}
!190 = !DILocalVariable(name: "n", arg: 1, scope: !186, file: !2, line: 37, type: !148)
!191 = !DILocalVariable(name: "l", arg: 2, scope: !186, file: !2, line: 37, type: !148)
!192 = !DILocalVariable(name: "Z", arg: 3, scope: !186, file: !2, line: 37, type: !80)
!193 = !DILocalVariable(name: "result", arg: 4, scope: !186, file: !2, line: 37, type: !82)
!194 = !DILocalVariable(name: "A", scope: !186, file: !2, line: 39, type: !81)
!195 = !DILocalVariable(name: "pre", scope: !186, file: !2, line: 40, type: !81)
!196 = !DILocalVariable(name: "ln_b", scope: !186, file: !2, line: 41, type: !83)
!197 = !DILocalVariable(name: "ex", scope: !186, file: !2, line: 42, type: !83)
!198 = !DILocalVariable(name: "stat_a", scope: !186, file: !2, line: 43, type: !31)
!199 = !DILocalVariable(name: "stat_b", scope: !186, file: !2, line: 44, type: !31)
!200 = !DILocalVariable(name: "diff_val", scope: !186, file: !2, line: 45, type: !81)
!201 = !DILocalVariable(name: "diff_err", scope: !186, file: !2, line: 46, type: !81)
!202 = !DILocalVariable(name: "stat_e", scope: !186, file: !2, line: 47, type: !31)
!203 = !DILocation(line: 0, scope: !186, inlinedAt: !204)
!204 = distinct !DILocation(line: 86, column: 21, scope: !156)
!205 = !DILocation(line: 40, column: 22, scope: !186, inlinedAt: !204)
!206 = !DILocation(line: 40, column: 24, scope: !186, inlinedAt: !204)
!207 = !DILocation(line: 40, column: 32, scope: !186, inlinedAt: !204)
!208 = !DILocation(line: 40, column: 27, scope: !186, inlinedAt: !204)
!209 = !DILocation(line: 40, column: 16, scope: !186, inlinedAt: !204)
!210 = !DILocation(line: 41, column: 3, scope: !186, inlinedAt: !204)
!211 = !DILocation(line: 42, column: 3, scope: !186, inlinedAt: !204)
!212 = !DILocation(line: 43, column: 33, scope: !186, inlinedAt: !204)
!213 = !DILocation(line: 43, column: 16, scope: !186, inlinedAt: !204)
!214 = !DILocation(line: 44, column: 35, scope: !186, inlinedAt: !204)
!215 = !DILocation(line: 44, column: 16, scope: !186, inlinedAt: !204)
!216 = !DILocation(line: 45, column: 31, scope: !186, inlinedAt: !204)
!217 = !DILocation(line: 45, column: 42, scope: !186, inlinedAt: !204)
!218 = !DILocation(line: 45, column: 35, scope: !186, inlinedAt: !204)
!219 = !DILocation(line: 45, column: 24, scope: !186, inlinedAt: !204)
!220 = !DILocation(line: 46, column: 31, scope: !186, inlinedAt: !204)
!221 = !DILocation(line: 46, column: 42, scope: !186, inlinedAt: !204)
!222 = !DILocation(line: 46, column: 35, scope: !186, inlinedAt: !204)
!223 = !DILocation(line: 46, column: 24, scope: !186, inlinedAt: !204)
!224 = !DILocation(line: 46, column: 67, scope: !186, inlinedAt: !204)
!225 = !DILocation(line: 46, column: 65, scope: !186, inlinedAt: !204)
!226 = !DILocation(line: 46, column: 47, scope: !186, inlinedAt: !204)
!227 = !DILocation(line: 47, column: 16, scope: !186, inlinedAt: !204)
!228 = !DILocation(line: 48, column: 27, scope: !186, inlinedAt: !204)
!229 = !DILocation(line: 48, column: 22, scope: !186, inlinedAt: !204)
!230 = !DILocation(line: 49, column: 27, scope: !186, inlinedAt: !204)
!231 = !DILocation(line: 49, column: 22, scope: !186, inlinedAt: !204)
!232 = !DILocation(line: 50, column: 42, scope: !186, inlinedAt: !204)
!233 = !DILocation(line: 50, column: 40, scope: !186, inlinedAt: !204)
!234 = !DILocation(line: 50, column: 15, scope: !186, inlinedAt: !204)
!235 = !DILocation(line: 51, column: 10, scope: !186, inlinedAt: !204)
!236 = !DILocation(line: 52, column: 1, scope: !186, inlinedAt: !204)
!237 = !DILocation(line: 87, column: 19, scope: !156)
!238 = !DILocation(line: 88, column: 25, scope: !156)
!239 = !DILocation(line: 88, column: 17, scope: !156)
!240 = !DILocation(line: 89, column: 17, scope: !156)
!241 = !DILocation(line: 90, column: 5, scope: !156)
!242 = !DILocation(line: 91, column: 48, scope: !156)
!243 = !DILocation(line: 91, column: 50, scope: !156)
!244 = !DILocation(line: 91, column: 47, scope: !156)
!245 = !DILocation(line: 91, column: 20, scope: !156)
!246 = !DILocation(line: 92, column: 29, scope: !156)
!247 = !DILocation(line: 92, column: 34, scope: !156)
!248 = !DILocation(line: 93, column: 29, scope: !156)
!249 = !DILocation(line: 93, column: 34, scope: !156)
!250 = !DILocation(line: 94, column: 30, scope: !156)
!251 = !DILocation(line: 94, column: 35, scope: !156)
!252 = !DILocation(line: 94, column: 42, scope: !156)
!253 = !DILocation(line: 94, column: 23, scope: !156)
!254 = !DILocation(line: 94, column: 61, scope: !156)
!255 = !DILocation(line: 94, column: 66, scope: !156)
!256 = !DILocation(line: 94, column: 11, scope: !156)
!257 = !DILocation(line: 95, column: 32, scope: !156)
!258 = !DILocation(line: 95, column: 33, scope: !156)
!259 = !DILocation(line: 95, column: 39, scope: !156)
!260 = !DILocation(line: 95, column: 28, scope: !156)
!261 = !DILocation(line: 95, column: 58, scope: !156)
!262 = !DILocation(line: 95, column: 11, scope: !156)
!263 = !DILocation(line: 96, column: 32, scope: !156)
!264 = !DILocation(line: 96, column: 26, scope: !156)
!265 = !DILocation(line: 96, column: 18, scope: !156)
!266 = !DILocation(line: 97, column: 32, scope: !156)
!267 = !DILocation(line: 97, column: 26, scope: !156)
!268 = !DILocation(line: 97, column: 46, scope: !156)
!269 = !DILocation(line: 97, column: 44, scope: !156)
!270 = !DILocation(line: 97, column: 36, scope: !156)
!271 = !DILocation(line: 97, column: 13, scope: !156)
!272 = !DILocation(line: 98, column: 44, scope: !156)
!273 = !DILocation(line: 98, column: 42, scope: !156)
!274 = !DILocation(line: 98, column: 17, scope: !156)
!275 = !DILocation(line: 99, column: 12, scope: !276)
!276 = distinct !DILexicalBlock(scope: !156, file: !2, line: 99, column: 9)
!277 = !DILocation(line: 99, column: 17, scope: !276)
!278 = !DILocation(line: 99, column: 23, scope: !276)
!279 = !DILocation(line: 99, column: 27, scope: !276)
!280 = !DILocation(line: 99, column: 49, scope: !276)
!281 = !DILocation(line: 100, column: 9, scope: !276)
!282 = !DILocation(line: 100, column: 21, scope: !276)
!283 = !DILocation(line: 100, column: 36, scope: !276)
!284 = !DILocation(line: 101, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 101, column: 7)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 101, column: 7)
!287 = distinct !DILexicalBlock(scope: !276, file: !2, line: 100, column: 65)
!288 = !DILocation(line: 103, column: 12, scope: !156)
!289 = !DILocation(line: 103, column: 5, scope: !156)
!290 = !DILocation(line: 104, column: 3, scope: !157)
!291 = !DILocation(line: 0, scope: !157)
!292 = !DILocation(line: 105, column: 1, scope: !145)
!293 = !DISubprogram(name: "gsl_sf_pow_int", scope: !294, file: !294, line: 44, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!295 = !DISubroutineType(types: !296)
!296 = !{!81, !80, !148}
!297 = !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !298, file: !298, line: 62, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DIFile(filename: "../gsl/gsl_sf_laguerre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "58c60843776affae828c7538cacd7802")
!299 = !DISubroutineType(types: !300)
!300 = !{!31, !148, !80, !80, !82}
!301 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR_1", scope: !2, file: !2, line: 111, type: !302, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!81, !80, !80}
!304 = !{!305, !306, !307, !308}
!305 = !DILocalVariable(name: "Z", arg: 1, scope: !301, file: !2, line: 111, type: !80)
!306 = !DILocalVariable(name: "r", arg: 2, scope: !301, file: !2, line: 111, type: !80)
!307 = !DILocalVariable(name: "result", scope: !301, file: !2, line: 113, type: !83)
!308 = !DILocalVariable(name: "status", scope: !301, file: !2, line: 113, type: !31)
!309 = !DILocation(line: 0, scope: !301)
!310 = !DILocation(line: 0, scope: !77, inlinedAt: !311)
!311 = distinct !DILocation(line: 113, column: 3, scope: !301)
!312 = !DILocation(line: 60, column: 8, scope: !95, inlinedAt: !311)
!313 = !DILocation(line: 60, column: 14, scope: !95, inlinedAt: !311)
!314 = !DILocation(line: 61, column: 19, scope: !94, inlinedAt: !311)
!315 = !DILocation(line: 0, scope: !94, inlinedAt: !311)
!316 = !DILocation(line: 62, column: 21, scope: !94, inlinedAt: !311)
!317 = !DILocation(line: 62, column: 20, scope: !94, inlinedAt: !311)
!318 = !DILocation(line: 63, column: 21, scope: !94, inlinedAt: !311)
!319 = !DILocation(line: 63, column: 23, scope: !94, inlinedAt: !311)
!320 = !DILocation(line: 63, column: 17, scope: !94, inlinedAt: !311)
!321 = !DILocation(line: 64, column: 23, scope: !94, inlinedAt: !311)
!322 = !DILocation(line: 65, column: 43, scope: !94, inlinedAt: !311)
!323 = !DILocation(line: 66, column: 5, scope: !124, inlinedAt: !311)
!324 = !DILocation(line: 66, column: 5, scope: !94, inlinedAt: !311)
!325 = !DILocation(line: 66, column: 5, scope: !127, inlinedAt: !311)
!326 = !DILocation(line: 70, column: 5, scope: !132, inlinedAt: !311)
!327 = !DILocation(line: 113, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 113, column: 3)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 113, column: 3)
!330 = distinct !DILexicalBlock(scope: !301, file: !2, line: 113, column: 3)
!331 = !DILocation(line: 114, column: 1, scope: !301)
!332 = distinct !DISubprogram(name: "gsl_sf_hydrogenicR", scope: !2, file: !2, line: 117, type: !333, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!81, !148, !148, !80, !80}
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DILocalVariable(name: "n", arg: 1, scope: !332, file: !2, line: 117, type: !148)
!337 = !DILocalVariable(name: "l", arg: 2, scope: !332, file: !2, line: 117, type: !148)
!338 = !DILocalVariable(name: "Z", arg: 3, scope: !332, file: !2, line: 117, type: !80)
!339 = !DILocalVariable(name: "r", arg: 4, scope: !332, file: !2, line: 117, type: !80)
!340 = !DILocalVariable(name: "result", scope: !332, file: !2, line: 119, type: !83)
!341 = !DILocalVariable(name: "status", scope: !332, file: !2, line: 119, type: !31)
!342 = distinct !DIAssignID()
!343 = !DILocation(line: 0, scope: !332)
!344 = !DILocation(line: 119, column: 3, scope: !332)
!345 = !DILocation(line: 119, column: 3, scope: !346)
!346 = distinct !DILexicalBlock(scope: !332, file: !2, line: 119, column: 3)
!347 = !DILocation(line: 119, column: 3, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 119, column: 3)
!349 = distinct !DILexicalBlock(scope: !346, file: !2, line: 119, column: 3)
!350 = !DILocation(line: 120, column: 1, scope: !332)
!351 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !352, file: !352, line: 136, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!353 = !DISubroutineType(types: !354)
!354 = !{!31, !355, !82}
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!357 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !358, file: !358, line: 110, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
