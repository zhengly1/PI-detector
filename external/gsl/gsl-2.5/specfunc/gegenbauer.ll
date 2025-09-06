; ModuleID = 'gegenbauer.c'
source_filename = "gegenbauer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"gegenbauer.c\00", align 1, !dbg !7
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_gegenpoly_n_e(n, lambda, x, &result)\00", align 1, !dbg !9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !73 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !88
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !88
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !89
  %5 = fmul double %0, 2.000000e+00, !dbg !91
  %6 = fmul double %5, %1, !dbg !91
  %7 = fmul double %1, 2.000000e+00, !dbg !91
  %8 = select i1 %4, double %7, double %6, !dbg !91
  %9 = select i1 %4, double 0x3CC0000000000000, double 0x3CD0000000000000, !dbg !91
  %10 = select i1 %4, double %7, double %6, !dbg !91
  %11 = tail call double @llvm.fabs.f64(double %8), !dbg !92
  %12 = fmul double %11, %9, !dbg !92
  store double %10, ptr %2, align 8, !dbg !92
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !92
  store double %12, ptr %13, align 8, !dbg !92
  ret i32 0, !dbg !93
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_2_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !94 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !96, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata double %1, metadata !97, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !98, metadata !DIExpression()), !dbg !103
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !104
  br i1 %4, label %5, label %14, !dbg !105

5:                                                ; preds = %3
  %6 = fmul double %1, 2.000000e+00, !dbg !106
  %7 = fmul double %6, %1, !dbg !107
  tail call void @llvm.dbg.value(metadata double %7, metadata !99, metadata !DIExpression()), !dbg !108
  %8 = fadd double %7, -1.000000e+00, !dbg !109
  %9 = tail call double @llvm.fabs.f64(double %7), !dbg !110
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !111
  %11 = tail call double @llvm.fabs.f64(double %8), !dbg !112
  %12 = fmul double %11, 0x3CC0000000000000, !dbg !113
  %13 = fadd double %10, %12, !dbg !114
  br label %26

14:                                               ; preds = %3
  %15 = fadd double %0, 1.000000e+00, !dbg !115
  %16 = fmul double %15, 2.000000e+00, !dbg !117
  %17 = fmul double %16, %1, !dbg !118
  %18 = fmul double %17, %1, !dbg !119
  %19 = fadd double %18, -1.000000e+00, !dbg !120
  %20 = fmul double %19, %0, !dbg !121
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !122
  %22 = fmul double %21, 2.000000e+00, !dbg !123
  %23 = tail call double @llvm.fabs.f64(double %0), !dbg !124
  %24 = fadd double %23, %22, !dbg !125
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !126
  br label %26, !dbg !127

26:                                               ; preds = %14, %5
  %27 = phi double [ %8, %5 ], [ %20, %14 ], !dbg !128
  %28 = phi double [ %13, %5 ], [ %25, %14 ], !dbg !128
  store double %27, ptr %2, align 8, !dbg !128
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !128
  store double %28, ptr %29, align 8, !dbg !128
  ret i32 0, !dbg !129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_3_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !130 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !132, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double %1, metadata !133, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !134, metadata !DIExpression()), !dbg !138
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !139
  br i1 %4, label %5, label %11, !dbg !140

5:                                                ; preds = %3
  %6 = fmul double %1, 0x3FF5555555555555, !dbg !141
  %7 = fmul double %6, %1, !dbg !143
  %8 = fadd double %7, -2.000000e+00, !dbg !144
  %9 = fmul double %8, %1, !dbg !145
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !146
  br label %25, !dbg !147

11:                                               ; preds = %3
  %12 = fmul double %0, 2.000000e+00, !dbg !148
  %13 = fadd double %12, 6.000000e+00, !dbg !149
  %14 = fmul double %13, %0, !dbg !150
  %15 = fadd double %14, 4.000000e+00, !dbg !151
  tail call void @llvm.dbg.value(metadata double %15, metadata !135, metadata !DIExpression()), !dbg !152
  %16 = fmul double %12, %1, !dbg !153
  %17 = fsub double -1.000000e+00, %0, !dbg !154
  %18 = fmul double %15, %1, !dbg !155
  %19 = fmul double %18, %1, !dbg !156
  %20 = fdiv double %19, 3.000000e+00, !dbg !157
  %21 = fadd double %17, %20, !dbg !158
  %22 = fmul double %16, %21, !dbg !159
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !160
  %24 = fmul double %0, %1, !dbg !161
  br label %25

25:                                               ; preds = %11, %5
  %26 = phi double [ %24, %11 ], [ %1, %5 ]
  %27 = phi double [ %23, %11 ], [ %10, %5 ]
  %28 = phi double [ %22, %11 ], [ %9, %5 ], !dbg !162
  %29 = fmul double %27, 2.000000e+00, !dbg !162
  %30 = tail call double @llvm.fabs.f64(double %26), !dbg !162
  %31 = fadd double %30, %29, !dbg !162
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !162
  store double %28, ptr %2, align 8, !dbg !162
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !162
  store double %32, ptr %33, align 8, !dbg !162
  ret i32 0, !dbg !163
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !dbg !164 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !168, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %1, metadata !169, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata double %2, metadata !170, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !191
  %5 = fcmp ole double %1, -5.000000e-01, !dbg !192
  %6 = icmp slt i32 %0, 0
  %7 = or i1 %6, %5, !dbg !193
  br i1 %7, label %8, label %10, !dbg !193

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !194, !tbaa !197
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !194
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !194, !tbaa !202
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 1) #8, !dbg !203
  br label %190, !dbg !203

10:                                               ; preds = %4
  switch i32 %0, label %80 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %22
    i32 3, label %49
  ], !dbg !205

11:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 8, !dbg !206, !tbaa !197
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !208
  store double 0.000000e+00, ptr %12, align 8, !dbg !209, !tbaa !202
  br label %190, !dbg !210

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !85, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata double %2, metadata !86, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr %3, metadata !87, metadata !DIExpression()), !dbg !211
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !214
  %15 = fmul double %1, 2.000000e+00, !dbg !215
  %16 = select i1 %14, double 2.000000e+00, double %15, !dbg !215
  %17 = fmul double %16, %2, !dbg !215
  %18 = select i1 %14, double 0x3CC0000000000000, double 0x3CD0000000000000, !dbg !215
  %19 = tail call double @llvm.fabs.f64(double %17), !dbg !216
  %20 = fmul double %18, %19, !dbg !216
  store double %17, ptr %3, align 8, !dbg !216
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !216
  store double %20, ptr %21, align 8, !dbg !216
  br label %190, !dbg !217

22:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !96, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %2, metadata !97, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %3, metadata !98, metadata !DIExpression()), !dbg !218
  %23 = fcmp oeq double %1, 0.000000e+00, !dbg !221
  br i1 %23, label %24, label %33, !dbg !222

24:                                               ; preds = %22
  %25 = fmul double %2, 2.000000e+00, !dbg !223
  %26 = fmul double %25, %2, !dbg !224
  call void @llvm.dbg.value(metadata double %26, metadata !99, metadata !DIExpression()), !dbg !225
  %27 = fadd double %26, -1.000000e+00, !dbg !226
  %28 = tail call double @llvm.fabs.f64(double %26), !dbg !227
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !228
  %30 = tail call double @llvm.fabs.f64(double %27), !dbg !229
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !230
  %32 = fadd double %29, %31, !dbg !231
  br label %45

33:                                               ; preds = %22
  %34 = fadd double %1, 1.000000e+00, !dbg !232
  %35 = fmul double %34, 2.000000e+00, !dbg !233
  %36 = fmul double %35, %2, !dbg !234
  %37 = fmul double %36, %2, !dbg !235
  %38 = fadd double %37, -1.000000e+00, !dbg !236
  %39 = fmul double %38, %1, !dbg !237
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !238
  %41 = fmul double %40, 2.000000e+00, !dbg !239
  %42 = tail call double @llvm.fabs.f64(double %1), !dbg !240
  %43 = fadd double %42, %41, !dbg !241
  %44 = fmul double %43, 0x3CB0000000000000, !dbg !242
  br label %45, !dbg !243

45:                                               ; preds = %24, %33
  %46 = phi double [ %27, %24 ], [ %39, %33 ], !dbg !244
  %47 = phi double [ %32, %24 ], [ %44, %33 ], !dbg !244
  store double %46, ptr %3, align 8, !dbg !244
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !244
  store double %47, ptr %48, align 8, !dbg !244
  br label %190, !dbg !245

49:                                               ; preds = %10
  call void @llvm.dbg.value(metadata double %1, metadata !132, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata double %2, metadata !133, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %3, metadata !134, metadata !DIExpression()), !dbg !246
  %50 = fcmp oeq double %1, 0.000000e+00, !dbg !249
  br i1 %50, label %51, label %57, !dbg !250

51:                                               ; preds = %49
  %52 = fmul double %2, 0x3FF5555555555555, !dbg !251
  %53 = fmul double %52, %2, !dbg !252
  %54 = fadd double %53, -2.000000e+00, !dbg !253
  %55 = fmul double %54, %2, !dbg !254
  %56 = tail call double @llvm.fabs.f64(double %55), !dbg !255
  br label %71, !dbg !256

57:                                               ; preds = %49
  %58 = fmul double %1, 2.000000e+00, !dbg !257
  %59 = fadd double %58, 6.000000e+00, !dbg !258
  %60 = fmul double %59, %1, !dbg !259
  %61 = fadd double %60, 4.000000e+00, !dbg !260
  call void @llvm.dbg.value(metadata double %61, metadata !135, metadata !DIExpression()), !dbg !261
  %62 = fmul double %58, %2, !dbg !262
  %63 = fsub double -1.000000e+00, %1, !dbg !263
  %64 = fmul double %61, %2, !dbg !264
  %65 = fmul double %64, %2, !dbg !265
  %66 = fdiv double %65, 3.000000e+00, !dbg !266
  %67 = fadd double %63, %66, !dbg !267
  %68 = fmul double %62, %67, !dbg !268
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !269
  %70 = fmul double %1, %2, !dbg !270
  br label %71

71:                                               ; preds = %51, %57
  %72 = phi double [ %70, %57 ], [ %2, %51 ]
  %73 = phi double [ %69, %57 ], [ %56, %51 ]
  %74 = phi double [ %68, %57 ], [ %55, %51 ], !dbg !271
  %75 = fmul double %73, 2.000000e+00, !dbg !271
  %76 = tail call double @llvm.fabs.f64(double %72), !dbg !271
  %77 = fadd double %76, %75, !dbg !271
  %78 = fmul double %77, 0x3CB0000000000000, !dbg !271
  store double %74, ptr %3, align 8, !dbg !271
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !271
  store double %78, ptr %79, align 8, !dbg !271
  br label %190, !dbg !272

80:                                               ; preds = %10
  %81 = fcmp oeq double %1, 0.000000e+00, !dbg !273
  %82 = fcmp oge double %2, -1.000000e+00
  %83 = fcmp ole double %2, 1.000000e+00
  %84 = and i1 %82, %83, !dbg !274
  %85 = and i1 %81, %84, !dbg !274
  br i1 %85, label %86, label %97, !dbg !274

86:                                               ; preds = %80
  %87 = sitofp i32 %0 to double, !dbg !275
  %88 = tail call double @acos(double noundef %2) #8, !dbg !276
  %89 = fmul double %88, %87, !dbg !277
  tail call void @llvm.dbg.value(metadata double %89, metadata !172, metadata !DIExpression()), !dbg !278
  %90 = tail call double @cos(double noundef %89) #8, !dbg !279
  %91 = fmul double %90, 2.000000e+00, !dbg !280
  %92 = fdiv double %91, %87, !dbg !281
  store double %92, ptr %3, align 8, !dbg !282, !tbaa !197
  %93 = fmul double %89, %92, !dbg !283
  %94 = tail call double @llvm.fabs.f64(double %93), !dbg !284
  %95 = fmul double %94, 0x3CC0000000000000, !dbg !285
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !286
  store double %95, ptr %96, align 8, !dbg !287, !tbaa !202
  br label %190

97:                                               ; preds = %80
  call void @llvm.dbg.value(metadata double %1, metadata !96, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata double %2, metadata !97, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr undef, metadata !98, metadata !DIExpression()), !dbg !288
  br i1 %81, label %98, label %106, !dbg !290

98:                                               ; preds = %97
  %99 = fmul double %2, 2.000000e+00, !dbg !291
  %100 = fmul double %99, %2, !dbg !292
  call void @llvm.dbg.value(metadata double %100, metadata !99, metadata !DIExpression()), !dbg !293
  %101 = fadd double %100, -1.000000e+00, !dbg !294
  tail call void @llvm.dbg.value(metadata double %101, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata double %1, metadata !132, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %2, metadata !133, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()), !dbg !296
  %102 = fmul double %2, 0x3FF5555555555555, !dbg !298
  %103 = fmul double %102, %2, !dbg !299
  %104 = fadd double %103, -2.000000e+00, !dbg !300
  %105 = fmul double %104, %2, !dbg !301
  br label %124, !dbg !302

106:                                              ; preds = %97
  %107 = fadd double %1, 1.000000e+00, !dbg !303
  %108 = fmul double %107, 2.000000e+00, !dbg !304
  %109 = fmul double %108, %2, !dbg !305
  %110 = fmul double %109, %2, !dbg !306
  %111 = fadd double %110, -1.000000e+00, !dbg !307
  %112 = fmul double %111, %1, !dbg !308
  tail call void @llvm.dbg.value(metadata double %112, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata double %1, metadata !132, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata double %2, metadata !133, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()), !dbg !296
  %113 = fmul double %1, 2.000000e+00, !dbg !309
  %114 = fadd double %113, 6.000000e+00, !dbg !310
  %115 = fmul double %114, %1, !dbg !311
  %116 = fadd double %115, 4.000000e+00, !dbg !312
  call void @llvm.dbg.value(metadata double %116, metadata !135, metadata !DIExpression()), !dbg !313
  %117 = fmul double %113, %2, !dbg !314
  %118 = fsub double -1.000000e+00, %1, !dbg !315
  %119 = fmul double %116, %2, !dbg !316
  %120 = fmul double %119, %2, !dbg !317
  %121 = fdiv double %120, 3.000000e+00, !dbg !318
  %122 = fadd double %118, %121, !dbg !319
  %123 = fmul double %117, %122, !dbg !320
  br label %124

124:                                              ; preds = %106, %98
  %125 = phi double [ %112, %106 ], [ %101, %98 ]
  %126 = phi double [ %123, %106 ], [ %105, %98 ], !dbg !321
  tail call void @llvm.dbg.value(metadata double %126, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %125, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %126, metadata !189, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 4, metadata !181, metadata !DIExpression()), !dbg !295
  %127 = fmul double %1, 2.000000e+00
  %128 = add i32 %0, -3, !dbg !322
  %129 = and i32 %128, 1, !dbg !322
  %130 = icmp eq i32 %0, 4, !dbg !322
  br i1 %130, label %166, label %131, !dbg !322

131:                                              ; preds = %124
  %132 = and i32 %128, -2, !dbg !322
  br label %133, !dbg !322

133:                                              ; preds = %133, %131
  %134 = phi double [ %126, %131 ], [ %160, %133 ]
  %135 = phi double [ %125, %131 ], [ %148, %133 ]
  %136 = phi i32 [ 4, %131 ], [ %161, %133 ]
  %137 = phi i32 [ 0, %131 ], [ %162, %133 ]
  tail call void @llvm.dbg.value(metadata double %134, metadata !189, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %135, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !181, metadata !DIExpression()), !dbg !295
  %138 = sitofp i32 %136 to double, !dbg !324
  %139 = fadd double %138, %1, !dbg !327
  %140 = fadd double %139, -1.000000e+00, !dbg !328
  %141 = fmul double %140, 2.000000e+00, !dbg !329
  %142 = fmul double %141, %2, !dbg !330
  %143 = fmul double %134, %142, !dbg !331
  %144 = fadd double %127, %138, !dbg !332
  %145 = fadd double %144, -2.000000e+00, !dbg !333
  %146 = fmul double %135, %145, !dbg !334
  %147 = fsub double %143, %146, !dbg !335
  %148 = fdiv double %147, %138, !dbg !336
  tail call void @llvm.dbg.value(metadata double %148, metadata !190, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %134, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %148, metadata !189, metadata !DIExpression()), !dbg !295
  %149 = or disjoint i32 %136, 1, !dbg !337
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !181, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %148, metadata !189, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %134, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !181, metadata !DIExpression()), !dbg !295
  %150 = sitofp i32 %149 to double, !dbg !324
  %151 = fadd double %150, %1, !dbg !327
  %152 = fadd double %151, -1.000000e+00, !dbg !328
  %153 = fmul double %152, 2.000000e+00, !dbg !329
  %154 = fmul double %153, %2, !dbg !330
  %155 = fmul double %148, %154, !dbg !331
  %156 = fadd double %127, %150, !dbg !332
  %157 = fadd double %156, -2.000000e+00, !dbg !333
  %158 = fmul double %134, %157, !dbg !334
  %159 = fsub double %155, %158, !dbg !335
  %160 = fdiv double %159, %150, !dbg !336
  tail call void @llvm.dbg.value(metadata double %160, metadata !190, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %148, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %160, metadata !189, metadata !DIExpression()), !dbg !295
  %161 = add nuw i32 %136, 2, !dbg !337
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !181, metadata !DIExpression()), !dbg !295
  %162 = add i32 %137, 2, !dbg !322
  %163 = icmp eq i32 %162, %132, !dbg !322
  br i1 %163, label %164, label %133, !dbg !322, !llvm.loop !338

164:                                              ; preds = %133
  %165 = sitofp i32 %161 to double, !dbg !324
  br label %166, !dbg !322

166:                                              ; preds = %164, %124
  %167 = phi double [ undef, %124 ], [ %160, %164 ]
  %168 = phi double [ %126, %124 ], [ %160, %164 ]
  %169 = phi double [ %125, %124 ], [ %148, %164 ]
  %170 = phi double [ 4.000000e+00, %124 ], [ %165, %164 ]
  %171 = icmp eq i32 %129, 0, !dbg !322
  br i1 %171, label %183, label %172, !dbg !322

172:                                              ; preds = %166
  tail call void @llvm.dbg.value(metadata double %168, metadata !189, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %169, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !181, metadata !DIExpression()), !dbg !295
  %173 = fadd double %170, %1, !dbg !327
  %174 = fadd double %173, -1.000000e+00, !dbg !328
  %175 = fmul double %174, 2.000000e+00, !dbg !329
  %176 = fmul double %175, %2, !dbg !330
  %177 = fmul double %168, %176, !dbg !331
  %178 = fadd double %127, %170, !dbg !332
  %179 = fadd double %178, -2.000000e+00, !dbg !333
  %180 = fmul double %169, %179, !dbg !334
  %181 = fsub double %177, %180, !dbg !335
  %182 = fdiv double %181, %170, !dbg !336
  tail call void @llvm.dbg.value(metadata double %182, metadata !190, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %168, metadata !188, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata double %182, metadata !189, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !181, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !295
  br label %183, !dbg !341

183:                                              ; preds = %166, %172
  %184 = phi double [ %167, %166 ], [ %182, %172 ], !dbg !336
  store double %184, ptr %3, align 8, !dbg !341, !tbaa !197
  %185 = sitofp i32 %0 to double, !dbg !342
  %186 = fmul double %185, 0x3CB0000000000000, !dbg !343
  %187 = tail call double @llvm.fabs.f64(double %184), !dbg !344
  %188 = fmul double %186, %187, !dbg !345
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !346
  store double %188, ptr %189, align 8, !dbg !347, !tbaa !202
  br label %190

190:                                              ; preds = %8, %11, %13, %45, %71, %86, %183
  %191 = phi i32 [ 1, %8 ], [ 0, %11 ], [ 0, %13 ], [ 0, %45 ], [ 0, %71 ], [ 0, %86 ], [ 0, %183 ], !dbg !348
  ret i32 %191, !dbg !349
}

declare !dbg !350 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !355 double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !359 double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_gegenpoly_array(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 !dbg !360 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !365, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %1, metadata !366, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %2, metadata !367, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !368, metadata !DIExpression()), !dbg !375
  %5 = fcmp ole double %1, -5.000000e-01, !dbg !376
  %6 = icmp slt i32 %0, 0
  %7 = or i1 %6, %5, !dbg !378
  br i1 %7, label %8, label %9, !dbg !378

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 1) #8, !dbg !379
  br label %44, !dbg !379

9:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !382, !tbaa !383
  %10 = icmp eq i32 %0, 0, !dbg !384
  br i1 %10, label %44, label %11, !dbg !386

11:                                               ; preds = %9
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !387
  %13 = fmul double %1, 2.000000e+00, !dbg !389
  %14 = select i1 %12, double 2.000000e+00, double %13, !dbg !389
  %15 = fmul double %14, %2, !dbg !389
  %16 = getelementptr inbounds double, ptr %3, i64 1, !dbg !390
  store double %15, ptr %16, align 8, !dbg !390
  tail call void @llvm.dbg.value(metadata i32 2, metadata !369, metadata !DIExpression()), !dbg !375
  %17 = icmp eq i32 %0, 1, !dbg !391
  br i1 %17, label %44, label %18, !dbg !392

18:                                               ; preds = %11
  %19 = fmul double %1, 2.000000e+00
  %20 = add nuw i32 %0, 1, !dbg !392
  %21 = zext i32 %20 to i64, !dbg !391
  %22 = getelementptr i8, ptr %3, i64 8, !dbg !392
  %23 = load double, ptr %22, align 8
  br label %24, !dbg !392

24:                                               ; preds = %18, %24
  %25 = phi double [ %23, %18 ], [ %41, %24 ]
  %26 = phi i64 [ 2, %18 ], [ %42, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !369, metadata !DIExpression()), !dbg !375
  %27 = trunc i64 %26 to i32, !dbg !393
  %28 = sitofp i32 %27 to double, !dbg !393
  %29 = fadd double %28, %1, !dbg !394
  %30 = fadd double %29, -1.000000e+00, !dbg !395
  %31 = fmul double %30, 2.000000e+00, !dbg !396
  %32 = fmul double %31, %2, !dbg !397
  %33 = getelementptr double, ptr %3, i64 %26, !dbg !398
  %34 = fmul double %32, %25, !dbg !399
  tail call void @llvm.dbg.value(metadata double %34, metadata !370, metadata !DIExpression()), !dbg !400
  %35 = fadd double %19, %28, !dbg !401
  %36 = fadd double %35, -2.000000e+00, !dbg !402
  %37 = getelementptr double, ptr %33, i64 -2, !dbg !403
  %38 = load double, ptr %37, align 8, !dbg !403, !tbaa !383
  %39 = fmul double %36, %38, !dbg !404
  tail call void @llvm.dbg.value(metadata double %39, metadata !374, metadata !DIExpression()), !dbg !400
  %40 = fsub double %34, %39, !dbg !405
  %41 = fdiv double %40, %28, !dbg !406
  store double %41, ptr %33, align 8, !dbg !407, !tbaa !383
  %42 = add nuw nsw i64 %26, 1, !dbg !408
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !369, metadata !DIExpression()), !dbg !375
  %43 = icmp eq i64 %42, %21, !dbg !391
  br i1 %43, label %44, label %24, !dbg !392, !llvm.loop !409

44:                                               ; preds = %24, %11, %9, %8
  %45 = phi i32 [ 1, %8 ], [ 0, %9 ], [ 0, %11 ], [ 0, %24 ], !dbg !375
  ret i32 %45, !dbg !411
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_gegenpoly_1(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !412 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !416, metadata !DIExpression()), !dbg !420
  tail call void @llvm.dbg.value(metadata double %1, metadata !417, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata ptr undef, metadata !87, metadata !DIExpression()), !dbg !421
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !423
  %4 = fmul double %0, 2.000000e+00, !dbg !424
  %5 = select i1 %3, double 2.000000e+00, double %4, !dbg !424
  %6 = fmul double %5, %1, !dbg !424
  tail call void @llvm.dbg.value(metadata double %6, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !420
  tail call void @llvm.dbg.value(metadata double poison, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !420
  tail call void @llvm.dbg.value(metadata i32 0, metadata !419, metadata !DIExpression()), !dbg !420
  ret double %6, !dbg !425
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_gegenpoly_2(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !426 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !428, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %1, metadata !429, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata double %0, metadata !96, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata double %1, metadata !97, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !98, metadata !DIExpression()), !dbg !433
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !435
  br i1 %3, label %4, label %8, !dbg !436

4:                                                ; preds = %2
  %5 = fmul double %1, 2.000000e+00, !dbg !437
  %6 = fmul double %5, %1, !dbg !438
  call void @llvm.dbg.value(metadata double %6, metadata !99, metadata !DIExpression()), !dbg !439
  %7 = fadd double %6, -1.000000e+00, !dbg !440
  br label %15

8:                                                ; preds = %2
  %9 = fadd double %0, 1.000000e+00, !dbg !441
  %10 = fmul double %9, 2.000000e+00, !dbg !442
  %11 = fmul double %10, %1, !dbg !443
  %12 = fmul double %11, %1, !dbg !444
  %13 = fadd double %12, -1.000000e+00, !dbg !445
  %14 = fmul double %13, %0, !dbg !446
  br label %15, !dbg !447

15:                                               ; preds = %4, %8
  %16 = phi double [ %7, %4 ], [ %14, %8 ], !dbg !448
  tail call void @llvm.dbg.value(metadata double %16, metadata !430, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !432
  tail call void @llvm.dbg.value(metadata double poison, metadata !430, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 0, metadata !431, metadata !DIExpression()), !dbg !432
  ret double %16, !dbg !449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_gegenpoly_3(double noundef %0, double noundef %1) local_unnamed_addr #6 !dbg !450 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !452, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata double %1, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata double %0, metadata !132, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata double %1, metadata !133, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()), !dbg !457
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !459
  br i1 %3, label %4, label %9, !dbg !460

4:                                                ; preds = %2
  %5 = fmul double %1, 0x3FF5555555555555, !dbg !461
  %6 = fmul double %5, %1, !dbg !462
  %7 = fadd double %6, -2.000000e+00, !dbg !463
  %8 = fmul double %7, %1, !dbg !464
  br label %21, !dbg !465

9:                                                ; preds = %2
  %10 = fmul double %0, 2.000000e+00, !dbg !466
  %11 = fadd double %10, 6.000000e+00, !dbg !467
  %12 = fmul double %11, %0, !dbg !468
  %13 = fadd double %12, 4.000000e+00, !dbg !469
  call void @llvm.dbg.value(metadata double %13, metadata !135, metadata !DIExpression()), !dbg !470
  %14 = fmul double %10, %1, !dbg !471
  %15 = fsub double -1.000000e+00, %0, !dbg !472
  %16 = fmul double %13, %1, !dbg !473
  %17 = fmul double %16, %1, !dbg !474
  %18 = fdiv double %17, 3.000000e+00, !dbg !475
  %19 = fadd double %15, %18, !dbg !476
  %20 = fmul double %14, %19, !dbg !477
  br label %21

21:                                               ; preds = %4, %9
  %22 = phi double [ %20, %9 ], [ %8, %4 ], !dbg !478
  tail call void @llvm.dbg.value(metadata double %22, metadata !454, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !456
  tail call void @llvm.dbg.value(metadata double poison, metadata !454, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  tail call void @llvm.dbg.value(metadata i32 0, metadata !455, metadata !DIExpression()), !dbg !456
  ret double %22, !dbg !479
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gegenpoly_n(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 !dbg !480 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !489, metadata ptr %4, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !484, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double %1, metadata !485, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double %2, metadata !486, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !491
  %5 = call i32 @gsl_sf_gegenpoly_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !491, !range !492
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !488, metadata !DIExpression()), !dbg !490
  %6 = icmp eq i32 %5, 0, !dbg !493
  br i1 %6, label %8, label %7, !dbg !491

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 1) #8, !dbg !495
  br label %8, !dbg !495

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !491, !tbaa !197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !498
  ret double %9, !dbg !498
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "gegenbauer.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a23cc96613a14c83e5dc2aa0b775b2f7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 44)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, globals: !55, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !{!0, !7, !56, !61, !63, !9}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 41)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !58, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !58, isLocal: true, isDefinition: true)
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!72 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!73 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1_e", scope: !2, file: !2, line: 33, type: !74, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !84)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, !76, !76, !77}
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !76, size: 64, offset: 64)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(name: "lambda", arg: 1, scope: !73, file: !2, line: 33, type: !76)
!86 = !DILocalVariable(name: "x", arg: 2, scope: !73, file: !2, line: 33, type: !76)
!87 = !DILocalVariable(name: "result", arg: 3, scope: !73, file: !2, line: 33, type: !77)
!88 = !DILocation(line: 0, scope: !73)
!89 = !DILocation(line: 37, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !73, file: !2, line: 37, column: 6)
!91 = !DILocation(line: 37, column: 6, scope: !73)
!92 = !DILocation(line: 0, scope: !90)
!93 = !DILocation(line: 47, column: 1, scope: !73)
!94 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2_e", scope: !2, file: !2, line: 50, type: !74, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(name: "lambda", arg: 1, scope: !94, file: !2, line: 50, type: !76)
!97 = !DILocalVariable(name: "x", arg: 2, scope: !94, file: !2, line: 50, type: !76)
!98 = !DILocalVariable(name: "result", arg: 3, scope: !94, file: !2, line: 50, type: !77)
!99 = !DILocalVariable(name: "txx", scope: !100, file: !2, line: 55, type: !102)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 54, column: 21)
!101 = distinct !DILexicalBlock(scope: !94, file: !2, line: 54, column: 6)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!103 = !DILocation(line: 0, scope: !94)
!104 = !DILocation(line: 54, column: 13, scope: !101)
!105 = !DILocation(line: 54, column: 6, scope: !94)
!106 = !DILocation(line: 55, column: 27, scope: !100)
!107 = !DILocation(line: 55, column: 29, scope: !100)
!108 = !DILocation(line: 0, scope: !100)
!109 = !DILocation(line: 56, column: 25, scope: !100)
!110 = !DILocation(line: 57, column: 44, scope: !100)
!111 = !DILocation(line: 57, column: 42, scope: !100)
!112 = !DILocation(line: 58, column: 44, scope: !100)
!113 = !DILocation(line: 58, column: 42, scope: !100)
!114 = !DILocation(line: 58, column: 17, scope: !100)
!115 = !DILocation(line: 62, column: 42, scope: !116)
!116 = distinct !DILexicalBlock(scope: !101, file: !2, line: 61, column: 8)
!117 = !DILocation(line: 62, column: 37, scope: !116)
!118 = !DILocation(line: 62, column: 50, scope: !116)
!119 = !DILocation(line: 62, column: 52, scope: !116)
!120 = !DILocation(line: 62, column: 32, scope: !116)
!121 = !DILocation(line: 62, column: 25, scope: !116)
!122 = !DILocation(line: 63, column: 44, scope: !116)
!123 = !DILocation(line: 63, column: 42, scope: !116)
!124 = !DILocation(line: 63, column: 64, scope: !116)
!125 = !DILocation(line: 63, column: 62, scope: !116)
!126 = !DILocation(line: 63, column: 35, scope: !116)
!127 = !DILocation(line: 64, column: 5, scope: !116)
!128 = !DILocation(line: 0, scope: !101)
!129 = !DILocation(line: 66, column: 1, scope: !94)
!130 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3_e", scope: !2, file: !2, line: 69, type: !74, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DILocalVariable(name: "lambda", arg: 1, scope: !130, file: !2, line: 69, type: !76)
!133 = !DILocalVariable(name: "x", arg: 2, scope: !130, file: !2, line: 69, type: !76)
!134 = !DILocalVariable(name: "result", arg: 3, scope: !130, file: !2, line: 69, type: !77)
!135 = !DILocalVariable(name: "c", scope: !136, file: !2, line: 79, type: !76)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 78, column: 8)
!137 = distinct !DILexicalBlock(scope: !130, file: !2, line: 73, column: 6)
!138 = !DILocation(line: 0, scope: !130)
!139 = !DILocation(line: 73, column: 13, scope: !137)
!140 = !DILocation(line: 73, column: 6, scope: !130)
!141 = !DILocation(line: 74, column: 36, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !2, line: 73, column: 21)
!143 = !DILocation(line: 74, column: 38, scope: !142)
!144 = !DILocation(line: 74, column: 27, scope: !142)
!145 = !DILocation(line: 74, column: 20, scope: !142)
!146 = !DILocation(line: 75, column: 44, scope: !142)
!147 = !DILocation(line: 76, column: 5, scope: !142)
!148 = !DILocation(line: 79, column: 39, scope: !136)
!149 = !DILocation(line: 79, column: 34, scope: !136)
!150 = !DILocation(line: 79, column: 28, scope: !136)
!151 = !DILocation(line: 79, column: 20, scope: !136)
!152 = !DILocation(line: 0, scope: !136)
!153 = !DILocation(line: 80, column: 30, scope: !136)
!154 = !DILocation(line: 80, column: 43, scope: !136)
!155 = !DILocation(line: 80, column: 55, scope: !136)
!156 = !DILocation(line: 80, column: 57, scope: !136)
!157 = !DILocation(line: 80, column: 59, scope: !136)
!158 = !DILocation(line: 80, column: 52, scope: !136)
!159 = !DILocation(line: 80, column: 34, scope: !136)
!160 = !DILocation(line: 81, column: 44, scope: !136)
!161 = !DILocation(line: 81, column: 76, scope: !136)
!162 = !DILocation(line: 0, scope: !137)
!163 = !DILocation(line: 84, column: 1, scope: !130)
!164 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n_e", scope: !2, file: !2, line: 88, type: !165, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!18, !18, !76, !76, !77}
!167 = !{!168, !169, !170, !171, !172, !181, !183, !184, !185, !186, !187, !188, !189, !190}
!168 = !DILocalVariable(name: "n", arg: 1, scope: !164, file: !2, line: 88, type: !18)
!169 = !DILocalVariable(name: "lambda", arg: 2, scope: !164, file: !2, line: 88, type: !76)
!170 = !DILocalVariable(name: "x", arg: 3, scope: !164, file: !2, line: 88, type: !76)
!171 = !DILocalVariable(name: "result", arg: 4, scope: !164, file: !2, line: 88, type: !77)
!172 = !DILocalVariable(name: "z", scope: !173, file: !2, line: 112, type: !102)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 110, column: 50)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 110, column: 8)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 109, column: 8)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 106, column: 11)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 103, column: 11)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 100, column: 11)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 95, column: 11)
!180 = distinct !DILexicalBlock(scope: !164, file: !2, line: 92, column: 6)
!181 = !DILocalVariable(name: "k", scope: !182, file: !2, line: 118, type: !18)
!182 = distinct !DILexicalBlock(scope: !174, file: !2, line: 117, column: 10)
!183 = !DILocalVariable(name: "g2", scope: !182, file: !2, line: 119, type: !78)
!184 = !DILocalVariable(name: "g3", scope: !182, file: !2, line: 120, type: !78)
!185 = !DILocalVariable(name: "stat_g2", scope: !182, file: !2, line: 121, type: !18)
!186 = !DILocalVariable(name: "stat_g3", scope: !182, file: !2, line: 122, type: !18)
!187 = !DILocalVariable(name: "stat_g", scope: !182, file: !2, line: 123, type: !18)
!188 = !DILocalVariable(name: "gkm2", scope: !182, file: !2, line: 124, type: !76)
!189 = !DILocalVariable(name: "gkm1", scope: !182, file: !2, line: 125, type: !76)
!190 = !DILocalVariable(name: "gk", scope: !182, file: !2, line: 126, type: !76)
!191 = !DILocation(line: 0, scope: !164)
!192 = !DILocation(line: 92, column: 13, scope: !180)
!193 = !DILocation(line: 92, column: 21, scope: !180)
!194 = !DILocation(line: 93, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 93, column: 5)
!196 = distinct !DILexicalBlock(scope: !180, file: !2, line: 92, column: 31)
!197 = !{!198, !199, i64 0}
!198 = !{!"gsl_sf_result_struct", !199, i64 0, !199, i64 8}
!199 = !{!"double", !200, i64 0}
!200 = !{!"omnipotent char", !201, i64 0}
!201 = !{!"Simple C/C++ TBAA"}
!202 = !{!198, !199, i64 8}
!203 = !DILocation(line: 93, column: 5, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !2, line: 93, column: 5)
!205 = !DILocation(line: 95, column: 11, scope: !180)
!206 = !DILocation(line: 96, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !179, file: !2, line: 95, column: 19)
!208 = !DILocation(line: 97, column: 13, scope: !207)
!209 = !DILocation(line: 97, column: 17, scope: !207)
!210 = !DILocation(line: 98, column: 5, scope: !207)
!211 = !DILocation(line: 0, scope: !73, inlinedAt: !212)
!212 = distinct !DILocation(line: 101, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !178, file: !2, line: 100, column: 19)
!214 = !DILocation(line: 37, column: 13, scope: !90, inlinedAt: !212)
!215 = !DILocation(line: 37, column: 6, scope: !73, inlinedAt: !212)
!216 = !DILocation(line: 0, scope: !90, inlinedAt: !212)
!217 = !DILocation(line: 101, column: 5, scope: !213)
!218 = !DILocation(line: 0, scope: !94, inlinedAt: !219)
!219 = distinct !DILocation(line: 104, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !177, file: !2, line: 103, column: 19)
!221 = !DILocation(line: 54, column: 13, scope: !101, inlinedAt: !219)
!222 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !219)
!223 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !219)
!224 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !219)
!225 = !DILocation(line: 0, scope: !100, inlinedAt: !219)
!226 = !DILocation(line: 56, column: 25, scope: !100, inlinedAt: !219)
!227 = !DILocation(line: 57, column: 44, scope: !100, inlinedAt: !219)
!228 = !DILocation(line: 57, column: 42, scope: !100, inlinedAt: !219)
!229 = !DILocation(line: 58, column: 44, scope: !100, inlinedAt: !219)
!230 = !DILocation(line: 58, column: 42, scope: !100, inlinedAt: !219)
!231 = !DILocation(line: 58, column: 17, scope: !100, inlinedAt: !219)
!232 = !DILocation(line: 62, column: 42, scope: !116, inlinedAt: !219)
!233 = !DILocation(line: 62, column: 37, scope: !116, inlinedAt: !219)
!234 = !DILocation(line: 62, column: 50, scope: !116, inlinedAt: !219)
!235 = !DILocation(line: 62, column: 52, scope: !116, inlinedAt: !219)
!236 = !DILocation(line: 62, column: 32, scope: !116, inlinedAt: !219)
!237 = !DILocation(line: 62, column: 25, scope: !116, inlinedAt: !219)
!238 = !DILocation(line: 63, column: 44, scope: !116, inlinedAt: !219)
!239 = !DILocation(line: 63, column: 42, scope: !116, inlinedAt: !219)
!240 = !DILocation(line: 63, column: 64, scope: !116, inlinedAt: !219)
!241 = !DILocation(line: 63, column: 62, scope: !116, inlinedAt: !219)
!242 = !DILocation(line: 63, column: 35, scope: !116, inlinedAt: !219)
!243 = !DILocation(line: 64, column: 5, scope: !116, inlinedAt: !219)
!244 = !DILocation(line: 0, scope: !101, inlinedAt: !219)
!245 = !DILocation(line: 104, column: 5, scope: !220)
!246 = !DILocation(line: 0, scope: !130, inlinedAt: !247)
!247 = distinct !DILocation(line: 107, column: 12, scope: !248)
!248 = distinct !DILexicalBlock(scope: !176, file: !2, line: 106, column: 19)
!249 = !DILocation(line: 73, column: 13, scope: !137, inlinedAt: !247)
!250 = !DILocation(line: 73, column: 6, scope: !130, inlinedAt: !247)
!251 = !DILocation(line: 74, column: 36, scope: !142, inlinedAt: !247)
!252 = !DILocation(line: 74, column: 38, scope: !142, inlinedAt: !247)
!253 = !DILocation(line: 74, column: 27, scope: !142, inlinedAt: !247)
!254 = !DILocation(line: 74, column: 20, scope: !142, inlinedAt: !247)
!255 = !DILocation(line: 75, column: 44, scope: !142, inlinedAt: !247)
!256 = !DILocation(line: 76, column: 5, scope: !142, inlinedAt: !247)
!257 = !DILocation(line: 79, column: 39, scope: !136, inlinedAt: !247)
!258 = !DILocation(line: 79, column: 34, scope: !136, inlinedAt: !247)
!259 = !DILocation(line: 79, column: 28, scope: !136, inlinedAt: !247)
!260 = !DILocation(line: 79, column: 20, scope: !136, inlinedAt: !247)
!261 = !DILocation(line: 0, scope: !136, inlinedAt: !247)
!262 = !DILocation(line: 80, column: 30, scope: !136, inlinedAt: !247)
!263 = !DILocation(line: 80, column: 43, scope: !136, inlinedAt: !247)
!264 = !DILocation(line: 80, column: 55, scope: !136, inlinedAt: !247)
!265 = !DILocation(line: 80, column: 57, scope: !136, inlinedAt: !247)
!266 = !DILocation(line: 80, column: 59, scope: !136, inlinedAt: !247)
!267 = !DILocation(line: 80, column: 52, scope: !136, inlinedAt: !247)
!268 = !DILocation(line: 80, column: 34, scope: !136, inlinedAt: !247)
!269 = !DILocation(line: 81, column: 44, scope: !136, inlinedAt: !247)
!270 = !DILocation(line: 81, column: 76, scope: !136, inlinedAt: !247)
!271 = !DILocation(line: 0, scope: !137, inlinedAt: !247)
!272 = !DILocation(line: 107, column: 5, scope: !248)
!273 = !DILocation(line: 110, column: 15, scope: !174)
!274 = !DILocation(line: 110, column: 22, scope: !174)
!275 = !DILocation(line: 112, column: 24, scope: !173)
!276 = !DILocation(line: 112, column: 28, scope: !173)
!277 = !DILocation(line: 112, column: 26, scope: !173)
!278 = !DILocation(line: 0, scope: !173)
!279 = !DILocation(line: 113, column: 27, scope: !173)
!280 = !DILocation(line: 113, column: 25, scope: !173)
!281 = !DILocation(line: 113, column: 34, scope: !173)
!282 = !DILocation(line: 113, column: 19, scope: !173)
!283 = !DILocation(line: 114, column: 52, scope: !173)
!284 = !DILocation(line: 114, column: 45, scope: !173)
!285 = !DILocation(line: 114, column: 43, scope: !173)
!286 = !DILocation(line: 114, column: 15, scope: !173)
!287 = !DILocation(line: 114, column: 19, scope: !173)
!288 = !DILocation(line: 0, scope: !94, inlinedAt: !289)
!289 = distinct !DILocation(line: 121, column: 21, scope: !182)
!290 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !289)
!291 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !289)
!292 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !289)
!293 = !DILocation(line: 0, scope: !100, inlinedAt: !289)
!294 = !DILocation(line: 56, column: 25, scope: !100, inlinedAt: !289)
!295 = !DILocation(line: 0, scope: !182)
!296 = !DILocation(line: 0, scope: !130, inlinedAt: !297)
!297 = distinct !DILocation(line: 122, column: 21, scope: !182)
!298 = !DILocation(line: 74, column: 36, scope: !142, inlinedAt: !297)
!299 = !DILocation(line: 74, column: 38, scope: !142, inlinedAt: !297)
!300 = !DILocation(line: 74, column: 27, scope: !142, inlinedAt: !297)
!301 = !DILocation(line: 74, column: 20, scope: !142, inlinedAt: !297)
!302 = !DILocation(line: 76, column: 5, scope: !142, inlinedAt: !297)
!303 = !DILocation(line: 62, column: 42, scope: !116, inlinedAt: !289)
!304 = !DILocation(line: 62, column: 37, scope: !116, inlinedAt: !289)
!305 = !DILocation(line: 62, column: 50, scope: !116, inlinedAt: !289)
!306 = !DILocation(line: 62, column: 52, scope: !116, inlinedAt: !289)
!307 = !DILocation(line: 62, column: 32, scope: !116, inlinedAt: !289)
!308 = !DILocation(line: 62, column: 25, scope: !116, inlinedAt: !289)
!309 = !DILocation(line: 79, column: 39, scope: !136, inlinedAt: !297)
!310 = !DILocation(line: 79, column: 34, scope: !136, inlinedAt: !297)
!311 = !DILocation(line: 79, column: 28, scope: !136, inlinedAt: !297)
!312 = !DILocation(line: 79, column: 20, scope: !136, inlinedAt: !297)
!313 = !DILocation(line: 0, scope: !136, inlinedAt: !297)
!314 = !DILocation(line: 80, column: 30, scope: !136, inlinedAt: !297)
!315 = !DILocation(line: 80, column: 43, scope: !136, inlinedAt: !297)
!316 = !DILocation(line: 80, column: 55, scope: !136, inlinedAt: !297)
!317 = !DILocation(line: 80, column: 57, scope: !136, inlinedAt: !297)
!318 = !DILocation(line: 80, column: 59, scope: !136, inlinedAt: !297)
!319 = !DILocation(line: 80, column: 52, scope: !136, inlinedAt: !297)
!320 = !DILocation(line: 80, column: 34, scope: !136, inlinedAt: !297)
!321 = !DILocation(line: 0, scope: !137, inlinedAt: !297)
!322 = !DILocation(line: 127, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !182, file: !2, line: 127, column: 7)
!324 = !DILocation(line: 128, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 127, column: 27)
!326 = distinct !DILexicalBlock(scope: !323, file: !2, line: 127, column: 7)
!327 = !DILocation(line: 128, column: 21, scope: !325)
!328 = !DILocation(line: 128, column: 28, scope: !325)
!329 = !DILocation(line: 128, column: 18, scope: !325)
!330 = !DILocation(line: 128, column: 33, scope: !325)
!331 = !DILocation(line: 128, column: 35, scope: !325)
!332 = !DILocation(line: 128, column: 45, scope: !325)
!333 = !DILocation(line: 128, column: 56, scope: !325)
!334 = !DILocation(line: 128, column: 61, scope: !325)
!335 = !DILocation(line: 128, column: 41, scope: !325)
!336 = !DILocation(line: 128, column: 68, scope: !325)
!337 = !DILocation(line: 127, column: 23, scope: !326)
!338 = distinct !{!338, !322, !339, !340}
!339 = !DILocation(line: 131, column: 7, scope: !323)
!340 = !{!"llvm.loop.mustprogress"}
!341 = !DILocation(line: 132, column: 19, scope: !182)
!342 = !DILocation(line: 133, column: 51, scope: !182)
!343 = !DILocation(line: 133, column: 49, scope: !182)
!344 = !DILocation(line: 133, column: 55, scope: !182)
!345 = !DILocation(line: 133, column: 53, scope: !182)
!346 = !DILocation(line: 133, column: 15, scope: !182)
!347 = !DILocation(line: 133, column: 19, scope: !182)
!348 = !DILocation(line: 0, scope: !180)
!349 = !DILocation(line: 137, column: 1, scope: !164)
!350 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353, !353, !18, !18}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!355 = !DISubprogram(name: "acos", scope: !356, file: !356, line: 53, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!357 = !DISubroutineType(types: !358)
!358 = !{!76, !76}
!359 = !DISubprogram(name: "cos", scope: !356, file: !356, line: 62, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_array", scope: !2, file: !2, line: 141, type: !361, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !364)
!361 = !DISubroutineType(types: !362)
!362 = !{!18, !18, !76, !76, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!364 = !{!365, !366, !367, !368, !369, !370, !374}
!365 = !DILocalVariable(name: "nmax", arg: 1, scope: !360, file: !2, line: 141, type: !18)
!366 = !DILocalVariable(name: "lambda", arg: 2, scope: !360, file: !2, line: 141, type: !76)
!367 = !DILocalVariable(name: "x", arg: 3, scope: !360, file: !2, line: 141, type: !76)
!368 = !DILocalVariable(name: "result_array", arg: 4, scope: !360, file: !2, line: 141, type: !363)
!369 = !DILocalVariable(name: "k", scope: !360, file: !2, line: 143, type: !18)
!370 = !DILocalVariable(name: "term1", scope: !371, file: !2, line: 163, type: !76)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 162, column: 26)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 162, column: 3)
!373 = distinct !DILexicalBlock(scope: !360, file: !2, line: 162, column: 3)
!374 = !DILocalVariable(name: "term2", scope: !371, file: !2, line: 164, type: !76)
!375 = !DILocation(line: 0, scope: !360)
!376 = !DILocation(line: 147, column: 13, scope: !377)
!377 = distinct !DILexicalBlock(scope: !360, file: !2, line: 147, column: 6)
!378 = !DILocation(line: 147, column: 21, scope: !377)
!379 = !DILocation(line: 148, column: 5, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 148, column: 5)
!381 = distinct !DILexicalBlock(scope: !377, file: !2, line: 147, column: 34)
!382 = !DILocation(line: 152, column: 19, scope: !360)
!383 = !{!199, !199, i64 0}
!384 = !DILocation(line: 153, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !360, file: !2, line: 153, column: 6)
!386 = !DILocation(line: 153, column: 6, scope: !360)
!387 = !DILocation(line: 156, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !360, file: !2, line: 156, column: 6)
!389 = !DILocation(line: 156, column: 6, scope: !360)
!390 = !DILocation(line: 0, scope: !388)
!391 = !DILocation(line: 162, column: 13, scope: !372)
!392 = !DILocation(line: 162, column: 3, scope: !373)
!393 = !DILocation(line: 163, column: 25, scope: !371)
!394 = !DILocation(line: 163, column: 26, scope: !371)
!395 = !DILocation(line: 163, column: 33, scope: !371)
!396 = !DILocation(line: 163, column: 23, scope: !371)
!397 = !DILocation(line: 163, column: 39, scope: !371)
!398 = !DILocation(line: 163, column: 45, scope: !371)
!399 = !DILocation(line: 163, column: 43, scope: !371)
!400 = !DILocation(line: 0, scope: !371)
!401 = !DILocation(line: 164, column: 22, scope: !371)
!402 = !DILocation(line: 164, column: 33, scope: !371)
!403 = !DILocation(line: 164, column: 45, scope: !371)
!404 = !DILocation(line: 164, column: 43, scope: !371)
!405 = !DILocation(line: 165, column: 30, scope: !371)
!406 = !DILocation(line: 165, column: 39, scope: !371)
!407 = !DILocation(line: 165, column: 21, scope: !371)
!408 = !DILocation(line: 162, column: 22, scope: !372)
!409 = distinct !{!409, !392, !410, !340}
!410 = !DILocation(line: 166, column: 3, scope: !373)
!411 = !DILocation(line: 169, column: 1, scope: !360)
!412 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1", scope: !2, file: !2, line: 176, type: !413, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!76, !76, !76}
!415 = !{!416, !417, !418, !419}
!416 = !DILocalVariable(name: "lambda", arg: 1, scope: !412, file: !2, line: 176, type: !76)
!417 = !DILocalVariable(name: "x", arg: 2, scope: !412, file: !2, line: 176, type: !76)
!418 = !DILocalVariable(name: "result", scope: !412, file: !2, line: 178, type: !78)
!419 = !DILocalVariable(name: "status", scope: !412, file: !2, line: 178, type: !18)
!420 = !DILocation(line: 0, scope: !412)
!421 = !DILocation(line: 0, scope: !73, inlinedAt: !422)
!422 = distinct !DILocation(line: 178, column: 3, scope: !412)
!423 = !DILocation(line: 37, column: 13, scope: !90, inlinedAt: !422)
!424 = !DILocation(line: 37, column: 6, scope: !73, inlinedAt: !422)
!425 = !DILocation(line: 179, column: 1, scope: !412)
!426 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2", scope: !2, file: !2, line: 181, type: !413, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DILocalVariable(name: "lambda", arg: 1, scope: !426, file: !2, line: 181, type: !76)
!429 = !DILocalVariable(name: "x", arg: 2, scope: !426, file: !2, line: 181, type: !76)
!430 = !DILocalVariable(name: "result", scope: !426, file: !2, line: 183, type: !78)
!431 = !DILocalVariable(name: "status", scope: !426, file: !2, line: 183, type: !18)
!432 = !DILocation(line: 0, scope: !426)
!433 = !DILocation(line: 0, scope: !94, inlinedAt: !434)
!434 = distinct !DILocation(line: 183, column: 3, scope: !426)
!435 = !DILocation(line: 54, column: 13, scope: !101, inlinedAt: !434)
!436 = !DILocation(line: 54, column: 6, scope: !94, inlinedAt: !434)
!437 = !DILocation(line: 55, column: 27, scope: !100, inlinedAt: !434)
!438 = !DILocation(line: 55, column: 29, scope: !100, inlinedAt: !434)
!439 = !DILocation(line: 0, scope: !100, inlinedAt: !434)
!440 = !DILocation(line: 56, column: 25, scope: !100, inlinedAt: !434)
!441 = !DILocation(line: 62, column: 42, scope: !116, inlinedAt: !434)
!442 = !DILocation(line: 62, column: 37, scope: !116, inlinedAt: !434)
!443 = !DILocation(line: 62, column: 50, scope: !116, inlinedAt: !434)
!444 = !DILocation(line: 62, column: 52, scope: !116, inlinedAt: !434)
!445 = !DILocation(line: 62, column: 32, scope: !116, inlinedAt: !434)
!446 = !DILocation(line: 62, column: 25, scope: !116, inlinedAt: !434)
!447 = !DILocation(line: 64, column: 5, scope: !116, inlinedAt: !434)
!448 = !DILocation(line: 0, scope: !101, inlinedAt: !434)
!449 = !DILocation(line: 184, column: 1, scope: !426)
!450 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3", scope: !2, file: !2, line: 186, type: !413, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !451)
!451 = !{!452, !453, !454, !455}
!452 = !DILocalVariable(name: "lambda", arg: 1, scope: !450, file: !2, line: 186, type: !76)
!453 = !DILocalVariable(name: "x", arg: 2, scope: !450, file: !2, line: 186, type: !76)
!454 = !DILocalVariable(name: "result", scope: !450, file: !2, line: 188, type: !78)
!455 = !DILocalVariable(name: "status", scope: !450, file: !2, line: 188, type: !18)
!456 = !DILocation(line: 0, scope: !450)
!457 = !DILocation(line: 0, scope: !130, inlinedAt: !458)
!458 = distinct !DILocation(line: 188, column: 3, scope: !450)
!459 = !DILocation(line: 73, column: 13, scope: !137, inlinedAt: !458)
!460 = !DILocation(line: 73, column: 6, scope: !130, inlinedAt: !458)
!461 = !DILocation(line: 74, column: 36, scope: !142, inlinedAt: !458)
!462 = !DILocation(line: 74, column: 38, scope: !142, inlinedAt: !458)
!463 = !DILocation(line: 74, column: 27, scope: !142, inlinedAt: !458)
!464 = !DILocation(line: 74, column: 20, scope: !142, inlinedAt: !458)
!465 = !DILocation(line: 76, column: 5, scope: !142, inlinedAt: !458)
!466 = !DILocation(line: 79, column: 39, scope: !136, inlinedAt: !458)
!467 = !DILocation(line: 79, column: 34, scope: !136, inlinedAt: !458)
!468 = !DILocation(line: 79, column: 28, scope: !136, inlinedAt: !458)
!469 = !DILocation(line: 79, column: 20, scope: !136, inlinedAt: !458)
!470 = !DILocation(line: 0, scope: !136, inlinedAt: !458)
!471 = !DILocation(line: 80, column: 30, scope: !136, inlinedAt: !458)
!472 = !DILocation(line: 80, column: 43, scope: !136, inlinedAt: !458)
!473 = !DILocation(line: 80, column: 55, scope: !136, inlinedAt: !458)
!474 = !DILocation(line: 80, column: 57, scope: !136, inlinedAt: !458)
!475 = !DILocation(line: 80, column: 59, scope: !136, inlinedAt: !458)
!476 = !DILocation(line: 80, column: 52, scope: !136, inlinedAt: !458)
!477 = !DILocation(line: 80, column: 34, scope: !136, inlinedAt: !458)
!478 = !DILocation(line: 0, scope: !137, inlinedAt: !458)
!479 = !DILocation(line: 189, column: 1, scope: !450)
!480 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n", scope: !2, file: !2, line: 191, type: !481, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!76, !18, !76, !76}
!483 = !{!484, !485, !486, !487, !488}
!484 = !DILocalVariable(name: "n", arg: 1, scope: !480, file: !2, line: 191, type: !18)
!485 = !DILocalVariable(name: "lambda", arg: 2, scope: !480, file: !2, line: 191, type: !76)
!486 = !DILocalVariable(name: "x", arg: 3, scope: !480, file: !2, line: 191, type: !76)
!487 = !DILocalVariable(name: "result", scope: !480, file: !2, line: 193, type: !78)
!488 = !DILocalVariable(name: "status", scope: !480, file: !2, line: 193, type: !18)
!489 = distinct !DIAssignID()
!490 = !DILocation(line: 0, scope: !480)
!491 = !DILocation(line: 193, column: 3, scope: !480)
!492 = !{i32 0, i32 2}
!493 = !DILocation(line: 193, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !480, file: !2, line: 193, column: 3)
!495 = !DILocation(line: 193, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 193, column: 3)
!497 = distinct !DILexicalBlock(scope: !494, file: !2, line: 193, column: 3)
!498 = !DILocation(line: 194, column: 1, scope: !480)
