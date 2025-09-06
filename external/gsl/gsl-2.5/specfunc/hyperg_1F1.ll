; ModuleID = 'hyperg_1F1.c'
source_filename = "hyperg_1F1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_result_e10_struct = type { double, double, i32 }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_1F1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [42 x i8] c"gsl_sf_hyperg_1F1_int_e(m, n, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_hyperg_1F1_e(a, b, x, &result)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !24

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !80 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !98, metadata !DIExpression(), metadata !111, metadata ptr %5, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !94, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !95, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata double %2, metadata !96, metadata !DIExpression()), !dbg !113
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !97, metadata !DIExpression()), !dbg !113
  %6 = fcmp oeq double %2, 0.000000e+00, !dbg !114
  br i1 %6, label %7, label %9, !dbg !115

7:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !116, !tbaa !118
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !123
  store double 0.000000e+00, ptr %8, align 8, !dbg !124, !tbaa !125
  br label %92, !dbg !126

9:                                                ; preds = %4
  %10 = icmp eq i32 %0, %1, !dbg !127
  br i1 %10, label %11, label %13, !dbg !128

11:                                               ; preds = %9
  %12 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #9, !dbg !129
  br label %92, !dbg !131

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0, !dbg !132
  br i1 %14, label %15, label %17, !dbg !133

15:                                               ; preds = %13
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !134, !tbaa !118
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !134
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !134, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1803, i32 noundef 1) #9, !dbg !137
  br label %92, !dbg !137

17:                                               ; preds = %13
  %18 = icmp eq i32 %0, 0, !dbg !139
  br i1 %18, label %19, label %21, !dbg !140

19:                                               ; preds = %17
  store double 1.000000e+00, ptr %3, align 8, !dbg !141, !tbaa !118
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !143
  store double 0.000000e+00, ptr %20, align 8, !dbg !144, !tbaa !125
  br label %92, !dbg !145

21:                                               ; preds = %17
  %22 = icmp slt i32 %1, 0, !dbg !146
  br i1 %22, label %23, label %29, !dbg !147

23:                                               ; preds = %21
  %24 = icmp slt i32 %0, %1, !dbg !148
  %25 = icmp sgt i32 %0, 0
  %26 = or i1 %25, %24, !dbg !149
  br i1 %26, label %27, label %29, !dbg !149

27:                                               ; preds = %23
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !150, !tbaa !118
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !150
  store double 0x7FF8000000000000, ptr %28, align 8, !dbg !150, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1812, i32 noundef 1) #9, !dbg !153
  br label %92, !dbg !153

29:                                               ; preds = %23, %21
  %30 = fcmp ogt double %2, 1.000000e+02, !dbg !155
  br i1 %30, label %31, label %49, !dbg !156

31:                                               ; preds = %29
  %32 = sub nsw i32 %1, %0, !dbg !157
  %33 = sitofp i32 %32 to double, !dbg !158
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !159
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !160, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata double %34, metadata !166, metadata !DIExpression()), !dbg !167
  %35 = fcmp olt double %34, 1.000000e+00, !dbg !169
  %36 = select i1 %35, double 1.000000e+00, double %34, !dbg !169
  %37 = sub nsw i32 1, %0, !dbg !170
  %38 = sitofp i32 %37 to double, !dbg !171
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !172
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !160, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata double %39, metadata !166, metadata !DIExpression()), !dbg !173
  %40 = fcmp olt double %39, 1.000000e+00, !dbg !175
  %41 = select i1 %40, double 1.000000e+00, double %39, !dbg !175
  %42 = fmul double %41, %36, !dbg !176
  %43 = fmul double %2, 5.000000e-01, !dbg !177
  %44 = fcmp olt double %42, %43, !dbg !178
  br i1 %44, label %45, label %49, !dbg !179

45:                                               ; preds = %31
  %46 = sitofp i32 %0 to double, !dbg !180
  %47 = sitofp i32 %1 to double, !dbg !182
  %48 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %46, double noundef %47, double noundef %2, ptr noundef %3), !dbg !183
  br label %92, !dbg !184

49:                                               ; preds = %31, %29
  %50 = fcmp olt double %2, -1.000000e+02, !dbg !185
  br i1 %50, label %51, label %69, !dbg !186

51:                                               ; preds = %49
  %52 = sitofp i32 %0 to double, !dbg !187
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !188
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !160, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double %53, metadata !166, metadata !DIExpression()), !dbg !189
  %54 = fcmp olt double %53, 1.000000e+00, !dbg !191
  %55 = select i1 %54, double 1.000000e+00, double %53, !dbg !191
  %56 = add nsw i32 %0, 1, !dbg !192
  %57 = sub i32 %56, %1, !dbg !193
  %58 = sitofp i32 %57 to double, !dbg !194
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !195
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !160, metadata !DIExpression()), !dbg !196
  tail call void @llvm.dbg.value(metadata double %59, metadata !166, metadata !DIExpression()), !dbg !196
  %60 = fcmp olt double %59, 1.000000e+00, !dbg !198
  %61 = select i1 %60, double 1.000000e+00, double %59, !dbg !198
  %62 = fmul double %55, %61, !dbg !199
  %63 = tail call double @llvm.fabs.f64(double %2), !dbg !200
  %64 = fmul double %63, 5.000000e-01, !dbg !201
  %65 = fcmp olt double %62, %64, !dbg !202
  br i1 %65, label %66, label %69, !dbg !203

66:                                               ; preds = %51
  %67 = sitofp i32 %1 to double, !dbg !204
  %68 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %52, double noundef %67, double noundef %2, ptr noundef %3), !dbg !206
  br label %92, !dbg !207

69:                                               ; preds = %51, %49
  %70 = and i32 %1, %0, !dbg !208
  %71 = icmp sgt i32 %70, -1, !dbg !208
  br i1 %71, label %74, label %72, !dbg !208

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @hyperg_1F1_ab_negint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !209
  br label %92, !dbg !211

74:                                               ; preds = %69
  %75 = icmp slt i32 %0, 0, !dbg !212
  %76 = icmp sgt i32 %1, 0
  %77 = and i1 %75, %76, !dbg !213
  br i1 %77, label %78, label %90, !dbg !213

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !214
  %79 = sub nsw i32 %1, %0, !dbg !215
  %80 = fneg double %2, !dbg !216
  %81 = call fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %79, i32 noundef %1, double noundef %80, ptr noundef nonnull %5), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !109, metadata !DIExpression()), !dbg !112
  %82 = call double @llvm.fabs.f64(double %2), !dbg !218
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !219
  %84 = load double, ptr %5, align 8, !dbg !220, !tbaa !118
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !221
  %86 = load double, ptr %85, align 8, !dbg !221, !tbaa !125
  %87 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %83, double noundef %84, double noundef %86, ptr noundef %3) #9, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !110, metadata !DIExpression()), !dbg !112
  %88 = icmp eq i32 %87, 0, !dbg !223
  %89 = select i1 %88, i32 %81, i32 %87, !dbg !223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !224
  br label %92

90:                                               ; preds = %74
  %91 = tail call fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !225
  br label %92, !dbg !227

92:                                               ; preds = %7, %11, %15, %19, %27, %45, %66, %72, %78, %90
  %93 = phi i32 [ 0, %7 ], [ %12, %11 ], [ 1, %15 ], [ 0, %19 ], [ 1, %27 ], [ %48, %45 ], [ %68, %66 ], [ %73, %72 ], [ %89, %78 ], [ %91, %90 ], !dbg !228
  ret i32 %93, !dbg !229
}

declare !dbg !230 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !234 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !239 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !247, metadata !DIExpression(), metadata !265, metadata ptr %5, metadata !DIExpression()), !dbg !266
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !267
  call void @llvm.dbg.assign(metadata i1 undef, metadata !248, metadata !DIExpression(), metadata !267, metadata ptr %6, metadata !DIExpression()), !dbg !266
  %7 = alloca double, align 8, !DIAssignID !268
  call void @llvm.dbg.assign(metadata i1 undef, metadata !249, metadata !DIExpression(), metadata !268, metadata ptr %7, metadata !DIExpression()), !dbg !266
  %8 = alloca double, align 8, !DIAssignID !269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !250, metadata !DIExpression(), metadata !269, metadata ptr %8, metadata !DIExpression()), !dbg !266
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !270
  call void @llvm.dbg.assign(metadata i1 undef, metadata !253, metadata !DIExpression(), metadata !270, metadata ptr %9, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %0, metadata !243, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double %1, metadata !244, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata double %2, metadata !245, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !272
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9, !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !275
  %10 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #9, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !251, metadata !DIExpression()), !dbg !266
  %11 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %8) #9, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !252, metadata !DIExpression()), !dbg !266
  %12 = icmp eq i32 %11, 0, !dbg !278
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false, !dbg !279
  br i1 %14, label %15, label %62, !dbg !279

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !280
  %16 = fsub double %1, %0, !dbg !281
  %17 = fsub double 1.000000e+00, %0, !dbg !282
  %18 = fdiv double 1.000000e+00, %2, !dbg !283
  %19 = call i32 @gsl_sf_hyperg_2F0_series_e(double noundef %16, double noundef %17, double noundef %18, i32 noundef -1, ptr noundef nonnull %9) #9, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !256, metadata !DIExpression()), !dbg !271
  %20 = icmp eq i32 %19, 0, !dbg !285
  %21 = load double, ptr %9, align 8
  %22 = fcmp une double %21, 0.000000e+00
  %23 = select i1 %20, i1 %22, i1 false, !dbg !286
  br i1 %23, label %24, label %59, !dbg !286

24:                                               ; preds = %15
  %25 = call double @log(double noundef %2) #9, !dbg !287
  tail call void @llvm.dbg.value(metadata double %25, metadata !257, metadata !DIExpression()), !dbg !288
  %26 = fsub double %0, %1, !dbg !289
  %27 = fmul double %26, %25, !dbg !290
  tail call void @llvm.dbg.value(metadata double %27, metadata !260, metadata !DIExpression()), !dbg !288
  %28 = call double @llvm.fabs.f64(double %0), !dbg !291
  %29 = call double @llvm.fabs.f64(double %1), !dbg !292
  %30 = fadd double %28, %29, !dbg !293
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !294
  %32 = call double @llvm.fabs.f64(double %25), !dbg !295
  %33 = fmul double %31, %32, !dbg !296
  %34 = call double @llvm.fabs.f64(double %26), !dbg !297
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !298
  %36 = fadd double %35, %33, !dbg !299
  tail call void @llvm.dbg.value(metadata double %36, metadata !261, metadata !DIExpression()), !dbg !288
  %37 = load double, ptr %5, align 8, !dbg !300, !tbaa !118
  %38 = load double, ptr %6, align 8, !dbg !301, !tbaa !118
  %39 = fsub double %37, %38, !dbg !302
  %40 = fadd double %27, %39, !dbg !303
  %41 = fadd double %40, %2, !dbg !304
  tail call void @llvm.dbg.value(metadata double %41, metadata !262, metadata !DIExpression()), !dbg !288
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !305
  %43 = load double, ptr %42, align 8, !dbg !305, !tbaa !125
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !306
  %45 = load double, ptr %44, align 8, !dbg !306, !tbaa !125
  %46 = fadd double %43, %45, !dbg !307
  %47 = fadd double %36, %46, !dbg !308
  %48 = call double @llvm.fabs.f64(double %2), !dbg !309
  %49 = fmul double %48, 0x3CC0000000000000, !dbg !310
  %50 = fadd double %49, %47, !dbg !311
  tail call void @llvm.dbg.value(metadata double %50, metadata !263, metadata !DIExpression()), !dbg !288
  %51 = load double, ptr %8, align 8, !dbg !312, !tbaa !313
  %52 = load double, ptr %7, align 8, !dbg !314, !tbaa !313
  %53 = fmul double %51, %52, !dbg !315
  %54 = load double, ptr %9, align 8, !dbg !316, !tbaa !118
  %55 = fmul double %53, %54, !dbg !317
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !318
  %57 = load double, ptr %56, align 8, !dbg !318, !tbaa !125
  %58 = call i32 @gsl_sf_exp_mult_err_e(double noundef %41, double noundef %50, double noundef %55, double noundef %57, ptr noundef %3) #9, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !264, metadata !DIExpression()), !dbg !288
  br label %60

59:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !320
  br label %60, !dbg !322

60:                                               ; preds = %59, %24
  %61 = phi i32 [ %58, %24 ], [ %19, %59 ], !dbg !323
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !324
  br label %64

62:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !325, !tbaa !118
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !325
  store double 0x7FF8000000000000, ptr %63, align 8, !dbg !325, !tbaa !125
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 1) #9, !dbg !328
  br label %64, !dbg !328

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ 1, %62 ], !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9, !dbg !331
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !331
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !331
  ret i32 %65, !dbg !331
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !332 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !355, metadata ptr %5, metadata !DIExpression()), !dbg !356
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !357
  call void @llvm.dbg.assign(metadata i1 undef, metadata !339, metadata !DIExpression(), metadata !357, metadata ptr %6, metadata !DIExpression()), !dbg !356
  %7 = alloca double, align 8, !DIAssignID !358
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !358, metadata ptr %7, metadata !DIExpression()), !dbg !356
  %8 = alloca double, align 8, !DIAssignID !359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !341, metadata !DIExpression(), metadata !359, metadata ptr %8, metadata !DIExpression()), !dbg !356
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !360
  call void @llvm.dbg.assign(metadata i1 undef, metadata !344, metadata !DIExpression(), metadata !360, metadata ptr %9, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %0, metadata !334, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %1, metadata !335, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata double %2, metadata !336, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !362
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9, !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !365
  %10 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #9, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !342, metadata !DIExpression()), !dbg !356
  %11 = fsub double %1, %0, !dbg !367
  %12 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %11, ptr noundef nonnull %6, ptr noundef nonnull %8) #9, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !343, metadata !DIExpression()), !dbg !356
  %13 = icmp eq i32 %10, 0, !dbg !369
  %14 = icmp eq i32 %12, 0
  %15 = select i1 %13, i1 %14, i1 false, !dbg !370
  br i1 %15, label %16, label %54, !dbg !370

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !371
  %17 = fadd double %0, 1.000000e+00, !dbg !372
  %18 = fsub double %17, %1, !dbg !373
  %19 = fdiv double -1.000000e+00, %2, !dbg !374
  %20 = call i32 @gsl_sf_hyperg_2F0_series_e(double noundef %0, double noundef %18, double noundef %19, i32 noundef -1, ptr noundef nonnull %9) #9, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !347, metadata !DIExpression()), !dbg !361
  %21 = load double, ptr %9, align 8, !dbg !376, !tbaa !118
  %22 = fcmp une double %21, 0.000000e+00, !dbg !377
  br i1 %22, label %23, label %51, !dbg !378

23:                                               ; preds = %16
  %24 = fneg double %2, !dbg !379
  %25 = call double @log(double noundef %24) #9, !dbg !380
  %26 = fmul double %25, %0, !dbg !381
  tail call void @llvm.dbg.value(metadata double %26, metadata !348, metadata !DIExpression()), !dbg !382
  %27 = call double @llvm.fabs.f64(double %0), !dbg !383
  %28 = call double @llvm.fabs.f64(double %26), !dbg !384
  %29 = fadd double %27, %28, !dbg !385
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !386
  tail call void @llvm.dbg.value(metadata double %30, metadata !351, metadata !DIExpression()), !dbg !382
  %31 = load double, ptr %5, align 8, !dbg !387, !tbaa !118
  %32 = load double, ptr %6, align 8, !dbg !388, !tbaa !118
  %33 = fsub double %31, %32, !dbg !389
  %34 = fsub double %33, %26, !dbg !390
  tail call void @llvm.dbg.value(metadata double %34, metadata !352, metadata !DIExpression()), !dbg !382
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !391
  %36 = load double, ptr %35, align 8, !dbg !391, !tbaa !125
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !392
  %38 = load double, ptr %37, align 8, !dbg !392, !tbaa !125
  %39 = fadd double %36, %38, !dbg !393
  %40 = fadd double %30, %39, !dbg !394
  tail call void @llvm.dbg.value(metadata double %40, metadata !353, metadata !DIExpression()), !dbg !382
  %41 = load double, ptr %8, align 8, !dbg !395, !tbaa !313
  %42 = load double, ptr %7, align 8, !dbg !396, !tbaa !313
  %43 = fmul double %41, %42, !dbg !397
  %44 = load double, ptr %9, align 8, !dbg !398, !tbaa !118
  %45 = fmul double %43, %44, !dbg !399
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !400
  %47 = load double, ptr %46, align 8, !dbg !400, !tbaa !125
  %48 = call i32 @gsl_sf_exp_mult_err_e(double noundef %34, double noundef %40, double noundef %45, double noundef %47, ptr noundef %3) #9, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !354, metadata !DIExpression()), !dbg !382
  %49 = icmp eq i32 %48, 0, !dbg !402
  %50 = select i1 %49, i32 %20, i32 %48, !dbg !402
  br label %52

51:                                               ; preds = %16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !403
  br label %52, !dbg !405

52:                                               ; preds = %51, %23
  %53 = phi i32 [ %50, %23 ], [ %20, %51 ], !dbg !406
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !407
  br label %56

54:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !408, !tbaa !118
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !408
  store double 0x7FF8000000000000, ptr %55, align 8, !dbg !408, !tbaa !125
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 1) #9, !dbg !411
  br label %56, !dbg !411

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ 1, %54 ], !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !414
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9, !dbg !414
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !414
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !414
  ret i32 %57, !dbg !414
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_negint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !415 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !417, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !418, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata double %2, metadata !419, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !420, metadata !DIExpression()), !dbg !427
  %5 = fcmp oeq double %2, 0.000000e+00, !dbg !428
  br i1 %5, label %6, label %8, !dbg !429

6:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !430, !tbaa !118
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !432
  store double 0.000000e+00, ptr %7, align 8, !dbg !433, !tbaa !125
  br label %101, !dbg !434

8:                                                ; preds = %4
  %9 = fcmp ogt double %2, 0.000000e+00, !dbg !435
  br i1 %9, label %10, label %52, !dbg !436

10:                                               ; preds = %8
  %11 = sitofp i32 %1 to double, !dbg !437
  call void @llvm.dbg.value(metadata i32 %0, metadata !439, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata double %11, metadata !444, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata double %2, metadata !445, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %3, metadata !446, metadata !DIExpression()), !dbg !457
  %12 = icmp eq i32 %0, 0, !dbg !459
  br i1 %12, label %13, label %15, !dbg !460

13:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 8, !dbg !461, !tbaa !118
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !463
  store double 1.000000e+00, ptr %14, align 8, !dbg !464, !tbaa !125
  br label %101, !dbg !465

15:                                               ; preds = %10
  %16 = sub nsw i32 0, %0, !dbg !466
  call void @llvm.dbg.value(metadata i32 %16, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %0, metadata !451, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !467
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !467
  %17 = icmp slt i32 %0, 0, !dbg !468
  br i1 %17, label %18, label %42, !dbg !469

18:                                               ; preds = %15
  %19 = xor i32 %0, -1, !dbg !470
  call void @llvm.dbg.value(metadata i32 %19, metadata !451, metadata !DIExpression()), !dbg !467
  br label %20, !dbg !469

20:                                               ; preds = %38, %18
  %21 = phi double [ %39, %38 ], [ 1.000000e+00, %18 ]
  %22 = phi i32 [ %40, %38 ], [ %19, %18 ]
  call void @llvm.dbg.value(metadata double %21, metadata !450, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %22, metadata !451, metadata !DIExpression()), !dbg !467
  %23 = add nsw i32 %22, %0, !dbg !471
  %24 = sitofp i32 %23 to double, !dbg !472
  %25 = sitofp i32 %22 to double, !dbg !473
  %26 = fadd double %11, %25, !dbg !474
  %27 = fdiv double %24, %26, !dbg !475
  %28 = add nuw nsw i32 %22, 1, !dbg !476
  %29 = sitofp i32 %28 to double, !dbg !477
  %30 = fdiv double %2, %29, !dbg !478
  %31 = fmul double %27, %30, !dbg !479
  call void @llvm.dbg.value(metadata double %31, metadata !452, metadata !DIExpression()), !dbg !480
  %32 = fdiv double 1.000000e+00, %21, !dbg !481
  %33 = fadd double %32, %31, !dbg !482
  call void @llvm.dbg.value(metadata double %33, metadata !456, metadata !DIExpression()), !dbg !480
  %34 = fdiv double 0x7FECCCCCCCCCCCCC, %21, !dbg !483
  %35 = fcmp ule double %33, %34, !dbg !485
  br i1 %35, label %38, label %36, !dbg !486

36:                                               ; preds = %20
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !487, !tbaa !118
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !487
  store double 0x7FF0000000000000, ptr %37, align 8, !dbg !487, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #9, !dbg !490
  call void @llvm.dbg.value(metadata double undef, metadata !450, metadata !DIExpression()), !dbg !467
  br label %101

38:                                               ; preds = %20
  %39 = fmul double %21, %33, !dbg !492
  call void @llvm.dbg.value(metadata double %39, metadata !450, metadata !DIExpression()), !dbg !467
  %40 = add nsw i32 %22, -1, !dbg !494
  call void @llvm.dbg.value(metadata i32 %40, metadata !451, metadata !DIExpression()), !dbg !467
  %41 = icmp sgt i32 %22, 0, !dbg !468
  br i1 %41, label %20, label %42, !dbg !469, !llvm.loop !495

42:                                               ; preds = %38, %15
  %43 = phi double [ 1.000000e+00, %15 ], [ %39, %38 ], !dbg !498
  store double %43, ptr %3, align 8, !dbg !499, !tbaa !118
  %44 = sitofp i32 %16 to double, !dbg !500
  %45 = tail call double @sqrt(double noundef %44) #9, !dbg !501
  %46 = fadd double %45, 1.000000e+00, !dbg !502
  %47 = fmul double %46, 2.000000e+00, !dbg !503
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !504
  %49 = tail call double @llvm.fabs.f64(double %43), !dbg !505
  %50 = fmul double %49, %48, !dbg !506
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !507
  store double %50, ptr %51, align 8, !dbg !508, !tbaa !125
  br label %101, !dbg !509

52:                                               ; preds = %8
  %53 = sub nsw i32 %1, %0, !dbg !510
  %54 = sitofp i32 %1 to double, !dbg !511
  %55 = fneg double %2, !dbg !512
  call void @llvm.dbg.value(metadata i32 %53, metadata !439, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %54, metadata !444, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata double %55, metadata !445, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !446, metadata !DIExpression()), !dbg !513
  %56 = icmp eq i32 %1, %0, !dbg !515
  br i1 %56, label %92, label %57, !dbg !516

57:                                               ; preds = %52
  %58 = sub nsw i32 0, %53, !dbg !517
  call void @llvm.dbg.value(metadata i32 %58, metadata !447, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %53, metadata !451, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !518
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !518
  %59 = icmp slt i32 %53, 0, !dbg !519
  br i1 %59, label %60, label %83, !dbg !520

60:                                               ; preds = %57
  %61 = xor i32 %53, -1, !dbg !521
  call void @llvm.dbg.value(metadata i32 %61, metadata !451, metadata !DIExpression()), !dbg !518
  br label %62, !dbg !520

62:                                               ; preds = %79, %60
  %63 = phi double [ %80, %79 ], [ 1.000000e+00, %60 ]
  %64 = phi i32 [ %81, %79 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata double %63, metadata !450, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %64, metadata !451, metadata !DIExpression()), !dbg !518
  %65 = add nsw i32 %64, %53, !dbg !522
  %66 = sitofp i32 %65 to double, !dbg !523
  %67 = sitofp i32 %64 to double, !dbg !524
  %68 = fadd double %54, %67, !dbg !525
  %69 = fdiv double %66, %68, !dbg !526
  %70 = add nuw nsw i32 %64, 1, !dbg !527
  %71 = sitofp i32 %70 to double, !dbg !528
  %72 = fdiv double %55, %71, !dbg !529
  %73 = fmul double %69, %72, !dbg !530
  call void @llvm.dbg.value(metadata double %73, metadata !452, metadata !DIExpression()), !dbg !531
  %74 = fdiv double 1.000000e+00, %63, !dbg !532
  %75 = fadd double %74, %73, !dbg !533
  call void @llvm.dbg.value(metadata double %75, metadata !456, metadata !DIExpression()), !dbg !531
  %76 = fdiv double 0x7FECCCCCCCCCCCCC, %63, !dbg !534
  %77 = fcmp ule double %75, %76, !dbg !535
  br i1 %77, label %79, label %78, !dbg !536

78:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !537
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !537
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #9, !dbg !538
  call void @llvm.dbg.value(metadata double undef, metadata !450, metadata !DIExpression()), !dbg !518
  br label %92

79:                                               ; preds = %62
  %80 = fmul double %63, %75, !dbg !539
  call void @llvm.dbg.value(metadata double %80, metadata !450, metadata !DIExpression()), !dbg !518
  %81 = add nsw i32 %64, -1, !dbg !540
  call void @llvm.dbg.value(metadata i32 %81, metadata !451, metadata !DIExpression()), !dbg !518
  %82 = icmp sgt i32 %64, 0, !dbg !519
  br i1 %82, label %62, label %83, !dbg !520, !llvm.loop !541

83:                                               ; preds = %79, %57
  %84 = phi double [ 1.000000e+00, %57 ], [ %80, %79 ], !dbg !543
  tail call void @llvm.dbg.value(metadata double %84, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !537
  %85 = sitofp i32 %58 to double, !dbg !544
  %86 = tail call double @sqrt(double noundef %85) #9, !dbg !545
  %87 = fadd double %86, 1.000000e+00, !dbg !546
  %88 = fmul double %87, 2.000000e+00, !dbg !547
  %89 = fmul double %88, 0x3CB0000000000000, !dbg !548
  %90 = tail call double @llvm.fabs.f64(double %84), !dbg !549
  %91 = fmul double %90, %89, !dbg !550
  tail call void @llvm.dbg.value(metadata double %91, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !537
  br label %92, !dbg !551

92:                                               ; preds = %52, %78, %83
  %93 = phi double [ %91, %83 ], [ 0x7FF0000000000000, %78 ], [ 1.000000e+00, %52 ], !dbg !552
  %94 = phi double [ %84, %83 ], [ 0x7FF0000000000000, %78 ], [ 1.000000e+00, %52 ], !dbg !552
  %95 = phi i32 [ 0, %83 ], [ 16, %78 ], [ 0, %52 ], !dbg !552
  tail call void @llvm.dbg.value(metadata double %94, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !537
  tail call void @llvm.dbg.value(metadata double %93, metadata !421, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !537
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !425, metadata !DIExpression()), !dbg !537
  %96 = tail call double @llvm.fabs.f64(double %2), !dbg !553
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !554
  %98 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %97, double noundef %94, double noundef %93, ptr noundef %3) #9, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !426, metadata !DIExpression()), !dbg !537
  %99 = icmp eq i32 %98, 0, !dbg !556
  %100 = select i1 %99, i32 %95, i32 %98, !dbg !556
  br label %101

101:                                              ; preds = %42, %36, %13, %92, %6
  %102 = phi i32 [ 0, %6 ], [ %100, %92 ], [ 0, %13 ], [ 16, %36 ], [ 0, %42 ], !dbg !557
  ret i32 %102, !dbg !558
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !559 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !566, metadata !DIExpression(), metadata !647, metadata ptr %5, metadata !DIExpression()), !dbg !648
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !573, metadata !DIExpression(), metadata !649, metadata ptr %6, metadata !DIExpression()), !dbg !650
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !577, metadata !DIExpression(), metadata !651, metadata ptr %7, metadata !DIExpression()), !dbg !652
  %8 = alloca double, align 8, !DIAssignID !653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !582, metadata !DIExpression(), metadata !653, metadata ptr %8, metadata !DIExpression()), !dbg !654
  %9 = alloca double, align 8, !DIAssignID !655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !595, metadata !DIExpression(), metadata !655, metadata ptr %9, metadata !DIExpression()), !dbg !656
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !600, metadata !DIExpression(), metadata !657, metadata ptr %10, metadata !DIExpression()), !dbg !656
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !619, metadata !DIExpression(), metadata !658, metadata ptr %11, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !561, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !562, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %2, metadata !563, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !564, metadata !DIExpression()), !dbg !660
  %12 = tail call double @llvm.fabs.f64(double %2), !dbg !661
  tail call void @llvm.dbg.value(metadata double %12, metadata !565, metadata !DIExpression()), !dbg !660
  %13 = icmp eq i32 %0, %1, !dbg !662
  br i1 %13, label %14, label %16, !dbg !663

14:                                               ; preds = %4
  %15 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #9, !dbg !664
  br label %594, !dbg !666

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1, !dbg !667
  br i1 %17, label %18, label %21, !dbg !668

18:                                               ; preds = %16
  %19 = add nsw i32 %1, -1, !dbg !669
  %20 = tail call i32 @gsl_sf_exprel_n_e(i32 noundef %19, double noundef %2, ptr noundef %3) #9, !dbg !671
  br label %594, !dbg !672

21:                                               ; preds = %16
  %22 = add nsw i32 %0, 1, !dbg !673
  %23 = icmp eq i32 %22, %1, !dbg !674
  br i1 %23, label %24, label %34, !dbg !675

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !676
  %25 = fneg double %2, !dbg !677
  %26 = call i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %25, ptr noundef nonnull %5) #9, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !571, metadata !DIExpression()), !dbg !648
  %27 = fmul double %12, 0x3CC0000000000000, !dbg !679
  %28 = load double, ptr %5, align 8, !dbg !680, !tbaa !118
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !681
  %30 = load double, ptr %29, align 8, !dbg !681, !tbaa !125
  %31 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %27, double noundef %28, double noundef %30, ptr noundef %3) #9, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !572, metadata !DIExpression()), !dbg !648
  %32 = icmp eq i32 %31, 0, !dbg !683
  %33 = select i1 %32, i32 %26, i32 %31, !dbg !683
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !684
  br label %594

34:                                               ; preds = %21
  %35 = add nsw i32 %1, 1, !dbg !685
  %36 = icmp eq i32 %35, %0, !dbg !686
  br i1 %36, label %37, label %56, !dbg !687

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !688
  %38 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %6) #9, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !576, metadata !DIExpression()), !dbg !650
  %39 = load double, ptr %6, align 8, !dbg !690, !tbaa !118
  %40 = sitofp i32 %1 to double, !dbg !691
  %41 = fdiv double %2, %40, !dbg !692
  %42 = fadd double %41, 1.000000e+00, !dbg !693
  %43 = fmul double %42, %39, !dbg !694
  store double %43, ptr %3, align 8, !dbg !695, !tbaa !118
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !696
  %45 = load double, ptr %44, align 8, !dbg !696, !tbaa !125
  %46 = fmul double %42, %45, !dbg !697
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !698
  %48 = fmul double %39, 0x3CB0000000000000, !dbg !699
  %49 = call double @llvm.fabs.f64(double %41), !dbg !700
  %50 = fadd double %49, 1.000000e+00, !dbg !701
  %51 = fmul double %50, %48, !dbg !702
  %52 = fadd double %51, %46, !dbg !703
  %53 = call double @llvm.fabs.f64(double %43), !dbg !704
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !705
  %55 = fadd double %54, %52, !dbg !706
  store double %55, ptr %47, align 8, !dbg !706, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !707
  br label %594

56:                                               ; preds = %34
  %57 = add nsw i32 %1, 2, !dbg !708
  %58 = icmp eq i32 %57, %0, !dbg !709
  br i1 %58, label %59, label %86, !dbg !710

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !711
  %60 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %7) #9, !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !580, metadata !DIExpression()), !dbg !652
  %61 = sitofp i32 %1 to double, !dbg !713
  %62 = fdiv double %2, %61, !dbg !714
  %63 = fadd double %61, 1.000000e+00, !dbg !715
  %64 = fdiv double %2, %63, !dbg !716
  %65 = fadd double %64, 2.000000e+00, !dbg !717
  %66 = fmul double %62, %65, !dbg !718
  %67 = fadd double %66, 1.000000e+00, !dbg !719
  tail call void @llvm.dbg.value(metadata double %67, metadata !581, metadata !DIExpression()), !dbg !652
  %68 = load double, ptr %7, align 8, !dbg !720, !tbaa !118
  %69 = fmul double %67, %68, !dbg !721
  store double %69, ptr %3, align 8, !dbg !722, !tbaa !118
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !723
  %71 = load double, ptr %70, align 8, !dbg !723, !tbaa !125
  %72 = call double @llvm.fabs.f64(double %67), !dbg !724
  %73 = fmul double %72, %71, !dbg !725
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !726
  %75 = fmul double %68, 0x3CB0000000000000, !dbg !727
  %76 = call double @llvm.fabs.f64(double %62), !dbg !728
  %77 = call double @llvm.fabs.f64(double %64), !dbg !729
  %78 = fadd double %77, 2.000000e+00, !dbg !730
  %79 = fmul double %76, %78, !dbg !731
  %80 = fadd double %79, 1.000000e+00, !dbg !732
  %81 = fmul double %80, %75, !dbg !733
  %82 = fadd double %81, %73, !dbg !734
  %83 = call double @llvm.fabs.f64(double %69), !dbg !735
  %84 = fmul double %83, 0x3CC0000000000000, !dbg !736
  %85 = fadd double %84, %82, !dbg !737
  store double %85, ptr %74, align 8, !dbg !737, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !738
  br label %594

86:                                               ; preds = %56
  %87 = shl nsw i32 %0, 1, !dbg !739
  %88 = icmp eq i32 %87, %1, !dbg !740
  br i1 %88, label %89, label %92, !dbg !741

89:                                               ; preds = %86
  %90 = sitofp i32 %0 to double, !dbg !742
  %91 = tail call fastcc i32 @hyperg_1F1_beq2a_pos(double noundef %90, double noundef %2, ptr noundef %3), !dbg !744
  br label %594, !dbg !745

92:                                               ; preds = %86
  %93 = icmp slt i32 %1, 10, !dbg !746
  %94 = icmp slt i32 %0, 10
  %95 = and i1 %94, %93, !dbg !747
  %96 = fcmp olt double %12, 5.000000e+00
  %97 = and i1 %95, %96, !dbg !747
  br i1 %97, label %98, label %101, !dbg !747

98:                                               ; preds = %92
  %99 = sitofp i32 %0 to double, !dbg !748
  %100 = sitofp i32 %1 to double, !dbg !750
  br label %109, !dbg !747

101:                                              ; preds = %92
  %102 = sitofp i32 %1 to double, !dbg !751
  %103 = sitofp i32 %0 to double, !dbg !752
  %104 = fmul double %12, %103, !dbg !753
  %105 = fcmp olt double %104, %102, !dbg !754
  br i1 %105, label %109, label %106, !dbg !755

106:                                              ; preds = %101
  %107 = icmp sgt i32 %1, %0, !dbg !756
  %108 = and i1 %107, %96, !dbg !757
  br i1 %108, label %109, label %113, !dbg !757

109:                                              ; preds = %98, %106, %101
  %110 = phi double [ %100, %98 ], [ %102, %106 ], [ %102, %101 ], !dbg !750
  %111 = phi double [ %99, %98 ], [ %103, %106 ], [ %103, %101 ], !dbg !748
  %112 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %111, double noundef %110, double noundef %2, ptr noundef %3) #9, !dbg !758
  br label %594, !dbg !759

113:                                              ; preds = %106
  br i1 %107, label %114, label %272, !dbg !760

114:                                              ; preds = %113
  %115 = sitofp i32 %87 to double, !dbg !761
  %116 = fadd double %115, %2, !dbg !762
  %117 = fcmp ugt double %116, %102, !dbg !763
  br i1 %117, label %184, label %118, !dbg !764

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !765
  %119 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %103, double noundef %102, double noundef %2, ptr noundef nonnull %8), !dbg !766, !range !767
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !587, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double poison, metadata !588, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !589, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double poison, metadata !590, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double poison, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !592, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !654
  %120 = icmp sgt i32 %0, 0, !dbg !768
  br i1 %120, label %121, label %175, !dbg !771

121:                                              ; preds = %118
  %122 = fdiv double %2, %103, !dbg !772
  %123 = load double, ptr %8, align 8, !dbg !773, !tbaa !313
  %124 = fmul double %122, %123, !dbg !774
  %125 = fadd double %124, 1.000000e+00, !dbg !775
  tail call void @llvm.dbg.value(metadata double %125, metadata !588, metadata !DIExpression()), !dbg !654
  %126 = fmul double %125, 0x2000000000000000, !dbg !776
  tail call void @llvm.dbg.value(metadata double %126, metadata !590, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %126, metadata !591, metadata !DIExpression()), !dbg !654
  %127 = and i32 %0, 1, !dbg !771
  %128 = icmp eq i32 %127, 0, !dbg !771
  br i1 %128, label %142, label %129, !dbg !771

129:                                              ; preds = %121
  tail call void @llvm.dbg.value(metadata double %126, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !592, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !654
  %130 = sitofp i32 %0 to double, !dbg !777
  %131 = fmul double %126, %130, !dbg !779
  %132 = shl nuw nsw i32 %0, 1, !dbg !780
  %133 = sub nsw i32 %132, %1, !dbg !781
  %134 = sitofp i32 %133 to double, !dbg !782
  %135 = fadd double %134, %2, !dbg !783
  %136 = fmul double %135, 0x2000000000000000, !dbg !784
  %137 = fsub double %131, %136, !dbg !785
  %138 = sub nsw i32 %1, %0, !dbg !786
  %139 = sitofp i32 %138 to double, !dbg !787
  %140 = fdiv double %137, %139, !dbg !788
  tail call void @llvm.dbg.value(metadata double %140, metadata !593, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %140, metadata !592, metadata !DIExpression()), !dbg !654
  %141 = add nsw i32 %0, -1, !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !594, metadata !DIExpression()), !dbg !654
  br label %142, !dbg !771

142:                                              ; preds = %121, %129
  %143 = phi double [ %126, %121 ], [ 0x2000000000000000, %129 ]
  %144 = phi double [ 0x2000000000000000, %121 ], [ %140, %129 ]
  %145 = phi i32 [ %0, %121 ], [ %141, %129 ]
  br label %146, !dbg !771

146:                                              ; preds = %146, %142
  %147 = phi double [ %143, %142 ], [ %160, %146 ]
  %148 = phi double [ %144, %142 ], [ %172, %146 ]
  %149 = phi i32 [ %145, %142 ], [ %173, %146 ]
  tail call void @llvm.dbg.value(metadata double %147, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %148, metadata !592, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !594, metadata !DIExpression()), !dbg !654
  %150 = sitofp i32 %149 to double, !dbg !777
  %151 = fmul double %147, %150, !dbg !779
  %152 = shl nuw nsw i32 %149, 1, !dbg !780
  %153 = sub nsw i32 %152, %1, !dbg !781
  %154 = sitofp i32 %153 to double, !dbg !782
  %155 = fadd double %154, %2, !dbg !783
  %156 = fmul double %148, %155, !dbg !784
  %157 = fsub double %151, %156, !dbg !785
  %158 = sub nsw i32 %1, %149, !dbg !786
  %159 = sitofp i32 %158 to double, !dbg !787
  %160 = fdiv double %157, %159, !dbg !788
  tail call void @llvm.dbg.value(metadata double %160, metadata !593, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %148, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %160, metadata !592, metadata !DIExpression()), !dbg !654
  %161 = add nsw i32 %149, -1, !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !594, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %148, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %160, metadata !592, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !594, metadata !DIExpression()), !dbg !654
  %162 = sitofp i32 %161 to double, !dbg !777
  %163 = fmul double %148, %162, !dbg !779
  %164 = shl nuw nsw i32 %161, 1, !dbg !780
  %165 = sub nsw i32 %164, %1, !dbg !781
  %166 = sitofp i32 %165 to double, !dbg !782
  %167 = fadd double %166, %2, !dbg !783
  %168 = fmul double %160, %167, !dbg !784
  %169 = fsub double %163, %168, !dbg !785
  %170 = sub nsw i32 %1, %161, !dbg !786
  %171 = sitofp i32 %170 to double, !dbg !787
  %172 = fdiv double %169, %171, !dbg !788
  tail call void @llvm.dbg.value(metadata double %172, metadata !593, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %160, metadata !591, metadata !DIExpression()), !dbg !654
  tail call void @llvm.dbg.value(metadata double %172, metadata !592, metadata !DIExpression()), !dbg !654
  %173 = add nsw i32 %149, -2, !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !594, metadata !DIExpression()), !dbg !654
  %174 = icmp ugt i32 %161, 1, !dbg !768
  br i1 %174, label %146, label %175, !dbg !771, !llvm.loop !790

175:                                              ; preds = %146, %118
  %176 = phi double [ 0x2000000000000000, %118 ], [ %172, %146 ], !dbg !654
  %177 = fdiv double 0x2000000000000000, %176, !dbg !792
  store double %177, ptr %3, align 8, !dbg !793, !tbaa !118
  %178 = tail call double @llvm.fabs.f64(double %103), !dbg !794
  %179 = fadd double %178, 1.000000e+00, !dbg !795
  %180 = fmul double %179, 0x3CC0000000000000, !dbg !796
  %181 = tail call double @llvm.fabs.f64(double %177), !dbg !797
  %182 = fmul double %180, %181, !dbg !798
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !799
  store double %182, ptr %183, align 8, !dbg !800, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !801
  br label %594

184:                                              ; preds = %114
  %185 = fcmp ogt double %116, %102, !dbg !802
  %186 = fcmp ogt double %102, %2
  %187 = and i1 %186, %185, !dbg !803
  br i1 %187, label %188, label %272, !dbg !803

188:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9, !dbg !804
  %189 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %103, double noundef %102, double noundef %2, ptr noundef nonnull %9), !dbg !805, !range !767
  tail call void @llvm.dbg.value(metadata i32 %189, metadata !598, metadata !DIExpression()), !dbg !656
  %190 = fdiv double %2, %103, !dbg !806
  %191 = load double, ptr %9, align 8, !dbg !807, !tbaa !313
  %192 = fmul double %190, %191, !dbg !808
  %193 = fadd double %192, 1.000000e+00, !dbg !809
  tail call void @llvm.dbg.value(metadata double %193, metadata !599, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !810
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !602, metadata !DIExpression()), !dbg !656
  %194 = fmul double %193, 0x2000000000000000, !dbg !811
  tail call void @llvm.dbg.value(metadata double %194, metadata !603, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %194, metadata !605, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !607, metadata !DIExpression()), !dbg !656
  %195 = icmp slt i32 %22, %1, !dbg !812
  br i1 %195, label %196, label %250, !dbg !815

196:                                              ; preds = %188
  %197 = xor i32 %0, -1, !dbg !815
  %198 = add i32 %197, %1, !dbg !815
  %199 = add i32 %1, -2, !dbg !815
  %200 = and i32 %198, 1, !dbg !815
  %201 = icmp eq i32 %200, 0, !dbg !815
  br i1 %201, label %215, label %202, !dbg !815

202:                                              ; preds = %196
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %194, metadata !605, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !607, metadata !DIExpression()), !dbg !656
  %203 = sub nsw i32 %1, %22, !dbg !816
  %204 = sitofp i32 %203 to double, !dbg !818
  %205 = fmul double %204, 0x2000000000000000, !dbg !819
  %206 = shl nsw i32 %22, 1, !dbg !820
  %207 = sub nsw i32 %206, %1, !dbg !821
  %208 = sitofp i32 %207 to double, !dbg !822
  %209 = fadd double %208, %2, !dbg !823
  %210 = fmul double %194, %209, !dbg !824
  %211 = fadd double %205, %210, !dbg !825
  %212 = sitofp i32 %22 to double, !dbg !826
  %213 = fdiv double %211, %212, !dbg !827
  tail call void @llvm.dbg.value(metadata double %213, metadata !606, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %194, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %213, metadata !605, metadata !DIExpression()), !dbg !656
  %214 = add nsw i32 %0, 2, !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %214, metadata !607, metadata !DIExpression()), !dbg !656
  br label %215, !dbg !815

215:                                              ; preds = %202, %196
  %216 = phi double [ undef, %196 ], [ %213, %202 ]
  %217 = phi double [ 0x2000000000000000, %196 ], [ %194, %202 ]
  %218 = phi double [ %194, %196 ], [ %213, %202 ]
  %219 = phi i32 [ %22, %196 ], [ %214, %202 ]
  %220 = icmp eq i32 %199, %0, !dbg !815
  br i1 %220, label %250, label %221, !dbg !815

221:                                              ; preds = %215, %221
  %222 = phi double [ %235, %221 ], [ %217, %215 ]
  %223 = phi double [ %247, %221 ], [ %218, %215 ]
  %224 = phi i32 [ %248, %221 ], [ %219, %215 ]
  tail call void @llvm.dbg.value(metadata double %222, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %223, metadata !605, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %224, metadata !607, metadata !DIExpression()), !dbg !656
  %225 = sub nsw i32 %1, %224, !dbg !816
  %226 = sitofp i32 %225 to double, !dbg !818
  %227 = fmul double %222, %226, !dbg !819
  %228 = shl nsw i32 %224, 1, !dbg !820
  %229 = sub nsw i32 %228, %1, !dbg !821
  %230 = sitofp i32 %229 to double, !dbg !822
  %231 = fadd double %230, %2, !dbg !823
  %232 = fmul double %223, %231, !dbg !824
  %233 = fadd double %227, %232, !dbg !825
  %234 = sitofp i32 %224 to double, !dbg !826
  %235 = fdiv double %233, %234, !dbg !827
  tail call void @llvm.dbg.value(metadata double %235, metadata !606, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %223, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %235, metadata !605, metadata !DIExpression()), !dbg !656
  %236 = add nsw i32 %224, 1, !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %236, metadata !607, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %223, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %235, metadata !605, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %236, metadata !607, metadata !DIExpression()), !dbg !656
  %237 = sub nsw i32 %1, %236, !dbg !816
  %238 = sitofp i32 %237 to double, !dbg !818
  %239 = fmul double %223, %238, !dbg !819
  %240 = shl nsw i32 %236, 1, !dbg !820
  %241 = sub nsw i32 %240, %1, !dbg !821
  %242 = sitofp i32 %241 to double, !dbg !822
  %243 = fadd double %242, %2, !dbg !823
  %244 = fmul double %235, %243, !dbg !824
  %245 = fadd double %239, %244, !dbg !825
  %246 = sitofp i32 %236 to double, !dbg !826
  %247 = fdiv double %245, %246, !dbg !827
  tail call void @llvm.dbg.value(metadata double %247, metadata !606, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %235, metadata !604, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata double %247, metadata !605, metadata !DIExpression()), !dbg !656
  %248 = add nsw i32 %224, 2, !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !607, metadata !DIExpression()), !dbg !656
  %249 = icmp eq i32 %248, %1, !dbg !812
  br i1 %249, label %250, label %221, !dbg !815, !llvm.loop !829

250:                                              ; preds = %215, %221, %188
  %251 = phi double [ %194, %188 ], [ %216, %215 ], [ %247, %221 ], !dbg !656
  %252 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %10) #9, !dbg !831
  tail call void @llvm.dbg.value(metadata i32 %252, metadata !601, metadata !DIExpression()), !dbg !656
  %253 = load double, ptr %10, align 8, !dbg !832, !tbaa !118
  %254 = fmul double %253, 0x2000000000000000, !dbg !833
  %255 = fdiv double %254, %251, !dbg !834
  store double %255, ptr %3, align 8, !dbg !835, !tbaa !118
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !836
  %257 = load double, ptr %256, align 8, !dbg !836, !tbaa !125
  %258 = fdiv double 0x2000000000000000, %251, !dbg !837
  %259 = call double @llvm.fabs.f64(double %258), !dbg !838
  %260 = fmul double %259, %257, !dbg !839
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !840
  %262 = sub nsw i32 %1, %0, !dbg !841
  %263 = sitofp i32 %262 to double, !dbg !842
  %264 = call double @llvm.fabs.f64(double %263), !dbg !843
  %265 = fadd double %264, 1.000000e+00, !dbg !844
  %266 = fmul double %265, 0x3CD0000000000000, !dbg !845
  %267 = call double @llvm.fabs.f64(double %255), !dbg !846
  %268 = fmul double %266, %267, !dbg !847
  %269 = fadd double %260, %268, !dbg !848
  store double %269, ptr %261, align 8, !dbg !848, !tbaa !125
  %270 = icmp eq i32 %252, 0, !dbg !849
  %271 = select i1 %270, i32 %189, i32 %252, !dbg !849
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9, !dbg !850
  br label %594

272:                                              ; preds = %113, %184
  %273 = fcmp ult double %2, 0.000000e+00, !dbg !851
  br i1 %273, label %426, label %274, !dbg !852

274:                                              ; preds = %272
  %275 = icmp slt i32 %1, %0, !dbg !853
  br i1 %275, label %276, label %352, !dbg !854

276:                                              ; preds = %274
  %277 = fdiv double %2, %102, !dbg !855
  %278 = tail call double @llvm.fabs.f64(double %277), !dbg !856
  %279 = tail call double @log(double noundef %278) #9, !dbg !857
  %280 = fadd double %279, %2, !dbg !858
  %281 = fcmp olt double %280, 0x40861E42FEFA39EF, !dbg !859
  br i1 %281, label %282, label %350, !dbg !860

282:                                              ; preds = %276
  %283 = tail call double @exp(double noundef %2) #9, !dbg !861
  tail call void @llvm.dbg.value(metadata double %283, metadata !608, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %283, metadata !616, metadata !DIExpression()), !dbg !862
  %284 = fadd double %277, 1.000000e+00, !dbg !863
  %285 = fmul double %284, %283, !dbg !864
  tail call void @llvm.dbg.value(metadata double %285, metadata !617, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !615, metadata !DIExpression()), !dbg !862
  %286 = icmp slt i32 %35, %0, !dbg !865
  br i1 %286, label %287, label %338, !dbg !868

287:                                              ; preds = %282
  %288 = xor i32 %1, -1, !dbg !868
  %289 = add i32 %288, %0, !dbg !868
  %290 = add i32 %0, -2, !dbg !868
  %291 = and i32 %289, 1, !dbg !868
  %292 = icmp eq i32 %291, 0, !dbg !868
  br i1 %292, label %303, label %293, !dbg !868

293:                                              ; preds = %287
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !615, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %283, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %285, metadata !617, metadata !DIExpression()), !dbg !862
  %294 = shl nsw i32 %35, 1, !dbg !869
  %295 = sub nsw i32 %294, %1, !dbg !871
  %296 = sitofp i32 %295 to double, !dbg !872
  %297 = fadd double %296, %2, !dbg !873
  %298 = fmul double %285, %297, !dbg !874
  %299 = fsub double %298, %283, !dbg !875
  %300 = sitofp i32 %35 to double, !dbg !876
  %301 = fdiv double %299, %300, !dbg !877
  tail call void @llvm.dbg.value(metadata double %301, metadata !618, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %285, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %301, metadata !617, metadata !DIExpression()), !dbg !862
  %302 = add nsw i32 %1, 2, !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %302, metadata !615, metadata !DIExpression()), !dbg !862
  br label %303, !dbg !868

303:                                              ; preds = %293, %287
  %304 = phi double [ undef, %287 ], [ %301, %293 ]
  %305 = phi i32 [ %35, %287 ], [ %302, %293 ]
  %306 = phi double [ %283, %287 ], [ %285, %293 ]
  %307 = phi double [ %285, %287 ], [ %301, %293 ]
  %308 = icmp eq i32 %290, %1, !dbg !868
  br i1 %308, label %338, label %309, !dbg !868

309:                                              ; preds = %303, %309
  %310 = phi i32 [ %336, %309 ], [ %305, %303 ]
  %311 = phi double [ %323, %309 ], [ %306, %303 ]
  %312 = phi double [ %335, %309 ], [ %307, %303 ]
  tail call void @llvm.dbg.value(metadata i32 %310, metadata !615, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %311, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %312, metadata !617, metadata !DIExpression()), !dbg !862
  %313 = sub nsw i32 %1, %310, !dbg !879
  %314 = sitofp i32 %313 to double, !dbg !880
  %315 = fmul double %311, %314, !dbg !881
  %316 = shl nsw i32 %310, 1, !dbg !869
  %317 = sub nsw i32 %316, %1, !dbg !871
  %318 = sitofp i32 %317 to double, !dbg !872
  %319 = fadd double %318, %2, !dbg !873
  %320 = fmul double %312, %319, !dbg !874
  %321 = fadd double %315, %320, !dbg !875
  %322 = sitofp i32 %310 to double, !dbg !876
  %323 = fdiv double %321, %322, !dbg !877
  tail call void @llvm.dbg.value(metadata double %323, metadata !618, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %312, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %323, metadata !617, metadata !DIExpression()), !dbg !862
  %324 = add nsw i32 %310, 1, !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !615, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !615, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %312, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %323, metadata !617, metadata !DIExpression()), !dbg !862
  %325 = sub nsw i32 %1, %324, !dbg !879
  %326 = sitofp i32 %325 to double, !dbg !880
  %327 = fmul double %312, %326, !dbg !881
  %328 = shl nsw i32 %324, 1, !dbg !869
  %329 = sub nsw i32 %328, %1, !dbg !871
  %330 = sitofp i32 %329 to double, !dbg !872
  %331 = fadd double %330, %2, !dbg !873
  %332 = fmul double %323, %331, !dbg !874
  %333 = fadd double %327, %332, !dbg !875
  %334 = sitofp i32 %324 to double, !dbg !876
  %335 = fdiv double %333, %334, !dbg !877
  tail call void @llvm.dbg.value(metadata double %335, metadata !618, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %323, metadata !616, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata double %335, metadata !617, metadata !DIExpression()), !dbg !862
  %336 = add nsw i32 %310, 2, !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %336, metadata !615, metadata !DIExpression()), !dbg !862
  %337 = icmp eq i32 %336, %0, !dbg !865
  br i1 %337, label %338, label %309, !dbg !868, !llvm.loop !882

338:                                              ; preds = %303, %309, %282
  %339 = phi double [ %285, %282 ], [ %304, %303 ], [ %335, %309 ], !dbg !862
  store double %339, ptr %3, align 8, !dbg !884, !tbaa !118
  %340 = fadd double %2, 1.000000e+00, !dbg !885
  %341 = fmul double %340, 0x3CB0000000000000, !dbg !886
  %342 = tail call double @llvm.fabs.f64(double %339), !dbg !887
  %343 = fmul double %341, %342, !dbg !888
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !889
  %345 = sub nsw i32 %0, %1, !dbg !890
  %346 = sitofp i32 %345 to double, !dbg !891
  %347 = tail call double @llvm.fabs.f64(double %346), !dbg !892
  %348 = fadd double %347, 1.000000e+00, !dbg !893
  %349 = fmul double %348, %343, !dbg !894
  store double %349, ptr %344, align 8, !dbg !894, !tbaa !125
  br label %594

350:                                              ; preds = %276
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !895, !tbaa !118
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !895
  store double 0x7FF0000000000000, ptr %351, align 8, !dbg !895, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1062, i32 noundef 16) #9, !dbg !898
  br label %594, !dbg !898

352:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !900
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !621, metadata !DIExpression()), !dbg !659
  %353 = add nsw i32 %1, -1, !dbg !901
  %354 = call i32 @gsl_sf_exprel_n_e(i32 noundef %353, double noundef %2, ptr noundef nonnull %11) #9, !dbg !902
  %355 = load double, ptr %11, align 8, !dbg !903, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %355, metadata !622, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 1, metadata !624, metadata !DIExpression()), !dbg !659
  %356 = icmp sgt i32 %0, 1, !dbg !904
  br i1 %356, label %357, label %412, !dbg !907

357:                                              ; preds = %352
  %358 = add nsw i32 %0, -1, !dbg !907
  %359 = and i32 %358, 1, !dbg !907
  %360 = icmp eq i32 %0, 2, !dbg !907
  br i1 %360, label %394, label %361, !dbg !907

361:                                              ; preds = %357
  %362 = and i32 %358, -2, !dbg !907
  br label %363, !dbg !907

363:                                              ; preds = %363, %361
  %364 = phi i32 [ 1, %361 ], [ %391, %363 ]
  %365 = phi double [ %355, %361 ], [ %390, %363 ]
  %366 = phi double [ 1.000000e+00, %361 ], [ %378, %363 ]
  %367 = phi i32 [ 0, %361 ], [ %392, %363 ]
  tail call void @llvm.dbg.value(metadata i32 %364, metadata !624, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %365, metadata !622, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %366, metadata !621, metadata !DIExpression()), !dbg !659
  %368 = sub nsw i32 %1, %364, !dbg !908
  %369 = sitofp i32 %368 to double, !dbg !910
  %370 = fmul double %366, %369, !dbg !911
  %371 = shl nuw nsw i32 %364, 1, !dbg !912
  %372 = sub nsw i32 %371, %1, !dbg !913
  %373 = sitofp i32 %372 to double, !dbg !914
  %374 = fadd double %373, %2, !dbg !915
  %375 = fmul double %365, %374, !dbg !916
  %376 = fadd double %370, %375, !dbg !917
  %377 = sitofp i32 %364 to double, !dbg !918
  %378 = fdiv double %376, %377, !dbg !919
  tail call void @llvm.dbg.value(metadata double %378, metadata !623, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %365, metadata !621, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %378, metadata !622, metadata !DIExpression()), !dbg !659
  %379 = add nuw nsw i32 %364, 1, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %379, metadata !624, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %379, metadata !624, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %378, metadata !622, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %365, metadata !621, metadata !DIExpression()), !dbg !659
  %380 = sub nsw i32 %1, %379, !dbg !908
  %381 = sitofp i32 %380 to double, !dbg !910
  %382 = fmul double %365, %381, !dbg !911
  %383 = shl nuw nsw i32 %379, 1, !dbg !912
  %384 = sub nsw i32 %383, %1, !dbg !913
  %385 = sitofp i32 %384 to double, !dbg !914
  %386 = fadd double %385, %2, !dbg !915
  %387 = fmul double %378, %386, !dbg !916
  %388 = fadd double %382, %387, !dbg !917
  %389 = sitofp i32 %379 to double, !dbg !918
  %390 = fdiv double %388, %389, !dbg !919
  tail call void @llvm.dbg.value(metadata double %390, metadata !623, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %378, metadata !621, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %390, metadata !622, metadata !DIExpression()), !dbg !659
  %391 = add nuw nsw i32 %364, 2, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %391, metadata !624, metadata !DIExpression()), !dbg !659
  %392 = add i32 %367, 2, !dbg !907
  %393 = icmp eq i32 %392, %362, !dbg !907
  br i1 %393, label %394, label %363, !dbg !907, !llvm.loop !921

394:                                              ; preds = %363, %357
  %395 = phi double [ undef, %357 ], [ %390, %363 ]
  %396 = phi i32 [ 1, %357 ], [ %391, %363 ]
  %397 = phi double [ %355, %357 ], [ %390, %363 ]
  %398 = phi double [ 1.000000e+00, %357 ], [ %378, %363 ]
  %399 = icmp eq i32 %359, 0, !dbg !907
  br i1 %399, label %412, label %400, !dbg !907

400:                                              ; preds = %394
  tail call void @llvm.dbg.value(metadata i32 %396, metadata !624, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %397, metadata !622, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %398, metadata !621, metadata !DIExpression()), !dbg !659
  %401 = sub nsw i32 %1, %396, !dbg !908
  %402 = sitofp i32 %401 to double, !dbg !910
  %403 = fmul double %398, %402, !dbg !911
  %404 = shl nuw nsw i32 %396, 1, !dbg !912
  %405 = sub nsw i32 %404, %1, !dbg !913
  %406 = sitofp i32 %405 to double, !dbg !914
  %407 = fadd double %406, %2, !dbg !915
  %408 = fmul double %397, %407, !dbg !916
  %409 = fadd double %403, %408, !dbg !917
  %410 = sitofp i32 %396 to double, !dbg !918
  %411 = fdiv double %409, %410, !dbg !919
  tail call void @llvm.dbg.value(metadata double %411, metadata !623, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %397, metadata !621, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata double %411, metadata !622, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %396, metadata !624, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !659
  br label %412, !dbg !923

412:                                              ; preds = %400, %394, %352
  %413 = phi double [ %355, %352 ], [ %395, %394 ], [ %411, %400 ], !dbg !659
  store double %413, ptr %3, align 8, !dbg !923, !tbaa !118
  %414 = call double @llvm.fabs.f64(double %413), !dbg !924
  %415 = call double @llvm.fabs.f64(double %103), !dbg !925
  %416 = fadd double %415, 1.000000e+00, !dbg !926
  %417 = fmul double %416, %414, !dbg !927
  %418 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !928
  %419 = load double, ptr %418, align 8, !dbg !928, !tbaa !125
  %420 = fdiv double %419, %355, !dbg !929
  %421 = call double @llvm.fabs.f64(double %420), !dbg !930
  %422 = fmul double %417, %421, !dbg !931
  %423 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !932
  %424 = fmul double %414, 0x3CC0000000000000, !dbg !933
  %425 = fadd double %424, %422, !dbg !934
  store double %425, ptr %423, align 8, !dbg !934, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !935
  br label %594

426:                                              ; preds = %272
  %427 = fsub double %102, %2, !dbg !936
  %428 = fmul double %427, 5.000000e-01, !dbg !937
  %429 = fcmp ult double %428, %103, !dbg !938
  %430 = fneg double %2
  %431 = fcmp ult double %103, %430
  %432 = and i1 %431, %429, !dbg !939
  br i1 %432, label %476, label %433, !dbg !939

433:                                              ; preds = %426
  %434 = tail call double @exp(double noundef %2) #9, !dbg !940
  tail call void @llvm.dbg.value(metadata double %434, metadata !625, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %434, metadata !629, metadata !DIExpression()), !dbg !941
  %435 = fadd double %103, -1.000000e+00, !dbg !942
  %436 = fdiv double %2, %435, !dbg !943
  %437 = fadd double %436, 1.000000e+00, !dbg !944
  %438 = fmul double %437, %434, !dbg !945
  tail call void @llvm.dbg.value(metadata double %438, metadata !630, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !632, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !941
  %439 = add nsw i32 %0, -1, !dbg !946
  tail call void @llvm.dbg.value(metadata i32 %439, metadata !632, metadata !DIExpression()), !dbg !941
  %440 = icmp sgt i32 %439, %1, !dbg !948
  br i1 %440, label %441, label %464, !dbg !950

441:                                              ; preds = %433, %441
  %442 = phi i32 [ %462, %441 ], [ %439, %433 ]
  %443 = phi i32 [ %442, %441 ], [ %0, %433 ]
  %444 = phi double [ %461, %441 ], [ %438, %433 ]
  %445 = phi double [ %444, %441 ], [ %434, %433 ]
  tail call void @llvm.dbg.value(metadata double %444, metadata !630, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %445, metadata !629, metadata !DIExpression()), !dbg !941
  %446 = sub nsw i32 1, %443, !dbg !951
  %447 = sitofp i32 %446 to double, !dbg !951
  %448 = sub nsw i32 2, %443, !dbg !953
  %449 = sitofp i32 %448 to double, !dbg !954
  %450 = fsub double %449, %2, !dbg !955
  %451 = fmul double %450, %447, !dbg !956
  %452 = fmul double %444, %451, !dbg !957
  %453 = sub nsw i32 %442, %0, !dbg !958
  %454 = sitofp i32 %453 to double, !dbg !959
  %455 = fmul double %454, %2, !dbg !960
  %456 = fmul double %445, %455, !dbg !961
  %457 = fsub double %452, %456, !dbg !962
  %458 = sitofp i32 %442 to double, !dbg !963
  %459 = fadd double %458, -1.000000e+00, !dbg !964
  %460 = fmul double %459, %458, !dbg !965
  %461 = fdiv double %457, %460, !dbg !966
  tail call void @llvm.dbg.value(metadata double %461, metadata !631, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %444, metadata !629, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %461, metadata !630, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %442, metadata !632, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !941
  %462 = add nsw i32 %442, -1, !dbg !946
  tail call void @llvm.dbg.value(metadata i32 %462, metadata !632, metadata !DIExpression()), !dbg !941
  %463 = icmp sgt i32 %462, %1, !dbg !948
  br i1 %463, label %441, label %464, !dbg !950, !llvm.loop !967

464:                                              ; preds = %441, %433
  %465 = phi double [ %438, %433 ], [ %461, %441 ], !dbg !941
  store double %465, ptr %3, align 8, !dbg !969, !tbaa !118
  %466 = fadd double %12, 1.000000e+00, !dbg !970
  %467 = fmul double %466, 0x3CB0000000000000, !dbg !971
  %468 = tail call double @llvm.fabs.f64(double %465), !dbg !972
  %469 = fmul double %467, %468, !dbg !973
  %470 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !974
  %471 = sub nsw i32 %1, %0, !dbg !975
  %472 = sitofp i32 %471 to double, !dbg !976
  %473 = tail call double @llvm.fabs.f64(double %472), !dbg !977
  %474 = fadd double %473, 1.000000e+00, !dbg !978
  %475 = fmul double %474, %469, !dbg !979
  store double %475, ptr %470, align 8, !dbg !979, !tbaa !125
  br label %594

476:                                              ; preds = %426
  %477 = tail call double @llvm.ceil.f64(double %428), !dbg !980
  %478 = fptosi double %477 to i32, !dbg !981
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !633, metadata !DIExpression()), !dbg !982
  %479 = tail call double @exp(double noundef %2) #9, !dbg !983
  tail call void @llvm.dbg.value(metadata double %479, metadata !642, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata double %479, metadata !644, metadata !DIExpression()), !dbg !984
  %480 = sitofp i32 %478 to double, !dbg !985
  %481 = fadd double %480, -1.000000e+00, !dbg !986
  %482 = fdiv double %2, %481, !dbg !987
  %483 = fadd double %482, 1.000000e+00, !dbg !988
  %484 = fmul double %483, %479, !dbg !989
  tail call void @llvm.dbg.value(metadata double %484, metadata !645, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !641, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !982
  %485 = add nsw i32 %478, -1, !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %485, metadata !641, metadata !DIExpression()), !dbg !982
  %486 = icmp sgt i32 %485, %1, !dbg !992
  br i1 %486, label %487, label %510, !dbg !994

487:                                              ; preds = %476, %487
  %488 = phi i32 [ %508, %487 ], [ %485, %476 ]
  %489 = phi double [ %507, %487 ], [ %484, %476 ]
  %490 = phi double [ %489, %487 ], [ %479, %476 ]
  %491 = phi i32 [ %488, %487 ], [ %478, %476 ]
  tail call void @llvm.dbg.value(metadata double %489, metadata !645, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata double %490, metadata !644, metadata !DIExpression()), !dbg !984
  %492 = sub nsw i32 1, %491, !dbg !995
  %493 = sitofp i32 %492 to double, !dbg !995
  %494 = sub nsw i32 2, %491, !dbg !997
  %495 = sitofp i32 %494 to double, !dbg !998
  %496 = fsub double %495, %2, !dbg !999
  %497 = fmul double %496, %493, !dbg !1000
  %498 = fmul double %489, %497, !dbg !1001
  %499 = sub nsw i32 %488, %478, !dbg !1002
  %500 = sitofp i32 %499 to double, !dbg !1003
  %501 = fmul double %500, %2, !dbg !1004
  %502 = fmul double %490, %501, !dbg !1005
  %503 = fsub double %498, %502, !dbg !1006
  %504 = sitofp i32 %488 to double, !dbg !1007
  %505 = fadd double %504, -1.000000e+00, !dbg !1008
  %506 = fmul double %505, %504, !dbg !1009
  %507 = fdiv double %503, %506, !dbg !1010
  tail call void @llvm.dbg.value(metadata double %507, metadata !646, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata double %489, metadata !644, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata double %507, metadata !645, metadata !DIExpression()), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %488, metadata !641, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !982
  %508 = add nsw i32 %488, -1, !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %508, metadata !641, metadata !DIExpression()), !dbg !982
  %509 = icmp sgt i32 %508, %1, !dbg !992
  br i1 %509, label %487, label %510, !dbg !994, !llvm.loop !1011

510:                                              ; preds = %487, %476
  %511 = phi double [ %479, %476 ], [ %489, %487 ], !dbg !984
  %512 = phi double [ %484, %476 ], [ %507, %487 ], !dbg !984
  tail call void @llvm.dbg.value(metadata double %511, metadata !636, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %512, metadata !635, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double poison, metadata !637, metadata !DIExpression()), !dbg !982
  %513 = icmp slt i32 %478, %0, !dbg !1013
  br i1 %513, label %514, label %582, !dbg !1015

514:                                              ; preds = %510
  %515 = fadd double %480, %2, !dbg !1016
  %516 = fmul double %515, %102, !dbg !1017
  %517 = fmul double %516, %512, !dbg !1018
  %518 = sub nsw i32 %478, %1, !dbg !1019
  %519 = sitofp i32 %518 to double, !dbg !1020
  %520 = fmul double %519, %2, !dbg !1021
  %521 = fmul double %520, %511, !dbg !1022
  %522 = fadd double %521, %517, !dbg !1023
  %523 = mul nsw i32 %478, %1, !dbg !1024
  %524 = sitofp i32 %523 to double, !dbg !1025
  %525 = fdiv double %522, %524, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %525, metadata !637, metadata !DIExpression()), !dbg !982
  %526 = add nsw i32 %478, 1, !dbg !1027
  %527 = icmp slt i32 %526, %0, !dbg !1029
  br i1 %527, label %528, label %582, !dbg !1030

528:                                              ; preds = %514
  %529 = xor i32 %478, -1, !dbg !1031
  %530 = add i32 %529, %0, !dbg !1031
  %531 = add i32 %0, -2, !dbg !1031
  %532 = and i32 %530, 1, !dbg !1031
  %533 = icmp eq i32 %532, 0, !dbg !1031
  br i1 %533, label %547, label %534, !dbg !1031

534:                                              ; preds = %528
  tail call void @llvm.dbg.value(metadata i32 %526, metadata !641, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %525, metadata !639, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %512, metadata !638, metadata !DIExpression()), !dbg !982
  %535 = sub nsw i32 %1, %526, !dbg !1034
  %536 = sitofp i32 %535 to double, !dbg !1037
  %537 = fmul double %512, %536, !dbg !1038
  %538 = shl nsw i32 %526, 1, !dbg !1039
  %539 = sub nsw i32 %538, %1, !dbg !1040
  %540 = sitofp i32 %539 to double, !dbg !1041
  %541 = fadd double %540, %2, !dbg !1042
  %542 = fmul double %525, %541, !dbg !1043
  %543 = fadd double %537, %542, !dbg !1044
  %544 = sitofp i32 %526 to double, !dbg !1045
  %545 = fdiv double %543, %544, !dbg !1046
  tail call void @llvm.dbg.value(metadata double %545, metadata !640, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %525, metadata !638, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %545, metadata !639, metadata !DIExpression()), !dbg !982
  %546 = add nsw i32 %478, 2, !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %546, metadata !641, metadata !DIExpression()), !dbg !982
  br label %547, !dbg !1031

547:                                              ; preds = %534, %528
  %548 = phi double [ undef, %528 ], [ %545, %534 ]
  %549 = phi i32 [ %526, %528 ], [ %546, %534 ]
  %550 = phi double [ %525, %528 ], [ %545, %534 ]
  %551 = phi double [ %512, %528 ], [ %525, %534 ]
  %552 = icmp eq i32 %531, %478, !dbg !1031
  br i1 %552, label %582, label %553, !dbg !1031

553:                                              ; preds = %547, %553
  %554 = phi i32 [ %580, %553 ], [ %549, %547 ]
  %555 = phi double [ %579, %553 ], [ %550, %547 ]
  %556 = phi double [ %567, %553 ], [ %551, %547 ]
  tail call void @llvm.dbg.value(metadata i32 %554, metadata !641, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %555, metadata !639, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %556, metadata !638, metadata !DIExpression()), !dbg !982
  %557 = sub nsw i32 %1, %554, !dbg !1034
  %558 = sitofp i32 %557 to double, !dbg !1037
  %559 = fmul double %556, %558, !dbg !1038
  %560 = shl nsw i32 %554, 1, !dbg !1039
  %561 = sub nsw i32 %560, %1, !dbg !1040
  %562 = sitofp i32 %561 to double, !dbg !1041
  %563 = fadd double %562, %2, !dbg !1042
  %564 = fmul double %555, %563, !dbg !1043
  %565 = fadd double %559, %564, !dbg !1044
  %566 = sitofp i32 %554 to double, !dbg !1045
  %567 = fdiv double %565, %566, !dbg !1046
  tail call void @llvm.dbg.value(metadata double %567, metadata !640, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %555, metadata !638, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %567, metadata !639, metadata !DIExpression()), !dbg !982
  %568 = add nsw i32 %554, 1, !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %568, metadata !641, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %568, metadata !641, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %567, metadata !639, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %555, metadata !638, metadata !DIExpression()), !dbg !982
  %569 = sub nsw i32 %1, %568, !dbg !1034
  %570 = sitofp i32 %569 to double, !dbg !1037
  %571 = fmul double %555, %570, !dbg !1038
  %572 = shl nsw i32 %568, 1, !dbg !1039
  %573 = sub nsw i32 %572, %1, !dbg !1040
  %574 = sitofp i32 %573 to double, !dbg !1041
  %575 = fadd double %574, %2, !dbg !1042
  %576 = fmul double %567, %575, !dbg !1043
  %577 = fadd double %571, %576, !dbg !1044
  %578 = sitofp i32 %568 to double, !dbg !1045
  %579 = fdiv double %577, %578, !dbg !1046
  tail call void @llvm.dbg.value(metadata double %579, metadata !640, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %567, metadata !638, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata double %579, metadata !639, metadata !DIExpression()), !dbg !982
  %580 = add nsw i32 %554, 2, !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %580, metadata !641, metadata !DIExpression()), !dbg !982
  %581 = icmp eq i32 %580, %0, !dbg !1048
  br i1 %581, label %582, label %553, !dbg !1031, !llvm.loop !1049

582:                                              ; preds = %547, %553, %514, %510
  %583 = phi double [ %512, %510 ], [ %525, %514 ], [ %548, %547 ], [ %579, %553 ], !dbg !1051
  tail call void @llvm.dbg.value(metadata double %583, metadata !639, metadata !DIExpression()), !dbg !982
  store double %583, ptr %3, align 8, !dbg !1052, !tbaa !118
  %584 = fadd double %12, 1.000000e+00, !dbg !1053
  %585 = fmul double %584, 0x3CB0000000000000, !dbg !1054
  %586 = tail call double @llvm.fabs.f64(double %583), !dbg !1055
  %587 = fmul double %585, %586, !dbg !1056
  %588 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1057
  %589 = sub nsw i32 %1, %0, !dbg !1058
  %590 = sitofp i32 %589 to double, !dbg !1059
  %591 = tail call double @llvm.fabs.f64(double %590), !dbg !1060
  %592 = fadd double %591, 1.000000e+00, !dbg !1061
  %593 = fmul double %592, %587, !dbg !1062
  store double %593, ptr %588, align 8, !dbg !1062, !tbaa !125
  br label %594

594:                                              ; preds = %582, %464, %412, %350, %338, %250, %175, %109, %89, %59, %37, %24, %18, %14
  %595 = phi i32 [ %15, %14 ], [ %20, %18 ], [ %33, %24 ], [ %38, %37 ], [ %60, %59 ], [ %91, %89 ], [ %112, %109 ], [ %119, %175 ], [ %271, %250 ], [ 0, %338 ], [ 16, %350 ], [ 0, %412 ], [ 0, %464 ], [ 0, %582 ], !dbg !1063
  ret i32 %595, !dbg !1064
}

declare !dbg !1065 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1068 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1084, metadata !DIExpression(), metadata !1130, metadata ptr %5, metadata !DIExpression()), !dbg !1131
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1095, metadata !DIExpression(), metadata !1132, metadata ptr %6, metadata !DIExpression()), !dbg !1131
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1100, metadata !DIExpression(), metadata !1133, metadata ptr %7, metadata !DIExpression()), !dbg !1134
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1135
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1103, metadata !DIExpression(), metadata !1135, metadata ptr %8, metadata !DIExpression()), !dbg !1136
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1137
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1114, metadata !DIExpression(), metadata !1137, metadata ptr %9, metadata !DIExpression()), !dbg !1138
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1119, metadata !DIExpression(), metadata !1139, metadata ptr %10, metadata !DIExpression()), !dbg !1140
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1125, metadata !DIExpression(), metadata !1141, metadata ptr %11, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %0, metadata !1070, metadata !DIExpression()), !dbg !1143
  tail call void @llvm.dbg.value(metadata double %1, metadata !1071, metadata !DIExpression()), !dbg !1143
  tail call void @llvm.dbg.value(metadata double %2, metadata !1072, metadata !DIExpression()), !dbg !1143
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1073, metadata !DIExpression()), !dbg !1143
  %12 = fsub double %1, %0, !dbg !1144
  tail call void @llvm.dbg.value(metadata double %12, metadata !1074, metadata !DIExpression()), !dbg !1143
  %13 = fadd double %0, 5.000000e-01, !dbg !1145
  %14 = tail call double @llvm.floor.f64(double %13), !dbg !1146
  tail call void @llvm.dbg.value(metadata double %14, metadata !1075, metadata !DIExpression()), !dbg !1143
  %15 = fadd double %1, 5.000000e-01, !dbg !1147
  %16 = tail call double @llvm.floor.f64(double %15), !dbg !1148
  tail call void @llvm.dbg.value(metadata double %16, metadata !1076, metadata !DIExpression()), !dbg !1143
  %17 = fadd double %12, 5.000000e-01, !dbg !1149
  %18 = tail call double @llvm.floor.f64(double %17), !dbg !1150
  tail call void @llvm.dbg.value(metadata double %18, metadata !1077, metadata !DIExpression()), !dbg !1143
  %19 = fsub double %0, %14, !dbg !1151
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !1152
  %21 = fcmp olt double %20, 0x3D19000000000000, !dbg !1153
  %22 = fcmp ogt double %14, 0xC1E0000000000000
  %23 = and i1 %22, %21, !dbg !1154
  %24 = fcmp olt double %14, 0x41DFFFFFFFC00000
  %25 = and i1 %24, %23, !dbg !1154
  tail call void @llvm.dbg.value(metadata i1 %25, metadata !1078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %26 = fsub double %1, %16, !dbg !1155
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !1156
  %28 = fcmp olt double %27, 0x3D19000000000000, !dbg !1157
  %29 = fcmp ogt double %16, 0xC1E0000000000000
  %30 = and i1 %29, %28, !dbg !1158
  %31 = fcmp olt double %16, 0x41DFFFFFFFC00000
  %32 = and i1 %31, %30, !dbg !1158
  tail call void @llvm.dbg.value(metadata i1 %32, metadata !1079, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %33 = fsub double %12, %18, !dbg !1159
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !1160
  %35 = fcmp olt double %34, 0x3D19000000000000, !dbg !1161
  %36 = fcmp ogt double %18, 0xC1E0000000000000
  %37 = and i1 %36, %35, !dbg !1162
  %38 = fcmp olt double %18, 0x41DFFFFFFFC00000
  %39 = and i1 %38, %37, !dbg !1162
  tail call void @llvm.dbg.value(metadata i1 %39, metadata !1080, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %40 = fcmp olt double %1, -1.000000e-01, !dbg !1163
  %41 = and i1 %40, %32, !dbg !1164
  tail call void @llvm.dbg.value(metadata i1 %41, metadata !1081, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %42 = fcmp olt double %0, -1.000000e-01, !dbg !1165
  %43 = and i1 %42, %25, !dbg !1166
  tail call void @llvm.dbg.value(metadata i1 %43, metadata !1082, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %44 = fcmp olt double %12, -1.000000e-01, !dbg !1167
  %45 = and i1 %44, %39, !dbg !1168
  tail call void @llvm.dbg.value(metadata i1 %45, metadata !1083, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %46 = fcmp oeq double %2, 0.000000e+00, !dbg !1169
  br i1 %46, label %47, label %49, !dbg !1170

47:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1171, !tbaa !118
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1173
  store double 0.000000e+00, ptr %48, align 8, !dbg !1174, !tbaa !125
  br label %206, !dbg !1175

49:                                               ; preds = %4
  %50 = fcmp oeq double %1, 0.000000e+00, !dbg !1176
  br i1 %50, label %51, label %53, !dbg !1177

51:                                               ; preds = %49
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1178, !tbaa !118
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1178
  store double 0x7FF8000000000000, ptr %52, align 8, !dbg !1178, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1871, i32 noundef 1) #9, !dbg !1181
  br label %206, !dbg !1181

53:                                               ; preds = %49
  %54 = fcmp oeq double %0, 0.000000e+00, !dbg !1183
  br i1 %54, label %55, label %57, !dbg !1184

55:                                               ; preds = %53
  store double 1.000000e+00, ptr %3, align 8, !dbg !1185, !tbaa !118
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1187
  store double 0.000000e+00, ptr %56, align 8, !dbg !1188, !tbaa !125
  br label %206, !dbg !1189

57:                                               ; preds = %53
  %58 = fcmp oeq double %0, %1, !dbg !1190
  br i1 %58, label %59, label %61, !dbg !1191

59:                                               ; preds = %57
  %60 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #9, !dbg !1192
  br label %206, !dbg !1194

61:                                               ; preds = %57
  %62 = tail call double @llvm.fabs.f64(double %1), !dbg !1195
  %63 = fcmp olt double %62, 0x3D19000000000000, !dbg !1196
  %64 = tail call double @llvm.fabs.f64(double %0)
  %65 = fcmp olt double %64, 0x3D19000000000000
  %66 = and i1 %65, %63, !dbg !1197
  br i1 %66, label %67, label %93, !dbg !1197

67:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1198
  %68 = call i32 @gsl_sf_expm1_e(double noundef %2, ptr noundef nonnull %5) #9, !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1091, metadata !DIExpression()), !dbg !1131
  %69 = fcmp ogt double %0, 0.000000e+00, !dbg !1200
  tail call void @llvm.dbg.value(metadata double poison, metadata !1092, metadata !DIExpression()), !dbg !1131
  %70 = fcmp ogt double %1, 0.000000e+00, !dbg !1201
  %71 = select i1 %70, double 1.000000e+00, double -1.000000e+00, !dbg !1202
  tail call void @llvm.dbg.value(metadata double %71, metadata !1093, metadata !DIExpression()), !dbg !1131
  %72 = fdiv double %0, %1, !dbg !1203
  %73 = call double @llvm.fabs.f64(double %72), !dbg !1204
  %74 = call double @log(double noundef %73) #9, !dbg !1205
  tail call void @llvm.dbg.value(metadata double %74, metadata !1094, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1206
  %75 = call double @llvm.fabs.f64(double %74), !dbg !1207
  %76 = fmul double %75, 0x3CB0000000000000, !dbg !1208
  %77 = fneg double %71, !dbg !1209
  %78 = select i1 %69, double %71, double %77, !dbg !1209
  %79 = load double, ptr %5, align 8, !dbg !1210, !tbaa !118
  %80 = fmul double %78, %79, !dbg !1211
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1212
  %82 = load double, ptr %81, align 8, !dbg !1212, !tbaa !125
  %83 = call i32 @gsl_sf_exp_mult_err_e(double noundef %74, double noundef %76, double noundef %80, double noundef %82, ptr noundef nonnull %6) #9, !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1096, metadata !DIExpression()), !dbg !1131
  %84 = load double, ptr %6, align 8, !dbg !1214
  %85 = fcmp oeq double %84, 0x7FEFFFFFFFFFFFFF, !dbg !1215
  %86 = fadd double %84, 1.000000e+00, !dbg !1216
  %87 = select i1 %85, double %84, double %86, !dbg !1216
  store double %87, ptr %3, align 8, !dbg !1217, !tbaa !118
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1218
  %89 = load double, ptr %88, align 8, !dbg !1218, !tbaa !125
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1219
  store double %89, ptr %90, align 8, !dbg !1220, !tbaa !125
  %91 = icmp eq i32 %83, 0, !dbg !1221
  %92 = select i1 %91, i32 %68, i32 %83, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1222
  br label %206

93:                                               ; preds = %61
  br i1 %63, label %94, label %111, !dbg !1223

94:                                               ; preds = %93
  %95 = fmul double %0, %2, !dbg !1224
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !1225
  %97 = fcmp olt double %96, 1.000000e+00, !dbg !1226
  br i1 %97, label %98, label %111, !dbg !1227

98:                                               ; preds = %94
  %99 = fmul double %1, 5.000000e-01, !dbg !1228
  %100 = fdiv double 1.000000e+00, %99, !dbg !1229
  tail call void @llvm.dbg.value(metadata double %100, metadata !1097, metadata !DIExpression()), !dbg !1134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1230
  %101 = call fastcc i32 @hyperg_1F1_renorm_b0(double noundef %0, double noundef %2, ptr noundef nonnull %7), !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %101, metadata !1101, metadata !DIExpression()), !dbg !1134
  %102 = fmul double %100, 0x3CC0000000000000, !dbg !1232
  %103 = load double, ptr %7, align 8, !dbg !1233, !tbaa !118
  %104 = fmul double %103, 5.000000e-01, !dbg !1234
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1235
  %106 = load double, ptr %105, align 8, !dbg !1235, !tbaa !125
  %107 = fmul double %106, 5.000000e-01, !dbg !1236
  %108 = call i32 @gsl_sf_multiply_err_e(double noundef %100, double noundef %102, double noundef %104, double noundef %107, ptr noundef %3) #9, !dbg !1237
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1102, metadata !DIExpression()), !dbg !1134
  %109 = icmp eq i32 %108, 0, !dbg !1238
  %110 = select i1 %109, i32 %101, i32 %108, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1239
  br label %206

111:                                              ; preds = %94, %93
  %112 = and i1 %25, %32, !dbg !1240
  br i1 %112, label %113, label %117, !dbg !1240

113:                                              ; preds = %111
  %114 = fptosi double %14 to i32, !dbg !1241
  %115 = fptosi double %16 to i32, !dbg !1243
  %116 = tail call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef %114, i32 noundef %115, double noundef %2, ptr noundef %3), !dbg !1244
  br label %206, !dbg !1245

117:                                              ; preds = %111
  %118 = xor i1 %41, true, !dbg !1246
  %119 = fcmp ogt double %0, %1
  %120 = and i1 %119, %43
  %121 = select i1 %118, i1 true, i1 %120, !dbg !1246
  br i1 %121, label %124, label %122, !dbg !1246

122:                                              ; preds = %117
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1247, !tbaa !118
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1247
  store double 0x7FF8000000000000, ptr %123, align 8, !dbg !1247, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1925, i32 noundef 1) #9, !dbg !1250
  br label %206, !dbg !1250

124:                                              ; preds = %117
  br i1 %43, label %125, label %128, !dbg !1252

125:                                              ; preds = %124
  %126 = fptosi double %14 to i32, !dbg !1253
  %127 = tail call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %126, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1255
  br label %206, !dbg !1256

128:                                              ; preds = %124
  %129 = fcmp ogt double %1, 0.000000e+00, !dbg !1257
  br i1 %129, label %130, label %170, !dbg !1258

130:                                              ; preds = %128
  %131 = fcmp oge double %0, -1.000000e+00, !dbg !1259
  %132 = fcmp ole double %0, 1.000000e+00
  %133 = and i1 %131, %132, !dbg !1260
  br i1 %133, label %134, label %136, !dbg !1260

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1261
  br label %206, !dbg !1263

136:                                              ; preds = %130
  br i1 %45, label %137, label %149, !dbg !1264

137:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1265
  %138 = fptosi double %18 to i32, !dbg !1266
  %139 = fneg double %2, !dbg !1267
  %140 = call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %138, double noundef %1, double noundef %139, ptr noundef nonnull %8), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !1112, metadata !DIExpression()), !dbg !1136
  %141 = call double @llvm.fabs.f64(double %2), !dbg !1269
  %142 = fmul double %141, 0x3CB0000000000000, !dbg !1270
  %143 = load double, ptr %8, align 8, !dbg !1271, !tbaa !118
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1272
  %145 = load double, ptr %144, align 8, !dbg !1272, !tbaa !125
  %146 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %142, double noundef %143, double noundef %145, ptr noundef %3) #9, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !1113, metadata !DIExpression()), !dbg !1136
  %147 = icmp eq i32 %146, 0, !dbg !1274
  %148 = select i1 %147, i32 %140, i32 %146, !dbg !1274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1275
  br label %206

149:                                              ; preds = %136
  %150 = fcmp olt double %0, 0.000000e+00, !dbg !1276
  br i1 %150, label %151, label %164, !dbg !1277

151:                                              ; preds = %149
  %152 = tail call double @llvm.fabs.f64(double %2), !dbg !1278
  %153 = fcmp olt double %152, 0x40962E42FEFA39EF, !dbg !1279
  br i1 %153, label %154, label %164, !dbg !1280

154:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !1281
  %155 = fneg double %2, !dbg !1282
  %156 = call fastcc i32 @hyperg_1F1_ab_pos(double noundef %12, double noundef %1, double noundef %155, ptr noundef nonnull %9), !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !1117, metadata !DIExpression()), !dbg !1138
  %157 = fmul double %152, 0x3CB0000000000000, !dbg !1284
  %158 = load double, ptr %9, align 8, !dbg !1285, !tbaa !118
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1286
  %160 = load double, ptr %159, align 8, !dbg !1286, !tbaa !125
  %161 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %157, double noundef %158, double noundef %160, ptr noundef %3) #9, !dbg !1287
  tail call void @llvm.dbg.value(metadata i32 %161, metadata !1118, metadata !DIExpression()), !dbg !1138
  %162 = icmp eq i32 %161, 0, !dbg !1288
  %163 = select i1 %162, i32 %156, i32 %161, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !1289
  br label %206

164:                                              ; preds = %151, %149
  %165 = fcmp ogt double %0, 0.000000e+00, !dbg !1290
  br i1 %165, label %166, label %168, !dbg !1292

166:                                              ; preds = %164
  %167 = tail call fastcc i32 @hyperg_1F1_ab_pos(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1293
  br label %206, !dbg !1295

168:                                              ; preds = %164
  %169 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !1296
  br label %206, !dbg !1298

170:                                              ; preds = %128
  %171 = fcmp olt double %2, 0.000000e+00
  %172 = and i1 %171, %45, !dbg !1299
  br i1 %172, label %173, label %191, !dbg !1299

173:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !1300
  %174 = fcmp olt double %0, 0.000000e+00, !dbg !1301
  %175 = fptosi double %18 to i32, !dbg !1303
  %176 = fneg double %2, !dbg !1303
  br i1 %174, label %177, label %179, !dbg !1304

177:                                              ; preds = %173
  %178 = call fastcc i32 @hyperg_1F1_a_negint_poly(i32 noundef %175, double noundef %1, double noundef %176, ptr noundef nonnull %10), !dbg !1305
  tail call void @llvm.dbg.value(metadata i32 %178, metadata !1123, metadata !DIExpression()), !dbg !1140
  br label %181, !dbg !1307

179:                                              ; preds = %173
  %180 = call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %175, double noundef %1, double noundef %176, ptr noundef nonnull %10), !dbg !1308
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !1123, metadata !DIExpression()), !dbg !1140
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ], !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !1123, metadata !DIExpression()), !dbg !1140
  %183 = call double @llvm.fabs.f64(double %2), !dbg !1310
  %184 = fmul double %183, 0x3CB0000000000000, !dbg !1311
  %185 = load double, ptr %10, align 8, !dbg !1312, !tbaa !118
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1313
  %187 = load double, ptr %186, align 8, !dbg !1313, !tbaa !125
  %188 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %184, double noundef %185, double noundef %187, ptr noundef %3) #9, !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %188, metadata !1124, metadata !DIExpression()), !dbg !1140
  %189 = icmp eq i32 %188, 0, !dbg !1315
  %190 = select i1 %189, i32 %182, i32 %188, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !1316
  br label %206

191:                                              ; preds = %170
  %192 = fcmp ogt double %0, 0.000000e+00, !dbg !1317
  br i1 %192, label %193, label %204, !dbg !1318

193:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !1319
  %194 = fneg double %2, !dbg !1320
  %195 = call fastcc i32 @hyperg_1F1_ab_neg(double noundef %12, double noundef %1, double noundef %194, ptr noundef nonnull %11), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %195, metadata !1128, metadata !DIExpression()), !dbg !1142
  %196 = call double @llvm.fabs.f64(double %2), !dbg !1322
  %197 = fmul double %196, 0x3CB0000000000000, !dbg !1323
  %198 = load double, ptr %11, align 8, !dbg !1324, !tbaa !118
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1325
  %200 = load double, ptr %199, align 8, !dbg !1325, !tbaa !125
  %201 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %197, double noundef %198, double noundef %200, ptr noundef %3) #9, !dbg !1326
  tail call void @llvm.dbg.value(metadata i32 %201, metadata !1129, metadata !DIExpression()), !dbg !1142
  %202 = icmp eq i32 %201, 0, !dbg !1327
  %203 = select i1 %202, i32 %195, i32 %201, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !1328
  br label %206

204:                                              ; preds = %191
  %205 = tail call fastcc i32 @hyperg_1F1_ab_neg(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1329
  br label %206, !dbg !1331

206:                                              ; preds = %204, %193, %181, %168, %166, %154, %137, %134, %125, %122, %113, %98, %67, %59, %55, %51, %47
  %207 = phi i32 [ 0, %47 ], [ 1, %51 ], [ 0, %55 ], [ %60, %59 ], [ %92, %67 ], [ %110, %98 ], [ %116, %113 ], [ %127, %125 ], [ %135, %134 ], [ %148, %137 ], [ %163, %154 ], [ %167, %166 ], [ %169, %168 ], [ %190, %181 ], [ %203, %193 ], [ %205, %204 ], [ 1, %122 ], !dbg !1332
  ret i32 %207, !dbg !1333
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

declare !dbg !1334 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1335 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_renorm_b0(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !1339 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1350, metadata !DIExpression(), metadata !1372, metadata ptr %4, metadata !DIExpression()), !dbg !1373
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1360, metadata !DIExpression(), metadata !1374, metadata ptr %5, metadata !DIExpression()), !dbg !1375
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1370, metadata !DIExpression(), metadata !1376, metadata ptr %6, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata double %0, metadata !1343, metadata !DIExpression()), !dbg !1378
  tail call void @llvm.dbg.value(metadata double %1, metadata !1344, metadata !DIExpression()), !dbg !1378
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1345, metadata !DIExpression()), !dbg !1378
  %7 = fmul double %0, %1, !dbg !1379
  tail call void @llvm.dbg.value(metadata double %7, metadata !1346, metadata !DIExpression()), !dbg !1378
  %8 = fcmp ogt double %7, 0.000000e+00, !dbg !1380
  br i1 %8, label %9, label %49, !dbg !1381

9:                                                ; preds = %3
  %10 = tail call double @sqrt(double noundef %7) #9, !dbg !1382
  tail call void @llvm.dbg.value(metadata double %10, metadata !1347, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !1383
  %11 = fmul double %10, 2.000000e+00, !dbg !1384
  %12 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %11, ptr noundef nonnull %4) #9, !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1351, metadata !DIExpression()), !dbg !1373
  %13 = load double, ptr %4, align 8, !dbg !1386, !tbaa !118
  %14 = fcmp ugt double %13, 0.000000e+00, !dbg !1387
  br i1 %14, label %17, label %15, !dbg !1388

15:                                               ; preds = %9
  %16 = call i32 @llvm.umax.i32(i32 %12, i32 1), !dbg !1389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1391
  br label %47, !dbg !1392

17:                                               ; preds = %9
  %18 = fmul double %0, 0x3FE5555555555555, !dbg !1393
  %19 = fmul double %0, 4.000000e+00, !dbg !1394
  %20 = fdiv double %1, %19, !dbg !1395
  %21 = call double @pow(double noundef %20, double noundef 1.500000e+00) #9, !dbg !1396
  %22 = fmul double %18, %21, !dbg !1397
  %23 = call double @gsl_sf_bessel_In_scaled(i32 noundef 2, double noundef %11) #9, !dbg !1398
  %24 = fmul double %22, %23, !dbg !1399
  tail call void @llvm.dbg.value(metadata double %24, metadata !1352, metadata !DIExpression()), !dbg !1400
  %25 = fmul double %1, 5.000000e-01, !dbg !1401
  %26 = call double @log(double noundef %7) #9, !dbg !1402
  %27 = fmul double %26, 5.000000e-01, !dbg !1403
  %28 = fadd double %25, %27, !dbg !1404
  %29 = call double @llvm.fabs.f64(double %11), !dbg !1405
  %30 = fadd double %29, %28, !dbg !1406
  %31 = load double, ptr %4, align 8, !dbg !1407, !tbaa !118
  %32 = fadd double %24, %31, !dbg !1408
  %33 = call double @log(double noundef %32) #9, !dbg !1409
  %34 = fadd double %33, %30, !dbg !1410
  tail call void @llvm.dbg.value(metadata double %34, metadata !1355, metadata !DIExpression()), !dbg !1400
  %35 = call double @llvm.fabs.f64(double %1), !dbg !1411
  %36 = fmul double %35, 1.500000e+00, !dbg !1412
  %37 = fadd double %36, 1.000000e+00, !dbg !1413
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !1414
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1415
  %40 = load double, ptr %39, align 8, !dbg !1415, !tbaa !125
  %41 = fadd double %24, %40, !dbg !1416
  %42 = load double, ptr %4, align 8, !dbg !1417, !tbaa !118
  %43 = fdiv double %41, %42, !dbg !1418
  %44 = call double @llvm.fabs.f64(double %43), !dbg !1419
  %45 = fadd double %38, %44, !dbg !1420
  tail call void @llvm.dbg.value(metadata double %45, metadata !1356, metadata !DIExpression()), !dbg !1400
  %46 = call i32 @gsl_sf_exp_err_e(double noundef %34, double noundef %45, ptr noundef %2) #9, !dbg !1421
  br label %47

47:                                               ; preds = %17, %15
  %48 = phi i32 [ %16, %15 ], [ %46, %17 ], !dbg !1422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !1423
  br label %90

49:                                               ; preds = %3
  %50 = fcmp oeq double %7, 0.000000e+00, !dbg !1424
  br i1 %50, label %51, label %52, !dbg !1425

51:                                               ; preds = %49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1426
  br label %90, !dbg !1428

52:                                               ; preds = %49
  %53 = fneg double %7, !dbg !1429
  %54 = tail call double @sqrt(double noundef %53) #9, !dbg !1430
  tail call void @llvm.dbg.value(metadata double %54, metadata !1357, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1431
  %55 = fmul double %54, 2.000000e+00, !dbg !1432
  %56 = call i32 @gsl_sf_bessel_J1_e(double noundef %55, ptr noundef nonnull %5) #9, !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !1361, metadata !DIExpression()), !dbg !1375
  %57 = load double, ptr %5, align 8, !dbg !1434, !tbaa !118
  %58 = fcmp ugt double %57, 0.000000e+00, !dbg !1435
  br i1 %58, label %61, label %59, !dbg !1436

59:                                               ; preds = %52
  %60 = call i32 @llvm.umax.i32(i32 %56, i32 1), !dbg !1437
  br label %85, !dbg !1439

61:                                               ; preds = %52
  %62 = fmul double %1, 5.000000e-01, !dbg !1440
  tail call void @llvm.dbg.value(metadata double %62, metadata !1362, metadata !DIExpression()), !dbg !1377
  %63 = call double @log(double noundef %53) #9, !dbg !1441
  %64 = fmul double %63, 5.000000e-01, !dbg !1442
  tail call void @llvm.dbg.value(metadata double %64, metadata !1365, metadata !DIExpression()), !dbg !1377
  %65 = call double @llvm.fabs.f64(double %1), !dbg !1443
  tail call void @llvm.dbg.value(metadata double %65, metadata !1366, metadata !DIExpression()), !dbg !1377
  %66 = load double, ptr %5, align 8, !dbg !1444, !tbaa !118
  %67 = call double @log(double noundef %66) #9, !dbg !1445
  tail call void @llvm.dbg.value(metadata double %67, metadata !1367, metadata !DIExpression()), !dbg !1377
  %68 = fadd double %62, %64, !dbg !1446
  %69 = fadd double %65, %68, !dbg !1447
  %70 = fadd double %67, %69, !dbg !1448
  tail call void @llvm.dbg.value(metadata double %70, metadata !1368, metadata !DIExpression()), !dbg !1377
  %71 = fmul double %65, 1.500000e+00, !dbg !1449
  %72 = fadd double %71, 1.000000e+00, !dbg !1450
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !1451
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1452
  %75 = load double, ptr %74, align 8, !dbg !1452, !tbaa !125
  %76 = load double, ptr %5, align 8, !dbg !1453, !tbaa !118
  %77 = fdiv double %75, %76, !dbg !1454
  %78 = call double @llvm.fabs.f64(double %77), !dbg !1455
  %79 = fadd double %73, %78, !dbg !1456
  tail call void @llvm.dbg.value(metadata double %79, metadata !1369, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1457
  %80 = call i32 @gsl_sf_exp_err_e(double noundef %70, double noundef %79, ptr noundef nonnull %6) #9, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1371, metadata !DIExpression()), !dbg !1377
  %81 = load double, ptr %6, align 8, !dbg !1459, !tbaa !118
  %82 = fneg double %81, !dbg !1460
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1461
  %84 = load double, ptr %83, align 8, !dbg !1461, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1462
  br label %85

85:                                               ; preds = %61, %59
  %86 = phi double [ %82, %61 ], [ 0.000000e+00, %59 ], !dbg !1463
  %87 = phi double [ %84, %61 ], [ 0.000000e+00, %59 ], !dbg !1463
  %88 = phi i32 [ %80, %61 ], [ %60, %59 ], !dbg !1463
  store double %86, ptr %2, align 8, !dbg !1463
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1463
  store double %87, ptr %89, align 8, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1464
  br label %90

90:                                               ; preds = %85, %51, %47
  %91 = phi i32 [ %48, %47 ], [ 0, %51 ], [ %88, %85 ], !dbg !1465
  ret i32 %91, !dbg !1466
}

declare !dbg !1467 i32 @gsl_sf_multiply_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1469 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1476, metadata !DIExpression(), metadata !1505, metadata ptr %5, metadata !DIExpression()), !dbg !1506
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1478, metadata !DIExpression(), metadata !1507, metadata ptr %6, metadata !DIExpression()), !dbg !1508
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1509
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1481, metadata !DIExpression(), metadata !1509, metadata ptr %7, metadata !DIExpression()), !dbg !1508
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1482, metadata !DIExpression(), metadata !1510, metadata ptr %8, metadata !DIExpression()), !dbg !1508
  %9 = alloca double, align 8, !DIAssignID !1511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1483, metadata !DIExpression(), metadata !1511, metadata ptr %9, metadata !DIExpression()), !dbg !1508
  %10 = alloca double, align 8, !DIAssignID !1512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1484, metadata !DIExpression(), metadata !1512, metadata ptr %10, metadata !DIExpression()), !dbg !1508
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1491, metadata !DIExpression(), metadata !1513, metadata ptr %11, metadata !DIExpression()), !dbg !1514
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1497, metadata !DIExpression(), metadata !1515, metadata ptr %12, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %1, metadata !1472, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %2, metadata !1473, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1474, metadata !DIExpression()), !dbg !1506
  %13 = sub nsw i32 0, %0, !dbg !1517
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1475, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1518
  %14 = fadd double %1, -1.000000e+00, !dbg !1519
  %15 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %13, double noundef %14, double noundef %2, ptr noundef nonnull %5) #9, !dbg !1520
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1477, metadata !DIExpression()), !dbg !1506
  %16 = fcmp olt double %1, 0.000000e+00, !dbg !1521
  br i1 %16, label %17, label %57, !dbg !1522

17:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1523
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1524
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9, !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9, !dbg !1526
  %18 = call i32 @gsl_sf_lnfact_e(i32 noundef %13, ptr noundef nonnull %6) #9, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1485, metadata !DIExpression()), !dbg !1508
  %19 = sitofp i32 %13 to double, !dbg !1528
  %20 = fadd double %19, %1, !dbg !1529
  %21 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %20, ptr noundef nonnull %7, ptr noundef nonnull %9) #9, !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1486, metadata !DIExpression()), !dbg !1508
  %22 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10) #9, !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1487, metadata !DIExpression()), !dbg !1508
  %23 = load double, ptr %6, align 8, !dbg !1532, !tbaa !118
  %24 = load double, ptr %7, align 8, !dbg !1533, !tbaa !118
  %25 = load double, ptr %8, align 8, !dbg !1534, !tbaa !118
  %26 = fsub double %24, %25, !dbg !1535
  %27 = fsub double %23, %26, !dbg !1536
  tail call void @llvm.dbg.value(metadata double %27, metadata !1488, metadata !DIExpression()), !dbg !1508
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1537
  %29 = load double, ptr %28, align 8, !dbg !1537, !tbaa !125
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1538
  %31 = load double, ptr %30, align 8, !dbg !1538, !tbaa !125
  %32 = fadd double %29, %31, !dbg !1539
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1540
  %34 = load double, ptr %33, align 8, !dbg !1540, !tbaa !125
  %35 = fadd double %32, %34, !dbg !1541
  %36 = call double @llvm.fabs.f64(double %27), !dbg !1542
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !1543
  %38 = fadd double %35, %37, !dbg !1544
  tail call void @llvm.dbg.value(metadata double %38, metadata !1489, metadata !DIExpression()), !dbg !1508
  %39 = load double, ptr %9, align 8, !dbg !1545, !tbaa !313
  %40 = load double, ptr %10, align 8, !dbg !1546, !tbaa !313
  %41 = fmul double %39, %40, !dbg !1547
  %42 = load double, ptr %5, align 8, !dbg !1548, !tbaa !118
  %43 = fmul double %41, %42, !dbg !1549
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1550
  %45 = load double, ptr %44, align 8, !dbg !1550, !tbaa !125
  %46 = call i32 @gsl_sf_exp_mult_err_e(double noundef %27, double noundef %38, double noundef %43, double noundef %45, ptr noundef %3) #9, !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1490, metadata !DIExpression()), !dbg !1508
  %47 = icmp eq i32 %46, 0, !dbg !1552
  br i1 %47, label %48, label %55, !dbg !1552

48:                                               ; preds = %17
  %49 = icmp eq i32 %15, 0, !dbg !1552
  br i1 %49, label %50, label %55, !dbg !1552

50:                                               ; preds = %48
  %51 = icmp eq i32 %21, 0, !dbg !1552
  br i1 %51, label %52, label %55, !dbg !1552

52:                                               ; preds = %50
  %53 = icmp eq i32 %22, 0, !dbg !1552
  %54 = select i1 %53, i32 %18, i32 %22, !dbg !1552
  br label %55, !dbg !1552

55:                                               ; preds = %52, %50, %48, %17
  %56 = phi i32 [ %46, %17 ], [ %15, %48 ], [ %21, %50 ], [ %54, %52 ], !dbg !1552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1553
  br label %100

57:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !1554
  %58 = sitofp i32 %13 to double, !dbg !1555
  %59 = call i32 @gsl_sf_lnbeta_e(double noundef %1, double noundef %58, ptr noundef nonnull %11) #9, !dbg !1556
  %60 = load double, ptr %11, align 8, !dbg !1557, !tbaa !118
  %61 = call double @llvm.fabs.f64(double %60), !dbg !1558
  %62 = fcmp olt double %61, 1.000000e-01, !dbg !1559
  br i1 %62, label %63, label %83, !dbg !1560

63:                                               ; preds = %57
  %64 = fmul double %58, 1.250000e+00, !dbg !1561
  %65 = call double @log(double noundef %64) #9, !dbg !1562
  tail call void @llvm.dbg.value(metadata double %65, metadata !1493, metadata !DIExpression()), !dbg !1516
  %66 = fmul double %65, 0x3CC0000000000000, !dbg !1563
  tail call void @llvm.dbg.value(metadata double %66, metadata !1496, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !1564
  %67 = call i32 @gsl_sf_beta_e(double noundef %1, double noundef %58, ptr noundef nonnull %12) #9, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1498, metadata !DIExpression()), !dbg !1516
  %68 = load double, ptr %5, align 8, !dbg !1566, !tbaa !118
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1567
  %70 = load double, ptr %69, align 8, !dbg !1567, !tbaa !125
  %71 = call i32 @gsl_sf_exp_mult_err_e(double noundef %65, double noundef %66, double noundef %68, double noundef %70, ptr noundef %3) #9, !dbg !1568
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1499, metadata !DIExpression()), !dbg !1516
  %72 = load double, ptr %12, align 8, !dbg !1569, !tbaa !118
  %73 = fdiv double %72, 1.250000e+00, !dbg !1570
  %74 = load double, ptr %3, align 8, !dbg !1571, !tbaa !118
  %75 = fmul double %74, %73, !dbg !1571
  store double %75, ptr %3, align 8, !dbg !1571, !tbaa !118
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1572
  %77 = load double, ptr %76, align 8, !dbg !1573, !tbaa !125
  %78 = fmul double %73, %77, !dbg !1573
  store double %78, ptr %76, align 8, !dbg !1573, !tbaa !125
  %79 = icmp eq i32 %71, 0, !dbg !1574
  %80 = icmp eq i32 %15, 0, !dbg !1574
  %81 = select i1 %80, i32 %67, i32 %15, !dbg !1574
  %82 = select i1 %79, i32 %81, i32 %71, !dbg !1574
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !1575
  br label %98

83:                                               ; preds = %57
  %84 = call double @log(double noundef %58) #9, !dbg !1576
  tail call void @llvm.dbg.value(metadata double %84, metadata !1500, metadata !DIExpression()), !dbg !1577
  %85 = load double, ptr %11, align 8, !dbg !1578, !tbaa !118
  %86 = fadd double %84, %85, !dbg !1579
  tail call void @llvm.dbg.value(metadata double %86, metadata !1502, metadata !DIExpression()), !dbg !1577
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1580
  %88 = load double, ptr %87, align 8, !dbg !1580, !tbaa !125
  %89 = call double @llvm.fabs.f64(double %84), !dbg !1581
  %90 = fmul double %89, 0x3CC0000000000000, !dbg !1582
  %91 = fadd double %88, %90, !dbg !1583
  tail call void @llvm.dbg.value(metadata double %91, metadata !1503, metadata !DIExpression()), !dbg !1577
  %92 = load double, ptr %5, align 8, !dbg !1584, !tbaa !118
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1585
  %94 = load double, ptr %93, align 8, !dbg !1585, !tbaa !125
  %95 = call i32 @gsl_sf_exp_mult_err_e(double noundef %86, double noundef %91, double noundef %92, double noundef %94, ptr noundef %3) #9, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !1504, metadata !DIExpression()), !dbg !1577
  %96 = icmp eq i32 %95, 0, !dbg !1587
  %97 = select i1 %96, i32 %15, i32 %95, !dbg !1587
  br label %98

98:                                               ; preds = %83, %63
  %99 = phi i32 [ %82, %63 ], [ %97, %83 ], !dbg !1588
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !1589
  br label %100

100:                                              ; preds = %98, %55
  %101 = phi i32 [ %56, %55 ], [ %99, %98 ], !dbg !1590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1591
  ret i32 %101, !dbg !1591
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1592 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1624
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1616, metadata !DIExpression(), metadata !1625, metadata ptr %6, metadata !DIExpression()), !dbg !1626
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1617, metadata !DIExpression(), metadata !1627, metadata ptr %7, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %0, metadata !1594, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata double %1, metadata !1595, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata double %2, metadata !1596, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1597, metadata !DIExpression()), !dbg !1628
  %8 = fsub double %1, %0, !dbg !1629
  tail call void @llvm.dbg.value(metadata double %8, metadata !1598, metadata !DIExpression()), !dbg !1628
  %9 = fsub double 1.000000e+00, %0, !dbg !1630
  tail call void @llvm.dbg.value(metadata double %9, metadata !1599, metadata !DIExpression()), !dbg !1628
  %10 = fadd double %0, 1.000000e+00, !dbg !1631
  %11 = fsub double %10, %1, !dbg !1632
  tail call void @llvm.dbg.value(metadata double %11, metadata !1600, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata double poison, metadata !1601, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata double poison, metadata !1602, metadata !DIExpression()), !dbg !1628
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !1633
  tail call void @llvm.dbg.value(metadata double %12, metadata !1603, metadata !DIExpression()), !dbg !1628
  %13 = tail call double @llvm.fabs.f64(double %2), !dbg !1634
  tail call void @llvm.dbg.value(metadata double %13, metadata !1604, metadata !DIExpression()), !dbg !1628
  %14 = fcmp oeq double %0, 0.000000e+00, !dbg !1635
  br i1 %14, label %15, label %17, !dbg !1636

15:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1637, !tbaa !118
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1639
  store double 0.000000e+00, ptr %16, align 8, !dbg !1640, !tbaa !125
  br label %264, !dbg !1641

17:                                               ; preds = %4
  %18 = fcmp oeq double %0, 1.000000e+00, !dbg !1642
  %19 = fcmp oge double %1, 1.000000e+00
  %20 = and i1 %18, %19, !dbg !1643
  br i1 %20, label %21, label %154, !dbg !1643

21:                                               ; preds = %17
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1644, metadata !DIExpression(), metadata !1624, metadata ptr %5, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata double %1, metadata !1656, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata double %2, metadata !1657, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %3, metadata !1658, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata double %13, metadata !1659, metadata !DIExpression()), !dbg !1668
  %22 = fadd double %1, 1.000000e-01, !dbg !1669
  %23 = tail call double @llvm.floor.f64(double %22), !dbg !1670
  call void @llvm.dbg.value(metadata double %23, metadata !1660, metadata !DIExpression()), !dbg !1668
  %24 = fcmp olt double %1, 1.000000e+00, !dbg !1671
  br i1 %24, label %25, label %27, !dbg !1672

25:                                               ; preds = %21
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1673, !tbaa !118
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1673
  store double 0x7FF8000000000000, ptr %26, align 8, !dbg !1673, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 1) #9, !dbg !1676
  br label %264, !dbg !1676

27:                                               ; preds = %21
  %28 = fcmp oeq double %1, 1.000000e+00, !dbg !1678
  br i1 %28, label %29, label %31, !dbg !1679

29:                                               ; preds = %27
  %30 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #9, !dbg !1680
  br label %264, !dbg !1682

31:                                               ; preds = %27
  %32 = fmul double %13, 1.400000e+00, !dbg !1683
  %33 = fcmp ugt double %32, %1, !dbg !1684
  br i1 %33, label %58, label %34, !dbg !1685

34:                                               ; preds = %31, %34
  %35 = phi double [ %50, %34 ], [ 1.000000e+00, %31 ]
  %36 = phi double [ %42, %34 ], [ 1.000000e+00, %31 ]
  %37 = phi double [ %49, %34 ], [ 0.000000e+00, %31 ]
  %38 = phi double [ %43, %34 ], [ 1.000000e+00, %31 ]
  call void @llvm.dbg.value(metadata double %35, metadata !1686, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata double %36, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata double %37, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata double %38, metadata !1693, metadata !DIExpression()), !dbg !1696
  %39 = fadd double %35, %1, !dbg !1699
  %40 = fadd double %39, -1.000000e+00, !dbg !1701
  %41 = fdiv double %2, %40, !dbg !1702
  %42 = fmul double %36, %41, !dbg !1703
  call void @llvm.dbg.value(metadata double %42, metadata !1695, metadata !DIExpression()), !dbg !1696
  %43 = fadd double %38, %42, !dbg !1704
  call void @llvm.dbg.value(metadata double %43, metadata !1693, metadata !DIExpression()), !dbg !1696
  %44 = tail call double @llvm.fabs.f64(double %42), !dbg !1705
  %45 = fmul double %44, 0x3CE0000000000000, !dbg !1706
  %46 = tail call double @llvm.fabs.f64(double %43), !dbg !1707
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !1708
  %48 = fadd double %45, %47, !dbg !1709
  %49 = fadd double %37, %48, !dbg !1710
  call void @llvm.dbg.value(metadata double %49, metadata !1694, metadata !DIExpression()), !dbg !1696
  %50 = fadd double %35, 1.000000e+00, !dbg !1711
  call void @llvm.dbg.value(metadata double %50, metadata !1686, metadata !DIExpression()), !dbg !1696
  %51 = fdiv double %42, %43, !dbg !1712
  %52 = tail call double @llvm.fabs.f64(double %51), !dbg !1713
  %53 = fcmp ogt double %52, 0x3C90000000000000, !dbg !1714
  br i1 %53, label %34, label %54, !dbg !1715, !llvm.loop !1716

54:                                               ; preds = %34
  store double %43, ptr %3, align 8, !dbg !1718, !tbaa !118
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1719
  %56 = fmul double %44, 2.000000e+00, !dbg !1720
  %57 = fadd double %56, %49, !dbg !1721
  store double %57, ptr %55, align 8, !dbg !1721, !tbaa !125
  br label %264, !dbg !1722

58:                                               ; preds = %31
  %59 = fsub double %1, %23, !dbg !1723
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !1724
  %61 = fcmp olt double %60, 0x3D19000000000000, !dbg !1725
  %62 = fcmp olt double %23, 0x41DFFFFFFFC00000
  %63 = and i1 %62, %61, !dbg !1726
  br i1 %63, label %64, label %79, !dbg !1726

64:                                               ; preds = %58
  %65 = fptosi double %23 to i32, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %65, metadata !1729, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata double %2, metadata !1734, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %3, metadata !1735, metadata !DIExpression()), !dbg !1736
  %66 = icmp slt i32 %65, 1, !dbg !1738
  br i1 %66, label %67, label %69, !dbg !1740

67:                                               ; preds = %64
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1741, !tbaa !118
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1741
  store double 0x7FF8000000000000, ptr %68, align 8, !dbg !1741, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 1) #9, !dbg !1744
  br label %264, !dbg !1744

69:                                               ; preds = %64
  switch i32 %65, label %76 [
    i32 1, label %70
    i32 2, label %72
    i32 3, label %74
  ], !dbg !1746

70:                                               ; preds = %69
  %71 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #9, !dbg !1747
  br label %264, !dbg !1750

72:                                               ; preds = %69
  %73 = tail call i32 @gsl_sf_exprel_e(double noundef %2, ptr noundef %3) #9, !dbg !1751
  br label %264, !dbg !1754

74:                                               ; preds = %69
  %75 = tail call i32 @gsl_sf_exprel_2_e(double noundef %2, ptr noundef %3) #9, !dbg !1755
  br label %264, !dbg !1758

76:                                               ; preds = %69
  %77 = add nsw i32 %65, -1, !dbg !1759
  %78 = tail call i32 @gsl_sf_exprel_n_e(i32 noundef %77, double noundef %2, ptr noundef %3) #9, !dbg !1761
  br label %264, !dbg !1762

79:                                               ; preds = %58
  %80 = fcmp ogt double %2, 0.000000e+00, !dbg !1763
  br i1 %80, label %81, label %137, !dbg !1764

81:                                               ; preds = %79
  %82 = fcmp ogt double %2, 1.000000e+02, !dbg !1765
  %83 = fmul double %2, 7.500000e-01
  %84 = fcmp ogt double %83, %1
  %85 = and i1 %82, %84, !dbg !1766
  br i1 %85, label %86, label %88, !dbg !1766

86:                                               ; preds = %81
  %87 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1767
  br label %264, !dbg !1769

88:                                               ; preds = %81
  %89 = fcmp olt double %1, 1.000000e+05, !dbg !1770
  br i1 %89, label %90, label %122, !dbg !1771

90:                                               ; preds = %88
  %91 = fmul double %2, 1.400000e+00, !dbg !1772
  %92 = fsub double %91, %1, !dbg !1773
  %93 = tail call double @llvm.ceil.f64(double %92), !dbg !1774
  %94 = fadd double %93, 1.000000e+00, !dbg !1775
  call void @llvm.dbg.value(metadata double %94, metadata !1661, metadata !DIExpression()), !dbg !1665
  %95 = fadd double %94, %1, !dbg !1776
  call void @llvm.dbg.value(metadata double %95, metadata !1662, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1777
  call fastcc void @hyperg_1F1_1_series(double noundef %95, double noundef %2, ptr noundef nonnull %5), !dbg !1778
  call void @llvm.dbg.value(metadata i32 0, metadata !1663, metadata !DIExpression()), !dbg !1665
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1779
  %97 = load double, ptr %96, align 8, !dbg !1779, !tbaa !125
  %98 = load double, ptr %5, align 8, !dbg !1780, !tbaa !118
  %99 = tail call double @llvm.fabs.f64(double %98), !dbg !1781
  %100 = fdiv double %97, %99, !dbg !1782
  call void @llvm.dbg.value(metadata double %100, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata double %95, metadata !1662, metadata !DIExpression()), !dbg !1665
  %101 = fcmp ogt double %95, %22, !dbg !1783
  br i1 %101, label %102, label %112, !dbg !1784

102:                                              ; preds = %90, %102
  %103 = phi double [ %105, %102 ], [ %95, %90 ]
  %104 = phi double [ %108, %102 ], [ %98, %90 ]
  call void @llvm.dbg.value(metadata double %103, metadata !1662, metadata !DIExpression()), !dbg !1665
  %105 = fadd double %103, -1.000000e+00, !dbg !1785
  call void @llvm.dbg.value(metadata double %105, metadata !1662, metadata !DIExpression()), !dbg !1665
  %106 = fdiv double %2, %105, !dbg !1787
  %107 = fmul double %104, %106, !dbg !1788
  %108 = fadd double %107, 1.000000e+00, !dbg !1789
  call void @llvm.dbg.assign(metadata double %108, metadata !1644, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1790, metadata ptr %5, metadata !DIExpression()), !dbg !1665
  %109 = fcmp ogt double %105, %22, !dbg !1783
  br i1 %109, label %102, label %110, !dbg !1784, !llvm.loop !1791

110:                                              ; preds = %102
  %111 = tail call double @llvm.fabs.f64(double %108), !dbg !1793
  br label %112, !dbg !1794

112:                                              ; preds = %110, %90
  %113 = phi double [ %111, %110 ], [ %99, %90 ], !dbg !1793
  %114 = phi double [ %108, %110 ], [ %98, %90 ]
  store double %114, ptr %3, align 8, !dbg !1795, !tbaa !118
  %115 = fmul double %100, %113, !dbg !1796
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1797
  %117 = tail call double @llvm.fabs.f64(double %94), !dbg !1798
  %118 = fadd double %117, 1.000000e+00, !dbg !1799
  %119 = fmul double %118, 0x3CC0000000000000, !dbg !1800
  %120 = fmul double %119, %113, !dbg !1801
  %121 = fadd double %115, %120, !dbg !1802
  store double %121, ptr %116, align 8, !dbg !1802, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1803
  br label %264

122:                                              ; preds = %88
  %123 = tail call double @llvm.fabs.f64(double %1), !dbg !1804
  %124 = fcmp olt double %13, %123, !dbg !1806
  br i1 %124, label %125, label %132, !dbg !1807

125:                                              ; preds = %122
  %126 = tail call double @llvm.sqrt.f64(double %123), !dbg !1808
  %127 = fsub double %1, %2, !dbg !1809
  %128 = tail call double @llvm.fabs.f64(double %127), !dbg !1810
  %129 = fmul double %126, %128, !dbg !1811
  %130 = fcmp olt double %13, %129, !dbg !1812
  br i1 %130, label %131, label %132, !dbg !1813

131:                                              ; preds = %125
  tail call fastcc void @hyperg_1F1_largebx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1814
  br label %264, !dbg !1816

132:                                              ; preds = %125, %122
  %133 = fcmp ogt double %13, %123, !dbg !1817
  br i1 %133, label %134, label %135, !dbg !1819

134:                                              ; preds = %132
  tail call fastcc void @hyperg_1F1_1_series(double noundef %1, double noundef %2, ptr noundef %3), !dbg !1820
  br label %264, !dbg !1822

135:                                              ; preds = %132
  %136 = tail call fastcc i32 @hyperg_1F1_large2bm4a(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1823
  br label %264, !dbg !1825

137:                                              ; preds = %79
  %138 = fcmp olt double %13, 1.000000e+01, !dbg !1826
  %139 = fcmp olt double %1, 1.000000e+01
  %140 = and i1 %139, %138, !dbg !1829
  br i1 %140, label %141, label %142, !dbg !1829

141:                                              ; preds = %137
  tail call fastcc void @hyperg_1F1_1_series(double noundef %1, double noundef %2, ptr noundef %3), !dbg !1830
  br label %264, !dbg !1832

142:                                              ; preds = %137
  %143 = fcmp ult double %13, 1.000000e+02, !dbg !1833
  br i1 %143, label %153, label %144, !dbg !1835

144:                                              ; preds = %142
  %145 = fsub double 2.000000e+00, %1, !dbg !1836
  %146 = tail call double @llvm.fabs.f64(double %145), !dbg !1837
  call void @llvm.dbg.value(metadata double %146, metadata !160, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !1838
  %147 = fcmp ogt double %146, 1.000000e+00, !dbg !1840
  %148 = select i1 %147, double %146, double 1.000000e+00, !dbg !1840
  %149 = fmul double %13, 0x3FEFAE147AE147AE, !dbg !1841
  %150 = fcmp olt double %148, %149, !dbg !1842
  br i1 %150, label %151, label %153, !dbg !1843

151:                                              ; preds = %144
  %152 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1844
  br label %264, !dbg !1846

153:                                              ; preds = %144, %142
  tail call fastcc void @hyperg_1F1_luke(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1847
  br label %264, !dbg !1849

154:                                              ; preds = %17
  %155 = fcmp oeq double %0, -1.000000e+00, !dbg !1850
  br i1 %155, label %156, label %167, !dbg !1851

156:                                              ; preds = %154
  %157 = fdiv double -1.000000e+00, %1, !dbg !1852
  %158 = fmul double %157, %2, !dbg !1854
  %159 = fadd double %158, 1.000000e+00, !dbg !1855
  store double %159, ptr %3, align 8, !dbg !1856, !tbaa !118
  %160 = tail call double @llvm.fabs.f64(double %158), !dbg !1857
  %161 = fadd double %160, 1.000000e+00, !dbg !1858
  %162 = fmul double %161, 0x3CB0000000000000, !dbg !1859
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1860
  %164 = tail call double @llvm.fabs.f64(double %159), !dbg !1861
  %165 = fmul double %164, 0x3CC0000000000000, !dbg !1862
  %166 = fadd double %162, %165, !dbg !1863
  store double %166, ptr %163, align 8, !dbg !1863, !tbaa !125
  br label %264, !dbg !1864

167:                                              ; preds = %154
  %168 = fmul double %13, 1.400000e+00, !dbg !1865
  %169 = fcmp ugt double %168, %1, !dbg !1866
  br i1 %169, label %172, label %170, !dbg !1867

170:                                              ; preds = %167
  %171 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !1868
  br label %264, !dbg !1870

172:                                              ; preds = %167
  %173 = fcmp ogt double %2, 0.000000e+00, !dbg !1871
  br i1 %173, label %174, label %248, !dbg !1872

174:                                              ; preds = %172
  %175 = fcmp ogt double %2, 1.000000e+02, !dbg !1873
  br i1 %175, label %176, label %183, !dbg !1874

176:                                              ; preds = %174
  %177 = fmul double %9, %8, !dbg !1875
  %178 = tail call double @llvm.fabs.f64(double %177), !dbg !1875
  %179 = fmul double %2, 5.000000e-01, !dbg !1876
  %180 = fcmp olt double %178, %179, !dbg !1877
  br i1 %180, label %181, label %183, !dbg !1878

181:                                              ; preds = %176
  %182 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1879
  br label %264, !dbg !1881

183:                                              ; preds = %176, %174
  %184 = fcmp olt double %1, 5.000000e+06, !dbg !1882
  br i1 %184, label %185, label %234, !dbg !1883

185:                                              ; preds = %183
  %186 = fmul double %2, 1.400000e+00, !dbg !1884
  %187 = fsub double %186, %1, !dbg !1885
  %188 = tail call double @llvm.ceil.f64(double %187), !dbg !1886
  %189 = fadd double %188, 1.000000e+00, !dbg !1887
  tail call void @llvm.dbg.value(metadata double %189, metadata !1605, metadata !DIExpression()), !dbg !1626
  %190 = fadd double %189, %1, !dbg !1888
  tail call void @llvm.dbg.value(metadata double %190, metadata !1615, metadata !DIExpression()), !dbg !1626
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1889
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1890
  %191 = fadd double %190, 1.000000e+00, !dbg !1891
  %192 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %191, double noundef %2, ptr noundef nonnull %6) #9, !dbg !1892
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !1621, metadata !DIExpression()), !dbg !1626
  %193 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %190, double noundef %2, ptr noundef nonnull %7) #9, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !1622, metadata !DIExpression()), !dbg !1626
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1894
  %195 = load double, ptr %194, align 8, !dbg !1894, !tbaa !125
  %196 = load double, ptr %6, align 8, !dbg !1895, !tbaa !118
  %197 = fdiv double %195, %196, !dbg !1896
  %198 = call double @llvm.fabs.f64(double %197), !dbg !1897
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1898
  %200 = load double, ptr %199, align 8, !dbg !1898, !tbaa !125
  %201 = load double, ptr %7, align 8, !dbg !1899, !tbaa !118
  %202 = fdiv double %200, %201, !dbg !1900
  %203 = call double @llvm.fabs.f64(double %202), !dbg !1901
  %204 = fadd double %198, %203, !dbg !1902
  tail call void @llvm.dbg.value(metadata double %204, metadata !1623, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %196, metadata !1618, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %201, metadata !1619, metadata !DIExpression()), !dbg !1626
  %205 = fadd double %1, 1.000000e-01
  tail call void @llvm.dbg.value(metadata double %190, metadata !1615, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %196, metadata !1618, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %201, metadata !1619, metadata !DIExpression()), !dbg !1626
  %206 = fcmp ogt double %190, %205, !dbg !1903
  br i1 %206, label %207, label %222, !dbg !1904

207:                                              ; preds = %185, %207
  %208 = phi double [ %219, %207 ], [ %190, %185 ]
  %209 = phi double [ %210, %207 ], [ %196, %185 ]
  %210 = phi double [ %220, %207 ], [ %201, %185 ]
  tail call void @llvm.dbg.value(metadata double %208, metadata !1615, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %209, metadata !1618, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %210, metadata !1619, metadata !DIExpression()), !dbg !1626
  %211 = fadd double %208, %2, !dbg !1905
  %212 = fadd double %211, -1.000000e+00, !dbg !1907
  %213 = fmul double %210, %212, !dbg !1908
  %214 = fsub double %208, %0, !dbg !1909
  %215 = fmul double %214, %2, !dbg !1910
  %216 = fdiv double %215, %208, !dbg !1911
  %217 = fmul double %209, %216, !dbg !1912
  %218 = fsub double %213, %217, !dbg !1913
  %219 = fadd double %208, -1.000000e+00, !dbg !1914
  %220 = fdiv double %218, %219, !dbg !1915
  tail call void @llvm.dbg.value(metadata double %220, metadata !1620, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %219, metadata !1615, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %210, metadata !1618, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata double %220, metadata !1619, metadata !DIExpression()), !dbg !1626
  %221 = fcmp ogt double %219, %205, !dbg !1903
  br i1 %221, label %207, label %222, !dbg !1904, !llvm.loop !1916

222:                                              ; preds = %207, %185
  %223 = phi double [ %201, %185 ], [ %220, %207 ], !dbg !1626
  store double %223, ptr %3, align 8, !dbg !1918, !tbaa !118
  %224 = call double @llvm.fabs.f64(double %189), !dbg !1919
  %225 = fadd double %224, 1.000000e+00, !dbg !1920
  %226 = fmul double %225, %204, !dbg !1921
  %227 = call double @llvm.fabs.f64(double %223), !dbg !1922
  %228 = fmul double %226, %227, !dbg !1923
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1924
  %230 = fmul double %227, 0x3CC0000000000000, !dbg !1925
  %231 = fadd double %228, %230, !dbg !1926
  store double %231, ptr %229, align 8, !dbg !1926, !tbaa !125
  %232 = icmp eq i32 %192, 0, !dbg !1927
  %233 = select i1 %232, i32 %193, i32 %192, !dbg !1927
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1928
  br label %264

234:                                              ; preds = %183
  %235 = tail call double @llvm.fabs.f64(double %1), !dbg !1929
  %236 = fcmp olt double %13, %235, !dbg !1931
  br i1 %236, label %237, label %246, !dbg !1932

237:                                              ; preds = %234
  %238 = fmul double %0, %2, !dbg !1933
  %239 = tail call double @llvm.fabs.f64(double %238), !dbg !1934
  %240 = tail call double @llvm.sqrt.f64(double %235), !dbg !1935
  %241 = fsub double %1, %2, !dbg !1936
  %242 = tail call double @llvm.fabs.f64(double %241), !dbg !1937
  %243 = fmul double %240, %242, !dbg !1938
  %244 = fcmp olt double %239, %243, !dbg !1939
  br i1 %244, label %245, label %246, !dbg !1940

245:                                              ; preds = %237
  tail call fastcc void @hyperg_1F1_largebx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1941
  br label %264, !dbg !1943

246:                                              ; preds = %237, %234
  %247 = tail call fastcc i32 @hyperg_1F1_large2bm4a(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1944
  br label %264, !dbg !1946

248:                                              ; preds = %172
  %249 = fcmp olt double %13, 1.000000e+01, !dbg !1947
  %250 = fcmp olt double %1, 1.000000e+01
  %251 = and i1 %250, %249, !dbg !1950
  br i1 %251, label %252, label %254, !dbg !1950

252:                                              ; preds = %248
  %253 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !1951
  br label %264, !dbg !1953

254:                                              ; preds = %248
  %255 = fcmp ult double %13, 1.000000e+02, !dbg !1954
  br i1 %255, label %263, label %256, !dbg !1956

256:                                              ; preds = %254
  %257 = fcmp ogt double %12, 1.000000e+00, !dbg !1957
  %258 = select i1 %257, double %12, double 1.000000e+00, !dbg !1957
  %259 = fmul double %13, 0x3FEFAE147AE147AE, !dbg !1958
  %260 = fcmp olt double %258, %259, !dbg !1959
  br i1 %260, label %261, label %263, !dbg !1960

261:                                              ; preds = %256
  %262 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1961
  br label %264, !dbg !1963

263:                                              ; preds = %256, %254
  tail call fastcc void @hyperg_1F1_luke(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1964
  br label %264, !dbg !1966

264:                                              ; preds = %153, %151, %141, %135, %134, %131, %112, %86, %76, %74, %72, %70, %67, %54, %29, %25, %263, %261, %252, %246, %245, %222, %181, %170, %156, %15
  %265 = phi i32 [ 0, %15 ], [ 0, %156 ], [ %171, %170 ], [ %182, %181 ], [ %233, %222 ], [ 0, %245 ], [ %247, %246 ], [ %253, %252 ], [ %262, %261 ], [ 0, %263 ], [ 1, %25 ], [ %30, %29 ], [ 0, %54 ], [ %87, %86 ], [ 0, %112 ], [ 0, %131 ], [ 0, %134 ], [ %136, %135 ], [ 0, %141 ], [ %152, %151 ], [ 0, %153 ], [ 1, %67 ], [ %71, %70 ], [ %73, %72 ], [ %75, %74 ], [ %78, %76 ], !dbg !1967
  ret i32 %265, !dbg !1968
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_pos(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1969 {
  %5 = alloca double, align 8, !DIAssignID !2081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1976, metadata !DIExpression(), metadata !2081, metadata ptr %5, metadata !DIExpression()), !dbg !2082
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1990, metadata !DIExpression(), metadata !2083, metadata ptr %6, metadata !DIExpression()), !dbg !2082
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1993, metadata !DIExpression(), metadata !2084, metadata ptr %7, metadata !DIExpression()), !dbg !2085
  %8 = alloca double, align 8, !DIAssignID !2086
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1997, metadata !DIExpression(), metadata !2086, metadata ptr %8, metadata !DIExpression()), !dbg !2085
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2087
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2011, metadata !DIExpression(), metadata !2087, metadata ptr %9, metadata !DIExpression()), !dbg !2088
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2089
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2012, metadata !DIExpression(), metadata !2089, metadata ptr %10, metadata !DIExpression()), !dbg !2088
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2028, metadata !DIExpression(), metadata !2090, metadata ptr %11, metadata !DIExpression()), !dbg !2091
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2029, metadata !DIExpression(), metadata !2092, metadata ptr %12, metadata !DIExpression()), !dbg !2091
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2093
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2046, metadata !DIExpression(), metadata !2093, metadata ptr %13, metadata !DIExpression()), !dbg !2094
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2095
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2047, metadata !DIExpression(), metadata !2095, metadata ptr %14, metadata !DIExpression()), !dbg !2094
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2096
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2073, metadata !DIExpression(), metadata !2096, metadata ptr %15, metadata !DIExpression()), !dbg !2097
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2075, metadata !DIExpression(), metadata !2098, metadata ptr %16, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %0, metadata !1971, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double %1, metadata !1972, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata double %2, metadata !1973, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1974, metadata !DIExpression()), !dbg !2099
  %17 = tail call double @llvm.fabs.f64(double %2), !dbg !2100
  tail call void @llvm.dbg.value(metadata double %17, metadata !1975, metadata !DIExpression()), !dbg !2099
  %18 = fcmp olt double %1, 1.000000e+01, !dbg !2101
  %19 = fcmp olt double %0, 1.000000e+01
  %20 = and i1 %19, %18, !dbg !2102
  %21 = fcmp olt double %17, 5.000000e+00
  %22 = and i1 %20, %21, !dbg !2102
  %23 = fmul double %17, %0
  %24 = fcmp olt double %23, %1
  %25 = or i1 %22, %24, !dbg !2102
  br i1 %25, label %29, label %26, !dbg !2102

26:                                               ; preds = %4
  %27 = fcmp ogt double %1, %0, !dbg !2103
  %28 = and i1 %27, %21, !dbg !2104
  br i1 %28, label %29, label %31, !dbg !2104

29:                                               ; preds = %26, %4
  %30 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !2105
  br label %455, !dbg !2107

31:                                               ; preds = %26
  %32 = fcmp olt double %2, -1.000000e+02, !dbg !2108
  br i1 %32, label %33, label %47, !dbg !2109

33:                                               ; preds = %31
  %34 = tail call double @llvm.fabs.f64(double %0), !dbg !2110
  tail call void @llvm.dbg.value(metadata double %34, metadata !160, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2111
  %35 = fcmp ogt double %34, 1.000000e+00, !dbg !2113
  %36 = select i1 %35, double %34, double 1.000000e+00, !dbg !2113
  %37 = fadd double %0, 1.000000e+00, !dbg !2114
  %38 = fsub double %37, %1, !dbg !2115
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !2116
  tail call void @llvm.dbg.value(metadata double %39, metadata !160, metadata !DIExpression()), !dbg !2117
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2117
  %40 = fcmp ogt double %39, 1.000000e+00, !dbg !2119
  %41 = select i1 %40, double %39, double 1.000000e+00, !dbg !2119
  %42 = fmul double %36, %41, !dbg !2120
  %43 = fmul double %17, 0x3FE6666666666666, !dbg !2121
  %44 = fcmp olt double %42, %43, !dbg !2122
  br i1 %44, label %45, label %47, !dbg !2123

45:                                               ; preds = %33
  %46 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2124
  br label %455, !dbg !2126

47:                                               ; preds = %33, %31
  %48 = fcmp ogt double %2, 1.000000e+02, !dbg !2127
  %49 = fsub double %1, %0, !dbg !2128
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !2128
  br i1 %48, label %51, label %63, !dbg !2129

51:                                               ; preds = %47
  tail call void @llvm.dbg.value(metadata double %50, metadata !160, metadata !DIExpression()), !dbg !2130
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2130
  %52 = fcmp ogt double %50, 1.000000e+00, !dbg !2132
  %53 = select i1 %52, double %50, double 1.000000e+00, !dbg !2132
  %54 = fsub double 1.000000e+00, %0, !dbg !2133
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !2134
  tail call void @llvm.dbg.value(metadata double %55, metadata !160, metadata !DIExpression()), !dbg !2135
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2135
  %56 = fcmp ogt double %55, 1.000000e+00, !dbg !2137
  %57 = select i1 %56, double %55, double 1.000000e+00, !dbg !2137
  %58 = fmul double %57, %53, !dbg !2138
  %59 = fmul double %17, 0x3FE6666666666666, !dbg !2139
  %60 = fcmp olt double %58, %59, !dbg !2140
  br i1 %60, label %61, label %63, !dbg !2141

61:                                               ; preds = %51
  %62 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2142
  br label %455, !dbg !2144

63:                                               ; preds = %47, %51
  %64 = fcmp ugt double %50, 1.000000e+00, !dbg !2145
  br i1 %64, label %68, label %65, !dbg !2146

65:                                               ; preds = %63
  %66 = fsub double %0, %1, !dbg !2147
  %67 = tail call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %66, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2149
  br label %455, !dbg !2150

68:                                               ; preds = %63
  br i1 %27, label %69, label %164, !dbg !2151

69:                                               ; preds = %68
  %70 = fmul double %0, 2.000000e+00, !dbg !2152
  %71 = fadd double %70, %2, !dbg !2153
  %72 = fcmp ugt double %71, %1, !dbg !2154
  br i1 %72, label %116, label %73, !dbg !2155

73:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9, !dbg !2156
  %74 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2157, !range !767
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1983, metadata !DIExpression()), !dbg !2082
  %75 = load double, ptr %5, align 8, !dbg !2158, !tbaa !313
  tail call void @llvm.dbg.value(metadata double poison, metadata !1984, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1985, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double poison, metadata !1986, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double poison, metadata !1987, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1988, metadata !DIExpression()), !dbg !2082
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !2159
  tail call void @llvm.dbg.value(metadata double %0, metadata !1992, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double poison, metadata !1987, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1988, metadata !DIExpression()), !dbg !2082
  %76 = fcmp ogt double %0, 5.000000e-01, !dbg !2160
  br i1 %76, label %77, label %96, !dbg !2163

77:                                               ; preds = %73
  %78 = fdiv double %2, %0, !dbg !2164
  %79 = fmul double %78, %75, !dbg !2165
  %80 = fadd double %79, 1.000000e+00, !dbg !2166
  tail call void @llvm.dbg.value(metadata double %80, metadata !1984, metadata !DIExpression()), !dbg !2082
  %81 = fmul double %80, 0x2000000000000000, !dbg !2167
  tail call void @llvm.dbg.value(metadata double %81, metadata !1986, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %81, metadata !1987, metadata !DIExpression()), !dbg !2082
  br label %82, !dbg !2163

82:                                               ; preds = %77, %82
  %83 = phi double [ %84, %82 ], [ %81, %77 ]
  %84 = phi double [ %93, %82 ], [ 0x2000000000000000, %77 ]
  %85 = phi double [ %94, %82 ], [ %0, %77 ]
  tail call void @llvm.dbg.value(metadata double %83, metadata !1987, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %84, metadata !1988, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %85, metadata !1992, metadata !DIExpression()), !dbg !2082
  %86 = fmul double %85, %83, !dbg !2168
  %87 = fmul double %85, 2.000000e+00, !dbg !2170
  %88 = fsub double %87, %1, !dbg !2171
  %89 = fadd double %88, %2, !dbg !2172
  %90 = fmul double %84, %89, !dbg !2173
  %91 = fsub double %86, %90, !dbg !2174
  %92 = fsub double %1, %85, !dbg !2175
  %93 = fdiv double %91, %92, !dbg !2176
  tail call void @llvm.dbg.value(metadata double %93, metadata !1989, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %84, metadata !1987, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata double %93, metadata !1988, metadata !DIExpression()), !dbg !2082
  %94 = fadd double %85, -1.000000e+00, !dbg !2177
  tail call void @llvm.dbg.value(metadata double %94, metadata !1992, metadata !DIExpression()), !dbg !2082
  %95 = fcmp ogt double %94, 5.000000e-01, !dbg !2160
  br i1 %95, label %82, label %96, !dbg !2163, !llvm.loop !2178

96:                                               ; preds = %82, %73
  %97 = phi double [ %0, %73 ], [ %94, %82 ], !dbg !2180
  %98 = phi double [ 0x2000000000000000, %73 ], [ %93, %82 ], !dbg !2082
  %99 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %97, double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1991, metadata !DIExpression()), !dbg !2082
  %100 = fdiv double 0x2000000000000000, %98, !dbg !2182
  %101 = load double, ptr %6, align 8, !dbg !2183, !tbaa !118
  %102 = fmul double %100, %101, !dbg !2184
  store double %102, ptr %3, align 8, !dbg !2185, !tbaa !118
  %103 = call double @llvm.fabs.f64(double %100), !dbg !2186
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !2187
  %105 = load double, ptr %104, align 8, !dbg !2187, !tbaa !125
  %106 = fmul double %103, %105, !dbg !2188
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2189
  %108 = call double @llvm.fabs.f64(double %0), !dbg !2190
  %109 = fadd double %108, 1.000000e+00, !dbg !2191
  %110 = fmul double %109, 0x3CC0000000000000, !dbg !2192
  %111 = call double @llvm.fabs.f64(double %102), !dbg !2193
  %112 = fmul double %110, %111, !dbg !2194
  %113 = fadd double %106, %112, !dbg !2195
  store double %113, ptr %107, align 8, !dbg !2195, !tbaa !125
  %114 = icmp eq i32 %99, 0, !dbg !2196
  %115 = select i1 %114, i32 %74, i32 %99, !dbg !2196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9, !dbg !2197
  br label %455

116:                                              ; preds = %69
  %117 = fcmp ogt double %71, %1, !dbg !2198
  %118 = fcmp ogt double %1, %2
  %119 = and i1 %118, %117, !dbg !2199
  br i1 %119, label %120, label %164, !dbg !2199

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !2200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9, !dbg !2201
  %121 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2202, !range !767
  tail call void @llvm.dbg.value(metadata i32 %121, metadata !1998, metadata !DIExpression()), !dbg !2085
  %122 = fdiv double %2, %0, !dbg !2203
  %123 = load double, ptr %8, align 8, !dbg !2204, !tbaa !313
  %124 = fmul double %122, %123, !dbg !2205
  %125 = fadd double %124, 1.000000e+00, !dbg !2206
  tail call void @llvm.dbg.value(metadata double %125, metadata !1999, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2000, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !2001, metadata !DIExpression()), !dbg !2085
  %126 = fmul double %125, 0x2000000000000000, !dbg !2207
  tail call void @llvm.dbg.value(metadata double %126, metadata !2002, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double poison, metadata !2004, metadata !DIExpression()), !dbg !2085
  %127 = fadd double %1, -5.000000e-01
  %128 = fadd double %0, 1.000000e+00, !dbg !2208
  tail call void @llvm.dbg.value(metadata double %128, metadata !2004, metadata !DIExpression()), !dbg !2085
  %129 = fcmp olt double %128, %127, !dbg !2210
  br i1 %129, label %130, label %144, !dbg !2212

130:                                              ; preds = %120, %130
  %131 = phi double [ %142, %130 ], [ %128, %120 ]
  %132 = phi double [ %133, %130 ], [ 0x2000000000000000, %120 ]
  %133 = phi double [ %141, %130 ], [ %126, %120 ]
  tail call void @llvm.dbg.value(metadata double %132, metadata !2001, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double %133, metadata !2002, metadata !DIExpression()), !dbg !2085
  %134 = fsub double %1, %131, !dbg !2213
  %135 = fmul double %134, %132, !dbg !2215
  %136 = fmul double %131, 2.000000e+00, !dbg !2216
  %137 = fsub double %136, %1, !dbg !2217
  %138 = fadd double %137, %2, !dbg !2218
  %139 = fmul double %133, %138, !dbg !2219
  %140 = fadd double %135, %139, !dbg !2220
  %141 = fdiv double %140, %131, !dbg !2221
  tail call void @llvm.dbg.value(metadata double %141, metadata !2003, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double %133, metadata !2001, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double %141, metadata !2002, metadata !DIExpression()), !dbg !2085
  tail call void @llvm.dbg.value(metadata double poison, metadata !2004, metadata !DIExpression()), !dbg !2085
  %142 = fadd double %131, 1.000000e+00, !dbg !2208
  tail call void @llvm.dbg.value(metadata double %142, metadata !2004, metadata !DIExpression()), !dbg !2085
  %143 = fcmp olt double %142, %127, !dbg !2210
  br i1 %143, label %130, label %144, !dbg !2212, !llvm.loop !2222

144:                                              ; preds = %130, %120
  %145 = phi double [ %126, %120 ], [ %141, %130 ], !dbg !2085
  %146 = phi double [ %128, %120 ], [ %142, %130 ], !dbg !2208
  %147 = fsub double %146, %1, !dbg !2224
  %148 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %147, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !1996, metadata !DIExpression()), !dbg !2085
  %149 = fdiv double 0x2000000000000000, %145, !dbg !2226
  %150 = load double, ptr %7, align 8, !dbg !2227, !tbaa !118
  %151 = fmul double %149, %150, !dbg !2228
  store double %151, ptr %3, align 8, !dbg !2229, !tbaa !118
  %152 = call double @llvm.fabs.f64(double %149), !dbg !2230
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2231
  %154 = load double, ptr %153, align 8, !dbg !2231, !tbaa !125
  %155 = fmul double %152, %154, !dbg !2232
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2233
  %157 = fadd double %50, 1.000000e+00, !dbg !2234
  %158 = fmul double %157, 0x3CC0000000000000, !dbg !2235
  %159 = call double @llvm.fabs.f64(double %151), !dbg !2236
  %160 = fmul double %158, %159, !dbg !2237
  %161 = fadd double %155, %160, !dbg !2238
  store double %161, ptr %156, align 8, !dbg !2238, !tbaa !125
  %162 = icmp eq i32 %148, 0, !dbg !2239
  %163 = select i1 %162, i32 %121, i32 %148, !dbg !2239
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !2240
  br label %455

164:                                              ; preds = %68, %116
  %165 = fcmp ult double %2, 0.000000e+00, !dbg !2241
  br i1 %165, label %295, label %166, !dbg !2242

166:                                              ; preds = %164
  %167 = fcmp olt double %1, %0, !dbg !2243
  br i1 %167, label %168, label %232, !dbg !2244

168:                                              ; preds = %166
  %169 = fsub double %0, %1, !dbg !2245
  %170 = tail call double @llvm.floor.f64(double %169), !dbg !2246
  tail call void @llvm.dbg.value(metadata double %170, metadata !2005, metadata !DIExpression()), !dbg !2088
  %171 = fsub double %169, %170, !dbg !2247
  tail call void @llvm.dbg.value(metadata double %171, metadata !2010, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !2248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !2249
  %172 = fadd double %171, -1.000000e+00, !dbg !2250
  %173 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %172, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !2013, metadata !DIExpression()), !dbg !2088
  %174 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %171, double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2252
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !2014, metadata !DIExpression()), !dbg !2088
  %175 = load double, ptr %9, align 8, !dbg !2253, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %175, metadata !2015, metadata !DIExpression()), !dbg !2088
  %176 = load double, ptr %10, align 8, !dbg !2254, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %176, metadata !2016, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %175, metadata !2017, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %176, metadata !2018, metadata !DIExpression()), !dbg !2088
  %177 = call double @llvm.fabs.f64(double %175), !dbg !2255
  %178 = call double @llvm.fabs.f64(double %176), !dbg !2256
  %179 = fadd double %177, %178, !dbg !2257
  tail call void @llvm.dbg.value(metadata double %179, metadata !2021, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !2022, metadata !DIExpression()), !dbg !2088
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2258
  %181 = load double, ptr %180, align 8, !dbg !2258, !tbaa !125
  %182 = fdiv double %181, %175, !dbg !2259
  %183 = call double @llvm.fabs.f64(double %182), !dbg !2260
  tail call void @llvm.dbg.value(metadata double %183, metadata !2024, metadata !DIExpression()), !dbg !2088
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2261
  %185 = load double, ptr %184, align 8, !dbg !2261, !tbaa !125
  %186 = fdiv double %185, %176, !dbg !2262
  %187 = call double @llvm.fabs.f64(double %186), !dbg !2263
  tail call void @llvm.dbg.value(metadata double %187, metadata !2025, metadata !DIExpression()), !dbg !2088
  %188 = fadd double %171, %1, !dbg !2264
  tail call void @llvm.dbg.value(metadata double %188, metadata !2020, metadata !DIExpression()), !dbg !2088
  %189 = fadd double %0, -1.000000e-01
  %190 = fcmp olt double %188, %189, !dbg !2266
  br i1 %190, label %191, label %211, !dbg !2268

191:                                              ; preds = %168, %191
  %192 = phi double [ %193, %191 ], [ %175, %168 ]
  %193 = phi double [ %203, %191 ], [ %176, %168 ]
  %194 = phi double [ %209, %191 ], [ %188, %168 ]
  %195 = phi double [ %208, %191 ], [ 0x7FEFFFFFFFFFFFFF, %168 ]
  tail call void @llvm.dbg.value(metadata double %192, metadata !2017, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %193, metadata !2018, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %194, metadata !2020, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %195, metadata !2022, metadata !DIExpression()), !dbg !2088
  %196 = fsub double %1, %194, !dbg !2269
  %197 = fmul double %196, %192, !dbg !2271
  %198 = fmul double %194, 2.000000e+00, !dbg !2272
  %199 = fsub double %198, %1, !dbg !2273
  %200 = fadd double %199, %2, !dbg !2274
  %201 = fmul double %193, %200, !dbg !2275
  %202 = fadd double %197, %201, !dbg !2276
  %203 = fdiv double %202, %194, !dbg !2277
  tail call void @llvm.dbg.value(metadata double %203, metadata !2019, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %193, metadata !2017, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.dbg.value(metadata double %203, metadata !2018, metadata !DIExpression()), !dbg !2088
  %204 = call double @llvm.fabs.f64(double %193), !dbg !2278
  %205 = call double @llvm.fabs.f64(double %203), !dbg !2279
  %206 = fadd double %204, %205, !dbg !2280
  tail call void @llvm.dbg.value(metadata double %206, metadata !2281, metadata !DIExpression()), !dbg !2285
  tail call void @llvm.dbg.value(metadata double %195, metadata !2284, metadata !DIExpression()), !dbg !2285
  %207 = fcmp olt double %206, %195, !dbg !2287
  %208 = select i1 %207, double %206, double %195, !dbg !2287
  tail call void @llvm.dbg.value(metadata double %208, metadata !2022, metadata !DIExpression()), !dbg !2088
  %209 = fadd double %194, 1.000000e+00, !dbg !2288
  tail call void @llvm.dbg.value(metadata double %209, metadata !2020, metadata !DIExpression()), !dbg !2088
  %210 = fcmp olt double %209, %189, !dbg !2266
  br i1 %210, label %191, label %211, !dbg !2268, !llvm.loop !2289

211:                                              ; preds = %191, %168
  %212 = phi double [ %178, %168 ], [ %205, %191 ], !dbg !2291
  %213 = phi double [ 0x7FEFFFFFFFFFFFFF, %168 ], [ %208, %191 ], !dbg !2088
  %214 = phi double [ %176, %168 ], [ %203, %191 ], !dbg !2088
  %215 = fdiv double %179, %213, !dbg !2292
  tail call void @llvm.dbg.value(metadata double %215, metadata !2023, metadata !DIExpression()), !dbg !2088
  store double %214, ptr %3, align 8, !dbg !2293, !tbaa !118
  %216 = fadd double %183, %187, !dbg !2294
  %217 = fadd double %216, 0x3CB0000000000000, !dbg !2295
  %218 = fmul double %217, 2.000000e+00, !dbg !2296
  %219 = fadd double %50, 1.000000e+00, !dbg !2297
  %220 = fmul double %219, %218, !dbg !2298
  %221 = fmul double %220, %212, !dbg !2299
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2300
  %223 = fmul double %216, 2.000000e+00, !dbg !2301
  %224 = fmul double %223, %215, !dbg !2302
  %225 = fmul double %215, %224, !dbg !2303
  %226 = fmul double %225, %212, !dbg !2304
  %227 = fadd double %221, %226, !dbg !2305
  %228 = fmul double %212, 0x3CC0000000000000, !dbg !2306
  %229 = fadd double %228, %227, !dbg !2307
  store double %229, ptr %222, align 8, !dbg !2307, !tbaa !125
  %230 = icmp eq i32 %173, 0, !dbg !2308
  %231 = select i1 %230, i32 %174, i32 %173, !dbg !2308
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !2309
  br label %455

232:                                              ; preds = %166
  %233 = tail call double @llvm.floor.f64(double %0), !dbg !2310
  %234 = fsub double %0, %233, !dbg !2311
  tail call void @llvm.dbg.value(metadata double %234, metadata !2026, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !2312
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !2313
  %235 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %234, double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !2030, metadata !DIExpression()), !dbg !2091
  %236 = fadd double %234, 1.000000e+00, !dbg !2315
  %237 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %236, double noundef %1, double noundef %2, ptr noundef nonnull %12), !dbg !2316
  tail call void @llvm.dbg.value(metadata i32 %237, metadata !2031, metadata !DIExpression()), !dbg !2091
  %238 = load double, ptr %11, align 8, !dbg !2317, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %238, metadata !2032, metadata !DIExpression()), !dbg !2091
  %239 = load double, ptr %12, align 8, !dbg !2318, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %239, metadata !2033, metadata !DIExpression()), !dbg !2091
  %240 = call double @llvm.fabs.f64(double %239), !dbg !2319
  %241 = call double @llvm.fabs.f64(double %238), !dbg !2320
  %242 = fadd double %241, %240, !dbg !2321
  tail call void @llvm.dbg.value(metadata double %242, metadata !2036, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !2037, metadata !DIExpression()), !dbg !2091
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2322
  %244 = load double, ptr %243, align 8, !dbg !2322, !tbaa !125
  %245 = fdiv double %244, %238, !dbg !2323
  %246 = call double @llvm.fabs.f64(double %245), !dbg !2324
  tail call void @llvm.dbg.value(metadata double %246, metadata !2039, metadata !DIExpression()), !dbg !2091
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !2325
  %248 = load double, ptr %247, align 8, !dbg !2325, !tbaa !125
  %249 = fdiv double %248, %239, !dbg !2326
  %250 = call double @llvm.fabs.f64(double %249), !dbg !2327
  tail call void @llvm.dbg.value(metadata double %250, metadata !2040, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %236, metadata !2035, metadata !DIExpression()), !dbg !2091
  %251 = fadd double %0, -1.000000e-01
  %252 = fcmp olt double %236, %251, !dbg !2328
  br i1 %252, label %253, label %273, !dbg !2331

253:                                              ; preds = %232, %253
  %254 = phi double [ %255, %253 ], [ %238, %232 ]
  %255 = phi double [ %265, %253 ], [ %239, %232 ]
  %256 = phi double [ %271, %253 ], [ %236, %232 ]
  %257 = phi double [ %270, %253 ], [ 0x7FEFFFFFFFFFFFFF, %232 ]
  tail call void @llvm.dbg.value(metadata double %254, metadata !2032, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %255, metadata !2033, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %256, metadata !2035, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %257, metadata !2037, metadata !DIExpression()), !dbg !2091
  %258 = fsub double %1, %256, !dbg !2332
  %259 = fmul double %258, %254, !dbg !2334
  %260 = fmul double %256, 2.000000e+00, !dbg !2335
  %261 = fsub double %260, %1, !dbg !2336
  %262 = fadd double %261, %2, !dbg !2337
  %263 = fmul double %255, %262, !dbg !2338
  %264 = fadd double %259, %263, !dbg !2339
  %265 = fdiv double %264, %256, !dbg !2340
  tail call void @llvm.dbg.value(metadata double %265, metadata !2034, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %255, metadata !2032, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata double %265, metadata !2033, metadata !DIExpression()), !dbg !2091
  %266 = call double @llvm.fabs.f64(double %265), !dbg !2341
  %267 = call double @llvm.fabs.f64(double %255), !dbg !2342
  %268 = fadd double %267, %266, !dbg !2343
  tail call void @llvm.dbg.value(metadata double %268, metadata !2281, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata double %257, metadata !2284, metadata !DIExpression()), !dbg !2344
  %269 = fcmp olt double %268, %257, !dbg !2346
  %270 = select i1 %269, double %268, double %257, !dbg !2346
  tail call void @llvm.dbg.value(metadata double %270, metadata !2037, metadata !DIExpression()), !dbg !2091
  %271 = fadd double %256, 1.000000e+00, !dbg !2347
  tail call void @llvm.dbg.value(metadata double %271, metadata !2035, metadata !DIExpression()), !dbg !2091
  %272 = fcmp olt double %271, %251, !dbg !2328
  br i1 %272, label %253, label %273, !dbg !2331, !llvm.loop !2348

273:                                              ; preds = %253, %232
  %274 = phi double [ %240, %232 ], [ %266, %253 ], !dbg !2350
  %275 = phi double [ 0x7FEFFFFFFFFFFFFF, %232 ], [ %270, %253 ], !dbg !2091
  %276 = phi double [ %239, %232 ], [ %265, %253 ], !dbg !2091
  %277 = fdiv double %242, %275, !dbg !2351
  tail call void @llvm.dbg.value(metadata double %277, metadata !2038, metadata !DIExpression()), !dbg !2091
  store double %276, ptr %3, align 8, !dbg !2352, !tbaa !118
  %278 = fadd double %246, %250, !dbg !2353
  %279 = fadd double %278, 0x3CB0000000000000, !dbg !2354
  %280 = fmul double %279, 2.000000e+00, !dbg !2355
  %281 = call double @llvm.fabs.f64(double %0), !dbg !2356
  %282 = fadd double %281, 1.000000e+00, !dbg !2357
  %283 = fmul double %282, %280, !dbg !2358
  %284 = fmul double %283, %274, !dbg !2359
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2360
  %286 = fmul double %278, 2.000000e+00, !dbg !2361
  %287 = fmul double %286, %277, !dbg !2362
  %288 = fmul double %277, %287, !dbg !2363
  %289 = fmul double %288, %274, !dbg !2364
  %290 = fadd double %284, %289, !dbg !2365
  %291 = fmul double %274, 0x3CC0000000000000, !dbg !2366
  %292 = fadd double %291, %290, !dbg !2367
  store double %292, ptr %285, align 8, !dbg !2367, !tbaa !125
  %293 = icmp eq i32 %235, 0, !dbg !2368
  %294 = select i1 %293, i32 %237, i32 %235, !dbg !2368
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !2369
  br label %455

295:                                              ; preds = %164
  %296 = fsub double %1, %2, !dbg !2370
  %297 = fmul double %296, 5.000000e-01, !dbg !2371
  %298 = fcmp ult double %297, %0, !dbg !2372
  %299 = fneg double %2
  %300 = fcmp ugt double %299, %0
  %301 = and i1 %300, %298, !dbg !2373
  br i1 %301, label %369, label %302, !dbg !2373

302:                                              ; preds = %295
  %303 = fsub double %0, %1, !dbg !2374
  %304 = tail call double @llvm.floor.f64(double %303), !dbg !2375
  tail call void @llvm.dbg.value(metadata double %304, metadata !2041, metadata !DIExpression()), !dbg !2094
  %305 = fadd double %304, 1.000000e+00, !dbg !2376
  %306 = fsub double %305, %0, !dbg !2377
  %307 = fadd double %306, %1, !dbg !2378
  tail call void @llvm.dbg.value(metadata double %307, metadata !2045, metadata !DIExpression()), !dbg !2094
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9, !dbg !2379
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9, !dbg !2380
  %308 = fneg double %307, !dbg !2381
  %309 = fadd double %307, %0, !dbg !2382
  %310 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %308, double noundef %309, double noundef %2, ptr noundef nonnull %13), !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 %310, metadata !2048, metadata !DIExpression()), !dbg !2094
  %311 = fsub double 1.000000e+00, %307, !dbg !2384
  %312 = fadd double %309, -1.000000e+00, !dbg !2385
  %313 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %311, double noundef %312, double noundef %2, ptr noundef nonnull %14), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %313, metadata !2049, metadata !DIExpression()), !dbg !2094
  %314 = load double, ptr %13, align 8, !dbg !2387, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %314, metadata !2050, metadata !DIExpression()), !dbg !2094
  %315 = load double, ptr %14, align 8, !dbg !2388, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %315, metadata !2051, metadata !DIExpression()), !dbg !2094
  %316 = call double @llvm.fabs.f64(double %314), !dbg !2389
  %317 = call double @llvm.fabs.f64(double %315), !dbg !2390
  %318 = fadd double %316, %317, !dbg !2391
  tail call void @llvm.dbg.value(metadata double %318, metadata !2054, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !2055, metadata !DIExpression()), !dbg !2094
  %319 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !2392
  %320 = load double, ptr %319, align 8, !dbg !2392, !tbaa !125
  %321 = fdiv double %320, %314, !dbg !2393
  %322 = call double @llvm.fabs.f64(double %321), !dbg !2394
  tail call void @llvm.dbg.value(metadata double %322, metadata !2057, metadata !DIExpression()), !dbg !2094
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !2395
  %324 = load double, ptr %323, align 8, !dbg !2395, !tbaa !125
  %325 = fdiv double %324, %315, !dbg !2396
  %326 = call double @llvm.fabs.f64(double %325), !dbg !2397
  tail call void @llvm.dbg.value(metadata double %326, metadata !2058, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %312, metadata !2053, metadata !DIExpression()), !dbg !2094
  %327 = fadd double %1, 1.000000e-01
  %328 = fcmp ogt double %312, %327, !dbg !2398
  br i1 %328, label %329, label %352, !dbg !2401

329:                                              ; preds = %302, %329
  %330 = phi double [ %350, %329 ], [ 0x7FEFFFFFFFFFFFFF, %302 ]
  %331 = phi double [ %333, %329 ], [ %314, %302 ]
  %332 = phi double [ %343, %329 ], [ %312, %302 ]
  %333 = phi double [ %345, %329 ], [ %315, %302 ]
  tail call void @llvm.dbg.value(metadata double %330, metadata !2055, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %331, metadata !2050, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %332, metadata !2053, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %333, metadata !2051, metadata !DIExpression()), !dbg !2094
  %334 = fneg double %332, !dbg !2402
  %335 = fsub double 1.000000e+00, %332, !dbg !2404
  %336 = fsub double %335, %2, !dbg !2405
  %337 = fmul double %336, %334, !dbg !2406
  %338 = fmul double %333, %337, !dbg !2407
  %339 = fsub double %332, %0, !dbg !2408
  %340 = fmul double %339, %2, !dbg !2409
  %341 = fmul double %331, %340, !dbg !2410
  %342 = fsub double %338, %341, !dbg !2411
  %343 = fadd double %332, -1.000000e+00, !dbg !2412
  %344 = fmul double %332, %343, !dbg !2413
  %345 = fdiv double %342, %344, !dbg !2414
  tail call void @llvm.dbg.value(metadata double %345, metadata !2052, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %333, metadata !2050, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %345, metadata !2051, metadata !DIExpression()), !dbg !2094
  %346 = call double @llvm.fabs.f64(double %333), !dbg !2415
  %347 = call double @llvm.fabs.f64(double %345), !dbg !2416
  %348 = fadd double %346, %347, !dbg !2417
  tail call void @llvm.dbg.value(metadata double %348, metadata !2281, metadata !DIExpression()), !dbg !2418
  tail call void @llvm.dbg.value(metadata double %330, metadata !2284, metadata !DIExpression()), !dbg !2418
  %349 = fcmp olt double %348, %330, !dbg !2420
  %350 = select i1 %349, double %348, double %330, !dbg !2420
  tail call void @llvm.dbg.value(metadata double %350, metadata !2055, metadata !DIExpression()), !dbg !2094
  tail call void @llvm.dbg.value(metadata double %343, metadata !2053, metadata !DIExpression()), !dbg !2094
  %351 = fcmp ogt double %343, %327, !dbg !2398
  br i1 %351, label %329, label %352, !dbg !2401, !llvm.loop !2421

352:                                              ; preds = %329, %302
  %353 = phi double [ %317, %302 ], [ %347, %329 ], !dbg !2423
  %354 = phi double [ %315, %302 ], [ %345, %329 ], !dbg !2094
  %355 = phi double [ 0x7FEFFFFFFFFFFFFF, %302 ], [ %350, %329 ], !dbg !2094
  %356 = fdiv double %318, %355, !dbg !2424
  tail call void @llvm.dbg.value(metadata double %356, metadata !2056, metadata !DIExpression()), !dbg !2094
  store double %354, ptr %3, align 8, !dbg !2425, !tbaa !118
  %357 = fadd double %322, %326, !dbg !2426
  %358 = fadd double %357, 0x3CB0000000000000, !dbg !2427
  %359 = fmul double %358, 2.000000e+00, !dbg !2428
  %360 = fadd double %50, 1.000000e+00, !dbg !2429
  %361 = fmul double %360, %359, !dbg !2430
  %362 = fmul double %361, %353, !dbg !2431
  %363 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2432
  %364 = fmul double %356, %356, !dbg !2433
  %365 = fadd double %364, 1.000000e+00, !dbg !2434
  %366 = fmul double %362, %365, !dbg !2435
  store double %366, ptr %363, align 8, !dbg !2435, !tbaa !125
  %367 = icmp eq i32 %310, 0, !dbg !2436
  %368 = select i1 %367, i32 %313, i32 %310, !dbg !2436
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9, !dbg !2437
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9, !dbg !2437
  br label %455

369:                                              ; preds = %295
  %370 = tail call double @llvm.floor.f64(double %0), !dbg !2438
  %371 = fsub double %0, %370, !dbg !2439
  tail call void @llvm.dbg.value(metadata double %371, metadata !2059, metadata !DIExpression()), !dbg !2440
  %372 = tail call double @llvm.floor.f64(double %297), !dbg !2441
  %373 = fadd double %371, %372, !dbg !2442
  tail call void @llvm.dbg.value(metadata double %373, metadata !2061, metadata !DIExpression()), !dbg !2440
  %374 = fsub double %373, %1, !dbg !2443
  %375 = tail call double @llvm.floor.f64(double %374), !dbg !2444
  tail call void @llvm.dbg.value(metadata double %375, metadata !2062, metadata !DIExpression()), !dbg !2440
  %376 = fadd double %375, 1.000000e+00, !dbg !2445
  %377 = fsub double %376, %373, !dbg !2446
  %378 = fadd double %377, %1, !dbg !2447
  tail call void @llvm.dbg.value(metadata double %378, metadata !2063, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9, !dbg !2448
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9, !dbg !2449
  %379 = fneg double %378, !dbg !2450
  %380 = fadd double %373, %378, !dbg !2451
  %381 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %379, double noundef %380, double noundef %2, ptr noundef nonnull %15), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %381, metadata !2076, metadata !DIExpression()), !dbg !2097
  %382 = fsub double 1.000000e+00, %378, !dbg !2453
  %383 = fadd double %380, -1.000000e+00, !dbg !2454
  %384 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %382, double noundef %383, double noundef %2, ptr noundef nonnull %16), !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !2077, metadata !DIExpression()), !dbg !2097
  %385 = load double, ptr %15, align 8, !dbg !2456, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %385, metadata !2078, metadata !DIExpression()), !dbg !2097
  %386 = load double, ptr %16, align 8, !dbg !2457, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %386, metadata !2079, metadata !DIExpression()), !dbg !2097
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !2458
  %388 = load double, ptr %387, align 8, !dbg !2458, !tbaa !125
  %389 = fdiv double %388, %385, !dbg !2459
  %390 = call double @llvm.fabs.f64(double %389), !dbg !2460
  %391 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !2461
  %392 = load double, ptr %391, align 8, !dbg !2461, !tbaa !125
  %393 = fdiv double %392, %386, !dbg !2462
  %394 = call double @llvm.fabs.f64(double %393), !dbg !2463
  %395 = fadd double %390, %394, !dbg !2464
  tail call void @llvm.dbg.value(metadata double %395, metadata !2072, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %383, metadata !2071, metadata !DIExpression()), !dbg !2440
  %396 = fadd double %1, 1.000000e-01
  %397 = fcmp ogt double %383, %396, !dbg !2465
  br i1 %397, label %398, label %415, !dbg !2468

398:                                              ; preds = %369, %398
  %399 = phi double [ %413, %398 ], [ %386, %369 ]
  %400 = phi double [ %399, %398 ], [ %385, %369 ]
  %401 = phi double [ %411, %398 ], [ %383, %369 ]
  tail call void @llvm.dbg.value(metadata double %399, metadata !2079, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %400, metadata !2078, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %401, metadata !2071, metadata !DIExpression()), !dbg !2440
  %402 = fneg double %401, !dbg !2469
  %403 = fsub double 1.000000e+00, %401, !dbg !2471
  %404 = fsub double %403, %2, !dbg !2472
  %405 = fmul double %404, %402, !dbg !2473
  %406 = fmul double %399, %405, !dbg !2474
  %407 = fsub double %401, %373, !dbg !2475
  %408 = fmul double %407, %2, !dbg !2476
  %409 = fmul double %400, %408, !dbg !2477
  %410 = fsub double %406, %409, !dbg !2478
  %411 = fadd double %401, -1.000000e+00, !dbg !2479
  %412 = fmul double %401, %411, !dbg !2480
  %413 = fdiv double %410, %412, !dbg !2481
  tail call void @llvm.dbg.value(metadata double %413, metadata !2080, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %413, metadata !2079, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %399, metadata !2078, metadata !DIExpression()), !dbg !2097
  tail call void @llvm.dbg.value(metadata double %411, metadata !2071, metadata !DIExpression()), !dbg !2440
  %414 = fcmp ogt double %411, %396, !dbg !2465
  br i1 %414, label %398, label %415, !dbg !2468, !llvm.loop !2482

415:                                              ; preds = %398, %369
  %416 = phi double [ %385, %369 ], [ %399, %398 ], !dbg !2097
  %417 = phi double [ %386, %369 ], [ %413, %398 ], !dbg !2097
  tail call void @llvm.dbg.value(metadata double %416, metadata !2065, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %417, metadata !2064, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double poison, metadata !2066, metadata !DIExpression()), !dbg !2440
  %418 = icmp eq i32 %381, 0, !dbg !2484
  %419 = select i1 %418, i32 %384, i32 %381, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !2067, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9, !dbg !2485
  %420 = fadd double %0, -1.000000e-01, !dbg !2486
  %421 = fcmp ult double %373, %420, !dbg !2488
  br i1 %421, label %422, label %447, !dbg !2489

422:                                              ; preds = %415
  %423 = fadd double %373, %2, !dbg !2490
  %424 = fmul double %423, %1, !dbg !2491
  %425 = fmul double %424, %417, !dbg !2492
  %426 = fmul double %374, %2, !dbg !2493
  %427 = fmul double %426, %416, !dbg !2494
  %428 = fadd double %427, %425, !dbg !2495
  %429 = fmul double %373, %1, !dbg !2496
  %430 = fdiv double %428, %429, !dbg !2497
  tail call void @llvm.dbg.value(metadata double %430, metadata !2066, metadata !DIExpression()), !dbg !2440
  %431 = fadd double %373, 1.000000e+00, !dbg !2498
  tail call void @llvm.dbg.value(metadata double %431, metadata !2071, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %430, metadata !2069, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %417, metadata !2068, metadata !DIExpression()), !dbg !2440
  %432 = fcmp olt double %431, %420, !dbg !2500
  br i1 %432, label %433, label %447, !dbg !2500

433:                                              ; preds = %422, %433
  %434 = phi double [ %445, %433 ], [ %431, %422 ]
  %435 = phi double [ %444, %433 ], [ %430, %422 ]
  %436 = phi double [ %435, %433 ], [ %417, %422 ]
  tail call void @llvm.dbg.value(metadata double %434, metadata !2071, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %435, metadata !2069, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %436, metadata !2068, metadata !DIExpression()), !dbg !2440
  %437 = fsub double %1, %434, !dbg !2501
  %438 = fmul double %436, %437, !dbg !2506
  %439 = fmul double %434, 2.000000e+00, !dbg !2507
  %440 = fsub double %439, %1, !dbg !2508
  %441 = fadd double %440, %2, !dbg !2509
  %442 = fmul double %435, %441, !dbg !2510
  %443 = fadd double %438, %442, !dbg !2511
  %444 = fdiv double %443, %434, !dbg !2512
  tail call void @llvm.dbg.value(metadata double %444, metadata !2070, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %435, metadata !2068, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.dbg.value(metadata double %444, metadata !2069, metadata !DIExpression()), !dbg !2440
  %445 = fadd double %434, 1.000000e+00, !dbg !2513
  tail call void @llvm.dbg.value(metadata double %445, metadata !2071, metadata !DIExpression()), !dbg !2440
  %446 = fcmp olt double %445, %420, !dbg !2514
  br i1 %446, label %433, label %447, !dbg !2515, !llvm.loop !2516

447:                                              ; preds = %433, %422, %415
  %448 = phi double [ %417, %415 ], [ %430, %422 ], [ %444, %433 ], !dbg !2518
  tail call void @llvm.dbg.value(metadata double %448, metadata !2069, metadata !DIExpression()), !dbg !2440
  store double %448, ptr %3, align 8, !dbg !2519, !tbaa !118
  %449 = fadd double %395, 0x3CB0000000000000, !dbg !2520
  %450 = fadd double %50, 1.000000e+00, !dbg !2521
  %451 = fmul double %450, %449, !dbg !2522
  %452 = call double @llvm.fabs.f64(double %448), !dbg !2523
  %453 = fmul double %451, %452, !dbg !2524
  %454 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2525
  store double %453, ptr %454, align 8, !dbg !2526, !tbaa !125
  br label %455

455:                                              ; preds = %447, %352, %273, %211, %144, %96, %65, %61, %45, %29
  %456 = phi i32 [ %30, %29 ], [ %46, %45 ], [ %62, %61 ], [ %67, %65 ], [ %115, %96 ], [ %163, %144 ], [ %231, %211 ], [ %294, %273 ], [ %368, %352 ], [ %419, %447 ], !dbg !2527
  ret i32 %456, !dbg !2528
}

declare !dbg !2529 i32 @gsl_sf_hyperg_1F1_series_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_1F1_a_negint_poly(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !440 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !439, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata double %1, metadata !444, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata double %2, metadata !445, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !446, metadata !DIExpression()), !dbg !2531
  %5 = icmp eq i32 %0, 0, !dbg !2532
  br i1 %5, label %6, label %8, !dbg !2533

6:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !2534, !tbaa !118
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2535
  store double 1.000000e+00, ptr %7, align 8, !dbg !2536, !tbaa !125
  br label %45, !dbg !2537

8:                                                ; preds = %4
  %9 = sub nsw i32 0, %0, !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !447, metadata !DIExpression()), !dbg !2539
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !451, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !2539
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !2539
  %10 = icmp slt i32 %0, 0, !dbg !2540
  br i1 %10, label %11, label %35, !dbg !2541

11:                                               ; preds = %8
  %12 = xor i32 %0, -1, !dbg !2542
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !451, metadata !DIExpression()), !dbg !2539
  br label %13, !dbg !2541

13:                                               ; preds = %11, %31
  %14 = phi double [ %32, %31 ], [ 1.000000e+00, %11 ]
  %15 = phi i32 [ %33, %31 ], [ %12, %11 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !450, metadata !DIExpression()), !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !451, metadata !DIExpression()), !dbg !2539
  %16 = add nsw i32 %15, %0, !dbg !2543
  %17 = sitofp i32 %16 to double, !dbg !2544
  %18 = sitofp i32 %15 to double, !dbg !2545
  %19 = fadd double %18, %1, !dbg !2546
  %20 = fdiv double %17, %19, !dbg !2547
  %21 = add nuw nsw i32 %15, 1, !dbg !2548
  %22 = sitofp i32 %21 to double, !dbg !2549
  %23 = fdiv double %2, %22, !dbg !2550
  %24 = fmul double %20, %23, !dbg !2551
  tail call void @llvm.dbg.value(metadata double %24, metadata !452, metadata !DIExpression()), !dbg !2552
  %25 = fdiv double 1.000000e+00, %14, !dbg !2553
  %26 = fadd double %25, %24, !dbg !2554
  tail call void @llvm.dbg.value(metadata double %26, metadata !456, metadata !DIExpression()), !dbg !2552
  %27 = fdiv double 0x7FECCCCCCCCCCCCC, %14, !dbg !2555
  %28 = fcmp ule double %26, %27, !dbg !2556
  br i1 %28, label %31, label %29, !dbg !2557

29:                                               ; preds = %13
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !2558, !tbaa !118
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2558
  store double 0x7FF0000000000000, ptr %30, align 8, !dbg !2558, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #9, !dbg !2559
  tail call void @llvm.dbg.value(metadata double undef, metadata !450, metadata !DIExpression()), !dbg !2539
  br label %45

31:                                               ; preds = %13
  %32 = fmul double %14, %26, !dbg !2560
  tail call void @llvm.dbg.value(metadata double %32, metadata !450, metadata !DIExpression()), !dbg !2539
  %33 = add nsw i32 %15, -1, !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !451, metadata !DIExpression()), !dbg !2539
  %34 = icmp sgt i32 %15, 0, !dbg !2540
  br i1 %34, label %13, label %35, !dbg !2541, !llvm.loop !2562

35:                                               ; preds = %31, %8
  %36 = phi double [ 1.000000e+00, %8 ], [ %32, %31 ], !dbg !2564
  store double %36, ptr %3, align 8, !dbg !2565, !tbaa !118
  %37 = sitofp i32 %9 to double, !dbg !2566
  %38 = tail call double @sqrt(double noundef %37) #9, !dbg !2567
  %39 = fadd double %38, 1.000000e+00, !dbg !2568
  %40 = fmul double %39, 2.000000e+00, !dbg !2569
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !2570
  %42 = tail call double @llvm.fabs.f64(double %36), !dbg !2571
  %43 = fmul double %42, %41, !dbg !2572
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2573
  store double %43, ptr %44, align 8, !dbg !2574, !tbaa !125
  br label %45, !dbg !2575

45:                                               ; preds = %29, %35, %6
  %46 = phi i32 [ 0, %6 ], [ 16, %29 ], [ 0, %35 ], !dbg !2576
  ret i32 %46, !dbg !2577
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_neg(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2578 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2608
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2608, metadata ptr %5, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata double %0, metadata !2580, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata double %1, metadata !2581, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata double %2, metadata !2582, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2583, metadata !DIExpression()), !dbg !2610
  %6 = fsub double %1, %0, !dbg !2611
  tail call void @llvm.dbg.value(metadata double %6, metadata !2584, metadata !DIExpression()), !dbg !2610
  %7 = tail call double @llvm.fabs.f64(double %2), !dbg !2612
  tail call void @llvm.dbg.value(metadata double %7, metadata !2585, metadata !DIExpression()), !dbg !2610
  %8 = tail call double @llvm.fabs.f64(double %0), !dbg !2613
  tail call void @llvm.dbg.value(metadata double %8, metadata !2586, metadata !DIExpression()), !dbg !2610
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !2614
  tail call void @llvm.dbg.value(metadata double %9, metadata !2587, metadata !DIExpression()), !dbg !2610
  %10 = fcmp ogt double %8, 1.000000e+00, !dbg !2615
  %11 = select i1 %10, double %8, double 1.000000e+00, !dbg !2615
  tail call void @llvm.dbg.value(metadata double %11, metadata !2588, metadata !DIExpression()), !dbg !2610
  %12 = fcmp ogt double %9, 1.000000e+00, !dbg !2616
  %13 = select i1 %12, double %9, double 1.000000e+00, !dbg !2616
  tail call void @llvm.dbg.value(metadata double %13, metadata !2589, metadata !DIExpression()), !dbg !2610
  %14 = fadd double %6, 5.000000e-01, !dbg !2617
  %15 = tail call double @llvm.floor.f64(double %14), !dbg !2618
  %16 = fsub double %6, %15, !dbg !2619
  %17 = fcmp olt double %16, 0x3D19000000000000, !dbg !2620
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2590, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2610
  %18 = fcmp olt double %8, 1.000000e+01, !dbg !2621
  %19 = fcmp olt double %9, 1.000000e+01
  %20 = and i1 %18, %19, !dbg !2622
  %21 = fcmp olt double %7, 5.000000e+00
  %22 = and i1 %20, %21, !dbg !2622
  br i1 %22, label %27, label %23, !dbg !2622

23:                                               ; preds = %4
  %24 = fmul double %11, 8.000000e-01, !dbg !2623
  %25 = fmul double %7, %24, !dbg !2624
  %26 = fcmp olt double %25, %1, !dbg !2625
  br i1 %26, label %27, label %29, !dbg !2626

27:                                               ; preds = %4, %23
  %28 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !2627
  br label %107, !dbg !2629

29:                                               ; preds = %23
  %30 = fcmp ogt double %2, 0.000000e+00, !dbg !2630
  %31 = fcmp ogt double %13, %11
  %32 = and i1 %30, %31, !dbg !2631
  br i1 %32, label %33, label %41, !dbg !2631

33:                                               ; preds = %29
  %34 = fmul double %2, 0x4005BF0A8B145769, !dbg !2632
  %35 = fdiv double %34, %13, !dbg !2633
  %36 = tail call double @log(double noundef %35) #9, !dbg !2634
  %37 = fmul double %11, %36, !dbg !2635
  %38 = fcmp olt double %37, 0xC03D0B2CDE569E24, !dbg !2636
  br i1 %38, label %39, label %41, !dbg !2637

39:                                               ; preds = %33
  %40 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !2638
  br label %107, !dbg !2640

41:                                               ; preds = %33, %29
  %42 = tail call double @llvm.fabs.f64(double %6), !dbg !2641
  %43 = fcmp olt double %42, 1.000000e+01
  %44 = and i1 %19, %43
  %45 = and i1 %21, %44, !dbg !2642
  br i1 %45, label %52, label %46, !dbg !2642

46:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata double %42, metadata !160, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2643
  %47 = fcmp ogt double %42, 1.000000e+00, !dbg !2645
  %48 = select i1 %47, double %42, double 1.000000e+00, !dbg !2645
  %49 = fmul double %48, 8.000000e-01, !dbg !2646
  %50 = fmul double %7, %49, !dbg !2647
  %51 = fcmp olt double %50, %1, !dbg !2648
  br i1 %51, label %52, label %62, !dbg !2649

52:                                               ; preds = %41, %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !2650
  %53 = fneg double %2, !dbg !2651
  %54 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %6, double noundef %1, double noundef %53, ptr noundef nonnull %5) #9, !dbg !2652
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !2596, metadata !DIExpression()), !dbg !2609
  %55 = fmul double %7, 0x3CB0000000000000, !dbg !2653
  %56 = load double, ptr %5, align 8, !dbg !2654, !tbaa !118
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2655
  %58 = load double, ptr %57, align 8, !dbg !2655, !tbaa !125
  %59 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %55, double noundef %56, double noundef %58, ptr noundef %3) #9, !dbg !2656
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2597, metadata !DIExpression()), !dbg !2609
  %60 = icmp eq i32 %59, 0, !dbg !2657
  %61 = select i1 %60, i32 %54, i32 %59, !dbg !2657
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !2658
  br label %107

62:                                               ; preds = %46
  %63 = fcmp olt double %2, -3.000000e+01, !dbg !2659
  br i1 %63, label %64, label %75, !dbg !2660

64:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double %8, metadata !160, metadata !DIExpression()), !dbg !2661
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2661
  %65 = fadd double %0, 1.000000e+00, !dbg !2663
  %66 = fsub double %65, %1, !dbg !2664
  %67 = tail call double @llvm.fabs.f64(double %66), !dbg !2665
  tail call void @llvm.dbg.value(metadata double %67, metadata !160, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2666
  %68 = fcmp ogt double %67, 1.000000e+00, !dbg !2668
  %69 = select i1 %68, double %67, double 1.000000e+00, !dbg !2668
  %70 = fmul double %11, %69, !dbg !2669
  %71 = fmul double %7, 0x3FEFAE147AE147AE, !dbg !2670
  %72 = fcmp olt double %70, %71, !dbg !2671
  br i1 %72, label %73, label %75, !dbg !2672

73:                                               ; preds = %64
  %74 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2673
  br label %107, !dbg !2675

75:                                               ; preds = %64, %62
  %76 = fcmp ogt double %2, 1.000000e+02, !dbg !2676
  br i1 %76, label %77, label %87, !dbg !2677

77:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata double %42, metadata !160, metadata !DIExpression()), !dbg !2678
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2678
  %78 = fsub double 1.000000e+00, %0, !dbg !2680
  %79 = tail call double @llvm.fabs.f64(double %78), !dbg !2681
  tail call void @llvm.dbg.value(metadata double %79, metadata !160, metadata !DIExpression()), !dbg !2682
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2682
  %80 = fcmp ogt double %79, 1.000000e+00, !dbg !2684
  %81 = select i1 %80, double %79, double 1.000000e+00, !dbg !2684
  %82 = fmul double %81, %48, !dbg !2685
  %83 = fmul double %7, 0x3FEFAE147AE147AE, !dbg !2686
  %84 = fcmp olt double %82, %83, !dbg !2687
  br i1 %84, label %85, label %87, !dbg !2688

85:                                               ; preds = %77
  %86 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2689
  br label %107, !dbg !2691

87:                                               ; preds = %77, %75
  %88 = xor i1 %30, true, !dbg !2692
  %89 = fcmp ogt double %6, 0.000000e+00
  %90 = and i1 %89, %17
  %91 = or i1 %90, %88, !dbg !2692
  br i1 %91, label %94, label %92, !dbg !2692

92:                                               ; preds = %87
  %93 = tail call fastcc i32 @hyperg_1F1_U(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2693
  br label %107, !dbg !2695

94:                                               ; preds = %87
  %95 = fcmp olt double %2, 0.000000e+00, !dbg !2696
  br i1 %95, label %96, label %105, !dbg !2697

96:                                               ; preds = %94
  %97 = fneg double %2, !dbg !2698
  %98 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %6, double noundef %1, double noundef %97, ptr noundef %3) #9, !dbg !2699
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !2598, metadata !DIExpression()), !dbg !2700
  %99 = tail call double @exp(double noundef %2) #9, !dbg !2701
  tail call void @llvm.dbg.value(metadata double %99, metadata !2605, metadata !DIExpression()), !dbg !2700
  %100 = load double, ptr %3, align 8, !dbg !2702, !tbaa !118
  %101 = fmul double %99, %100, !dbg !2702
  store double %101, ptr %3, align 8, !dbg !2702, !tbaa !118
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2703
  %103 = load double, ptr %102, align 8, !dbg !2704, !tbaa !125
  %104 = fmul double %99, %103, !dbg !2704
  store double %104, ptr %102, align 8, !dbg !2704, !tbaa !125
  br label %107

105:                                              ; preds = %94
  %106 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #9, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !2606, metadata !DIExpression()), !dbg !2706
  br label %107

107:                                              ; preds = %105, %96, %92, %85, %73, %52, %39, %27
  %108 = phi i32 [ %28, %27 ], [ %40, %39 ], [ %61, %52 ], [ %74, %73 ], [ %86, %85 ], [ %98, %96 ], [ %106, %105 ], [ %93, %92 ], !dbg !2707
  ret i32 %108, !dbg !2708
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_1F1_int(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2709 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2716, metadata !DIExpression(), metadata !2718, metadata ptr %4, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2713, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2714, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata double %2, metadata !2715, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2720
  %5 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2717, metadata !DIExpression()), !dbg !2719
  %6 = icmp eq i32 %5, 0, !dbg !2721
  br i1 %6, label %8, label %7, !dbg !2720

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 2059, i32 noundef %5) #9, !dbg !2723
  br label %8, !dbg !2723

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2720, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2726
  ret double %9, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_1F1(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2727 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2734, metadata !DIExpression(), metadata !2736, metadata ptr %4, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata double %0, metadata !2731, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata double %1, metadata !2732, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata double %2, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2738
  %5 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2738
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2735, metadata !DIExpression()), !dbg !2737
  %6 = icmp eq i32 %5, 0, !dbg !2739
  br i1 %6, label %8, label %7, !dbg !2738

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 2064, i32 noundef %5) #9, !dbg !2741
  br label %8, !dbg !2741

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !2738, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2744
  ret double %9, !dbg !2744
}

declare !dbg !2745 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2750 i32 @gsl_sf_hyperg_2F0_series_e(double noundef, double noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2753 i32 @gsl_sf_exprel_n_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_beq2a_pos(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !2754 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2769
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2759, metadata !DIExpression(), metadata !2769, metadata ptr %4, metadata !DIExpression()), !dbg !2770
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2763, metadata !DIExpression(), metadata !2771, metadata ptr %5, metadata !DIExpression()), !dbg !2770
  tail call void @llvm.dbg.value(metadata double %0, metadata !2756, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata double %1, metadata !2757, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2758, metadata !DIExpression()), !dbg !2772
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !2773
  br i1 %6, label %7, label %9, !dbg !2774

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !2775, !tbaa !118
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2777
  store double 0.000000e+00, ptr %8, align 8, !dbg !2778, !tbaa !125
  br label %39, !dbg !2779

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !2780
  %10 = fadd double %0, -5.000000e-01, !dbg !2781
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !2782
  %12 = fmul double %11, 5.000000e-01, !dbg !2783
  %13 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %10, double noundef %12, ptr noundef nonnull %4) #9, !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !2785
  %14 = fadd double %0, 5.000000e-01, !dbg !2786
  %15 = call i32 @gsl_sf_lngamma_e(double noundef %14, ptr noundef nonnull %5) #9, !dbg !2787
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !2764, metadata !DIExpression()), !dbg !2770
  %16 = fsub double 5.000000e-01, %0, !dbg !2788
  %17 = fmul double %11, 2.500000e-01, !dbg !2789
  %18 = call double @log(double noundef %17) #9, !dbg !2790
  %19 = fmul double %16, %18, !dbg !2791
  tail call void @llvm.dbg.value(metadata double %19, metadata !2765, metadata !DIExpression()), !dbg !2770
  %20 = load double, ptr %5, align 8, !dbg !2792, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %1, metadata !160, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2793
  %21 = fcmp ogt double %1, 0.000000e+00, !dbg !2795
  %22 = select i1 %21, double %1, double 0.000000e+00, !dbg !2795
  %23 = fadd double %22, %20, !dbg !2796
  %24 = fadd double %19, %23, !dbg !2797
  tail call void @llvm.dbg.value(metadata double %24, metadata !2766, metadata !DIExpression()), !dbg !2770
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2798
  %26 = load double, ptr %25, align 8, !dbg !2798, !tbaa !125
  %27 = call double @llvm.fabs.f64(double %19), !dbg !2799
  %28 = fadd double %11, %27, !dbg !2800
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !2801
  %30 = fadd double %26, %29, !dbg !2802
  tail call void @llvm.dbg.value(metadata double %30, metadata !2767, metadata !DIExpression()), !dbg !2770
  %31 = load double, ptr %4, align 8, !dbg !2803, !tbaa !118
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2804
  %33 = load double, ptr %32, align 8, !dbg !2804, !tbaa !125
  %34 = call i32 @gsl_sf_exp_mult_err_e(double noundef %24, double noundef %30, double noundef %31, double noundef %33, ptr noundef %2) #9, !dbg !2805
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !2768, metadata !DIExpression()), !dbg !2770
  %35 = icmp eq i32 %34, 0, !dbg !2806
  %36 = icmp eq i32 %15, 0, !dbg !2806
  %37 = select i1 %36, i32 %13, i32 %15, !dbg !2806
  %38 = select i1 %35, i32 %37, i32 %34, !dbg !2806
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !2807
  br label %39

39:                                               ; preds = %9, %7
  %40 = phi i32 [ 0, %7 ], [ %38, %9 ], !dbg !2808
  ret i32 %40, !dbg !2809
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2814, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata double %1, metadata !2815, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata double %2, metadata !2816, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2817, metadata !DIExpression()), !dbg !2829
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !2830
  br i1 %5, label %8, label %6, !dbg !2831

6:                                                ; preds = %4
  %7 = fsub double %1, %2
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2824, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2823, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2822, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2821, metadata !DIExpression()), !dbg !2832
  br label %9, !dbg !2833

8:                                                ; preds = %4
  store double 0.000000e+00, ptr %3, align 8, !dbg !2834, !tbaa !313
  br label %41, !dbg !2836

9:                                                ; preds = %6, %35
  %10 = phi i32 [ 1, %6 ], [ %36, %35 ]
  %11 = phi double [ 0.000000e+00, %6 ], [ %26, %35 ]
  %12 = phi double [ 1.000000e+00, %6 ], [ %27, %35 ]
  %13 = phi double [ 1.000000e+00, %6 ], [ %28, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2824, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %11, metadata !2823, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %12, metadata !2822, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %13, metadata !2821, metadata !DIExpression()), !dbg !2832
  %14 = sitofp i32 %10 to double, !dbg !2837
  %15 = fadd double %14, %0, !dbg !2838
  %16 = fmul double %15, %2, !dbg !2839
  %17 = fadd double %7, %14, !dbg !2840
  %18 = fadd double %17, -1.000000e+00, !dbg !2841
  %19 = fmul double %17, %18, !dbg !2842
  %20 = fdiv double %16, %19, !dbg !2843
  tail call void @llvm.dbg.value(metadata double %20, metadata !2825, metadata !DIExpression()), !dbg !2844
  %21 = fneg double %20, !dbg !2845
  %22 = fadd double %11, 1.000000e+00, !dbg !2846
  %23 = fmul double %22, %21, !dbg !2847
  %24 = fmul double %22, %20, !dbg !2848
  %25 = fadd double %24, 1.000000e+00, !dbg !2849
  %26 = fdiv double %23, %25, !dbg !2850
  tail call void @llvm.dbg.value(metadata double %26, metadata !2823, metadata !DIExpression()), !dbg !2832
  %27 = fmul double %12, %26, !dbg !2851
  tail call void @llvm.dbg.value(metadata double %27, metadata !2822, metadata !DIExpression()), !dbg !2832
  %28 = fadd double %13, %27, !dbg !2852
  tail call void @llvm.dbg.value(metadata double %28, metadata !2821, metadata !DIExpression()), !dbg !2832
  %29 = fdiv double %27, %28, !dbg !2853
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !2855
  %31 = fcmp olt double %30, 0x3CC0000000000000, !dbg !2856
  br i1 %31, label %32, label %35

32:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata double %28, metadata !2821, metadata !DIExpression()), !dbg !2832
  %33 = fdiv double %0, %7, !dbg !2857
  %34 = fmul double %33, %28, !dbg !2858
  store double %34, ptr %3, align 8, !dbg !2859, !tbaa !313
  br label %41, !dbg !2860

35:                                               ; preds = %9
  %36 = add nuw nsw i32 %10, 1, !dbg !2861
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !2824, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %26, metadata !2823, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %27, metadata !2822, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata double %28, metadata !2821, metadata !DIExpression()), !dbg !2832
  %37 = icmp eq i32 %36, 5000, !dbg !2862
  br i1 %37, label %38, label %9, !dbg !2833, !llvm.loop !2863

38:                                               ; preds = %35
  tail call void @llvm.dbg.value(metadata double %28, metadata !2821, metadata !DIExpression()), !dbg !2832
  %39 = fdiv double %0, %7, !dbg !2857
  %40 = fmul double %39, %28, !dbg !2858
  store double %40, ptr %3, align 8, !dbg !2859, !tbaa !313
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 11) #9, !dbg !2865
  br label %41, !dbg !2865

41:                                               ; preds = %32, %38, %8
  %42 = phi i32 [ 0, %8 ], [ 11, %38 ], [ 0, %32 ], !dbg !2868
  ret i32 %42, !dbg !2869
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2870 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

declare !dbg !2871 i32 @gsl_sf_bessel_Inu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2875 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2878 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !2879 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2880 double @pow(double noundef, double noundef) local_unnamed_addr #4

declare !dbg !2881 double @gsl_sf_bessel_In_scaled(i32 noundef, double noundef) local_unnamed_addr #1

declare !dbg !2884 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2885 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2886 i32 @gsl_sf_laguerre_n_e(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2888 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2893 i32 @gsl_sf_lnbeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2894 i32 @gsl_sf_beta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @hyperg_1F1_largebx(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !dbg !2895 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2898, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata double %1, metadata !2899, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata double %2, metadata !2900, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2901, metadata !DIExpression()), !dbg !2907
  %5 = fdiv double %2, %1, !dbg !2908
  tail call void @llvm.dbg.value(metadata double %5, metadata !2902, metadata !DIExpression()), !dbg !2907
  %6 = fneg double %0, !dbg !2909
  %7 = fneg double %5, !dbg !2910
  %8 = tail call double @log1p(double noundef %7) #9, !dbg !2911
  %9 = fmul double %8, %6, !dbg !2912
  %10 = tail call double @exp(double noundef %9) #9, !dbg !2913
  tail call void @llvm.dbg.value(metadata double %10, metadata !2903, metadata !DIExpression()), !dbg !2907
  %11 = fadd double %0, 1.000000e+00, !dbg !2914
  %12 = fmul double %11, %0, !dbg !2915
  %13 = fmul double %1, 2.000000e+00, !dbg !2916
  %14 = fneg double %12, !dbg !2917
  %15 = fdiv double %14, %13, !dbg !2917
  %16 = fsub double 1.000000e+00, %5, !dbg !2918
  %17 = fdiv double %5, %16, !dbg !2919
  %18 = fmul double %17, %17, !dbg !2920
  %19 = fmul double %15, %18, !dbg !2921
  tail call void @llvm.dbg.value(metadata double %19, metadata !2904, metadata !DIExpression()), !dbg !2907
  %20 = fmul double %1, 2.400000e+01, !dbg !2922
  %21 = fmul double %20, %1, !dbg !2923
  %22 = fdiv double 1.000000e+00, %21, !dbg !2924
  %23 = fmul double %12, %5, !dbg !2925
  %24 = fmul double %5, %23, !dbg !2926
  %25 = tail call double @pow(double noundef %16, double noundef 4.000000e+00) #9, !dbg !2927
  %26 = fdiv double %24, %25, !dbg !2928
  %27 = fmul double %22, %26, !dbg !2929
  %28 = fmul double %0, 2.000000e+00, !dbg !2930
  %29 = fadd double %28, 1.000000e+00, !dbg !2931
  %30 = fmul double %29, 8.000000e+00, !dbg !2932
  %31 = fmul double %30, %5, !dbg !2933
  %32 = fadd double %31, 1.200000e+01, !dbg !2934
  %33 = fmul double %0, 3.000000e+00, !dbg !2935
  %34 = fmul double %33, %0, !dbg !2936
  %35 = fsub double %34, %0, !dbg !2937
  %36 = fadd double %35, -2.000000e+00, !dbg !2938
  %37 = fmul double %5, %36, !dbg !2939
  %38 = fmul double %5, %37, !dbg !2940
  %39 = fadd double %32, %38, !dbg !2941
  %40 = fmul double %39, %27, !dbg !2942
  tail call void @llvm.dbg.value(metadata double %40, metadata !2905, metadata !DIExpression()), !dbg !2907
  %41 = fmul double %1, 4.800000e+01, !dbg !2943
  %42 = fmul double %41, %1, !dbg !2944
  %43 = fmul double %42, %1, !dbg !2945
  %44 = tail call double @pow(double noundef %16, double noundef 6.000000e+00) #9, !dbg !2946
  %45 = fmul double %43, %44, !dbg !2947
  %46 = fdiv double -1.000000e+00, %45, !dbg !2948
  %47 = fmul double %46, %0, !dbg !2949
  %48 = fadd double %0, -2.000000e+00, !dbg !2950
  %49 = fmul double %48, %5, !dbg !2951
  %50 = fadd double %49, 1.600000e+01, !dbg !2952
  %51 = fadd double %0, -1.000000e+00, !dbg !2953
  %52 = fmul double %51, %50, !dbg !2954
  %53 = fmul double %5, %52, !dbg !2955
  %54 = fadd double %53, 7.200000e+01, !dbg !2956
  %55 = fmul double %5, %54, !dbg !2957
  %56 = fmul double %55, %0, !dbg !2958
  %57 = fadd double %56, 9.600000e+01, !dbg !2959
  %58 = fmul double %11, %57, !dbg !2960
  %59 = fmul double %5, %58, !dbg !2961
  %60 = fadd double %59, 2.400000e+01, !dbg !2962
  %61 = fmul double %5, %5, !dbg !2963
  %62 = fmul double %61, %60, !dbg !2964
  %63 = fmul double %11, %62, !dbg !2965
  %64 = fmul double %63, %47, !dbg !2966
  tail call void @llvm.dbg.value(metadata double %64, metadata !2906, metadata !DIExpression()), !dbg !2907
  %65 = fadd double %19, 1.000000e+00, !dbg !2967
  %66 = fadd double %65, %40, !dbg !2968
  %67 = fadd double %66, %64, !dbg !2969
  %68 = fmul double %10, %67, !dbg !2970
  store double %68, ptr %3, align 8, !dbg !2971, !tbaa !118
  %69 = fmul double %10, %64, !dbg !2972
  %70 = tail call double @llvm.fabs.f64(double %69), !dbg !2973
  %71 = fmul double %70, 2.000000e+00, !dbg !2974
  %72 = tail call double @llvm.fabs.f64(double %68), !dbg !2975
  %73 = fmul double %72, 0x3CC0000000000000, !dbg !2976
  %74 = fadd double %71, %73, !dbg !2977
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2978
  store double %74, ptr %75, align 8, !dbg !2979, !tbaa !125
  ret void, !dbg !2980
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_large2bm4a(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2981 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2992, metadata !DIExpression(), metadata !3003, metadata ptr %5, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata double %0, metadata !2983, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata double %1, metadata !2984, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata double %2, metadata !2985, metadata !DIExpression()), !dbg !3004
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3004
  %6 = fmul double %1, 2.000000e+00, !dbg !3005
  %7 = fmul double %0, 4.000000e+00, !dbg !3006
  %8 = fsub double %6, %7, !dbg !3007
  tail call void @llvm.dbg.value(metadata double %8, metadata !2987, metadata !DIExpression()), !dbg !3004
  %9 = fdiv double %2, %8, !dbg !3008
  tail call void @llvm.dbg.value(metadata double %9, metadata !2988, metadata !DIExpression()), !dbg !3004
  %10 = fsub double 1.000000e+00, %9, !dbg !3009
  tail call void @llvm.dbg.value(metadata double %10, metadata !2989, metadata !DIExpression()), !dbg !3004
  %11 = tail call double @sqrt(double noundef %9) #9, !dbg !3010
  %12 = tail call double @acos(double noundef %11) #9, !dbg !3011
  tail call void @llvm.dbg.value(metadata double %12, metadata !2990, metadata !DIExpression()), !dbg !3004
  %13 = fmul double %8, 0x4003BD3CC9BE45DE, !dbg !3012
  %14 = fmul double %8, %13, !dbg !3013
  %15 = fmul double %9, %14, !dbg !3014
  %16 = fmul double %10, %15, !dbg !3015
  tail call void @llvm.dbg.value(metadata double %16, metadata !2991, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !3016
  %17 = call i32 @gsl_sf_lngamma_e(double noundef %1, ptr noundef nonnull %5) #9, !dbg !3017
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2993, metadata !DIExpression()), !dbg !3004
  %18 = fsub double 1.000000e+00, %1, !dbg !3018
  %19 = fmul double %18, 5.000000e-01, !dbg !3019
  %20 = fmul double %2, 2.500000e-01, !dbg !3020
  %21 = fmul double %20, %8, !dbg !3021
  %22 = call double @log(double noundef %21) #9, !dbg !3022
  %23 = fmul double %19, %22, !dbg !3023
  tail call void @llvm.dbg.value(metadata double %23, metadata !2994, metadata !DIExpression()), !dbg !3004
  %24 = call double @log(double noundef %16) #9, !dbg !3024
  %25 = fmul double %24, 2.500000e-01, !dbg !3025
  tail call void @llvm.dbg.value(metadata double %25, metadata !2995, metadata !DIExpression()), !dbg !3004
  %26 = load double, ptr %5, align 8, !dbg !3026, !tbaa !118
  %27 = fmul double %2, 5.000000e-01, !dbg !3027
  %28 = fadd double %27, %26, !dbg !3028
  %29 = fadd double %23, %28, !dbg !3029
  %30 = fsub double %29, %25, !dbg !3030
  tail call void @llvm.dbg.value(metadata double %30, metadata !2996, metadata !DIExpression()), !dbg !3004
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3031
  %32 = load double, ptr %31, align 8, !dbg !3031, !tbaa !125
  %33 = call double @llvm.fabs.f64(double %27), !dbg !3032
  %34 = call double @llvm.fabs.f64(double %23), !dbg !3033
  %35 = fadd double %33, %34, !dbg !3034
  %36 = call double @llvm.fabs.f64(double %25), !dbg !3035
  %37 = fadd double %35, %36, !dbg !3036
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !3037
  %39 = fadd double %32, %38, !dbg !3038
  tail call void @llvm.dbg.value(metadata double %39, metadata !2997, metadata !DIExpression()), !dbg !3004
  %40 = fmul double %0, 0x400921FB54442D18, !dbg !3039
  %41 = call double @sin(double noundef %40) #9, !dbg !3040
  tail call void @llvm.dbg.value(metadata double %41, metadata !2998, metadata !DIExpression()), !dbg !3004
  %42 = fmul double %8, 2.500000e-01, !dbg !3041
  %43 = fmul double %12, 2.000000e+00, !dbg !3042
  %44 = call double @sin(double noundef %43) #9, !dbg !3043
  %45 = fsub double %43, %44, !dbg !3044
  %46 = fmul double %42, %45, !dbg !3045
  %47 = fadd double %46, 0x3FE921FB54442D18, !dbg !3046
  %48 = call double @sin(double noundef %47) #9, !dbg !3047
  tail call void @llvm.dbg.value(metadata double %48, metadata !2999, metadata !DIExpression()), !dbg !3004
  %49 = fadd double %41, %48, !dbg !3048
  tail call void @llvm.dbg.value(metadata double %49, metadata !3000, metadata !DIExpression()), !dbg !3004
  %50 = call double @llvm.fabs.f64(double %41), !dbg !3049
  %51 = call double @llvm.fabs.f64(double %48), !dbg !3050
  %52 = fadd double %50, %51, !dbg !3051
  %53 = fmul double %52, 0x3CC0000000000000, !dbg !3052
  tail call void @llvm.dbg.value(metadata double %53, metadata !3001, metadata !DIExpression()), !dbg !3004
  %54 = call i32 @gsl_sf_exp_mult_err_e(double noundef %30, double noundef %39, double noundef %49, double noundef %53, ptr noundef %3) #9, !dbg !3053
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !3002, metadata !DIExpression()), !dbg !3004
  %55 = icmp eq i32 %54, 0, !dbg !3054
  %56 = select i1 %55, i32 %17, i32 %54, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !3055
  ret i32 %56, !dbg !3056
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @hyperg_1F1_luke(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !dbg !3057 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !3059, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %1, metadata !3060, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %2, metadata !3061, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3062, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !3063, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !3064, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata i32 3, metadata !3065, metadata !DIExpression()), !dbg !3094
  %5 = fneg double %2, !dbg !3095
  tail call void @llvm.dbg.value(metadata double %5, metadata !3066, metadata !DIExpression()), !dbg !3094
  %6 = fmul double %2, %2, !dbg !3096
  %7 = fmul double %6, %5, !dbg !3097
  tail call void @llvm.dbg.value(metadata double %7, metadata !3067, metadata !DIExpression()), !dbg !3094
  %8 = fdiv double %0, %1, !dbg !3098
  tail call void @llvm.dbg.value(metadata double %8, metadata !3068, metadata !DIExpression()), !dbg !3094
  %9 = fadd double %0, 1.000000e+00, !dbg !3099
  %10 = fmul double %1, 2.000000e+00, !dbg !3100
  %11 = fdiv double %9, %10, !dbg !3101
  tail call void @llvm.dbg.value(metadata double %11, metadata !3069, metadata !DIExpression()), !dbg !3094
  %12 = fadd double %0, 2.000000e+00, !dbg !3102
  %13 = fadd double %1, 1.000000e+00, !dbg !3103
  %14 = fmul double %13, 2.000000e+00, !dbg !3104
  %15 = fdiv double %12, %14, !dbg !3105
  tail call void @llvm.dbg.value(metadata double %15, metadata !3070, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3071, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3073, metadata !DIExpression()), !dbg !3094
  %16 = fmul double %11, %2, !dbg !3106
  %17 = fsub double 1.000000e+00, %16, !dbg !3106
  tail call void @llvm.dbg.value(metadata double %17, metadata !3074, metadata !DIExpression()), !dbg !3094
  %18 = fmul double %15, %5, !dbg !3107
  %19 = fdiv double %11, 3.000000e+00, !dbg !3108
  %20 = fmul double %19, %2, !dbg !3109
  %21 = fsub double 1.000000e+00, %20, !dbg !3109
  %22 = fmul double %18, %21, !dbg !3110
  %23 = fadd double %22, 1.000000e+00, !dbg !3111
  tail call void @llvm.dbg.value(metadata double %23, metadata !3075, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3076, metadata !DIExpression()), !dbg !3094
  %24 = fmul double %8, %2, !dbg !3112
  %25 = fadd double %24, %17, !dbg !3112
  tail call void @llvm.dbg.value(metadata double %25, metadata !3077, metadata !DIExpression()), !dbg !3094
  %26 = fadd double %18, 1.000000e+00, !dbg !3113
  %27 = fmul double %8, %26, !dbg !3114
  %28 = fmul double %27, %2, !dbg !3115
  %29 = fadd double %23, %28, !dbg !3115
  %30 = fmul double %8, %11, !dbg !3116
  %31 = fdiv double %1, %13, !dbg !3117
  %32 = fmul double %31, %30, !dbg !3118
  %33 = fmul double %32, %5, !dbg !3119
  %34 = fmul double %33, %2, !dbg !3120
  %35 = fsub double %29, %34, !dbg !3120
  tail call void @llvm.dbg.value(metadata double %35, metadata !3078, metadata !DIExpression()), !dbg !3094
  br label %36, !dbg !3121

36:                                               ; preds = %135, %4
  %37 = phi double [ %35, %4 ], [ %140, %135 ], !dbg !3122
  %38 = phi double [ %25, %4 ], [ %136, %135 ], !dbg !3123
  %39 = phi double [ 1.000000e+00, %4 ], [ %137, %135 ], !dbg !3124
  %40 = phi double [ %23, %4 ], [ %141, %135 ], !dbg !3125
  %41 = phi double [ %17, %4 ], [ %138, %135 ], !dbg !3126
  %42 = phi double [ 1.000000e+00, %4 ], [ %139, %135 ], !dbg !3127
  %43 = phi double [ 1.000000e+00, %4 ], [ %104, %135 ], !dbg !3094
  %44 = phi i32 [ 3, %4 ], [ %142, %135 ], !dbg !3128
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !3065, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %43, metadata !3071, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %42, metadata !3073, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %41, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %40, metadata !3075, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %39, metadata !3076, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %38, metadata !3077, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %37, metadata !3078, metadata !DIExpression()), !dbg !3094
  %45 = sitofp i32 %44 to double, !dbg !3129
  %46 = fadd double %45, %0, !dbg !3130
  %47 = fadd double %46, -1.000000e+00, !dbg !3131
  tail call void @llvm.dbg.value(metadata double %47, metadata !3079, metadata !DIExpression()), !dbg !3132
  %48 = fadd double %45, %1, !dbg !3133
  %49 = fadd double %48, -1.000000e+00, !dbg !3134
  tail call void @llvm.dbg.value(metadata double %49, metadata !3081, metadata !DIExpression()), !dbg !3132
  %50 = fadd double %46, -2.000000e+00, !dbg !3135
  tail call void @llvm.dbg.value(metadata double %50, metadata !3082, metadata !DIExpression()), !dbg !3132
  %51 = fadd double %48, -2.000000e+00, !dbg !3136
  tail call void @llvm.dbg.value(metadata double %51, metadata !3083, metadata !DIExpression()), !dbg !3132
  %52 = shl nuw nsw i32 %44, 1, !dbg !3137
  %53 = add nsw i32 %52, -1, !dbg !3138
  %54 = sitofp i32 %53 to double, !dbg !3139
  tail call void @llvm.dbg.value(metadata double %54, metadata !3084, metadata !DIExpression()), !dbg !3132
  %55 = add nsw i32 %52, -3, !dbg !3140
  %56 = sitofp i32 %55 to double, !dbg !3141
  tail call void @llvm.dbg.value(metadata double %56, metadata !3085, metadata !DIExpression()), !dbg !3132
  %57 = add nsw i32 %52, -5, !dbg !3142
  %58 = sitofp i32 %57 to double, !dbg !3143
  tail call void @llvm.dbg.value(metadata double %58, metadata !3086, metadata !DIExpression()), !dbg !3132
  %59 = fsub double %45, %0, !dbg !3144
  %60 = fadd double %59, -2.000000e+00, !dbg !3145
  %61 = fmul double %56, 2.000000e+00, !dbg !3146
  %62 = fmul double %49, %61, !dbg !3147
  %63 = fdiv double %60, %62, !dbg !3148
  tail call void @llvm.dbg.value(metadata double %63, metadata !3087, metadata !DIExpression()), !dbg !3132
  %64 = fmul double %46, %47, !dbg !3149
  %65 = fmul double %54, 4.000000e+00, !dbg !3150
  %66 = fmul double %65, %56, !dbg !3151
  %67 = fmul double %51, %66, !dbg !3152
  %68 = fmul double %49, %67, !dbg !3153
  %69 = fdiv double %64, %68, !dbg !3154
  tail call void @llvm.dbg.value(metadata double %69, metadata !3088, metadata !DIExpression()), !dbg !3132
  %70 = fneg double %50, !dbg !3155
  %71 = fmul double %47, %70, !dbg !3156
  %72 = fmul double %60, %71, !dbg !3157
  %73 = fmul double %56, 8.000000e+00, !dbg !3158
  %74 = fmul double %73, %56, !dbg !3159
  %75 = fmul double %74, %58, !dbg !3160
  %76 = fadd double %48, -3.000000e+00, !dbg !3161
  %77 = fmul double %76, %75, !dbg !3162
  %78 = fmul double %51, %77, !dbg !3163
  %79 = fmul double %49, %78, !dbg !3164
  %80 = fdiv double %72, %79, !dbg !3165
  tail call void @llvm.dbg.value(metadata double %80, metadata !3089, metadata !DIExpression()), !dbg !3132
  %81 = fneg double %47, !dbg !3166
  %82 = fsub double %45, %1, !dbg !3167
  %83 = fadd double %82, -1.000000e+00, !dbg !3168
  %84 = fmul double %83, %81, !dbg !3169
  %85 = fmul double %51, %61, !dbg !3170
  %86 = fmul double %49, %85, !dbg !3171
  %87 = fdiv double %84, %86, !dbg !3172
  tail call void @llvm.dbg.value(metadata double %87, metadata !3090, metadata !DIExpression()), !dbg !3132
  %88 = fmul double %63, %2, !dbg !3173
  %89 = fsub double 1.000000e+00, %88, !dbg !3173
  %90 = fmul double %37, %89, !dbg !3174
  %91 = fmul double %69, %2, !dbg !3175
  %92 = fsub double %87, %91, !dbg !3175
  %93 = fmul double %92, %5, !dbg !3176
  %94 = fmul double %38, %93, !dbg !3177
  %95 = fadd double %90, %94, !dbg !3178
  %96 = fmul double %7, %80, !dbg !3179
  %97 = fmul double %39, %96, !dbg !3180
  %98 = fadd double %97, %95, !dbg !3181
  tail call void @llvm.dbg.value(metadata double %98, metadata !3091, metadata !DIExpression()), !dbg !3132
  %99 = fmul double %40, %89, !dbg !3182
  %100 = fmul double %41, %93, !dbg !3183
  %101 = fadd double %99, %100, !dbg !3184
  %102 = fmul double %42, %96, !dbg !3185
  %103 = fadd double %102, %101, !dbg !3186
  tail call void @llvm.dbg.value(metadata double %103, metadata !3092, metadata !DIExpression()), !dbg !3132
  %104 = fdiv double %98, %103, !dbg !3187
  tail call void @llvm.dbg.value(metadata double %104, metadata !3093, metadata !DIExpression()), !dbg !3132
  %105 = fsub double %43, %104, !dbg !3188
  %106 = fdiv double %105, %43, !dbg !3189
  %107 = tail call double @llvm.fabs.f64(double %106), !dbg !3190
  tail call void @llvm.dbg.value(metadata double %107, metadata !3072, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %104, metadata !3071, metadata !DIExpression()), !dbg !3094
  %108 = fcmp olt double %107, 0x3CB0000000000000, !dbg !3191
  %109 = icmp ugt i32 %44, 5000
  %110 = select i1 %108, i1 true, i1 %109, !dbg !3193
  br i1 %110, label %143, label %111, !dbg !3193

111:                                              ; preds = %36
  %112 = tail call double @llvm.fabs.f64(double %98), !dbg !3194
  %113 = fcmp ogt double %112, 1.000000e+50, !dbg !3196
  br i1 %113, label %117, label %114, !dbg !3197

114:                                              ; preds = %111
  %115 = tail call double @llvm.fabs.f64(double %103), !dbg !3198
  %116 = fcmp ogt double %115, 1.000000e+50, !dbg !3199
  br i1 %116, label %117, label %124, !dbg !3200

117:                                              ; preds = %114, %111
  %118 = fdiv double %98, 1.000000e+50, !dbg !3201
  tail call void @llvm.dbg.value(metadata double %118, metadata !3091, metadata !DIExpression()), !dbg !3132
  %119 = fdiv double %103, 1.000000e+50, !dbg !3203
  tail call void @llvm.dbg.value(metadata double %119, metadata !3092, metadata !DIExpression()), !dbg !3132
  %120 = fdiv double %37, 1.000000e+50, !dbg !3204
  tail call void @llvm.dbg.value(metadata double %120, metadata !3078, metadata !DIExpression()), !dbg !3094
  %121 = fdiv double %40, 1.000000e+50, !dbg !3205
  tail call void @llvm.dbg.value(metadata double %121, metadata !3075, metadata !DIExpression()), !dbg !3094
  %122 = fdiv double %38, 1.000000e+50, !dbg !3206
  tail call void @llvm.dbg.value(metadata double %122, metadata !3077, metadata !DIExpression()), !dbg !3094
  %123 = fdiv double %41, 1.000000e+50, !dbg !3207
  tail call void @llvm.dbg.value(metadata double %123, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3076, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3073, metadata !DIExpression()), !dbg !3094
  br label %135, !dbg !3208

124:                                              ; preds = %114
  %125 = fcmp olt double %112, 0x358DEE7A4AD4B81E, !dbg !3209
  %126 = fcmp olt double %115, 0x358DEE7A4AD4B81E
  %127 = or i1 %125, %126, !dbg !3211
  br i1 %127, label %128, label %135, !dbg !3211

128:                                              ; preds = %124
  %129 = fmul double %98, 1.000000e+50, !dbg !3212
  tail call void @llvm.dbg.value(metadata double %129, metadata !3091, metadata !DIExpression()), !dbg !3132
  %130 = fmul double %103, 1.000000e+50, !dbg !3214
  tail call void @llvm.dbg.value(metadata double %130, metadata !3092, metadata !DIExpression()), !dbg !3132
  %131 = fmul double %37, 1.000000e+50, !dbg !3215
  tail call void @llvm.dbg.value(metadata double %131, metadata !3078, metadata !DIExpression()), !dbg !3094
  %132 = fmul double %40, 1.000000e+50, !dbg !3216
  tail call void @llvm.dbg.value(metadata double %132, metadata !3075, metadata !DIExpression()), !dbg !3094
  %133 = fmul double %38, 1.000000e+50, !dbg !3217
  tail call void @llvm.dbg.value(metadata double %133, metadata !3077, metadata !DIExpression()), !dbg !3094
  %134 = fmul double %41, 1.000000e+50, !dbg !3218
  tail call void @llvm.dbg.value(metadata double %134, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3076, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3073, metadata !DIExpression()), !dbg !3094
  br label %135, !dbg !3219

135:                                              ; preds = %117, %128, %124
  %136 = phi double [ %120, %117 ], [ %131, %128 ], [ %37, %124 ], !dbg !3094
  %137 = phi double [ %122, %117 ], [ %133, %128 ], [ %38, %124 ], !dbg !3094
  %138 = phi double [ %121, %117 ], [ %132, %128 ], [ %40, %124 ], !dbg !3094
  %139 = phi double [ %123, %117 ], [ %134, %128 ], [ %41, %124 ], !dbg !3094
  %140 = phi double [ %118, %117 ], [ %129, %128 ], [ %98, %124 ], !dbg !3132
  %141 = phi double [ %119, %117 ], [ %130, %128 ], [ %103, %124 ], !dbg !3132
  tail call void @llvm.dbg.value(metadata double %141, metadata !3092, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata double %140, metadata !3091, metadata !DIExpression()), !dbg !3132
  tail call void @llvm.dbg.value(metadata double %139, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %138, metadata !3075, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %137, metadata !3077, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %136, metadata !3078, metadata !DIExpression()), !dbg !3094
  %142 = add nuw nsw i32 %44, 1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !3065, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %139, metadata !3073, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %138, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %141, metadata !3075, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %137, metadata !3076, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %136, metadata !3077, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double %140, metadata !3078, metadata !DIExpression()), !dbg !3094
  br label %36

143:                                              ; preds = %36
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !3065, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3073, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3074, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3075, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3076, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3077, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata double poison, metadata !3078, metadata !DIExpression()), !dbg !3094
  store double %104, ptr %3, align 8, !dbg !3221, !tbaa !118
  %144 = fmul double %104, %107, !dbg !3222
  %145 = tail call double @llvm.fabs.f64(double %144), !dbg !3223
  %146 = fmul double %145, 2.000000e+00, !dbg !3224
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3225
  %148 = add nsw i32 %44, -1, !dbg !3226
  %149 = sitofp i32 %148 to double, !dbg !3226
  %150 = fmul double %149, 0x3CC0000000000000, !dbg !3227
  %151 = tail call double @llvm.fabs.f64(double %104), !dbg !3228
  %152 = fmul double %150, %151, !dbg !3229
  %153 = fadd double %152, %146, !dbg !3230
  store double %153, ptr %147, align 8, !dbg !3230, !tbaa !125
  ret void, !dbg !3231
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @hyperg_1F1_1_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !dbg !1687 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1690, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double %1, metadata !1691, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1692, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1693, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1694, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1695, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1686, metadata !DIExpression()), !dbg !3232
  br label %4, !dbg !3233

4:                                                ; preds = %3, %4
  %5 = phi double [ 1.000000e+00, %3 ], [ %20, %4 ]
  %6 = phi double [ 1.000000e+00, %3 ], [ %12, %4 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %19, %4 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %13, %4 ]
  tail call void @llvm.dbg.value(metadata double %5, metadata !1686, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double %6, metadata !1695, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double %7, metadata !1694, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata double %8, metadata !1693, metadata !DIExpression()), !dbg !3232
  %9 = fadd double %5, %0, !dbg !3234
  %10 = fadd double %9, -1.000000e+00, !dbg !3235
  %11 = fdiv double %1, %10, !dbg !3236
  %12 = fmul double %6, %11, !dbg !3237
  tail call void @llvm.dbg.value(metadata double %12, metadata !1695, metadata !DIExpression()), !dbg !3232
  %13 = fadd double %8, %12, !dbg !3238
  tail call void @llvm.dbg.value(metadata double %13, metadata !1693, metadata !DIExpression()), !dbg !3232
  %14 = tail call double @llvm.fabs.f64(double %12), !dbg !3239
  %15 = fmul double %14, 0x3CE0000000000000, !dbg !3240
  %16 = tail call double @llvm.fabs.f64(double %13), !dbg !3241
  %17 = fmul double %16, 0x3CB0000000000000, !dbg !3242
  %18 = fadd double %15, %17, !dbg !3243
  %19 = fadd double %7, %18, !dbg !3244
  tail call void @llvm.dbg.value(metadata double %19, metadata !1694, metadata !DIExpression()), !dbg !3232
  %20 = fadd double %5, 1.000000e+00, !dbg !3245
  tail call void @llvm.dbg.value(metadata double %20, metadata !1686, metadata !DIExpression()), !dbg !3232
  %21 = fdiv double %12, %13, !dbg !3246
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !3247
  %23 = fcmp ogt double %22, 0x3C90000000000000, !dbg !3248
  br i1 %23, label %4, label %24, !dbg !3233, !llvm.loop !3249

24:                                               ; preds = %4
  store double %13, ptr %2, align 8, !dbg !3251, !tbaa !118
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !3252
  %26 = fmul double %14, 2.000000e+00, !dbg !3253
  %27 = fadd double %19, %26, !dbg !3254
  store double %27, ptr %25, align 8, !dbg !3254, !tbaa !125
  ret void, !dbg !3255
}

declare !dbg !3256 i32 @gsl_sf_exprel_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3257 i32 @gsl_sf_exprel_2_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3258 double @log1p(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3259 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3260 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3261 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3282
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3270, metadata !DIExpression(), metadata !3282, metadata ptr %5, metadata !DIExpression()), !dbg !3283
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3276, metadata !DIExpression(), metadata !3284, metadata ptr %6, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata double %0, metadata !3263, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.dbg.value(metadata double %1, metadata !3264, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.dbg.value(metadata double %2, metadata !3265, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3266, metadata !DIExpression()), !dbg !3286
  %7 = tail call double @llvm.fabs.f64(double %2), !dbg !3287
  %8 = fcmp olt double %7, %1, !dbg !3288
  %9 = tail call double @llvm.fabs.f64(double %0)
  %10 = fcmp olt double %9, 0x3E50000000000000
  %11 = and i1 %10, %8, !dbg !3289
  br i1 %11, label %12, label %54, !dbg !3289

12:                                               ; preds = %4
  %13 = fadd double %0, %1, !dbg !3290
  tail call void @llvm.dbg.value(metadata double %13, metadata !3267, metadata !DIExpression()), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !3291
  %14 = fmul double %13, %2, !dbg !3292
  %15 = fdiv double %14, %1, !dbg !3293
  %16 = call i32 @gsl_sf_exp_e(double noundef %15, ptr noundef nonnull %5) #9, !dbg !3294
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3271, metadata !DIExpression()), !dbg !3283
  %17 = fmul double %1, 2.000000e+00, !dbg !3295
  %18 = fmul double %17, %1, !dbg !3296
  %19 = fadd double %1, 1.000000e+00, !dbg !3297
  %20 = fmul double %19, %18, !dbg !3298
  %21 = fdiv double %13, %20, !dbg !3299
  tail call void @llvm.dbg.value(metadata double %21, metadata !3272, metadata !DIExpression()), !dbg !3283
  %22 = fmul double %13, 2.000000e+00, !dbg !3300
  %23 = fsub double %1, %22, !dbg !3301
  %24 = fmul double %13, %23, !dbg !3302
  %25 = fmul double %1, 3.000000e+00, !dbg !3303
  %26 = fmul double %25, %1, !dbg !3304
  %27 = fmul double %26, %1, !dbg !3305
  %28 = fmul double %19, %27, !dbg !3306
  %29 = fadd double %1, 2.000000e+00, !dbg !3307
  %30 = fmul double %29, %28, !dbg !3308
  %31 = fdiv double %24, %30, !dbg !3309
  tail call void @llvm.dbg.value(metadata double %31, metadata !3273, metadata !DIExpression()), !dbg !3283
  %32 = fmul double %31, %2, !dbg !3310
  %33 = fadd double %21, %32, !dbg !3311
  tail call void @llvm.dbg.value(metadata double %33, metadata !3274, metadata !DIExpression()), !dbg !3283
  %34 = fmul double %0, %2, !dbg !3312
  %35 = fmul double %34, %2, !dbg !3313
  %36 = fmul double %35, %33, !dbg !3314
  %37 = fsub double 1.000000e+00, %36, !dbg !3315
  tail call void @llvm.dbg.value(metadata double %37, metadata !3275, metadata !DIExpression()), !dbg !3283
  %38 = load double, ptr %5, align 8, !dbg !3316, !tbaa !118
  %39 = fmul double %37, %38, !dbg !3317
  store double %39, ptr %3, align 8, !dbg !3318, !tbaa !118
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3319
  %41 = load double, ptr %40, align 8, !dbg !3319, !tbaa !125
  %42 = call double @llvm.fabs.f64(double %37), !dbg !3320
  %43 = fmul double %42, %41, !dbg !3321
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3322
  %45 = call double @llvm.fabs.f64(double %38), !dbg !3323
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !3324
  %47 = call double @llvm.fabs.f64(double %36), !dbg !3325
  %48 = fadd double %47, 1.000000e+00, !dbg !3326
  %49 = fmul double %48, %46, !dbg !3327
  %50 = fadd double %43, %49, !dbg !3328
  %51 = call double @llvm.fabs.f64(double %39), !dbg !3329
  %52 = fmul double %51, 0x3CD0000000000000, !dbg !3330
  %53 = fadd double %52, %50, !dbg !3331
  store double %53, ptr %44, align 8, !dbg !3331, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !3332
  br label %70

54:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !3333
  %55 = fneg double %0, !dbg !3334
  %56 = fneg double %2, !dbg !3335
  %57 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %55, double noundef %1, double noundef %56, ptr noundef nonnull %6), !dbg !3336
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !3278, metadata !DIExpression()), !dbg !3285
  %58 = load double, ptr %6, align 8, !dbg !3337, !tbaa !118
  %59 = fcmp une double %58, 0.000000e+00, !dbg !3338
  br i1 %59, label %60, label %67, !dbg !3339

60:                                               ; preds = %54
  %61 = fmul double %7, 0x3CC0000000000000, !dbg !3340
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3341
  %63 = load double, ptr %62, align 8, !dbg !3341, !tbaa !125
  %64 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %61, double noundef %58, double noundef %63, ptr noundef %3) #9, !dbg !3342
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !3279, metadata !DIExpression()), !dbg !3343
  %65 = icmp eq i32 %64, 0, !dbg !3344
  %66 = select i1 %65, i32 %57, i32 %64, !dbg !3344
  br label %68

67:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !3345
  br label %68, !dbg !3347

68:                                               ; preds = %67, %60
  %69 = phi i32 [ %66, %60 ], [ %57, %67 ], !dbg !3348
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !3349
  br label %70

70:                                               ; preds = %68, %12
  %71 = phi i32 [ %16, %12 ], [ %69, %68 ], !dbg !3350
  ret i32 %71, !dbg !3351
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_U(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3352 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3408
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3360, metadata !DIExpression(), metadata !3408, metadata ptr %5, metadata !DIExpression()), !dbg !3409
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3361, metadata !DIExpression(), metadata !3410, metadata ptr %6, metadata !DIExpression()), !dbg !3409
  %7 = alloca double, align 8, !DIAssignID !3411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3362, metadata !DIExpression(), metadata !3411, metadata ptr %7, metadata !DIExpression()), !dbg !3409
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3369, metadata !DIExpression(), metadata !3412, metadata ptr %8, metadata !DIExpression()), !dbg !3409
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3370, metadata !DIExpression(), metadata !3413, metadata ptr %9, metadata !DIExpression()), !dbg !3409
  %10 = alloca double, align 8, !DIAssignID !3414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3371, metadata !DIExpression(), metadata !3414, metadata ptr %10, metadata !DIExpression()), !dbg !3409
  %11 = alloca double, align 8, !DIAssignID !3415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3372, metadata !DIExpression(), metadata !3415, metadata ptr %11, metadata !DIExpression()), !dbg !3409
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3378, metadata !DIExpression(), metadata !3416, metadata ptr %12, metadata !DIExpression()), !dbg !3409
  %13 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !3417
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3379, metadata !DIExpression(), metadata !3417, metadata ptr %13, metadata !DIExpression()), !dbg !3409
  %14 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !3418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3389, metadata !DIExpression(), metadata !3418, metadata ptr %14, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata double %0, metadata !3354, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata double %1, metadata !3355, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata double %2, metadata !3356, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3409
  %15 = fsub double 2.000000e+00, %1, !dbg !3419
  tail call void @llvm.dbg.value(metadata double %15, metadata !3358, metadata !DIExpression()), !dbg !3409
  %16 = fsub double %0, %1, !dbg !3420
  %17 = fadd double %16, 1.000000e+00, !dbg !3421
  tail call void @llvm.dbg.value(metadata double %17, metadata !3359, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !3422
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !3422
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9, !dbg !3423
  %18 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %7) #9, !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !3363, metadata !DIExpression()), !dbg !3409
  %19 = call i32 @gsl_sf_lngamma_e(double noundef %15, ptr noundef nonnull %6) #9, !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !3364, metadata !DIExpression()), !dbg !3409
  %20 = icmp eq i32 %18, 0, !dbg !3426
  %21 = select i1 %20, i32 %19, i32 %18, !dbg !3426
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3365, metadata !DIExpression()), !dbg !3409
  %22 = fadd double %15, -1.000000e+00, !dbg !3427
  %23 = call double @log(double noundef %2) #9, !dbg !3428
  %24 = fmul double %22, %23, !dbg !3429
  tail call void @llvm.dbg.value(metadata double %24, metadata !3366, metadata !DIExpression()), !dbg !3409
  %25 = load double, ptr %5, align 8, !dbg !3430, !tbaa !118
  %26 = load double, ptr %6, align 8, !dbg !3431, !tbaa !118
  %27 = fsub double %25, %26, !dbg !3432
  %28 = fadd double %24, %27, !dbg !3433
  tail call void @llvm.dbg.value(metadata double %28, metadata !3367, metadata !DIExpression()), !dbg !3409
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3434
  %30 = load double, ptr %29, align 8, !dbg !3434, !tbaa !125
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3435
  %32 = load double, ptr %31, align 8, !dbg !3435, !tbaa !125
  %33 = fadd double %30, %32, !dbg !3436
  %34 = call double @llvm.fabs.f64(double %24), !dbg !3437
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !3438
  %36 = fadd double %35, %33, !dbg !3439
  tail call void @llvm.dbg.value(metadata double %36, metadata !3368, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !3440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9, !dbg !3441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9, !dbg !3441
  %37 = fsub double 2.000000e+00, %15, !dbg !3442
  %38 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %37, ptr noundef nonnull %8, ptr noundef nonnull %10) #9, !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !3373, metadata !DIExpression()), !dbg !3409
  %39 = fadd double %17, 1.000000e+00, !dbg !3444
  %40 = fsub double %39, %15, !dbg !3445
  %41 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %40, ptr noundef nonnull %9, ptr noundef nonnull %11) #9, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3374, metadata !DIExpression()), !dbg !3409
  %42 = icmp eq i32 %38, 0, !dbg !3447
  %43 = select i1 %42, i32 %41, i32 %38, !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !3375, metadata !DIExpression()), !dbg !3409
  %44 = load double, ptr %8, align 8, !dbg !3448, !tbaa !118
  %45 = load double, ptr %9, align 8, !dbg !3449, !tbaa !118
  %46 = fsub double %44, %45, !dbg !3450
  tail call void @llvm.dbg.value(metadata double %46, metadata !3376, metadata !DIExpression()), !dbg !3409
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !3451
  %48 = load double, ptr %47, align 8, !dbg !3451, !tbaa !125
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !3452
  %50 = load double, ptr %49, align 8, !dbg !3452, !tbaa !125
  %51 = fadd double %48, %50, !dbg !3453
  %52 = call double @llvm.fabs.f64(double %44), !dbg !3454
  %53 = call double @llvm.fabs.f64(double %45), !dbg !3455
  %54 = fadd double %52, %53, !dbg !3456
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !3457
  %56 = fadd double %51, %55, !dbg !3458
  tail call void @llvm.dbg.value(metadata double %56, metadata !3377, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !3459
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9, !dbg !3460
  %57 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %17, double noundef %15, double noundef %2, ptr noundef nonnull %12), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !3386, metadata !DIExpression()), !dbg !3409
  %58 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %17, double noundef %15, double noundef %2, ptr noundef nonnull %13) #9, !dbg !3462
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !3387, metadata !DIExpression()), !dbg !3409
  %59 = icmp eq i32 %57, 0, !dbg !3463
  %60 = select i1 %59, i32 %58, i32 %57, !dbg !3463
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !3388, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9, !dbg !3464
  %61 = load double, ptr %10, align 8, !dbg !3465, !tbaa !313
  %62 = load double, ptr %11, align 8, !dbg !3466, !tbaa !313
  %63 = fmul double %61, %62, !dbg !3467
  %64 = load double, ptr %12, align 8, !dbg !3468, !tbaa !118
  %65 = fmul double %63, %64, !dbg !3469
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !3470
  %67 = load double, ptr %66, align 8, !dbg !3470, !tbaa !125
  %68 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %46, double noundef %56, double noundef %65, double noundef %67, ptr noundef nonnull %14) #9, !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !3390, metadata !DIExpression()), !dbg !3409
  %69 = fsub double 1.000000e+00, %15, !dbg !3472
  tail call void @llvm.dbg.value(metadata double %69, metadata !3391, metadata !DIExpression()), !dbg !3409
  %70 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 2, !dbg !3473
  %71 = load i32, ptr %70, align 8, !dbg !3473, !tbaa !3474
  %72 = sitofp i32 %71 to double, !dbg !3477
  %73 = fmul double %72, 0x40026BB1BBB55516, !dbg !3478
  tail call void @llvm.dbg.value(metadata double %73, metadata !3392, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata double poison, metadata !3393, metadata !DIExpression()), !dbg !3409
  %74 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 2, !dbg !3479
  %75 = load i32, ptr %74, align 8, !dbg !3479, !tbaa !3474
  %76 = sitofp i32 %75 to double, !dbg !3480
  %77 = fmul double %76, 0x40026BB1BBB55516, !dbg !3481
  tail call void @llvm.dbg.value(metadata double %77, metadata !3394, metadata !DIExpression()), !dbg !3409
  tail call void @llvm.dbg.value(metadata double poison, metadata !3395, metadata !DIExpression()), !dbg !3409
  %78 = fcmp ogt double %73, %77, !dbg !3482
  br i1 %78, label %79, label %114, !dbg !3483

79:                                               ; preds = %4
  %80 = call double @llvm.fabs.f64(double %73), !dbg !3484
  %81 = fmul double %80, 0x3CC0000000000000, !dbg !3485
  tail call void @llvm.dbg.value(metadata double %81, metadata !3393, metadata !DIExpression()), !dbg !3409
  %82 = fsub double %77, %73, !dbg !3486
  %83 = call double @exp(double noundef %82) #9, !dbg !3487
  tail call void @llvm.dbg.value(metadata double %83, metadata !3397, metadata !DIExpression()), !dbg !3488
  %84 = call double @llvm.fabs.f64(double %82), !dbg !3489
  %85 = fadd double %84, 1.000000e+00, !dbg !3490
  %86 = fmul double %85, 0x3CC0000000000000, !dbg !3491
  %87 = fmul double %86, %83, !dbg !3492
  tail call void @llvm.dbg.value(metadata double %87, metadata !3400, metadata !DIExpression()), !dbg !3488
  %88 = load double, ptr %14, align 8, !dbg !3493, !tbaa !3494
  %89 = fmul double %83, %88, !dbg !3495
  %90 = load double, ptr %13, align 8, !dbg !3496, !tbaa !3494
  %91 = fmul double %69, %90, !dbg !3497
  %92 = fsub double %89, %91, !dbg !3498
  tail call void @llvm.dbg.value(metadata double %92, metadata !3401, metadata !DIExpression()), !dbg !3488
  %93 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 1, !dbg !3499
  %94 = load double, ptr %93, align 8, !dbg !3499, !tbaa !3500
  %95 = fmul double %83, %94, !dbg !3501
  %96 = call double @llvm.fabs.f64(double %69), !dbg !3502
  %97 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 1, !dbg !3503
  %98 = load double, ptr %97, align 8, !dbg !3503, !tbaa !3500
  %99 = fmul double %96, %98, !dbg !3504
  %100 = fadd double %95, %99, !dbg !3505
  %101 = call double @llvm.fabs.f64(double %88), !dbg !3506
  %102 = fmul double %87, %101, !dbg !3507
  %103 = fadd double %102, %100, !dbg !3508
  %104 = call double @llvm.fabs.f64(double %89), !dbg !3509
  %105 = call double @llvm.fabs.f64(double %91), !dbg !3510
  %106 = fadd double %104, %105, !dbg !3511
  %107 = fmul double %106, 0x3CB0000000000000, !dbg !3512
  %108 = fadd double %107, %103, !dbg !3513
  tail call void @llvm.dbg.value(metadata double %108, metadata !3402, metadata !DIExpression()), !dbg !3488
  %109 = fadd double %28, %73, !dbg !3514
  %110 = fadd double %36, %81, !dbg !3515
  %111 = load double, ptr %7, align 8, !dbg !3516, !tbaa !313
  %112 = fmul double %92, %111, !dbg !3517
  %113 = call i32 @gsl_sf_exp_mult_err_e(double noundef %109, double noundef %110, double noundef %112, double noundef %108, ptr noundef %3) #9, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !3396, metadata !DIExpression()), !dbg !3409
  br label %150, !dbg !3519

114:                                              ; preds = %4
  %115 = call double @llvm.fabs.f64(double %77), !dbg !3520
  %116 = fmul double %115, 0x3CC0000000000000, !dbg !3521
  tail call void @llvm.dbg.value(metadata double %116, metadata !3395, metadata !DIExpression()), !dbg !3409
  %117 = fsub double %73, %77, !dbg !3522
  %118 = call double @exp(double noundef %117) #9, !dbg !3523
  tail call void @llvm.dbg.value(metadata double %118, metadata !3403, metadata !DIExpression()), !dbg !3524
  %119 = fsub double %77, %73, !dbg !3525
  %120 = call double @llvm.fabs.f64(double %119), !dbg !3526
  %121 = fadd double %120, 1.000000e+00, !dbg !3527
  %122 = fmul double %121, 0x3CC0000000000000, !dbg !3528
  %123 = fmul double %122, %118, !dbg !3529
  tail call void @llvm.dbg.value(metadata double %123, metadata !3405, metadata !DIExpression()), !dbg !3524
  %124 = load double, ptr %14, align 8, !dbg !3530, !tbaa !3494
  %125 = fmul double %69, %118, !dbg !3531
  %126 = load double, ptr %13, align 8, !dbg !3532, !tbaa !3494
  %127 = fmul double %125, %126, !dbg !3533
  %128 = fsub double %124, %127, !dbg !3534
  tail call void @llvm.dbg.value(metadata double %128, metadata !3406, metadata !DIExpression()), !dbg !3524
  %129 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 1, !dbg !3535
  %130 = load double, ptr %129, align 8, !dbg !3535, !tbaa !3500
  %131 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 1, !dbg !3536
  %132 = load double, ptr %131, align 8, !dbg !3536, !tbaa !3500
  %133 = fmul double %125, %132, !dbg !3537
  %134 = call double @llvm.fabs.f64(double %133), !dbg !3538
  %135 = fadd double %130, %134, !dbg !3539
  %136 = fmul double %69, %123, !dbg !3540
  %137 = fmul double %136, %126, !dbg !3541
  %138 = call double @llvm.fabs.f64(double %137), !dbg !3542
  %139 = fadd double %138, %135, !dbg !3543
  %140 = call double @llvm.fabs.f64(double %124), !dbg !3544
  %141 = call double @llvm.fabs.f64(double %127), !dbg !3545
  %142 = fadd double %140, %141, !dbg !3546
  %143 = fmul double %142, 0x3CB0000000000000, !dbg !3547
  %144 = fadd double %143, %139, !dbg !3548
  tail call void @llvm.dbg.value(metadata double %144, metadata !3407, metadata !DIExpression()), !dbg !3524
  %145 = fadd double %28, %77, !dbg !3549
  %146 = fadd double %36, %116, !dbg !3550
  %147 = load double, ptr %7, align 8, !dbg !3551, !tbaa !313
  %148 = fmul double %128, %147, !dbg !3552
  %149 = call i32 @gsl_sf_exp_mult_err_e(double noundef %145, double noundef %146, double noundef %148, double noundef %144, ptr noundef %3) #9, !dbg !3553
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !3396, metadata !DIExpression()), !dbg !3409
  br label %150

150:                                              ; preds = %114, %79
  %151 = phi i32 [ %113, %79 ], [ %149, %114 ], !dbg !3554
  tail call void @llvm.dbg.value(metadata i32 %151, metadata !3396, metadata !DIExpression()), !dbg !3409
  %152 = icmp eq i32 %151, 0, !dbg !3555
  br i1 %152, label %153, label %160, !dbg !3555

153:                                              ; preds = %150
  %154 = icmp eq i32 %68, 0, !dbg !3555
  br i1 %154, label %155, label %160, !dbg !3555

155:                                              ; preds = %153
  %156 = icmp eq i32 %60, 0, !dbg !3555
  br i1 %156, label %157, label %160, !dbg !3555

157:                                              ; preds = %155
  %158 = icmp eq i32 %43, 0, !dbg !3555
  %159 = select i1 %158, i32 %21, i32 %43, !dbg !3555
  br label %160, !dbg !3555

160:                                              ; preds = %157, %155, %153, %150
  %161 = phi i32 [ %151, %150 ], [ %68, %153 ], [ %60, %155 ], [ %159, %157 ], !dbg !3555
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !3556
  ret i32 %161, !dbg !3557
}

declare !dbg !3558 i32 @gsl_sf_hyperg_U_e10_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3563 i32 @gsl_sf_exp_mult_err_e10_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1803, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg_1F1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0fde27478408e932c594bc894a16cf43")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1803, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2059, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 42)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2064, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 38)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1062, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 9)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 6)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !70, globals: !71, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 39, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!37 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!38 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!39 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!40 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!41 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!42 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!43 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!44 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!45 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!46 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!47 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!48 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!49 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!50 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!51 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!52 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!53 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!54 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!55 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!56 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!57 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!58 = !DIEnumerator(name: "GSL_ESING", value: 21)
!59 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!60 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!61 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!62 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!63 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!64 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!65 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!66 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!67 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!68 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!69 = !DIEnumerator(name: "GSL_EOF", value: 32)
!70 = !{!33}
!71 = !{!0, !7, !9, !14, !19, !24}
!72 = !{i32 7, !"Dwarf Version", i32 5}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{i32 8, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!79 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!80 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_int_e", scope: !2, file: !2, line: 1790, type: !81, scopeLine: 1791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !93)
!81 = !DISubroutineType(types: !82)
!82 = !{!33, !83, !83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !88, line: 41, baseType: !89)
!88 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !88, line: 37, size: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !88, line: 38, baseType: !85, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !89, file: !88, line: 39, baseType: !85, size: 64, offset: 64)
!93 = !{!94, !95, !96, !97, !98, !109, !110}
!94 = !DILocalVariable(name: "a", arg: 1, scope: !80, file: !2, line: 1790, type: !83)
!95 = !DILocalVariable(name: "b", arg: 2, scope: !80, file: !2, line: 1790, type: !83)
!96 = !DILocalVariable(name: "x", arg: 3, scope: !80, file: !2, line: 1790, type: !84)
!97 = !DILocalVariable(name: "result", arg: 4, scope: !80, file: !2, line: 1790, type: !86)
!98 = !DILocalVariable(name: "Kummer_1F1", scope: !99, file: !2, line: 1829, type: !87)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 1825, column: 27)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 1825, column: 11)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 1822, column: 11)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 1818, column: 11)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 1814, column: 11)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 1810, column: 11)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 1805, column: 11)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 1802, column: 11)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 1799, column: 11)
!108 = distinct !DILexicalBlock(scope: !80, file: !2, line: 1794, column: 6)
!109 = !DILocalVariable(name: "stat_K", scope: !99, file: !2, line: 1830, type: !33)
!110 = !DILocalVariable(name: "stat_e", scope: !99, file: !2, line: 1831, type: !33)
!111 = distinct !DIAssignID()
!112 = !DILocation(line: 0, scope: !99)
!113 = !DILocation(line: 0, scope: !80)
!114 = !DILocation(line: 1794, column: 8, scope: !108)
!115 = !DILocation(line: 1794, column: 6, scope: !80)
!116 = !DILocation(line: 1795, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 1794, column: 16)
!118 = !{!119, !120, i64 0}
!119 = !{!"gsl_sf_result_struct", !120, i64 0, !120, i64 8}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 1796, column: 13, scope: !117)
!124 = !DILocation(line: 1796, column: 17, scope: !117)
!125 = !{!119, !120, i64 8}
!126 = !DILocation(line: 1797, column: 5, scope: !117)
!127 = !DILocation(line: 1799, column: 13, scope: !107)
!128 = !DILocation(line: 1799, column: 11, scope: !108)
!129 = !DILocation(line: 1800, column: 12, scope: !130)
!130 = distinct !DILexicalBlock(scope: !107, file: !2, line: 1799, column: 19)
!131 = !DILocation(line: 1800, column: 5, scope: !130)
!132 = !DILocation(line: 1802, column: 13, scope: !106)
!133 = !DILocation(line: 1802, column: 11, scope: !107)
!134 = !DILocation(line: 1803, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 1803, column: 5)
!136 = distinct !DILexicalBlock(scope: !106, file: !2, line: 1802, column: 19)
!137 = !DILocation(line: 1803, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !2, line: 1803, column: 5)
!139 = !DILocation(line: 1805, column: 13, scope: !105)
!140 = !DILocation(line: 1805, column: 11, scope: !106)
!141 = !DILocation(line: 1806, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !105, file: !2, line: 1805, column: 19)
!143 = !DILocation(line: 1807, column: 13, scope: !142)
!144 = !DILocation(line: 1807, column: 17, scope: !142)
!145 = !DILocation(line: 1808, column: 5, scope: !142)
!146 = !DILocation(line: 1810, column: 13, scope: !104)
!147 = !DILocation(line: 1810, column: 17, scope: !104)
!148 = !DILocation(line: 1810, column: 23, scope: !104)
!149 = !DILocation(line: 1810, column: 27, scope: !104)
!150 = !DILocation(line: 1812, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 1812, column: 5)
!152 = distinct !DILexicalBlock(scope: !104, file: !2, line: 1810, column: 38)
!153 = !DILocation(line: 1812, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !2, line: 1812, column: 5)
!155 = !DILocation(line: 1814, column: 13, scope: !103)
!156 = !DILocation(line: 1814, column: 22, scope: !103)
!157 = !DILocation(line: 1814, column: 47, scope: !103)
!158 = !DILocation(line: 1814, column: 46, scope: !103)
!159 = !DILocation(line: 1814, column: 41, scope: !103)
!160 = !DILocalVariable(name: "a", arg: 1, scope: !161, file: !162, line: 69, type: !85)
!161 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !162, file: !162, line: 69, type: !163, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !165)
!162 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!163 = !DISubroutineType(types: !164)
!164 = !{!85, !85, !85}
!165 = !{!160, !166}
!166 = !DILocalVariable(name: "b", arg: 2, scope: !161, file: !162, line: 69, type: !85)
!167 = !DILocation(line: 0, scope: !161, inlinedAt: !168)
!168 = distinct !DILocation(line: 1814, column: 25, scope: !103)
!169 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !168)
!170 = !DILocation(line: 1814, column: 74, scope: !103)
!171 = !DILocation(line: 1814, column: 73, scope: !103)
!172 = !DILocation(line: 1814, column: 68, scope: !103)
!173 = !DILocation(line: 0, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1814, column: 52, scope: !103)
!175 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !174)
!176 = !DILocation(line: 1814, column: 51, scope: !103)
!177 = !DILocation(line: 1814, column: 85, scope: !103)
!178 = !DILocation(line: 1814, column: 79, scope: !103)
!179 = !DILocation(line: 1814, column: 11, scope: !104)
!180 = !DILocation(line: 1816, column: 34, scope: !181)
!181 = distinct !DILexicalBlock(scope: !103, file: !2, line: 1814, column: 90)
!182 = !DILocation(line: 1816, column: 37, scope: !181)
!183 = !DILocation(line: 1816, column: 12, scope: !181)
!184 = !DILocation(line: 1816, column: 5, scope: !181)
!185 = !DILocation(line: 1818, column: 13, scope: !102)
!186 = !DILocation(line: 1818, column: 22, scope: !102)
!187 = !DILocation(line: 1818, column: 46, scope: !102)
!188 = !DILocation(line: 1818, column: 41, scope: !102)
!189 = !DILocation(line: 0, scope: !161, inlinedAt: !190)
!190 = distinct !DILocation(line: 1818, column: 25, scope: !102)
!191 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !190)
!192 = !DILocation(line: 1818, column: 72, scope: !102)
!193 = !DILocation(line: 1818, column: 74, scope: !102)
!194 = !DILocation(line: 1818, column: 71, scope: !102)
!195 = !DILocation(line: 1818, column: 66, scope: !102)
!196 = !DILocation(line: 0, scope: !161, inlinedAt: !197)
!197 = distinct !DILocation(line: 1818, column: 50, scope: !102)
!198 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !197)
!199 = !DILocation(line: 1818, column: 49, scope: !102)
!200 = !DILocation(line: 1818, column: 87, scope: !102)
!201 = !DILocation(line: 1818, column: 85, scope: !102)
!202 = !DILocation(line: 1818, column: 79, scope: !102)
!203 = !DILocation(line: 1818, column: 11, scope: !103)
!204 = !DILocation(line: 1820, column: 37, scope: !205)
!205 = distinct !DILexicalBlock(scope: !102, file: !2, line: 1818, column: 96)
!206 = !DILocation(line: 1820, column: 12, scope: !205)
!207 = !DILocation(line: 1820, column: 5, scope: !205)
!208 = !DILocation(line: 1822, column: 17, scope: !101)
!209 = !DILocation(line: 1823, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !101, file: !2, line: 1822, column: 27)
!211 = !DILocation(line: 1823, column: 5, scope: !210)
!212 = !DILocation(line: 1822, column: 13, scope: !101)
!213 = !DILocation(line: 1825, column: 17, scope: !100)
!214 = !DILocation(line: 1829, column: 5, scope: !99)
!215 = !DILocation(line: 1830, column: 40, scope: !99)
!216 = !DILocation(line: 1830, column: 47, scope: !99)
!217 = !DILocation(line: 1830, column: 18, scope: !99)
!218 = !DILocation(line: 1831, column: 61, scope: !99)
!219 = !DILocation(line: 1831, column: 59, scope: !99)
!220 = !DILocation(line: 1832, column: 50, scope: !99)
!221 = !DILocation(line: 1832, column: 66, scope: !99)
!222 = !DILocation(line: 1831, column: 18, scope: !99)
!223 = !DILocation(line: 1834, column: 12, scope: !99)
!224 = !DILocation(line: 1835, column: 3, scope: !100)
!225 = !DILocation(line: 1838, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !100, file: !2, line: 1836, column: 8)
!227 = !DILocation(line: 1838, column: 5, scope: !226)
!228 = !DILocation(line: 0, scope: !108)
!229 = !DILocation(line: 1840, column: 1, scope: !80)
!230 = !DISubprogram(name: "gsl_sf_exp_e", scope: !231, file: !231, line: 45, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!232 = !DISubroutineType(types: !233)
!233 = !{!33, !84, !86}
!234 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237, !237, !33, !33}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!239 = distinct !DISubprogram(name: "hyperg_1F1_asymp_posx", scope: !2, file: !2, line: 85, type: !240, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{!33, !84, !84, !84, !86}
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !256, !257, !260, !261, !262, !263, !264}
!243 = !DILocalVariable(name: "a", arg: 1, scope: !239, file: !2, line: 85, type: !84)
!244 = !DILocalVariable(name: "b", arg: 2, scope: !239, file: !2, line: 85, type: !84)
!245 = !DILocalVariable(name: "x", arg: 3, scope: !239, file: !2, line: 85, type: !84)
!246 = !DILocalVariable(name: "result", arg: 4, scope: !239, file: !2, line: 86, type: !86)
!247 = !DILocalVariable(name: "lg_b", scope: !239, file: !2, line: 88, type: !87)
!248 = !DILocalVariable(name: "lg_a", scope: !239, file: !2, line: 89, type: !87)
!249 = !DILocalVariable(name: "sgn_b", scope: !239, file: !2, line: 90, type: !85)
!250 = !DILocalVariable(name: "sgn_a", scope: !239, file: !2, line: 91, type: !85)
!251 = !DILocalVariable(name: "stat_b", scope: !239, file: !2, line: 93, type: !33)
!252 = !DILocalVariable(name: "stat_a", scope: !239, file: !2, line: 94, type: !33)
!253 = !DILocalVariable(name: "F", scope: !254, file: !2, line: 97, type: !87)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 96, column: 54)
!255 = distinct !DILexicalBlock(scope: !239, file: !2, line: 96, column: 6)
!256 = !DILocalVariable(name: "stat_F", scope: !254, file: !2, line: 98, type: !33)
!257 = !DILocalVariable(name: "lnx", scope: !258, file: !2, line: 100, type: !85)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 99, column: 45)
!259 = distinct !DILexicalBlock(scope: !254, file: !2, line: 99, column: 8)
!260 = !DILocalVariable(name: "ln_term_val", scope: !258, file: !2, line: 101, type: !85)
!261 = !DILocalVariable(name: "ln_term_err", scope: !258, file: !2, line: 102, type: !85)
!262 = !DILocalVariable(name: "ln_pre_val", scope: !258, file: !2, line: 104, type: !85)
!263 = !DILocalVariable(name: "ln_pre_err", scope: !258, file: !2, line: 105, type: !85)
!264 = !DILocalVariable(name: "stat_e", scope: !258, file: !2, line: 106, type: !33)
!265 = distinct !DIAssignID()
!266 = !DILocation(line: 0, scope: !239)
!267 = distinct !DIAssignID()
!268 = distinct !DIAssignID()
!269 = distinct !DIAssignID()
!270 = distinct !DIAssignID()
!271 = !DILocation(line: 0, scope: !254)
!272 = !DILocation(line: 88, column: 3, scope: !239)
!273 = !DILocation(line: 89, column: 3, scope: !239)
!274 = !DILocation(line: 90, column: 3, scope: !239)
!275 = !DILocation(line: 91, column: 3, scope: !239)
!276 = !DILocation(line: 93, column: 16, scope: !239)
!277 = !DILocation(line: 94, column: 16, scope: !239)
!278 = !DILocation(line: 96, column: 13, scope: !255)
!279 = !DILocation(line: 96, column: 28, scope: !255)
!280 = !DILocation(line: 97, column: 5, scope: !254)
!281 = !DILocation(line: 98, column: 46, scope: !254)
!282 = !DILocation(line: 98, column: 53, scope: !254)
!283 = !DILocation(line: 98, column: 60, scope: !254)
!284 = !DILocation(line: 98, column: 18, scope: !254)
!285 = !DILocation(line: 99, column: 15, scope: !259)
!286 = !DILocation(line: 99, column: 30, scope: !259)
!287 = !DILocation(line: 100, column: 20, scope: !258)
!288 = !DILocation(line: 0, scope: !258)
!289 = !DILocation(line: 101, column: 30, scope: !258)
!290 = !DILocation(line: 101, column: 33, scope: !258)
!291 = !DILocation(line: 102, column: 53, scope: !258)
!292 = !DILocation(line: 102, column: 63, scope: !258)
!293 = !DILocation(line: 102, column: 61, scope: !258)
!294 = !DILocation(line: 102, column: 50, scope: !258)
!295 = !DILocation(line: 102, column: 74, scope: !258)
!296 = !DILocation(line: 102, column: 72, scope: !258)
!297 = !DILocation(line: 103, column: 52, scope: !258)
!298 = !DILocation(line: 103, column: 50, scope: !258)
!299 = !DILocation(line: 103, column: 26, scope: !258)
!300 = !DILocation(line: 104, column: 32, scope: !258)
!301 = !DILocation(line: 104, column: 43, scope: !258)
!302 = !DILocation(line: 104, column: 36, scope: !258)
!303 = !DILocation(line: 104, column: 47, scope: !258)
!304 = !DILocation(line: 104, column: 61, scope: !258)
!305 = !DILocation(line: 105, column: 32, scope: !258)
!306 = !DILocation(line: 105, column: 43, scope: !258)
!307 = !DILocation(line: 105, column: 36, scope: !258)
!308 = !DILocation(line: 105, column: 47, scope: !258)
!309 = !DILocation(line: 105, column: 87, scope: !258)
!310 = !DILocation(line: 105, column: 85, scope: !258)
!311 = !DILocation(line: 105, column: 61, scope: !258)
!312 = !DILocation(line: 107, column: 45, scope: !258)
!313 = !{!120, !120, i64 0}
!314 = !DILocation(line: 107, column: 51, scope: !258)
!315 = !DILocation(line: 107, column: 50, scope: !258)
!316 = !DILocation(line: 107, column: 59, scope: !258)
!317 = !DILocation(line: 107, column: 56, scope: !258)
!318 = !DILocation(line: 107, column: 66, scope: !258)
!319 = !DILocation(line: 106, column: 20, scope: !258)
!320 = !DILocation(line: 113, column: 19, scope: !321)
!321 = distinct !DILexicalBlock(scope: !259, file: !2, line: 111, column: 10)
!322 = !DILocation(line: 114, column: 7, scope: !321)
!323 = !DILocation(line: 0, scope: !259)
!324 = !DILocation(line: 116, column: 3, scope: !255)
!325 = !DILocation(line: 118, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 118, column: 5)
!327 = distinct !DILexicalBlock(scope: !255, file: !2, line: 117, column: 8)
!328 = !DILocation(line: 118, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !2, line: 118, column: 5)
!330 = !DILocation(line: 0, scope: !255)
!331 = !DILocation(line: 120, column: 1, scope: !239)
!332 = distinct !DISubprogram(name: "hyperg_1F1_asymp_negx", scope: !2, file: !2, line: 44, type: !240, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !347, !348, !351, !352, !353, !354}
!334 = !DILocalVariable(name: "a", arg: 1, scope: !332, file: !2, line: 44, type: !84)
!335 = !DILocalVariable(name: "b", arg: 2, scope: !332, file: !2, line: 44, type: !84)
!336 = !DILocalVariable(name: "x", arg: 3, scope: !332, file: !2, line: 44, type: !84)
!337 = !DILocalVariable(name: "result", arg: 4, scope: !332, file: !2, line: 45, type: !86)
!338 = !DILocalVariable(name: "lg_b", scope: !332, file: !2, line: 47, type: !87)
!339 = !DILocalVariable(name: "lg_bma", scope: !332, file: !2, line: 48, type: !87)
!340 = !DILocalVariable(name: "sgn_b", scope: !332, file: !2, line: 49, type: !85)
!341 = !DILocalVariable(name: "sgn_bma", scope: !332, file: !2, line: 50, type: !85)
!342 = !DILocalVariable(name: "stat_b", scope: !332, file: !2, line: 52, type: !33)
!343 = !DILocalVariable(name: "stat_bma", scope: !332, file: !2, line: 53, type: !33)
!344 = !DILocalVariable(name: "F", scope: !345, file: !2, line: 56, type: !87)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 55, column: 56)
!346 = distinct !DILexicalBlock(scope: !332, file: !2, line: 55, column: 6)
!347 = !DILocalVariable(name: "stat_F", scope: !345, file: !2, line: 57, type: !33)
!348 = !DILocalVariable(name: "ln_term_val", scope: !349, file: !2, line: 59, type: !85)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 58, column: 20)
!350 = distinct !DILexicalBlock(scope: !345, file: !2, line: 58, column: 8)
!351 = !DILocalVariable(name: "ln_term_err", scope: !349, file: !2, line: 60, type: !85)
!352 = !DILocalVariable(name: "ln_pre_val", scope: !349, file: !2, line: 61, type: !85)
!353 = !DILocalVariable(name: "ln_pre_err", scope: !349, file: !2, line: 62, type: !85)
!354 = !DILocalVariable(name: "stat_e", scope: !349, file: !2, line: 63, type: !33)
!355 = distinct !DIAssignID()
!356 = !DILocation(line: 0, scope: !332)
!357 = distinct !DIAssignID()
!358 = distinct !DIAssignID()
!359 = distinct !DIAssignID()
!360 = distinct !DIAssignID()
!361 = !DILocation(line: 0, scope: !345)
!362 = !DILocation(line: 47, column: 3, scope: !332)
!363 = !DILocation(line: 48, column: 3, scope: !332)
!364 = !DILocation(line: 49, column: 3, scope: !332)
!365 = !DILocation(line: 50, column: 3, scope: !332)
!366 = !DILocation(line: 52, column: 18, scope: !332)
!367 = !DILocation(line: 53, column: 40, scope: !332)
!368 = !DILocation(line: 53, column: 18, scope: !332)
!369 = !DILocation(line: 55, column: 13, scope: !346)
!370 = !DILocation(line: 55, column: 28, scope: !346)
!371 = !DILocation(line: 56, column: 5, scope: !345)
!372 = !DILocation(line: 57, column: 51, scope: !345)
!373 = !DILocation(line: 57, column: 53, scope: !345)
!374 = !DILocation(line: 57, column: 61, scope: !345)
!375 = !DILocation(line: 57, column: 18, scope: !345)
!376 = !DILocation(line: 58, column: 10, scope: !350)
!377 = !DILocation(line: 58, column: 14, scope: !350)
!378 = !DILocation(line: 58, column: 8, scope: !345)
!379 = !DILocation(line: 59, column: 34, scope: !349)
!380 = !DILocation(line: 59, column: 30, scope: !349)
!381 = !DILocation(line: 59, column: 29, scope: !349)
!382 = !DILocation(line: 0, scope: !349)
!383 = !DILocation(line: 60, column: 53, scope: !349)
!384 = !DILocation(line: 60, column: 63, scope: !349)
!385 = !DILocation(line: 60, column: 61, scope: !349)
!386 = !DILocation(line: 60, column: 50, scope: !349)
!387 = !DILocation(line: 61, column: 32, scope: !349)
!388 = !DILocation(line: 61, column: 45, scope: !349)
!389 = !DILocation(line: 61, column: 36, scope: !349)
!390 = !DILocation(line: 61, column: 49, scope: !349)
!391 = !DILocation(line: 62, column: 32, scope: !349)
!392 = !DILocation(line: 62, column: 45, scope: !349)
!393 = !DILocation(line: 62, column: 36, scope: !349)
!394 = !DILocation(line: 62, column: 49, scope: !349)
!395 = !DILocation(line: 64, column: 45, scope: !349)
!396 = !DILocation(line: 64, column: 53, scope: !349)
!397 = !DILocation(line: 64, column: 52, scope: !349)
!398 = !DILocation(line: 64, column: 61, scope: !349)
!399 = !DILocation(line: 64, column: 58, scope: !349)
!400 = !DILocation(line: 64, column: 68, scope: !349)
!401 = !DILocation(line: 63, column: 20, scope: !349)
!402 = !DILocation(line: 66, column: 14, scope: !349)
!403 = !DILocation(line: 70, column: 19, scope: !404)
!404 = distinct !DILexicalBlock(scope: !350, file: !2, line: 68, column: 10)
!405 = !DILocation(line: 71, column: 7, scope: !404)
!406 = !DILocation(line: 0, scope: !350)
!407 = !DILocation(line: 73, column: 3, scope: !346)
!408 = !DILocation(line: 75, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 75, column: 5)
!410 = distinct !DILexicalBlock(scope: !346, file: !2, line: 74, column: 8)
!411 = !DILocation(line: 75, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !2, line: 75, column: 5)
!413 = !DILocation(line: 0, scope: !346)
!414 = !DILocation(line: 77, column: 1, scope: !332)
!415 = distinct !DISubprogram(name: "hyperg_1F1_ab_negint", scope: !2, file: !2, line: 1310, type: !81, scopeLine: 1311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !416)
!416 = !{!417, !418, !419, !420, !421, !425, !426}
!417 = !DILocalVariable(name: "a", arg: 1, scope: !415, file: !2, line: 1310, type: !83)
!418 = !DILocalVariable(name: "b", arg: 2, scope: !415, file: !2, line: 1310, type: !83)
!419 = !DILocalVariable(name: "x", arg: 3, scope: !415, file: !2, line: 1310, type: !84)
!420 = !DILocalVariable(name: "result", arg: 4, scope: !415, file: !2, line: 1310, type: !86)
!421 = !DILocalVariable(name: "K", scope: !422, file: !2, line: 1326, type: !87)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 1320, column: 8)
!423 = distinct !DILexicalBlock(scope: !424, file: !2, line: 1317, column: 11)
!424 = distinct !DILexicalBlock(scope: !415, file: !2, line: 1312, column: 6)
!425 = !DILocalVariable(name: "stat_K", scope: !422, file: !2, line: 1327, type: !33)
!426 = !DILocalVariable(name: "stat_e", scope: !422, file: !2, line: 1328, type: !33)
!427 = !DILocation(line: 0, scope: !415)
!428 = !DILocation(line: 1312, column: 8, scope: !424)
!429 = !DILocation(line: 1312, column: 6, scope: !415)
!430 = !DILocation(line: 1313, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !2, line: 1312, column: 16)
!432 = !DILocation(line: 1314, column: 13, scope: !431)
!433 = !DILocation(line: 1314, column: 17, scope: !431)
!434 = !DILocation(line: 1315, column: 5, scope: !431)
!435 = !DILocation(line: 1317, column: 13, scope: !423)
!436 = !DILocation(line: 1317, column: 11, scope: !424)
!437 = !DILocation(line: 1318, column: 40, scope: !438)
!438 = distinct !DILexicalBlock(scope: !423, file: !2, line: 1317, column: 20)
!439 = !DILocalVariable(name: "a", arg: 1, scope: !440, file: !2, line: 1183, type: !83)
!440 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_poly", scope: !2, file: !2, line: 1183, type: !441, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!33, !83, !84, !84, !86}
!443 = !{!439, !444, !445, !446, !447, !450, !451, !452, !456}
!444 = !DILocalVariable(name: "b", arg: 2, scope: !440, file: !2, line: 1183, type: !84)
!445 = !DILocalVariable(name: "x", arg: 3, scope: !440, file: !2, line: 1183, type: !84)
!446 = !DILocalVariable(name: "result", arg: 4, scope: !440, file: !2, line: 1183, type: !86)
!447 = !DILocalVariable(name: "N", scope: !448, file: !2, line: 1191, type: !33)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 1190, column: 8)
!449 = distinct !DILexicalBlock(scope: !440, file: !2, line: 1185, column: 6)
!450 = !DILocalVariable(name: "poly", scope: !448, file: !2, line: 1192, type: !85)
!451 = !DILocalVariable(name: "k", scope: !448, file: !2, line: 1193, type: !33)
!452 = !DILocalVariable(name: "t", scope: !453, file: !2, line: 1195, type: !85)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 1194, column: 27)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 1194, column: 5)
!455 = distinct !DILexicalBlock(scope: !448, file: !2, line: 1194, column: 5)
!456 = !DILocalVariable(name: "r", scope: !453, file: !2, line: 1196, type: !85)
!457 = !DILocation(line: 0, scope: !440, inlinedAt: !458)
!458 = distinct !DILocation(line: 1318, column: 12, scope: !438)
!459 = !DILocation(line: 1185, column: 8, scope: !449, inlinedAt: !458)
!460 = !DILocation(line: 1185, column: 6, scope: !440, inlinedAt: !458)
!461 = !DILocation(line: 1186, column: 17, scope: !462, inlinedAt: !458)
!462 = distinct !DILexicalBlock(scope: !449, file: !2, line: 1185, column: 14)
!463 = !DILocation(line: 1187, column: 13, scope: !462, inlinedAt: !458)
!464 = !DILocation(line: 1187, column: 17, scope: !462, inlinedAt: !458)
!465 = !DILocation(line: 1188, column: 5, scope: !462, inlinedAt: !458)
!466 = !DILocation(line: 1191, column: 13, scope: !448, inlinedAt: !458)
!467 = !DILocation(line: 0, scope: !448, inlinedAt: !458)
!468 = !DILocation(line: 1194, column: 17, scope: !454, inlinedAt: !458)
!469 = !DILocation(line: 1194, column: 5, scope: !455, inlinedAt: !458)
!470 = !DILocation(line: 1194, column: 12, scope: !455, inlinedAt: !458)
!471 = !DILocation(line: 1195, column: 20, scope: !453, inlinedAt: !458)
!472 = !DILocation(line: 1195, column: 18, scope: !453, inlinedAt: !458)
!473 = !DILocation(line: 1195, column: 27, scope: !453, inlinedAt: !458)
!474 = !DILocation(line: 1195, column: 26, scope: !453, inlinedAt: !458)
!475 = !DILocation(line: 1195, column: 23, scope: !453, inlinedAt: !458)
!476 = !DILocation(line: 1195, column: 37, scope: !453, inlinedAt: !458)
!477 = !DILocation(line: 1195, column: 35, scope: !453, inlinedAt: !458)
!478 = !DILocation(line: 1195, column: 34, scope: !453, inlinedAt: !458)
!479 = !DILocation(line: 1195, column: 30, scope: !453, inlinedAt: !458)
!480 = !DILocation(line: 0, scope: !453, inlinedAt: !458)
!481 = !DILocation(line: 1196, column: 25, scope: !453, inlinedAt: !458)
!482 = !DILocation(line: 1196, column: 20, scope: !453, inlinedAt: !458)
!483 = !DILocation(line: 1197, column: 29, scope: !484, inlinedAt: !458)
!484 = distinct !DILexicalBlock(scope: !453, file: !2, line: 1197, column: 10)
!485 = !DILocation(line: 1197, column: 12, scope: !484, inlinedAt: !458)
!486 = !DILocation(line: 1197, column: 10, scope: !453, inlinedAt: !458)
!487 = !DILocation(line: 1198, column: 9, scope: !488, inlinedAt: !458)
!488 = distinct !DILexicalBlock(scope: !489, file: !2, line: 1198, column: 9)
!489 = distinct !DILexicalBlock(scope: !484, file: !2, line: 1197, column: 36)
!490 = !DILocation(line: 1198, column: 9, scope: !491, inlinedAt: !458)
!491 = distinct !DILexicalBlock(scope: !488, file: !2, line: 1198, column: 9)
!492 = !DILocation(line: 1201, column: 14, scope: !493, inlinedAt: !458)
!493 = distinct !DILexicalBlock(scope: !484, file: !2, line: 1200, column: 12)
!494 = !DILocation(line: 1194, column: 23, scope: !454, inlinedAt: !458)
!495 = distinct !{!495, !469, !496, !497}
!496 = !DILocation(line: 1203, column: 5, scope: !455, inlinedAt: !458)
!497 = !{!"llvm.loop.mustprogress"}
!498 = !DILocation(line: 1192, column: 12, scope: !448, inlinedAt: !458)
!499 = !DILocation(line: 1204, column: 17, scope: !448, inlinedAt: !458)
!500 = !DILocation(line: 1205, column: 31, scope: !448, inlinedAt: !458)
!501 = !DILocation(line: 1205, column: 26, scope: !448, inlinedAt: !458)
!502 = !DILocation(line: 1205, column: 34, scope: !448, inlinedAt: !458)
!503 = !DILocation(line: 1205, column: 23, scope: !448, inlinedAt: !458)
!504 = !DILocation(line: 1205, column: 41, scope: !448, inlinedAt: !458)
!505 = !DILocation(line: 1205, column: 61, scope: !448, inlinedAt: !458)
!506 = !DILocation(line: 1205, column: 59, scope: !448, inlinedAt: !458)
!507 = !DILocation(line: 1205, column: 13, scope: !448, inlinedAt: !458)
!508 = !DILocation(line: 1205, column: 17, scope: !448, inlinedAt: !458)
!509 = !DILocation(line: 1206, column: 5, scope: !448, inlinedAt: !458)
!510 = !DILocation(line: 1327, column: 44, scope: !422)
!511 = !DILocation(line: 1327, column: 48, scope: !422)
!512 = !DILocation(line: 1327, column: 51, scope: !422)
!513 = !DILocation(line: 0, scope: !440, inlinedAt: !514)
!514 = distinct !DILocation(line: 1327, column: 18, scope: !422)
!515 = !DILocation(line: 1185, column: 8, scope: !449, inlinedAt: !514)
!516 = !DILocation(line: 1185, column: 6, scope: !440, inlinedAt: !514)
!517 = !DILocation(line: 1191, column: 13, scope: !448, inlinedAt: !514)
!518 = !DILocation(line: 0, scope: !448, inlinedAt: !514)
!519 = !DILocation(line: 1194, column: 17, scope: !454, inlinedAt: !514)
!520 = !DILocation(line: 1194, column: 5, scope: !455, inlinedAt: !514)
!521 = !DILocation(line: 1194, column: 12, scope: !455, inlinedAt: !514)
!522 = !DILocation(line: 1195, column: 20, scope: !453, inlinedAt: !514)
!523 = !DILocation(line: 1195, column: 18, scope: !453, inlinedAt: !514)
!524 = !DILocation(line: 1195, column: 27, scope: !453, inlinedAt: !514)
!525 = !DILocation(line: 1195, column: 26, scope: !453, inlinedAt: !514)
!526 = !DILocation(line: 1195, column: 23, scope: !453, inlinedAt: !514)
!527 = !DILocation(line: 1195, column: 37, scope: !453, inlinedAt: !514)
!528 = !DILocation(line: 1195, column: 35, scope: !453, inlinedAt: !514)
!529 = !DILocation(line: 1195, column: 34, scope: !453, inlinedAt: !514)
!530 = !DILocation(line: 1195, column: 30, scope: !453, inlinedAt: !514)
!531 = !DILocation(line: 0, scope: !453, inlinedAt: !514)
!532 = !DILocation(line: 1196, column: 25, scope: !453, inlinedAt: !514)
!533 = !DILocation(line: 1196, column: 20, scope: !453, inlinedAt: !514)
!534 = !DILocation(line: 1197, column: 29, scope: !484, inlinedAt: !514)
!535 = !DILocation(line: 1197, column: 12, scope: !484, inlinedAt: !514)
!536 = !DILocation(line: 1197, column: 10, scope: !453, inlinedAt: !514)
!537 = !DILocation(line: 0, scope: !422)
!538 = !DILocation(line: 1198, column: 9, scope: !491, inlinedAt: !514)
!539 = !DILocation(line: 1201, column: 14, scope: !493, inlinedAt: !514)
!540 = !DILocation(line: 1194, column: 23, scope: !454, inlinedAt: !514)
!541 = distinct !{!541, !520, !542, !497}
!542 = !DILocation(line: 1203, column: 5, scope: !455, inlinedAt: !514)
!543 = !DILocation(line: 1192, column: 12, scope: !448, inlinedAt: !514)
!544 = !DILocation(line: 1205, column: 31, scope: !448, inlinedAt: !514)
!545 = !DILocation(line: 1205, column: 26, scope: !448, inlinedAt: !514)
!546 = !DILocation(line: 1205, column: 34, scope: !448, inlinedAt: !514)
!547 = !DILocation(line: 1205, column: 23, scope: !448, inlinedAt: !514)
!548 = !DILocation(line: 1205, column: 41, scope: !448, inlinedAt: !514)
!549 = !DILocation(line: 1205, column: 61, scope: !448, inlinedAt: !514)
!550 = !DILocation(line: 1205, column: 59, scope: !448, inlinedAt: !514)
!551 = !DILocation(line: 1206, column: 5, scope: !448, inlinedAt: !514)
!552 = !DILocation(line: 0, scope: !449, inlinedAt: !514)
!553 = !DILocation(line: 1328, column: 67, scope: !422)
!554 = !DILocation(line: 1328, column: 65, scope: !422)
!555 = !DILocation(line: 1328, column: 18, scope: !422)
!556 = !DILocation(line: 1331, column: 12, scope: !422)
!557 = !DILocation(line: 0, scope: !424)
!558 = !DILocation(line: 1333, column: 1, scope: !415)
!559 = distinct !DISubprogram(name: "hyperg_1F1_ab_posint", scope: !2, file: !2, line: 938, type: !81, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !571, !572, !573, !576, !577, !580, !581, !582, !587, !588, !589, !590, !591, !592, !593, !594, !595, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !615, !616, !617, !618, !619, !621, !622, !623, !624, !625, !629, !630, !631, !632, !633, !635, !636, !637, !638, !639, !640, !641, !642, !644, !645, !646}
!561 = !DILocalVariable(name: "a", arg: 1, scope: !559, file: !2, line: 938, type: !83)
!562 = !DILocalVariable(name: "b", arg: 2, scope: !559, file: !2, line: 938, type: !83)
!563 = !DILocalVariable(name: "x", arg: 3, scope: !559, file: !2, line: 938, type: !84)
!564 = !DILocalVariable(name: "result", arg: 4, scope: !559, file: !2, line: 938, type: !86)
!565 = !DILocalVariable(name: "ax", scope: !559, file: !2, line: 940, type: !85)
!566 = !DILocalVariable(name: "K", scope: !567, file: !2, line: 949, type: !87)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 948, column: 23)
!568 = distinct !DILexicalBlock(scope: !569, file: !2, line: 948, column: 11)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 945, column: 11)
!570 = distinct !DILexicalBlock(scope: !559, file: !2, line: 942, column: 6)
!571 = !DILocalVariable(name: "stat_K", scope: !567, file: !2, line: 950, type: !33)
!572 = !DILocalVariable(name: "stat_e", scope: !567, file: !2, line: 951, type: !33)
!573 = !DILocalVariable(name: "ex", scope: !574, file: !2, line: 957, type: !87)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 956, column: 23)
!575 = distinct !DILexicalBlock(scope: !568, file: !2, line: 956, column: 11)
!576 = !DILocalVariable(name: "stat_e", scope: !574, file: !2, line: 958, type: !33)
!577 = !DILocalVariable(name: "ex", scope: !578, file: !2, line: 966, type: !87)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 965, column: 23)
!579 = distinct !DILexicalBlock(scope: !575, file: !2, line: 965, column: 11)
!580 = !DILocalVariable(name: "stat_e", scope: !578, file: !2, line: 967, type: !33)
!581 = !DILocalVariable(name: "poly", scope: !578, file: !2, line: 968, type: !85)
!582 = !DILocalVariable(name: "rap", scope: !583, file: !2, line: 989, type: !85)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 984, column: 34)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 984, column: 11)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 978, column: 14)
!586 = distinct !DILexicalBlock(scope: !579, file: !2, line: 975, column: 11)
!587 = !DILocalVariable(name: "stat_CF1", scope: !583, file: !2, line: 990, type: !33)
!588 = !DILocalVariable(name: "ra", scope: !583, file: !2, line: 991, type: !85)
!589 = !DILocalVariable(name: "Ma", scope: !583, file: !2, line: 992, type: !85)
!590 = !DILocalVariable(name: "Map1", scope: !583, file: !2, line: 993, type: !85)
!591 = !DILocalVariable(name: "Mnp1", scope: !583, file: !2, line: 994, type: !85)
!592 = !DILocalVariable(name: "Mn", scope: !583, file: !2, line: 995, type: !85)
!593 = !DILocalVariable(name: "Mnm1", scope: !583, file: !2, line: 996, type: !85)
!594 = !DILocalVariable(name: "n", scope: !583, file: !2, line: 997, type: !33)
!595 = !DILocalVariable(name: "rap", scope: !596, file: !2, line: 1014, type: !85)
!596 = distinct !DILexicalBlock(scope: !597, file: !2, line: 1007, column: 42)
!597 = distinct !DILexicalBlock(scope: !584, file: !2, line: 1007, column: 11)
!598 = !DILocalVariable(name: "stat_CF1", scope: !596, file: !2, line: 1015, type: !33)
!599 = !DILocalVariable(name: "ra", scope: !596, file: !2, line: 1016, type: !85)
!600 = !DILocalVariable(name: "ex", scope: !596, file: !2, line: 1017, type: !87)
!601 = !DILocalVariable(name: "stat_ex", scope: !596, file: !2, line: 1018, type: !33)
!602 = !DILocalVariable(name: "Ma", scope: !596, file: !2, line: 1020, type: !85)
!603 = !DILocalVariable(name: "Map1", scope: !596, file: !2, line: 1021, type: !85)
!604 = !DILocalVariable(name: "Mnm1", scope: !596, file: !2, line: 1022, type: !85)
!605 = !DILocalVariable(name: "Mn", scope: !596, file: !2, line: 1023, type: !85)
!606 = !DILocalVariable(name: "Mnp1", scope: !596, file: !2, line: 1024, type: !85)
!607 = !DILocalVariable(name: "n", scope: !596, file: !2, line: 1025, type: !33)
!608 = !DILocalVariable(name: "ex", scope: !609, file: !2, line: 1046, type: !85)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 1045, column: 52)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 1045, column: 10)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 1040, column: 15)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 1040, column: 8)
!613 = distinct !DILexicalBlock(scope: !614, file: !2, line: 1038, column: 21)
!614 = distinct !DILexicalBlock(scope: !597, file: !2, line: 1038, column: 11)
!615 = !DILocalVariable(name: "n", scope: !609, file: !2, line: 1047, type: !33)
!616 = !DILocalVariable(name: "Mnm1", scope: !609, file: !2, line: 1048, type: !85)
!617 = !DILocalVariable(name: "Mn", scope: !609, file: !2, line: 1049, type: !85)
!618 = !DILocalVariable(name: "Mnp1", scope: !609, file: !2, line: 1050, type: !85)
!619 = !DILocalVariable(name: "r_Mn", scope: !620, file: !2, line: 1074, type: !87)
!620 = distinct !DILexicalBlock(scope: !612, file: !2, line: 1065, column: 10)
!621 = !DILocalVariable(name: "Mnm1", scope: !620, file: !2, line: 1075, type: !85)
!622 = !DILocalVariable(name: "Mn", scope: !620, file: !2, line: 1076, type: !85)
!623 = !DILocalVariable(name: "Mnp1", scope: !620, file: !2, line: 1077, type: !85)
!624 = !DILocalVariable(name: "n", scope: !620, file: !2, line: 1078, type: !33)
!625 = !DILocalVariable(name: "ex", scope: !626, file: !2, line: 1102, type: !85)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 1097, column: 35)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 1097, column: 8)
!628 = distinct !DILexicalBlock(scope: !614, file: !2, line: 1092, column: 8)
!629 = !DILocalVariable(name: "Manp1", scope: !626, file: !2, line: 1103, type: !85)
!630 = !DILocalVariable(name: "Man", scope: !626, file: !2, line: 1104, type: !85)
!631 = !DILocalVariable(name: "Manm1", scope: !626, file: !2, line: 1105, type: !85)
!632 = !DILocalVariable(name: "n", scope: !626, file: !2, line: 1106, type: !33)
!633 = !DILocalVariable(name: "a0", scope: !634, file: !2, line: 1123, type: !33)
!634 = distinct !DILexicalBlock(scope: !627, file: !2, line: 1117, column: 10)
!635 = !DILocalVariable(name: "Ma0b", scope: !634, file: !2, line: 1124, type: !85)
!636 = !DILocalVariable(name: "Ma0bp1", scope: !634, file: !2, line: 1125, type: !85)
!637 = !DILocalVariable(name: "Ma0p1b", scope: !634, file: !2, line: 1126, type: !85)
!638 = !DILocalVariable(name: "Mnm1", scope: !634, file: !2, line: 1127, type: !85)
!639 = !DILocalVariable(name: "Mn", scope: !634, file: !2, line: 1128, type: !85)
!640 = !DILocalVariable(name: "Mnp1", scope: !634, file: !2, line: 1129, type: !85)
!641 = !DILocalVariable(name: "n", scope: !634, file: !2, line: 1130, type: !33)
!642 = !DILocalVariable(name: "ex", scope: !643, file: !2, line: 1132, type: !85)
!643 = distinct !DILexicalBlock(scope: !634, file: !2, line: 1131, column: 7)
!644 = !DILocalVariable(name: "Ma0np1", scope: !643, file: !2, line: 1133, type: !85)
!645 = !DILocalVariable(name: "Ma0n", scope: !643, file: !2, line: 1134, type: !85)
!646 = !DILocalVariable(name: "Ma0nm1", scope: !643, file: !2, line: 1135, type: !85)
!647 = distinct !DIAssignID()
!648 = !DILocation(line: 0, scope: !567)
!649 = distinct !DIAssignID()
!650 = !DILocation(line: 0, scope: !574)
!651 = distinct !DIAssignID()
!652 = !DILocation(line: 0, scope: !578)
!653 = distinct !DIAssignID()
!654 = !DILocation(line: 0, scope: !583)
!655 = distinct !DIAssignID()
!656 = !DILocation(line: 0, scope: !596)
!657 = distinct !DIAssignID()
!658 = distinct !DIAssignID()
!659 = !DILocation(line: 0, scope: !620)
!660 = !DILocation(line: 0, scope: !559)
!661 = !DILocation(line: 940, column: 15, scope: !559)
!662 = !DILocation(line: 942, column: 8, scope: !570)
!663 = !DILocation(line: 942, column: 6, scope: !559)
!664 = !DILocation(line: 943, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !570, file: !2, line: 942, column: 14)
!666 = !DILocation(line: 943, column: 5, scope: !665)
!667 = !DILocation(line: 945, column: 13, scope: !569)
!668 = !DILocation(line: 945, column: 11, scope: !570)
!669 = !DILocation(line: 946, column: 31, scope: !670)
!670 = distinct !DILexicalBlock(scope: !569, file: !2, line: 945, column: 19)
!671 = !DILocation(line: 946, column: 12, scope: !670)
!672 = !DILocation(line: 946, column: 5, scope: !670)
!673 = !DILocation(line: 948, column: 18, scope: !568)
!674 = !DILocation(line: 948, column: 13, scope: !568)
!675 = !DILocation(line: 948, column: 11, scope: !569)
!676 = !DILocation(line: 949, column: 5, scope: !567)
!677 = !DILocation(line: 950, column: 39, scope: !567)
!678 = !DILocation(line: 950, column: 18, scope: !567)
!679 = !DILocation(line: 951, column: 65, scope: !567)
!680 = !DILocation(line: 952, column: 45, scope: !567)
!681 = !DILocation(line: 952, column: 52, scope: !567)
!682 = !DILocation(line: 951, column: 18, scope: !567)
!683 = !DILocation(line: 954, column: 12, scope: !567)
!684 = !DILocation(line: 955, column: 3, scope: !568)
!685 = !DILocation(line: 956, column: 18, scope: !575)
!686 = !DILocation(line: 956, column: 13, scope: !575)
!687 = !DILocation(line: 956, column: 11, scope: !568)
!688 = !DILocation(line: 957, column: 5, scope: !574)
!689 = !DILocation(line: 958, column: 18, scope: !574)
!690 = !DILocation(line: 959, column: 23, scope: !574)
!691 = !DILocation(line: 959, column: 38, scope: !574)
!692 = !DILocation(line: 959, column: 37, scope: !574)
!693 = !DILocation(line: 959, column: 34, scope: !574)
!694 = !DILocation(line: 959, column: 27, scope: !574)
!695 = !DILocation(line: 959, column: 18, scope: !574)
!696 = !DILocation(line: 960, column: 23, scope: !574)
!697 = !DILocation(line: 960, column: 27, scope: !574)
!698 = !DILocation(line: 960, column: 13, scope: !574)
!699 = !DILocation(line: 961, column: 27, scope: !574)
!700 = !DILocation(line: 961, column: 54, scope: !574)
!701 = !DILocation(line: 961, column: 52, scope: !574)
!702 = !DILocation(line: 961, column: 45, scope: !574)
!703 = !DILocation(line: 961, column: 17, scope: !574)
!704 = !DILocation(line: 962, column: 44, scope: !574)
!705 = !DILocation(line: 962, column: 42, scope: !574)
!706 = !DILocation(line: 962, column: 17, scope: !574)
!707 = !DILocation(line: 964, column: 3, scope: !575)
!708 = !DILocation(line: 965, column: 18, scope: !579)
!709 = !DILocation(line: 965, column: 13, scope: !579)
!710 = !DILocation(line: 965, column: 11, scope: !575)
!711 = !DILocation(line: 966, column: 5, scope: !578)
!712 = !DILocation(line: 967, column: 18, scope: !578)
!713 = !DILocation(line: 968, column: 29, scope: !578)
!714 = !DILocation(line: 968, column: 28, scope: !578)
!715 = !DILocation(line: 968, column: 42, scope: !578)
!716 = !DILocation(line: 968, column: 39, scope: !578)
!717 = !DILocation(line: 968, column: 36, scope: !578)
!718 = !DILocation(line: 968, column: 30, scope: !578)
!719 = !DILocation(line: 968, column: 25, scope: !578)
!720 = !DILocation(line: 969, column: 23, scope: !578)
!721 = !DILocation(line: 969, column: 27, scope: !578)
!722 = !DILocation(line: 969, column: 18, scope: !578)
!723 = !DILocation(line: 970, column: 23, scope: !578)
!724 = !DILocation(line: 970, column: 29, scope: !578)
!725 = !DILocation(line: 970, column: 27, scope: !578)
!726 = !DILocation(line: 970, column: 13, scope: !578)
!727 = !DILocation(line: 971, column: 27, scope: !578)
!728 = !DILocation(line: 971, column: 54, scope: !578)
!729 = !DILocation(line: 971, column: 73, scope: !578)
!730 = !DILocation(line: 971, column: 71, scope: !578)
!731 = !DILocation(line: 971, column: 64, scope: !578)
!732 = !DILocation(line: 971, column: 52, scope: !578)
!733 = !DILocation(line: 971, column: 45, scope: !578)
!734 = !DILocation(line: 971, column: 17, scope: !578)
!735 = !DILocation(line: 972, column: 44, scope: !578)
!736 = !DILocation(line: 972, column: 42, scope: !578)
!737 = !DILocation(line: 972, column: 17, scope: !578)
!738 = !DILocation(line: 974, column: 3, scope: !579)
!739 = !DILocation(line: 975, column: 17, scope: !586)
!740 = !DILocation(line: 975, column: 13, scope: !586)
!741 = !DILocation(line: 975, column: 11, scope: !579)
!742 = !DILocation(line: 976, column: 33, scope: !743)
!743 = distinct !DILexicalBlock(scope: !586, file: !2, line: 975, column: 21)
!744 = !DILocation(line: 976, column: 12, scope: !743)
!745 = !DILocation(line: 976, column: 5, scope: !743)
!746 = !DILocation(line: 978, column: 18, scope: !585)
!747 = !DILocation(line: 978, column: 23, scope: !585)
!748 = !DILocation(line: 982, column: 39, scope: !749)
!749 = distinct !DILexicalBlock(scope: !585, file: !2, line: 981, column: 7)
!750 = !DILocation(line: 982, column: 42, scope: !749)
!751 = !DILocation(line: 979, column: 16, scope: !585)
!752 = !DILocation(line: 979, column: 20, scope: !585)
!753 = !DILocation(line: 979, column: 21, scope: !585)
!754 = !DILocation(line: 979, column: 18, scope: !585)
!755 = !DILocation(line: 980, column: 11, scope: !585)
!756 = !DILocation(line: 980, column: 18, scope: !585)
!757 = !DILocation(line: 980, column: 22, scope: !585)
!758 = !DILocation(line: 982, column: 12, scope: !749)
!759 = !DILocation(line: 982, column: 5, scope: !749)
!760 = !DILocation(line: 984, column: 17, scope: !584)
!761 = !DILocation(line: 984, column: 25, scope: !584)
!762 = !DILocation(line: 984, column: 29, scope: !584)
!763 = !DILocation(line: 984, column: 22, scope: !584)
!764 = !DILocation(line: 984, column: 11, scope: !585)
!765 = !DILocation(line: 989, column: 5, scope: !583)
!766 = !DILocation(line: 990, column: 20, scope: !583)
!767 = !{i32 0, i32 12}
!768 = !DILocation(line: 998, column: 15, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 998, column: 5)
!770 = distinct !DILexicalBlock(scope: !583, file: !2, line: 998, column: 5)
!771 = !DILocation(line: 998, column: 5, scope: !770)
!772 = !DILocation(line: 991, column: 24, scope: !583)
!773 = !DILocation(line: 991, column: 29, scope: !583)
!774 = !DILocation(line: 991, column: 27, scope: !583)
!775 = !DILocation(line: 991, column: 21, scope: !583)
!776 = !DILocation(line: 993, column: 22, scope: !583)
!777 = !DILocation(line: 999, column: 15, scope: !778)
!778 = distinct !DILexicalBlock(scope: !769, file: !2, line: 998, column: 24)
!779 = !DILocation(line: 999, column: 17, scope: !778)
!780 = !DILocation(line: 999, column: 28, scope: !778)
!781 = !DILocation(line: 999, column: 30, scope: !778)
!782 = !DILocation(line: 999, column: 27, scope: !778)
!783 = !DILocation(line: 999, column: 32, scope: !778)
!784 = !DILocation(line: 999, column: 36, scope: !778)
!785 = !DILocation(line: 999, column: 24, scope: !778)
!786 = !DILocation(line: 999, column: 46, scope: !778)
!787 = !DILocation(line: 999, column: 44, scope: !778)
!788 = !DILocation(line: 999, column: 42, scope: !778)
!789 = !DILocation(line: 998, column: 20, scope: !769)
!790 = distinct !{!790, !771, !791, !497}
!791 = !DILocation(line: 1002, column: 5, scope: !770)
!792 = !DILocation(line: 1003, column: 21, scope: !583)
!793 = !DILocation(line: 1003, column: 17, scope: !583)
!794 = !DILocation(line: 1004, column: 44, scope: !583)
!795 = !DILocation(line: 1004, column: 52, scope: !583)
!796 = !DILocation(line: 1004, column: 41, scope: !583)
!797 = !DILocation(line: 1004, column: 61, scope: !583)
!798 = !DILocation(line: 1004, column: 59, scope: !583)
!799 = !DILocation(line: 1004, column: 13, scope: !583)
!800 = !DILocation(line: 1004, column: 17, scope: !583)
!801 = !DILocation(line: 1006, column: 3, scope: !584)
!802 = !DILocation(line: 1007, column: 22, scope: !597)
!803 = !DILocation(line: 1007, column: 32, scope: !597)
!804 = !DILocation(line: 1014, column: 5, scope: !596)
!805 = !DILocation(line: 1015, column: 20, scope: !596)
!806 = !DILocation(line: 1016, column: 24, scope: !596)
!807 = !DILocation(line: 1016, column: 29, scope: !596)
!808 = !DILocation(line: 1016, column: 27, scope: !596)
!809 = !DILocation(line: 1016, column: 21, scope: !596)
!810 = !DILocation(line: 1017, column: 5, scope: !596)
!811 = !DILocation(line: 1021, column: 22, scope: !596)
!812 = !DILocation(line: 1026, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !2, line: 1026, column: 5)
!814 = distinct !DILexicalBlock(scope: !596, file: !2, line: 1026, column: 5)
!815 = !DILocation(line: 1026, column: 5, scope: !814)
!816 = !DILocation(line: 1027, column: 17, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !2, line: 1026, column: 26)
!818 = !DILocation(line: 1027, column: 15, scope: !817)
!819 = !DILocation(line: 1027, column: 20, scope: !817)
!820 = !DILocation(line: 1027, column: 30, scope: !817)
!821 = !DILocation(line: 1027, column: 32, scope: !817)
!822 = !DILocation(line: 1027, column: 29, scope: !817)
!823 = !DILocation(line: 1027, column: 34, scope: !817)
!824 = !DILocation(line: 1027, column: 37, scope: !817)
!825 = !DILocation(line: 1027, column: 26, scope: !817)
!826 = !DILocation(line: 1027, column: 42, scope: !817)
!827 = !DILocation(line: 1027, column: 41, scope: !817)
!828 = !DILocation(line: 1026, column: 22, scope: !813)
!829 = distinct !{!829, !815, !830, !497}
!830 = !DILocation(line: 1030, column: 5, scope: !814)
!831 = !DILocation(line: 1032, column: 15, scope: !596)
!832 = !DILocation(line: 1033, column: 23, scope: !596)
!833 = !DILocation(line: 1033, column: 27, scope: !596)
!834 = !DILocation(line: 1033, column: 31, scope: !596)
!835 = !DILocation(line: 1033, column: 18, scope: !596)
!836 = !DILocation(line: 1034, column: 23, scope: !596)
!837 = !DILocation(line: 1034, column: 36, scope: !596)
!838 = !DILocation(line: 1034, column: 29, scope: !596)
!839 = !DILocation(line: 1034, column: 27, scope: !596)
!840 = !DILocation(line: 1034, column: 13, scope: !596)
!841 = !DILocation(line: 1035, column: 51, scope: !596)
!842 = !DILocation(line: 1035, column: 50, scope: !596)
!843 = !DILocation(line: 1035, column: 45, scope: !596)
!844 = !DILocation(line: 1035, column: 54, scope: !596)
!845 = !DILocation(line: 1035, column: 42, scope: !596)
!846 = !DILocation(line: 1035, column: 62, scope: !596)
!847 = !DILocation(line: 1035, column: 60, scope: !596)
!848 = !DILocation(line: 1035, column: 17, scope: !596)
!849 = !DILocation(line: 1036, column: 12, scope: !596)
!850 = !DILocation(line: 1037, column: 3, scope: !597)
!851 = !DILocation(line: 1038, column: 13, scope: !614)
!852 = !DILocation(line: 1038, column: 11, scope: !597)
!853 = !DILocation(line: 1040, column: 10, scope: !612)
!854 = !DILocation(line: 1040, column: 8, scope: !613)
!855 = !DILocation(line: 1045, column: 24, scope: !610)
!856 = !DILocation(line: 1045, column: 18, scope: !610)
!857 = !DILocation(line: 1045, column: 14, scope: !610)
!858 = !DILocation(line: 1045, column: 12, scope: !610)
!859 = !DILocation(line: 1045, column: 29, scope: !610)
!860 = !DILocation(line: 1045, column: 10, scope: !611)
!861 = !DILocation(line: 1046, column: 21, scope: !609)
!862 = !DILocation(line: 0, scope: !609)
!863 = !DILocation(line: 1049, column: 33, scope: !609)
!864 = !DILocation(line: 1049, column: 26, scope: !609)
!865 = !DILocation(line: 1051, column: 21, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 1051, column: 9)
!867 = distinct !DILexicalBlock(scope: !609, file: !2, line: 1051, column: 9)
!868 = !DILocation(line: 1051, column: 9, scope: !867)
!869 = !DILocation(line: 1052, column: 34, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !2, line: 1051, column: 30)
!871 = !DILocation(line: 1052, column: 36, scope: !870)
!872 = !DILocation(line: 1052, column: 33, scope: !870)
!873 = !DILocation(line: 1052, column: 38, scope: !870)
!874 = !DILocation(line: 1052, column: 41, scope: !870)
!875 = !DILocation(line: 1052, column: 30, scope: !870)
!876 = !DILocation(line: 1052, column: 46, scope: !870)
!877 = !DILocation(line: 1052, column: 45, scope: !870)
!878 = !DILocation(line: 1051, column: 26, scope: !866)
!879 = !DILocation(line: 1052, column: 21, scope: !870)
!880 = !DILocation(line: 1052, column: 19, scope: !870)
!881 = !DILocation(line: 1052, column: 24, scope: !870)
!882 = distinct !{!882, !868, !883, !497}
!883 = !DILocation(line: 1055, column: 9, scope: !867)
!884 = !DILocation(line: 1056, column: 22, scope: !609)
!885 = !DILocation(line: 1057, column: 27, scope: !609)
!886 = !DILocation(line: 1057, column: 34, scope: !609)
!887 = !DILocation(line: 1057, column: 54, scope: !609)
!888 = !DILocation(line: 1057, column: 52, scope: !609)
!889 = !DILocation(line: 1057, column: 17, scope: !609)
!890 = !DILocation(line: 1058, column: 30, scope: !609)
!891 = !DILocation(line: 1058, column: 29, scope: !609)
!892 = !DILocation(line: 1058, column: 24, scope: !609)
!893 = !DILocation(line: 1058, column: 33, scope: !609)
!894 = !DILocation(line: 1058, column: 21, scope: !609)
!895 = !DILocation(line: 1062, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 1062, column: 9)
!897 = distinct !DILexicalBlock(scope: !610, file: !2, line: 1061, column: 12)
!898 = !DILocation(line: 1062, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 1062, column: 9)
!900 = !DILocation(line: 1074, column: 7, scope: !620)
!901 = !DILocation(line: 1079, column: 26, scope: !620)
!902 = !DILocation(line: 1079, column: 7, scope: !620)
!903 = !DILocation(line: 1080, column: 17, scope: !620)
!904 = !DILocation(line: 1081, column: 17, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 1081, column: 7)
!906 = distinct !DILexicalBlock(scope: !620, file: !2, line: 1081, column: 7)
!907 = !DILocation(line: 1081, column: 7, scope: !906)
!908 = !DILocation(line: 1082, column: 19, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !2, line: 1081, column: 26)
!910 = !DILocation(line: 1082, column: 17, scope: !909)
!911 = !DILocation(line: 1082, column: 22, scope: !909)
!912 = !DILocation(line: 1082, column: 32, scope: !909)
!913 = !DILocation(line: 1082, column: 34, scope: !909)
!914 = !DILocation(line: 1082, column: 31, scope: !909)
!915 = !DILocation(line: 1082, column: 36, scope: !909)
!916 = !DILocation(line: 1082, column: 39, scope: !909)
!917 = !DILocation(line: 1082, column: 28, scope: !909)
!918 = !DILocation(line: 1082, column: 44, scope: !909)
!919 = !DILocation(line: 1082, column: 43, scope: !909)
!920 = !DILocation(line: 1081, column: 22, scope: !905)
!921 = distinct !{!921, !907, !922, !497}
!922 = !DILocation(line: 1085, column: 7, scope: !906)
!923 = !DILocation(line: 1086, column: 20, scope: !620)
!924 = !DILocation(line: 1087, column: 22, scope: !620)
!925 = !DILocation(line: 1087, column: 40, scope: !620)
!926 = !DILocation(line: 1087, column: 38, scope: !620)
!927 = !DILocation(line: 1087, column: 31, scope: !620)
!928 = !DILocation(line: 1087, column: 61, scope: !620)
!929 = !DILocation(line: 1087, column: 65, scope: !620)
!930 = !DILocation(line: 1087, column: 51, scope: !620)
!931 = !DILocation(line: 1087, column: 49, scope: !620)
!932 = !DILocation(line: 1087, column: 15, scope: !620)
!933 = !DILocation(line: 1088, column: 44, scope: !620)
!934 = !DILocation(line: 1088, column: 19, scope: !620)
!935 = !DILocation(line: 1090, column: 5, scope: !612)
!936 = !DILocation(line: 1097, column: 19, scope: !627)
!937 = !DILocation(line: 1097, column: 16, scope: !627)
!938 = !DILocation(line: 1097, column: 10, scope: !627)
!939 = !DILocation(line: 1097, column: 23, scope: !627)
!940 = !DILocation(line: 1102, column: 19, scope: !626)
!941 = !DILocation(line: 0, scope: !626)
!942 = !DILocation(line: 1104, column: 38, scope: !626)
!943 = !DILocation(line: 1104, column: 35, scope: !626)
!944 = !DILocation(line: 1104, column: 32, scope: !626)
!945 = !DILocation(line: 1104, column: 25, scope: !626)
!946 = !DILocation(line: 1107, scope: !947)
!947 = distinct !DILexicalBlock(scope: !626, file: !2, line: 1107, column: 7)
!948 = !DILocation(line: 1107, column: 19, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !2, line: 1107, column: 7)
!950 = !DILocation(line: 1107, column: 7, scope: !947)
!951 = !DILocation(line: 1108, column: 18, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !2, line: 1107, column: 28)
!953 = !DILocation(line: 1108, column: 23, scope: !952)
!954 = !DILocation(line: 1108, column: 22, scope: !952)
!955 = !DILocation(line: 1108, column: 25, scope: !952)
!956 = !DILocation(line: 1108, column: 20, scope: !952)
!957 = !DILocation(line: 1108, column: 28, scope: !952)
!958 = !DILocation(line: 1108, column: 39, scope: !952)
!959 = !DILocation(line: 1108, column: 37, scope: !952)
!960 = !DILocation(line: 1108, column: 36, scope: !952)
!961 = !DILocation(line: 1108, column: 42, scope: !952)
!962 = !DILocation(line: 1108, column: 33, scope: !952)
!963 = !DILocation(line: 1108, column: 51, scope: !952)
!964 = !DILocation(line: 1108, column: 55, scope: !952)
!965 = !DILocation(line: 1108, column: 52, scope: !952)
!966 = !DILocation(line: 1108, column: 49, scope: !952)
!967 = distinct !{!967, !950, !968, !497}
!968 = !DILocation(line: 1111, column: 7, scope: !947)
!969 = !DILocation(line: 1112, column: 20, scope: !626)
!970 = !DILocation(line: 1113, column: 31, scope: !626)
!971 = !DILocation(line: 1113, column: 38, scope: !626)
!972 = !DILocation(line: 1113, column: 58, scope: !626)
!973 = !DILocation(line: 1113, column: 56, scope: !626)
!974 = !DILocation(line: 1113, column: 15, scope: !626)
!975 = !DILocation(line: 1114, column: 28, scope: !626)
!976 = !DILocation(line: 1114, column: 27, scope: !626)
!977 = !DILocation(line: 1114, column: 22, scope: !626)
!978 = !DILocation(line: 1114, column: 31, scope: !626)
!979 = !DILocation(line: 1114, column: 19, scope: !626)
!980 = !DILocation(line: 1123, column: 22, scope: !634)
!981 = !DILocation(line: 1123, column: 16, scope: !634)
!982 = !DILocation(line: 0, scope: !634)
!983 = !DILocation(line: 1132, column: 21, scope: !643)
!984 = !DILocation(line: 0, scope: !643)
!985 = !DILocation(line: 1134, column: 40, scope: !643)
!986 = !DILocation(line: 1134, column: 42, scope: !643)
!987 = !DILocation(line: 1134, column: 38, scope: !643)
!988 = !DILocation(line: 1134, column: 35, scope: !643)
!989 = !DILocation(line: 1134, column: 28, scope: !643)
!990 = !DILocation(line: 1136, scope: !991)
!991 = distinct !DILexicalBlock(scope: !643, file: !2, line: 1136, column: 9)
!992 = !DILocation(line: 1136, column: 22, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !2, line: 1136, column: 9)
!994 = !DILocation(line: 1136, column: 9, scope: !991)
!995 = !DILocation(line: 1137, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 1136, column: 31)
!997 = !DILocation(line: 1137, column: 26, scope: !996)
!998 = !DILocation(line: 1137, column: 25, scope: !996)
!999 = !DILocation(line: 1137, column: 28, scope: !996)
!1000 = !DILocation(line: 1137, column: 23, scope: !996)
!1001 = !DILocation(line: 1137, column: 31, scope: !996)
!1002 = !DILocation(line: 1137, column: 43, scope: !996)
!1003 = !DILocation(line: 1137, column: 41, scope: !996)
!1004 = !DILocation(line: 1137, column: 40, scope: !996)
!1005 = !DILocation(line: 1137, column: 47, scope: !996)
!1006 = !DILocation(line: 1137, column: 37, scope: !996)
!1007 = !DILocation(line: 1137, column: 57, scope: !996)
!1008 = !DILocation(line: 1137, column: 61, scope: !996)
!1009 = !DILocation(line: 1137, column: 58, scope: !996)
!1010 = !DILocation(line: 1137, column: 55, scope: !996)
!1011 = distinct !{!1011, !994, !1012, !497}
!1012 = !DILocation(line: 1140, column: 9, scope: !991)
!1013 = !DILocation(line: 1148, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !634, file: !2, line: 1148, column: 11)
!1015 = !DILocation(line: 1148, column: 11, scope: !634)
!1016 = !DILocation(line: 1143, column: 24, scope: !643)
!1017 = !DILocation(line: 1143, column: 20, scope: !643)
!1018 = !DILocation(line: 1143, column: 27, scope: !643)
!1019 = !DILocation(line: 1143, column: 40, scope: !643)
!1020 = !DILocation(line: 1143, column: 37, scope: !643)
!1021 = !DILocation(line: 1143, column: 36, scope: !643)
!1022 = !DILocation(line: 1143, column: 43, scope: !643)
!1023 = !DILocation(line: 1143, column: 33, scope: !643)
!1024 = !DILocation(line: 1143, column: 55, scope: !643)
!1025 = !DILocation(line: 1143, column: 52, scope: !643)
!1026 = !DILocation(line: 1143, column: 51, scope: !643)
!1027 = !DILocation(line: 1152, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 1152, column: 16)
!1029 = !DILocation(line: 1152, column: 22, scope: !1028)
!1030 = !DILocation(line: 1152, column: 16, scope: !1014)
!1031 = !DILocation(line: 1161, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 1161, column: 11)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 1157, column: 9)
!1034 = !DILocation(line: 1162, column: 23, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 1161, column: 33)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1161, column: 11)
!1037 = !DILocation(line: 1162, column: 21, scope: !1035)
!1038 = !DILocation(line: 1162, column: 26, scope: !1035)
!1039 = !DILocation(line: 1162, column: 36, scope: !1035)
!1040 = !DILocation(line: 1162, column: 38, scope: !1035)
!1041 = !DILocation(line: 1162, column: 35, scope: !1035)
!1042 = !DILocation(line: 1162, column: 40, scope: !1035)
!1043 = !DILocation(line: 1162, column: 43, scope: !1035)
!1044 = !DILocation(line: 1162, column: 32, scope: !1035)
!1045 = !DILocation(line: 1162, column: 48, scope: !1035)
!1046 = !DILocation(line: 1162, column: 47, scope: !1035)
!1047 = !DILocation(line: 1161, column: 29, scope: !1036)
!1048 = !DILocation(line: 1161, column: 24, scope: !1036)
!1049 = distinct !{!1049, !1031, !1050, !497}
!1050 = !DILocation(line: 1165, column: 11, scope: !1032)
!1051 = !DILocation(line: 0, scope: !1014)
!1052 = !DILocation(line: 1168, column: 20, scope: !634)
!1053 = !DILocation(line: 1169, column: 31, scope: !634)
!1054 = !DILocation(line: 1169, column: 38, scope: !634)
!1055 = !DILocation(line: 1169, column: 59, scope: !634)
!1056 = !DILocation(line: 1169, column: 56, scope: !634)
!1057 = !DILocation(line: 1169, column: 15, scope: !634)
!1058 = !DILocation(line: 1170, column: 28, scope: !634)
!1059 = !DILocation(line: 1170, column: 27, scope: !634)
!1060 = !DILocation(line: 1170, column: 22, scope: !634)
!1061 = !DILocation(line: 1170, column: 31, scope: !634)
!1062 = !DILocation(line: 1170, column: 19, scope: !634)
!1063 = !DILocation(line: 0, scope: !570)
!1064 = !DILocation(line: 1174, column: 1, scope: !559)
!1065 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !231, file: !231, line: 122, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!33, !84, !84, !84, !84, !86}
!1068 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !2, file: !2, line: 1844, type: !240, scopeLine: 1847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1100, !1101, !1102, !1103, !1112, !1113, !1114, !1117, !1118, !1119, !1123, !1124, !1125, !1128, !1129}
!1070 = !DILocalVariable(name: "a", arg: 1, scope: !1068, file: !2, line: 1844, type: !84)
!1071 = !DILocalVariable(name: "b", arg: 2, scope: !1068, file: !2, line: 1844, type: !84)
!1072 = !DILocalVariable(name: "x", arg: 3, scope: !1068, file: !2, line: 1844, type: !84)
!1073 = !DILocalVariable(name: "result", arg: 4, scope: !1068, file: !2, line: 1845, type: !86)
!1074 = !DILocalVariable(name: "bma", scope: !1068, file: !2, line: 1848, type: !84)
!1075 = !DILocalVariable(name: "rinta", scope: !1068, file: !2, line: 1849, type: !84)
!1076 = !DILocalVariable(name: "rintb", scope: !1068, file: !2, line: 1850, type: !84)
!1077 = !DILocalVariable(name: "rintbma", scope: !1068, file: !2, line: 1851, type: !84)
!1078 = !DILocalVariable(name: "a_integer", scope: !1068, file: !2, line: 1852, type: !83)
!1079 = !DILocalVariable(name: "b_integer", scope: !1068, file: !2, line: 1853, type: !83)
!1080 = !DILocalVariable(name: "bma_integer", scope: !1068, file: !2, line: 1854, type: !83)
!1081 = !DILocalVariable(name: "b_neg_integer", scope: !1068, file: !2, line: 1855, type: !83)
!1082 = !DILocalVariable(name: "a_neg_integer", scope: !1068, file: !2, line: 1856, type: !83)
!1083 = !DILocalVariable(name: "bma_neg_integer", scope: !1068, file: !2, line: 1857, type: !83)
!1084 = !DILocalVariable(name: "exm1", scope: !1085, file: !2, line: 1892, type: !87)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1884, column: 75)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1884, column: 13)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1878, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1873, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 1870, column: 11)
!1090 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 1861, column: 6)
!1091 = !DILocalVariable(name: "stat_e", scope: !1085, file: !2, line: 1893, type: !33)
!1092 = !DILocalVariable(name: "sa", scope: !1085, file: !2, line: 1894, type: !85)
!1093 = !DILocalVariable(name: "sb", scope: !1085, file: !2, line: 1895, type: !85)
!1094 = !DILocalVariable(name: "lnab", scope: !1085, file: !2, line: 1896, type: !85)
!1095 = !DILocalVariable(name: "hx", scope: !1085, file: !2, line: 1897, type: !87)
!1096 = !DILocalVariable(name: "stat_hx", scope: !1085, file: !2, line: 1898, type: !33)
!1097 = !DILocalVariable(name: "m_arg", scope: !1098, file: !2, line: 1907, type: !84)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 1904, column: 61)
!1099 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1904, column: 14)
!1100 = !DILocalVariable(name: "F_renorm", scope: !1098, file: !2, line: 1908, type: !87)
!1101 = !DILocalVariable(name: "stat_F", scope: !1098, file: !2, line: 1909, type: !33)
!1102 = !DILocalVariable(name: "stat_m", scope: !1098, file: !2, line: 1910, type: !33)
!1103 = !DILocalVariable(name: "Kummer_1F1", scope: !1104, file: !2, line: 1940, type: !87)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 1936, column: 30)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 1936, column: 13)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 1931, column: 8)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1930, column: 20)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 1930, column: 11)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 1927, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 1921, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 1915, column: 11)
!1112 = !DILocalVariable(name: "stat_K", scope: !1104, file: !2, line: 1941, type: !33)
!1113 = !DILocalVariable(name: "stat_e", scope: !1104, file: !2, line: 1942, type: !33)
!1114 = !DILocalVariable(name: "Kummer_1F1", scope: !1115, file: !2, line: 1953, type: !87)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 1947, column: 53)
!1116 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 1947, column: 13)
!1117 = !DILocalVariable(name: "stat_K", scope: !1115, file: !2, line: 1954, type: !33)
!1118 = !DILocalVariable(name: "stat_e", scope: !1115, file: !2, line: 1955, type: !33)
!1119 = !DILocalVariable(name: "K", scope: !1120, file: !2, line: 1974, type: !87)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 1970, column: 36)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1970, column: 8)
!1122 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1967, column: 8)
!1123 = !DILocalVariable(name: "stat_K", scope: !1120, file: !2, line: 1975, type: !33)
!1124 = !DILocalVariable(name: "stat_e", scope: !1120, file: !2, line: 1976, type: !33)
!1125 = !DILocalVariable(name: "K", scope: !1126, file: !2, line: 1997, type: !87)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 1994, column: 22)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 1994, column: 13)
!1128 = !DILocalVariable(name: "stat_K", scope: !1126, file: !2, line: 1998, type: !33)
!1129 = !DILocalVariable(name: "stat_e", scope: !1126, file: !2, line: 1999, type: !33)
!1130 = distinct !DIAssignID()
!1131 = !DILocation(line: 0, scope: !1085)
!1132 = distinct !DIAssignID()
!1133 = distinct !DIAssignID()
!1134 = !DILocation(line: 0, scope: !1098)
!1135 = distinct !DIAssignID()
!1136 = !DILocation(line: 0, scope: !1104)
!1137 = distinct !DIAssignID()
!1138 = !DILocation(line: 0, scope: !1115)
!1139 = distinct !DIAssignID()
!1140 = !DILocation(line: 0, scope: !1120)
!1141 = distinct !DIAssignID()
!1142 = !DILocation(line: 0, scope: !1126)
!1143 = !DILocation(line: 0, scope: !1068)
!1144 = !DILocation(line: 1848, column: 24, scope: !1068)
!1145 = !DILocation(line: 1849, column: 32, scope: !1068)
!1146 = !DILocation(line: 1849, column: 24, scope: !1068)
!1147 = !DILocation(line: 1850, column: 32, scope: !1068)
!1148 = !DILocation(line: 1850, column: 24, scope: !1068)
!1149 = !DILocation(line: 1851, column: 36, scope: !1068)
!1150 = !DILocation(line: 1851, column: 26, scope: !1068)
!1151 = !DILocation(line: 1852, column: 35, scope: !1068)
!1152 = !DILocation(line: 1852, column: 29, scope: !1068)
!1153 = !DILocation(line: 1852, column: 43, scope: !1068)
!1154 = !DILocation(line: 1852, column: 64, scope: !1068)
!1155 = !DILocation(line: 1853, column: 35, scope: !1068)
!1156 = !DILocation(line: 1853, column: 29, scope: !1068)
!1157 = !DILocation(line: 1853, column: 43, scope: !1068)
!1158 = !DILocation(line: 1853, column: 64, scope: !1068)
!1159 = !DILocation(line: 1854, column: 37, scope: !1068)
!1160 = !DILocation(line: 1854, column: 29, scope: !1068)
!1161 = !DILocation(line: 1854, column: 47, scope: !1068)
!1162 = !DILocation(line: 1854, column: 68, scope: !1068)
!1163 = !DILocation(line: 1855, column: 35, scope: !1068)
!1164 = !DILocation(line: 1855, column: 42, scope: !1068)
!1165 = !DILocation(line: 1856, column: 35, scope: !1068)
!1166 = !DILocation(line: 1856, column: 42, scope: !1068)
!1167 = !DILocation(line: 1857, column: 37, scope: !1068)
!1168 = !DILocation(line: 1857, column: 44, scope: !1068)
!1169 = !DILocation(line: 1861, column: 8, scope: !1090)
!1170 = !DILocation(line: 1861, column: 6, scope: !1068)
!1171 = !DILocation(line: 1866, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 1861, column: 16)
!1173 = !DILocation(line: 1867, column: 13, scope: !1172)
!1174 = !DILocation(line: 1867, column: 17, scope: !1172)
!1175 = !DILocation(line: 1868, column: 5, scope: !1172)
!1176 = !DILocation(line: 1870, column: 13, scope: !1089)
!1177 = !DILocation(line: 1870, column: 11, scope: !1090)
!1178 = !DILocation(line: 1871, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 1871, column: 5)
!1180 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1870, column: 21)
!1181 = !DILocation(line: 1871, column: 5, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 1871, column: 5)
!1183 = !DILocation(line: 1873, column: 13, scope: !1088)
!1184 = !DILocation(line: 1873, column: 11, scope: !1089)
!1185 = !DILocation(line: 1874, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 1873, column: 21)
!1187 = !DILocation(line: 1875, column: 13, scope: !1186)
!1188 = !DILocation(line: 1875, column: 17, scope: !1186)
!1189 = !DILocation(line: 1876, column: 5, scope: !1186)
!1190 = !DILocation(line: 1878, column: 13, scope: !1087)
!1191 = !DILocation(line: 1878, column: 11, scope: !1088)
!1192 = !DILocation(line: 1883, column: 12, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1878, column: 19)
!1194 = !DILocation(line: 1883, column: 5, scope: !1193)
!1195 = !DILocation(line: 1884, column: 13, scope: !1086)
!1196 = !DILocation(line: 1884, column: 21, scope: !1086)
!1197 = !DILocation(line: 1884, column: 42, scope: !1086)
!1198 = !DILocation(line: 1892, column: 5, scope: !1085)
!1199 = !DILocation(line: 1893, column: 18, scope: !1085)
!1200 = !DILocation(line: 1894, column: 21, scope: !1085)
!1201 = !DILocation(line: 1895, column: 21, scope: !1085)
!1202 = !DILocation(line: 1895, column: 19, scope: !1085)
!1203 = !DILocation(line: 1896, column: 29, scope: !1085)
!1204 = !DILocation(line: 1896, column: 23, scope: !1085)
!1205 = !DILocation(line: 1896, column: 19, scope: !1085)
!1206 = !DILocation(line: 1897, column: 5, scope: !1085)
!1207 = !DILocation(line: 1898, column: 65, scope: !1085)
!1208 = !DILocation(line: 1898, column: 63, scope: !1085)
!1209 = !DILocation(line: 1899, column: 44, scope: !1085)
!1210 = !DILocation(line: 1899, column: 56, scope: !1085)
!1211 = !DILocation(line: 1899, column: 49, scope: !1085)
!1212 = !DILocation(line: 1899, column: 66, scope: !1085)
!1213 = !DILocation(line: 1898, column: 19, scope: !1085)
!1214 = !DILocation(line: 1901, column: 23, scope: !1085)
!1215 = !DILocation(line: 1901, column: 27, scope: !1085)
!1216 = !DILocation(line: 1901, column: 20, scope: !1085)
!1217 = !DILocation(line: 1901, column: 17, scope: !1085)
!1218 = !DILocation(line: 1902, column: 22, scope: !1085)
!1219 = !DILocation(line: 1902, column: 13, scope: !1085)
!1220 = !DILocation(line: 1902, column: 17, scope: !1085)
!1221 = !DILocation(line: 1903, column: 12, scope: !1085)
!1222 = !DILocation(line: 1904, column: 3, scope: !1086)
!1223 = !DILocation(line: 1904, column: 43, scope: !1099)
!1224 = !DILocation(line: 1904, column: 52, scope: !1099)
!1225 = !DILocation(line: 1904, column: 46, scope: !1099)
!1226 = !DILocation(line: 1904, column: 56, scope: !1099)
!1227 = !DILocation(line: 1904, column: 14, scope: !1086)
!1228 = !DILocation(line: 1907, column: 36, scope: !1098)
!1229 = !DILocation(line: 1907, column: 31, scope: !1098)
!1230 = !DILocation(line: 1908, column: 7, scope: !1098)
!1231 = !DILocation(line: 1909, column: 20, scope: !1098)
!1232 = !DILocation(line: 1910, column: 71, scope: !1098)
!1233 = !DILocation(line: 1911, column: 58, scope: !1098)
!1234 = !DILocation(line: 1911, column: 48, scope: !1098)
!1235 = !DILocation(line: 1911, column: 76, scope: !1098)
!1236 = !DILocation(line: 1911, column: 66, scope: !1098)
!1237 = !DILocation(line: 1910, column: 20, scope: !1098)
!1238 = !DILocation(line: 1913, column: 14, scope: !1098)
!1239 = !DILocation(line: 1914, column: 3, scope: !1099)
!1240 = !DILocation(line: 1915, column: 21, scope: !1111)
!1241 = !DILocation(line: 1919, column: 36, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 1915, column: 35)
!1243 = !DILocation(line: 1919, column: 48, scope: !1242)
!1244 = !DILocation(line: 1919, column: 12, scope: !1242)
!1245 = !DILocation(line: 1919, column: 5, scope: !1242)
!1246 = !DILocation(line: 1921, column: 25, scope: !1110)
!1247 = !DILocation(line: 1925, column: 5, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 1925, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 1921, column: 55)
!1250 = !DILocation(line: 1925, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 1925, column: 5)
!1252 = !DILocation(line: 1927, column: 11, scope: !1110)
!1253 = !DILocation(line: 1928, column: 36, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 1927, column: 26)
!1255 = !DILocation(line: 1928, column: 12, scope: !1254)
!1256 = !DILocation(line: 1928, column: 5, scope: !1254)
!1257 = !DILocation(line: 1930, column: 13, scope: !1108)
!1258 = !DILocation(line: 1930, column: 11, scope: !1109)
!1259 = !DILocation(line: 1931, column: 13, scope: !1106)
!1260 = !DILocation(line: 1931, column: 18, scope: !1106)
!1261 = !DILocation(line: 1934, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 1931, column: 31)
!1263 = !DILocation(line: 1934, column: 7, scope: !1262)
!1264 = !DILocation(line: 1936, column: 13, scope: !1106)
!1265 = !DILocation(line: 1940, column: 7, scope: !1104)
!1266 = !DILocation(line: 1941, column: 44, scope: !1104)
!1267 = !DILocation(line: 1941, column: 61, scope: !1104)
!1268 = !DILocation(line: 1941, column: 20, scope: !1104)
!1269 = !DILocation(line: 1942, column: 63, scope: !1104)
!1270 = !DILocation(line: 1942, column: 61, scope: !1104)
!1271 = !DILocation(line: 1943, column: 56, scope: !1104)
!1272 = !DILocation(line: 1943, column: 72, scope: !1104)
!1273 = !DILocation(line: 1942, column: 20, scope: !1104)
!1274 = !DILocation(line: 1945, column: 14, scope: !1104)
!1275 = !DILocation(line: 1946, column: 5, scope: !1105)
!1276 = !DILocation(line: 1947, column: 15, scope: !1116)
!1277 = !DILocation(line: 1947, column: 21, scope: !1116)
!1278 = !DILocation(line: 1947, column: 24, scope: !1116)
!1279 = !DILocation(line: 1947, column: 32, scope: !1116)
!1280 = !DILocation(line: 1947, column: 13, scope: !1105)
!1281 = !DILocation(line: 1953, column: 7, scope: !1115)
!1282 = !DILocation(line: 1954, column: 46, scope: !1115)
!1283 = !DILocation(line: 1954, column: 20, scope: !1115)
!1284 = !DILocation(line: 1955, column: 61, scope: !1115)
!1285 = !DILocation(line: 1956, column: 56, scope: !1115)
!1286 = !DILocation(line: 1956, column: 72, scope: !1115)
!1287 = !DILocation(line: 1955, column: 20, scope: !1115)
!1288 = !DILocation(line: 1958, column: 14, scope: !1115)
!1289 = !DILocation(line: 1959, column: 5, scope: !1116)
!1290 = !DILocation(line: 1960, column: 16, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 1960, column: 14)
!1292 = !DILocation(line: 1960, column: 14, scope: !1116)
!1293 = !DILocation(line: 1962, column: 14, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 1960, column: 21)
!1295 = !DILocation(line: 1962, column: 7, scope: !1294)
!1296 = !DILocation(line: 1964, column: 14, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 1963, column: 12)
!1298 = !DILocation(line: 1964, column: 7, scope: !1297)
!1299 = !DILocation(line: 1970, column: 24, scope: !1121)
!1300 = !DILocation(line: 1974, column: 7, scope: !1120)
!1301 = !DILocation(line: 1977, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 1977, column: 10)
!1303 = !DILocation(line: 0, scope: !1302)
!1304 = !DILocation(line: 1977, column: 10, scope: !1120)
!1305 = !DILocation(line: 1983, column: 18, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 1977, column: 19)
!1307 = !DILocation(line: 1984, column: 7, scope: !1306)
!1308 = !DILocation(line: 1987, column: 18, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 1985, column: 12)
!1310 = !DILocation(line: 1989, column: 59, scope: !1120)
!1311 = !DILocation(line: 1989, column: 57, scope: !1120)
!1312 = !DILocation(line: 1990, column: 43, scope: !1120)
!1313 = !DILocation(line: 1990, column: 50, scope: !1120)
!1314 = !DILocation(line: 1989, column: 16, scope: !1120)
!1315 = !DILocation(line: 1992, column: 14, scope: !1120)
!1316 = !DILocation(line: 1993, column: 5, scope: !1121)
!1317 = !DILocation(line: 1994, column: 15, scope: !1127)
!1318 = !DILocation(line: 1994, column: 13, scope: !1121)
!1319 = !DILocation(line: 1997, column: 7, scope: !1126)
!1320 = !DILocation(line: 1998, column: 46, scope: !1126)
!1321 = !DILocation(line: 1998, column: 20, scope: !1126)
!1322 = !DILocation(line: 1999, column: 63, scope: !1126)
!1323 = !DILocation(line: 1999, column: 61, scope: !1126)
!1324 = !DILocation(line: 2000, column: 47, scope: !1126)
!1325 = !DILocation(line: 2000, column: 54, scope: !1126)
!1326 = !DILocation(line: 1999, column: 20, scope: !1126)
!1327 = !DILocation(line: 2002, column: 14, scope: !1126)
!1328 = !DILocation(line: 2003, column: 5, scope: !1127)
!1329 = !DILocation(line: 2005, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 2004, column: 10)
!1331 = !DILocation(line: 2005, column: 7, scope: !1330)
!1332 = !DILocation(line: 0, scope: !1090)
!1333 = !DILocation(line: 2008, column: 1, scope: !1068)
!1334 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !231, file: !231, line: 75, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubprogram(name: "log", scope: !1336, file: !1336, line: 104, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!85, !85}
!1339 = distinct !DISubprogram(name: "hyperg_1F1_renorm_b0", scope: !2, file: !2, line: 416, type: !1340, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!33, !84, !84, !86}
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1350, !1351, !1352, !1355, !1356, !1357, !1360, !1361, !1362, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1343 = !DILocalVariable(name: "a", arg: 1, scope: !1339, file: !2, line: 416, type: !84)
!1344 = !DILocalVariable(name: "x", arg: 2, scope: !1339, file: !2, line: 416, type: !84)
!1345 = !DILocalVariable(name: "result", arg: 3, scope: !1339, file: !2, line: 416, type: !86)
!1346 = !DILocalVariable(name: "eta", scope: !1339, file: !2, line: 418, type: !85)
!1347 = !DILocalVariable(name: "root_eta", scope: !1348, file: !2, line: 420, type: !85)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 419, column: 17)
!1349 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 419, column: 6)
!1350 = !DILocalVariable(name: "I1_scaled", scope: !1348, file: !2, line: 421, type: !87)
!1351 = !DILocalVariable(name: "stat_I", scope: !1348, file: !2, line: 422, type: !33)
!1352 = !DILocalVariable(name: "corr1", scope: !1353, file: !2, line: 435, type: !84)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 428, column: 10)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 423, column: 8)
!1355 = !DILocalVariable(name: "lnr_val", scope: !1353, file: !2, line: 437, type: !84)
!1356 = !DILocalVariable(name: "lnr_err", scope: !1353, file: !2, line: 438, type: !84)
!1357 = !DILocalVariable(name: "root_eta", scope: !1358, file: !2, line: 449, type: !85)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 447, column: 8)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 442, column: 11)
!1360 = !DILocalVariable(name: "J1", scope: !1358, file: !2, line: 450, type: !87)
!1361 = !DILocalVariable(name: "stat_J", scope: !1358, file: !2, line: 451, type: !33)
!1362 = !DILocalVariable(name: "t1", scope: !1363, file: !2, line: 458, type: !84)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 457, column: 10)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 452, column: 8)
!1365 = !DILocalVariable(name: "t2", scope: !1363, file: !2, line: 459, type: !84)
!1366 = !DILocalVariable(name: "t3", scope: !1363, file: !2, line: 460, type: !84)
!1367 = !DILocalVariable(name: "t4", scope: !1363, file: !2, line: 461, type: !84)
!1368 = !DILocalVariable(name: "lnr_val", scope: !1363, file: !2, line: 462, type: !84)
!1369 = !DILocalVariable(name: "lnr_err", scope: !1363, file: !2, line: 463, type: !84)
!1370 = !DILocalVariable(name: "ex", scope: !1363, file: !2, line: 464, type: !87)
!1371 = !DILocalVariable(name: "stat_e", scope: !1363, file: !2, line: 465, type: !33)
!1372 = distinct !DIAssignID()
!1373 = !DILocation(line: 0, scope: !1348)
!1374 = distinct !DIAssignID()
!1375 = !DILocation(line: 0, scope: !1358)
!1376 = distinct !DIAssignID()
!1377 = !DILocation(line: 0, scope: !1363)
!1378 = !DILocation(line: 0, scope: !1339)
!1379 = !DILocation(line: 418, column: 17, scope: !1339)
!1380 = !DILocation(line: 419, column: 10, scope: !1349)
!1381 = !DILocation(line: 419, column: 6, scope: !1339)
!1382 = !DILocation(line: 420, column: 23, scope: !1348)
!1383 = !DILocation(line: 421, column: 5, scope: !1348)
!1384 = !DILocation(line: 422, column: 47, scope: !1348)
!1385 = !DILocation(line: 422, column: 18, scope: !1348)
!1386 = !DILocation(line: 423, column: 18, scope: !1354)
!1387 = !DILocation(line: 423, column: 22, scope: !1354)
!1388 = !DILocation(line: 423, column: 8, scope: !1348)
!1389 = !DILocation(line: 426, column: 14, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 423, column: 30)
!1391 = !DILocation(line: 425, column: 19, scope: !1390)
!1392 = !DILocation(line: 426, column: 7, scope: !1390)
!1393 = !DILocation(line: 435, column: 36, scope: !1353)
!1394 = !DILocation(line: 435, column: 49, scope: !1353)
!1395 = !DILocation(line: 435, column: 44, scope: !1353)
!1396 = !DILocation(line: 435, column: 39, scope: !1353)
!1397 = !DILocation(line: 435, column: 38, scope: !1353)
!1398 = !DILocation(line: 435, column: 58, scope: !1353)
!1399 = !DILocation(line: 435, column: 57, scope: !1353)
!1400 = !DILocation(line: 0, scope: !1353)
!1401 = !DILocation(line: 437, column: 33, scope: !1353)
!1402 = !DILocation(line: 437, column: 42, scope: !1353)
!1403 = !DILocation(line: 437, column: 41, scope: !1353)
!1404 = !DILocation(line: 437, column: 36, scope: !1353)
!1405 = !DILocation(line: 437, column: 53, scope: !1353)
!1406 = !DILocation(line: 437, column: 51, scope: !1353)
!1407 = !DILocation(line: 437, column: 88, scope: !1353)
!1408 = !DILocation(line: 437, column: 91, scope: !1353)
!1409 = !DILocation(line: 437, column: 74, scope: !1353)
!1410 = !DILocation(line: 437, column: 72, scope: !1353)
!1411 = !DILocation(line: 438, column: 53, scope: !1353)
!1412 = !DILocation(line: 438, column: 52, scope: !1353)
!1413 = !DILocation(line: 438, column: 61, scope: !1353)
!1414 = !DILocation(line: 438, column: 46, scope: !1353)
!1415 = !DILocation(line: 438, column: 86, scope: !1353)
!1416 = !DILocation(line: 438, column: 89, scope: !1353)
!1417 = !DILocation(line: 438, column: 107, scope: !1353)
!1418 = !DILocation(line: 438, column: 96, scope: !1353)
!1419 = !DILocation(line: 438, column: 70, scope: !1353)
!1420 = !DILocation(line: 438, column: 68, scope: !1353)
!1421 = !DILocation(line: 439, column: 14, scope: !1353)
!1422 = !DILocation(line: 0, scope: !1354)
!1423 = !DILocation(line: 441, column: 3, scope: !1349)
!1424 = !DILocation(line: 442, column: 15, scope: !1359)
!1425 = !DILocation(line: 442, column: 11, scope: !1349)
!1426 = !DILocation(line: 444, column: 17, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 442, column: 23)
!1428 = !DILocation(line: 445, column: 5, scope: !1427)
!1429 = !DILocation(line: 449, column: 28, scope: !1358)
!1430 = !DILocation(line: 449, column: 23, scope: !1358)
!1431 = !DILocation(line: 450, column: 5, scope: !1358)
!1432 = !DILocation(line: 451, column: 40, scope: !1358)
!1433 = !DILocation(line: 451, column: 18, scope: !1358)
!1434 = !DILocation(line: 452, column: 11, scope: !1364)
!1435 = !DILocation(line: 452, column: 15, scope: !1364)
!1436 = !DILocation(line: 452, column: 8, scope: !1358)
!1437 = !DILocation(line: 455, column: 14, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 452, column: 23)
!1439 = !DILocation(line: 455, column: 7, scope: !1438)
!1440 = !DILocation(line: 458, column: 28, scope: !1363)
!1441 = !DILocation(line: 459, column: 29, scope: !1363)
!1442 = !DILocation(line: 459, column: 28, scope: !1363)
!1443 = !DILocation(line: 460, column: 25, scope: !1363)
!1444 = !DILocation(line: 461, column: 32, scope: !1363)
!1445 = !DILocation(line: 461, column: 25, scope: !1363)
!1446 = !DILocation(line: 462, column: 33, scope: !1363)
!1447 = !DILocation(line: 462, column: 38, scope: !1363)
!1448 = !DILocation(line: 462, column: 43, scope: !1363)
!1449 = !DILocation(line: 463, column: 52, scope: !1363)
!1450 = !DILocation(line: 463, column: 61, scope: !1363)
!1451 = !DILocation(line: 463, column: 46, scope: !1363)
!1452 = !DILocation(line: 463, column: 78, scope: !1363)
!1453 = !DILocation(line: 463, column: 85, scope: !1363)
!1454 = !DILocation(line: 463, column: 81, scope: !1363)
!1455 = !DILocation(line: 463, column: 70, scope: !1363)
!1456 = !DILocation(line: 463, column: 68, scope: !1363)
!1457 = !DILocation(line: 464, column: 7, scope: !1363)
!1458 = !DILocation(line: 465, column: 20, scope: !1363)
!1459 = !DILocation(line: 466, column: 25, scope: !1363)
!1460 = !DILocation(line: 466, column: 21, scope: !1363)
!1461 = !DILocation(line: 467, column: 25, scope: !1363)
!1462 = !DILocation(line: 469, column: 5, scope: !1364)
!1463 = !DILocation(line: 0, scope: !1364)
!1464 = !DILocation(line: 470, column: 3, scope: !1359)
!1465 = !DILocation(line: 0, scope: !1349)
!1466 = !DILocation(line: 472, column: 1, scope: !1339)
!1467 = !DISubprogram(name: "gsl_sf_multiply_err_e", scope: !1468, file: !1468, line: 52, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!1469 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_lag", scope: !2, file: !2, line: 1223, type: !441, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1493, !1496, !1497, !1498, !1499, !1500, !1502, !1503, !1504}
!1471 = !DILocalVariable(name: "a", arg: 1, scope: !1469, file: !2, line: 1223, type: !83)
!1472 = !DILocalVariable(name: "b", arg: 2, scope: !1469, file: !2, line: 1223, type: !84)
!1473 = !DILocalVariable(name: "x", arg: 3, scope: !1469, file: !2, line: 1223, type: !84)
!1474 = !DILocalVariable(name: "result", arg: 4, scope: !1469, file: !2, line: 1223, type: !86)
!1475 = !DILocalVariable(name: "n", scope: !1469, file: !2, line: 1225, type: !83)
!1476 = !DILocalVariable(name: "lag", scope: !1469, file: !2, line: 1227, type: !87)
!1477 = !DILocalVariable(name: "stat_l", scope: !1469, file: !2, line: 1228, type: !83)
!1478 = !DILocalVariable(name: "lnfact", scope: !1479, file: !2, line: 1230, type: !87)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 1229, column: 15)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 1229, column: 6)
!1481 = !DILocalVariable(name: "lng1", scope: !1479, file: !2, line: 1231, type: !87)
!1482 = !DILocalVariable(name: "lng2", scope: !1479, file: !2, line: 1232, type: !87)
!1483 = !DILocalVariable(name: "s1", scope: !1479, file: !2, line: 1233, type: !85)
!1484 = !DILocalVariable(name: "s2", scope: !1479, file: !2, line: 1233, type: !85)
!1485 = !DILocalVariable(name: "stat_f", scope: !1479, file: !2, line: 1234, type: !83)
!1486 = !DILocalVariable(name: "stat_g1", scope: !1479, file: !2, line: 1235, type: !83)
!1487 = !DILocalVariable(name: "stat_g2", scope: !1479, file: !2, line: 1236, type: !83)
!1488 = !DILocalVariable(name: "lnpre_val", scope: !1479, file: !2, line: 1237, type: !84)
!1489 = !DILocalVariable(name: "lnpre_err", scope: !1479, file: !2, line: 1238, type: !84)
!1490 = !DILocalVariable(name: "stat_e", scope: !1479, file: !2, line: 1240, type: !83)
!1491 = !DILocalVariable(name: "lnbeta", scope: !1492, file: !2, line: 1246, type: !87)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 1245, column: 8)
!1493 = !DILocalVariable(name: "ln_term_val", scope: !1494, file: !2, line: 1253, type: !84)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 1248, column: 32)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 1248, column: 8)
!1496 = !DILocalVariable(name: "ln_term_err", scope: !1494, file: !2, line: 1254, type: !84)
!1497 = !DILocalVariable(name: "beta", scope: !1494, file: !2, line: 1255, type: !87)
!1498 = !DILocalVariable(name: "stat_b", scope: !1494, file: !2, line: 1256, type: !33)
!1499 = !DILocalVariable(name: "stat_e", scope: !1494, file: !2, line: 1257, type: !33)
!1500 = !DILocalVariable(name: "ln_n", scope: !1501, file: !2, line: 1268, type: !84)
!1501 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 1264, column: 10)
!1502 = !DILocalVariable(name: "ln_term_val", scope: !1501, file: !2, line: 1269, type: !84)
!1503 = !DILocalVariable(name: "ln_term_err", scope: !1501, file: !2, line: 1270, type: !84)
!1504 = !DILocalVariable(name: "stat_e", scope: !1501, file: !2, line: 1271, type: !33)
!1505 = distinct !DIAssignID()
!1506 = !DILocation(line: 0, scope: !1469)
!1507 = distinct !DIAssignID()
!1508 = !DILocation(line: 0, scope: !1479)
!1509 = distinct !DIAssignID()
!1510 = distinct !DIAssignID()
!1511 = distinct !DIAssignID()
!1512 = distinct !DIAssignID()
!1513 = distinct !DIAssignID()
!1514 = !DILocation(line: 0, scope: !1492)
!1515 = distinct !DIAssignID()
!1516 = !DILocation(line: 0, scope: !1494)
!1517 = !DILocation(line: 1225, column: 17, scope: !1469)
!1518 = !DILocation(line: 1227, column: 3, scope: !1469)
!1519 = !DILocation(line: 1228, column: 46, scope: !1469)
!1520 = !DILocation(line: 1228, column: 22, scope: !1469)
!1521 = !DILocation(line: 1229, column: 8, scope: !1480)
!1522 = !DILocation(line: 1229, column: 6, scope: !1469)
!1523 = !DILocation(line: 1230, column: 5, scope: !1479)
!1524 = !DILocation(line: 1231, column: 5, scope: !1479)
!1525 = !DILocation(line: 1232, column: 5, scope: !1479)
!1526 = !DILocation(line: 1233, column: 5, scope: !1479)
!1527 = !DILocation(line: 1234, column: 25, scope: !1479)
!1528 = !DILocation(line: 1235, column: 50, scope: !1479)
!1529 = !DILocation(line: 1235, column: 48, scope: !1479)
!1530 = !DILocation(line: 1235, column: 25, scope: !1479)
!1531 = !DILocation(line: 1236, column: 25, scope: !1479)
!1532 = !DILocation(line: 1237, column: 37, scope: !1479)
!1533 = !DILocation(line: 1237, column: 49, scope: !1479)
!1534 = !DILocation(line: 1237, column: 60, scope: !1479)
!1535 = !DILocation(line: 1237, column: 53, scope: !1479)
!1536 = !DILocation(line: 1237, column: 41, scope: !1479)
!1537 = !DILocation(line: 1238, column: 37, scope: !1479)
!1538 = !DILocation(line: 1238, column: 48, scope: !1479)
!1539 = !DILocation(line: 1238, column: 41, scope: !1479)
!1540 = !DILocation(line: 1238, column: 59, scope: !1479)
!1541 = !DILocation(line: 1238, column: 52, scope: !1479)
!1542 = !DILocation(line: 1239, column: 33, scope: !1479)
!1543 = !DILocation(line: 1239, column: 31, scope: !1479)
!1544 = !DILocation(line: 1239, column: 7, scope: !1479)
!1545 = !DILocation(line: 1241, column: 49, scope: !1479)
!1546 = !DILocation(line: 1241, column: 52, scope: !1479)
!1547 = !DILocation(line: 1241, column: 51, scope: !1479)
!1548 = !DILocation(line: 1241, column: 59, scope: !1479)
!1549 = !DILocation(line: 1241, column: 54, scope: !1479)
!1550 = !DILocation(line: 1241, column: 68, scope: !1479)
!1551 = !DILocation(line: 1240, column: 24, scope: !1479)
!1552 = !DILocation(line: 1243, column: 12, scope: !1479)
!1553 = !DILocation(line: 1244, column: 3, scope: !1480)
!1554 = !DILocation(line: 1246, column: 5, scope: !1492)
!1555 = !DILocation(line: 1247, column: 24, scope: !1492)
!1556 = !DILocation(line: 1247, column: 5, scope: !1492)
!1557 = !DILocation(line: 1248, column: 20, scope: !1495)
!1558 = !DILocation(line: 1248, column: 8, scope: !1495)
!1559 = !DILocation(line: 1248, column: 25, scope: !1495)
!1560 = !DILocation(line: 1248, column: 8, scope: !1492)
!1561 = !DILocation(line: 1253, column: 42, scope: !1494)
!1562 = !DILocation(line: 1253, column: 34, scope: !1494)
!1563 = !DILocation(line: 1254, column: 56, scope: !1494)
!1564 = !DILocation(line: 1255, column: 7, scope: !1494)
!1565 = !DILocation(line: 1256, column: 20, scope: !1494)
!1566 = !DILocation(line: 1258, column: 49, scope: !1494)
!1567 = !DILocation(line: 1258, column: 58, scope: !1494)
!1568 = !DILocation(line: 1257, column: 20, scope: !1494)
!1569 = !DILocation(line: 1260, column: 27, scope: !1494)
!1570 = !DILocation(line: 1260, column: 30, scope: !1494)
!1571 = !DILocation(line: 1260, column: 19, scope: !1494)
!1572 = !DILocation(line: 1261, column: 15, scope: !1494)
!1573 = !DILocation(line: 1261, column: 19, scope: !1494)
!1574 = !DILocation(line: 1262, column: 14, scope: !1494)
!1575 = !DILocation(line: 1263, column: 5, scope: !1495)
!1576 = !DILocation(line: 1268, column: 27, scope: !1501)
!1577 = !DILocation(line: 0, scope: !1501)
!1578 = !DILocation(line: 1269, column: 41, scope: !1501)
!1579 = !DILocation(line: 1269, column: 45, scope: !1501)
!1580 = !DILocation(line: 1270, column: 41, scope: !1501)
!1581 = !DILocation(line: 1270, column: 71, scope: !1501)
!1582 = !DILocation(line: 1270, column: 69, scope: !1501)
!1583 = !DILocation(line: 1270, column: 45, scope: !1501)
!1584 = !DILocation(line: 1272, column: 49, scope: !1501)
!1585 = !DILocation(line: 1272, column: 58, scope: !1501)
!1586 = !DILocation(line: 1271, column: 20, scope: !1501)
!1587 = !DILocation(line: 1274, column: 14, scope: !1501)
!1588 = !DILocation(line: 0, scope: !1495)
!1589 = !DILocation(line: 1276, column: 3, scope: !1480)
!1590 = !DILocation(line: 0, scope: !1480)
!1591 = !DILocation(line: 1277, column: 1, scope: !1469)
!1592 = distinct !DISubprogram(name: "hyperg_1F1_small_a_bgt0", scope: !2, file: !2, line: 716, type: !240, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1593)
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1594 = !DILocalVariable(name: "a", arg: 1, scope: !1592, file: !2, line: 716, type: !84)
!1595 = !DILocalVariable(name: "b", arg: 2, scope: !1592, file: !2, line: 716, type: !84)
!1596 = !DILocalVariable(name: "x", arg: 3, scope: !1592, file: !2, line: 716, type: !84)
!1597 = !DILocalVariable(name: "result", arg: 4, scope: !1592, file: !2, line: 716, type: !86)
!1598 = !DILocalVariable(name: "bma", scope: !1592, file: !2, line: 718, type: !84)
!1599 = !DILocalVariable(name: "oma", scope: !1592, file: !2, line: 719, type: !84)
!1600 = !DILocalVariable(name: "ap1mb", scope: !1592, file: !2, line: 720, type: !84)
!1601 = !DILocalVariable(name: "abs_bma", scope: !1592, file: !2, line: 721, type: !84)
!1602 = !DILocalVariable(name: "abs_oma", scope: !1592, file: !2, line: 722, type: !84)
!1603 = !DILocalVariable(name: "abs_ap1mb", scope: !1592, file: !2, line: 723, type: !84)
!1604 = !DILocalVariable(name: "ax", scope: !1592, file: !2, line: 725, type: !84)
!1605 = !DILocalVariable(name: "b_del", scope: !1606, file: !2, line: 752, type: !84)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 748, column: 26)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 748, column: 13)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 745, column: 8)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 744, column: 20)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 744, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 741, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 735, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 732, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 727, column: 6)
!1615 = !DILocalVariable(name: "bp", scope: !1606, file: !2, line: 753, type: !85)
!1616 = !DILocalVariable(name: "r_Mbp1", scope: !1606, file: !2, line: 754, type: !87)
!1617 = !DILocalVariable(name: "r_Mb", scope: !1606, file: !2, line: 755, type: !87)
!1618 = !DILocalVariable(name: "Mbp1", scope: !1606, file: !2, line: 756, type: !85)
!1619 = !DILocalVariable(name: "Mb", scope: !1606, file: !2, line: 757, type: !85)
!1620 = !DILocalVariable(name: "Mbm1", scope: !1606, file: !2, line: 758, type: !85)
!1621 = !DILocalVariable(name: "stat_0", scope: !1606, file: !2, line: 759, type: !33)
!1622 = !DILocalVariable(name: "stat_1", scope: !1606, file: !2, line: 760, type: !33)
!1623 = !DILocalVariable(name: "err_rat", scope: !1606, file: !2, line: 761, type: !84)
!1624 = distinct !DIAssignID()
!1625 = distinct !DIAssignID()
!1626 = !DILocation(line: 0, scope: !1606)
!1627 = distinct !DIAssignID()
!1628 = !DILocation(line: 0, scope: !1592)
!1629 = !DILocation(line: 718, column: 23, scope: !1592)
!1630 = !DILocation(line: 719, column: 25, scope: !1592)
!1631 = !DILocation(line: 720, column: 27, scope: !1592)
!1632 = !DILocation(line: 720, column: 29, scope: !1592)
!1633 = !DILocation(line: 723, column: 28, scope: !1592)
!1634 = !DILocation(line: 725, column: 21, scope: !1592)
!1635 = !DILocation(line: 727, column: 8, scope: !1614)
!1636 = !DILocation(line: 727, column: 6, scope: !1592)
!1637 = !DILocation(line: 728, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 727, column: 16)
!1639 = !DILocation(line: 729, column: 13, scope: !1638)
!1640 = !DILocation(line: 729, column: 17, scope: !1638)
!1641 = !DILocation(line: 730, column: 5, scope: !1638)
!1642 = !DILocation(line: 732, column: 13, scope: !1613)
!1643 = !DILocation(line: 732, column: 20, scope: !1613)
!1644 = !DILocalVariable(name: "M", scope: !1645, file: !2, line: 375, type: !87)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 367, column: 26)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 367, column: 13)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !2, line: 364, column: 8)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 363, column: 20)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 363, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 360, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 357, column: 11)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 354, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 351, column: 6)
!1654 = distinct !DISubprogram(name: "hyperg_1F1_1", scope: !2, file: !2, line: 346, type: !1340, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1644, !1663, !1664}
!1656 = !DILocalVariable(name: "b", arg: 1, scope: !1654, file: !2, line: 346, type: !84)
!1657 = !DILocalVariable(name: "x", arg: 2, scope: !1654, file: !2, line: 346, type: !84)
!1658 = !DILocalVariable(name: "result", arg: 3, scope: !1654, file: !2, line: 346, type: !86)
!1659 = !DILocalVariable(name: "ax", scope: !1654, file: !2, line: 348, type: !85)
!1660 = !DILocalVariable(name: "ib", scope: !1654, file: !2, line: 349, type: !85)
!1661 = !DILocalVariable(name: "off", scope: !1645, file: !2, line: 373, type: !84)
!1662 = !DILocalVariable(name: "bp", scope: !1645, file: !2, line: 374, type: !85)
!1663 = !DILocalVariable(name: "stat_s", scope: !1645, file: !2, line: 376, type: !33)
!1664 = !DILocalVariable(name: "err_rat", scope: !1645, file: !2, line: 377, type: !84)
!1665 = !DILocation(line: 0, scope: !1645, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 733, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 732, column: 33)
!1668 = !DILocation(line: 0, scope: !1654, inlinedAt: !1666)
!1669 = !DILocation(line: 349, column: 23, scope: !1654, inlinedAt: !1666)
!1670 = !DILocation(line: 349, column: 15, scope: !1654, inlinedAt: !1666)
!1671 = !DILocation(line: 351, column: 8, scope: !1653, inlinedAt: !1666)
!1672 = !DILocation(line: 351, column: 6, scope: !1654, inlinedAt: !1666)
!1673 = !DILocation(line: 352, column: 5, scope: !1674, inlinedAt: !1666)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 352, column: 5)
!1675 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 351, column: 15)
!1676 = !DILocation(line: 352, column: 5, scope: !1677, inlinedAt: !1666)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 352, column: 5)
!1678 = !DILocation(line: 354, column: 13, scope: !1652, inlinedAt: !1666)
!1679 = !DILocation(line: 354, column: 11, scope: !1653, inlinedAt: !1666)
!1680 = !DILocation(line: 355, column: 12, scope: !1681, inlinedAt: !1666)
!1681 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 354, column: 21)
!1682 = !DILocation(line: 355, column: 5, scope: !1681, inlinedAt: !1666)
!1683 = !DILocation(line: 357, column: 19, scope: !1651, inlinedAt: !1666)
!1684 = !DILocation(line: 357, column: 13, scope: !1651, inlinedAt: !1666)
!1685 = !DILocation(line: 357, column: 11, scope: !1652, inlinedAt: !1666)
!1686 = !DILocalVariable(name: "n", scope: !1687, file: !2, line: 300, type: !85)
!1687 = distinct !DISubprogram(name: "hyperg_1F1_1_series", scope: !2, file: !2, line: 295, type: !1688, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1689)
!1688 = !DISubroutineType(cc: DW_CC_nocall, types: !1341)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1686}
!1690 = !DILocalVariable(name: "b", arg: 1, scope: !1687, file: !2, line: 295, type: !84)
!1691 = !DILocalVariable(name: "x", arg: 2, scope: !1687, file: !2, line: 295, type: !84)
!1692 = !DILocalVariable(name: "result", arg: 3, scope: !1687, file: !2, line: 295, type: !86)
!1693 = !DILocalVariable(name: "sum_val", scope: !1687, file: !2, line: 297, type: !85)
!1694 = !DILocalVariable(name: "sum_err", scope: !1687, file: !2, line: 298, type: !85)
!1695 = !DILocalVariable(name: "term", scope: !1687, file: !2, line: 299, type: !85)
!1696 = !DILocation(line: 0, scope: !1687, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 358, column: 12, scope: !1698, inlinedAt: !1666)
!1698 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 357, column: 24)
!1699 = !DILocation(line: 302, column: 17, scope: !1700, inlinedAt: !1697)
!1700 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 301, column: 52)
!1701 = !DILocation(line: 302, column: 19, scope: !1700, inlinedAt: !1697)
!1702 = !DILocation(line: 302, column: 14, scope: !1700, inlinedAt: !1697)
!1703 = !DILocation(line: 302, column: 10, scope: !1700, inlinedAt: !1697)
!1704 = !DILocation(line: 303, column: 13, scope: !1700, inlinedAt: !1697)
!1705 = !DILocation(line: 304, column: 36, scope: !1700, inlinedAt: !1697)
!1706 = !DILocation(line: 304, column: 35, scope: !1700, inlinedAt: !1697)
!1707 = !DILocation(line: 304, column: 65, scope: !1700, inlinedAt: !1697)
!1708 = !DILocation(line: 304, column: 64, scope: !1700, inlinedAt: !1697)
!1709 = !DILocation(line: 304, column: 47, scope: !1700, inlinedAt: !1697)
!1710 = !DILocation(line: 304, column: 13, scope: !1700, inlinedAt: !1697)
!1711 = !DILocation(line: 305, column: 7, scope: !1700, inlinedAt: !1697)
!1712 = !DILocation(line: 301, column: 18, scope: !1687, inlinedAt: !1697)
!1713 = !DILocation(line: 301, column: 9, scope: !1687, inlinedAt: !1697)
!1714 = !DILocation(line: 301, column: 28, scope: !1687, inlinedAt: !1697)
!1715 = !DILocation(line: 301, column: 3, scope: !1687, inlinedAt: !1697)
!1716 = distinct !{!1716, !1715, !1717, !497}
!1717 = !DILocation(line: 306, column: 3, scope: !1687, inlinedAt: !1697)
!1718 = !DILocation(line: 307, column: 16, scope: !1687, inlinedAt: !1697)
!1719 = !DILocation(line: 308, column: 11, scope: !1687, inlinedAt: !1697)
!1720 = !DILocation(line: 309, column: 22, scope: !1687, inlinedAt: !1697)
!1721 = !DILocation(line: 309, column: 15, scope: !1687, inlinedAt: !1697)
!1722 = !DILocation(line: 358, column: 5, scope: !1698, inlinedAt: !1666)
!1723 = !DILocation(line: 360, column: 18, scope: !1650, inlinedAt: !1666)
!1724 = !DILocation(line: 360, column: 11, scope: !1650, inlinedAt: !1666)
!1725 = !DILocation(line: 360, column: 24, scope: !1650, inlinedAt: !1666)
!1726 = !DILocation(line: 360, column: 45, scope: !1650, inlinedAt: !1666)
!1727 = !DILocation(line: 361, column: 29, scope: !1728, inlinedAt: !1666)
!1728 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 360, column: 62)
!1729 = !DILocalVariable(name: "b", arg: 1, scope: !1730, file: !2, line: 319, type: !83)
!1730 = distinct !DISubprogram(name: "hyperg_1F1_1_int", scope: !2, file: !2, line: 319, type: !1731, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!33, !83, !84, !86}
!1733 = !{!1729, !1734, !1735}
!1734 = !DILocalVariable(name: "x", arg: 2, scope: !1730, file: !2, line: 319, type: !84)
!1735 = !DILocalVariable(name: "result", arg: 3, scope: !1730, file: !2, line: 319, type: !86)
!1736 = !DILocation(line: 0, scope: !1730, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 361, column: 12, scope: !1728, inlinedAt: !1666)
!1738 = !DILocation(line: 321, column: 8, scope: !1739, inlinedAt: !1737)
!1739 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 321, column: 6)
!1740 = !DILocation(line: 321, column: 6, scope: !1730, inlinedAt: !1737)
!1741 = !DILocation(line: 322, column: 5, scope: !1742, inlinedAt: !1737)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 322, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 321, column: 13)
!1744 = !DILocation(line: 322, column: 5, scope: !1745, inlinedAt: !1737)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 322, column: 5)
!1746 = !DILocation(line: 324, column: 11, scope: !1739, inlinedAt: !1737)
!1747 = !DILocation(line: 325, column: 12, scope: !1748, inlinedAt: !1737)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 324, column: 19)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 324, column: 11)
!1750 = !DILocation(line: 325, column: 5, scope: !1748, inlinedAt: !1737)
!1751 = !DILocation(line: 328, column: 12, scope: !1752, inlinedAt: !1737)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 327, column: 19)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 327, column: 11)
!1754 = !DILocation(line: 328, column: 5, scope: !1752, inlinedAt: !1737)
!1755 = !DILocation(line: 331, column: 12, scope: !1756, inlinedAt: !1737)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 330, column: 19)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 330, column: 11)
!1758 = !DILocation(line: 331, column: 5, scope: !1756, inlinedAt: !1737)
!1759 = !DILocation(line: 334, column: 31, scope: !1760, inlinedAt: !1737)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 333, column: 8)
!1761 = !DILocation(line: 334, column: 12, scope: !1760, inlinedAt: !1737)
!1762 = !DILocation(line: 334, column: 5, scope: !1760, inlinedAt: !1737)
!1763 = !DILocation(line: 363, column: 13, scope: !1649, inlinedAt: !1666)
!1764 = !DILocation(line: 363, column: 11, scope: !1650, inlinedAt: !1666)
!1765 = !DILocation(line: 364, column: 10, scope: !1647, inlinedAt: !1666)
!1766 = !DILocation(line: 364, column: 18, scope: !1647, inlinedAt: !1666)
!1767 = !DILocation(line: 365, column: 14, scope: !1768, inlinedAt: !1666)
!1768 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 364, column: 33)
!1769 = !DILocation(line: 365, column: 7, scope: !1768, inlinedAt: !1666)
!1770 = !DILocation(line: 367, column: 15, scope: !1646, inlinedAt: !1666)
!1771 = !DILocation(line: 367, column: 13, scope: !1647, inlinedAt: !1666)
!1772 = !DILocation(line: 373, column: 34, scope: !1645, inlinedAt: !1666)
!1773 = !DILocation(line: 373, column: 36, scope: !1645, inlinedAt: !1666)
!1774 = !DILocation(line: 373, column: 26, scope: !1645, inlinedAt: !1666)
!1775 = !DILocation(line: 373, column: 40, scope: !1645, inlinedAt: !1666)
!1776 = !DILocation(line: 374, column: 21, scope: !1645, inlinedAt: !1666)
!1777 = !DILocation(line: 375, column: 7, scope: !1645, inlinedAt: !1666)
!1778 = !DILocation(line: 376, column: 20, scope: !1645, inlinedAt: !1666)
!1779 = !DILocation(line: 377, column: 32, scope: !1645, inlinedAt: !1666)
!1780 = !DILocation(line: 377, column: 45, scope: !1645, inlinedAt: !1666)
!1781 = !DILocation(line: 377, column: 38, scope: !1645, inlinedAt: !1666)
!1782 = !DILocation(line: 377, column: 36, scope: !1645, inlinedAt: !1666)
!1783 = !DILocation(line: 378, column: 16, scope: !1645, inlinedAt: !1666)
!1784 = !DILocation(line: 378, column: 7, scope: !1645, inlinedAt: !1666)
!1785 = !DILocation(line: 380, column: 12, scope: !1786, inlinedAt: !1666)
!1786 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 378, column: 25)
!1787 = !DILocation(line: 381, column: 25, scope: !1786, inlinedAt: !1666)
!1788 = !DILocation(line: 381, column: 29, scope: !1786, inlinedAt: !1666)
!1789 = !DILocation(line: 381, column: 22, scope: !1786, inlinedAt: !1666)
!1790 = distinct !DIAssignID()
!1791 = distinct !{!1791, !1784, !1792, !497}
!1792 = !DILocation(line: 382, column: 7, scope: !1645, inlinedAt: !1666)
!1793 = !DILocation(line: 384, column: 32, scope: !1645, inlinedAt: !1666)
!1794 = !DILocation(line: 381, scope: !1786, inlinedAt: !1666)
!1795 = !DILocation(line: 383, column: 20, scope: !1645, inlinedAt: !1666)
!1796 = !DILocation(line: 384, column: 30, scope: !1645, inlinedAt: !1666)
!1797 = !DILocation(line: 384, column: 15, scope: !1645, inlinedAt: !1666)
!1798 = !DILocation(line: 385, column: 47, scope: !1645, inlinedAt: !1666)
!1799 = !DILocation(line: 385, column: 56, scope: !1645, inlinedAt: !1666)
!1800 = !DILocation(line: 385, column: 44, scope: !1645, inlinedAt: !1666)
!1801 = !DILocation(line: 385, column: 62, scope: !1645, inlinedAt: !1666)
!1802 = !DILocation(line: 385, column: 19, scope: !1645, inlinedAt: !1666)
!1803 = !DILocation(line: 387, column: 5, scope: !1646, inlinedAt: !1666)
!1804 = !DILocation(line: 387, column: 26, scope: !1805, inlinedAt: !1666)
!1805 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 387, column: 16)
!1806 = !DILocation(line: 387, column: 24, scope: !1805, inlinedAt: !1666)
!1807 = !DILocation(line: 387, column: 34, scope: !1805, inlinedAt: !1666)
!1808 = !DILocation(line: 387, column: 47, scope: !1805, inlinedAt: !1666)
!1809 = !DILocation(line: 387, column: 69, scope: !1805, inlinedAt: !1666)
!1810 = !DILocation(line: 387, column: 63, scope: !1805, inlinedAt: !1666)
!1811 = !DILocation(line: 387, column: 61, scope: !1805, inlinedAt: !1666)
!1812 = !DILocation(line: 387, column: 45, scope: !1805, inlinedAt: !1666)
!1813 = !DILocation(line: 387, column: 16, scope: !1646, inlinedAt: !1666)
!1814 = !DILocation(line: 388, column: 14, scope: !1815, inlinedAt: !1666)
!1815 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 387, column: 74)
!1816 = !DILocation(line: 388, column: 7, scope: !1815, inlinedAt: !1666)
!1817 = !DILocation(line: 389, column: 24, scope: !1818, inlinedAt: !1666)
!1818 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 389, column: 16)
!1819 = !DILocation(line: 389, column: 16, scope: !1805, inlinedAt: !1666)
!1820 = !DILocation(line: 390, column: 14, scope: !1821, inlinedAt: !1666)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 389, column: 35)
!1822 = !DILocation(line: 390, column: 7, scope: !1821, inlinedAt: !1666)
!1823 = !DILocation(line: 392, column: 14, scope: !1824, inlinedAt: !1666)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 391, column: 12)
!1825 = !DILocation(line: 392, column: 7, scope: !1824, inlinedAt: !1666)
!1826 = !DILocation(line: 398, column: 11, scope: !1827, inlinedAt: !1666)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 398, column: 8)
!1828 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 395, column: 8)
!1829 = !DILocation(line: 398, column: 18, scope: !1827, inlinedAt: !1666)
!1830 = !DILocation(line: 399, column: 14, scope: !1831, inlinedAt: !1666)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 398, column: 31)
!1832 = !DILocation(line: 399, column: 7, scope: !1831, inlinedAt: !1666)
!1833 = !DILocation(line: 401, column: 16, scope: !1834, inlinedAt: !1666)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 401, column: 13)
!1835 = !DILocation(line: 401, column: 25, scope: !1834, inlinedAt: !1666)
!1836 = !DILocation(line: 401, column: 48, scope: !1834, inlinedAt: !1666)
!1837 = !DILocation(line: 401, column: 40, scope: !1834, inlinedAt: !1666)
!1838 = !DILocation(line: 0, scope: !161, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 401, column: 28, scope: !1834, inlinedAt: !1666)
!1840 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !1839)
!1841 = !DILocation(line: 401, column: 63, scope: !1834, inlinedAt: !1666)
!1842 = !DILocation(line: 401, column: 57, scope: !1834, inlinedAt: !1666)
!1843 = !DILocation(line: 401, column: 13, scope: !1827, inlinedAt: !1666)
!1844 = !DILocation(line: 402, column: 14, scope: !1845, inlinedAt: !1666)
!1845 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 401, column: 68)
!1846 = !DILocation(line: 402, column: 7, scope: !1845, inlinedAt: !1666)
!1847 = !DILocation(line: 405, column: 14, scope: !1848, inlinedAt: !1666)
!1848 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 404, column: 10)
!1849 = !DILocation(line: 405, column: 7, scope: !1848, inlinedAt: !1666)
!1850 = !DILocation(line: 735, column: 13, scope: !1612)
!1851 = !DILocation(line: 735, column: 11, scope: !1613)
!1852 = !DILocation(line: 736, column: 27, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 735, column: 22)
!1854 = !DILocation(line: 736, column: 30, scope: !1853)
!1855 = !DILocation(line: 736, column: 24, scope: !1853)
!1856 = !DILocation(line: 736, column: 18, scope: !1853)
!1857 = !DILocation(line: 737, column: 45, scope: !1853)
!1858 = !DILocation(line: 737, column: 43, scope: !1853)
!1859 = !DILocation(line: 737, column: 36, scope: !1853)
!1860 = !DILocation(line: 737, column: 13, scope: !1853)
!1861 = !DILocation(line: 738, column: 44, scope: !1853)
!1862 = !DILocation(line: 738, column: 42, scope: !1853)
!1863 = !DILocation(line: 738, column: 17, scope: !1853)
!1864 = !DILocation(line: 739, column: 5, scope: !1853)
!1865 = !DILocation(line: 741, column: 19, scope: !1611)
!1866 = !DILocation(line: 741, column: 13, scope: !1611)
!1867 = !DILocation(line: 741, column: 11, scope: !1612)
!1868 = !DILocation(line: 742, column: 12, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 741, column: 24)
!1870 = !DILocation(line: 742, column: 5, scope: !1869)
!1871 = !DILocation(line: 744, column: 13, scope: !1610)
!1872 = !DILocation(line: 744, column: 11, scope: !1611)
!1873 = !DILocation(line: 745, column: 10, scope: !1608)
!1874 = !DILocation(line: 745, column: 18, scope: !1608)
!1875 = !DILocation(line: 745, column: 28, scope: !1608)
!1876 = !DILocation(line: 745, column: 42, scope: !1608)
!1877 = !DILocation(line: 745, column: 37, scope: !1608)
!1878 = !DILocation(line: 745, column: 8, scope: !1609)
!1879 = !DILocation(line: 746, column: 14, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 745, column: 46)
!1881 = !DILocation(line: 746, column: 7, scope: !1880)
!1882 = !DILocation(line: 748, column: 15, scope: !1607)
!1883 = !DILocation(line: 748, column: 13, scope: !1608)
!1884 = !DILocation(line: 752, column: 36, scope: !1606)
!1885 = !DILocation(line: 752, column: 38, scope: !1606)
!1886 = !DILocation(line: 752, column: 28, scope: !1606)
!1887 = !DILocation(line: 752, column: 42, scope: !1606)
!1888 = !DILocation(line: 753, column: 21, scope: !1606)
!1889 = !DILocation(line: 754, column: 7, scope: !1606)
!1890 = !DILocation(line: 755, column: 7, scope: !1606)
!1891 = !DILocation(line: 759, column: 52, scope: !1606)
!1892 = !DILocation(line: 759, column: 20, scope: !1606)
!1893 = !DILocation(line: 760, column: 20, scope: !1606)
!1894 = !DILocation(line: 761, column: 42, scope: !1606)
!1895 = !DILocation(line: 761, column: 53, scope: !1606)
!1896 = !DILocation(line: 761, column: 45, scope: !1606)
!1897 = !DILocation(line: 761, column: 30, scope: !1606)
!1898 = !DILocation(line: 761, column: 70, scope: !1606)
!1899 = !DILocation(line: 761, column: 79, scope: !1606)
!1900 = !DILocation(line: 761, column: 73, scope: !1606)
!1901 = !DILocation(line: 761, column: 60, scope: !1606)
!1902 = !DILocation(line: 761, column: 58, scope: !1606)
!1903 = !DILocation(line: 764, column: 16, scope: !1606)
!1904 = !DILocation(line: 764, column: 7, scope: !1606)
!1905 = !DILocation(line: 766, column: 19, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 764, column: 25)
!1907 = !DILocation(line: 766, column: 22, scope: !1906)
!1908 = !DILocation(line: 766, column: 27, scope: !1906)
!1909 = !DILocation(line: 766, column: 38, scope: !1906)
!1910 = !DILocation(line: 766, column: 34, scope: !1906)
!1911 = !DILocation(line: 766, column: 41, scope: !1906)
!1912 = !DILocation(line: 766, column: 44, scope: !1906)
!1913 = !DILocation(line: 766, column: 31, scope: !1906)
!1914 = !DILocation(line: 766, column: 54, scope: !1906)
!1915 = !DILocation(line: 766, column: 50, scope: !1906)
!1916 = distinct !{!1916, !1904, !1917, !497}
!1917 = !DILocation(line: 770, column: 7, scope: !1606)
!1918 = !DILocation(line: 771, column: 20, scope: !1606)
!1919 = !DILocation(line: 772, column: 33, scope: !1606)
!1920 = !DILocation(line: 772, column: 44, scope: !1606)
!1921 = !DILocation(line: 772, column: 30, scope: !1606)
!1922 = !DILocation(line: 772, column: 52, scope: !1606)
!1923 = !DILocation(line: 772, column: 50, scope: !1606)
!1924 = !DILocation(line: 772, column: 15, scope: !1606)
!1925 = !DILocation(line: 773, column: 44, scope: !1606)
!1926 = !DILocation(line: 773, column: 19, scope: !1606)
!1927 = !DILocation(line: 774, column: 14, scope: !1606)
!1928 = !DILocation(line: 775, column: 5, scope: !1607)
!1929 = !DILocation(line: 776, column: 24, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 776, column: 14)
!1931 = !DILocation(line: 776, column: 22, scope: !1930)
!1932 = !DILocation(line: 776, column: 32, scope: !1930)
!1933 = !DILocation(line: 776, column: 41, scope: !1930)
!1934 = !DILocation(line: 776, column: 35, scope: !1930)
!1935 = !DILocation(line: 776, column: 47, scope: !1930)
!1936 = !DILocation(line: 776, column: 69, scope: !1930)
!1937 = !DILocation(line: 776, column: 63, scope: !1930)
!1938 = !DILocation(line: 776, column: 61, scope: !1930)
!1939 = !DILocation(line: 776, column: 45, scope: !1930)
!1940 = !DILocation(line: 776, column: 14, scope: !1607)
!1941 = !DILocation(line: 777, column: 14, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 776, column: 74)
!1943 = !DILocation(line: 777, column: 7, scope: !1942)
!1944 = !DILocation(line: 779, column: 14, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 778, column: 12)
!1946 = !DILocation(line: 779, column: 7, scope: !1945)
!1947 = !DILocation(line: 785, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 785, column: 8)
!1949 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 782, column: 8)
!1950 = !DILocation(line: 785, column: 18, scope: !1948)
!1951 = !DILocation(line: 786, column: 14, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 785, column: 31)
!1953 = !DILocation(line: 786, column: 7, scope: !1952)
!1954 = !DILocation(line: 788, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 788, column: 13)
!1956 = !DILocation(line: 788, column: 25, scope: !1955)
!1957 = !DILocation(line: 788, column: 28, scope: !1955)
!1958 = !DILocation(line: 788, column: 57, scope: !1955)
!1959 = !DILocation(line: 788, column: 51, scope: !1955)
!1960 = !DILocation(line: 788, column: 13, scope: !1948)
!1961 = !DILocation(line: 789, column: 14, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 788, column: 62)
!1963 = !DILocation(line: 789, column: 7, scope: !1962)
!1964 = !DILocation(line: 792, column: 14, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 791, column: 10)
!1966 = !DILocation(line: 792, column: 7, scope: !1965)
!1967 = !DILocation(line: 0, scope: !1614)
!1968 = !DILocation(line: 795, column: 1, scope: !1592)
!1969 = distinct !DISubprogram(name: "hyperg_1F1_ab_pos", scope: !2, file: !2, line: 1424, type: !240, scopeLine: 1427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1976, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2075, !2076, !2077, !2078, !2079, !2080}
!1971 = !DILocalVariable(name: "a", arg: 1, scope: !1969, file: !2, line: 1424, type: !84)
!1972 = !DILocalVariable(name: "b", arg: 2, scope: !1969, file: !2, line: 1424, type: !84)
!1973 = !DILocalVariable(name: "x", arg: 3, scope: !1969, file: !2, line: 1425, type: !84)
!1974 = !DILocalVariable(name: "result", arg: 4, scope: !1969, file: !2, line: 1426, type: !86)
!1975 = !DILocalVariable(name: "ax", scope: !1969, file: !2, line: 1428, type: !84)
!1976 = !DILocalVariable(name: "rap", scope: !1977, file: !2, line: 1461, type: !85)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1456, column: 34)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1456, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 1450, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 1443, column: 14)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 1436, column: 14)
!1982 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1430, column: 9)
!1983 = !DILocalVariable(name: "stat_CF1", scope: !1977, file: !2, line: 1462, type: !33)
!1984 = !DILocalVariable(name: "ra", scope: !1977, file: !2, line: 1463, type: !85)
!1985 = !DILocalVariable(name: "Ma", scope: !1977, file: !2, line: 1465, type: !85)
!1986 = !DILocalVariable(name: "Map1", scope: !1977, file: !2, line: 1466, type: !85)
!1987 = !DILocalVariable(name: "Mnp1", scope: !1977, file: !2, line: 1467, type: !85)
!1988 = !DILocalVariable(name: "Mn", scope: !1977, file: !2, line: 1468, type: !85)
!1989 = !DILocalVariable(name: "Mnm1", scope: !1977, file: !2, line: 1469, type: !85)
!1990 = !DILocalVariable(name: "Mn_true", scope: !1977, file: !2, line: 1470, type: !87)
!1991 = !DILocalVariable(name: "stat_Mt", scope: !1977, file: !2, line: 1471, type: !33)
!1992 = !DILocalVariable(name: "n", scope: !1977, file: !2, line: 1472, type: !85)
!1993 = !DILocalVariable(name: "Mn_true", scope: !1994, file: !2, line: 1493, type: !87)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 1486, column: 42)
!1995 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1486, column: 11)
!1996 = !DILocalVariable(name: "stat_Mt", scope: !1994, file: !2, line: 1494, type: !33)
!1997 = !DILocalVariable(name: "rap", scope: !1994, file: !2, line: 1495, type: !85)
!1998 = !DILocalVariable(name: "stat_CF1", scope: !1994, file: !2, line: 1496, type: !33)
!1999 = !DILocalVariable(name: "ra", scope: !1994, file: !2, line: 1497, type: !85)
!2000 = !DILocalVariable(name: "Ma", scope: !1994, file: !2, line: 1498, type: !85)
!2001 = !DILocalVariable(name: "Mnm1", scope: !1994, file: !2, line: 1499, type: !85)
!2002 = !DILocalVariable(name: "Mn", scope: !1994, file: !2, line: 1500, type: !85)
!2003 = !DILocalVariable(name: "Mnp1", scope: !1994, file: !2, line: 1501, type: !85)
!2004 = !DILocalVariable(name: "n", scope: !1994, file: !2, line: 1502, type: !85)
!2005 = !DILocalVariable(name: "N", scope: !2006, file: !2, line: 1519, type: !85)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1516, column: 15)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 1516, column: 8)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 1514, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 1514, column: 11)
!2010 = !DILocalVariable(name: "eps", scope: !2006, file: !2, line: 1520, type: !85)
!2011 = !DILocalVariable(name: "r_M0", scope: !2006, file: !2, line: 1521, type: !87)
!2012 = !DILocalVariable(name: "r_M1", scope: !2006, file: !2, line: 1522, type: !87)
!2013 = !DILocalVariable(name: "stat_0", scope: !2006, file: !2, line: 1523, type: !33)
!2014 = !DILocalVariable(name: "stat_1", scope: !2006, file: !2, line: 1524, type: !33)
!2015 = !DILocalVariable(name: "M0", scope: !2006, file: !2, line: 1525, type: !85)
!2016 = !DILocalVariable(name: "M1", scope: !2006, file: !2, line: 1526, type: !85)
!2017 = !DILocalVariable(name: "Mam1", scope: !2006, file: !2, line: 1528, type: !85)
!2018 = !DILocalVariable(name: "Ma", scope: !2006, file: !2, line: 1529, type: !85)
!2019 = !DILocalVariable(name: "Map1", scope: !2006, file: !2, line: 1530, type: !85)
!2020 = !DILocalVariable(name: "ap", scope: !2006, file: !2, line: 1531, type: !85)
!2021 = !DILocalVariable(name: "start_pair", scope: !2006, file: !2, line: 1532, type: !85)
!2022 = !DILocalVariable(name: "minim_pair", scope: !2006, file: !2, line: 1533, type: !85)
!2023 = !DILocalVariable(name: "pair_ratio", scope: !2006, file: !2, line: 1534, type: !85)
!2024 = !DILocalVariable(name: "rat_0", scope: !2006, file: !2, line: 1535, type: !85)
!2025 = !DILocalVariable(name: "rat_1", scope: !2006, file: !2, line: 1536, type: !85)
!2026 = !DILocalVariable(name: "eps", scope: !2027, file: !2, line: 1557, type: !85)
!2027 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 1550, column: 10)
!2028 = !DILocalVariable(name: "r_Mnm1", scope: !2027, file: !2, line: 1558, type: !87)
!2029 = !DILocalVariable(name: "r_Mn", scope: !2027, file: !2, line: 1559, type: !87)
!2030 = !DILocalVariable(name: "stat_0", scope: !2027, file: !2, line: 1560, type: !33)
!2031 = !DILocalVariable(name: "stat_1", scope: !2027, file: !2, line: 1561, type: !33)
!2032 = !DILocalVariable(name: "Mnm1", scope: !2027, file: !2, line: 1562, type: !85)
!2033 = !DILocalVariable(name: "Mn", scope: !2027, file: !2, line: 1563, type: !85)
!2034 = !DILocalVariable(name: "Mnp1", scope: !2027, file: !2, line: 1564, type: !85)
!2035 = !DILocalVariable(name: "n", scope: !2027, file: !2, line: 1566, type: !85)
!2036 = !DILocalVariable(name: "start_pair", scope: !2027, file: !2, line: 1567, type: !85)
!2037 = !DILocalVariable(name: "minim_pair", scope: !2027, file: !2, line: 1568, type: !85)
!2038 = !DILocalVariable(name: "pair_ratio", scope: !2027, file: !2, line: 1569, type: !85)
!2039 = !DILocalVariable(name: "rat_0", scope: !2027, file: !2, line: 1570, type: !85)
!2040 = !DILocalVariable(name: "rat_1", scope: !2027, file: !2, line: 1571, type: !85)
!2041 = !DILocalVariable(name: "N", scope: !2042, file: !2, line: 1594, type: !85)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 1591, column: 35)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 1591, column: 8)
!2044 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 1586, column: 8)
!2045 = !DILocalVariable(name: "eps", scope: !2042, file: !2, line: 1595, type: !85)
!2046 = !DILocalVariable(name: "r_Manp1", scope: !2042, file: !2, line: 1596, type: !87)
!2047 = !DILocalVariable(name: "r_Man", scope: !2042, file: !2, line: 1597, type: !87)
!2048 = !DILocalVariable(name: "stat_0", scope: !2042, file: !2, line: 1598, type: !33)
!2049 = !DILocalVariable(name: "stat_1", scope: !2042, file: !2, line: 1599, type: !33)
!2050 = !DILocalVariable(name: "Manp1", scope: !2042, file: !2, line: 1600, type: !85)
!2051 = !DILocalVariable(name: "Man", scope: !2042, file: !2, line: 1601, type: !85)
!2052 = !DILocalVariable(name: "Manm1", scope: !2042, file: !2, line: 1602, type: !85)
!2053 = !DILocalVariable(name: "n", scope: !2042, file: !2, line: 1604, type: !85)
!2054 = !DILocalVariable(name: "start_pair", scope: !2042, file: !2, line: 1605, type: !85)
!2055 = !DILocalVariable(name: "minim_pair", scope: !2042, file: !2, line: 1606, type: !85)
!2056 = !DILocalVariable(name: "pair_ratio", scope: !2042, file: !2, line: 1607, type: !85)
!2057 = !DILocalVariable(name: "rat_0", scope: !2042, file: !2, line: 1608, type: !85)
!2058 = !DILocalVariable(name: "rat_1", scope: !2042, file: !2, line: 1609, type: !85)
!2059 = !DILocalVariable(name: "epsa", scope: !2060, file: !2, line: 1636, type: !85)
!2060 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 1630, column: 10)
!2061 = !DILocalVariable(name: "a0", scope: !2060, file: !2, line: 1637, type: !85)
!2062 = !DILocalVariable(name: "N", scope: !2060, file: !2, line: 1638, type: !85)
!2063 = !DILocalVariable(name: "epsb", scope: !2060, file: !2, line: 1639, type: !85)
!2064 = !DILocalVariable(name: "Ma0b", scope: !2060, file: !2, line: 1640, type: !85)
!2065 = !DILocalVariable(name: "Ma0bp1", scope: !2060, file: !2, line: 1641, type: !85)
!2066 = !DILocalVariable(name: "Ma0p1b", scope: !2060, file: !2, line: 1642, type: !85)
!2067 = !DILocalVariable(name: "stat_a0", scope: !2060, file: !2, line: 1643, type: !33)
!2068 = !DILocalVariable(name: "Mnm1", scope: !2060, file: !2, line: 1644, type: !85)
!2069 = !DILocalVariable(name: "Mn", scope: !2060, file: !2, line: 1645, type: !85)
!2070 = !DILocalVariable(name: "Mnp1", scope: !2060, file: !2, line: 1646, type: !85)
!2071 = !DILocalVariable(name: "n", scope: !2060, file: !2, line: 1647, type: !85)
!2072 = !DILocalVariable(name: "err_rat", scope: !2060, file: !2, line: 1648, type: !85)
!2073 = !DILocalVariable(name: "r_Ma0np1", scope: !2074, file: !2, line: 1650, type: !87)
!2074 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 1649, column: 7)
!2075 = !DILocalVariable(name: "r_Ma0n", scope: !2074, file: !2, line: 1651, type: !87)
!2076 = !DILocalVariable(name: "stat_0", scope: !2074, file: !2, line: 1652, type: !33)
!2077 = !DILocalVariable(name: "stat_1", scope: !2074, file: !2, line: 1653, type: !33)
!2078 = !DILocalVariable(name: "Ma0np1", scope: !2074, file: !2, line: 1654, type: !85)
!2079 = !DILocalVariable(name: "Ma0n", scope: !2074, file: !2, line: 1655, type: !85)
!2080 = !DILocalVariable(name: "Ma0nm1", scope: !2074, file: !2, line: 1656, type: !85)
!2081 = distinct !DIAssignID()
!2082 = !DILocation(line: 0, scope: !1977)
!2083 = distinct !DIAssignID()
!2084 = distinct !DIAssignID()
!2085 = !DILocation(line: 0, scope: !1994)
!2086 = distinct !DIAssignID()
!2087 = distinct !DIAssignID()
!2088 = !DILocation(line: 0, scope: !2006)
!2089 = distinct !DIAssignID()
!2090 = distinct !DIAssignID()
!2091 = !DILocation(line: 0, scope: !2027)
!2092 = distinct !DIAssignID()
!2093 = distinct !DIAssignID()
!2094 = !DILocation(line: 0, scope: !2042)
!2095 = distinct !DIAssignID()
!2096 = distinct !DIAssignID()
!2097 = !DILocation(line: 0, scope: !2074)
!2098 = distinct !DIAssignID()
!2099 = !DILocation(line: 0, scope: !1969)
!2100 = !DILocation(line: 1428, column: 21, scope: !1969)
!2101 = !DILocation(line: 1430, column: 13, scope: !1982)
!2102 = !DILocation(line: 1430, column: 20, scope: !1982)
!2103 = !DILocation(line: 1432, column: 13, scope: !1982)
!2104 = !DILocation(line: 1432, column: 17, scope: !1982)
!2105 = !DILocation(line: 1434, column: 12, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 1433, column: 7)
!2107 = !DILocation(line: 1434, column: 5, scope: !2106)
!2108 = !DILocation(line: 1436, column: 16, scope: !1981)
!2109 = !DILocation(line: 1437, column: 11, scope: !1981)
!2110 = !DILocation(line: 1437, column: 26, scope: !1981)
!2111 = !DILocation(line: 0, scope: !161, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1437, column: 14, scope: !1981)
!2113 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2112)
!2114 = !DILocation(line: 1437, column: 59, scope: !1981)
!2115 = !DILocation(line: 1437, column: 61, scope: !1981)
!2116 = !DILocation(line: 1437, column: 51, scope: !1981)
!2117 = !DILocation(line: 0, scope: !161, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 1437, column: 39, scope: !1981)
!2119 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2118)
!2120 = !DILocation(line: 1437, column: 38, scope: !1981)
!2121 = !DILocation(line: 1437, column: 75, scope: !1981)
!2122 = !DILocation(line: 1437, column: 70, scope: !1981)
!2123 = !DILocation(line: 1436, column: 14, scope: !1982)
!2124 = !DILocation(line: 1441, column: 12, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 1438, column: 7)
!2126 = !DILocation(line: 1441, column: 5, scope: !2125)
!2127 = !DILocation(line: 1443, column: 16, scope: !1980)
!2128 = !DILocation(line: 0, scope: !1980)
!2129 = !DILocation(line: 1444, column: 11, scope: !1980)
!2130 = !DILocation(line: 0, scope: !161, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1444, column: 14, scope: !1980)
!2132 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2131)
!2133 = !DILocation(line: 1444, column: 61, scope: !1980)
!2134 = !DILocation(line: 1444, column: 53, scope: !1980)
!2135 = !DILocation(line: 0, scope: !161, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1444, column: 41, scope: !1980)
!2137 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2136)
!2138 = !DILocation(line: 1444, column: 40, scope: !1980)
!2139 = !DILocation(line: 1444, column: 75, scope: !1980)
!2140 = !DILocation(line: 1444, column: 70, scope: !1980)
!2141 = !DILocation(line: 1443, column: 14, scope: !1981)
!2142 = !DILocation(line: 1448, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 1445, column: 7)
!2144 = !DILocation(line: 1448, column: 5, scope: !2143)
!2145 = !DILocation(line: 1450, column: 21, scope: !1979)
!2146 = !DILocation(line: 1450, column: 11, scope: !1980)
!2147 = !DILocation(line: 1453, column: 34, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 1450, column: 29)
!2149 = !DILocation(line: 1453, column: 12, scope: !2148)
!2150 = !DILocation(line: 1453, column: 5, scope: !2148)
!2151 = !DILocation(line: 1456, column: 17, scope: !1978)
!2152 = !DILocation(line: 1456, column: 26, scope: !1978)
!2153 = !DILocation(line: 1456, column: 29, scope: !1978)
!2154 = !DILocation(line: 1456, column: 22, scope: !1978)
!2155 = !DILocation(line: 1456, column: 11, scope: !1979)
!2156 = !DILocation(line: 1461, column: 5, scope: !1977)
!2157 = !DILocation(line: 1462, column: 20, scope: !1977)
!2158 = !DILocation(line: 1463, column: 29, scope: !1977)
!2159 = !DILocation(line: 1470, column: 5, scope: !1977)
!2160 = !DILocation(line: 1473, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 1473, column: 5)
!2162 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 1473, column: 5)
!2163 = !DILocation(line: 1473, column: 5, scope: !2162)
!2164 = !DILocation(line: 1463, column: 24, scope: !1977)
!2165 = !DILocation(line: 1463, column: 27, scope: !1977)
!2166 = !DILocation(line: 1463, column: 21, scope: !1977)
!2167 = !DILocation(line: 1466, column: 22, scope: !1977)
!2168 = !DILocation(line: 1474, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 1473, column: 31)
!2170 = !DILocation(line: 1474, column: 30, scope: !2169)
!2171 = !DILocation(line: 1474, column: 32, scope: !2169)
!2172 = !DILocation(line: 1474, column: 34, scope: !2169)
!2173 = !DILocation(line: 1474, column: 38, scope: !2169)
!2174 = !DILocation(line: 1474, column: 24, scope: !2169)
!2175 = !DILocation(line: 1474, column: 48, scope: !2169)
!2176 = !DILocation(line: 1474, column: 44, scope: !2169)
!2177 = !DILocation(line: 1473, column: 23, scope: !2161)
!2178 = distinct !{!2178, !2163, !2179, !497}
!2179 = !DILocation(line: 1477, column: 5, scope: !2162)
!2180 = !DILocation(line: 1473, scope: !2162)
!2181 = !DILocation(line: 1479, column: 15, scope: !1977)
!2182 = !DILocation(line: 1481, column: 23, scope: !1977)
!2183 = !DILocation(line: 1481, column: 38, scope: !1977)
!2184 = !DILocation(line: 1481, column: 28, scope: !1977)
!2185 = !DILocation(line: 1481, column: 18, scope: !1977)
!2186 = !DILocation(line: 1482, column: 20, scope: !1977)
!2187 = !DILocation(line: 1482, column: 42, scope: !1977)
!2188 = !DILocation(line: 1482, column: 32, scope: !1977)
!2189 = !DILocation(line: 1482, column: 13, scope: !1977)
!2190 = !DILocation(line: 1483, column: 45, scope: !1977)
!2191 = !DILocation(line: 1483, column: 52, scope: !1977)
!2192 = !DILocation(line: 1483, column: 42, scope: !1977)
!2193 = !DILocation(line: 1483, column: 60, scope: !1977)
!2194 = !DILocation(line: 1483, column: 58, scope: !1977)
!2195 = !DILocation(line: 1483, column: 17, scope: !1977)
!2196 = !DILocation(line: 1484, column: 12, scope: !1977)
!2197 = !DILocation(line: 1485, column: 3, scope: !1978)
!2198 = !DILocation(line: 1486, column: 22, scope: !1995)
!2199 = !DILocation(line: 1486, column: 32, scope: !1995)
!2200 = !DILocation(line: 1493, column: 5, scope: !1994)
!2201 = !DILocation(line: 1495, column: 5, scope: !1994)
!2202 = !DILocation(line: 1496, column: 20, scope: !1994)
!2203 = !DILocation(line: 1497, column: 24, scope: !1994)
!2204 = !DILocation(line: 1497, column: 29, scope: !1994)
!2205 = !DILocation(line: 1497, column: 27, scope: !1994)
!2206 = !DILocation(line: 1497, column: 21, scope: !1994)
!2207 = !DILocation(line: 1500, column: 22, scope: !1994)
!2208 = !DILocation(line: 1503, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 1503, column: 5)
!2210 = !DILocation(line: 1503, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 1503, column: 5)
!2212 = !DILocation(line: 1503, column: 5, scope: !2209)
!2213 = !DILocation(line: 1504, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 1503, column: 37)
!2215 = !DILocation(line: 1504, column: 20, scope: !2214)
!2216 = !DILocation(line: 1504, column: 30, scope: !2214)
!2217 = !DILocation(line: 1504, column: 32, scope: !2214)
!2218 = !DILocation(line: 1504, column: 34, scope: !2214)
!2219 = !DILocation(line: 1504, column: 37, scope: !2214)
!2220 = !DILocation(line: 1504, column: 26, scope: !2214)
!2221 = !DILocation(line: 1504, column: 41, scope: !2214)
!2222 = distinct !{!2222, !2212, !2223, !497}
!2223 = !DILocation(line: 1507, column: 5, scope: !2209)
!2224 = !DILocation(line: 1508, column: 37, scope: !1994)
!2225 = !DILocation(line: 1508, column: 15, scope: !1994)
!2226 = !DILocation(line: 1509, column: 22, scope: !1994)
!2227 = !DILocation(line: 1509, column: 36, scope: !1994)
!2228 = !DILocation(line: 1509, column: 26, scope: !1994)
!2229 = !DILocation(line: 1509, column: 18, scope: !1994)
!2230 = !DILocation(line: 1510, column: 20, scope: !1994)
!2231 = !DILocation(line: 1510, column: 42, scope: !1994)
!2232 = !DILocation(line: 1510, column: 32, scope: !1994)
!2233 = !DILocation(line: 1510, column: 13, scope: !1994)
!2234 = !DILocation(line: 1511, column: 54, scope: !1994)
!2235 = !DILocation(line: 1511, column: 42, scope: !1994)
!2236 = !DILocation(line: 1511, column: 62, scope: !1994)
!2237 = !DILocation(line: 1511, column: 60, scope: !1994)
!2238 = !DILocation(line: 1511, column: 17, scope: !1994)
!2239 = !DILocation(line: 1512, column: 12, scope: !1994)
!2240 = !DILocation(line: 1513, column: 3, scope: !1995)
!2241 = !DILocation(line: 1514, column: 13, scope: !2009)
!2242 = !DILocation(line: 1514, column: 11, scope: !1995)
!2243 = !DILocation(line: 1516, column: 10, scope: !2007)
!2244 = !DILocation(line: 1516, column: 8, scope: !2008)
!2245 = !DILocation(line: 1519, column: 27, scope: !2006)
!2246 = !DILocation(line: 1519, column: 20, scope: !2006)
!2247 = !DILocation(line: 1520, column: 26, scope: !2006)
!2248 = !DILocation(line: 1521, column: 7, scope: !2006)
!2249 = !DILocation(line: 1522, column: 7, scope: !2006)
!2250 = !DILocation(line: 1523, column: 44, scope: !2006)
!2251 = !DILocation(line: 1523, column: 20, scope: !2006)
!2252 = !DILocation(line: 1524, column: 20, scope: !2006)
!2253 = !DILocation(line: 1525, column: 24, scope: !2006)
!2254 = !DILocation(line: 1526, column: 24, scope: !2006)
!2255 = !DILocation(line: 1532, column: 27, scope: !2006)
!2256 = !DILocation(line: 1532, column: 38, scope: !2006)
!2257 = !DILocation(line: 1532, column: 36, scope: !2006)
!2258 = !DILocation(line: 1535, column: 32, scope: !2006)
!2259 = !DILocation(line: 1535, column: 35, scope: !2006)
!2260 = !DILocation(line: 1535, column: 22, scope: !2006)
!2261 = !DILocation(line: 1536, column: 32, scope: !2006)
!2262 = !DILocation(line: 1536, column: 35, scope: !2006)
!2263 = !DILocation(line: 1536, column: 22, scope: !2006)
!2264 = !DILocation(line: 1537, column: 15, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 1537, column: 7)
!2266 = !DILocation(line: 1537, column: 23, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1537, column: 7)
!2268 = !DILocation(line: 1537, column: 7, scope: !2265)
!2269 = !DILocation(line: 1538, column: 19, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 1537, column: 42)
!2271 = !DILocation(line: 1538, column: 23, scope: !2270)
!2272 = !DILocation(line: 1538, column: 35, scope: !2270)
!2273 = !DILocation(line: 1538, column: 38, scope: !2270)
!2274 = !DILocation(line: 1538, column: 40, scope: !2270)
!2275 = !DILocation(line: 1538, column: 43, scope: !2270)
!2276 = !DILocation(line: 1538, column: 29, scope: !2270)
!2277 = !DILocation(line: 1538, column: 47, scope: !2270)
!2278 = !DILocation(line: 1541, column: 34, scope: !2270)
!2279 = !DILocation(line: 1541, column: 47, scope: !2270)
!2280 = !DILocation(line: 1541, column: 45, scope: !2270)
!2281 = !DILocalVariable(name: "a", arg: 1, scope: !2282, file: !162, line: 75, type: !85)
!2282 = distinct !DISubprogram(name: "GSL_MIN_DBL", scope: !162, file: !162, line: 75, type: !163, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2283)
!2283 = !{!2281, !2284}
!2284 = !DILocalVariable(name: "b", arg: 2, scope: !2282, file: !162, line: 75, type: !85)
!2285 = !DILocation(line: 0, scope: !2282, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1541, column: 22, scope: !2270)
!2287 = !DILocation(line: 77, column: 10, scope: !2282, inlinedAt: !2286)
!2288 = !DILocation(line: 1537, column: 34, scope: !2267)
!2289 = distinct !{!2289, !2268, !2290, !497}
!2290 = !DILocation(line: 1542, column: 7, scope: !2265)
!2291 = !DILocation(line: 1545, column: 82, scope: !2006)
!2292 = !DILocation(line: 1543, column: 30, scope: !2006)
!2293 = !DILocation(line: 1544, column: 20, scope: !2006)
!2294 = !DILocation(line: 1545, column: 35, scope: !2006)
!2295 = !DILocation(line: 1545, column: 43, scope: !2006)
!2296 = !DILocation(line: 1545, column: 26, scope: !2006)
!2297 = !DILocation(line: 1545, column: 74, scope: !2006)
!2298 = !DILocation(line: 1545, column: 62, scope: !2006)
!2299 = !DILocation(line: 1545, column: 80, scope: !2006)
!2300 = !DILocation(line: 1545, column: 15, scope: !2006)
!2301 = !DILocation(line: 1546, column: 26, scope: !2006)
!2302 = !DILocation(line: 1546, column: 44, scope: !2006)
!2303 = !DILocation(line: 1546, column: 56, scope: !2006)
!2304 = !DILocation(line: 1546, column: 68, scope: !2006)
!2305 = !DILocation(line: 1546, column: 19, scope: !2006)
!2306 = !DILocation(line: 1547, column: 44, scope: !2006)
!2307 = !DILocation(line: 1547, column: 19, scope: !2006)
!2308 = !DILocation(line: 1548, column: 14, scope: !2006)
!2309 = !DILocation(line: 1549, column: 5, scope: !2007)
!2310 = !DILocation(line: 1557, column: 24, scope: !2027)
!2311 = !DILocation(line: 1557, column: 22, scope: !2027)
!2312 = !DILocation(line: 1558, column: 7, scope: !2027)
!2313 = !DILocation(line: 1559, column: 7, scope: !2027)
!2314 = !DILocation(line: 1560, column: 20, scope: !2027)
!2315 = !DILocation(line: 1561, column: 47, scope: !2027)
!2316 = !DILocation(line: 1561, column: 20, scope: !2027)
!2317 = !DILocation(line: 1562, column: 28, scope: !2027)
!2318 = !DILocation(line: 1563, column: 26, scope: !2027)
!2319 = !DILocation(line: 1567, column: 27, scope: !2027)
!2320 = !DILocation(line: 1567, column: 38, scope: !2027)
!2321 = !DILocation(line: 1567, column: 36, scope: !2027)
!2322 = !DILocation(line: 1570, column: 34, scope: !2027)
!2323 = !DILocation(line: 1570, column: 37, scope: !2027)
!2324 = !DILocation(line: 1570, column: 22, scope: !2027)
!2325 = !DILocation(line: 1571, column: 32, scope: !2027)
!2326 = !DILocation(line: 1571, column: 35, scope: !2027)
!2327 = !DILocation(line: 1571, column: 22, scope: !2027)
!2328 = !DILocation(line: 1572, column: 23, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 1572, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 1572, column: 7)
!2331 = !DILocation(line: 1572, column: 7, scope: !2330)
!2332 = !DILocation(line: 1573, column: 19, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 1572, column: 36)
!2334 = !DILocation(line: 1573, column: 22, scope: !2333)
!2335 = !DILocation(line: 1573, column: 32, scope: !2333)
!2336 = !DILocation(line: 1573, column: 34, scope: !2333)
!2337 = !DILocation(line: 1573, column: 36, scope: !2333)
!2338 = !DILocation(line: 1573, column: 39, scope: !2333)
!2339 = !DILocation(line: 1573, column: 28, scope: !2333)
!2340 = !DILocation(line: 1573, column: 43, scope: !2333)
!2341 = !DILocation(line: 1576, column: 34, scope: !2333)
!2342 = !DILocation(line: 1576, column: 45, scope: !2333)
!2343 = !DILocation(line: 1576, column: 43, scope: !2333)
!2344 = !DILocation(line: 0, scope: !2282, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 1576, column: 22, scope: !2333)
!2346 = !DILocation(line: 77, column: 10, scope: !2282, inlinedAt: !2345)
!2347 = !DILocation(line: 1572, column: 32, scope: !2329)
!2348 = distinct !{!2348, !2331, !2349, !497}
!2349 = !DILocation(line: 1577, column: 7, scope: !2330)
!2350 = !DILocation(line: 1580, column: 80, scope: !2027)
!2351 = !DILocation(line: 1578, column: 30, scope: !2027)
!2352 = !DILocation(line: 1579, column: 20, scope: !2027)
!2353 = !DILocation(line: 1580, column: 35, scope: !2027)
!2354 = !DILocation(line: 1580, column: 43, scope: !2027)
!2355 = !DILocation(line: 1580, column: 26, scope: !2027)
!2356 = !DILocation(line: 1580, column: 65, scope: !2027)
!2357 = !DILocation(line: 1580, column: 72, scope: !2027)
!2358 = !DILocation(line: 1580, column: 62, scope: !2027)
!2359 = !DILocation(line: 1580, column: 78, scope: !2027)
!2360 = !DILocation(line: 1580, column: 15, scope: !2027)
!2361 = !DILocation(line: 1581, column: 26, scope: !2027)
!2362 = !DILocation(line: 1581, column: 44, scope: !2027)
!2363 = !DILocation(line: 1581, column: 56, scope: !2027)
!2364 = !DILocation(line: 1581, column: 68, scope: !2027)
!2365 = !DILocation(line: 1581, column: 19, scope: !2027)
!2366 = !DILocation(line: 1582, column: 44, scope: !2027)
!2367 = !DILocation(line: 1582, column: 19, scope: !2027)
!2368 = !DILocation(line: 1583, column: 14, scope: !2027)
!2369 = !DILocation(line: 1584, column: 5, scope: !2007)
!2370 = !DILocation(line: 1591, column: 19, scope: !2043)
!2371 = !DILocation(line: 1591, column: 16, scope: !2043)
!2372 = !DILocation(line: 1591, column: 10, scope: !2043)
!2373 = !DILocation(line: 1591, column: 23, scope: !2043)
!2374 = !DILocation(line: 1594, column: 28, scope: !2042)
!2375 = !DILocation(line: 1594, column: 20, scope: !2042)
!2376 = !DILocation(line: 1595, column: 24, scope: !2042)
!2377 = !DILocation(line: 1595, column: 28, scope: !2042)
!2378 = !DILocation(line: 1595, column: 32, scope: !2042)
!2379 = !DILocation(line: 1596, column: 7, scope: !2042)
!2380 = !DILocation(line: 1597, column: 7, scope: !2042)
!2381 = !DILocation(line: 1598, column: 41, scope: !2042)
!2382 = !DILocation(line: 1598, column: 51, scope: !2042)
!2383 = !DILocation(line: 1598, column: 20, scope: !2042)
!2384 = !DILocation(line: 1599, column: 44, scope: !2042)
!2385 = !DILocation(line: 1599, column: 55, scope: !2042)
!2386 = !DILocation(line: 1599, column: 20, scope: !2042)
!2387 = !DILocation(line: 1600, column: 30, scope: !2042)
!2388 = !DILocation(line: 1601, column: 28, scope: !2042)
!2389 = !DILocation(line: 1605, column: 27, scope: !2042)
!2390 = !DILocation(line: 1605, column: 41, scope: !2042)
!2391 = !DILocation(line: 1605, column: 39, scope: !2042)
!2392 = !DILocation(line: 1608, column: 35, scope: !2042)
!2393 = !DILocation(line: 1608, column: 38, scope: !2042)
!2394 = !DILocation(line: 1608, column: 22, scope: !2042)
!2395 = !DILocation(line: 1609, column: 33, scope: !2042)
!2396 = !DILocation(line: 1609, column: 36, scope: !2042)
!2397 = !DILocation(line: 1609, column: 22, scope: !2042)
!2398 = !DILocation(line: 1610, column: 25, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1610, column: 7)
!2400 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 1610, column: 7)
!2401 = !DILocation(line: 1610, column: 7, scope: !2400)
!2402 = !DILocation(line: 1611, column: 18, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1610, column: 43)
!2404 = !DILocation(line: 1611, column: 23, scope: !2403)
!2405 = !DILocation(line: 1611, column: 25, scope: !2403)
!2406 = !DILocation(line: 1611, column: 20, scope: !2403)
!2407 = !DILocation(line: 1611, column: 28, scope: !2403)
!2408 = !DILocation(line: 1611, column: 39, scope: !2403)
!2409 = !DILocation(line: 1611, column: 36, scope: !2403)
!2410 = !DILocation(line: 1611, column: 42, scope: !2403)
!2411 = !DILocation(line: 1611, column: 33, scope: !2403)
!2412 = !DILocation(line: 1611, column: 55, scope: !2403)
!2413 = !DILocation(line: 1611, column: 52, scope: !2403)
!2414 = !DILocation(line: 1611, column: 49, scope: !2403)
!2415 = !DILocation(line: 1614, column: 34, scope: !2403)
!2416 = !DILocation(line: 1614, column: 48, scope: !2403)
!2417 = !DILocation(line: 1614, column: 46, scope: !2403)
!2418 = !DILocation(line: 0, scope: !2282, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1614, column: 22, scope: !2403)
!2420 = !DILocation(line: 77, column: 10, scope: !2282, inlinedAt: !2419)
!2421 = distinct !{!2421, !2401, !2422, !497}
!2422 = !DILocation(line: 1615, column: 7, scope: !2400)
!2423 = !DILocation(line: 1626, column: 82, scope: !2042)
!2424 = !DILocation(line: 1624, column: 30, scope: !2042)
!2425 = !DILocation(line: 1625, column: 20, scope: !2042)
!2426 = !DILocation(line: 1626, column: 35, scope: !2042)
!2427 = !DILocation(line: 1626, column: 43, scope: !2042)
!2428 = !DILocation(line: 1626, column: 26, scope: !2042)
!2429 = !DILocation(line: 1626, column: 74, scope: !2042)
!2430 = !DILocation(line: 1626, column: 62, scope: !2042)
!2431 = !DILocation(line: 1626, column: 80, scope: !2042)
!2432 = !DILocation(line: 1626, column: 15, scope: !2042)
!2433 = !DILocation(line: 1627, column: 32, scope: !2042)
!2434 = !DILocation(line: 1627, column: 44, scope: !2042)
!2435 = !DILocation(line: 1627, column: 19, scope: !2042)
!2436 = !DILocation(line: 1628, column: 14, scope: !2042)
!2437 = !DILocation(line: 1629, column: 5, scope: !2043)
!2438 = !DILocation(line: 1636, column: 25, scope: !2060)
!2439 = !DILocation(line: 1636, column: 23, scope: !2060)
!2440 = !DILocation(line: 0, scope: !2060)
!2441 = !DILocation(line: 1637, column: 21, scope: !2060)
!2442 = !DILocation(line: 1637, column: 38, scope: !2060)
!2443 = !DILocation(line: 1638, column: 30, scope: !2060)
!2444 = !DILocation(line: 1638, column: 21, scope: !2060)
!2445 = !DILocation(line: 1639, column: 25, scope: !2060)
!2446 = !DILocation(line: 1639, column: 29, scope: !2060)
!2447 = !DILocation(line: 1639, column: 34, scope: !2060)
!2448 = !DILocation(line: 1650, column: 9, scope: !2074)
!2449 = !DILocation(line: 1651, column: 9, scope: !2074)
!2450 = !DILocation(line: 1652, column: 43, scope: !2074)
!2451 = !DILocation(line: 1652, column: 55, scope: !2074)
!2452 = !DILocation(line: 1652, column: 22, scope: !2074)
!2453 = !DILocation(line: 1653, column: 46, scope: !2074)
!2454 = !DILocation(line: 1653, column: 60, scope: !2074)
!2455 = !DILocation(line: 1653, column: 22, scope: !2074)
!2456 = !DILocation(line: 1654, column: 34, scope: !2074)
!2457 = !DILocation(line: 1655, column: 32, scope: !2074)
!2458 = !DILocation(line: 1658, column: 33, scope: !2074)
!2459 = !DILocation(line: 1658, column: 36, scope: !2074)
!2460 = !DILocation(line: 1658, column: 19, scope: !2074)
!2461 = !DILocation(line: 1658, column: 65, scope: !2074)
!2462 = !DILocation(line: 1658, column: 68, scope: !2074)
!2463 = !DILocation(line: 1658, column: 53, scope: !2074)
!2464 = !DILocation(line: 1658, column: 51, scope: !2074)
!2465 = !DILocation(line: 1660, column: 29, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 1660, column: 9)
!2467 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 1660, column: 9)
!2468 = !DILocation(line: 1660, column: 9, scope: !2467)
!2469 = !DILocation(line: 1661, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 1660, column: 47)
!2471 = !DILocation(line: 1661, column: 26, scope: !2470)
!2472 = !DILocation(line: 1661, column: 28, scope: !2470)
!2473 = !DILocation(line: 1661, column: 23, scope: !2470)
!2474 = !DILocation(line: 1661, column: 31, scope: !2470)
!2475 = !DILocation(line: 1661, column: 43, scope: !2470)
!2476 = !DILocation(line: 1661, column: 40, scope: !2470)
!2477 = !DILocation(line: 1661, column: 47, scope: !2470)
!2478 = !DILocation(line: 1661, column: 37, scope: !2470)
!2479 = !DILocation(line: 1661, column: 61, scope: !2470)
!2480 = !DILocation(line: 1661, column: 58, scope: !2470)
!2481 = !DILocation(line: 1661, column: 55, scope: !2470)
!2482 = distinct !{!2482, !2468, !2483, !497}
!2483 = !DILocation(line: 1664, column: 9, scope: !2467)
!2484 = !DILocation(line: 1668, column: 19, scope: !2074)
!2485 = !DILocation(line: 1669, column: 7, scope: !2060)
!2486 = !DILocation(line: 1674, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 1674, column: 11)
!2488 = !DILocation(line: 1674, column: 14, scope: !2487)
!2489 = !DILocation(line: 1674, column: 11, scope: !2060)
!2490 = !DILocation(line: 1667, column: 24, scope: !2074)
!2491 = !DILocation(line: 1667, column: 20, scope: !2074)
!2492 = !DILocation(line: 1667, column: 27, scope: !2074)
!2493 = !DILocation(line: 1667, column: 34, scope: !2074)
!2494 = !DILocation(line: 1667, column: 41, scope: !2074)
!2495 = !DILocation(line: 1667, column: 32, scope: !2074)
!2496 = !DILocation(line: 1667, column: 53, scope: !2074)
!2497 = !DILocation(line: 1667, column: 49, scope: !2074)
!2498 = !DILocation(line: 1678, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 1678, column: 16)
!2500 = !DILocation(line: 1678, column: 16, scope: !2487)
!2501 = !DILocation(line: 1688, column: 23, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 1687, column: 44)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !2, line: 1687, column: 11)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 1687, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 1683, column: 9)
!2506 = !DILocation(line: 1688, column: 26, scope: !2502)
!2507 = !DILocation(line: 1688, column: 36, scope: !2502)
!2508 = !DILocation(line: 1688, column: 38, scope: !2502)
!2509 = !DILocation(line: 1688, column: 40, scope: !2502)
!2510 = !DILocation(line: 1688, column: 43, scope: !2502)
!2511 = !DILocation(line: 1688, column: 32, scope: !2502)
!2512 = !DILocation(line: 1688, column: 47, scope: !2502)
!2513 = !DILocation(line: 1687, column: 36, scope: !2503)
!2514 = !DILocation(line: 1687, column: 26, scope: !2503)
!2515 = !DILocation(line: 1687, column: 11, scope: !2504)
!2516 = distinct !{!2516, !2515, !2517, !497}
!2517 = !DILocation(line: 1691, column: 11, scope: !2504)
!2518 = !DILocation(line: 0, scope: !2487)
!2519 = !DILocation(line: 1694, column: 19, scope: !2060)
!2520 = !DILocation(line: 1695, column: 30, scope: !2060)
!2521 = !DILocation(line: 1695, column: 61, scope: !2060)
!2522 = !DILocation(line: 1695, column: 49, scope: !2060)
!2523 = !DILocation(line: 1695, column: 69, scope: !2060)
!2524 = !DILocation(line: 1695, column: 67, scope: !2060)
!2525 = !DILocation(line: 1695, column: 15, scope: !2060)
!2526 = !DILocation(line: 1695, column: 19, scope: !2060)
!2527 = !DILocation(line: 0, scope: !1982)
!2528 = !DILocation(line: 1699, column: 1, scope: !1969)
!2529 = !DISubprogram(name: "gsl_sf_hyperg_1F1_series_e", scope: !2530, file: !2530, line: 34, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = !DIFile(filename: "./hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "715d150f24566e0448edc458ffbf9b78")
!2531 = !DILocation(line: 0, scope: !440)
!2532 = !DILocation(line: 1185, column: 8, scope: !449)
!2533 = !DILocation(line: 1185, column: 6, scope: !440)
!2534 = !DILocation(line: 1186, column: 17, scope: !462)
!2535 = !DILocation(line: 1187, column: 13, scope: !462)
!2536 = !DILocation(line: 1187, column: 17, scope: !462)
!2537 = !DILocation(line: 1188, column: 5, scope: !462)
!2538 = !DILocation(line: 1191, column: 13, scope: !448)
!2539 = !DILocation(line: 0, scope: !448)
!2540 = !DILocation(line: 1194, column: 17, scope: !454)
!2541 = !DILocation(line: 1194, column: 5, scope: !455)
!2542 = !DILocation(line: 1194, column: 12, scope: !455)
!2543 = !DILocation(line: 1195, column: 20, scope: !453)
!2544 = !DILocation(line: 1195, column: 18, scope: !453)
!2545 = !DILocation(line: 1195, column: 27, scope: !453)
!2546 = !DILocation(line: 1195, column: 26, scope: !453)
!2547 = !DILocation(line: 1195, column: 23, scope: !453)
!2548 = !DILocation(line: 1195, column: 37, scope: !453)
!2549 = !DILocation(line: 1195, column: 35, scope: !453)
!2550 = !DILocation(line: 1195, column: 34, scope: !453)
!2551 = !DILocation(line: 1195, column: 30, scope: !453)
!2552 = !DILocation(line: 0, scope: !453)
!2553 = !DILocation(line: 1196, column: 25, scope: !453)
!2554 = !DILocation(line: 1196, column: 20, scope: !453)
!2555 = !DILocation(line: 1197, column: 29, scope: !484)
!2556 = !DILocation(line: 1197, column: 12, scope: !484)
!2557 = !DILocation(line: 1197, column: 10, scope: !453)
!2558 = !DILocation(line: 1198, column: 9, scope: !488)
!2559 = !DILocation(line: 1198, column: 9, scope: !491)
!2560 = !DILocation(line: 1201, column: 14, scope: !493)
!2561 = !DILocation(line: 1194, column: 23, scope: !454)
!2562 = distinct !{!2562, !2541, !2563, !497}
!2563 = !DILocation(line: 1203, column: 5, scope: !455)
!2564 = !DILocation(line: 1192, column: 12, scope: !448)
!2565 = !DILocation(line: 1204, column: 17, scope: !448)
!2566 = !DILocation(line: 1205, column: 31, scope: !448)
!2567 = !DILocation(line: 1205, column: 26, scope: !448)
!2568 = !DILocation(line: 1205, column: 34, scope: !448)
!2569 = !DILocation(line: 1205, column: 23, scope: !448)
!2570 = !DILocation(line: 1205, column: 41, scope: !448)
!2571 = !DILocation(line: 1205, column: 61, scope: !448)
!2572 = !DILocation(line: 1205, column: 59, scope: !448)
!2573 = !DILocation(line: 1205, column: 13, scope: !448)
!2574 = !DILocation(line: 1205, column: 17, scope: !448)
!2575 = !DILocation(line: 1206, column: 5, scope: !448)
!2576 = !DILocation(line: 0, scope: !449)
!2577 = !DILocation(line: 1208, column: 1, scope: !440)
!2578 = distinct !DISubprogram(name: "hyperg_1F1_ab_neg", scope: !2, file: !2, line: 1708, type: !240, scopeLine: 1710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2596, !2597, !2598, !2605, !2606}
!2580 = !DILocalVariable(name: "a", arg: 1, scope: !2578, file: !2, line: 1708, type: !84)
!2581 = !DILocalVariable(name: "b", arg: 2, scope: !2578, file: !2, line: 1708, type: !84)
!2582 = !DILocalVariable(name: "x", arg: 3, scope: !2578, file: !2, line: 1708, type: !84)
!2583 = !DILocalVariable(name: "result", arg: 4, scope: !2578, file: !2, line: 1709, type: !86)
!2584 = !DILocalVariable(name: "bma", scope: !2578, file: !2, line: 1711, type: !84)
!2585 = !DILocalVariable(name: "abs_x", scope: !2578, file: !2, line: 1712, type: !84)
!2586 = !DILocalVariable(name: "abs_a", scope: !2578, file: !2, line: 1713, type: !84)
!2587 = !DILocalVariable(name: "abs_b", scope: !2578, file: !2, line: 1714, type: !84)
!2588 = !DILocalVariable(name: "size_a", scope: !2578, file: !2, line: 1715, type: !84)
!2589 = !DILocalVariable(name: "size_b", scope: !2578, file: !2, line: 1716, type: !84)
!2590 = !DILocalVariable(name: "bma_integer", scope: !2578, file: !2, line: 1717, type: !83)
!2591 = !DILocalVariable(name: "Kummer_1F1", scope: !2592, file: !2, line: 1739, type: !87)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !2, line: 1736, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !2, line: 1734, column: 14)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 1724, column: 14)
!2595 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 1719, column: 9)
!2596 = !DILocalVariable(name: "stat_K", scope: !2592, file: !2, line: 1740, type: !33)
!2597 = !DILocalVariable(name: "stat_e", scope: !2592, file: !2, line: 1741, type: !33)
!2598 = !DILocalVariable(name: "status", scope: !2599, file: !2, line: 1769, type: !33)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1767, column: 18)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2, line: 1767, column: 9)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1765, column: 8)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 1762, column: 11)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !2, line: 1754, column: 14)
!2604 = distinct !DILexicalBlock(scope: !2593, file: !2, line: 1746, column: 14)
!2605 = !DILocalVariable(name: "K_factor", scope: !2599, file: !2, line: 1770, type: !85)
!2606 = !DILocalVariable(name: "status", scope: !2607, file: !2, line: 1775, type: !33)
!2607 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1774, column: 12)
!2608 = distinct !DIAssignID()
!2609 = !DILocation(line: 0, scope: !2592)
!2610 = !DILocation(line: 0, scope: !2578)
!2611 = !DILocation(line: 1711, column: 24, scope: !2578)
!2612 = !DILocation(line: 1712, column: 24, scope: !2578)
!2613 = !DILocation(line: 1713, column: 24, scope: !2578)
!2614 = !DILocation(line: 1714, column: 24, scope: !2578)
!2615 = !DILocation(line: 1715, column: 25, scope: !2578)
!2616 = !DILocation(line: 1716, column: 25, scope: !2578)
!2617 = !DILocation(line: 1717, column: 44, scope: !2578)
!2618 = !DILocation(line: 1717, column: 35, scope: !2578)
!2619 = !DILocation(line: 1717, column: 33, scope: !2578)
!2620 = !DILocation(line: 1717, column: 50, scope: !2578)
!2621 = !DILocation(line: 1719, column: 16, scope: !2595)
!2622 = !DILocation(line: 1719, column: 23, scope: !2595)
!2623 = !DILocation(line: 1720, column: 17, scope: !2595)
!2624 = !DILocation(line: 1720, column: 38, scope: !2595)
!2625 = !DILocation(line: 1720, column: 12, scope: !2595)
!2626 = !DILocation(line: 1719, column: 9, scope: !2578)
!2627 = !DILocation(line: 1722, column: 12, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 1721, column: 7)
!2629 = !DILocation(line: 1722, column: 5, scope: !2628)
!2630 = !DILocation(line: 1724, column: 16, scope: !2594)
!2631 = !DILocation(line: 1725, column: 11, scope: !2594)
!2632 = !DILocation(line: 1726, column: 28, scope: !2594)
!2633 = !DILocation(line: 1726, column: 30, scope: !2594)
!2634 = !DILocation(line: 1726, column: 21, scope: !2594)
!2635 = !DILocation(line: 1726, column: 20, scope: !2594)
!2636 = !DILocation(line: 1726, column: 39, scope: !2594)
!2637 = !DILocation(line: 1724, column: 14, scope: !2595)
!2638 = !DILocation(line: 1732, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2594, file: !2, line: 1727, column: 7)
!2640 = !DILocation(line: 1732, column: 5, scope: !2639)
!2641 = !DILocation(line: 0, scope: !2593)
!2642 = !DILocation(line: 1734, column: 27, scope: !2593)
!2643 = !DILocation(line: 0, scope: !161, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1735, column: 23, scope: !2593)
!2645 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2644)
!2646 = !DILocation(line: 1735, column: 22, scope: !2593)
!2647 = !DILocation(line: 1735, column: 49, scope: !2593)
!2648 = !DILocation(line: 1735, column: 17, scope: !2593)
!2649 = !DILocation(line: 1734, column: 14, scope: !2594)
!2650 = !DILocation(line: 1739, column: 5, scope: !2592)
!2651 = !DILocation(line: 1740, column: 53, scope: !2592)
!2652 = !DILocation(line: 1740, column: 18, scope: !2592)
!2653 = !DILocation(line: 1741, column: 59, scope: !2592)
!2654 = !DILocation(line: 1742, column: 50, scope: !2592)
!2655 = !DILocation(line: 1742, column: 66, scope: !2592)
!2656 = !DILocation(line: 1741, column: 18, scope: !2592)
!2657 = !DILocation(line: 1744, column: 12, scope: !2592)
!2658 = !DILocation(line: 1745, column: 3, scope: !2593)
!2659 = !DILocation(line: 1746, column: 16, scope: !2604)
!2660 = !DILocation(line: 1747, column: 11, scope: !2604)
!2661 = !DILocation(line: 0, scope: !161, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 1747, column: 14, scope: !2604)
!2663 = !DILocation(line: 1747, column: 59, scope: !2604)
!2664 = !DILocation(line: 1747, column: 61, scope: !2604)
!2665 = !DILocation(line: 1747, column: 51, scope: !2604)
!2666 = !DILocation(line: 0, scope: !161, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1747, column: 39, scope: !2604)
!2668 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2667)
!2669 = !DILocation(line: 1747, column: 38, scope: !2604)
!2670 = !DILocation(line: 1747, column: 76, scope: !2604)
!2671 = !DILocation(line: 1747, column: 70, scope: !2604)
!2672 = !DILocation(line: 1746, column: 14, scope: !2593)
!2673 = !DILocation(line: 1752, column: 12, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2604, file: !2, line: 1748, column: 7)
!2675 = !DILocation(line: 1752, column: 5, scope: !2674)
!2676 = !DILocation(line: 1754, column: 16, scope: !2603)
!2677 = !DILocation(line: 1755, column: 11, scope: !2603)
!2678 = !DILocation(line: 0, scope: !161, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1755, column: 14, scope: !2603)
!2680 = !DILocation(line: 1755, column: 61, scope: !2603)
!2681 = !DILocation(line: 1755, column: 53, scope: !2603)
!2682 = !DILocation(line: 0, scope: !161, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1755, column: 41, scope: !2603)
!2684 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2683)
!2685 = !DILocation(line: 1755, column: 40, scope: !2603)
!2686 = !DILocation(line: 1755, column: 76, scope: !2603)
!2687 = !DILocation(line: 1755, column: 70, scope: !2603)
!2688 = !DILocation(line: 1754, column: 14, scope: !2604)
!2689 = !DILocation(line: 1760, column: 12, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 1756, column: 7)
!2691 = !DILocation(line: 1760, column: 5, scope: !2690)
!2692 = !DILocation(line: 1762, column: 19, scope: !2602)
!2693 = !DILocation(line: 1763, column: 12, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1762, column: 51)
!2695 = !DILocation(line: 1763, column: 5, scope: !2694)
!2696 = !DILocation(line: 1767, column: 11, scope: !2600)
!2697 = !DILocation(line: 1767, column: 9, scope: !2601)
!2698 = !DILocation(line: 1769, column: 55, scope: !2599)
!2699 = !DILocation(line: 1769, column: 20, scope: !2599)
!2700 = !DILocation(line: 0, scope: !2599)
!2701 = !DILocation(line: 1770, column: 25, scope: !2599)
!2702 = !DILocation(line: 1771, column: 19, scope: !2599)
!2703 = !DILocation(line: 1772, column: 15, scope: !2599)
!2704 = !DILocation(line: 1772, column: 19, scope: !2599)
!2705 = !DILocation(line: 1775, column: 20, scope: !2607)
!2706 = !DILocation(line: 0, scope: !2607)
!2707 = !DILocation(line: 0, scope: !2595)
!2708 = !DILocation(line: 1784, column: 1, scope: !2578)
!2709 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_int", scope: !2, file: !2, line: 2057, type: !2710, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!85, !83, !83, !85}
!2712 = !{!2713, !2714, !2715, !2716, !2717}
!2713 = !DILocalVariable(name: "m", arg: 1, scope: !2709, file: !2, line: 2057, type: !83)
!2714 = !DILocalVariable(name: "n", arg: 2, scope: !2709, file: !2, line: 2057, type: !83)
!2715 = !DILocalVariable(name: "x", arg: 3, scope: !2709, file: !2, line: 2057, type: !85)
!2716 = !DILocalVariable(name: "result", scope: !2709, file: !2, line: 2059, type: !87)
!2717 = !DILocalVariable(name: "status", scope: !2709, file: !2, line: 2059, type: !33)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2709)
!2720 = !DILocation(line: 2059, column: 3, scope: !2709)
!2721 = !DILocation(line: 2059, column: 3, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 2059, column: 3)
!2723 = !DILocation(line: 2059, column: 3, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !2, line: 2059, column: 3)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 2059, column: 3)
!2726 = !DILocation(line: 2060, column: 1, scope: !2709)
!2727 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1", scope: !2, file: !2, line: 2062, type: !2728, scopeLine: 2063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!85, !85, !85, !85}
!2730 = !{!2731, !2732, !2733, !2734, !2735}
!2731 = !DILocalVariable(name: "a", arg: 1, scope: !2727, file: !2, line: 2062, type: !85)
!2732 = !DILocalVariable(name: "b", arg: 2, scope: !2727, file: !2, line: 2062, type: !85)
!2733 = !DILocalVariable(name: "x", arg: 3, scope: !2727, file: !2, line: 2062, type: !85)
!2734 = !DILocalVariable(name: "result", scope: !2727, file: !2, line: 2064, type: !87)
!2735 = !DILocalVariable(name: "status", scope: !2727, file: !2, line: 2064, type: !33)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 0, scope: !2727)
!2738 = !DILocation(line: 2064, column: 3, scope: !2727)
!2739 = !DILocation(line: 2064, column: 3, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 2064, column: 3)
!2741 = !DILocation(line: 2064, column: 3, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2, line: 2064, column: 3)
!2743 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 2064, column: 3)
!2744 = !DILocation(line: 2065, column: 1, scope: !2727)
!2745 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !2746, file: !2746, line: 58, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2746 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!33, !85, !86, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2750 = !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !2530, file: !2530, line: 74, type: !2751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!33, !84, !84, !84, !33, !86}
!2753 = !DISubprogram(name: "gsl_sf_exprel_n_e", scope: !231, file: !231, line: 102, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2754 = distinct !DISubprogram(name: "hyperg_1F1_beq2a_pos", scope: !2, file: !2, line: 863, type: !1340, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2756 = !DILocalVariable(name: "a", arg: 1, scope: !2754, file: !2, line: 863, type: !84)
!2757 = !DILocalVariable(name: "x", arg: 2, scope: !2754, file: !2, line: 863, type: !84)
!2758 = !DILocalVariable(name: "result", arg: 3, scope: !2754, file: !2, line: 863, type: !86)
!2759 = !DILocalVariable(name: "I", scope: !2760, file: !2, line: 871, type: !87)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 870, column: 8)
!2761 = distinct !DILexicalBlock(scope: !2754, file: !2, line: 865, column: 6)
!2762 = !DILocalVariable(name: "stat_I", scope: !2760, file: !2, line: 872, type: !33)
!2763 = !DILocalVariable(name: "lg", scope: !2760, file: !2, line: 873, type: !87)
!2764 = !DILocalVariable(name: "stat_g", scope: !2760, file: !2, line: 874, type: !33)
!2765 = !DILocalVariable(name: "ln_term", scope: !2760, file: !2, line: 875, type: !85)
!2766 = !DILocalVariable(name: "lnpre_val", scope: !2760, file: !2, line: 876, type: !85)
!2767 = !DILocalVariable(name: "lnpre_err", scope: !2760, file: !2, line: 877, type: !85)
!2768 = !DILocalVariable(name: "stat_e", scope: !2760, file: !2, line: 878, type: !33)
!2769 = distinct !DIAssignID()
!2770 = !DILocation(line: 0, scope: !2760)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !2754)
!2773 = !DILocation(line: 865, column: 8, scope: !2761)
!2774 = !DILocation(line: 865, column: 6, scope: !2754)
!2775 = !DILocation(line: 866, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 865, column: 16)
!2777 = !DILocation(line: 867, column: 13, scope: !2776)
!2778 = !DILocation(line: 867, column: 17, scope: !2776)
!2779 = !DILocation(line: 868, column: 5, scope: !2776)
!2780 = !DILocation(line: 871, column: 5, scope: !2760)
!2781 = !DILocation(line: 872, column: 46, scope: !2760)
!2782 = !DILocation(line: 872, column: 56, scope: !2760)
!2783 = !DILocation(line: 872, column: 55, scope: !2760)
!2784 = !DILocation(line: 872, column: 18, scope: !2760)
!2785 = !DILocation(line: 873, column: 5, scope: !2760)
!2786 = !DILocation(line: 874, column: 37, scope: !2760)
!2787 = !DILocation(line: 874, column: 18, scope: !2760)
!2788 = !DILocation(line: 875, column: 28, scope: !2760)
!2789 = !DILocation(line: 875, column: 40, scope: !2760)
!2790 = !DILocation(line: 875, column: 32, scope: !2760)
!2791 = !DILocation(line: 875, column: 31, scope: !2760)
!2792 = !DILocation(line: 876, column: 27, scope: !2760)
!2793 = !DILocation(line: 0, scope: !161, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 876, column: 33, scope: !2760)
!2795 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2794)
!2796 = !DILocation(line: 876, column: 31, scope: !2760)
!2797 = !DILocation(line: 876, column: 52, scope: !2760)
!2798 = !DILocation(line: 877, column: 27, scope: !2760)
!2799 = !DILocation(line: 877, column: 52, scope: !2760)
!2800 = !DILocation(line: 877, column: 66, scope: !2760)
!2801 = !DILocation(line: 877, column: 49, scope: !2760)
!2802 = !DILocation(line: 877, column: 31, scope: !2760)
!2803 = !DILocation(line: 879, column: 45, scope: !2760)
!2804 = !DILocation(line: 879, column: 52, scope: !2760)
!2805 = !DILocation(line: 878, column: 18, scope: !2760)
!2806 = !DILocation(line: 881, column: 12, scope: !2760)
!2807 = !DILocation(line: 882, column: 3, scope: !2761)
!2808 = !DILocation(line: 0, scope: !2761)
!2809 = !DILocation(line: 883, column: 1, scope: !2754)
!2810 = distinct !DISubprogram(name: "hyperg_1F1_CF1_p_ser", scope: !2, file: !2, line: 559, type: !2811, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!33, !84, !84, !84, !2749}
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2821, !2822, !2823, !2824, !2825}
!2814 = !DILocalVariable(name: "a", arg: 1, scope: !2810, file: !2, line: 559, type: !84)
!2815 = !DILocalVariable(name: "b", arg: 2, scope: !2810, file: !2, line: 559, type: !84)
!2816 = !DILocalVariable(name: "x", arg: 3, scope: !2810, file: !2, line: 559, type: !84)
!2817 = !DILocalVariable(name: "result", arg: 4, scope: !2810, file: !2, line: 559, type: !2749)
!2818 = !DILocalVariable(name: "maxiter", scope: !2819, file: !2, line: 566, type: !83)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 565, column: 8)
!2820 = distinct !DILexicalBlock(scope: !2810, file: !2, line: 561, column: 6)
!2821 = !DILocalVariable(name: "sum", scope: !2819, file: !2, line: 567, type: !85)
!2822 = !DILocalVariable(name: "pk", scope: !2819, file: !2, line: 568, type: !85)
!2823 = !DILocalVariable(name: "rhok", scope: !2819, file: !2, line: 569, type: !85)
!2824 = !DILocalVariable(name: "k", scope: !2819, file: !2, line: 570, type: !33)
!2825 = !DILocalVariable(name: "ak", scope: !2826, file: !2, line: 572, type: !85)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !2, line: 571, column: 30)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 571, column: 5)
!2828 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 571, column: 5)
!2829 = !DILocation(line: 0, scope: !2810)
!2830 = !DILocation(line: 561, column: 8, scope: !2820)
!2831 = !DILocation(line: 561, column: 6, scope: !2810)
!2832 = !DILocation(line: 0, scope: !2819)
!2833 = !DILocation(line: 571, column: 5, scope: !2828)
!2834 = !DILocation(line: 562, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 561, column: 16)
!2836 = !DILocation(line: 563, column: 5, scope: !2835)
!2837 = !DILocation(line: 572, column: 24, scope: !2826)
!2838 = !DILocation(line: 572, column: 22, scope: !2826)
!2839 = !DILocation(line: 572, column: 26, scope: !2826)
!2840 = !DILocation(line: 572, column: 34, scope: !2826)
!2841 = !DILocation(line: 572, column: 36, scope: !2826)
!2842 = !DILocation(line: 572, column: 41, scope: !2826)
!2843 = !DILocation(line: 572, column: 28, scope: !2826)
!2844 = !DILocation(line: 0, scope: !2826)
!2845 = !DILocation(line: 573, column: 14, scope: !2826)
!2846 = !DILocation(line: 573, column: 23, scope: !2826)
!2847 = !DILocation(line: 573, column: 17, scope: !2826)
!2848 = !DILocation(line: 573, column: 40, scope: !2826)
!2849 = !DILocation(line: 573, column: 36, scope: !2826)
!2850 = !DILocation(line: 573, column: 30, scope: !2826)
!2851 = !DILocation(line: 574, column: 11, scope: !2826)
!2852 = !DILocation(line: 575, column: 11, scope: !2826)
!2853 = !DILocation(line: 576, column: 17, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 576, column: 10)
!2855 = !DILocation(line: 576, column: 10, scope: !2854)
!2856 = !DILocation(line: 576, column: 23, scope: !2854)
!2857 = !DILocation(line: 578, column: 16, scope: !2819)
!2858 = !DILocation(line: 578, column: 23, scope: !2819)
!2859 = !DILocation(line: 578, column: 13, scope: !2819)
!2860 = !DILocation(line: 579, column: 8, scope: !2819)
!2861 = !DILocation(line: 571, column: 26, scope: !2827)
!2862 = !DILocation(line: 571, column: 15, scope: !2827)
!2863 = distinct !{!2863, !2833, !2864, !497}
!2864 = !DILocation(line: 577, column: 5, scope: !2828)
!2865 = !DILocation(line: 580, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !2, line: 580, column: 7)
!2867 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 579, column: 8)
!2868 = !DILocation(line: 0, scope: !2820)
!2869 = !DILocation(line: 584, column: 1, scope: !2810)
!2870 = !DISubprogram(name: "exp", scope: !1336, file: !1336, line: 95, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !2872, file: !2872, line: 474, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2872 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!33, !85, !85, !86}
!2875 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2746, file: !2746, line: 47, type: !2876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!33, !85, !86}
!2878 = !DISubprogram(name: "sqrt", scope: !1336, file: !1336, line: 143, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2879 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !2872, file: !2872, line: 155, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubprogram(name: "pow", scope: !1336, file: !1336, line: 140, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2881 = !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !2872, file: !2872, line: 165, type: !2882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!85, !83, !84}
!2884 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !231, file: !231, line: 110, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2885 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !2872, file: !2872, line: 55, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2886 = !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !2887, file: !2887, line: 62, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2887 = !DIFile(filename: "../gsl/gsl_sf_laguerre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "58c60843776affae828c7538cacd7802")
!2888 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !2746, file: !2746, line: 136, type: !2889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!33, !2891, !86}
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!2893 = !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !2746, file: !2746, line: 254, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2894 = !DISubprogram(name: "gsl_sf_beta_e", scope: !2746, file: !2746, line: 266, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2895 = distinct !DISubprogram(name: "hyperg_1F1_largebx", scope: !2, file: !2, line: 148, type: !2896, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2897)
!2896 = !DISubroutineType(cc: DW_CC_nocall, types: !241)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2898 = !DILocalVariable(name: "a", arg: 1, scope: !2895, file: !2, line: 148, type: !84)
!2899 = !DILocalVariable(name: "b", arg: 2, scope: !2895, file: !2, line: 148, type: !84)
!2900 = !DILocalVariable(name: "x", arg: 3, scope: !2895, file: !2, line: 148, type: !84)
!2901 = !DILocalVariable(name: "result", arg: 4, scope: !2895, file: !2, line: 148, type: !86)
!2902 = !DILocalVariable(name: "y", scope: !2895, file: !2, line: 150, type: !85)
!2903 = !DILocalVariable(name: "f", scope: !2895, file: !2, line: 151, type: !85)
!2904 = !DILocalVariable(name: "t1", scope: !2895, file: !2, line: 152, type: !85)
!2905 = !DILocalVariable(name: "t2", scope: !2895, file: !2, line: 153, type: !85)
!2906 = !DILocalVariable(name: "t3", scope: !2895, file: !2, line: 154, type: !85)
!2907 = !DILocation(line: 0, scope: !2895)
!2908 = !DILocation(line: 150, column: 15, scope: !2895)
!2909 = !DILocation(line: 151, column: 18, scope: !2895)
!2910 = !DILocation(line: 151, column: 27, scope: !2895)
!2911 = !DILocation(line: 151, column: 21, scope: !2895)
!2912 = !DILocation(line: 151, column: 20, scope: !2895)
!2913 = !DILocation(line: 151, column: 14, scope: !2895)
!2914 = !DILocation(line: 152, column: 22, scope: !2895)
!2915 = !DILocation(line: 152, column: 19, scope: !2895)
!2916 = !DILocation(line: 152, column: 31, scope: !2895)
!2917 = !DILocation(line: 152, column: 15, scope: !2895)
!2918 = !DILocation(line: 152, column: 47, scope: !2895)
!2919 = !DILocation(line: 152, column: 42, scope: !2895)
!2920 = !DILocation(line: 152, column: 36, scope: !2895)
!2921 = !DILocation(line: 152, column: 35, scope: !2895)
!2922 = !DILocation(line: 153, column: 21, scope: !2895)
!2923 = !DILocation(line: 153, column: 23, scope: !2895)
!2924 = !DILocation(line: 153, column: 17, scope: !2895)
!2925 = !DILocation(line: 153, column: 37, scope: !2895)
!2926 = !DILocation(line: 153, column: 39, scope: !2895)
!2927 = !DILocation(line: 153, column: 43, scope: !2895)
!2928 = !DILocation(line: 153, column: 42, scope: !2895)
!2929 = !DILocation(line: 153, column: 27, scope: !2895)
!2930 = !DILocation(line: 153, column: 63, scope: !2895)
!2931 = !DILocation(line: 153, column: 65, scope: !2895)
!2932 = !DILocation(line: 153, column: 60, scope: !2895)
!2933 = !DILocation(line: 153, column: 68, scope: !2895)
!2934 = !DILocation(line: 153, column: 58, scope: !2895)
!2935 = !DILocation(line: 153, column: 73, scope: !2895)
!2936 = !DILocation(line: 153, column: 75, scope: !2895)
!2937 = !DILocation(line: 153, column: 77, scope: !2895)
!2938 = !DILocation(line: 153, column: 79, scope: !2895)
!2939 = !DILocation(line: 153, column: 82, scope: !2895)
!2940 = !DILocation(line: 153, column: 84, scope: !2895)
!2941 = !DILocation(line: 153, column: 70, scope: !2895)
!2942 = !DILocation(line: 153, column: 54, scope: !2895)
!2943 = !DILocation(line: 154, column: 22, scope: !2895)
!2944 = !DILocation(line: 154, column: 24, scope: !2895)
!2945 = !DILocation(line: 154, column: 26, scope: !2895)
!2946 = !DILocation(line: 154, column: 29, scope: !2895)
!2947 = !DILocation(line: 154, column: 28, scope: !2895)
!2948 = !DILocation(line: 154, column: 18, scope: !2895)
!2949 = !DILocation(line: 154, column: 41, scope: !2895)
!2950 = !DILocation(line: 154, column: 82, scope: !2895)
!2951 = !DILocation(line: 154, column: 78, scope: !2895)
!2952 = !DILocation(line: 154, column: 87, scope: !2895)
!2953 = !DILocation(line: 154, column: 96, scope: !2895)
!2954 = !DILocation(line: 154, column: 92, scope: !2895)
!2955 = !DILocation(line: 154, column: 74, scope: !2895)
!2956 = !DILocation(line: 154, column: 102, scope: !2895)
!2957 = !DILocation(line: 154, column: 71, scope: !2895)
!2958 = !DILocation(line: 154, column: 68, scope: !2895)
!2959 = !DILocation(line: 154, column: 109, scope: !2895)
!2960 = !DILocation(line: 154, column: 65, scope: !2895)
!2961 = !DILocation(line: 154, column: 56, scope: !2895)
!2962 = !DILocation(line: 154, column: 116, scope: !2895)
!2963 = !DILocation(line: 154, column: 122, scope: !2895)
!2964 = !DILocation(line: 154, column: 121, scope: !2895)
!2965 = !DILocation(line: 154, column: 52, scope: !2895)
!2966 = !DILocation(line: 154, column: 43, scope: !2895)
!2967 = !DILocation(line: 155, column: 24, scope: !2895)
!2968 = !DILocation(line: 155, column: 29, scope: !2895)
!2969 = !DILocation(line: 155, column: 34, scope: !2895)
!2970 = !DILocation(line: 155, column: 19, scope: !2895)
!2971 = !DILocation(line: 155, column: 15, scope: !2895)
!2972 = !DILocation(line: 156, column: 25, scope: !2895)
!2973 = !DILocation(line: 156, column: 19, scope: !2895)
!2974 = !DILocation(line: 156, column: 18, scope: !2895)
!2975 = !DILocation(line: 156, column: 50, scope: !2895)
!2976 = !DILocation(line: 156, column: 49, scope: !2895)
!2977 = !DILocation(line: 156, column: 30, scope: !2895)
!2978 = !DILocation(line: 156, column: 11, scope: !2895)
!2979 = !DILocation(line: 156, column: 15, scope: !2895)
!2980 = !DILocation(line: 157, column: 3, scope: !2895)
!2981 = distinct !DISubprogram(name: "hyperg_1F1_large2bm4a", scope: !2, file: !2, line: 167, type: !240, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2983 = !DILocalVariable(name: "a", arg: 1, scope: !2981, file: !2, line: 167, type: !84)
!2984 = !DILocalVariable(name: "b", arg: 2, scope: !2981, file: !2, line: 167, type: !84)
!2985 = !DILocalVariable(name: "x", arg: 3, scope: !2981, file: !2, line: 167, type: !84)
!2986 = !DILocalVariable(name: "result", arg: 4, scope: !2981, file: !2, line: 167, type: !86)
!2987 = !DILocalVariable(name: "eta", scope: !2981, file: !2, line: 169, type: !85)
!2988 = !DILocalVariable(name: "cos2th", scope: !2981, file: !2, line: 170, type: !85)
!2989 = !DILocalVariable(name: "sin2th", scope: !2981, file: !2, line: 171, type: !85)
!2990 = !DILocalVariable(name: "th", scope: !2981, file: !2, line: 172, type: !85)
!2991 = !DILocalVariable(name: "pre_h", scope: !2981, file: !2, line: 173, type: !85)
!2992 = !DILocalVariable(name: "lg_b", scope: !2981, file: !2, line: 174, type: !87)
!2993 = !DILocalVariable(name: "stat_lg", scope: !2981, file: !2, line: 175, type: !33)
!2994 = !DILocalVariable(name: "t1", scope: !2981, file: !2, line: 176, type: !85)
!2995 = !DILocalVariable(name: "t2", scope: !2981, file: !2, line: 177, type: !85)
!2996 = !DILocalVariable(name: "lnpre_val", scope: !2981, file: !2, line: 178, type: !85)
!2997 = !DILocalVariable(name: "lnpre_err", scope: !2981, file: !2, line: 179, type: !85)
!2998 = !DILocalVariable(name: "s1", scope: !2981, file: !2, line: 188, type: !85)
!2999 = !DILocalVariable(name: "s2", scope: !2981, file: !2, line: 189, type: !85)
!3000 = !DILocalVariable(name: "ser_val", scope: !2981, file: !2, line: 191, type: !85)
!3001 = !DILocalVariable(name: "ser_err", scope: !2981, file: !2, line: 192, type: !85)
!3002 = !DILocalVariable(name: "stat_e", scope: !2981, file: !2, line: 193, type: !33)
!3003 = distinct !DIAssignID()
!3004 = !DILocation(line: 0, scope: !2981)
!3005 = !DILocation(line: 169, column: 22, scope: !2981)
!3006 = !DILocation(line: 169, column: 30, scope: !2981)
!3007 = !DILocation(line: 169, column: 25, scope: !2981)
!3008 = !DILocation(line: 170, column: 20, scope: !2981)
!3009 = !DILocation(line: 171, column: 23, scope: !2981)
!3010 = !DILocation(line: 172, column: 20, scope: !2981)
!3011 = !DILocation(line: 172, column: 15, scope: !2981)
!3012 = !DILocation(line: 173, column: 33, scope: !2981)
!3013 = !DILocation(line: 173, column: 37, scope: !2981)
!3014 = !DILocation(line: 173, column: 41, scope: !2981)
!3015 = !DILocation(line: 173, column: 48, scope: !2981)
!3016 = !DILocation(line: 174, column: 3, scope: !2981)
!3017 = !DILocation(line: 175, column: 17, scope: !2981)
!3018 = !DILocation(line: 176, column: 23, scope: !2981)
!3019 = !DILocation(line: 176, column: 18, scope: !2981)
!3020 = !DILocation(line: 176, column: 35, scope: !2981)
!3021 = !DILocation(line: 176, column: 37, scope: !2981)
!3022 = !DILocation(line: 176, column: 27, scope: !2981)
!3023 = !DILocation(line: 176, column: 26, scope: !2981)
!3024 = !DILocation(line: 177, column: 20, scope: !2981)
!3025 = !DILocation(line: 177, column: 19, scope: !2981)
!3026 = !DILocation(line: 178, column: 27, scope: !2981)
!3027 = !DILocation(line: 178, column: 36, scope: !2981)
!3028 = !DILocation(line: 178, column: 31, scope: !2981)
!3029 = !DILocation(line: 178, column: 39, scope: !2981)
!3030 = !DILocation(line: 178, column: 44, scope: !2981)
!3031 = !DILocation(line: 179, column: 27, scope: !2981)
!3032 = !DILocation(line: 179, column: 58, scope: !2981)
!3033 = !DILocation(line: 179, column: 72, scope: !2981)
!3034 = !DILocation(line: 179, column: 70, scope: !2981)
!3035 = !DILocation(line: 179, column: 83, scope: !2981)
!3036 = !DILocation(line: 179, column: 81, scope: !2981)
!3037 = !DILocation(line: 179, column: 55, scope: !2981)
!3038 = !DILocation(line: 179, column: 31, scope: !2981)
!3039 = !DILocation(line: 188, column: 20, scope: !2981)
!3040 = !DILocation(line: 188, column: 15, scope: !2981)
!3041 = !DILocation(line: 189, column: 23, scope: !2981)
!3042 = !DILocation(line: 189, column: 32, scope: !2981)
!3043 = !DILocation(line: 189, column: 38, scope: !2981)
!3044 = !DILocation(line: 189, column: 36, scope: !2981)
!3045 = !DILocation(line: 189, column: 27, scope: !2981)
!3046 = !DILocation(line: 189, column: 51, scope: !2981)
!3047 = !DILocation(line: 189, column: 15, scope: !2981)
!3048 = !DILocation(line: 191, column: 23, scope: !2981)
!3049 = !DILocation(line: 192, column: 45, scope: !2981)
!3050 = !DILocation(line: 192, column: 56, scope: !2981)
!3051 = !DILocation(line: 192, column: 54, scope: !2981)
!3052 = !DILocation(line: 192, column: 42, scope: !2981)
!3053 = !DILocation(line: 193, column: 16, scope: !2981)
!3054 = !DILocation(line: 196, column: 10, scope: !2981)
!3055 = !DILocation(line: 197, column: 1, scope: !2981)
!3056 = !DILocation(line: 196, column: 3, scope: !2981)
!3057 = distinct !DISubprogram(name: "hyperg_1F1_luke", scope: !2, file: !2, line: 209, type: !2896, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3058)
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093}
!3059 = !DILocalVariable(name: "a", arg: 1, scope: !3057, file: !2, line: 209, type: !84)
!3060 = !DILocalVariable(name: "c", arg: 2, scope: !3057, file: !2, line: 209, type: !84)
!3061 = !DILocalVariable(name: "xin", arg: 3, scope: !3057, file: !2, line: 209, type: !84)
!3062 = !DILocalVariable(name: "result", arg: 4, scope: !3057, file: !2, line: 210, type: !86)
!3063 = !DILocalVariable(name: "RECUR_BIG", scope: !3057, file: !2, line: 212, type: !84)
!3064 = !DILocalVariable(name: "nmax", scope: !3057, file: !2, line: 213, type: !83)
!3065 = !DILocalVariable(name: "n", scope: !3057, file: !2, line: 214, type: !33)
!3066 = !DILocalVariable(name: "x", scope: !3057, file: !2, line: 215, type: !84)
!3067 = !DILocalVariable(name: "x3", scope: !3057, file: !2, line: 216, type: !84)
!3068 = !DILocalVariable(name: "t0", scope: !3057, file: !2, line: 217, type: !84)
!3069 = !DILocalVariable(name: "t1", scope: !3057, file: !2, line: 218, type: !84)
!3070 = !DILocalVariable(name: "t2", scope: !3057, file: !2, line: 219, type: !84)
!3071 = !DILocalVariable(name: "F", scope: !3057, file: !2, line: 220, type: !85)
!3072 = !DILocalVariable(name: "prec", scope: !3057, file: !2, line: 221, type: !85)
!3073 = !DILocalVariable(name: "Bnm3", scope: !3057, file: !2, line: 223, type: !85)
!3074 = !DILocalVariable(name: "Bnm2", scope: !3057, file: !2, line: 224, type: !85)
!3075 = !DILocalVariable(name: "Bnm1", scope: !3057, file: !2, line: 225, type: !85)
!3076 = !DILocalVariable(name: "Anm3", scope: !3057, file: !2, line: 227, type: !85)
!3077 = !DILocalVariable(name: "Anm2", scope: !3057, file: !2, line: 228, type: !85)
!3078 = !DILocalVariable(name: "Anm1", scope: !3057, file: !2, line: 229, type: !85)
!3079 = !DILocalVariable(name: "npam1", scope: !3080, file: !2, line: 232, type: !85)
!3080 = distinct !DILexicalBlock(scope: !3057, file: !2, line: 231, column: 12)
!3081 = !DILocalVariable(name: "npcm1", scope: !3080, file: !2, line: 233, type: !85)
!3082 = !DILocalVariable(name: "npam2", scope: !3080, file: !2, line: 234, type: !85)
!3083 = !DILocalVariable(name: "npcm2", scope: !3080, file: !2, line: 235, type: !85)
!3084 = !DILocalVariable(name: "tnm1", scope: !3080, file: !2, line: 236, type: !85)
!3085 = !DILocalVariable(name: "tnm3", scope: !3080, file: !2, line: 237, type: !85)
!3086 = !DILocalVariable(name: "tnm5", scope: !3080, file: !2, line: 238, type: !85)
!3087 = !DILocalVariable(name: "F1", scope: !3080, file: !2, line: 239, type: !85)
!3088 = !DILocalVariable(name: "F2", scope: !3080, file: !2, line: 240, type: !85)
!3089 = !DILocalVariable(name: "F3", scope: !3080, file: !2, line: 241, type: !85)
!3090 = !DILocalVariable(name: "E", scope: !3080, file: !2, line: 242, type: !85)
!3091 = !DILocalVariable(name: "An", scope: !3080, file: !2, line: 244, type: !85)
!3092 = !DILocalVariable(name: "Bn", scope: !3080, file: !2, line: 245, type: !85)
!3093 = !DILocalVariable(name: "r", scope: !3080, file: !2, line: 246, type: !85)
!3094 = !DILocation(line: 0, scope: !3057)
!3095 = !DILocation(line: 215, column: 21, scope: !3057)
!3096 = !DILocation(line: 216, column: 22, scope: !3057)
!3097 = !DILocation(line: 216, column: 24, scope: !3057)
!3098 = !DILocation(line: 217, column: 22, scope: !3057)
!3099 = !DILocation(line: 218, column: 23, scope: !3057)
!3100 = !DILocation(line: 218, column: 33, scope: !3057)
!3101 = !DILocation(line: 218, column: 28, scope: !3057)
!3102 = !DILocation(line: 219, column: 23, scope: !3057)
!3103 = !DILocation(line: 219, column: 36, scope: !3057)
!3104 = !DILocation(line: 219, column: 33, scope: !3057)
!3105 = !DILocation(line: 219, column: 28, scope: !3057)
!3106 = !DILocation(line: 224, column: 21, scope: !3057)
!3107 = !DILocation(line: 225, column: 26, scope: !3057)
!3108 = !DILocation(line: 225, column: 41, scope: !3057)
!3109 = !DILocation(line: 225, column: 37, scope: !3057)
!3110 = !DILocation(line: 225, column: 30, scope: !3057)
!3111 = !DILocation(line: 225, column: 21, scope: !3057)
!3112 = !DILocation(line: 228, column: 22, scope: !3057)
!3113 = !DILocation(line: 229, column: 32, scope: !3057)
!3114 = !DILocation(line: 229, column: 26, scope: !3057)
!3115 = !DILocation(line: 229, column: 22, scope: !3057)
!3116 = !DILocation(line: 229, column: 47, scope: !3057)
!3117 = !DILocation(line: 229, column: 56, scope: !3057)
!3118 = !DILocation(line: 229, column: 52, scope: !3057)
!3119 = !DILocation(line: 229, column: 66, scope: !3057)
!3120 = !DILocation(line: 229, column: 42, scope: !3057)
!3121 = !DILocation(line: 231, column: 3, scope: !3057)
!3122 = !DILocation(line: 229, column: 10, scope: !3057)
!3123 = !DILocation(line: 228, column: 10, scope: !3057)
!3124 = !DILocation(line: 227, column: 10, scope: !3057)
!3125 = !DILocation(line: 225, column: 10, scope: !3057)
!3126 = !DILocation(line: 224, column: 10, scope: !3057)
!3127 = !DILocation(line: 223, column: 10, scope: !3057)
!3128 = !DILocation(line: 214, column: 7, scope: !3057)
!3129 = !DILocation(line: 232, column: 20, scope: !3080)
!3130 = !DILocation(line: 232, column: 22, scope: !3080)
!3131 = !DILocation(line: 232, column: 26, scope: !3080)
!3132 = !DILocation(line: 0, scope: !3080)
!3133 = !DILocation(line: 233, column: 22, scope: !3080)
!3134 = !DILocation(line: 233, column: 26, scope: !3080)
!3135 = !DILocation(line: 234, column: 26, scope: !3080)
!3136 = !DILocation(line: 235, column: 26, scope: !3080)
!3137 = !DILocation(line: 236, column: 21, scope: !3080)
!3138 = !DILocation(line: 236, column: 24, scope: !3080)
!3139 = !DILocation(line: 236, column: 20, scope: !3080)
!3140 = !DILocation(line: 237, column: 24, scope: !3080)
!3141 = !DILocation(line: 237, column: 20, scope: !3080)
!3142 = !DILocation(line: 238, column: 24, scope: !3080)
!3143 = !DILocation(line: 238, column: 20, scope: !3080)
!3144 = !DILocation(line: 239, column: 20, scope: !3080)
!3145 = !DILocation(line: 239, column: 22, scope: !3080)
!3146 = !DILocation(line: 239, column: 30, scope: !3080)
!3147 = !DILocation(line: 239, column: 35, scope: !3080)
!3148 = !DILocation(line: 239, column: 26, scope: !3080)
!3149 = !DILocation(line: 240, column: 23, scope: !3080)
!3150 = !DILocation(line: 240, column: 34, scope: !3080)
!3151 = !DILocation(line: 240, column: 39, scope: !3080)
!3152 = !DILocation(line: 240, column: 44, scope: !3080)
!3153 = !DILocation(line: 240, column: 50, scope: !3080)
!3154 = !DILocation(line: 240, column: 30, scope: !3080)
!3155 = !DILocation(line: 241, column: 17, scope: !3080)
!3156 = !DILocation(line: 241, column: 23, scope: !3080)
!3157 = !DILocation(line: 241, column: 29, scope: !3080)
!3158 = !DILocation(line: 241, column: 42, scope: !3080)
!3159 = !DILocation(line: 241, column: 47, scope: !3080)
!3160 = !DILocation(line: 241, column: 52, scope: !3080)
!3161 = !DILocation(line: 241, column: 62, scope: !3080)
!3162 = !DILocation(line: 241, column: 57, scope: !3080)
!3163 = !DILocation(line: 241, column: 65, scope: !3080)
!3164 = !DILocation(line: 241, column: 71, scope: !3080)
!3165 = !DILocation(line: 241, column: 38, scope: !3080)
!3166 = !DILocation(line: 242, column: 17, scope: !3080)
!3167 = !DILocation(line: 242, column: 26, scope: !3080)
!3168 = !DILocation(line: 242, column: 28, scope: !3080)
!3169 = !DILocation(line: 242, column: 23, scope: !3080)
!3170 = !DILocation(line: 242, column: 41, scope: !3080)
!3171 = !DILocation(line: 242, column: 47, scope: !3080)
!3172 = !DILocation(line: 242, column: 32, scope: !3080)
!3173 = !DILocation(line: 244, column: 21, scope: !3080)
!3174 = !DILocation(line: 244, column: 27, scope: !3080)
!3175 = !DILocation(line: 244, column: 38, scope: !3080)
!3176 = !DILocation(line: 244, column: 45, scope: !3080)
!3177 = !DILocation(line: 244, column: 47, scope: !3080)
!3178 = !DILocation(line: 244, column: 33, scope: !3080)
!3179 = !DILocation(line: 244, column: 57, scope: !3080)
!3180 = !DILocation(line: 244, column: 60, scope: !3080)
!3181 = !DILocation(line: 244, column: 53, scope: !3080)
!3182 = !DILocation(line: 245, column: 27, scope: !3080)
!3183 = !DILocation(line: 245, column: 47, scope: !3080)
!3184 = !DILocation(line: 245, column: 33, scope: !3080)
!3185 = !DILocation(line: 245, column: 60, scope: !3080)
!3186 = !DILocation(line: 245, column: 53, scope: !3080)
!3187 = !DILocation(line: 246, column: 18, scope: !3080)
!3188 = !DILocation(line: 248, column: 20, scope: !3080)
!3189 = !DILocation(line: 248, column: 24, scope: !3080)
!3190 = !DILocation(line: 248, column: 12, scope: !3080)
!3191 = !DILocation(line: 251, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3080, file: !2, line: 251, column: 8)
!3193 = !DILocation(line: 251, column: 31, scope: !3192)
!3194 = !DILocation(line: 253, column: 8, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3080, file: !2, line: 253, column: 8)
!3196 = !DILocation(line: 253, column: 17, scope: !3195)
!3197 = !DILocation(line: 253, column: 29, scope: !3195)
!3198 = !DILocation(line: 253, column: 32, scope: !3195)
!3199 = !DILocation(line: 253, column: 41, scope: !3195)
!3200 = !DILocation(line: 253, column: 8, scope: !3080)
!3201 = !DILocation(line: 254, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 253, column: 54)
!3203 = !DILocation(line: 255, column: 12, scope: !3202)
!3204 = !DILocation(line: 256, column: 12, scope: !3202)
!3205 = !DILocation(line: 257, column: 12, scope: !3202)
!3206 = !DILocation(line: 258, column: 12, scope: !3202)
!3207 = !DILocation(line: 259, column: 12, scope: !3202)
!3208 = !DILocation(line: 262, column: 5, scope: !3202)
!3209 = !DILocation(line: 263, column: 22, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 263, column: 13)
!3211 = !DILocation(line: 263, column: 38, scope: !3210)
!3212 = !DILocation(line: 264, column: 12, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 263, column: 67)
!3214 = !DILocation(line: 265, column: 12, scope: !3213)
!3215 = !DILocation(line: 266, column: 12, scope: !3213)
!3216 = !DILocation(line: 267, column: 12, scope: !3213)
!3217 = !DILocation(line: 268, column: 12, scope: !3213)
!3218 = !DILocation(line: 269, column: 12, scope: !3213)
!3219 = !DILocation(line: 272, column: 5, scope: !3213)
!3220 = !DILocation(line: 274, column: 6, scope: !3080)
!3221 = !DILocation(line: 283, column: 16, scope: !3057)
!3222 = !DILocation(line: 284, column: 31, scope: !3057)
!3223 = !DILocation(line: 284, column: 24, scope: !3057)
!3224 = !DILocation(line: 284, column: 22, scope: !3057)
!3225 = !DILocation(line: 284, column: 11, scope: !3057)
!3226 = !DILocation(line: 285, column: 44, scope: !3057)
!3227 = !DILocation(line: 285, column: 40, scope: !3057)
!3228 = !DILocation(line: 285, column: 52, scope: !3057)
!3229 = !DILocation(line: 285, column: 50, scope: !3057)
!3230 = !DILocation(line: 285, column: 15, scope: !3057)
!3231 = !DILocation(line: 287, column: 3, scope: !3057)
!3232 = !DILocation(line: 0, scope: !1687)
!3233 = !DILocation(line: 301, column: 3, scope: !1687)
!3234 = !DILocation(line: 302, column: 17, scope: !1700)
!3235 = !DILocation(line: 302, column: 19, scope: !1700)
!3236 = !DILocation(line: 302, column: 14, scope: !1700)
!3237 = !DILocation(line: 302, column: 10, scope: !1700)
!3238 = !DILocation(line: 303, column: 13, scope: !1700)
!3239 = !DILocation(line: 304, column: 36, scope: !1700)
!3240 = !DILocation(line: 304, column: 35, scope: !1700)
!3241 = !DILocation(line: 304, column: 65, scope: !1700)
!3242 = !DILocation(line: 304, column: 64, scope: !1700)
!3243 = !DILocation(line: 304, column: 47, scope: !1700)
!3244 = !DILocation(line: 304, column: 13, scope: !1700)
!3245 = !DILocation(line: 305, column: 7, scope: !1700)
!3246 = !DILocation(line: 301, column: 18, scope: !1687)
!3247 = !DILocation(line: 301, column: 9, scope: !1687)
!3248 = !DILocation(line: 301, column: 28, scope: !1687)
!3249 = distinct !{!3249, !3233, !3250, !497}
!3250 = !DILocation(line: 306, column: 3, scope: !1687)
!3251 = !DILocation(line: 307, column: 16, scope: !1687)
!3252 = !DILocation(line: 308, column: 11, scope: !1687)
!3253 = !DILocation(line: 309, column: 22, scope: !1687)
!3254 = !DILocation(line: 309, column: 15, scope: !1687)
!3255 = !DILocation(line: 310, column: 3, scope: !1687)
!3256 = !DISubprogram(name: "gsl_sf_exprel_e", scope: !231, file: !231, line: 83, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3257 = !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !231, file: !231, line: 91, type: !2876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = !DISubprogram(name: "log1p", scope: !1336, file: !1336, line: 122, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubprogram(name: "acos", scope: !1336, file: !1336, line: 53, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3260 = !DISubprogram(name: "sin", scope: !1336, file: !1336, line: 64, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3261 = distinct !DISubprogram(name: "hyperg_1F1_beps_bgt0", scope: !2, file: !2, line: 803, type: !240, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3278, !3279}
!3263 = !DILocalVariable(name: "eps", arg: 1, scope: !3261, file: !2, line: 803, type: !84)
!3264 = !DILocalVariable(name: "b", arg: 2, scope: !3261, file: !2, line: 803, type: !84)
!3265 = !DILocalVariable(name: "x", arg: 3, scope: !3261, file: !2, line: 803, type: !84)
!3266 = !DILocalVariable(name: "result", arg: 4, scope: !3261, file: !2, line: 803, type: !86)
!3267 = !DILocalVariable(name: "a", scope: !3268, file: !2, line: 820, type: !85)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 805, column: 55)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !2, line: 805, column: 6)
!3270 = !DILocalVariable(name: "exab", scope: !3268, file: !2, line: 821, type: !87)
!3271 = !DILocalVariable(name: "stat_e", scope: !3268, file: !2, line: 822, type: !33)
!3272 = !DILocalVariable(name: "v2", scope: !3268, file: !2, line: 823, type: !85)
!3273 = !DILocalVariable(name: "v3", scope: !3268, file: !2, line: 824, type: !85)
!3274 = !DILocalVariable(name: "v", scope: !3268, file: !2, line: 825, type: !85)
!3275 = !DILocalVariable(name: "f", scope: !3268, file: !2, line: 826, type: !85)
!3276 = !DILocalVariable(name: "Kummer_1F1", scope: !3277, file: !2, line: 837, type: !87)
!3277 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 833, column: 8)
!3278 = !DILocalVariable(name: "stat_K", scope: !3277, file: !2, line: 838, type: !33)
!3279 = !DILocalVariable(name: "stat_e", scope: !3280, file: !2, line: 840, type: !33)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 839, column: 31)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 839, column: 8)
!3282 = distinct !DIAssignID()
!3283 = !DILocation(line: 0, scope: !3268)
!3284 = distinct !DIAssignID()
!3285 = !DILocation(line: 0, scope: !3277)
!3286 = !DILocation(line: 0, scope: !3261)
!3287 = !DILocation(line: 805, column: 10, scope: !3269)
!3288 = !DILocation(line: 805, column: 8, scope: !3269)
!3289 = !DILocation(line: 805, column: 18, scope: !3269)
!3290 = !DILocation(line: 820, column: 18, scope: !3268)
!3291 = !DILocation(line: 821, column: 5, scope: !3268)
!3292 = !DILocation(line: 822, column: 32, scope: !3268)
!3293 = !DILocation(line: 822, column: 34, scope: !3268)
!3294 = !DILocation(line: 822, column: 18, scope: !3268)
!3295 = !DILocation(line: 823, column: 23, scope: !3268)
!3296 = !DILocation(line: 823, column: 25, scope: !3268)
!3297 = !DILocation(line: 823, column: 30, scope: !3268)
!3298 = !DILocation(line: 823, column: 27, scope: !3268)
!3299 = !DILocation(line: 823, column: 18, scope: !3268)
!3300 = !DILocation(line: 824, column: 25, scope: !3268)
!3301 = !DILocation(line: 824, column: 21, scope: !3268)
!3302 = !DILocation(line: 824, column: 18, scope: !3268)
!3303 = !DILocation(line: 824, column: 33, scope: !3268)
!3304 = !DILocation(line: 824, column: 35, scope: !3268)
!3305 = !DILocation(line: 824, column: 37, scope: !3268)
!3306 = !DILocation(line: 824, column: 39, scope: !3268)
!3307 = !DILocation(line: 824, column: 50, scope: !3268)
!3308 = !DILocation(line: 824, column: 47, scope: !3268)
!3309 = !DILocation(line: 824, column: 28, scope: !3268)
!3310 = !DILocation(line: 825, column: 25, scope: !3268)
!3311 = !DILocation(line: 825, column: 20, scope: !3268)
!3312 = !DILocation(line: 826, column: 27, scope: !3268)
!3313 = !DILocation(line: 826, column: 29, scope: !3268)
!3314 = !DILocation(line: 826, column: 31, scope: !3268)
!3315 = !DILocation(line: 826, column: 22, scope: !3268)
!3316 = !DILocation(line: 827, column: 25, scope: !3268)
!3317 = !DILocation(line: 827, column: 29, scope: !3268)
!3318 = !DILocation(line: 827, column: 18, scope: !3268)
!3319 = !DILocation(line: 828, column: 25, scope: !3268)
!3320 = !DILocation(line: 828, column: 31, scope: !3268)
!3321 = !DILocation(line: 828, column: 29, scope: !3268)
!3322 = !DILocation(line: 828, column: 13, scope: !3268)
!3323 = !DILocation(line: 829, column: 20, scope: !3268)
!3324 = !DILocation(line: 829, column: 35, scope: !3268)
!3325 = !DILocation(line: 829, column: 62, scope: !3268)
!3326 = !DILocation(line: 829, column: 60, scope: !3268)
!3327 = !DILocation(line: 829, column: 53, scope: !3268)
!3328 = !DILocation(line: 829, column: 17, scope: !3268)
!3329 = !DILocation(line: 830, column: 44, scope: !3268)
!3330 = !DILocation(line: 830, column: 42, scope: !3268)
!3331 = !DILocation(line: 830, column: 17, scope: !3268)
!3332 = !DILocation(line: 832, column: 3, scope: !3269)
!3333 = !DILocation(line: 837, column: 5, scope: !3277)
!3334 = !DILocation(line: 838, column: 42, scope: !3277)
!3335 = !DILocation(line: 838, column: 51, scope: !3277)
!3336 = !DILocation(line: 838, column: 18, scope: !3277)
!3337 = !DILocation(line: 839, column: 19, scope: !3281)
!3338 = !DILocation(line: 839, column: 23, scope: !3281)
!3339 = !DILocation(line: 839, column: 8, scope: !3277)
!3340 = !DILocation(line: 840, column: 64, scope: !3280)
!3341 = !DILocation(line: 841, column: 72, scope: !3280)
!3342 = !DILocation(line: 840, column: 20, scope: !3280)
!3343 = !DILocation(line: 0, scope: !3280)
!3344 = !DILocation(line: 843, column: 14, scope: !3280)
!3345 = !DILocation(line: 847, column: 19, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 845, column: 10)
!3347 = !DILocation(line: 848, column: 7, scope: !3346)
!3348 = !DILocation(line: 0, scope: !3281)
!3349 = !DILocation(line: 850, column: 3, scope: !3269)
!3350 = !DILocation(line: 0, scope: !3269)
!3351 = !DILocation(line: 851, column: 1, scope: !3261)
!3352 = distinct !DISubprogram(name: "hyperg_1F1_U", scope: !2, file: !2, line: 1346, type: !240, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3400, !3401, !3402, !3403, !3405, !3406, !3407}
!3354 = !DILocalVariable(name: "a", arg: 1, scope: !3352, file: !2, line: 1346, type: !84)
!3355 = !DILocalVariable(name: "b", arg: 2, scope: !3352, file: !2, line: 1346, type: !84)
!3356 = !DILocalVariable(name: "x", arg: 3, scope: !3352, file: !2, line: 1346, type: !84)
!3357 = !DILocalVariable(name: "result", arg: 4, scope: !3352, file: !2, line: 1346, type: !86)
!3358 = !DILocalVariable(name: "bp", scope: !3352, file: !2, line: 1348, type: !84)
!3359 = !DILocalVariable(name: "ap", scope: !3352, file: !2, line: 1349, type: !84)
!3360 = !DILocalVariable(name: "lg_ap", scope: !3352, file: !2, line: 1351, type: !87)
!3361 = !DILocalVariable(name: "lg_bp", scope: !3352, file: !2, line: 1351, type: !87)
!3362 = !DILocalVariable(name: "sg_ap", scope: !3352, file: !2, line: 1352, type: !85)
!3363 = !DILocalVariable(name: "stat_lg0", scope: !3352, file: !2, line: 1353, type: !33)
!3364 = !DILocalVariable(name: "stat_lg1", scope: !3352, file: !2, line: 1354, type: !33)
!3365 = !DILocalVariable(name: "stat_lg2", scope: !3352, file: !2, line: 1355, type: !33)
!3366 = !DILocalVariable(name: "t1", scope: !3352, file: !2, line: 1356, type: !85)
!3367 = !DILocalVariable(name: "lnpre_val", scope: !3352, file: !2, line: 1357, type: !85)
!3368 = !DILocalVariable(name: "lnpre_err", scope: !3352, file: !2, line: 1358, type: !85)
!3369 = !DILocalVariable(name: "lg_2mbp", scope: !3352, file: !2, line: 1360, type: !87)
!3370 = !DILocalVariable(name: "lg_1papmbp", scope: !3352, file: !2, line: 1360, type: !87)
!3371 = !DILocalVariable(name: "sg_2mbp", scope: !3352, file: !2, line: 1361, type: !85)
!3372 = !DILocalVariable(name: "sg_1papmbp", scope: !3352, file: !2, line: 1361, type: !85)
!3373 = !DILocalVariable(name: "stat_lg3", scope: !3352, file: !2, line: 1362, type: !33)
!3374 = !DILocalVariable(name: "stat_lg4", scope: !3352, file: !2, line: 1363, type: !33)
!3375 = !DILocalVariable(name: "stat_lg5", scope: !3352, file: !2, line: 1364, type: !33)
!3376 = !DILocalVariable(name: "lnc1_val", scope: !3352, file: !2, line: 1365, type: !85)
!3377 = !DILocalVariable(name: "lnc1_err", scope: !3352, file: !2, line: 1366, type: !85)
!3378 = !DILocalVariable(name: "M", scope: !3352, file: !2, line: 1369, type: !87)
!3379 = !DILocalVariable(name: "U", scope: !3352, file: !2, line: 1370, type: !3380)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !88, line: 51, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !88, line: 46, size: 192, elements: !3382)
!3382 = !{!3383, !3384, !3385}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3381, file: !88, line: 47, baseType: !85, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !3381, file: !88, line: 48, baseType: !85, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !3381, file: !88, line: 49, baseType: !33, size: 32, offset: 128)
!3386 = !DILocalVariable(name: "stat_F", scope: !3352, file: !2, line: 1371, type: !33)
!3387 = !DILocalVariable(name: "stat_U", scope: !3352, file: !2, line: 1372, type: !33)
!3388 = !DILocalVariable(name: "stat_FU", scope: !3352, file: !2, line: 1373, type: !33)
!3389 = !DILocalVariable(name: "term_M", scope: !3352, file: !2, line: 1375, type: !3380)
!3390 = !DILocalVariable(name: "stat_e0", scope: !3352, file: !2, line: 1376, type: !33)
!3391 = !DILocalVariable(name: "ombp", scope: !3352, file: !2, line: 1380, type: !84)
!3392 = !DILocalVariable(name: "Uee_val", scope: !3352, file: !2, line: 1381, type: !84)
!3393 = !DILocalVariable(name: "Uee_err", scope: !3352, file: !2, line: 1382, type: !84)
!3394 = !DILocalVariable(name: "Mee_val", scope: !3352, file: !2, line: 1383, type: !84)
!3395 = !DILocalVariable(name: "Mee_err", scope: !3352, file: !2, line: 1384, type: !84)
!3396 = !DILocalVariable(name: "stat_e1", scope: !3352, file: !2, line: 1385, type: !33)
!3397 = !DILocalVariable(name: "factorM_val", scope: !3398, file: !2, line: 1391, type: !84)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !2, line: 1390, column: 25)
!3399 = distinct !DILexicalBlock(scope: !3352, file: !2, line: 1390, column: 6)
!3400 = !DILocalVariable(name: "factorM_err", scope: !3398, file: !2, line: 1392, type: !84)
!3401 = !DILocalVariable(name: "inner_val", scope: !3398, file: !2, line: 1393, type: !84)
!3402 = !DILocalVariable(name: "inner_err", scope: !3398, file: !2, line: 1394, type: !84)
!3403 = !DILocalVariable(name: "factorU_val", scope: !3404, file: !2, line: 1403, type: !84)
!3404 = distinct !DILexicalBlock(scope: !3399, file: !2, line: 1402, column: 8)
!3405 = !DILocalVariable(name: "factorU_err", scope: !3404, file: !2, line: 1404, type: !84)
!3406 = !DILocalVariable(name: "inner_val", scope: !3404, file: !2, line: 1405, type: !84)
!3407 = !DILocalVariable(name: "inner_err", scope: !3404, file: !2, line: 1406, type: !84)
!3408 = distinct !DIAssignID()
!3409 = !DILocation(line: 0, scope: !3352)
!3410 = distinct !DIAssignID()
!3411 = distinct !DIAssignID()
!3412 = distinct !DIAssignID()
!3413 = distinct !DIAssignID()
!3414 = distinct !DIAssignID()
!3415 = distinct !DIAssignID()
!3416 = distinct !DIAssignID()
!3417 = distinct !DIAssignID()
!3418 = distinct !DIAssignID()
!3419 = !DILocation(line: 1348, column: 25, scope: !3352)
!3420 = !DILocation(line: 1349, column: 23, scope: !3352)
!3421 = !DILocation(line: 1349, column: 27, scope: !3352)
!3422 = !DILocation(line: 1351, column: 3, scope: !3352)
!3423 = !DILocation(line: 1352, column: 3, scope: !3352)
!3424 = !DILocation(line: 1353, column: 18, scope: !3352)
!3425 = !DILocation(line: 1354, column: 18, scope: !3352)
!3426 = !DILocation(line: 1355, column: 18, scope: !3352)
!3427 = !DILocation(line: 1356, column: 18, scope: !3352)
!3428 = !DILocation(line: 1356, column: 26, scope: !3352)
!3429 = !DILocation(line: 1356, column: 24, scope: !3352)
!3430 = !DILocation(line: 1357, column: 28, scope: !3352)
!3431 = !DILocation(line: 1357, column: 40, scope: !3352)
!3432 = !DILocation(line: 1357, column: 32, scope: !3352)
!3433 = !DILocation(line: 1357, column: 44, scope: !3352)
!3434 = !DILocation(line: 1358, column: 28, scope: !3352)
!3435 = !DILocation(line: 1358, column: 40, scope: !3352)
!3436 = !DILocation(line: 1358, column: 32, scope: !3352)
!3437 = !DILocation(line: 1358, column: 70, scope: !3352)
!3438 = !DILocation(line: 1358, column: 68, scope: !3352)
!3439 = !DILocation(line: 1358, column: 44, scope: !3352)
!3440 = !DILocation(line: 1360, column: 3, scope: !3352)
!3441 = !DILocation(line: 1361, column: 3, scope: !3352)
!3442 = !DILocation(line: 1362, column: 42, scope: !3352)
!3443 = !DILocation(line: 1362, column: 18, scope: !3352)
!3444 = !DILocation(line: 1363, column: 42, scope: !3352)
!3445 = !DILocation(line: 1363, column: 45, scope: !3352)
!3446 = !DILocation(line: 1363, column: 18, scope: !3352)
!3447 = !DILocation(line: 1364, column: 18, scope: !3352)
!3448 = !DILocation(line: 1365, column: 29, scope: !3352)
!3449 = !DILocation(line: 1365, column: 46, scope: !3352)
!3450 = !DILocation(line: 1365, column: 33, scope: !3352)
!3451 = !DILocation(line: 1366, column: 29, scope: !3352)
!3452 = !DILocation(line: 1366, column: 46, scope: !3352)
!3453 = !DILocation(line: 1366, column: 33, scope: !3352)
!3454 = !DILocation(line: 1367, column: 42, scope: !3352)
!3455 = !DILocation(line: 1367, column: 62, scope: !3352)
!3456 = !DILocation(line: 1367, column: 60, scope: !3352)
!3457 = !DILocation(line: 1367, column: 39, scope: !3352)
!3458 = !DILocation(line: 1367, column: 21, scope: !3352)
!3459 = !DILocation(line: 1369, column: 3, scope: !3352)
!3460 = !DILocation(line: 1370, column: 3, scope: !3352)
!3461 = !DILocation(line: 1371, column: 16, scope: !3352)
!3462 = !DILocation(line: 1372, column: 16, scope: !3352)
!3463 = !DILocation(line: 1373, column: 17, scope: !3352)
!3464 = !DILocation(line: 1375, column: 3, scope: !3352)
!3465 = !DILocation(line: 1377, column: 46, scope: !3352)
!3466 = !DILocation(line: 1377, column: 54, scope: !3352)
!3467 = !DILocation(line: 1377, column: 53, scope: !3352)
!3468 = !DILocation(line: 1377, column: 67, scope: !3352)
!3469 = !DILocation(line: 1377, column: 64, scope: !3352)
!3470 = !DILocation(line: 1377, column: 74, scope: !3352)
!3471 = !DILocation(line: 1376, column: 17, scope: !3352)
!3472 = !DILocation(line: 1380, column: 27, scope: !3352)
!3473 = !DILocation(line: 1381, column: 28, scope: !3352)
!3474 = !{!3475, !3476, i64 16}
!3475 = !{!"gsl_sf_result_e10_struct", !120, i64 0, !120, i64 8, !3476, i64 16}
!3476 = !{!"int", !121, i64 0}
!3477 = !DILocation(line: 1381, column: 26, scope: !3352)
!3478 = !DILocation(line: 1381, column: 31, scope: !3352)
!3479 = !DILocation(line: 1383, column: 33, scope: !3352)
!3480 = !DILocation(line: 1383, column: 26, scope: !3352)
!3481 = !DILocation(line: 1383, column: 36, scope: !3352)
!3482 = !DILocation(line: 1390, column: 14, scope: !3399)
!3483 = !DILocation(line: 1390, column: 6, scope: !3352)
!3484 = !DILocation(line: 1382, column: 50, scope: !3352)
!3485 = !DILocation(line: 1382, column: 48, scope: !3352)
!3486 = !DILocation(line: 1391, column: 43, scope: !3398)
!3487 = !DILocation(line: 1391, column: 32, scope: !3398)
!3488 = !DILocation(line: 0, scope: !3398)
!3489 = !DILocation(line: 1392, column: 57, scope: !3398)
!3490 = !DILocation(line: 1392, column: 78, scope: !3398)
!3491 = !DILocation(line: 1392, column: 54, scope: !3398)
!3492 = !DILocation(line: 1392, column: 84, scope: !3398)
!3493 = !DILocation(line: 1393, column: 37, scope: !3398)
!3494 = !{!3475, !120, i64 0}
!3495 = !DILocation(line: 1393, column: 40, scope: !3398)
!3496 = !DILocation(line: 1393, column: 62, scope: !3398)
!3497 = !DILocation(line: 1393, column: 59, scope: !3398)
!3498 = !DILocation(line: 1393, column: 53, scope: !3398)
!3499 = !DILocation(line: 1395, column: 16, scope: !3398)
!3500 = !{!3475, !120, i64 8}
!3501 = !DILocation(line: 1395, column: 19, scope: !3398)
!3502 = !DILocation(line: 1395, column: 34, scope: !3398)
!3503 = !DILocation(line: 1395, column: 49, scope: !3398)
!3504 = !DILocation(line: 1395, column: 45, scope: !3398)
!3505 = !DILocation(line: 1395, column: 32, scope: !3398)
!3506 = !DILocation(line: 1396, column: 9, scope: !3398)
!3507 = !DILocation(line: 1396, column: 26, scope: !3398)
!3508 = !DILocation(line: 1396, column: 7, scope: !3398)
!3509 = !DILocation(line: 1397, column: 28, scope: !3398)
!3510 = !DILocation(line: 1397, column: 59, scope: !3398)
!3511 = !DILocation(line: 1397, column: 57, scope: !3398)
!3512 = !DILocation(line: 1397, column: 25, scope: !3398)
!3513 = !DILocation(line: 1397, column: 7, scope: !3398)
!3514 = !DILocation(line: 1398, column: 46, scope: !3398)
!3515 = !DILocation(line: 1398, column: 65, scope: !3398)
!3516 = !DILocation(line: 1399, column: 40, scope: !3398)
!3517 = !DILocation(line: 1399, column: 45, scope: !3398)
!3518 = !DILocation(line: 1398, column: 15, scope: !3398)
!3519 = !DILocation(line: 1401, column: 3, scope: !3398)
!3520 = !DILocation(line: 1384, column: 50, scope: !3352)
!3521 = !DILocation(line: 1384, column: 48, scope: !3352)
!3522 = !DILocation(line: 1403, column: 44, scope: !3404)
!3523 = !DILocation(line: 1403, column: 32, scope: !3404)
!3524 = !DILocation(line: 0, scope: !3404)
!3525 = !DILocation(line: 1404, column: 69, scope: !3404)
!3526 = !DILocation(line: 1404, column: 57, scope: !3404)
!3527 = !DILocation(line: 1404, column: 78, scope: !3404)
!3528 = !DILocation(line: 1404, column: 54, scope: !3404)
!3529 = !DILocation(line: 1404, column: 84, scope: !3404)
!3530 = !DILocation(line: 1405, column: 37, scope: !3404)
!3531 = !DILocation(line: 1405, column: 47, scope: !3404)
!3532 = !DILocation(line: 1405, column: 62, scope: !3404)
!3533 = !DILocation(line: 1405, column: 59, scope: !3404)
!3534 = !DILocation(line: 1405, column: 41, scope: !3404)
!3535 = !DILocation(line: 1407, column: 16, scope: !3404)
!3536 = !DILocation(line: 1407, column: 46, scope: !3404)
!3537 = !DILocation(line: 1407, column: 43, scope: !3404)
!3538 = !DILocation(line: 1407, column: 22, scope: !3404)
!3539 = !DILocation(line: 1407, column: 20, scope: !3404)
!3540 = !DILocation(line: 1408, column: 18, scope: !3404)
!3541 = !DILocation(line: 1408, column: 30, scope: !3404)
!3542 = !DILocation(line: 1408, column: 9, scope: !3404)
!3543 = !DILocation(line: 1408, column: 7, scope: !3404)
!3544 = !DILocation(line: 1409, column: 28, scope: !3404)
!3545 = !DILocation(line: 1409, column: 47, scope: !3404)
!3546 = !DILocation(line: 1409, column: 45, scope: !3404)
!3547 = !DILocation(line: 1409, column: 25, scope: !3404)
!3548 = !DILocation(line: 1409, column: 7, scope: !3404)
!3549 = !DILocation(line: 1410, column: 46, scope: !3404)
!3550 = !DILocation(line: 1410, column: 65, scope: !3404)
!3551 = !DILocation(line: 1411, column: 40, scope: !3404)
!3552 = !DILocation(line: 1411, column: 45, scope: !3404)
!3553 = !DILocation(line: 1410, column: 15, scope: !3404)
!3554 = !DILocation(line: 0, scope: !3399)
!3555 = !DILocation(line: 1415, column: 10, scope: !3352)
!3556 = !DILocation(line: 1416, column: 1, scope: !3352)
!3557 = !DILocation(line: 1415, column: 3, scope: !3352)
!3558 = !DISubprogram(name: "gsl_sf_hyperg_U_e10_e", scope: !3559, file: !3559, line: 100, type: !3560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3559 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!33, !84, !84, !84, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3563 = !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !231, file: !231, line: 130, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!33, !84, !84, !84, !84, !3562}
