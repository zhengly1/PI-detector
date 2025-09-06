; ModuleID = 'beta.c'
source_filename = "beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"beta.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnbeta_e(x, y, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_beta_e(x, y, &result)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnbeta_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !72 {
  %4 = alloca double, align 8, !DIAssignID !90
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !90, metadata ptr %4, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !92
  %5 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef nonnull %4), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !89, metadata !DIExpression()), !dbg !91
  %6 = load double, ptr %4, align 8, !dbg !94, !tbaa !96
  %7 = fcmp oeq double %6, -1.000000e+00, !dbg !100
  br i1 %7, label %8, label %10, !dbg !101

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !102, !tbaa !105
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !102
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !102, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 1) #7, !dbg !108
  br label %10, !dbg !108

10:                                               ; preds = %3, %8
  %11 = phi i32 [ 1, %8 ], [ %5, %3 ], !dbg !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !110
  ret i32 %11, !dbg !110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !111 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !134, metadata !DIExpression(), metadata !149, metadata ptr %5, metadata !DIExpression()), !dbg !150
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !151
  call void @llvm.dbg.assign(metadata i1 undef, metadata !135, metadata !DIExpression(), metadata !151, metadata ptr %6, metadata !DIExpression()), !dbg !150
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !136, metadata !DIExpression(), metadata !152, metadata ptr %7, metadata !DIExpression()), !dbg !150
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !137, metadata !DIExpression(), metadata !153, metadata ptr %8, metadata !DIExpression()), !dbg !150
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !138, metadata !DIExpression(), metadata !154, metadata ptr %9, metadata !DIExpression()), !dbg !155
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !156
  call void @llvm.dbg.assign(metadata i1 undef, metadata !140, metadata !DIExpression(), metadata !156, metadata ptr %10, metadata !DIExpression()), !dbg !155
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !141, metadata !DIExpression(), metadata !157, metadata ptr %11, metadata !DIExpression()), !dbg !155
  %12 = alloca double, align 8, !DIAssignID !158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !142, metadata !DIExpression(), metadata !158, metadata ptr %12, metadata !DIExpression()), !dbg !155
  %13 = alloca double, align 8, !DIAssignID !159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !143, metadata !DIExpression(), metadata !159, metadata ptr %13, metadata !DIExpression()), !dbg !155
  %14 = alloca double, align 8, !DIAssignID !160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !144, metadata !DIExpression(), metadata !160, metadata ptr %14, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata double %0, metadata !116, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata double %1, metadata !117, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !118, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !119, metadata !DIExpression()), !dbg !161
  %15 = fcmp oeq double %0, 0.000000e+00, !dbg !162
  %16 = fcmp oeq double %1, 0.000000e+00
  %17 = or i1 %15, %16, !dbg !164
  br i1 %17, label %18, label %20, !dbg !164

18:                                               ; preds = %4
  store double 0.000000e+00, ptr %3, align 8, !dbg !165, !tbaa !96
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !167, !tbaa !105
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !167
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !167, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 56, i32 noundef 1) #7, !dbg !169
  br label %135, !dbg !169

20:                                               ; preds = %4
  call void @llvm.dbg.value(metadata double %0, metadata !171, metadata !DIExpression()), !dbg !176
  %21 = fcmp olt double %0, 0.000000e+00, !dbg !179
  %22 = tail call double @llvm.floor.f64(double %0)
  %23 = fcmp oeq double %22, %0
  %24 = and i1 %21, %23, !dbg !180
  br i1 %24, label %30, label %25, !dbg !180

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %1, metadata !171, metadata !DIExpression()), !dbg !181
  %26 = fcmp olt double %1, 0.000000e+00, !dbg !183
  %27 = tail call double @llvm.floor.f64(double %1)
  %28 = fcmp oeq double %27, %1
  %29 = and i1 %26, %28, !dbg !184
  br i1 %29, label %30, label %32, !dbg !184

30:                                               ; preds = %25, %20
  store double 0.000000e+00, ptr %3, align 8, !dbg !185, !tbaa !96
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !187, !tbaa !105
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !187
  store double 0x7FF8000000000000, ptr %31, align 8, !dbg !187, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 1) #7, !dbg !189
  br label %135, !dbg !189

32:                                               ; preds = %25
  %33 = fcmp ogt double %0, 0.000000e+00, !dbg !191
  %34 = fcmp ogt double %1, 0.000000e+00
  %35 = and i1 %33, %34, !dbg !192
  br i1 %35, label %36, label %97, !dbg !192

36:                                               ; preds = %32
  %37 = fcmp ogt double %0, %1, !dbg !193
  %38 = select i1 %37, double %0, double %1, !dbg !193
  tail call void @llvm.dbg.value(metadata double %38, metadata !120, metadata !DIExpression()), !dbg !194
  %39 = fcmp olt double %0, %1, !dbg !195
  %40 = select i1 %39, double %0, double %1, !dbg !195
  tail call void @llvm.dbg.value(metadata double %40, metadata !123, metadata !DIExpression()), !dbg !194
  %41 = fdiv double %40, %38, !dbg !196
  tail call void @llvm.dbg.value(metadata double %41, metadata !124, metadata !DIExpression()), !dbg !194
  %42 = fcmp olt double %41, 2.000000e-01, !dbg !197
  br i1 %42, label %43, label %97, !dbg !198

43:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !199
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !200
  %44 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %6) #7, !dbg !201
  %45 = call i32 @gsl_sf_gammastar_e(double noundef %1, ptr noundef nonnull %7) #7, !dbg !202
  %46 = fadd double %0, %1, !dbg !203
  %47 = call i32 @gsl_sf_gammastar_e(double noundef %46, ptr noundef nonnull %8) #7, !dbg !204
  %48 = call i32 @gsl_sf_log_1plusx_e(double noundef %41, ptr noundef nonnull %5) #7, !dbg !205
  %49 = load double, ptr %6, align 8, !dbg !206, !tbaa !105
  %50 = load double, ptr %7, align 8, !dbg !207, !tbaa !105
  %51 = fmul double %49, %50, !dbg !208
  %52 = load double, ptr %8, align 8, !dbg !209, !tbaa !105
  %53 = fdiv double %51, %52, !dbg !210
  %54 = fmul double %53, 0x3FF6A09E667F3BCD, !dbg !211
  %55 = fmul double %54, 0x3FFC5BF891B4EF6B, !dbg !212
  %56 = call double @log(double noundef %55) #7, !dbg !213
  tail call void @llvm.dbg.value(metadata double %56, metadata !125, metadata !DIExpression()), !dbg !150
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !214
  %58 = load double, ptr %57, align 8, !dbg !214, !tbaa !107
  %59 = load double, ptr %6, align 8, !dbg !215, !tbaa !105
  %60 = fdiv double %58, %59, !dbg !216
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !217
  %62 = load double, ptr %61, align 8, !dbg !217, !tbaa !107
  %63 = load double, ptr %7, align 8, !dbg !218, !tbaa !105
  %64 = fdiv double %62, %63, !dbg !219
  %65 = fadd double %60, %64, !dbg !220
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !221
  %67 = load double, ptr %66, align 8, !dbg !221, !tbaa !107
  %68 = load double, ptr %8, align 8, !dbg !222, !tbaa !105
  %69 = fdiv double %67, %68, !dbg !223
  %70 = fadd double %65, %69, !dbg !224
  tail call void @llvm.dbg.value(metadata double %70, metadata !128, metadata !DIExpression()), !dbg !150
  %71 = call double @log(double noundef %41) #7, !dbg !225
  %72 = fmul double %40, %71, !dbg !226
  tail call void @llvm.dbg.value(metadata double %72, metadata !131, metadata !DIExpression()), !dbg !150
  %73 = call double @log(double noundef %40) #7, !dbg !227
  %74 = fmul double %73, 5.000000e-01, !dbg !228
  tail call void @llvm.dbg.value(metadata double %74, metadata !132, metadata !DIExpression()), !dbg !150
  %75 = fadd double %46, -5.000000e-01, !dbg !229
  %76 = load double, ptr %5, align 8, !dbg !230, !tbaa !105
  %77 = fmul double %75, %76, !dbg !231
  tail call void @llvm.dbg.value(metadata double %77, metadata !133, metadata !DIExpression()), !dbg !150
  %78 = fsub double %72, %74, !dbg !232
  %79 = fsub double %78, %77, !dbg !233
  tail call void @llvm.dbg.value(metadata double %79, metadata !129, metadata !DIExpression()), !dbg !150
  %80 = call double @llvm.fabs.f64(double %72), !dbg !234
  %81 = call double @llvm.fabs.f64(double %74), !dbg !235
  %82 = fadd double %80, %81, !dbg !236
  %83 = call double @llvm.fabs.f64(double %77), !dbg !237
  %84 = fadd double %82, %83, !dbg !238
  %85 = fmul double %84, 0x3CB0000000000000, !dbg !239
  tail call void @llvm.dbg.value(metadata double %85, metadata !130, metadata !DIExpression()), !dbg !150
  %86 = call double @llvm.fabs.f64(double %75), !dbg !240
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !241
  %88 = load double, ptr %87, align 8, !dbg !241, !tbaa !107
  %89 = fmul double %86, %88, !dbg !242
  %90 = fadd double %89, %85, !dbg !243
  tail call void @llvm.dbg.value(metadata double %90, metadata !130, metadata !DIExpression()), !dbg !150
  %91 = fadd double %56, %79, !dbg !244
  store double %91, ptr %2, align 8, !dbg !245, !tbaa !105
  %92 = fadd double %70, %90, !dbg !246
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !247
  %94 = call double @llvm.fabs.f64(double %91), !dbg !248
  %95 = fmul double %94, 0x3CC0000000000000, !dbg !249
  %96 = fadd double %95, %92, !dbg !250
  store double %96, ptr %93, align 8, !dbg !250, !tbaa !107
  store double 1.000000e+00, ptr %3, align 8, !dbg !251, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !252
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !252
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !252
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !252
  br label %135

97:                                               ; preds = %36, %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !253
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !253
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7, !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7, !dbg !254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7, !dbg !254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7, !dbg !254
  %98 = fadd double %0, %1, !dbg !255
  tail call void @llvm.dbg.value(metadata double %98, metadata !145, metadata !DIExpression()), !dbg !155
  %99 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %12) #7, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !146, metadata !DIExpression()), !dbg !155
  %100 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %13) #7, !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !147, metadata !DIExpression()), !dbg !155
  %101 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %98, ptr noundef nonnull %11, ptr noundef nonnull %14) #7, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !148, metadata !DIExpression()), !dbg !155
  %102 = load double, ptr %12, align 8, !dbg !259, !tbaa !96
  %103 = load double, ptr %13, align 8, !dbg !260, !tbaa !96
  %104 = fmul double %102, %103, !dbg !261
  %105 = load double, ptr %14, align 8, !dbg !262, !tbaa !96
  %106 = fmul double %104, %105, !dbg !263
  store double %106, ptr %3, align 8, !dbg !264, !tbaa !96
  %107 = load double, ptr %9, align 8, !dbg !265, !tbaa !105
  %108 = load double, ptr %10, align 8, !dbg !266, !tbaa !105
  %109 = fadd double %107, %108, !dbg !267
  %110 = load double, ptr %11, align 8, !dbg !268, !tbaa !105
  %111 = fsub double %109, %110, !dbg !269
  store double %111, ptr %2, align 8, !dbg !270, !tbaa !105
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !271
  %113 = load double, ptr %112, align 8, !dbg !271, !tbaa !107
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !272
  %115 = load double, ptr %114, align 8, !dbg !272, !tbaa !107
  %116 = fadd double %113, %115, !dbg !273
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !274
  %118 = load double, ptr %117, align 8, !dbg !274, !tbaa !107
  %119 = fadd double %116, %118, !dbg !275
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !276
  %121 = call double @llvm.fabs.f64(double %107), !dbg !277
  %122 = call double @llvm.fabs.f64(double %108), !dbg !278
  %123 = fadd double %121, %122, !dbg !279
  %124 = call double @llvm.fabs.f64(double %110), !dbg !280
  %125 = fadd double %123, %124, !dbg !281
  %126 = fmul double %125, 0x3CC0000000000000, !dbg !282
  %127 = fadd double %126, %119, !dbg !283
  %128 = call double @llvm.fabs.f64(double %111), !dbg !284
  %129 = fmul double %128, 0x3CC0000000000000, !dbg !285
  %130 = fadd double %129, %127, !dbg !286
  store double %130, ptr %120, align 8, !dbg !286, !tbaa !107
  %131 = icmp eq i32 %99, 0, !dbg !287
  %132 = icmp eq i32 %100, 0, !dbg !287
  %133 = select i1 %132, i32 %101, i32 %100, !dbg !287
  %134 = select i1 %131, i32 %133, i32 %99, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7, !dbg !288
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7, !dbg !288
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !288
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !288
  br label %135

135:                                              ; preds = %43, %97, %30, %18
  %136 = phi i32 [ 1, %18 ], [ 1, %30 ], [ 0, %43 ], [ %134, %97 ], !dbg !161
  ret i32 %136, !dbg !289
}

declare !dbg !290 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !295 i32 @gsl_sf_gammastar_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !299 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !301 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !305 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !308 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !327
  call void @llvm.dbg.assign(metadata i1 undef, metadata !313, metadata !DIExpression(), metadata !327, metadata ptr %4, metadata !DIExpression()), !dbg !328
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !316, metadata !DIExpression(), metadata !329, metadata ptr %5, metadata !DIExpression()), !dbg !328
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !330
  call void @llvm.dbg.assign(metadata i1 undef, metadata !317, metadata !DIExpression(), metadata !330, metadata ptr %6, metadata !DIExpression()), !dbg !328
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !318, metadata !DIExpression(), metadata !331, metadata ptr %7, metadata !DIExpression()), !dbg !332
  %8 = alloca double, align 8, !DIAssignID !333
  call void @llvm.dbg.assign(metadata i1 undef, metadata !322, metadata !DIExpression(), metadata !333, metadata ptr %8, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata double %1, metadata !311, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !334
  %9 = fcmp ogt double %0, 0.000000e+00, !dbg !335
  %10 = fcmp ogt double %1, 0.000000e+00
  %11 = and i1 %9, %10, !dbg !336
  %12 = fcmp olt double %0, 5.000000e+01
  %13 = and i1 %12, %11, !dbg !336
  %14 = fcmp olt double %1, 5.000000e+01
  %15 = and i1 %14, %13, !dbg !336
  br i1 %15, label %16, label %48, !dbg !336

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !337
  %17 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %4) #7, !dbg !338
  %18 = call i32 @gsl_sf_gamma_e(double noundef %1, ptr noundef nonnull %5) #7, !dbg !339
  %19 = fadd double %0, %1, !dbg !340
  %20 = call i32 @gsl_sf_gamma_e(double noundef %19, ptr noundef nonnull %6) #7, !dbg !341
  %21 = load double, ptr %4, align 8, !dbg !342, !tbaa !105
  %22 = load double, ptr %5, align 8, !dbg !343, !tbaa !105
  %23 = fmul double %21, %22, !dbg !344
  %24 = load double, ptr %6, align 8, !dbg !345, !tbaa !105
  %25 = fdiv double %23, %24, !dbg !346
  store double %25, ptr %2, align 8, !dbg !347, !tbaa !105
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !348
  %27 = load double, ptr %26, align 8, !dbg !348, !tbaa !107
  %28 = fdiv double %22, %24, !dbg !349
  %29 = call double @llvm.fabs.f64(double %28), !dbg !350
  %30 = fmul double %27, %29, !dbg !351
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !352
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !353
  %33 = load double, ptr %32, align 8, !dbg !353, !tbaa !107
  %34 = fdiv double %21, %24, !dbg !354
  %35 = call double @llvm.fabs.f64(double %34), !dbg !355
  %36 = fmul double %35, %33, !dbg !356
  %37 = fadd double %30, %36, !dbg !357
  %38 = fmul double %24, %24, !dbg !358
  %39 = fdiv double %23, %38, !dbg !359
  %40 = call double @llvm.fabs.f64(double %39), !dbg !360
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !361
  %42 = load double, ptr %41, align 8, !dbg !361, !tbaa !107
  %43 = fmul double %40, %42, !dbg !362
  %44 = fadd double %37, %43, !dbg !363
  %45 = call double @llvm.fabs.f64(double %25), !dbg !364
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !365
  %47 = fadd double %46, %44, !dbg !366
  store double %47, ptr %31, align 8, !dbg !366, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !367
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !367
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !367
  br label %83

48:                                               ; preds = %3
  call void @llvm.dbg.value(metadata double %0, metadata !171, metadata !DIExpression()), !dbg !368
  %49 = fcmp olt double %0, 0.000000e+00, !dbg !370
  %50 = tail call double @llvm.floor.f64(double %0)
  %51 = fcmp oeq double %50, %0
  %52 = and i1 %49, %51, !dbg !371
  br i1 %52, label %58, label %53, !dbg !371

53:                                               ; preds = %48
  call void @llvm.dbg.value(metadata double %1, metadata !171, metadata !DIExpression()), !dbg !372
  %54 = fcmp olt double %1, 0.000000e+00, !dbg !374
  %55 = tail call double @llvm.floor.f64(double %1)
  %56 = fcmp oeq double %55, %1
  %57 = and i1 %54, %56, !dbg !375
  br i1 %57, label %58, label %60, !dbg !375

58:                                               ; preds = %53, %48
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !376, !tbaa !105
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !376
  store double 0x7FF8000000000000, ptr %59, align 8, !dbg !376, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 1) #7, !dbg !379
  br label %83, !dbg !379

60:                                               ; preds = %53
  %61 = fadd double %0, %1, !dbg !381
  call void @llvm.dbg.value(metadata double %61, metadata !171, metadata !DIExpression()), !dbg !382
  %62 = fcmp olt double %61, 0.000000e+00, !dbg !384
  %63 = tail call double @llvm.floor.f64(double %61)
  %64 = fcmp oeq double %63, %61
  %65 = and i1 %62, %64, !dbg !385
  br i1 %65, label %66, label %67, !dbg !385

66:                                               ; preds = %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !386
  br label %83, !dbg !388

67:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !389
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !390
  %68 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !391
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !323, metadata !DIExpression()), !dbg !332
  %69 = icmp eq i32 %68, 0, !dbg !392
  br i1 %69, label %70, label %78, !dbg !393

70:                                               ; preds = %67
  %71 = load double, ptr %7, align 8, !dbg !394, !tbaa !105
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !395
  %73 = load double, ptr %72, align 8, !dbg !395, !tbaa !107
  %74 = tail call i32 @gsl_sf_exp_err_e(double noundef %71, double noundef %73, ptr noundef %2) #7, !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !324, metadata !DIExpression()), !dbg !397
  %75 = load double, ptr %8, align 8, !dbg !398, !tbaa !96
  %76 = load double, ptr %2, align 8, !dbg !399, !tbaa !105
  %77 = fmul double %75, %76, !dbg !399
  br label %80

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !400
  store double 0.000000e+00, ptr %79, align 8, !dbg !402, !tbaa !107
  br label %80, !dbg !403

80:                                               ; preds = %78, %70
  %81 = phi double [ %77, %70 ], [ 0.000000e+00, %78 ], !dbg !404
  %82 = phi i32 [ %74, %70 ], [ %68, %78 ], !dbg !404
  store double %81, ptr %2, align 8, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !405
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !405
  br label %83

83:                                               ; preds = %16, %58, %66, %80
  %84 = phi i32 [ 0, %16 ], [ 1, %58 ], [ 0, %66 ], [ %82, %80 ], !dbg !406
  ret i32 %84, !dbg !407
}

declare !dbg !408 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !409 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnbeta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !411 {
  %3 = alloca double, align 8, !DIAssignID !419
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !417, metadata !DIExpression(), metadata !420, metadata ptr %4, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata double %0, metadata !415, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata double %1, metadata !416, metadata !DIExpression()), !dbg !421
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !419, metadata ptr %3, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %4, metadata !87, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7, !dbg !425
  %5 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3), !dbg !426
  call void @llvm.dbg.value(metadata i32 %5, metadata !89, metadata !DIExpression()), !dbg !423
  %6 = load double, ptr %3, align 8, !dbg !427, !tbaa !96
  %7 = fcmp oeq double %6, -1.000000e+00, !dbg !428
  br i1 %7, label %8, label %9, !dbg !429

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !430, !tbaa !105, !DIAssignID !431
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !431, metadata ptr %4, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !417, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !432, metadata ptr %4, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !421
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 1) #7, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7, !dbg !434
  tail call void @llvm.dbg.value(metadata i32 1, metadata !418, metadata !DIExpression()), !dbg !421
  br label %11, !dbg !422

9:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7, !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !418, metadata !DIExpression()), !dbg !421
  %10 = icmp eq i32 %5, 0, !dbg !435
  br i1 %10, label %13, label %11, !dbg !422

11:                                               ; preds = %8, %9
  %12 = phi i32 [ 1, %8 ], [ %5, %9 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 163, i32 noundef %12) #7, !dbg !437
  br label %13, !dbg !437

13:                                               ; preds = %9, %11
  %14 = load double, ptr %4, align 8, !dbg !422, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !440
  ret double %14, !dbg !440
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_beta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !441 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !447
  call void @llvm.dbg.assign(metadata i1 undef, metadata !445, metadata !DIExpression(), metadata !447, metadata ptr %3, metadata !DIExpression()), !dbg !448
  tail call void @llvm.dbg.value(metadata double %0, metadata !443, metadata !DIExpression()), !dbg !448
  tail call void @llvm.dbg.value(metadata double %1, metadata !444, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !449
  %4 = call i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !446, metadata !DIExpression()), !dbg !448
  %5 = icmp eq i32 %4, 0, !dbg !450
  br i1 %5, label %7, label %6, !dbg !449

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef %4) #7, !dbg !452
  br label %7, !dbg !452

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !449, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !455
  ret double %8, !dbg !455
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "beta.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "02cc7358e457e8e6e50f5a7461c75053")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 31)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !63, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!0, !7, !12, !17}
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!71 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!72 = distinct !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !2, file: !2, line: 39, type: !73, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !84)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !75, !75, !77}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !76, size: 64, offset: 64)
!84 = !{!85, !86, !87, !88, !89}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !72, file: !2, line: 39, type: !75)
!86 = !DILocalVariable(name: "y", arg: 2, scope: !72, file: !2, line: 39, type: !75)
!87 = !DILocalVariable(name: "result", arg: 3, scope: !72, file: !2, line: 39, type: !77)
!88 = !DILocalVariable(name: "sgn", scope: !72, file: !2, line: 41, type: !76)
!89 = !DILocalVariable(name: "status", scope: !72, file: !2, line: 42, type: !26)
!90 = distinct !DIAssignID()
!91 = !DILocation(line: 0, scope: !72)
!92 = !DILocation(line: 41, column: 3, scope: !72)
!93 = !DILocation(line: 42, column: 16, scope: !72)
!94 = !DILocation(line: 43, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !72, file: !2, line: 43, column: 7)
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 43, column: 11, scope: !95)
!101 = !DILocation(line: 43, column: 7, scope: !72)
!102 = !DILocation(line: 44, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 44, column: 5)
!104 = distinct !DILexicalBlock(scope: !95, file: !2, line: 43, column: 18)
!105 = !{!106, !97, i64 0}
!106 = !{!"gsl_sf_result_struct", !97, i64 0, !97, i64 8}
!107 = !{!106, !97, i64 8}
!108 = !DILocation(line: 44, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !2, line: 44, column: 5)
!110 = !DILocation(line: 47, column: 1, scope: !72)
!111 = distinct !DISubprogram(name: "gsl_sf_lnbeta_sgn_e", scope: !2, file: !2, line: 50, type: !112, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !115)
!112 = !DISubroutineType(types: !113)
!113 = !{!26, !75, !75, !77, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!115 = !{!116, !117, !118, !119, !120, !123, !124, !125, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!116 = !DILocalVariable(name: "x", arg: 1, scope: !111, file: !2, line: 50, type: !75)
!117 = !DILocalVariable(name: "y", arg: 2, scope: !111, file: !2, line: 50, type: !75)
!118 = !DILocalVariable(name: "result", arg: 3, scope: !111, file: !2, line: 50, type: !77)
!119 = !DILocalVariable(name: "sgn", arg: 4, scope: !111, file: !2, line: 50, type: !114)
!120 = !DILocalVariable(name: "max", scope: !121, file: !2, line: 65, type: !75)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 64, column: 23)
!122 = distinct !DILexicalBlock(scope: !111, file: !2, line: 64, column: 7)
!123 = !DILocalVariable(name: "min", scope: !121, file: !2, line: 66, type: !75)
!124 = !DILocalVariable(name: "rat", scope: !121, file: !2, line: 67, type: !75)
!125 = !DILocalVariable(name: "lnpre_val", scope: !126, file: !2, line: 73, type: !76)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 69, column: 19)
!127 = distinct !DILexicalBlock(scope: !121, file: !2, line: 69, column: 8)
!128 = !DILocalVariable(name: "lnpre_err", scope: !126, file: !2, line: 74, type: !76)
!129 = !DILocalVariable(name: "lnpow_val", scope: !126, file: !2, line: 75, type: !76)
!130 = !DILocalVariable(name: "lnpow_err", scope: !126, file: !2, line: 76, type: !76)
!131 = !DILocalVariable(name: "t1", scope: !126, file: !2, line: 77, type: !76)
!132 = !DILocalVariable(name: "t2", scope: !126, file: !2, line: 77, type: !76)
!133 = !DILocalVariable(name: "t3", scope: !126, file: !2, line: 77, type: !76)
!134 = !DILocalVariable(name: "lnopr", scope: !126, file: !2, line: 78, type: !78)
!135 = !DILocalVariable(name: "gsx", scope: !126, file: !2, line: 79, type: !78)
!136 = !DILocalVariable(name: "gsy", scope: !126, file: !2, line: 79, type: !78)
!137 = !DILocalVariable(name: "gsxy", scope: !126, file: !2, line: 79, type: !78)
!138 = !DILocalVariable(name: "lgx", scope: !139, file: !2, line: 102, type: !78)
!139 = distinct !DILexicalBlock(scope: !111, file: !2, line: 101, column: 3)
!140 = !DILocalVariable(name: "lgy", scope: !139, file: !2, line: 102, type: !78)
!141 = !DILocalVariable(name: "lgxy", scope: !139, file: !2, line: 102, type: !78)
!142 = !DILocalVariable(name: "sgx", scope: !139, file: !2, line: 103, type: !76)
!143 = !DILocalVariable(name: "sgy", scope: !139, file: !2, line: 103, type: !76)
!144 = !DILocalVariable(name: "sgxy", scope: !139, file: !2, line: 103, type: !76)
!145 = !DILocalVariable(name: "xy", scope: !139, file: !2, line: 103, type: !76)
!146 = !DILocalVariable(name: "stat_gx", scope: !139, file: !2, line: 104, type: !26)
!147 = !DILocalVariable(name: "stat_gy", scope: !139, file: !2, line: 105, type: !26)
!148 = !DILocalVariable(name: "stat_gxy", scope: !139, file: !2, line: 106, type: !26)
!149 = distinct !DIAssignID()
!150 = !DILocation(line: 0, scope: !126)
!151 = distinct !DIAssignID()
!152 = distinct !DIAssignID()
!153 = distinct !DIAssignID()
!154 = distinct !DIAssignID()
!155 = !DILocation(line: 0, scope: !139)
!156 = distinct !DIAssignID()
!157 = distinct !DIAssignID()
!158 = distinct !DIAssignID()
!159 = distinct !DIAssignID()
!160 = distinct !DIAssignID()
!161 = !DILocation(line: 0, scope: !111)
!162 = !DILocation(line: 54, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !111, file: !2, line: 54, column: 6)
!164 = !DILocation(line: 54, column: 15, scope: !163)
!165 = !DILocation(line: 55, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 54, column: 28)
!167 = !DILocation(line: 56, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !2, line: 56, column: 5)
!169 = !DILocation(line: 56, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !2, line: 56, column: 5)
!171 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !2, line: 33, type: !75)
!172 = distinct !DISubprogram(name: "isnegint", scope: !2, file: !2, line: 33, type: !173, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!76, !75}
!175 = !{!171}
!176 = !DILocation(line: 0, scope: !172, inlinedAt: !177)
!177 = distinct !DILocation(line: 57, column: 14, scope: !178)
!178 = distinct !DILexicalBlock(scope: !163, file: !2, line: 57, column: 14)
!179 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !177)
!180 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !177)
!181 = !DILocation(line: 0, scope: !172, inlinedAt: !182)
!182 = distinct !DILocation(line: 57, column: 29, scope: !178)
!183 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !182)
!184 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !182)
!185 = !DILocation(line: 58, column: 10, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !2, line: 57, column: 42)
!187 = !DILocation(line: 59, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !2, line: 59, column: 5)
!189 = !DILocation(line: 59, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !2, line: 59, column: 5)
!191 = !DILocation(line: 64, column: 9, scope: !122)
!192 = !DILocation(line: 64, column: 13, scope: !122)
!193 = !DILocation(line: 65, column: 24, scope: !121)
!194 = !DILocation(line: 0, scope: !121)
!195 = !DILocation(line: 66, column: 24, scope: !121)
!196 = !DILocation(line: 67, column: 27, scope: !121)
!197 = !DILocation(line: 69, column: 12, scope: !127)
!198 = !DILocation(line: 69, column: 8, scope: !121)
!199 = !DILocation(line: 78, column: 7, scope: !126)
!200 = !DILocation(line: 79, column: 7, scope: !126)
!201 = !DILocation(line: 80, column: 7, scope: !126)
!202 = !DILocation(line: 81, column: 7, scope: !126)
!203 = !DILocation(line: 82, column: 27, scope: !126)
!204 = !DILocation(line: 82, column: 7, scope: !126)
!205 = !DILocation(line: 83, column: 7, scope: !126)
!206 = !DILocation(line: 84, column: 27, scope: !126)
!207 = !DILocation(line: 84, column: 35, scope: !126)
!208 = !DILocation(line: 84, column: 30, scope: !126)
!209 = !DILocation(line: 84, column: 44, scope: !126)
!210 = !DILocation(line: 84, column: 38, scope: !126)
!211 = !DILocation(line: 84, column: 48, scope: !126)
!212 = !DILocation(line: 84, column: 57, scope: !126)
!213 = !DILocation(line: 84, column: 19, scope: !126)
!214 = !DILocation(line: 85, column: 23, scope: !126)
!215 = !DILocation(line: 85, column: 31, scope: !126)
!216 = !DILocation(line: 85, column: 26, scope: !126)
!217 = !DILocation(line: 85, column: 41, scope: !126)
!218 = !DILocation(line: 85, column: 49, scope: !126)
!219 = !DILocation(line: 85, column: 44, scope: !126)
!220 = !DILocation(line: 85, column: 35, scope: !126)
!221 = !DILocation(line: 85, column: 60, scope: !126)
!222 = !DILocation(line: 85, column: 69, scope: !126)
!223 = !DILocation(line: 85, column: 63, scope: !126)
!224 = !DILocation(line: 85, column: 53, scope: !126)
!225 = !DILocation(line: 86, column: 16, scope: !126)
!226 = !DILocation(line: 86, column: 15, scope: !126)
!227 = !DILocation(line: 87, column: 16, scope: !126)
!228 = !DILocation(line: 87, column: 15, scope: !126)
!229 = !DILocation(line: 88, column: 16, scope: !126)
!230 = !DILocation(line: 88, column: 28, scope: !126)
!231 = !DILocation(line: 88, column: 21, scope: !126)
!232 = !DILocation(line: 89, column: 23, scope: !126)
!233 = !DILocation(line: 89, column: 28, scope: !126)
!234 = !DILocation(line: 90, column: 39, scope: !126)
!235 = !DILocation(line: 90, column: 50, scope: !126)
!236 = !DILocation(line: 90, column: 48, scope: !126)
!237 = !DILocation(line: 90, column: 61, scope: !126)
!238 = !DILocation(line: 90, column: 59, scope: !126)
!239 = !DILocation(line: 90, column: 36, scope: !126)
!240 = !DILocation(line: 91, column: 20, scope: !126)
!241 = !DILocation(line: 91, column: 42, scope: !126)
!242 = !DILocation(line: 91, column: 34, scope: !126)
!243 = !DILocation(line: 91, column: 17, scope: !126)
!244 = !DILocation(line: 92, column: 32, scope: !126)
!245 = !DILocation(line: 92, column: 20, scope: !126)
!246 = !DILocation(line: 93, column: 32, scope: !126)
!247 = !DILocation(line: 93, column: 15, scope: !126)
!248 = !DILocation(line: 94, column: 46, scope: !126)
!249 = !DILocation(line: 94, column: 44, scope: !126)
!250 = !DILocation(line: 94, column: 19, scope: !126)
!251 = !DILocation(line: 95, column: 12, scope: !126)
!252 = !DILocation(line: 97, column: 5, scope: !127)
!253 = !DILocation(line: 102, column: 5, scope: !139)
!254 = !DILocation(line: 103, column: 5, scope: !139)
!255 = !DILocation(line: 103, column: 34, scope: !139)
!256 = !DILocation(line: 104, column: 20, scope: !139)
!257 = !DILocation(line: 105, column: 20, scope: !139)
!258 = !DILocation(line: 106, column: 20, scope: !139)
!259 = !DILocation(line: 107, column: 12, scope: !139)
!260 = !DILocation(line: 107, column: 18, scope: !139)
!261 = !DILocation(line: 107, column: 16, scope: !139)
!262 = !DILocation(line: 107, column: 24, scope: !139)
!263 = !DILocation(line: 107, column: 22, scope: !139)
!264 = !DILocation(line: 107, column: 10, scope: !139)
!265 = !DILocation(line: 108, column: 24, scope: !139)
!266 = !DILocation(line: 108, column: 34, scope: !139)
!267 = !DILocation(line: 108, column: 28, scope: !139)
!268 = !DILocation(line: 108, column: 45, scope: !139)
!269 = !DILocation(line: 108, column: 38, scope: !139)
!270 = !DILocation(line: 108, column: 18, scope: !139)
!271 = !DILocation(line: 109, column: 24, scope: !139)
!272 = !DILocation(line: 109, column: 34, scope: !139)
!273 = !DILocation(line: 109, column: 28, scope: !139)
!274 = !DILocation(line: 109, column: 45, scope: !139)
!275 = !DILocation(line: 109, column: 38, scope: !139)
!276 = !DILocation(line: 109, column: 13, scope: !139)
!277 = !DILocation(line: 110, column: 45, scope: !139)
!278 = !DILocation(line: 110, column: 61, scope: !139)
!279 = !DILocation(line: 110, column: 59, scope: !139)
!280 = !DILocation(line: 110, column: 77, scope: !139)
!281 = !DILocation(line: 110, column: 75, scope: !139)
!282 = !DILocation(line: 110, column: 42, scope: !139)
!283 = !DILocation(line: 110, column: 17, scope: !139)
!284 = !DILocation(line: 111, column: 44, scope: !139)
!285 = !DILocation(line: 111, column: 42, scope: !139)
!286 = !DILocation(line: 111, column: 17, scope: !139)
!287 = !DILocation(line: 112, column: 12, scope: !139)
!288 = !DILocation(line: 113, column: 3, scope: !111)
!289 = !DILocation(line: 114, column: 1, scope: !111)
!290 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293, !293, !26, !26}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!295 = !DISubprogram(name: "gsl_sf_gammastar_e", scope: !296, file: !296, line: 77, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!297 = !DISubroutineType(types: !298)
!298 = !{!26, !75, !77}
!299 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !300, file: !300, line: 69, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!301 = !DISubprogram(name: "log", scope: !302, file: !302, line: 104, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!303 = !DISubroutineType(types: !304)
!304 = !{!76, !76}
!305 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !296, file: !296, line: 58, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!26, !76, !77, !114}
!308 = distinct !DISubprogram(name: "gsl_sf_beta_e", scope: !2, file: !2, line: 118, type: !73, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !309)
!309 = !{!310, !311, !312, !313, !316, !317, !318, !322, !323, !324}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !308, file: !2, line: 118, type: !75)
!311 = !DILocalVariable(name: "y", arg: 2, scope: !308, file: !2, line: 118, type: !75)
!312 = !DILocalVariable(name: "result", arg: 3, scope: !308, file: !2, line: 118, type: !77)
!313 = !DILocalVariable(name: "gx", scope: !314, file: !2, line: 122, type: !78)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 120, column: 48)
!315 = distinct !DILexicalBlock(scope: !308, file: !2, line: 120, column: 6)
!316 = !DILocalVariable(name: "gy", scope: !314, file: !2, line: 122, type: !78)
!317 = !DILocalVariable(name: "gxy", scope: !314, file: !2, line: 122, type: !78)
!318 = !DILocalVariable(name: "lb", scope: !319, file: !2, line: 140, type: !78)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 139, column: 10)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 135, column: 14)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 133, column: 12)
!322 = !DILocalVariable(name: "sgn", scope: !319, file: !2, line: 141, type: !76)
!323 = !DILocalVariable(name: "stat_lb", scope: !319, file: !2, line: 142, type: !26)
!324 = !DILocalVariable(name: "status", scope: !325, file: !2, line: 144, type: !26)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 143, column: 32)
!326 = distinct !DILexicalBlock(scope: !319, file: !2, line: 143, column: 8)
!327 = distinct !DIAssignID()
!328 = !DILocation(line: 0, scope: !314)
!329 = distinct !DIAssignID()
!330 = distinct !DIAssignID()
!331 = distinct !DIAssignID()
!332 = !DILocation(line: 0, scope: !319)
!333 = distinct !DIAssignID()
!334 = !DILocation(line: 0, scope: !308)
!335 = !DILocation(line: 120, column: 9, scope: !315)
!336 = !DILocation(line: 120, column: 13, scope: !315)
!337 = !DILocation(line: 122, column: 5, scope: !314)
!338 = !DILocation(line: 123, column: 5, scope: !314)
!339 = !DILocation(line: 124, column: 5, scope: !314)
!340 = !DILocation(line: 125, column: 21, scope: !314)
!341 = !DILocation(line: 125, column: 5, scope: !314)
!342 = !DILocation(line: 126, column: 24, scope: !314)
!343 = !DILocation(line: 126, column: 31, scope: !314)
!344 = !DILocation(line: 126, column: 27, scope: !314)
!345 = !DILocation(line: 126, column: 40, scope: !314)
!346 = !DILocation(line: 126, column: 35, scope: !314)
!347 = !DILocation(line: 126, column: 18, scope: !314)
!348 = !DILocation(line: 127, column: 23, scope: !314)
!349 = !DILocation(line: 127, column: 40, scope: !314)
!350 = !DILocation(line: 127, column: 29, scope: !314)
!351 = !DILocation(line: 127, column: 27, scope: !314)
!352 = !DILocation(line: 127, column: 13, scope: !314)
!353 = !DILocation(line: 128, column: 23, scope: !314)
!354 = !DILocation(line: 128, column: 40, scope: !314)
!355 = !DILocation(line: 128, column: 29, scope: !314)
!356 = !DILocation(line: 128, column: 27, scope: !314)
!357 = !DILocation(line: 128, column: 17, scope: !314)
!358 = !DILocation(line: 129, column: 49, scope: !314)
!359 = !DILocation(line: 129, column: 40, scope: !314)
!360 = !DILocation(line: 129, column: 20, scope: !314)
!361 = !DILocation(line: 129, column: 66, scope: !314)
!362 = !DILocation(line: 129, column: 60, scope: !314)
!363 = !DILocation(line: 129, column: 17, scope: !314)
!364 = !DILocation(line: 130, column: 44, scope: !314)
!365 = !DILocation(line: 130, column: 42, scope: !314)
!366 = !DILocation(line: 130, column: 17, scope: !314)
!367 = !DILocation(line: 132, column: 3, scope: !315)
!368 = !DILocation(line: 0, scope: !172, inlinedAt: !369)
!369 = distinct !DILocation(line: 133, column: 12, scope: !321)
!370 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !369)
!371 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !369)
!372 = !DILocation(line: 0, scope: !172, inlinedAt: !373)
!373 = distinct !DILocation(line: 133, column: 27, scope: !321)
!374 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !373)
!375 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !373)
!376 = !DILocation(line: 134, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 134, column: 5)
!378 = distinct !DILexicalBlock(scope: !321, file: !2, line: 133, column: 40)
!379 = !DILocation(line: 134, column: 5, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !2, line: 134, column: 5)
!381 = !DILocation(line: 135, column: 24, scope: !320)
!382 = !DILocation(line: 0, scope: !172, inlinedAt: !383)
!383 = distinct !DILocation(line: 135, column: 14, scope: !320)
!384 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !383)
!385 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !383)
!386 = !DILocation(line: 137, column: 17, scope: !387)
!387 = distinct !DILexicalBlock(scope: !320, file: !2, line: 135, column: 29)
!388 = !DILocation(line: 138, column: 5, scope: !387)
!389 = !DILocation(line: 140, column: 5, scope: !319)
!390 = !DILocation(line: 141, column: 5, scope: !319)
!391 = !DILocation(line: 142, column: 19, scope: !319)
!392 = !DILocation(line: 143, column: 16, scope: !326)
!393 = !DILocation(line: 143, column: 8, scope: !319)
!394 = !DILocation(line: 144, column: 40, scope: !325)
!395 = !DILocation(line: 144, column: 48, scope: !325)
!396 = !DILocation(line: 144, column: 20, scope: !325)
!397 = !DILocation(line: 0, scope: !325)
!398 = !DILocation(line: 145, column: 22, scope: !325)
!399 = !DILocation(line: 145, column: 19, scope: !325)
!400 = !DILocation(line: 150, column: 15, scope: !401)
!401 = distinct !DILexicalBlock(scope: !326, file: !2, line: 148, column: 10)
!402 = !DILocation(line: 150, column: 19, scope: !401)
!403 = !DILocation(line: 151, column: 7, scope: !401)
!404 = !DILocation(line: 0, scope: !326)
!405 = !DILocation(line: 153, column: 3, scope: !320)
!406 = !DILocation(line: 0, scope: !315)
!407 = !DILocation(line: 154, column: 1, scope: !308)
!408 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !296, file: !296, line: 66, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !410, file: !410, line: 110, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!411 = distinct !DISubprogram(name: "gsl_sf_lnbeta", scope: !2, file: !2, line: 161, type: !412, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!76, !75, !75}
!414 = !{!415, !416, !417, !418}
!415 = !DILocalVariable(name: "x", arg: 1, scope: !411, file: !2, line: 161, type: !75)
!416 = !DILocalVariable(name: "y", arg: 2, scope: !411, file: !2, line: 161, type: !75)
!417 = !DILocalVariable(name: "result", scope: !411, file: !2, line: 163, type: !78)
!418 = !DILocalVariable(name: "status", scope: !411, file: !2, line: 163, type: !26)
!419 = distinct !DIAssignID()
!420 = distinct !DIAssignID()
!421 = !DILocation(line: 0, scope: !411)
!422 = !DILocation(line: 163, column: 3, scope: !411)
!423 = !DILocation(line: 0, scope: !72, inlinedAt: !424)
!424 = distinct !DILocation(line: 163, column: 3, scope: !411)
!425 = !DILocation(line: 41, column: 3, scope: !72, inlinedAt: !424)
!426 = !DILocation(line: 42, column: 16, scope: !72, inlinedAt: !424)
!427 = !DILocation(line: 43, column: 7, scope: !95, inlinedAt: !424)
!428 = !DILocation(line: 43, column: 11, scope: !95, inlinedAt: !424)
!429 = !DILocation(line: 43, column: 7, scope: !72, inlinedAt: !424)
!430 = !DILocation(line: 44, column: 5, scope: !103, inlinedAt: !424)
!431 = distinct !DIAssignID()
!432 = distinct !DIAssignID()
!433 = !DILocation(line: 44, column: 5, scope: !109, inlinedAt: !424)
!434 = !DILocation(line: 47, column: 1, scope: !72, inlinedAt: !424)
!435 = !DILocation(line: 163, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !411, file: !2, line: 163, column: 3)
!437 = !DILocation(line: 163, column: 3, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 163, column: 3)
!439 = distinct !DILexicalBlock(scope: !436, file: !2, line: 163, column: 3)
!440 = !DILocation(line: 164, column: 1, scope: !411)
!441 = distinct !DISubprogram(name: "gsl_sf_beta", scope: !2, file: !2, line: 166, type: !412, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !442)
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "x", arg: 1, scope: !441, file: !2, line: 166, type: !75)
!444 = !DILocalVariable(name: "y", arg: 2, scope: !441, file: !2, line: 166, type: !75)
!445 = !DILocalVariable(name: "result", scope: !441, file: !2, line: 168, type: !78)
!446 = !DILocalVariable(name: "status", scope: !441, file: !2, line: 168, type: !26)
!447 = distinct !DIAssignID()
!448 = !DILocation(line: 0, scope: !441)
!449 = !DILocation(line: 168, column: 3, scope: !441)
!450 = !DILocation(line: 168, column: 3, scope: !451)
!451 = distinct !DILexicalBlock(scope: !441, file: !2, line: 168, column: 3)
!452 = !DILocation(line: 168, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 168, column: 3)
!454 = distinct !DILexicalBlock(scope: !451, file: !2, line: 168, column: 3)
!455 = !DILocation(line: 169, column: 1, scope: !441)
