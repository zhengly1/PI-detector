; ModuleID = 'hyperg_1F1.ll'
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
  %12 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #8, !dbg !129
  br label %92, !dbg !131

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0, !dbg !132
  br i1 %14, label %15, label %17, !dbg !133

15:                                               ; preds = %13
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !134, !tbaa !118
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !134
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !134, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1803, i32 noundef 1) #8, !dbg !137
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1812, i32 noundef 1) #8, !dbg !153
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !214
  %79 = sub nsw i32 %1, %0, !dbg !215
  %80 = fneg double %2, !dbg !216
  %81 = call fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %79, i32 noundef %1, double noundef %80, ptr noundef nonnull %5), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !109, metadata !DIExpression()), !dbg !112
  %82 = call double @llvm.fabs.f64(double %2), !dbg !218
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !219
  %84 = load double, ptr %5, align 8, !dbg !220, !tbaa !118
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !221
  %86 = load double, ptr %85, align 8, !dbg !221, !tbaa !125
  %87 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %83, double noundef %84, double noundef %86, ptr noundef %3) #8, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !110, metadata !DIExpression()), !dbg !112
  %88 = icmp eq i32 %87, 0, !dbg !223
  %89 = select i1 %88, i32 %81, i32 %87, !dbg !223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !224
  br label %92

90:                                               ; preds = %74
  %91 = tail call fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !225
  br label %92, !dbg !227

92:                                               ; preds = %90, %78, %72, %66, %45, %27, %19, %15, %11, %7
  %93 = phi i32 [ 0, %7 ], [ %12, %11 ], [ 1, %15 ], [ 0, %19 ], [ 1, %27 ], [ %48, %45 ], [ %68, %66 ], [ %73, %72 ], [ %89, %78 ], [ %91, %90 ], !dbg !228
  ret i32 %93, !dbg !229
}

declare !dbg !230 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !234 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !272
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !275
  %10 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #8, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !251, metadata !DIExpression()), !dbg !266
  %11 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %8) #8, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !252, metadata !DIExpression()), !dbg !266
  %12 = icmp eq i32 %11, 0, !dbg !278
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false, !dbg !279
  br i1 %14, label %15, label %50, !dbg !279

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !280
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !281
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !282
  %16 = fdiv double 1.000000e+00, %2, !dbg !282
  %17 = call i32 @gsl_sf_hyperg_2F0_series_e(double noundef %handler_result, double noundef %handler_result1, double noundef %16, i32 noundef -1, ptr noundef nonnull %9) #8, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !256, metadata !DIExpression()), !dbg !271
  %18 = icmp eq i32 %17, 0, !dbg !284
  %19 = load double, ptr %9, align 8
  %20 = fcmp une double %19, 0.000000e+00
  %21 = select i1 %18, i1 %20, i1 false, !dbg !285
  br i1 %21, label %22, label %47, !dbg !285

22:                                               ; preds = %15
  %handler_result11 = call double @callHandler(i32 12, double %2, double %2), !dbg !286
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !257, metadata !DIExpression()), !dbg !287
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %1), !dbg !286
  %23 = fmul double %handler_result2, %handler_result11, !dbg !286
  tail call void @llvm.dbg.value(metadata double %23, metadata !260, metadata !DIExpression()), !dbg !287
  %24 = call double @llvm.fabs.f64(double %0), !dbg !288
  %25 = call double @llvm.fabs.f64(double %1), !dbg !289
  %handler_result3 = call double @fAddHandlerDouble(double %24, double %25), !dbg !290
  %26 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !290
  %27 = call double @llvm.fabs.f64(double %handler_result11), !dbg !291
  %28 = fmul double %26, %27, !dbg !292
  %29 = call double @llvm.fabs.f64(double %handler_result2), !dbg !293
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !294
  %handler_result4 = call double @fAddHandlerDouble(double %30, double %28), !dbg !295
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !261, metadata !DIExpression()), !dbg !287
  %31 = load double, ptr %5, align 8, !dbg !295, !tbaa !118
  %32 = load double, ptr %6, align 8, !dbg !296, !tbaa !118
  %handler_result5 = call double @fSubHandlerDouble(double %31, double %32), !dbg !297
  %handler_result6 = call double @fAddHandlerDouble(double %23, double %handler_result5), !dbg !298
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %2), !dbg !299
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !262, metadata !DIExpression()), !dbg !287
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !299
  %34 = load double, ptr %33, align 8, !dbg !299, !tbaa !125
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !300
  %36 = load double, ptr %35, align 8, !dbg !300, !tbaa !125
  %handler_result8 = call double @fAddHandlerDouble(double %34, double %36), !dbg !301
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result8), !dbg !302
  %37 = call double @llvm.fabs.f64(double %2), !dbg !302
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !303
  %handler_result10 = call double @fAddHandlerDouble(double %38, double %handler_result9), !dbg !304
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !263, metadata !DIExpression()), !dbg !287
  %39 = load double, ptr %8, align 8, !dbg !304, !tbaa !305
  %40 = load double, ptr %7, align 8, !dbg !306, !tbaa !305
  %41 = fmul double %39, %40, !dbg !307
  %42 = load double, ptr %9, align 8, !dbg !308, !tbaa !118
  %43 = fmul double %41, %42, !dbg !309
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !310
  %45 = load double, ptr %44, align 8, !dbg !310, !tbaa !125
  %46 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result7, double noundef %handler_result10, double noundef %43, double noundef %45, ptr noundef %3) #8, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !264, metadata !DIExpression()), !dbg !287
  br label %48

47:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !312
  br label %48, !dbg !314

48:                                               ; preds = %47, %22
  %49 = phi i32 [ %46, %22 ], [ %17, %47 ], !dbg !315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !316
  br label %52

50:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !317, !tbaa !118
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !317
  store double 0x7FF8000000000000, ptr %51, align 8, !dbg !317, !tbaa !125
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 1) #8, !dbg !320
  br label %52, !dbg !320

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ 1, %50 ], !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !323
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !323
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !323
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !323
  ret i32 %53, !dbg !323
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !324 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !347
  call void @llvm.dbg.assign(metadata i1 undef, metadata !330, metadata !DIExpression(), metadata !347, metadata ptr %5, metadata !DIExpression()), !dbg !348
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !349
  call void @llvm.dbg.assign(metadata i1 undef, metadata !331, metadata !DIExpression(), metadata !349, metadata ptr %6, metadata !DIExpression()), !dbg !348
  %7 = alloca double, align 8, !DIAssignID !350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !350, metadata ptr %7, metadata !DIExpression()), !dbg !348
  %8 = alloca double, align 8, !DIAssignID !351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !333, metadata !DIExpression(), metadata !351, metadata ptr %8, metadata !DIExpression()), !dbg !348
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !336, metadata !DIExpression(), metadata !352, metadata ptr %9, metadata !DIExpression()), !dbg !353
  tail call void @llvm.dbg.value(metadata double %0, metadata !326, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata double %1, metadata !327, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata double %2, metadata !328, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !329, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !354
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !357
  %10 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #8, !dbg !358
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !334, metadata !DIExpression()), !dbg !348
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !359
  %11 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result, ptr noundef nonnull %6, ptr noundef nonnull %8) #8, !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !335, metadata !DIExpression()), !dbg !348
  %12 = icmp eq i32 %10, 0, !dbg !360
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %12, i1 %13, i1 false, !dbg !361
  br i1 %14, label %15, label %45, !dbg !361

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !362
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !363
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %1), !dbg !364
  %16 = fdiv double -1.000000e+00, %2, !dbg !364
  %17 = call i32 @gsl_sf_hyperg_2F0_series_e(double noundef %0, double noundef %handler_result2, double noundef %16, i32 noundef -1, ptr noundef nonnull %9) #8, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !339, metadata !DIExpression()), !dbg !353
  %18 = load double, ptr %9, align 8, !dbg !366, !tbaa !118
  %19 = fcmp une double %18, 0.000000e+00, !dbg !367
  br i1 %19, label %20, label %42, !dbg !368

20:                                               ; preds = %15
  %21 = fneg double %2, !dbg !369
  %handler_result8 = call double @callHandler(i32 12, double %21, double %21), !dbg !370
  %22 = fmul double %handler_result8, %0, !dbg !370
  tail call void @llvm.dbg.value(metadata double %22, metadata !340, metadata !DIExpression()), !dbg !371
  %23 = call double @llvm.fabs.f64(double %0), !dbg !372
  %24 = call double @llvm.fabs.f64(double %22), !dbg !373
  %handler_result3 = call double @fAddHandlerDouble(double %23, double %24), !dbg !374
  %25 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !374
  tail call void @llvm.dbg.value(metadata double %25, metadata !343, metadata !DIExpression()), !dbg !371
  %26 = load double, ptr %5, align 8, !dbg !375, !tbaa !118
  %27 = load double, ptr %6, align 8, !dbg !376, !tbaa !118
  %handler_result4 = call double @fSubHandlerDouble(double %26, double %27), !dbg !377
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %22), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !344, metadata !DIExpression()), !dbg !371
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !378
  %29 = load double, ptr %28, align 8, !dbg !378, !tbaa !125
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !379
  %31 = load double, ptr %30, align 8, !dbg !379, !tbaa !125
  %handler_result6 = call double @fAddHandlerDouble(double %29, double %31), !dbg !380
  %handler_result7 = call double @fAddHandlerDouble(double %25, double %handler_result6), !dbg !381
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !345, metadata !DIExpression()), !dbg !371
  %32 = load double, ptr %8, align 8, !dbg !381, !tbaa !305
  %33 = load double, ptr %7, align 8, !dbg !382, !tbaa !305
  %34 = fmul double %32, %33, !dbg !383
  %35 = load double, ptr %9, align 8, !dbg !384, !tbaa !118
  %36 = fmul double %34, %35, !dbg !385
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !386
  %38 = load double, ptr %37, align 8, !dbg !386, !tbaa !125
  %39 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result5, double noundef %handler_result7, double noundef %36, double noundef %38, ptr noundef %3) #8, !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !346, metadata !DIExpression()), !dbg !371
  %40 = icmp eq i32 %39, 0, !dbg !388
  %41 = select i1 %40, i32 %17, i32 %39, !dbg !388
  br label %43

42:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !389
  br label %43, !dbg !391

43:                                               ; preds = %42, %20
  %44 = phi i32 [ %41, %20 ], [ %17, %42 ], !dbg !392
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !393
  br label %47

45:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !394, !tbaa !118
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !394
  store double 0x7FF8000000000000, ptr %46, align 8, !dbg !394, !tbaa !125
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 1) #8, !dbg !397
  br label %47, !dbg !397

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ 1, %45 ], !dbg !399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !400
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !400
  ret i32 %48, !dbg !400
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_negint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !401 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !403, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !404, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata double %2, metadata !405, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !406, metadata !DIExpression()), !dbg !413
  %5 = fcmp oeq double %2, 0.000000e+00, !dbg !414
  br i1 %5, label %6, label %8, !dbg !415

6:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !416, !tbaa !118
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !418
  store double 0.000000e+00, ptr %7, align 8, !dbg !419, !tbaa !125
  br label %95, !dbg !420

8:                                                ; preds = %4
  %9 = fcmp ogt double %2, 0.000000e+00, !dbg !421
  br i1 %9, label %10, label %49, !dbg !422

10:                                               ; preds = %8
  %11 = sitofp i32 %1 to double, !dbg !423
  call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata double %11, metadata !430, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata double %2, metadata !431, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata ptr %3, metadata !432, metadata !DIExpression()), !dbg !443
  %12 = icmp eq i32 %0, 0, !dbg !445
  br i1 %12, label %13, label %15, !dbg !446

13:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 8, !dbg !447, !tbaa !118
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !449
  store double 1.000000e+00, ptr %14, align 8, !dbg !450, !tbaa !125
  br label %95, !dbg !451

15:                                               ; preds = %10
  %16 = sub nsw i32 0, %0, !dbg !452
  call void @llvm.dbg.value(metadata i32 %16, metadata !433, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 %0, metadata !437, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !453
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()), !dbg !453
  %17 = icmp slt i32 %0, 0, !dbg !454
  br i1 %17, label %18, label %40, !dbg !455

18:                                               ; preds = %15
  %19 = xor i32 %0, -1, !dbg !456
  call void @llvm.dbg.value(metadata i32 %19, metadata !437, metadata !DIExpression()), !dbg !453
  br label %20, !dbg !455

20:                                               ; preds = %36, %18
  %21 = phi double [ %37, %36 ], [ 1.000000e+00, %18 ]
  %22 = phi i32 [ %38, %36 ], [ %19, %18 ]
  call void @llvm.dbg.value(metadata double %21, metadata !436, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 %22, metadata !437, metadata !DIExpression()), !dbg !453
  %23 = add nsw i32 %22, %0, !dbg !457
  %24 = sitofp i32 %23 to double, !dbg !458
  %25 = sitofp i32 %22 to double, !dbg !459
  %handler_result = call double @fAddHandlerDouble(double %11, double %25), !dbg !460
  %26 = fdiv double %24, %handler_result, !dbg !460
  %27 = add nuw nsw i32 %22, 1, !dbg !461
  %28 = sitofp i32 %27 to double, !dbg !462
  %29 = fdiv double %2, %28, !dbg !463
  %30 = fmul double %26, %29, !dbg !464
  call void @llvm.dbg.value(metadata double %30, metadata !438, metadata !DIExpression()), !dbg !465
  %31 = fdiv double 1.000000e+00, %21, !dbg !466
  %handler_result1 = call double @fAddHandlerDouble(double %31, double %30), !dbg !467
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !442, metadata !DIExpression()), !dbg !465
  %32 = fdiv double 0x7FECCCCCCCCCCCCC, %21, !dbg !467
  %33 = fcmp ule double %handler_result1, %32, !dbg !469
  br i1 %33, label %36, label %34, !dbg !470

34:                                               ; preds = %20
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !471, !tbaa !118
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !471
  store double 0x7FF0000000000000, ptr %35, align 8, !dbg !471, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #8, !dbg !474
  call void @llvm.dbg.value(metadata double undef, metadata !436, metadata !DIExpression()), !dbg !453
  br label %95

36:                                               ; preds = %20
  %37 = fmul double %21, %handler_result1, !dbg !476
  call void @llvm.dbg.value(metadata double %37, metadata !436, metadata !DIExpression()), !dbg !453
  %38 = add nsw i32 %22, -1, !dbg !478
  call void @llvm.dbg.value(metadata i32 %38, metadata !437, metadata !DIExpression()), !dbg !453
  %39 = icmp sgt i32 %22, 0, !dbg !454
  br i1 %39, label %20, label %40, !dbg !455, !llvm.loop !479

40:                                               ; preds = %36, %15
  %41 = phi double [ 1.000000e+00, %15 ], [ %37, %36 ], !dbg !482
  store double %41, ptr %3, align 8, !dbg !483, !tbaa !118
  %42 = sitofp i32 %16 to double, !dbg !484
  %43 = tail call double @sqrt(double noundef %42) #8, !dbg !485
  %handler_result2 = call double @fAddHandlerDouble(double %43, double 1.000000e+00), !dbg !486
  %44 = fmul double %handler_result2, 2.000000e+00, !dbg !486
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !487
  %46 = tail call double @llvm.fabs.f64(double %41), !dbg !488
  %47 = fmul double %46, %45, !dbg !489
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !490
  store double %47, ptr %48, align 8, !dbg !491, !tbaa !125
  br label %95, !dbg !492

49:                                               ; preds = %8
  %50 = sub nsw i32 %1, %0, !dbg !493
  %51 = sitofp i32 %1 to double, !dbg !494
  %52 = fneg double %2, !dbg !495
  call void @llvm.dbg.value(metadata i32 %50, metadata !425, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata double %51, metadata !430, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata double %52, metadata !431, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata ptr undef, metadata !432, metadata !DIExpression()), !dbg !496
  %53 = icmp eq i32 %1, %0, !dbg !498
  br i1 %53, label %86, label %54, !dbg !499

54:                                               ; preds = %49
  %55 = sub nsw i32 0, %50, !dbg !500
  call void @llvm.dbg.value(metadata i32 %55, metadata !433, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %50, metadata !437, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !501
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()), !dbg !501
  %56 = icmp slt i32 %50, 0, !dbg !502
  br i1 %56, label %57, label %78, !dbg !503

57:                                               ; preds = %54
  %58 = xor i32 %50, -1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %58, metadata !437, metadata !DIExpression()), !dbg !501
  br label %59, !dbg !503

59:                                               ; preds = %74, %57
  %60 = phi double [ %75, %74 ], [ 1.000000e+00, %57 ]
  %61 = phi i32 [ %76, %74 ], [ %58, %57 ]
  call void @llvm.dbg.value(metadata double %60, metadata !436, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %61, metadata !437, metadata !DIExpression()), !dbg !501
  %62 = add nsw i32 %61, %50, !dbg !505
  %63 = sitofp i32 %62 to double, !dbg !506
  %64 = sitofp i32 %61 to double, !dbg !507
  %handler_result3 = call double @fAddHandlerDouble(double %51, double %64), !dbg !508
  %65 = fdiv double %63, %handler_result3, !dbg !508
  %66 = add nuw nsw i32 %61, 1, !dbg !509
  %67 = sitofp i32 %66 to double, !dbg !510
  %68 = fdiv double %52, %67, !dbg !511
  %69 = fmul double %65, %68, !dbg !512
  call void @llvm.dbg.value(metadata double %69, metadata !438, metadata !DIExpression()), !dbg !513
  %70 = fdiv double 1.000000e+00, %60, !dbg !514
  %handler_result4 = call double @fAddHandlerDouble(double %70, double %69), !dbg !515
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !442, metadata !DIExpression()), !dbg !513
  %71 = fdiv double 0x7FECCCCCCCCCCCCC, %60, !dbg !515
  %72 = fcmp ule double %handler_result4, %71, !dbg !516
  br i1 %72, label %74, label %73, !dbg !517

73:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #8, !dbg !519
  call void @llvm.dbg.value(metadata double undef, metadata !436, metadata !DIExpression()), !dbg !501
  br label %86

74:                                               ; preds = %59
  %75 = fmul double %60, %handler_result4, !dbg !520
  call void @llvm.dbg.value(metadata double %75, metadata !436, metadata !DIExpression()), !dbg !501
  %76 = add nsw i32 %61, -1, !dbg !521
  call void @llvm.dbg.value(metadata i32 %76, metadata !437, metadata !DIExpression()), !dbg !501
  %77 = icmp sgt i32 %61, 0, !dbg !502
  br i1 %77, label %59, label %78, !dbg !503, !llvm.loop !522

78:                                               ; preds = %74, %54
  %79 = phi double [ 1.000000e+00, %54 ], [ %75, %74 ], !dbg !524
  tail call void @llvm.dbg.value(metadata double %79, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  %80 = sitofp i32 %55 to double, !dbg !525
  %81 = tail call double @sqrt(double noundef %80) #8, !dbg !526
  %handler_result5 = call double @fAddHandlerDouble(double %81, double 1.000000e+00), !dbg !527
  %82 = fmul double %handler_result5, 2.000000e+00, !dbg !527
  %83 = fmul double %82, 0x3CB0000000000000, !dbg !528
  %84 = tail call double @llvm.fabs.f64(double %79), !dbg !529
  %85 = fmul double %84, %83, !dbg !530
  tail call void @llvm.dbg.value(metadata double %85, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  br label %86, !dbg !531

86:                                               ; preds = %78, %73, %49
  %87 = phi double [ %85, %78 ], [ 0x7FF0000000000000, %73 ], [ 1.000000e+00, %49 ], !dbg !532
  %88 = phi double [ %79, %78 ], [ 0x7FF0000000000000, %73 ], [ 1.000000e+00, %49 ], !dbg !532
  %89 = phi i32 [ 0, %78 ], [ 16, %73 ], [ 0, %49 ], !dbg !532
  tail call void @llvm.dbg.value(metadata double %88, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double %87, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !411, metadata !DIExpression()), !dbg !518
  %90 = tail call double @llvm.fabs.f64(double %2), !dbg !533
  %91 = fmul double %90, 0x3CC0000000000000, !dbg !534
  %92 = tail call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %91, double noundef %88, double noundef %87, ptr noundef %3) #8, !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !412, metadata !DIExpression()), !dbg !518
  %93 = icmp eq i32 %92, 0, !dbg !536
  %94 = select i1 %93, i32 %89, i32 %92, !dbg !536
  br label %95

95:                                               ; preds = %86, %40, %34, %13, %6
  %96 = phi i32 [ 0, %6 ], [ %94, %86 ], [ 0, %13 ], [ 16, %34 ], [ 0, %40 ], !dbg !537
  ret i32 %96, !dbg !538
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_posint(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !539 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !546, metadata !DIExpression(), metadata !627, metadata ptr %5, metadata !DIExpression()), !dbg !628
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !553, metadata !DIExpression(), metadata !629, metadata ptr %6, metadata !DIExpression()), !dbg !630
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !557, metadata !DIExpression(), metadata !631, metadata ptr %7, metadata !DIExpression()), !dbg !632
  %8 = alloca double, align 8, !DIAssignID !633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !562, metadata !DIExpression(), metadata !633, metadata ptr %8, metadata !DIExpression()), !dbg !634
  %9 = alloca double, align 8, !DIAssignID !635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !635, metadata ptr %9, metadata !DIExpression()), !dbg !636
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !637, metadata ptr %10, metadata !DIExpression()), !dbg !636
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !638
  call void @llvm.dbg.assign(metadata i1 undef, metadata !599, metadata !DIExpression(), metadata !638, metadata ptr %11, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !541, metadata !DIExpression()), !dbg !640
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !542, metadata !DIExpression()), !dbg !640
  tail call void @llvm.dbg.value(metadata double %2, metadata !543, metadata !DIExpression()), !dbg !640
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !544, metadata !DIExpression()), !dbg !640
  %12 = tail call double @llvm.fabs.f64(double %2), !dbg !641
  tail call void @llvm.dbg.value(metadata double %12, metadata !545, metadata !DIExpression()), !dbg !640
  %13 = icmp eq i32 %0, %1, !dbg !642
  br i1 %13, label %14, label %16, !dbg !643

14:                                               ; preds = %4
  %15 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #8, !dbg !644
  br label %523, !dbg !646

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1, !dbg !647
  br i1 %17, label %18, label %21, !dbg !648

18:                                               ; preds = %16
  %19 = add nsw i32 %1, -1, !dbg !649
  %20 = tail call i32 @gsl_sf_exprel_n_e(i32 noundef %19, double noundef %2, ptr noundef %3) #8, !dbg !651
  br label %523, !dbg !652

21:                                               ; preds = %16
  %22 = add nsw i32 %0, 1, !dbg !653
  %23 = icmp eq i32 %22, %1, !dbg !654
  br i1 %23, label %24, label %34, !dbg !655

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !656
  %25 = fneg double %2, !dbg !657
  %26 = call i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %25, ptr noundef nonnull %5) #8, !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !551, metadata !DIExpression()), !dbg !628
  %27 = fmul double %12, 0x3CC0000000000000, !dbg !659
  %28 = load double, ptr %5, align 8, !dbg !660, !tbaa !118
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !661
  %30 = load double, ptr %29, align 8, !dbg !661, !tbaa !125
  %31 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %27, double noundef %28, double noundef %30, ptr noundef %3) #8, !dbg !662
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !552, metadata !DIExpression()), !dbg !628
  %32 = icmp eq i32 %31, 0, !dbg !663
  %33 = select i1 %32, i32 %26, i32 %31, !dbg !663
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !664
  br label %523

34:                                               ; preds = %21
  %35 = add nsw i32 %1, 1, !dbg !665
  %36 = icmp eq i32 %35, %0, !dbg !666
  br i1 %36, label %37, label %52, !dbg !667

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !668
  %38 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %6) #8, !dbg !669
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !556, metadata !DIExpression()), !dbg !630
  %39 = load double, ptr %6, align 8, !dbg !670, !tbaa !118
  %40 = sitofp i32 %1 to double, !dbg !671
  %41 = fdiv double %2, %40, !dbg !672
  %handler_result = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !673
  %42 = fmul double %handler_result, %39, !dbg !673
  store double %42, ptr %3, align 8, !dbg !674, !tbaa !118
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !675
  %44 = load double, ptr %43, align 8, !dbg !675, !tbaa !125
  %45 = fmul double %handler_result, %44, !dbg !676
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !677
  %47 = fmul double %39, 0x3CB0000000000000, !dbg !678
  %48 = call double @llvm.fabs.f64(double %41), !dbg !679
  %handler_result1 = call double @fAddHandlerDouble(double %48, double 1.000000e+00), !dbg !680
  %49 = fmul double %handler_result1, %47, !dbg !680
  %handler_result2 = call double @fAddHandlerDouble(double %49, double %45), !dbg !681
  %50 = call double @llvm.fabs.f64(double %42), !dbg !681
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !682
  %handler_result3 = call double @fAddHandlerDouble(double %51, double %handler_result2), !dbg !683
  store double %handler_result3, ptr %46, align 8, !dbg !683, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !684
  br label %523

52:                                               ; preds = %34
  %53 = add nsw i32 %1, 2, !dbg !685
  %54 = icmp eq i32 %53, %0, !dbg !686
  br i1 %54, label %55, label %75, !dbg !687

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !688
  %56 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %7) #8, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !560, metadata !DIExpression()), !dbg !632
  %57 = sitofp i32 %1 to double, !dbg !690
  %58 = fdiv double %2, %57, !dbg !691
  %handler_result4 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !692
  %59 = fdiv double %2, %handler_result4, !dbg !692
  %handler_result5 = call double @fAddHandlerDouble(double %59, double 2.000000e+00), !dbg !693
  %60 = fmul double %58, %handler_result5, !dbg !693
  %handler_result6 = call double @fAddHandlerDouble(double %60, double 1.000000e+00), !dbg !694
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !561, metadata !DIExpression()), !dbg !632
  %61 = load double, ptr %7, align 8, !dbg !694, !tbaa !118
  %62 = fmul double %handler_result6, %61, !dbg !695
  store double %62, ptr %3, align 8, !dbg !696, !tbaa !118
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !697
  %64 = load double, ptr %63, align 8, !dbg !697, !tbaa !125
  %65 = call double @llvm.fabs.f64(double %handler_result6), !dbg !698
  %66 = fmul double %65, %64, !dbg !699
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !700
  %68 = fmul double %61, 0x3CB0000000000000, !dbg !701
  %69 = call double @llvm.fabs.f64(double %58), !dbg !702
  %70 = call double @llvm.fabs.f64(double %59), !dbg !703
  %handler_result7 = call double @fAddHandlerDouble(double %70, double 2.000000e+00), !dbg !704
  %71 = fmul double %69, %handler_result7, !dbg !704
  %handler_result8 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !705
  %72 = fmul double %handler_result8, %68, !dbg !705
  %handler_result9 = call double @fAddHandlerDouble(double %72, double %66), !dbg !706
  %73 = call double @llvm.fabs.f64(double %62), !dbg !706
  %74 = fmul double %73, 0x3CC0000000000000, !dbg !707
  %handler_result10 = call double @fAddHandlerDouble(double %74, double %handler_result9), !dbg !708
  store double %handler_result10, ptr %67, align 8, !dbg !708, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !709
  br label %523

75:                                               ; preds = %52
  %76 = shl nsw i32 %0, 1, !dbg !710
  %77 = icmp eq i32 %76, %1, !dbg !711
  br i1 %77, label %78, label %81, !dbg !712

78:                                               ; preds = %75
  %79 = sitofp i32 %0 to double, !dbg !713
  %80 = tail call fastcc i32 @hyperg_1F1_beq2a_pos(double noundef %79, double noundef %2, ptr noundef %3), !dbg !715
  br label %523, !dbg !716

81:                                               ; preds = %75
  %82 = icmp slt i32 %1, 10, !dbg !717
  %83 = icmp slt i32 %0, 10
  %84 = and i1 %83, %82, !dbg !718
  %85 = fcmp olt double %12, 5.000000e+00
  %86 = and i1 %84, %85, !dbg !718
  br i1 %86, label %87, label %90, !dbg !718

87:                                               ; preds = %81
  %88 = sitofp i32 %0 to double, !dbg !719
  %89 = sitofp i32 %1 to double, !dbg !721
  br label %98, !dbg !718

90:                                               ; preds = %81
  %91 = sitofp i32 %1 to double, !dbg !722
  %92 = sitofp i32 %0 to double, !dbg !723
  %93 = fmul double %12, %92, !dbg !724
  %94 = fcmp olt double %93, %91, !dbg !725
  br i1 %94, label %98, label %95, !dbg !726

95:                                               ; preds = %90
  %96 = icmp sgt i32 %1, %0, !dbg !727
  %97 = and i1 %96, %85, !dbg !728
  br i1 %97, label %98, label %102, !dbg !728

98:                                               ; preds = %95, %90, %87
  %99 = phi double [ %89, %87 ], [ %91, %95 ], [ %91, %90 ], !dbg !721
  %100 = phi double [ %88, %87 ], [ %92, %95 ], [ %92, %90 ], !dbg !719
  %101 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %100, double noundef %99, double noundef %2, ptr noundef %3) #8, !dbg !729
  br label %523, !dbg !730

102:                                              ; preds = %95
  br i1 %96, label %103, label %243, !dbg !731

103:                                              ; preds = %102
  %104 = sitofp i32 %76 to double, !dbg !732
  %handler_result11 = call double @fAddHandlerDouble(double %104, double %2), !dbg !733
  %105 = fcmp ugt double %handler_result11, %91, !dbg !733
  br i1 %105, label %164, label %106, !dbg !734

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !735
  %107 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %92, double noundef %91, double noundef %2, ptr noundef nonnull %8), !dbg !736, !range !737
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !567, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double poison, metadata !568, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !569, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double poison, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double poison, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !572, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !574, metadata !DIExpression()), !dbg !634
  %108 = icmp sgt i32 %0, 0, !dbg !738
  br i1 %108, label %109, label %156, !dbg !741

109:                                              ; preds = %106
  %110 = fdiv double %2, %92, !dbg !742
  %111 = load double, ptr %8, align 8, !dbg !743, !tbaa !305
  %112 = fmul double %110, %111, !dbg !744
  %handler_result12 = call double @fAddHandlerDouble(double %112, double 1.000000e+00), !dbg !745
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !568, metadata !DIExpression()), !dbg !634
  %113 = fmul double %handler_result12, 0x2000000000000000, !dbg !745
  tail call void @llvm.dbg.value(metadata double %113, metadata !570, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %113, metadata !571, metadata !DIExpression()), !dbg !634
  %114 = and i32 %0, 1, !dbg !741
  %115 = icmp eq i32 %114, 0, !dbg !741
  br i1 %115, label %127, label %116, !dbg !741

116:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata double %113, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !572, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !574, metadata !DIExpression()), !dbg !634
  %117 = sitofp i32 %0 to double, !dbg !746
  %118 = fmul double %113, %117, !dbg !748
  %119 = shl nuw nsw i32 %0, 1, !dbg !749
  %120 = sub nsw i32 %119, %1, !dbg !750
  %121 = sitofp i32 %120 to double, !dbg !751
  %handler_result13 = call double @fAddHandlerDouble(double %121, double %2), !dbg !752
  %122 = fmul double %handler_result13, 0x2000000000000000, !dbg !752
  %handler_result14 = call double @fSubHandlerDouble(double %118, double %122), !dbg !753
  %123 = sub nsw i32 %1, %0, !dbg !753
  %124 = sitofp i32 %123 to double, !dbg !754
  %125 = fdiv double %handler_result14, %124, !dbg !755
  tail call void @llvm.dbg.value(metadata double %125, metadata !573, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %125, metadata !572, metadata !DIExpression()), !dbg !634
  %126 = add nsw i32 %0, -1, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !574, metadata !DIExpression()), !dbg !634
  br label %127, !dbg !741

127:                                              ; preds = %116, %109
  %128 = phi double [ %113, %109 ], [ 0x2000000000000000, %116 ]
  %129 = phi double [ 0x2000000000000000, %109 ], [ %125, %116 ]
  %130 = phi i32 [ %0, %109 ], [ %126, %116 ]
  br label %131, !dbg !741

131:                                              ; preds = %131, %127
  %132 = phi double [ %128, %127 ], [ %143, %131 ]
  %133 = phi double [ %129, %127 ], [ %153, %131 ]
  %134 = phi i32 [ %130, %127 ], [ %154, %131 ]
  tail call void @llvm.dbg.value(metadata double %132, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %133, metadata !572, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !574, metadata !DIExpression()), !dbg !634
  %135 = sitofp i32 %134 to double, !dbg !746
  %136 = fmul double %132, %135, !dbg !748
  %137 = shl nuw nsw i32 %134, 1, !dbg !749
  %138 = sub nsw i32 %137, %1, !dbg !750
  %139 = sitofp i32 %138 to double, !dbg !751
  %handler_result15 = call double @fAddHandlerDouble(double %139, double %2), !dbg !752
  %140 = fmul double %133, %handler_result15, !dbg !752
  %handler_result16 = call double @fSubHandlerDouble(double %136, double %140), !dbg !753
  %141 = sub nsw i32 %1, %134, !dbg !753
  %142 = sitofp i32 %141 to double, !dbg !754
  %143 = fdiv double %handler_result16, %142, !dbg !755
  tail call void @llvm.dbg.value(metadata double %143, metadata !573, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %133, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %143, metadata !572, metadata !DIExpression()), !dbg !634
  %144 = add nsw i32 %134, -1, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !574, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %133, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %143, metadata !572, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !574, metadata !DIExpression()), !dbg !634
  %145 = sitofp i32 %144 to double, !dbg !746
  %146 = fmul double %133, %145, !dbg !748
  %147 = shl nuw nsw i32 %144, 1, !dbg !749
  %148 = sub nsw i32 %147, %1, !dbg !750
  %149 = sitofp i32 %148 to double, !dbg !751
  %handler_result17 = call double @fAddHandlerDouble(double %149, double %2), !dbg !752
  %150 = fmul double %143, %handler_result17, !dbg !752
  %handler_result18 = call double @fSubHandlerDouble(double %146, double %150), !dbg !753
  %151 = sub nsw i32 %1, %144, !dbg !753
  %152 = sitofp i32 %151 to double, !dbg !754
  %153 = fdiv double %handler_result18, %152, !dbg !755
  tail call void @llvm.dbg.value(metadata double %153, metadata !573, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %143, metadata !571, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %153, metadata !572, metadata !DIExpression()), !dbg !634
  %154 = add nsw i32 %134, -2, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !574, metadata !DIExpression()), !dbg !634
  %155 = icmp ugt i32 %144, 1, !dbg !738
  br i1 %155, label %131, label %156, !dbg !741, !llvm.loop !757

156:                                              ; preds = %131, %106
  %157 = phi double [ 0x2000000000000000, %106 ], [ %153, %131 ], !dbg !634
  %158 = fdiv double 0x2000000000000000, %157, !dbg !759
  store double %158, ptr %3, align 8, !dbg !760, !tbaa !118
  %159 = tail call double @llvm.fabs.f64(double %92), !dbg !761
  %handler_result19 = call double @fAddHandlerDouble(double %159, double 1.000000e+00), !dbg !762
  %160 = fmul double %handler_result19, 0x3CC0000000000000, !dbg !762
  %161 = tail call double @llvm.fabs.f64(double %158), !dbg !763
  %162 = fmul double %160, %161, !dbg !764
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !765
  store double %162, ptr %163, align 8, !dbg !766, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !767
  br label %523

164:                                              ; preds = %103
  %165 = fcmp ogt double %handler_result11, %91, !dbg !768
  %166 = fcmp ogt double %91, %2
  %167 = and i1 %166, %165, !dbg !769
  br i1 %167, label %168, label %243, !dbg !769

168:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !770
  %169 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %92, double noundef %91, double noundef %2, ptr noundef nonnull %9), !dbg !771, !range !737
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !578, metadata !DIExpression()), !dbg !636
  %170 = fdiv double %2, %92, !dbg !772
  %171 = load double, ptr %9, align 8, !dbg !773, !tbaa !305
  %172 = fmul double %170, %171, !dbg !774
  %handler_result20 = call double @fAddHandlerDouble(double %172, double 1.000000e+00), !dbg !775
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !579, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !775
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !582, metadata !DIExpression()), !dbg !636
  %173 = fmul double %handler_result20, 0x2000000000000000, !dbg !776
  tail call void @llvm.dbg.value(metadata double %173, metadata !583, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %173, metadata !585, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !587, metadata !DIExpression()), !dbg !636
  %174 = icmp slt i32 %22, %1, !dbg !777
  br i1 %174, label %175, label %223, !dbg !780

175:                                              ; preds = %168
  %176 = xor i32 %0, -1, !dbg !780
  %177 = add i32 %176, %1, !dbg !780
  %178 = add i32 %1, -2, !dbg !780
  %179 = and i32 %177, 1, !dbg !780
  %180 = icmp eq i32 %179, 0, !dbg !780
  br i1 %180, label %192, label %181, !dbg !780

181:                                              ; preds = %175
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %173, metadata !585, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !587, metadata !DIExpression()), !dbg !636
  %182 = sub nsw i32 %1, %22, !dbg !781
  %183 = sitofp i32 %182 to double, !dbg !783
  %184 = fmul double %183, 0x2000000000000000, !dbg !784
  %185 = shl nsw i32 %22, 1, !dbg !785
  %186 = sub nsw i32 %185, %1, !dbg !786
  %187 = sitofp i32 %186 to double, !dbg !787
  %handler_result21 = call double @fAddHandlerDouble(double %187, double %2), !dbg !788
  %188 = fmul double %173, %handler_result21, !dbg !788
  %handler_result22 = call double @fAddHandlerDouble(double %184, double %188), !dbg !789
  %189 = sitofp i32 %22 to double, !dbg !789
  %190 = fdiv double %handler_result22, %189, !dbg !790
  tail call void @llvm.dbg.value(metadata double %190, metadata !586, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %173, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %190, metadata !585, metadata !DIExpression()), !dbg !636
  %191 = add nsw i32 %0, 2, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !587, metadata !DIExpression()), !dbg !636
  br label %192, !dbg !780

192:                                              ; preds = %181, %175
  %193 = phi double [ undef, %175 ], [ %190, %181 ]
  %194 = phi double [ 0x2000000000000000, %175 ], [ %173, %181 ]
  %195 = phi double [ %173, %175 ], [ %190, %181 ]
  %196 = phi i32 [ %22, %175 ], [ %191, %181 ]
  %197 = icmp eq i32 %178, %0, !dbg !780
  br i1 %197, label %223, label %198, !dbg !780

198:                                              ; preds = %198, %192
  %199 = phi double [ %210, %198 ], [ %194, %192 ]
  %200 = phi double [ %220, %198 ], [ %195, %192 ]
  %201 = phi i32 [ %221, %198 ], [ %196, %192 ]
  tail call void @llvm.dbg.value(metadata double %199, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %200, metadata !585, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %201, metadata !587, metadata !DIExpression()), !dbg !636
  %202 = sub nsw i32 %1, %201, !dbg !781
  %203 = sitofp i32 %202 to double, !dbg !783
  %204 = fmul double %199, %203, !dbg !784
  %205 = shl nsw i32 %201, 1, !dbg !785
  %206 = sub nsw i32 %205, %1, !dbg !786
  %207 = sitofp i32 %206 to double, !dbg !787
  %handler_result23 = call double @fAddHandlerDouble(double %207, double %2), !dbg !788
  %208 = fmul double %200, %handler_result23, !dbg !788
  %handler_result24 = call double @fAddHandlerDouble(double %204, double %208), !dbg !789
  %209 = sitofp i32 %201 to double, !dbg !789
  %210 = fdiv double %handler_result24, %209, !dbg !790
  tail call void @llvm.dbg.value(metadata double %210, metadata !586, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %200, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %210, metadata !585, metadata !DIExpression()), !dbg !636
  %211 = add nsw i32 %201, 1, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %211, metadata !587, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %200, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %210, metadata !585, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %211, metadata !587, metadata !DIExpression()), !dbg !636
  %212 = sub nsw i32 %1, %211, !dbg !781
  %213 = sitofp i32 %212 to double, !dbg !783
  %214 = fmul double %200, %213, !dbg !784
  %215 = shl nsw i32 %211, 1, !dbg !785
  %216 = sub nsw i32 %215, %1, !dbg !786
  %217 = sitofp i32 %216 to double, !dbg !787
  %handler_result25 = call double @fAddHandlerDouble(double %217, double %2), !dbg !788
  %218 = fmul double %210, %handler_result25, !dbg !788
  %handler_result26 = call double @fAddHandlerDouble(double %214, double %218), !dbg !789
  %219 = sitofp i32 %211 to double, !dbg !789
  %220 = fdiv double %handler_result26, %219, !dbg !790
  tail call void @llvm.dbg.value(metadata double %220, metadata !586, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %210, metadata !584, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %220, metadata !585, metadata !DIExpression()), !dbg !636
  %221 = add nsw i32 %201, 2, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !587, metadata !DIExpression()), !dbg !636
  %222 = icmp eq i32 %221, %1, !dbg !777
  br i1 %222, label %223, label %198, !dbg !780, !llvm.loop !792

223:                                              ; preds = %198, %192, %168
  %224 = phi double [ %173, %168 ], [ %193, %192 ], [ %220, %198 ], !dbg !636
  %225 = call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef nonnull %10) #8, !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !581, metadata !DIExpression()), !dbg !636
  %226 = load double, ptr %10, align 8, !dbg !795, !tbaa !118
  %227 = fmul double %226, 0x2000000000000000, !dbg !796
  %228 = fdiv double %227, %224, !dbg !797
  store double %228, ptr %3, align 8, !dbg !798, !tbaa !118
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !799
  %230 = load double, ptr %229, align 8, !dbg !799, !tbaa !125
  %231 = fdiv double 0x2000000000000000, %224, !dbg !800
  %232 = call double @llvm.fabs.f64(double %231), !dbg !801
  %233 = fmul double %232, %230, !dbg !802
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !803
  %235 = sub nsw i32 %1, %0, !dbg !804
  %236 = sitofp i32 %235 to double, !dbg !805
  %237 = call double @llvm.fabs.f64(double %236), !dbg !806
  %handler_result27 = call double @fAddHandlerDouble(double %237, double 1.000000e+00), !dbg !807
  %238 = fmul double %handler_result27, 0x3CD0000000000000, !dbg !807
  %239 = call double @llvm.fabs.f64(double %228), !dbg !808
  %240 = fmul double %238, %239, !dbg !809
  %handler_result28 = call double @fAddHandlerDouble(double %233, double %240), !dbg !810
  store double %handler_result28, ptr %234, align 8, !dbg !810, !tbaa !125
  %241 = icmp eq i32 %225, 0, !dbg !811
  %242 = select i1 %241, i32 %169, i32 %225, !dbg !811
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !812
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !812
  br label %523

243:                                              ; preds = %164, %102
  %244 = fcmp ult double %2, 0.000000e+00, !dbg !813
  br i1 %244, label %378, label %245, !dbg !814

245:                                              ; preds = %243
  %246 = icmp slt i32 %1, %0, !dbg !815
  br i1 %246, label %247, label %312, !dbg !816

247:                                              ; preds = %245
  %248 = fdiv double %2, %91, !dbg !817
  %249 = tail call double @llvm.fabs.f64(double %248), !dbg !818
  %handler_result70 = call double @callHandler(i32 12, double %249, double %249), !dbg !819
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result70, double %2), !dbg !819
  %250 = fcmp olt double %handler_result29, 0x40861E42FEFA39EF, !dbg !819
  br i1 %250, label %251, label %310, !dbg !820

251:                                              ; preds = %247
  %252 = tail call double @exp(double noundef %2) #8, !dbg !821
  tail call void @llvm.dbg.value(metadata double %252, metadata !588, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %252, metadata !596, metadata !DIExpression()), !dbg !822
  %handler_result30 = call double @fAddHandlerDouble(double %248, double 1.000000e+00), !dbg !823
  %253 = fmul double %handler_result30, %252, !dbg !823
  tail call void @llvm.dbg.value(metadata double %253, metadata !597, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !595, metadata !DIExpression()), !dbg !822
  %254 = icmp slt i32 %35, %0, !dbg !824
  br i1 %254, label %255, label %300, !dbg !827

255:                                              ; preds = %251
  %256 = xor i32 %1, -1, !dbg !827
  %257 = add i32 %256, %0, !dbg !827
  %258 = add i32 %0, -2, !dbg !827
  %259 = and i32 %257, 1, !dbg !827
  %260 = icmp eq i32 %259, 0, !dbg !827
  br i1 %260, label %269, label %261, !dbg !827

261:                                              ; preds = %255
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !595, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %252, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %253, metadata !597, metadata !DIExpression()), !dbg !822
  %262 = shl nsw i32 %35, 1, !dbg !828
  %263 = sub nsw i32 %262, %1, !dbg !830
  %264 = sitofp i32 %263 to double, !dbg !831
  %handler_result31 = call double @fAddHandlerDouble(double %264, double %2), !dbg !832
  %265 = fmul double %253, %handler_result31, !dbg !832
  %handler_result32 = call double @fSubHandlerDouble(double %265, double %252), !dbg !833
  %266 = sitofp i32 %35 to double, !dbg !833
  %267 = fdiv double %handler_result32, %266, !dbg !834
  tail call void @llvm.dbg.value(metadata double %267, metadata !598, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %253, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %267, metadata !597, metadata !DIExpression()), !dbg !822
  %268 = add nsw i32 %1, 2, !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %268, metadata !595, metadata !DIExpression()), !dbg !822
  br label %269, !dbg !827

269:                                              ; preds = %261, %255
  %270 = phi double [ undef, %255 ], [ %267, %261 ]
  %271 = phi i32 [ %35, %255 ], [ %268, %261 ]
  %272 = phi double [ %252, %255 ], [ %253, %261 ]
  %273 = phi double [ %253, %255 ], [ %267, %261 ]
  %274 = icmp eq i32 %258, %1, !dbg !827
  br i1 %274, label %300, label %275, !dbg !827

275:                                              ; preds = %275, %269
  %276 = phi i32 [ %298, %275 ], [ %271, %269 ]
  %277 = phi double [ %287, %275 ], [ %272, %269 ]
  %278 = phi double [ %297, %275 ], [ %273, %269 ]
  tail call void @llvm.dbg.value(metadata i32 %276, metadata !595, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %277, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %278, metadata !597, metadata !DIExpression()), !dbg !822
  %279 = sub nsw i32 %1, %276, !dbg !836
  %280 = sitofp i32 %279 to double, !dbg !837
  %281 = fmul double %277, %280, !dbg !838
  %282 = shl nsw i32 %276, 1, !dbg !828
  %283 = sub nsw i32 %282, %1, !dbg !830
  %284 = sitofp i32 %283 to double, !dbg !831
  %handler_result33 = call double @fAddHandlerDouble(double %284, double %2), !dbg !832
  %285 = fmul double %278, %handler_result33, !dbg !832
  %handler_result34 = call double @fAddHandlerDouble(double %281, double %285), !dbg !833
  %286 = sitofp i32 %276 to double, !dbg !833
  %287 = fdiv double %handler_result34, %286, !dbg !834
  tail call void @llvm.dbg.value(metadata double %287, metadata !598, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %278, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %287, metadata !597, metadata !DIExpression()), !dbg !822
  %288 = add nsw i32 %276, 1, !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %288, metadata !595, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %288, metadata !595, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %278, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %287, metadata !597, metadata !DIExpression()), !dbg !822
  %289 = sub nsw i32 %1, %288, !dbg !836
  %290 = sitofp i32 %289 to double, !dbg !837
  %291 = fmul double %278, %290, !dbg !838
  %292 = shl nsw i32 %288, 1, !dbg !828
  %293 = sub nsw i32 %292, %1, !dbg !830
  %294 = sitofp i32 %293 to double, !dbg !831
  %handler_result35 = call double @fAddHandlerDouble(double %294, double %2), !dbg !832
  %295 = fmul double %287, %handler_result35, !dbg !832
  %handler_result36 = call double @fAddHandlerDouble(double %291, double %295), !dbg !833
  %296 = sitofp i32 %288 to double, !dbg !833
  %297 = fdiv double %handler_result36, %296, !dbg !834
  tail call void @llvm.dbg.value(metadata double %297, metadata !598, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %287, metadata !596, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %297, metadata !597, metadata !DIExpression()), !dbg !822
  %298 = add nsw i32 %276, 2, !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %298, metadata !595, metadata !DIExpression()), !dbg !822
  %299 = icmp eq i32 %298, %0, !dbg !824
  br i1 %299, label %300, label %275, !dbg !827, !llvm.loop !839

300:                                              ; preds = %275, %269, %251
  %301 = phi double [ %253, %251 ], [ %270, %269 ], [ %297, %275 ], !dbg !822
  store double %301, ptr %3, align 8, !dbg !841, !tbaa !118
  %handler_result37 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !842
  %302 = fmul double %handler_result37, 0x3CB0000000000000, !dbg !842
  %303 = tail call double @llvm.fabs.f64(double %301), !dbg !843
  %304 = fmul double %302, %303, !dbg !844
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !845
  %306 = sub nsw i32 %0, %1, !dbg !846
  %307 = sitofp i32 %306 to double, !dbg !847
  %308 = tail call double @llvm.fabs.f64(double %307), !dbg !848
  %handler_result38 = call double @fAddHandlerDouble(double %308, double 1.000000e+00), !dbg !849
  %309 = fmul double %handler_result38, %304, !dbg !849
  store double %309, ptr %305, align 8, !dbg !849, !tbaa !125
  br label %523

310:                                              ; preds = %247
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !850, !tbaa !118
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !850
  store double 0x7FF0000000000000, ptr %311, align 8, !dbg !850, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1062, i32 noundef 16) #8, !dbg !853
  br label %523, !dbg !853

312:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !855
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !601, metadata !DIExpression()), !dbg !639
  %313 = add nsw i32 %1, -1, !dbg !856
  %314 = call i32 @gsl_sf_exprel_n_e(i32 noundef %313, double noundef %2, ptr noundef nonnull %11) #8, !dbg !857
  %315 = load double, ptr %11, align 8, !dbg !858, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %315, metadata !602, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 1, metadata !604, metadata !DIExpression()), !dbg !639
  %316 = icmp sgt i32 %0, 1, !dbg !859
  br i1 %316, label %317, label %366, !dbg !862

317:                                              ; preds = %312
  %318 = add nsw i32 %0, -1, !dbg !862
  %319 = and i32 %318, 1, !dbg !862
  %320 = icmp eq i32 %0, 2, !dbg !862
  br i1 %320, label %350, label %321, !dbg !862

321:                                              ; preds = %317
  %322 = and i32 %318, -2, !dbg !862
  br label %323, !dbg !862

323:                                              ; preds = %323, %321
  %324 = phi i32 [ 1, %321 ], [ %347, %323 ]
  %325 = phi double [ %315, %321 ], [ %346, %323 ]
  %326 = phi double [ 1.000000e+00, %321 ], [ %336, %323 ]
  %327 = phi i32 [ 0, %321 ], [ %348, %323 ]
  tail call void @llvm.dbg.value(metadata i32 %324, metadata !604, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %325, metadata !602, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %326, metadata !601, metadata !DIExpression()), !dbg !639
  %328 = sub nsw i32 %1, %324, !dbg !863
  %329 = sitofp i32 %328 to double, !dbg !865
  %330 = fmul double %326, %329, !dbg !866
  %331 = shl nuw nsw i32 %324, 1, !dbg !867
  %332 = sub nsw i32 %331, %1, !dbg !868
  %333 = sitofp i32 %332 to double, !dbg !869
  %handler_result39 = call double @fAddHandlerDouble(double %333, double %2), !dbg !870
  %334 = fmul double %325, %handler_result39, !dbg !870
  %handler_result40 = call double @fAddHandlerDouble(double %330, double %334), !dbg !871
  %335 = sitofp i32 %324 to double, !dbg !871
  %336 = fdiv double %handler_result40, %335, !dbg !872
  tail call void @llvm.dbg.value(metadata double %336, metadata !603, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %325, metadata !601, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %336, metadata !602, metadata !DIExpression()), !dbg !639
  %337 = add nuw nsw i32 %324, 1, !dbg !873
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !604, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !604, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %336, metadata !602, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %325, metadata !601, metadata !DIExpression()), !dbg !639
  %338 = sub nsw i32 %1, %337, !dbg !863
  %339 = sitofp i32 %338 to double, !dbg !865
  %340 = fmul double %325, %339, !dbg !866
  %341 = shl nuw nsw i32 %337, 1, !dbg !867
  %342 = sub nsw i32 %341, %1, !dbg !868
  %343 = sitofp i32 %342 to double, !dbg !869
  %handler_result41 = call double @fAddHandlerDouble(double %343, double %2), !dbg !870
  %344 = fmul double %336, %handler_result41, !dbg !870
  %handler_result42 = call double @fAddHandlerDouble(double %340, double %344), !dbg !871
  %345 = sitofp i32 %337 to double, !dbg !871
  %346 = fdiv double %handler_result42, %345, !dbg !872
  tail call void @llvm.dbg.value(metadata double %346, metadata !603, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %336, metadata !601, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %346, metadata !602, metadata !DIExpression()), !dbg !639
  %347 = add nuw nsw i32 %324, 2, !dbg !873
  tail call void @llvm.dbg.value(metadata i32 %347, metadata !604, metadata !DIExpression()), !dbg !639
  %348 = add i32 %327, 2, !dbg !862
  %349 = icmp eq i32 %348, %322, !dbg !862
  br i1 %349, label %350, label %323, !dbg !862, !llvm.loop !874

350:                                              ; preds = %323, %317
  %351 = phi double [ undef, %317 ], [ %346, %323 ]
  %352 = phi i32 [ 1, %317 ], [ %347, %323 ]
  %353 = phi double [ %315, %317 ], [ %346, %323 ]
  %354 = phi double [ 1.000000e+00, %317 ], [ %336, %323 ]
  %355 = icmp eq i32 %319, 0, !dbg !862
  br i1 %355, label %366, label %356, !dbg !862

356:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i32 %352, metadata !604, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %353, metadata !602, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %354, metadata !601, metadata !DIExpression()), !dbg !639
  %357 = sub nsw i32 %1, %352, !dbg !863
  %358 = sitofp i32 %357 to double, !dbg !865
  %359 = fmul double %354, %358, !dbg !866
  %360 = shl nuw nsw i32 %352, 1, !dbg !867
  %361 = sub nsw i32 %360, %1, !dbg !868
  %362 = sitofp i32 %361 to double, !dbg !869
  %handler_result43 = call double @fAddHandlerDouble(double %362, double %2), !dbg !870
  %363 = fmul double %353, %handler_result43, !dbg !870
  %handler_result44 = call double @fAddHandlerDouble(double %359, double %363), !dbg !871
  %364 = sitofp i32 %352 to double, !dbg !871
  %365 = fdiv double %handler_result44, %364, !dbg !872
  tail call void @llvm.dbg.value(metadata double %365, metadata !603, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %353, metadata !601, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata double %365, metadata !602, metadata !DIExpression()), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %352, metadata !604, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !639
  br label %366, !dbg !876

366:                                              ; preds = %356, %350, %312
  %367 = phi double [ %315, %312 ], [ %351, %350 ], [ %365, %356 ], !dbg !639
  store double %367, ptr %3, align 8, !dbg !876, !tbaa !118
  %368 = call double @llvm.fabs.f64(double %367), !dbg !877
  %369 = call double @llvm.fabs.f64(double %92), !dbg !878
  %handler_result45 = call double @fAddHandlerDouble(double %369, double 1.000000e+00), !dbg !879
  %370 = fmul double %handler_result45, %368, !dbg !879
  %371 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !880
  %372 = load double, ptr %371, align 8, !dbg !880, !tbaa !125
  %373 = fdiv double %372, %315, !dbg !881
  %374 = call double @llvm.fabs.f64(double %373), !dbg !882
  %375 = fmul double %370, %374, !dbg !883
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !884
  %377 = fmul double %368, 0x3CC0000000000000, !dbg !885
  %handler_result46 = call double @fAddHandlerDouble(double %377, double %375), !dbg !886
  store double %handler_result46, ptr %376, align 8, !dbg !886, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !887
  br label %523

378:                                              ; preds = %243
  %handler_result47 = call double @fSubHandlerDouble(double %91, double %2), !dbg !888
  %379 = fmul double %handler_result47, 5.000000e-01, !dbg !888
  %380 = fcmp ult double %379, %92, !dbg !889
  %381 = fneg double %2
  %382 = fcmp ult double %92, %381
  %383 = and i1 %382, %380, !dbg !890
  br i1 %383, label %420, label %384, !dbg !890

384:                                              ; preds = %378
  %385 = tail call double @exp(double noundef %2) #8, !dbg !891
  tail call void @llvm.dbg.value(metadata double %385, metadata !605, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata double %385, metadata !609, metadata !DIExpression()), !dbg !892
  %handler_result48 = call double @fAddHandlerDouble(double %92, double -1.000000e+00), !dbg !893
  %386 = fdiv double %2, %handler_result48, !dbg !893
  %handler_result49 = call double @fAddHandlerDouble(double %386, double 1.000000e+00), !dbg !894
  %387 = fmul double %handler_result49, %385, !dbg !894
  tail call void @llvm.dbg.value(metadata double %387, metadata !610, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !612, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !892
  %388 = add nsw i32 %0, -1, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %388, metadata !612, metadata !DIExpression()), !dbg !892
  %389 = icmp sgt i32 %388, %1, !dbg !897
  br i1 %389, label %390, label %410, !dbg !899

390:                                              ; preds = %390, %384
  %391 = phi i32 [ %408, %390 ], [ %388, %384 ]
  %392 = phi i32 [ %391, %390 ], [ %0, %384 ]
  %393 = phi double [ %407, %390 ], [ %387, %384 ]
  %394 = phi double [ %393, %390 ], [ %385, %384 ]
  tail call void @llvm.dbg.value(metadata double %393, metadata !610, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata double %394, metadata !609, metadata !DIExpression()), !dbg !892
  %395 = sub nsw i32 1, %392, !dbg !900
  %396 = sitofp i32 %395 to double, !dbg !900
  %397 = sub nsw i32 2, %392, !dbg !902
  %398 = sitofp i32 %397 to double, !dbg !903
  %handler_result50 = call double @fSubHandlerDouble(double %398, double %2), !dbg !904
  %399 = fmul double %handler_result50, %396, !dbg !904
  %400 = fmul double %393, %399, !dbg !905
  %401 = sub nsw i32 %391, %0, !dbg !906
  %402 = sitofp i32 %401 to double, !dbg !907
  %403 = fmul double %402, %2, !dbg !908
  %404 = fmul double %394, %403, !dbg !909
  %handler_result51 = call double @fSubHandlerDouble(double %400, double %404), !dbg !910
  %405 = sitofp i32 %391 to double, !dbg !910
  %handler_result52 = call double @fAddHandlerDouble(double %405, double -1.000000e+00), !dbg !911
  %406 = fmul double %handler_result52, %405, !dbg !911
  %407 = fdiv double %handler_result51, %406, !dbg !912
  tail call void @llvm.dbg.value(metadata double %407, metadata !611, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata double %393, metadata !609, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata double %407, metadata !610, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata i32 %391, metadata !612, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !892
  %408 = add nsw i32 %391, -1, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %408, metadata !612, metadata !DIExpression()), !dbg !892
  %409 = icmp sgt i32 %408, %1, !dbg !897
  br i1 %409, label %390, label %410, !dbg !899, !llvm.loop !913

410:                                              ; preds = %390, %384
  %411 = phi double [ %387, %384 ], [ %407, %390 ], !dbg !892
  store double %411, ptr %3, align 8, !dbg !915, !tbaa !118
  %handler_result53 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !916
  %412 = fmul double %handler_result53, 0x3CB0000000000000, !dbg !916
  %413 = tail call double @llvm.fabs.f64(double %411), !dbg !917
  %414 = fmul double %412, %413, !dbg !918
  %415 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !919
  %416 = sub nsw i32 %1, %0, !dbg !920
  %417 = sitofp i32 %416 to double, !dbg !921
  %418 = tail call double @llvm.fabs.f64(double %417), !dbg !922
  %handler_result54 = call double @fAddHandlerDouble(double %418, double 1.000000e+00), !dbg !923
  %419 = fmul double %handler_result54, %414, !dbg !923
  store double %419, ptr %415, align 8, !dbg !923, !tbaa !125
  br label %523

420:                                              ; preds = %378
  %421 = tail call double @llvm.ceil.f64(double %379), !dbg !924
  %422 = fptosi double %421 to i32, !dbg !925
  tail call void @llvm.dbg.value(metadata i32 %422, metadata !613, metadata !DIExpression()), !dbg !926
  %423 = tail call double @exp(double noundef %2) #8, !dbg !927
  tail call void @llvm.dbg.value(metadata double %423, metadata !622, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata double %423, metadata !624, metadata !DIExpression()), !dbg !928
  %424 = sitofp i32 %422 to double, !dbg !929
  %handler_result55 = call double @fAddHandlerDouble(double %424, double -1.000000e+00), !dbg !930
  %425 = fdiv double %2, %handler_result55, !dbg !930
  %handler_result56 = call double @fAddHandlerDouble(double %425, double 1.000000e+00), !dbg !931
  %426 = fmul double %handler_result56, %423, !dbg !931
  tail call void @llvm.dbg.value(metadata double %426, metadata !625, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %422, metadata !621, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !926
  %427 = add nsw i32 %422, -1, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %427, metadata !621, metadata !DIExpression()), !dbg !926
  %428 = icmp sgt i32 %427, %1, !dbg !934
  br i1 %428, label %429, label %449, !dbg !936

429:                                              ; preds = %429, %420
  %430 = phi i32 [ %447, %429 ], [ %427, %420 ]
  %431 = phi double [ %446, %429 ], [ %426, %420 ]
  %432 = phi double [ %431, %429 ], [ %423, %420 ]
  %433 = phi i32 [ %430, %429 ], [ %422, %420 ]
  tail call void @llvm.dbg.value(metadata double %431, metadata !625, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata double %432, metadata !624, metadata !DIExpression()), !dbg !928
  %434 = sub nsw i32 1, %433, !dbg !937
  %435 = sitofp i32 %434 to double, !dbg !937
  %436 = sub nsw i32 2, %433, !dbg !939
  %437 = sitofp i32 %436 to double, !dbg !940
  %handler_result57 = call double @fSubHandlerDouble(double %437, double %2), !dbg !941
  %438 = fmul double %handler_result57, %435, !dbg !941
  %439 = fmul double %431, %438, !dbg !942
  %440 = sub nsw i32 %430, %422, !dbg !943
  %441 = sitofp i32 %440 to double, !dbg !944
  %442 = fmul double %441, %2, !dbg !945
  %443 = fmul double %432, %442, !dbg !946
  %handler_result58 = call double @fSubHandlerDouble(double %439, double %443), !dbg !947
  %444 = sitofp i32 %430 to double, !dbg !947
  %handler_result59 = call double @fAddHandlerDouble(double %444, double -1.000000e+00), !dbg !948
  %445 = fmul double %handler_result59, %444, !dbg !948
  %446 = fdiv double %handler_result58, %445, !dbg !949
  tail call void @llvm.dbg.value(metadata double %446, metadata !626, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata double %431, metadata !624, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata double %446, metadata !625, metadata !DIExpression()), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %430, metadata !621, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !926
  %447 = add nsw i32 %430, -1, !dbg !932
  tail call void @llvm.dbg.value(metadata i32 %447, metadata !621, metadata !DIExpression()), !dbg !926
  %448 = icmp sgt i32 %447, %1, !dbg !934
  br i1 %448, label %429, label %449, !dbg !936, !llvm.loop !950

449:                                              ; preds = %429, %420
  %450 = phi double [ %423, %420 ], [ %431, %429 ], !dbg !928
  %451 = phi double [ %426, %420 ], [ %446, %429 ], !dbg !928
  tail call void @llvm.dbg.value(metadata double %450, metadata !616, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %451, metadata !615, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double poison, metadata !617, metadata !DIExpression()), !dbg !926
  %452 = icmp slt i32 %422, %0, !dbg !952
  br i1 %452, label %453, label %513, !dbg !954

453:                                              ; preds = %449
  %handler_result60 = call double @fAddHandlerDouble(double %424, double %2), !dbg !955
  %454 = fmul double %handler_result60, %91, !dbg !955
  %455 = fmul double %454, %451, !dbg !956
  %456 = sub nsw i32 %422, %1, !dbg !957
  %457 = sitofp i32 %456 to double, !dbg !958
  %458 = fmul double %457, %2, !dbg !959
  %459 = fmul double %458, %450, !dbg !960
  %handler_result61 = call double @fAddHandlerDouble(double %459, double %455), !dbg !961
  %460 = mul nsw i32 %422, %1, !dbg !961
  %461 = sitofp i32 %460 to double, !dbg !962
  %462 = fdiv double %handler_result61, %461, !dbg !963
  tail call void @llvm.dbg.value(metadata double %462, metadata !617, metadata !DIExpression()), !dbg !926
  %463 = add nsw i32 %422, 1, !dbg !964
  %464 = icmp slt i32 %463, %0, !dbg !966
  br i1 %464, label %465, label %513, !dbg !967

465:                                              ; preds = %453
  %466 = xor i32 %422, -1, !dbg !968
  %467 = add i32 %466, %0, !dbg !968
  %468 = add i32 %0, -2, !dbg !968
  %469 = and i32 %467, 1, !dbg !968
  %470 = icmp eq i32 %469, 0, !dbg !968
  br i1 %470, label %482, label %471, !dbg !968

471:                                              ; preds = %465
  tail call void @llvm.dbg.value(metadata i32 %463, metadata !621, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %462, metadata !619, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %451, metadata !618, metadata !DIExpression()), !dbg !926
  %472 = sub nsw i32 %1, %463, !dbg !971
  %473 = sitofp i32 %472 to double, !dbg !974
  %474 = fmul double %451, %473, !dbg !975
  %475 = shl nsw i32 %463, 1, !dbg !976
  %476 = sub nsw i32 %475, %1, !dbg !977
  %477 = sitofp i32 %476 to double, !dbg !978
  %handler_result62 = call double @fAddHandlerDouble(double %477, double %2), !dbg !979
  %478 = fmul double %462, %handler_result62, !dbg !979
  %handler_result63 = call double @fAddHandlerDouble(double %474, double %478), !dbg !980
  %479 = sitofp i32 %463 to double, !dbg !980
  %480 = fdiv double %handler_result63, %479, !dbg !981
  tail call void @llvm.dbg.value(metadata double %480, metadata !620, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %462, metadata !618, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %480, metadata !619, metadata !DIExpression()), !dbg !926
  %481 = add nsw i32 %422, 2, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %481, metadata !621, metadata !DIExpression()), !dbg !926
  br label %482, !dbg !968

482:                                              ; preds = %471, %465
  %483 = phi double [ undef, %465 ], [ %480, %471 ]
  %484 = phi i32 [ %463, %465 ], [ %481, %471 ]
  %485 = phi double [ %462, %465 ], [ %480, %471 ]
  %486 = phi double [ %451, %465 ], [ %462, %471 ]
  %487 = icmp eq i32 %468, %422, !dbg !968
  br i1 %487, label %513, label %488, !dbg !968

488:                                              ; preds = %488, %482
  %489 = phi i32 [ %511, %488 ], [ %484, %482 ]
  %490 = phi double [ %510, %488 ], [ %485, %482 ]
  %491 = phi double [ %500, %488 ], [ %486, %482 ]
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !621, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %490, metadata !619, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %491, metadata !618, metadata !DIExpression()), !dbg !926
  %492 = sub nsw i32 %1, %489, !dbg !971
  %493 = sitofp i32 %492 to double, !dbg !974
  %494 = fmul double %491, %493, !dbg !975
  %495 = shl nsw i32 %489, 1, !dbg !976
  %496 = sub nsw i32 %495, %1, !dbg !977
  %497 = sitofp i32 %496 to double, !dbg !978
  %handler_result64 = call double @fAddHandlerDouble(double %497, double %2), !dbg !979
  %498 = fmul double %490, %handler_result64, !dbg !979
  %handler_result65 = call double @fAddHandlerDouble(double %494, double %498), !dbg !980
  %499 = sitofp i32 %489 to double, !dbg !980
  %500 = fdiv double %handler_result65, %499, !dbg !981
  tail call void @llvm.dbg.value(metadata double %500, metadata !620, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %490, metadata !618, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %500, metadata !619, metadata !DIExpression()), !dbg !926
  %501 = add nsw i32 %489, 1, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %501, metadata !621, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %501, metadata !621, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %500, metadata !619, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %490, metadata !618, metadata !DIExpression()), !dbg !926
  %502 = sub nsw i32 %1, %501, !dbg !971
  %503 = sitofp i32 %502 to double, !dbg !974
  %504 = fmul double %490, %503, !dbg !975
  %505 = shl nsw i32 %501, 1, !dbg !976
  %506 = sub nsw i32 %505, %1, !dbg !977
  %507 = sitofp i32 %506 to double, !dbg !978
  %handler_result66 = call double @fAddHandlerDouble(double %507, double %2), !dbg !979
  %508 = fmul double %500, %handler_result66, !dbg !979
  %handler_result67 = call double @fAddHandlerDouble(double %504, double %508), !dbg !980
  %509 = sitofp i32 %501 to double, !dbg !980
  %510 = fdiv double %handler_result67, %509, !dbg !981
  tail call void @llvm.dbg.value(metadata double %510, metadata !620, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %500, metadata !618, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %510, metadata !619, metadata !DIExpression()), !dbg !926
  %511 = add nsw i32 %489, 2, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %511, metadata !621, metadata !DIExpression()), !dbg !926
  %512 = icmp eq i32 %511, %0, !dbg !983
  br i1 %512, label %513, label %488, !dbg !968, !llvm.loop !984

513:                                              ; preds = %488, %482, %453, %449
  %514 = phi double [ %451, %449 ], [ %462, %453 ], [ %483, %482 ], [ %510, %488 ], !dbg !986
  tail call void @llvm.dbg.value(metadata double %514, metadata !619, metadata !DIExpression()), !dbg !926
  store double %514, ptr %3, align 8, !dbg !987, !tbaa !118
  %handler_result68 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !988
  %515 = fmul double %handler_result68, 0x3CB0000000000000, !dbg !988
  %516 = tail call double @llvm.fabs.f64(double %514), !dbg !989
  %517 = fmul double %515, %516, !dbg !990
  %518 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !991
  %519 = sub nsw i32 %1, %0, !dbg !992
  %520 = sitofp i32 %519 to double, !dbg !993
  %521 = tail call double @llvm.fabs.f64(double %520), !dbg !994
  %handler_result69 = call double @fAddHandlerDouble(double %521, double 1.000000e+00), !dbg !995
  %522 = fmul double %handler_result69, %517, !dbg !995
  store double %522, ptr %518, align 8, !dbg !995, !tbaa !125
  br label %523

523:                                              ; preds = %513, %410, %366, %310, %300, %223, %156, %98, %78, %55, %37, %24, %18, %14
  %524 = phi i32 [ %15, %14 ], [ %20, %18 ], [ %33, %24 ], [ %38, %37 ], [ %56, %55 ], [ %80, %78 ], [ %101, %98 ], [ %107, %156 ], [ %242, %223 ], [ 0, %300 ], [ 16, %310 ], [ 0, %366 ], [ 0, %410 ], [ 0, %513 ], !dbg !996
  ret i32 %524, !dbg !997
}

declare !dbg !998 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1001 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1017, metadata !DIExpression(), metadata !1063, metadata ptr %5, metadata !DIExpression()), !dbg !1064
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1065
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1028, metadata !DIExpression(), metadata !1065, metadata ptr %6, metadata !DIExpression()), !dbg !1064
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1033, metadata !DIExpression(), metadata !1066, metadata ptr %7, metadata !DIExpression()), !dbg !1067
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1068
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1036, metadata !DIExpression(), metadata !1068, metadata ptr %8, metadata !DIExpression()), !dbg !1069
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1047, metadata !DIExpression(), metadata !1070, metadata ptr %9, metadata !DIExpression()), !dbg !1071
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1072
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1052, metadata !DIExpression(), metadata !1072, metadata ptr %10, metadata !DIExpression()), !dbg !1073
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1074
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1058, metadata !DIExpression(), metadata !1074, metadata ptr %11, metadata !DIExpression()), !dbg !1075
  tail call void @llvm.dbg.value(metadata double %0, metadata !1003, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata double %1, metadata !1004, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata double %2, metadata !1005, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1006, metadata !DIExpression()), !dbg !1076
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1007, metadata !DIExpression()), !dbg !1076
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1078
  %12 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !1078
  tail call void @llvm.dbg.value(metadata double %12, metadata !1008, metadata !DIExpression()), !dbg !1076
  %handler_result2 = call double @fAddHandlerDouble(double %1, double 5.000000e-01), !dbg !1079
  %13 = tail call double @llvm.floor.f64(double %handler_result2), !dbg !1079
  tail call void @llvm.dbg.value(metadata double %13, metadata !1009, metadata !DIExpression()), !dbg !1076
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !1080
  %14 = tail call double @llvm.floor.f64(double %handler_result3), !dbg !1080
  tail call void @llvm.dbg.value(metadata double %14, metadata !1010, metadata !DIExpression()), !dbg !1076
  %handler_result4 = call double @fSubHandlerDouble(double %0, double %12), !dbg !1081
  %15 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !1081
  %16 = fcmp olt double %15, 0x3D19000000000000, !dbg !1082
  %17 = fcmp ogt double %12, 0xC1E0000000000000
  %18 = and i1 %17, %16, !dbg !1083
  %19 = fcmp olt double %12, 0x41DFFFFFFFC00000
  %20 = and i1 %19, %18, !dbg !1083
  tail call void @llvm.dbg.value(metadata i1 %20, metadata !1011, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %handler_result5 = call double @fSubHandlerDouble(double %1, double %13), !dbg !1084
  %21 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !1084
  %22 = fcmp olt double %21, 0x3D19000000000000, !dbg !1085
  %23 = fcmp ogt double %13, 0xC1E0000000000000
  %24 = and i1 %23, %22, !dbg !1086
  %25 = fcmp olt double %13, 0x41DFFFFFFFC00000
  %26 = and i1 %25, %24, !dbg !1086
  tail call void @llvm.dbg.value(metadata i1 %26, metadata !1012, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result, double %14), !dbg !1087
  %27 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !1087
  %28 = fcmp olt double %27, 0x3D19000000000000, !dbg !1088
  %29 = fcmp ogt double %14, 0xC1E0000000000000
  %30 = and i1 %29, %28, !dbg !1089
  %31 = fcmp olt double %14, 0x41DFFFFFFFC00000
  %32 = and i1 %31, %30, !dbg !1089
  tail call void @llvm.dbg.value(metadata i1 %32, metadata !1013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %33 = fcmp olt double %1, -1.000000e-01, !dbg !1090
  %34 = and i1 %33, %26, !dbg !1091
  tail call void @llvm.dbg.value(metadata i1 %34, metadata !1014, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %35 = fcmp olt double %0, -1.000000e-01, !dbg !1092
  %36 = and i1 %35, %20, !dbg !1093
  tail call void @llvm.dbg.value(metadata i1 %36, metadata !1015, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %37 = fcmp olt double %handler_result, -1.000000e-01, !dbg !1094
  %38 = and i1 %37, %32, !dbg !1095
  tail call void @llvm.dbg.value(metadata i1 %38, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1076
  %39 = fcmp oeq double %2, 0.000000e+00, !dbg !1096
  br i1 %39, label %40, label %42, !dbg !1097

40:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1098, !tbaa !118
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1100
  store double 0.000000e+00, ptr %41, align 8, !dbg !1101, !tbaa !125
  br label %197, !dbg !1102

42:                                               ; preds = %4
  %43 = fcmp oeq double %1, 0.000000e+00, !dbg !1103
  br i1 %43, label %44, label %46, !dbg !1104

44:                                               ; preds = %42
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1105, !tbaa !118
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1105
  store double 0x7FF8000000000000, ptr %45, align 8, !dbg !1105, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1871, i32 noundef 1) #8, !dbg !1108
  br label %197, !dbg !1108

46:                                               ; preds = %42
  %47 = fcmp oeq double %0, 0.000000e+00, !dbg !1110
  br i1 %47, label %48, label %50, !dbg !1111

48:                                               ; preds = %46
  store double 1.000000e+00, ptr %3, align 8, !dbg !1112, !tbaa !118
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1114
  store double 0.000000e+00, ptr %49, align 8, !dbg !1115, !tbaa !125
  br label %197, !dbg !1116

50:                                               ; preds = %46
  %51 = fcmp oeq double %0, %1, !dbg !1117
  br i1 %51, label %52, label %54, !dbg !1118

52:                                               ; preds = %50
  %53 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #8, !dbg !1119
  br label %197, !dbg !1121

54:                                               ; preds = %50
  %55 = tail call double @llvm.fabs.f64(double %1), !dbg !1122
  %56 = fcmp olt double %55, 0x3D19000000000000, !dbg !1123
  %57 = tail call double @llvm.fabs.f64(double %0)
  %58 = fcmp olt double %57, 0x3D19000000000000
  %59 = and i1 %58, %56, !dbg !1124
  br i1 %59, label %60, label %84, !dbg !1124

60:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1125
  %61 = call i32 @gsl_sf_expm1_e(double noundef %2, ptr noundef nonnull %5) #8, !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1024, metadata !DIExpression()), !dbg !1064
  %62 = fcmp ogt double %0, 0.000000e+00, !dbg !1127
  tail call void @llvm.dbg.value(metadata double poison, metadata !1025, metadata !DIExpression()), !dbg !1064
  %63 = fcmp ogt double %1, 0.000000e+00, !dbg !1128
  %64 = select i1 %63, double 1.000000e+00, double -1.000000e+00, !dbg !1129
  tail call void @llvm.dbg.value(metadata double %64, metadata !1026, metadata !DIExpression()), !dbg !1064
  %65 = fdiv double %0, %1, !dbg !1130
  %66 = call double @llvm.fabs.f64(double %65), !dbg !1131
  %handler_result8 = call double @callHandler(i32 12, double %66, double %66), !dbg !1132
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1027, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1132
  %67 = call double @llvm.fabs.f64(double %handler_result8), !dbg !1133
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !1134
  %69 = fneg double %64, !dbg !1135
  %70 = select i1 %62, double %64, double %69, !dbg !1135
  %71 = load double, ptr %5, align 8, !dbg !1136, !tbaa !118
  %72 = fmul double %70, %71, !dbg !1137
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1138
  %74 = load double, ptr %73, align 8, !dbg !1138, !tbaa !125
  %75 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result8, double noundef %68, double noundef %72, double noundef %74, ptr noundef nonnull %6) #8, !dbg !1139
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !1029, metadata !DIExpression()), !dbg !1064
  %76 = load double, ptr %6, align 8, !dbg !1140
  %77 = fcmp oeq double %76, 0x7FEFFFFFFFFFFFFF, !dbg !1141
  %handler_result7 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !1142
  %78 = select i1 %77, double %76, double %handler_result7, !dbg !1142
  store double %78, ptr %3, align 8, !dbg !1143, !tbaa !118
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1144
  %80 = load double, ptr %79, align 8, !dbg !1144, !tbaa !125
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1145
  store double %80, ptr %81, align 8, !dbg !1146, !tbaa !125
  %82 = icmp eq i32 %75, 0, !dbg !1147
  %83 = select i1 %82, i32 %61, i32 %75, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1148
  br label %197

84:                                               ; preds = %54
  br i1 %56, label %85, label %102, !dbg !1149

85:                                               ; preds = %84
  %86 = fmul double %0, %2, !dbg !1150
  %87 = tail call double @llvm.fabs.f64(double %86), !dbg !1151
  %88 = fcmp olt double %87, 1.000000e+00, !dbg !1152
  br i1 %88, label %89, label %102, !dbg !1153

89:                                               ; preds = %85
  %90 = fmul double %1, 5.000000e-01, !dbg !1154
  %91 = fdiv double 1.000000e+00, %90, !dbg !1155
  tail call void @llvm.dbg.value(metadata double %91, metadata !1030, metadata !DIExpression()), !dbg !1067
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1156
  %92 = call fastcc i32 @hyperg_1F1_renorm_b0(double noundef %0, double noundef %2, ptr noundef nonnull %7), !dbg !1157
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !1034, metadata !DIExpression()), !dbg !1067
  %93 = fmul double %91, 0x3CC0000000000000, !dbg !1158
  %94 = load double, ptr %7, align 8, !dbg !1159, !tbaa !118
  %95 = fmul double %94, 5.000000e-01, !dbg !1160
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1161
  %97 = load double, ptr %96, align 8, !dbg !1161, !tbaa !125
  %98 = fmul double %97, 5.000000e-01, !dbg !1162
  %99 = call i32 @gsl_sf_multiply_err_e(double noundef %91, double noundef %93, double noundef %95, double noundef %98, ptr noundef %3) #8, !dbg !1163
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1035, metadata !DIExpression()), !dbg !1067
  %100 = icmp eq i32 %99, 0, !dbg !1164
  %101 = select i1 %100, i32 %92, i32 %99, !dbg !1164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1165
  br label %197

102:                                              ; preds = %85, %84
  %103 = and i1 %20, %26, !dbg !1166
  br i1 %103, label %104, label %108, !dbg !1166

104:                                              ; preds = %102
  %105 = fptosi double %12 to i32, !dbg !1167
  %106 = fptosi double %13 to i32, !dbg !1169
  %107 = tail call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef %105, i32 noundef %106, double noundef %2, ptr noundef %3), !dbg !1170
  br label %197, !dbg !1171

108:                                              ; preds = %102
  %109 = xor i1 %34, true, !dbg !1172
  %110 = fcmp ogt double %0, %1
  %111 = and i1 %110, %36
  %112 = select i1 %109, i1 true, i1 %111, !dbg !1172
  br i1 %112, label %115, label %113, !dbg !1172

113:                                              ; preds = %108
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1173, !tbaa !118
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1173
  store double 0x7FF8000000000000, ptr %114, align 8, !dbg !1173, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1925, i32 noundef 1) #8, !dbg !1176
  br label %197, !dbg !1176

115:                                              ; preds = %108
  br i1 %36, label %116, label %119, !dbg !1178

116:                                              ; preds = %115
  %117 = fptosi double %12 to i32, !dbg !1179
  %118 = tail call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %117, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1181
  br label %197, !dbg !1182

119:                                              ; preds = %115
  %120 = fcmp ogt double %1, 0.000000e+00, !dbg !1183
  br i1 %120, label %121, label %161, !dbg !1184

121:                                              ; preds = %119
  %122 = fcmp oge double %0, -1.000000e+00, !dbg !1185
  %123 = fcmp ole double %0, 1.000000e+00
  %124 = and i1 %122, %123, !dbg !1186
  br i1 %124, label %125, label %127, !dbg !1186

125:                                              ; preds = %121
  %126 = tail call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1187
  br label %197, !dbg !1189

127:                                              ; preds = %121
  br i1 %38, label %128, label %140, !dbg !1190

128:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1191
  %129 = fptosi double %14 to i32, !dbg !1192
  %130 = fneg double %2, !dbg !1193
  %131 = call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %129, double noundef %1, double noundef %130, ptr noundef nonnull %8), !dbg !1194
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !1045, metadata !DIExpression()), !dbg !1069
  %132 = call double @llvm.fabs.f64(double %2), !dbg !1195
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !1196
  %134 = load double, ptr %8, align 8, !dbg !1197, !tbaa !118
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1198
  %136 = load double, ptr %135, align 8, !dbg !1198, !tbaa !125
  %137 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %133, double noundef %134, double noundef %136, ptr noundef %3) #8, !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !1046, metadata !DIExpression()), !dbg !1069
  %138 = icmp eq i32 %137, 0, !dbg !1200
  %139 = select i1 %138, i32 %131, i32 %137, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1201
  br label %197

140:                                              ; preds = %127
  %141 = fcmp olt double %0, 0.000000e+00, !dbg !1202
  br i1 %141, label %142, label %155, !dbg !1203

142:                                              ; preds = %140
  %143 = tail call double @llvm.fabs.f64(double %2), !dbg !1204
  %144 = fcmp olt double %143, 0x40962E42FEFA39EF, !dbg !1205
  br i1 %144, label %145, label %155, !dbg !1206

145:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1207
  %146 = fneg double %2, !dbg !1208
  %147 = call fastcc i32 @hyperg_1F1_ab_pos(double noundef %handler_result, double noundef %1, double noundef %146, ptr noundef nonnull %9), !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !1050, metadata !DIExpression()), !dbg !1071
  %148 = fmul double %143, 0x3CB0000000000000, !dbg !1210
  %149 = load double, ptr %9, align 8, !dbg !1211, !tbaa !118
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1212
  %151 = load double, ptr %150, align 8, !dbg !1212, !tbaa !125
  %152 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %148, double noundef %149, double noundef %151, ptr noundef %3) #8, !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !1051, metadata !DIExpression()), !dbg !1071
  %153 = icmp eq i32 %152, 0, !dbg !1214
  %154 = select i1 %153, i32 %147, i32 %152, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1215
  br label %197

155:                                              ; preds = %142, %140
  %156 = fcmp ogt double %0, 0.000000e+00, !dbg !1216
  br i1 %156, label %157, label %159, !dbg !1218

157:                                              ; preds = %155
  %158 = tail call fastcc i32 @hyperg_1F1_ab_pos(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1219
  br label %197, !dbg !1221

159:                                              ; preds = %155
  %160 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !1222
  br label %197, !dbg !1224

161:                                              ; preds = %119
  %162 = fcmp olt double %2, 0.000000e+00
  %163 = and i1 %162, %38, !dbg !1225
  br i1 %163, label %164, label %182, !dbg !1225

164:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1226
  %165 = fcmp olt double %0, 0.000000e+00, !dbg !1227
  %166 = fptosi double %14 to i32, !dbg !1229
  %167 = fneg double %2, !dbg !1229
  br i1 %165, label %168, label %170, !dbg !1230

168:                                              ; preds = %164
  %169 = call fastcc i32 @hyperg_1F1_a_negint_poly(i32 noundef %166, double noundef %1, double noundef %167, ptr noundef nonnull %10), !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !1056, metadata !DIExpression()), !dbg !1073
  br label %172, !dbg !1233

170:                                              ; preds = %164
  %171 = call fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %166, double noundef %1, double noundef %167, ptr noundef nonnull %10), !dbg !1234
  tail call void @llvm.dbg.value(metadata i32 %171, metadata !1056, metadata !DIExpression()), !dbg !1073
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ], !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %173, metadata !1056, metadata !DIExpression()), !dbg !1073
  %174 = call double @llvm.fabs.f64(double %2), !dbg !1236
  %175 = fmul double %174, 0x3CB0000000000000, !dbg !1237
  %176 = load double, ptr %10, align 8, !dbg !1238, !tbaa !118
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !1239
  %178 = load double, ptr %177, align 8, !dbg !1239, !tbaa !125
  %179 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %175, double noundef %176, double noundef %178, ptr noundef %3) #8, !dbg !1240
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !1057, metadata !DIExpression()), !dbg !1073
  %180 = icmp eq i32 %179, 0, !dbg !1241
  %181 = select i1 %180, i32 %173, i32 %179, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1242
  br label %197

182:                                              ; preds = %161
  %183 = fcmp ogt double %0, 0.000000e+00, !dbg !1243
  br i1 %183, label %184, label %195, !dbg !1244

184:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1245
  %185 = fneg double %2, !dbg !1246
  %186 = call fastcc i32 @hyperg_1F1_ab_neg(double noundef %handler_result, double noundef %1, double noundef %185, ptr noundef nonnull %11), !dbg !1247
  tail call void @llvm.dbg.value(metadata i32 %186, metadata !1061, metadata !DIExpression()), !dbg !1075
  %187 = call double @llvm.fabs.f64(double %2), !dbg !1248
  %188 = fmul double %187, 0x3CB0000000000000, !dbg !1249
  %189 = load double, ptr %11, align 8, !dbg !1250, !tbaa !118
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1251
  %191 = load double, ptr %190, align 8, !dbg !1251, !tbaa !125
  %192 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %188, double noundef %189, double noundef %191, ptr noundef %3) #8, !dbg !1252
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !1062, metadata !DIExpression()), !dbg !1075
  %193 = icmp eq i32 %192, 0, !dbg !1253
  %194 = select i1 %193, i32 %186, i32 %192, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1254
  br label %197

195:                                              ; preds = %182
  %196 = tail call fastcc i32 @hyperg_1F1_ab_neg(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1255
  br label %197, !dbg !1257

197:                                              ; preds = %195, %184, %172, %159, %157, %145, %128, %125, %116, %113, %104, %89, %60, %52, %48, %44, %40
  %198 = phi i32 [ 0, %40 ], [ 1, %44 ], [ 0, %48 ], [ %53, %52 ], [ %83, %60 ], [ %101, %89 ], [ %107, %104 ], [ %118, %116 ], [ %126, %125 ], [ %139, %128 ], [ %154, %145 ], [ %158, %157 ], [ %160, %159 ], [ %181, %172 ], [ %194, %184 ], [ %196, %195 ], [ 1, %113 ], !dbg !1258
  ret i32 %198, !dbg !1259
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

declare !dbg !1260 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1261 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_renorm_b0(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !1265 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1298
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1276, metadata !DIExpression(), metadata !1298, metadata ptr %4, metadata !DIExpression()), !dbg !1299
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1286, metadata !DIExpression(), metadata !1300, metadata ptr %5, metadata !DIExpression()), !dbg !1301
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1302
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1296, metadata !DIExpression(), metadata !1302, metadata ptr %6, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata double %0, metadata !1269, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata double %1, metadata !1270, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1271, metadata !DIExpression()), !dbg !1304
  %7 = fmul double %0, %1, !dbg !1305
  tail call void @llvm.dbg.value(metadata double %7, metadata !1272, metadata !DIExpression()), !dbg !1304
  %8 = fcmp ogt double %7, 0.000000e+00, !dbg !1306
  br i1 %8, label %9, label %40, !dbg !1307

9:                                                ; preds = %3
  %10 = tail call double @sqrt(double noundef %7) #8, !dbg !1308
  tail call void @llvm.dbg.value(metadata double %10, metadata !1273, metadata !DIExpression()), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1309
  %11 = fmul double %10, 2.000000e+00, !dbg !1310
  %12 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %11, ptr noundef nonnull %4) #8, !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1277, metadata !DIExpression()), !dbg !1299
  %13 = load double, ptr %4, align 8, !dbg !1312, !tbaa !118
  %14 = fcmp ugt double %13, 0.000000e+00, !dbg !1313
  br i1 %14, label %17, label %15, !dbg !1314

15:                                               ; preds = %9
  %16 = call i32 @llvm.umax.i32(i32 %12, i32 1), !dbg !1315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1317
  br label %38, !dbg !1318

17:                                               ; preds = %9
  %18 = fmul double %0, 0x3FE5555555555555, !dbg !1319
  %19 = fmul double %0, 4.000000e+00, !dbg !1320
  %20 = fdiv double %1, %19, !dbg !1321
  %21 = call double @pow(double noundef %20, double noundef 1.500000e+00) #8, !dbg !1322
  %22 = fmul double %18, %21, !dbg !1323
  %23 = call double @gsl_sf_bessel_In_scaled(i32 noundef 2, double noundef %11) #8, !dbg !1324
  %24 = fmul double %22, %23, !dbg !1325
  tail call void @llvm.dbg.value(metadata double %24, metadata !1278, metadata !DIExpression()), !dbg !1326
  %25 = fmul double %1, 5.000000e-01, !dbg !1327
  %handler_result12 = call double @callHandler(i32 12, double %7, double %7), !dbg !1328
  %26 = fmul double %handler_result12, 5.000000e-01, !dbg !1328
  %handler_result = call double @fAddHandlerDouble(double %25, double %26), !dbg !1329
  %27 = call double @llvm.fabs.f64(double %11), !dbg !1329
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %handler_result), !dbg !1330
  %28 = load double, ptr %4, align 8, !dbg !1330, !tbaa !118
  %handler_result2 = call double @fAddHandlerDouble(double %24, double %28), !dbg !1331
  %handler_result13 = call double @callHandler(i32 12, double %handler_result2, double %handler_result2), !dbg !1332
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result13, double %handler_result1), !dbg !1332
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1281, metadata !DIExpression()), !dbg !1326
  %29 = call double @llvm.fabs.f64(double %1), !dbg !1332
  %30 = fmul double %29, 1.500000e+00, !dbg !1333
  %handler_result4 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !1334
  %31 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !1334
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1335
  %33 = load double, ptr %32, align 8, !dbg !1335, !tbaa !125
  %handler_result5 = call double @fAddHandlerDouble(double %24, double %33), !dbg !1336
  %34 = load double, ptr %4, align 8, !dbg !1336, !tbaa !118
  %35 = fdiv double %handler_result5, %34, !dbg !1337
  %36 = call double @llvm.fabs.f64(double %35), !dbg !1338
  %handler_result6 = call double @fAddHandlerDouble(double %31, double %36), !dbg !1339
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1282, metadata !DIExpression()), !dbg !1326
  %37 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result3, double noundef %handler_result6, ptr noundef %2) #8, !dbg !1339
  br label %38

38:                                               ; preds = %17, %15
  %39 = phi i32 [ %16, %15 ], [ %37, %17 ], !dbg !1340
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1341
  br label %74

40:                                               ; preds = %3
  %41 = fcmp oeq double %7, 0.000000e+00, !dbg !1342
  br i1 %41, label %42, label %43, !dbg !1343

42:                                               ; preds = %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1344
  br label %74, !dbg !1346

43:                                               ; preds = %40
  %44 = fneg double %7, !dbg !1347
  %45 = tail call double @sqrt(double noundef %44) #8, !dbg !1348
  tail call void @llvm.dbg.value(metadata double %45, metadata !1283, metadata !DIExpression()), !dbg !1301
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1349
  %46 = fmul double %45, 2.000000e+00, !dbg !1350
  %47 = call i32 @gsl_sf_bessel_J1_e(double noundef %46, ptr noundef nonnull %5) #8, !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1287, metadata !DIExpression()), !dbg !1301
  %48 = load double, ptr %5, align 8, !dbg !1352, !tbaa !118
  %49 = fcmp ugt double %48, 0.000000e+00, !dbg !1353
  br i1 %49, label %52, label %50, !dbg !1354

50:                                               ; preds = %43
  %51 = call i32 @llvm.umax.i32(i32 %47, i32 1), !dbg !1355
  br label %69, !dbg !1357

52:                                               ; preds = %43
  %53 = fmul double %1, 5.000000e-01, !dbg !1358
  tail call void @llvm.dbg.value(metadata double %53, metadata !1288, metadata !DIExpression()), !dbg !1303
  %handler_result14 = call double @callHandler(i32 12, double %44, double %44), !dbg !1359
  %54 = fmul double %handler_result14, 5.000000e-01, !dbg !1359
  tail call void @llvm.dbg.value(metadata double %54, metadata !1291, metadata !DIExpression()), !dbg !1303
  %55 = call double @llvm.fabs.f64(double %1), !dbg !1360
  tail call void @llvm.dbg.value(metadata double %55, metadata !1292, metadata !DIExpression()), !dbg !1303
  %56 = load double, ptr %5, align 8, !dbg !1361, !tbaa !118
  %handler_result15 = call double @callHandler(i32 12, double %56, double %56), !dbg !1362
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1293, metadata !DIExpression()), !dbg !1303
  %handler_result7 = call double @fAddHandlerDouble(double %53, double %54), !dbg !1362
  %handler_result8 = call double @fAddHandlerDouble(double %55, double %handler_result7), !dbg !1363
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result15, double %handler_result8), !dbg !1364
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1294, metadata !DIExpression()), !dbg !1303
  %57 = fmul double %55, 1.500000e+00, !dbg !1364
  %handler_result10 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !1365
  %58 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !1365
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1366
  %60 = load double, ptr %59, align 8, !dbg !1366, !tbaa !125
  %61 = load double, ptr %5, align 8, !dbg !1367, !tbaa !118
  %62 = fdiv double %60, %61, !dbg !1368
  %63 = call double @llvm.fabs.f64(double %62), !dbg !1369
  %handler_result11 = call double @fAddHandlerDouble(double %58, double %63), !dbg !1370
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1295, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1370
  %64 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result9, double noundef %handler_result11, ptr noundef nonnull %6) #8, !dbg !1371
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !1297, metadata !DIExpression()), !dbg !1303
  %65 = load double, ptr %6, align 8, !dbg !1372, !tbaa !118
  %66 = fneg double %65, !dbg !1373
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1374
  %68 = load double, ptr %67, align 8, !dbg !1374, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1375
  br label %69

69:                                               ; preds = %52, %50
  %70 = phi double [ %66, %52 ], [ 0.000000e+00, %50 ], !dbg !1376
  %71 = phi double [ %68, %52 ], [ 0.000000e+00, %50 ], !dbg !1376
  %72 = phi i32 [ %64, %52 ], [ %51, %50 ], !dbg !1376
  store double %70, ptr %2, align 8, !dbg !1376
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1376
  store double %71, ptr %73, align 8, !dbg !1376
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1377
  br label %74

74:                                               ; preds = %69, %42, %38
  %75 = phi i32 [ %39, %38 ], [ 0, %42 ], [ %72, %69 ], !dbg !1378
  ret i32 %75, !dbg !1379
}

declare !dbg !1380 i32 @gsl_sf_multiply_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_a_negint_lag(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1382 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1389, metadata !DIExpression(), metadata !1418, metadata ptr %5, metadata !DIExpression()), !dbg !1419
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1391, metadata !DIExpression(), metadata !1420, metadata ptr %6, metadata !DIExpression()), !dbg !1421
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1394, metadata !DIExpression(), metadata !1422, metadata ptr %7, metadata !DIExpression()), !dbg !1421
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1395, metadata !DIExpression(), metadata !1423, metadata ptr %8, metadata !DIExpression()), !dbg !1421
  %9 = alloca double, align 8, !DIAssignID !1424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1396, metadata !DIExpression(), metadata !1424, metadata ptr %9, metadata !DIExpression()), !dbg !1421
  %10 = alloca double, align 8, !DIAssignID !1425
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1397, metadata !DIExpression(), metadata !1425, metadata ptr %10, metadata !DIExpression()), !dbg !1421
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1404, metadata !DIExpression(), metadata !1426, metadata ptr %11, metadata !DIExpression()), !dbg !1427
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1410, metadata !DIExpression(), metadata !1428, metadata ptr %12, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1384, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata double %1, metadata !1385, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata double %2, metadata !1386, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1387, metadata !DIExpression()), !dbg !1419
  %13 = sub nsw i32 0, %0, !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1388, metadata !DIExpression()), !dbg !1419
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1431
  %handler_result = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !1432
  %14 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %13, double noundef %handler_result, double noundef %2, ptr noundef nonnull %5) #8, !dbg !1432
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1390, metadata !DIExpression()), !dbg !1419
  %15 = fcmp olt double %1, 0.000000e+00, !dbg !1433
  br i1 %15, label %16, label %50, !dbg !1434

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1435
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1436
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !1438
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8, !dbg !1438
  %17 = call i32 @gsl_sf_lnfact_e(i32 noundef %13, ptr noundef nonnull %6) #8, !dbg !1439
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1398, metadata !DIExpression()), !dbg !1421
  %18 = sitofp i32 %13 to double, !dbg !1440
  %handler_result1 = call double @fAddHandlerDouble(double %18, double %1), !dbg !1441
  %19 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result1, ptr noundef nonnull %7, ptr noundef nonnull %9) #8, !dbg !1441
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1399, metadata !DIExpression()), !dbg !1421
  %20 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10) #8, !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1400, metadata !DIExpression()), !dbg !1421
  %21 = load double, ptr %6, align 8, !dbg !1443, !tbaa !118
  %22 = load double, ptr %7, align 8, !dbg !1444, !tbaa !118
  %23 = load double, ptr %8, align 8, !dbg !1445, !tbaa !118
  %handler_result2 = call double @fSubHandlerDouble(double %22, double %23), !dbg !1446
  %handler_result3 = call double @fSubHandlerDouble(double %21, double %handler_result2), !dbg !1447
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1401, metadata !DIExpression()), !dbg !1421
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1447
  %25 = load double, ptr %24, align 8, !dbg !1447, !tbaa !125
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1448
  %27 = load double, ptr %26, align 8, !dbg !1448, !tbaa !125
  %handler_result4 = call double @fAddHandlerDouble(double %25, double %27), !dbg !1449
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1449
  %29 = load double, ptr %28, align 8, !dbg !1449, !tbaa !125
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %29), !dbg !1450
  %30 = call double @llvm.fabs.f64(double %handler_result3), !dbg !1450
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !1451
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %31), !dbg !1452
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1402, metadata !DIExpression()), !dbg !1421
  %32 = load double, ptr %9, align 8, !dbg !1452, !tbaa !305
  %33 = load double, ptr %10, align 8, !dbg !1453, !tbaa !305
  %34 = fmul double %32, %33, !dbg !1454
  %35 = load double, ptr %5, align 8, !dbg !1455, !tbaa !118
  %36 = fmul double %34, %35, !dbg !1456
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1457
  %38 = load double, ptr %37, align 8, !dbg !1457, !tbaa !125
  %39 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result3, double noundef %handler_result6, double noundef %36, double noundef %38, ptr noundef %3) #8, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1403, metadata !DIExpression()), !dbg !1421
  %40 = icmp eq i32 %39, 0, !dbg !1459
  br i1 %40, label %41, label %48, !dbg !1459

41:                                               ; preds = %16
  %42 = icmp eq i32 %14, 0, !dbg !1459
  br i1 %42, label %43, label %48, !dbg !1459

43:                                               ; preds = %41
  %44 = icmp eq i32 %19, 0, !dbg !1459
  br i1 %44, label %45, label %48, !dbg !1459

45:                                               ; preds = %43
  %46 = icmp eq i32 %20, 0, !dbg !1459
  %47 = select i1 %46, i32 %17, i32 %20, !dbg !1459
  br label %48, !dbg !1459

48:                                               ; preds = %45, %43, %41, %16
  %49 = phi i32 [ %39, %16 ], [ %14, %41 ], [ %19, %43 ], [ %47, %45 ], !dbg !1459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1460
  br label %89

50:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1461
  %51 = sitofp i32 %13 to double, !dbg !1462
  %52 = call i32 @gsl_sf_lnbeta_e(double noundef %1, double noundef %51, ptr noundef nonnull %11) #8, !dbg !1463
  %53 = load double, ptr %11, align 8, !dbg !1464, !tbaa !118
  %54 = call double @llvm.fabs.f64(double %53), !dbg !1465
  %55 = fcmp olt double %54, 1.000000e-01, !dbg !1466
  br i1 %55, label %56, label %75, !dbg !1467

56:                                               ; preds = %50
  %57 = fmul double %51, 1.250000e+00, !dbg !1468
  %handler_result9 = call double @callHandler(i32 12, double %57, double %57), !dbg !1469
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1406, metadata !DIExpression()), !dbg !1429
  %58 = fmul double %handler_result9, 0x3CC0000000000000, !dbg !1469
  tail call void @llvm.dbg.value(metadata double %58, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1470
  %59 = call i32 @gsl_sf_beta_e(double noundef %1, double noundef %51, ptr noundef nonnull %12) #8, !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1411, metadata !DIExpression()), !dbg !1429
  %60 = load double, ptr %5, align 8, !dbg !1472, !tbaa !118
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1473
  %62 = load double, ptr %61, align 8, !dbg !1473, !tbaa !125
  %63 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result9, double noundef %58, double noundef %60, double noundef %62, ptr noundef %3) #8, !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1412, metadata !DIExpression()), !dbg !1429
  %64 = load double, ptr %12, align 8, !dbg !1475, !tbaa !118
  %65 = fdiv double %64, 1.250000e+00, !dbg !1476
  %66 = load double, ptr %3, align 8, !dbg !1477, !tbaa !118
  %67 = fmul double %66, %65, !dbg !1477
  store double %67, ptr %3, align 8, !dbg !1477, !tbaa !118
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1478
  %69 = load double, ptr %68, align 8, !dbg !1479, !tbaa !125
  %70 = fmul double %65, %69, !dbg !1479
  store double %70, ptr %68, align 8, !dbg !1479, !tbaa !125
  %71 = icmp eq i32 %63, 0, !dbg !1480
  %72 = icmp eq i32 %14, 0, !dbg !1480
  %73 = select i1 %72, i32 %59, i32 %14, !dbg !1480
  %74 = select i1 %71, i32 %73, i32 %63, !dbg !1480
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1481
  br label %87

75:                                               ; preds = %50
  %handler_result10 = call double @callHandler(i32 12, double %51, double %51), !dbg !1482
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1413, metadata !DIExpression()), !dbg !1483
  %76 = load double, ptr %11, align 8, !dbg !1482, !tbaa !118
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result10, double %76), !dbg !1484
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1415, metadata !DIExpression()), !dbg !1483
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !1484
  %78 = load double, ptr %77, align 8, !dbg !1484, !tbaa !125
  %79 = call double @llvm.fabs.f64(double %handler_result10), !dbg !1485
  %80 = fmul double %79, 0x3CC0000000000000, !dbg !1486
  %handler_result8 = call double @fAddHandlerDouble(double %78, double %80), !dbg !1487
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1416, metadata !DIExpression()), !dbg !1483
  %81 = load double, ptr %5, align 8, !dbg !1487, !tbaa !118
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1488
  %83 = load double, ptr %82, align 8, !dbg !1488, !tbaa !125
  %84 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result7, double noundef %handler_result8, double noundef %81, double noundef %83, ptr noundef %3) #8, !dbg !1489
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1417, metadata !DIExpression()), !dbg !1483
  %85 = icmp eq i32 %84, 0, !dbg !1490
  %86 = select i1 %85, i32 %14, i32 %84, !dbg !1490
  br label %87

87:                                               ; preds = %75, %56
  %88 = phi i32 [ %74, %56 ], [ %86, %75 ], !dbg !1491
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1492
  br label %89

89:                                               ; preds = %87, %48
  %90 = phi i32 [ %49, %48 ], [ %88, %87 ], !dbg !1493
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1494
  ret i32 %90, !dbg !1494
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1495 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1527
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1519, metadata !DIExpression(), metadata !1528, metadata ptr %6, metadata !DIExpression()), !dbg !1529
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1520, metadata !DIExpression(), metadata !1530, metadata ptr %7, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %0, metadata !1497, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %1, metadata !1498, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %2, metadata !1499, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1500, metadata !DIExpression()), !dbg !1531
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !1532
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1501, metadata !DIExpression()), !dbg !1531
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !1533
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1502, metadata !DIExpression()), !dbg !1531
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1534
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %1), !dbg !1535
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1503, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata double poison, metadata !1504, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata double poison, metadata !1505, metadata !DIExpression()), !dbg !1531
  %8 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !1535
  tail call void @llvm.dbg.value(metadata double %8, metadata !1506, metadata !DIExpression()), !dbg !1531
  %9 = tail call double @llvm.fabs.f64(double %2), !dbg !1536
  tail call void @llvm.dbg.value(metadata double %9, metadata !1507, metadata !DIExpression()), !dbg !1531
  %10 = fcmp oeq double %0, 0.000000e+00, !dbg !1537
  br i1 %10, label %11, label %13, !dbg !1538

11:                                               ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !1539, !tbaa !118
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1541
  store double 0.000000e+00, ptr %12, align 8, !dbg !1542, !tbaa !125
  br label %225, !dbg !1543

13:                                               ; preds = %4
  %14 = fcmp oeq double %0, 1.000000e+00, !dbg !1544
  %15 = fcmp oge double %1, 1.000000e+00
  %16 = and i1 %14, %15, !dbg !1545
  br i1 %16, label %17, label %132, !dbg !1545

17:                                               ; preds = %13
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1546, metadata !DIExpression(), metadata !1527, metadata ptr %5, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata double %1, metadata !1558, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata double %2, metadata !1559, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata ptr %3, metadata !1560, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata double %9, metadata !1561, metadata !DIExpression()), !dbg !1570
  %handler_result4 = call double @fAddHandlerDouble(double %1, double 1.000000e-01), !dbg !1571
  %18 = tail call double @llvm.floor.f64(double %handler_result4), !dbg !1571
  call void @llvm.dbg.value(metadata double %18, metadata !1562, metadata !DIExpression()), !dbg !1570
  %19 = fcmp olt double %1, 1.000000e+00, !dbg !1572
  br i1 %19, label %20, label %22, !dbg !1573

20:                                               ; preds = %17
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1574, !tbaa !118
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1574
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !1574, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 1) #8, !dbg !1577
  br label %225, !dbg !1577

22:                                               ; preds = %17
  %23 = fcmp oeq double %1, 1.000000e+00, !dbg !1579
  br i1 %23, label %24, label %26, !dbg !1580

24:                                               ; preds = %22
  %25 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #8, !dbg !1581
  br label %225, !dbg !1583

26:                                               ; preds = %22
  %27 = fmul double %9, 1.400000e+00, !dbg !1584
  %28 = fcmp ugt double %27, %1, !dbg !1585
  br i1 %28, label %46, label %29, !dbg !1586

29:                                               ; preds = %29, %26
  %30 = phi double [ %handler_result10, %29 ], [ 1.000000e+00, %26 ]
  %31 = phi double [ %35, %29 ], [ 1.000000e+00, %26 ]
  %32 = phi double [ %handler_result9, %29 ], [ 0.000000e+00, %26 ]
  %33 = phi double [ %handler_result7, %29 ], [ 1.000000e+00, %26 ]
  call void @llvm.dbg.value(metadata double %30, metadata !1587, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata double %31, metadata !1596, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata double %32, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata double %33, metadata !1594, metadata !DIExpression()), !dbg !1597
  %handler_result5 = call double @fAddHandlerDouble(double %30, double %1), !dbg !1600
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double -1.000000e+00), !dbg !1602
  %34 = fdiv double %2, %handler_result6, !dbg !1602
  %35 = fmul double %31, %34, !dbg !1603
  call void @llvm.dbg.value(metadata double %35, metadata !1596, metadata !DIExpression()), !dbg !1597
  %handler_result7 = call double @fAddHandlerDouble(double %33, double %35), !dbg !1604
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !1594, metadata !DIExpression()), !dbg !1597
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !1604
  %37 = fmul double %36, 0x3CE0000000000000, !dbg !1605
  %38 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !1606
  %39 = fmul double %38, 0x3CB0000000000000, !dbg !1607
  %handler_result8 = call double @fAddHandlerDouble(double %37, double %39), !dbg !1608
  %handler_result9 = call double @fAddHandlerDouble(double %32, double %handler_result8), !dbg !1609
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !1595, metadata !DIExpression()), !dbg !1597
  %handler_result10 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !1610
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !1587, metadata !DIExpression()), !dbg !1597
  %40 = fdiv double %35, %handler_result7, !dbg !1610
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !1611
  %42 = fcmp ogt double %41, 0x3C90000000000000, !dbg !1612
  br i1 %42, label %29, label %43, !dbg !1613, !llvm.loop !1614

43:                                               ; preds = %29
  store double %handler_result7, ptr %3, align 8, !dbg !1616, !tbaa !118
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1617
  %45 = fmul double %36, 2.000000e+00, !dbg !1618
  %handler_result11 = call double @fAddHandlerDouble(double %45, double %handler_result9), !dbg !1619
  store double %handler_result11, ptr %44, align 8, !dbg !1619, !tbaa !125
  br label %225, !dbg !1620

46:                                               ; preds = %26
  %handler_result12 = call double @fSubHandlerDouble(double %1, double %18), !dbg !1621
  %47 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !1621
  %48 = fcmp olt double %47, 0x3D19000000000000, !dbg !1622
  %49 = fcmp olt double %18, 0x41DFFFFFFFC00000
  %50 = and i1 %49, %48, !dbg !1623
  br i1 %50, label %51, label %66, !dbg !1623

51:                                               ; preds = %46
  %52 = fptosi double %18 to i32, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %52, metadata !1626, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata double %2, metadata !1631, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata ptr %3, metadata !1632, metadata !DIExpression()), !dbg !1633
  %53 = icmp slt i32 %52, 1, !dbg !1635
  br i1 %53, label %54, label %56, !dbg !1637

54:                                               ; preds = %51
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1638, !tbaa !118
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1638
  store double 0x7FF8000000000000, ptr %55, align 8, !dbg !1638, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 1) #8, !dbg !1641
  br label %225, !dbg !1641

56:                                               ; preds = %51
  switch i32 %52, label %63 [
    i32 1, label %57
    i32 2, label %59
    i32 3, label %61
  ], !dbg !1643

57:                                               ; preds = %56
  %58 = tail call i32 @gsl_sf_exp_e(double noundef %2, ptr noundef %3) #8, !dbg !1644
  br label %225, !dbg !1647

59:                                               ; preds = %56
  %60 = tail call i32 @gsl_sf_exprel_e(double noundef %2, ptr noundef %3) #8, !dbg !1648
  br label %225, !dbg !1651

61:                                               ; preds = %56
  %62 = tail call i32 @gsl_sf_exprel_2_e(double noundef %2, ptr noundef %3) #8, !dbg !1652
  br label %225, !dbg !1655

63:                                               ; preds = %56
  %64 = add nsw i32 %52, -1, !dbg !1656
  %65 = tail call i32 @gsl_sf_exprel_n_e(i32 noundef %64, double noundef %2, ptr noundef %3) #8, !dbg !1658
  br label %225, !dbg !1659

66:                                               ; preds = %46
  %67 = fcmp ogt double %2, 0.000000e+00, !dbg !1660
  br i1 %67, label %68, label %116, !dbg !1661

68:                                               ; preds = %66
  %69 = fcmp ogt double %2, 1.000000e+02, !dbg !1662
  %70 = fmul double %2, 7.500000e-01
  %71 = fcmp ogt double %70, %1
  %72 = and i1 %69, %71, !dbg !1663
  br i1 %72, label %73, label %75, !dbg !1663

73:                                               ; preds = %68
  %74 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1664
  br label %225, !dbg !1666

75:                                               ; preds = %68
  %76 = fcmp olt double %1, 1.000000e+05, !dbg !1667
  br i1 %76, label %77, label %102, !dbg !1668

77:                                               ; preds = %75
  %78 = fmul double %2, 1.400000e+00, !dbg !1669
  %handler_result13 = call double @fSubHandlerDouble(double %78, double %1), !dbg !1670
  %79 = tail call double @llvm.ceil.f64(double %handler_result13), !dbg !1670
  %handler_result14 = call double @fAddHandlerDouble(double %79, double 1.000000e+00), !dbg !1671
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !1563, metadata !DIExpression()), !dbg !1567
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %1), !dbg !1672
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !1564, metadata !DIExpression()), !dbg !1567
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1672
  call fastcc void @hyperg_1F1_1_series(double noundef %handler_result15, double noundef %2, ptr noundef nonnull %5), !dbg !1673
  call void @llvm.dbg.value(metadata i32 0, metadata !1565, metadata !DIExpression()), !dbg !1567
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1674
  %81 = load double, ptr %80, align 8, !dbg !1674, !tbaa !125
  %82 = load double, ptr %5, align 8, !dbg !1675, !tbaa !118
  %83 = tail call double @llvm.fabs.f64(double %82), !dbg !1676
  %84 = fdiv double %81, %83, !dbg !1677
  call void @llvm.dbg.value(metadata double %84, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !1564, metadata !DIExpression()), !dbg !1567
  %85 = fcmp ogt double %handler_result15, %handler_result4, !dbg !1678
  br i1 %85, label %86, label %94, !dbg !1679

86:                                               ; preds = %86, %77
  %87 = phi double [ %handler_result16, %86 ], [ %handler_result15, %77 ]
  %88 = phi double [ %handler_result17, %86 ], [ %82, %77 ]
  call void @llvm.dbg.value(metadata double %87, metadata !1564, metadata !DIExpression()), !dbg !1567
  %handler_result16 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !1680
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !1564, metadata !DIExpression()), !dbg !1567
  %89 = fdiv double %2, %handler_result16, !dbg !1680
  %90 = fmul double %88, %89, !dbg !1682
  %handler_result17 = call double @fAddHandlerDouble(double %90, double 1.000000e+00), !dbg !1678
  call void @llvm.dbg.assign(metadata double %handler_result17, metadata !1546, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1683, metadata ptr %5, metadata !DIExpression()), !dbg !1567
  %91 = fcmp ogt double %handler_result16, %handler_result4, !dbg !1678
  br i1 %91, label %86, label %92, !dbg !1679, !llvm.loop !1684

92:                                               ; preds = %86
  %93 = tail call double @llvm.fabs.f64(double %handler_result17), !dbg !1686
  br label %94, !dbg !1687

94:                                               ; preds = %92, %77
  %95 = phi double [ %93, %92 ], [ %83, %77 ], !dbg !1686
  %96 = phi double [ %handler_result17, %92 ], [ %82, %77 ]
  store double %96, ptr %3, align 8, !dbg !1688, !tbaa !118
  %97 = fmul double %84, %95, !dbg !1689
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1690
  %99 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !1691
  %handler_result18 = call double @fAddHandlerDouble(double %99, double 1.000000e+00), !dbg !1692
  %100 = fmul double %handler_result18, 0x3CC0000000000000, !dbg !1692
  %101 = fmul double %100, %95, !dbg !1693
  %handler_result19 = call double @fAddHandlerDouble(double %97, double %101), !dbg !1694
  store double %handler_result19, ptr %98, align 8, !dbg !1694, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1695
  br label %225

102:                                              ; preds = %75
  %103 = tail call double @llvm.fabs.f64(double %1), !dbg !1696
  %104 = fcmp olt double %9, %103, !dbg !1698
  br i1 %104, label %105, label %111, !dbg !1699

105:                                              ; preds = %102
  %106 = tail call double @llvm.sqrt.f64(double %103), !dbg !1700
  %handler_result20 = call double @fSubHandlerDouble(double %1, double %2), !dbg !1701
  %107 = tail call double @llvm.fabs.f64(double %handler_result20), !dbg !1701
  %108 = fmul double %106, %107, !dbg !1702
  %109 = fcmp olt double %9, %108, !dbg !1703
  br i1 %109, label %110, label %111, !dbg !1704

110:                                              ; preds = %105
  tail call fastcc void @hyperg_1F1_largebx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1705
  br label %225, !dbg !1707

111:                                              ; preds = %105, %102
  %112 = fcmp ogt double %9, %103, !dbg !1708
  br i1 %112, label %113, label %114, !dbg !1710

113:                                              ; preds = %111
  tail call fastcc void @hyperg_1F1_1_series(double noundef %1, double noundef %2, ptr noundef %3), !dbg !1711
  br label %225, !dbg !1713

114:                                              ; preds = %111
  %115 = tail call fastcc i32 @hyperg_1F1_large2bm4a(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1714
  br label %225, !dbg !1716

116:                                              ; preds = %66
  %117 = fcmp olt double %9, 1.000000e+01, !dbg !1717
  %118 = fcmp olt double %1, 1.000000e+01
  %119 = and i1 %118, %117, !dbg !1720
  br i1 %119, label %120, label %121, !dbg !1720

120:                                              ; preds = %116
  tail call fastcc void @hyperg_1F1_1_series(double noundef %1, double noundef %2, ptr noundef %3), !dbg !1721
  br label %225, !dbg !1723

121:                                              ; preds = %116
  %122 = fcmp ult double %9, 1.000000e+02, !dbg !1724
  br i1 %122, label %131, label %123, !dbg !1726

123:                                              ; preds = %121
  %handler_result21 = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !1727
  %124 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !1727
  call void @llvm.dbg.value(metadata double %124, metadata !160, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !1728
  %125 = fcmp ogt double %124, 1.000000e+00, !dbg !1730
  %126 = select i1 %125, double %124, double 1.000000e+00, !dbg !1730
  %127 = fmul double %9, 0x3FEFAE147AE147AE, !dbg !1731
  %128 = fcmp olt double %126, %127, !dbg !1732
  br i1 %128, label %129, label %131, !dbg !1733

129:                                              ; preds = %123
  %130 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1734
  br label %225, !dbg !1736

131:                                              ; preds = %123, %121
  tail call fastcc void @hyperg_1F1_luke(double noundef 1.000000e+00, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1737
  br label %225, !dbg !1739

132:                                              ; preds = %13
  %133 = fcmp oeq double %0, -1.000000e+00, !dbg !1740
  br i1 %133, label %134, label %142, !dbg !1741

134:                                              ; preds = %132
  %135 = fdiv double -1.000000e+00, %1, !dbg !1742
  %136 = fmul double %135, %2, !dbg !1744
  %handler_result22 = call double @fAddHandlerDouble(double %136, double 1.000000e+00), !dbg !1745
  store double %handler_result22, ptr %3, align 8, !dbg !1745, !tbaa !118
  %137 = tail call double @llvm.fabs.f64(double %136), !dbg !1746
  %handler_result23 = call double @fAddHandlerDouble(double %137, double 1.000000e+00), !dbg !1747
  %138 = fmul double %handler_result23, 0x3CB0000000000000, !dbg !1747
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1748
  %140 = tail call double @llvm.fabs.f64(double %handler_result22), !dbg !1749
  %141 = fmul double %140, 0x3CC0000000000000, !dbg !1750
  %handler_result24 = call double @fAddHandlerDouble(double %138, double %141), !dbg !1751
  store double %handler_result24, ptr %139, align 8, !dbg !1751, !tbaa !125
  br label %225, !dbg !1752

142:                                              ; preds = %132
  %143 = fmul double %9, 1.400000e+00, !dbg !1753
  %144 = fcmp ugt double %143, %1, !dbg !1754
  br i1 %144, label %147, label %145, !dbg !1755

145:                                              ; preds = %142
  %146 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !1756
  br label %225, !dbg !1758

147:                                              ; preds = %142
  %148 = fcmp ogt double %2, 0.000000e+00, !dbg !1759
  br i1 %148, label %149, label %209, !dbg !1760

149:                                              ; preds = %147
  %150 = fcmp ogt double %2, 1.000000e+02, !dbg !1761
  br i1 %150, label %151, label %158, !dbg !1762

151:                                              ; preds = %149
  %152 = fmul double %handler_result1, %handler_result, !dbg !1763
  %153 = tail call double @llvm.fabs.f64(double %152), !dbg !1763
  %154 = fmul double %2, 5.000000e-01, !dbg !1764
  %155 = fcmp olt double %153, %154, !dbg !1765
  br i1 %155, label %156, label %158, !dbg !1766

156:                                              ; preds = %151
  %157 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1767
  br label %225, !dbg !1769

158:                                              ; preds = %151, %149
  %159 = fcmp olt double %1, 5.000000e+06, !dbg !1770
  br i1 %159, label %160, label %196, !dbg !1771

160:                                              ; preds = %158
  %161 = fmul double %2, 1.400000e+00, !dbg !1772
  %handler_result25 = call double @fSubHandlerDouble(double %161, double %1), !dbg !1773
  %162 = tail call double @llvm.ceil.f64(double %handler_result25), !dbg !1773
  %handler_result26 = call double @fAddHandlerDouble(double %162, double 1.000000e+00), !dbg !1774
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !1508, metadata !DIExpression()), !dbg !1529
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %1), !dbg !1775
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !1518, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1775
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1776
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 1.000000e+00), !dbg !1777
  %163 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %handler_result28, double noundef %2, ptr noundef nonnull %6) #8, !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !1524, metadata !DIExpression()), !dbg !1529
  %164 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %handler_result27, double noundef %2, ptr noundef nonnull %7) #8, !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !1525, metadata !DIExpression()), !dbg !1529
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1779
  %166 = load double, ptr %165, align 8, !dbg !1779, !tbaa !125
  %167 = load double, ptr %6, align 8, !dbg !1780, !tbaa !118
  %168 = fdiv double %166, %167, !dbg !1781
  %169 = call double @llvm.fabs.f64(double %168), !dbg !1782
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1783
  %171 = load double, ptr %170, align 8, !dbg !1783, !tbaa !125
  %172 = load double, ptr %7, align 8, !dbg !1784, !tbaa !118
  %173 = fdiv double %171, %172, !dbg !1785
  %174 = call double @llvm.fabs.f64(double %173), !dbg !1786
  %handler_result29 = call double @fAddHandlerDouble(double %169, double %174)
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !1526, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %167, metadata !1521, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %172, metadata !1522, metadata !DIExpression()), !dbg !1529
  %handler_result30 = call double @fAddHandlerDouble(double %1, double 1.000000e-01), !dbg !1787
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !1518, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %167, metadata !1521, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %172, metadata !1522, metadata !DIExpression()), !dbg !1529
  %175 = fcmp ogt double %handler_result27, %handler_result30, !dbg !1787
  br i1 %175, label %176, label %186, !dbg !1788

176:                                              ; preds = %176, %160
  %177 = phi double [ %handler_result35, %176 ], [ %handler_result27, %160 ]
  %178 = phi double [ %179, %176 ], [ %167, %160 ]
  %179 = phi double [ %184, %176 ], [ %172, %160 ]
  tail call void @llvm.dbg.value(metadata double %177, metadata !1518, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %178, metadata !1521, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %179, metadata !1522, metadata !DIExpression()), !dbg !1529
  %handler_result31 = call double @fAddHandlerDouble(double %177, double %2), !dbg !1789
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double -1.000000e+00), !dbg !1791
  %180 = fmul double %179, %handler_result32, !dbg !1791
  %handler_result33 = call double @fSubHandlerDouble(double %177, double %0), !dbg !1792
  %181 = fmul double %handler_result33, %2, !dbg !1792
  %182 = fdiv double %181, %177, !dbg !1793
  %183 = fmul double %178, %182, !dbg !1794
  %handler_result34 = call double @fSubHandlerDouble(double %180, double %183), !dbg !1795
  %handler_result35 = call double @fAddHandlerDouble(double %177, double -1.000000e+00), !dbg !1796
  %184 = fdiv double %handler_result34, %handler_result35, !dbg !1796
  tail call void @llvm.dbg.value(metadata double %184, metadata !1523, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !1518, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %179, metadata !1521, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata double %184, metadata !1522, metadata !DIExpression()), !dbg !1529
  %185 = fcmp ogt double %handler_result35, %handler_result30, !dbg !1787
  br i1 %185, label %176, label %186, !dbg !1788, !llvm.loop !1797

186:                                              ; preds = %176, %160
  %187 = phi double [ %172, %160 ], [ %184, %176 ], !dbg !1529
  store double %187, ptr %3, align 8, !dbg !1799, !tbaa !118
  %188 = call double @llvm.fabs.f64(double %handler_result26), !dbg !1800
  %handler_result36 = call double @fAddHandlerDouble(double %188, double 1.000000e+00), !dbg !1801
  %189 = fmul double %handler_result36, %handler_result29, !dbg !1801
  %190 = call double @llvm.fabs.f64(double %187), !dbg !1802
  %191 = fmul double %189, %190, !dbg !1803
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1804
  %193 = fmul double %190, 0x3CC0000000000000, !dbg !1805
  %handler_result37 = call double @fAddHandlerDouble(double %191, double %193), !dbg !1806
  store double %handler_result37, ptr %192, align 8, !dbg !1806, !tbaa !125
  %194 = icmp eq i32 %163, 0, !dbg !1807
  %195 = select i1 %194, i32 %164, i32 %163, !dbg !1807
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1808
  br label %225

196:                                              ; preds = %158
  %197 = tail call double @llvm.fabs.f64(double %1), !dbg !1809
  %198 = fcmp olt double %9, %197, !dbg !1811
  br i1 %198, label %199, label %207, !dbg !1812

199:                                              ; preds = %196
  %200 = fmul double %0, %2, !dbg !1813
  %201 = tail call double @llvm.fabs.f64(double %200), !dbg !1814
  %202 = tail call double @llvm.sqrt.f64(double %197), !dbg !1815
  %handler_result38 = call double @fSubHandlerDouble(double %1, double %2), !dbg !1816
  %203 = tail call double @llvm.fabs.f64(double %handler_result38), !dbg !1816
  %204 = fmul double %202, %203, !dbg !1817
  %205 = fcmp olt double %201, %204, !dbg !1818
  br i1 %205, label %206, label %207, !dbg !1819

206:                                              ; preds = %199
  tail call fastcc void @hyperg_1F1_largebx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1820
  br label %225, !dbg !1822

207:                                              ; preds = %199, %196
  %208 = tail call fastcc i32 @hyperg_1F1_large2bm4a(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1823
  br label %225, !dbg !1825

209:                                              ; preds = %147
  %210 = fcmp olt double %9, 1.000000e+01, !dbg !1826
  %211 = fcmp olt double %1, 1.000000e+01
  %212 = and i1 %211, %210, !dbg !1829
  br i1 %212, label %213, label %215, !dbg !1829

213:                                              ; preds = %209
  %214 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !1830
  br label %225, !dbg !1832

215:                                              ; preds = %209
  %216 = fcmp ult double %9, 1.000000e+02, !dbg !1833
  br i1 %216, label %224, label %217, !dbg !1835

217:                                              ; preds = %215
  %218 = fcmp ogt double %8, 1.000000e+00, !dbg !1836
  %219 = select i1 %218, double %8, double 1.000000e+00, !dbg !1836
  %220 = fmul double %9, 0x3FEFAE147AE147AE, !dbg !1837
  %221 = fcmp olt double %219, %220, !dbg !1838
  br i1 %221, label %222, label %224, !dbg !1839

222:                                              ; preds = %217
  %223 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1840
  br label %225, !dbg !1842

224:                                              ; preds = %217, %215
  tail call fastcc void @hyperg_1F1_luke(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !1843
  br label %225, !dbg !1845

225:                                              ; preds = %224, %222, %213, %207, %206, %186, %156, %145, %134, %131, %129, %120, %114, %113, %110, %94, %73, %63, %61, %59, %57, %54, %43, %24, %20, %11
  %226 = phi i32 [ 0, %11 ], [ 0, %134 ], [ %146, %145 ], [ %157, %156 ], [ %195, %186 ], [ 0, %206 ], [ %208, %207 ], [ %214, %213 ], [ %223, %222 ], [ 0, %224 ], [ 1, %20 ], [ %25, %24 ], [ 0, %43 ], [ %74, %73 ], [ 0, %94 ], [ 0, %110 ], [ 0, %113 ], [ %115, %114 ], [ 0, %120 ], [ %130, %129 ], [ 0, %131 ], [ 1, %54 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %65, %63 ], !dbg !1846
  ret i32 %226, !dbg !1847
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_pos(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1848 {
  %5 = alloca double, align 8, !DIAssignID !1960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1855, metadata !DIExpression(), metadata !1960, metadata ptr %5, metadata !DIExpression()), !dbg !1961
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1962
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1869, metadata !DIExpression(), metadata !1962, metadata ptr %6, metadata !DIExpression()), !dbg !1961
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1872, metadata !DIExpression(), metadata !1963, metadata ptr %7, metadata !DIExpression()), !dbg !1964
  %8 = alloca double, align 8, !DIAssignID !1965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1876, metadata !DIExpression(), metadata !1965, metadata ptr %8, metadata !DIExpression()), !dbg !1964
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1890, metadata !DIExpression(), metadata !1966, metadata ptr %9, metadata !DIExpression()), !dbg !1967
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1891, metadata !DIExpression(), metadata !1968, metadata ptr %10, metadata !DIExpression()), !dbg !1967
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1907, metadata !DIExpression(), metadata !1969, metadata ptr %11, metadata !DIExpression()), !dbg !1970
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1971
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1908, metadata !DIExpression(), metadata !1971, metadata ptr %12, metadata !DIExpression()), !dbg !1970
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1925, metadata !DIExpression(), metadata !1972, metadata ptr %13, metadata !DIExpression()), !dbg !1973
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1974
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1926, metadata !DIExpression(), metadata !1974, metadata ptr %14, metadata !DIExpression()), !dbg !1973
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1975
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1952, metadata !DIExpression(), metadata !1975, metadata ptr %15, metadata !DIExpression()), !dbg !1976
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1954, metadata !DIExpression(), metadata !1977, metadata ptr %16, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %0, metadata !1850, metadata !DIExpression()), !dbg !1978
  tail call void @llvm.dbg.value(metadata double %1, metadata !1851, metadata !DIExpression()), !dbg !1978
  tail call void @llvm.dbg.value(metadata double %2, metadata !1852, metadata !DIExpression()), !dbg !1978
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1853, metadata !DIExpression()), !dbg !1978
  %17 = tail call double @llvm.fabs.f64(double %2), !dbg !1979
  tail call void @llvm.dbg.value(metadata double %17, metadata !1854, metadata !DIExpression()), !dbg !1978
  %18 = fcmp olt double %1, 1.000000e+01, !dbg !1980
  %19 = fcmp olt double %0, 1.000000e+01
  %20 = and i1 %19, %18, !dbg !1981
  %21 = fcmp olt double %17, 5.000000e+00
  %22 = and i1 %20, %21, !dbg !1981
  %23 = fmul double %17, %0
  %24 = fcmp olt double %23, %1
  %25 = or i1 %22, %24, !dbg !1981
  br i1 %25, label %29, label %26, !dbg !1981

26:                                               ; preds = %4
  %27 = fcmp ogt double %1, %0, !dbg !1982
  %28 = and i1 %27, %21, !dbg !1983
  br i1 %28, label %29, label %31, !dbg !1983

29:                                               ; preds = %26, %4
  %30 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !1984
  br label %351, !dbg !1986

31:                                               ; preds = %26
  %32 = fcmp olt double %2, -1.000000e+02, !dbg !1987
  br i1 %32, label %33, label %45, !dbg !1988

33:                                               ; preds = %31
  %34 = tail call double @llvm.fabs.f64(double %0), !dbg !1989
  tail call void @llvm.dbg.value(metadata double %34, metadata !160, metadata !DIExpression()), !dbg !1990
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !1990
  %35 = fcmp ogt double %34, 1.000000e+00, !dbg !1992
  %36 = select i1 %35, double %34, double 1.000000e+00, !dbg !1992
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1993
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !1994
  %37 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %37, metadata !160, metadata !DIExpression()), !dbg !1995
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !1995
  %38 = fcmp ogt double %37, 1.000000e+00, !dbg !1997
  %39 = select i1 %38, double %37, double 1.000000e+00, !dbg !1997
  %40 = fmul double %36, %39, !dbg !1998
  %41 = fmul double %17, 0x3FE6666666666666, !dbg !1999
  %42 = fcmp olt double %40, %41, !dbg !2000
  br i1 %42, label %43, label %45, !dbg !2001

43:                                               ; preds = %33
  %44 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2002
  br label %351, !dbg !2004

45:                                               ; preds = %33, %31
  %46 = fcmp ogt double %2, 1.000000e+02, !dbg !2005
  %handler_result2 = call double @fSubHandlerDouble(double %1, double %0), !dbg !2006
  %47 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !2006
  br i1 %46, label %48, label %59, !dbg !2007

48:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata double %47, metadata !160, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2008
  %49 = fcmp ogt double %47, 1.000000e+00, !dbg !2010
  %50 = select i1 %49, double %47, double 1.000000e+00, !dbg !2010
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !2011
  %51 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !2011
  tail call void @llvm.dbg.value(metadata double %51, metadata !160, metadata !DIExpression()), !dbg !2012
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2012
  %52 = fcmp ogt double %51, 1.000000e+00, !dbg !2014
  %53 = select i1 %52, double %51, double 1.000000e+00, !dbg !2014
  %54 = fmul double %53, %50, !dbg !2015
  %55 = fmul double %17, 0x3FE6666666666666, !dbg !2016
  %56 = fcmp olt double %54, %55, !dbg !2017
  br i1 %56, label %57, label %59, !dbg !2018

57:                                               ; preds = %48
  %58 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2019
  br label %351, !dbg !2021

59:                                               ; preds = %48, %45
  %60 = fcmp ugt double %47, 1.000000e+00, !dbg !2022
  br i1 %60, label %63, label %61, !dbg !2023

61:                                               ; preds = %59
  %handler_result4 = call double @fSubHandlerDouble(double %0, double %1), !dbg !2024
  %62 = tail call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result4, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2024
  br label %351, !dbg !2026

63:                                               ; preds = %59
  br i1 %27, label %64, label %139, !dbg !2027

64:                                               ; preds = %63
  %65 = fmul double %0, 2.000000e+00, !dbg !2028
  %handler_result5 = call double @fAddHandlerDouble(double %65, double %2), !dbg !2029
  %66 = fcmp ugt double %handler_result5, %1, !dbg !2029
  br i1 %66, label %102, label %67, !dbg !2030

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8, !dbg !2031
  %68 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !2032, !range !737
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1862, metadata !DIExpression()), !dbg !1961
  %69 = load double, ptr %5, align 8, !dbg !2033, !tbaa !305
  tail call void @llvm.dbg.value(metadata double poison, metadata !1863, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1864, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double poison, metadata !1865, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double poison, metadata !1866, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1867, metadata !DIExpression()), !dbg !1961
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !2034
  tail call void @llvm.dbg.value(metadata double %0, metadata !1871, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double poison, metadata !1866, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1867, metadata !DIExpression()), !dbg !1961
  %70 = fcmp ogt double %0, 5.000000e-01, !dbg !2035
  br i1 %70, label %71, label %84, !dbg !2038

71:                                               ; preds = %67
  %72 = fdiv double %2, %0, !dbg !2039
  %73 = fmul double %72, %69, !dbg !2040
  %handler_result6 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !2041
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1863, metadata !DIExpression()), !dbg !1961
  %74 = fmul double %handler_result6, 0x2000000000000000, !dbg !2041
  tail call void @llvm.dbg.value(metadata double %74, metadata !1865, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double %74, metadata !1866, metadata !DIExpression()), !dbg !1961
  br label %75, !dbg !2038

75:                                               ; preds = %75, %71
  %76 = phi double [ %77, %75 ], [ %74, %71 ]
  %77 = phi double [ %82, %75 ], [ 0x2000000000000000, %71 ]
  %78 = phi double [ %handler_result11, %75 ], [ %0, %71 ]
  tail call void @llvm.dbg.value(metadata double %76, metadata !1866, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double %77, metadata !1867, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double %78, metadata !1871, metadata !DIExpression()), !dbg !1961
  %79 = fmul double %78, %76, !dbg !2042
  %80 = fmul double %78, 2.000000e+00, !dbg !2044
  %handler_result7 = call double @fSubHandlerDouble(double %80, double %1), !dbg !2045
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %2), !dbg !2046
  %81 = fmul double %77, %handler_result8, !dbg !2046
  %handler_result9 = call double @fSubHandlerDouble(double %79, double %81), !dbg !2047
  %handler_result10 = call double @fSubHandlerDouble(double %1, double %78), !dbg !2048
  %82 = fdiv double %handler_result9, %handler_result10, !dbg !2048
  tail call void @llvm.dbg.value(metadata double %82, metadata !1868, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double %77, metadata !1866, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata double %82, metadata !1867, metadata !DIExpression()), !dbg !1961
  %handler_result11 = call double @fAddHandlerDouble(double %78, double -1.000000e+00), !dbg !2035
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1871, metadata !DIExpression()), !dbg !1961
  %83 = fcmp ogt double %handler_result11, 5.000000e-01, !dbg !2035
  br i1 %83, label %75, label %84, !dbg !2038, !llvm.loop !2049

84:                                               ; preds = %75, %67
  %85 = phi double [ %0, %67 ], [ %handler_result11, %75 ], !dbg !2051
  %86 = phi double [ 0x2000000000000000, %67 ], [ %82, %75 ], !dbg !1961
  %87 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %85, double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !1870, metadata !DIExpression()), !dbg !1961
  %88 = fdiv double 0x2000000000000000, %86, !dbg !2053
  %89 = load double, ptr %6, align 8, !dbg !2054, !tbaa !118
  %90 = fmul double %88, %89, !dbg !2055
  store double %90, ptr %3, align 8, !dbg !2056, !tbaa !118
  %91 = call double @llvm.fabs.f64(double %88), !dbg !2057
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !2058
  %93 = load double, ptr %92, align 8, !dbg !2058, !tbaa !125
  %94 = fmul double %91, %93, !dbg !2059
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2060
  %96 = call double @llvm.fabs.f64(double %0), !dbg !2061
  %handler_result12 = call double @fAddHandlerDouble(double %96, double 1.000000e+00), !dbg !2062
  %97 = fmul double %handler_result12, 0x3CC0000000000000, !dbg !2062
  %98 = call double @llvm.fabs.f64(double %90), !dbg !2063
  %99 = fmul double %97, %98, !dbg !2064
  %handler_result13 = call double @fAddHandlerDouble(double %94, double %99), !dbg !2065
  store double %handler_result13, ptr %95, align 8, !dbg !2065, !tbaa !125
  %100 = icmp eq i32 %87, 0, !dbg !2066
  %101 = select i1 %100, i32 %68, i32 %87, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !2067
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8, !dbg !2067
  br label %351

102:                                              ; preds = %64
  %103 = fcmp ogt double %handler_result5, %1, !dbg !2068
  %104 = fcmp ogt double %1, %2
  %105 = and i1 %104, %103, !dbg !2069
  br i1 %105, label %106, label %139, !dbg !2069

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !2070
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !2071
  %107 = call fastcc i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %8), !dbg !2072, !range !737
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !1877, metadata !DIExpression()), !dbg !1964
  %108 = fdiv double %2, %0, !dbg !2073
  %109 = load double, ptr %8, align 8, !dbg !2074, !tbaa !305
  %110 = fmul double %108, %109, !dbg !2075
  %handler_result14 = call double @fAddHandlerDouble(double %110, double 1.000000e+00), !dbg !2076
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1878, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1879, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !1880, metadata !DIExpression()), !dbg !1964
  %111 = fmul double %handler_result14, 0x2000000000000000, !dbg !2076
  tail call void @llvm.dbg.value(metadata double %111, metadata !1881, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double poison, metadata !1883, metadata !DIExpression()), !dbg !1964
  %handler_result15 = call double @fAddHandlerDouble(double %1, double -5.000000e-01), !dbg !2077
  %handler_result16 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !2079
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1883, metadata !DIExpression()), !dbg !1964
  %112 = fcmp olt double %handler_result16, %handler_result15, !dbg !2079
  br i1 %112, label %113, label %122, !dbg !2081

113:                                              ; preds = %113, %106
  %114 = phi double [ %handler_result21, %113 ], [ %handler_result16, %106 ]
  %115 = phi double [ %116, %113 ], [ 0x2000000000000000, %106 ]
  %116 = phi double [ %120, %113 ], [ %111, %106 ]
  tail call void @llvm.dbg.value(metadata double %115, metadata !1880, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double %116, metadata !1881, metadata !DIExpression()), !dbg !1964
  %handler_result17 = call double @fSubHandlerDouble(double %1, double %114), !dbg !2082
  %117 = fmul double %handler_result17, %115, !dbg !2082
  %118 = fmul double %114, 2.000000e+00, !dbg !2084
  %handler_result18 = call double @fSubHandlerDouble(double %118, double %1), !dbg !2085
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %2), !dbg !2086
  %119 = fmul double %116, %handler_result19, !dbg !2086
  %handler_result20 = call double @fAddHandlerDouble(double %117, double %119), !dbg !2087
  %120 = fdiv double %handler_result20, %114, !dbg !2087
  tail call void @llvm.dbg.value(metadata double %120, metadata !1882, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double %116, metadata !1880, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double %120, metadata !1881, metadata !DIExpression()), !dbg !1964
  tail call void @llvm.dbg.value(metadata double poison, metadata !1883, metadata !DIExpression()), !dbg !1964
  %handler_result21 = call double @fAddHandlerDouble(double %114, double 1.000000e+00), !dbg !2079
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !1883, metadata !DIExpression()), !dbg !1964
  %121 = fcmp olt double %handler_result21, %handler_result15, !dbg !2079
  br i1 %121, label %113, label %122, !dbg !2081, !llvm.loop !2088

122:                                              ; preds = %113, %106
  %123 = phi double [ %111, %106 ], [ %120, %113 ], !dbg !1964
  %124 = phi double [ %handler_result16, %106 ], [ %handler_result21, %113 ], !dbg !2077
  %handler_result22 = call double @fSubHandlerDouble(double %124, double %1), !dbg !2090
  %125 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result22, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !1875, metadata !DIExpression()), !dbg !1964
  %126 = fdiv double 0x2000000000000000, %123, !dbg !2091
  %127 = load double, ptr %7, align 8, !dbg !2092, !tbaa !118
  %128 = fmul double %126, %127, !dbg !2093
  store double %128, ptr %3, align 8, !dbg !2094, !tbaa !118
  %129 = call double @llvm.fabs.f64(double %126), !dbg !2095
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !2096
  %131 = load double, ptr %130, align 8, !dbg !2096, !tbaa !125
  %132 = fmul double %129, %131, !dbg !2097
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2098
  %handler_result23 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !2099
  %134 = fmul double %handler_result23, 0x3CC0000000000000, !dbg !2099
  %135 = call double @llvm.fabs.f64(double %128), !dbg !2100
  %136 = fmul double %134, %135, !dbg !2101
  %handler_result24 = call double @fAddHandlerDouble(double %132, double %136), !dbg !2102
  store double %handler_result24, ptr %133, align 8, !dbg !2102, !tbaa !125
  %137 = icmp eq i32 %125, 0, !dbg !2103
  %138 = select i1 %137, i32 %107, i32 %125, !dbg !2103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !2104
  br label %351

139:                                              ; preds = %102, %63
  %140 = fcmp ult double %2, 0.000000e+00, !dbg !2105
  br i1 %140, label %238, label %141, !dbg !2106

141:                                              ; preds = %139
  %142 = fcmp olt double %1, %0, !dbg !2107
  br i1 %142, label %143, label %190, !dbg !2108

143:                                              ; preds = %141
  %handler_result25 = call double @fSubHandlerDouble(double %0, double %1), !dbg !2109
  %144 = tail call double @llvm.floor.f64(double %handler_result25), !dbg !2109
  tail call void @llvm.dbg.value(metadata double %144, metadata !1884, metadata !DIExpression()), !dbg !1967
  %handler_result26 = call double @fSubHandlerDouble(double %handler_result25, double %144), !dbg !2110
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !1889, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !2110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !2111
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double -1.000000e+00), !dbg !2112
  %145 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result27, double noundef %1, double noundef %2, ptr noundef nonnull %9), !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !1892, metadata !DIExpression()), !dbg !1967
  %146 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result26, double noundef %1, double noundef %2, ptr noundef nonnull %10), !dbg !2113
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !1893, metadata !DIExpression()), !dbg !1967
  %147 = load double, ptr %9, align 8, !dbg !2114, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %147, metadata !1894, metadata !DIExpression()), !dbg !1967
  %148 = load double, ptr %10, align 8, !dbg !2115, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %148, metadata !1895, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %147, metadata !1896, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %148, metadata !1897, metadata !DIExpression()), !dbg !1967
  %149 = call double @llvm.fabs.f64(double %147), !dbg !2116
  %150 = call double @llvm.fabs.f64(double %148), !dbg !2117
  %handler_result28 = call double @fAddHandlerDouble(double %149, double %150), !dbg !2118
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !1900, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1901, metadata !DIExpression()), !dbg !1967
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !2118
  %152 = load double, ptr %151, align 8, !dbg !2118, !tbaa !125
  %153 = fdiv double %152, %147, !dbg !2119
  %154 = call double @llvm.fabs.f64(double %153), !dbg !2120
  tail call void @llvm.dbg.value(metadata double %154, metadata !1903, metadata !DIExpression()), !dbg !1967
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !2121
  %156 = load double, ptr %155, align 8, !dbg !2121, !tbaa !125
  %157 = fdiv double %156, %148, !dbg !2122
  %158 = call double @llvm.fabs.f64(double %157), !dbg !2123
  tail call void @llvm.dbg.value(metadata double %158, metadata !1904, metadata !DIExpression()), !dbg !1967
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result26, double %1)
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !1899, metadata !DIExpression()), !dbg !1967
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -1.000000e-01), !dbg !2124
  %159 = fcmp olt double %handler_result29, %handler_result30, !dbg !2124
  br i1 %159, label %160, label %174, !dbg !2127

160:                                              ; preds = %160, %143
  %161 = phi double [ %162, %160 ], [ %147, %143 ]
  %162 = phi double [ %168, %160 ], [ %148, %143 ]
  %163 = phi double [ %handler_result36, %160 ], [ %handler_result29, %143 ]
  %164 = phi double [ %172, %160 ], [ 0x7FEFFFFFFFFFFFFF, %143 ]
  tail call void @llvm.dbg.value(metadata double %161, metadata !1896, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %162, metadata !1897, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %163, metadata !1899, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %164, metadata !1901, metadata !DIExpression()), !dbg !1967
  %handler_result31 = call double @fSubHandlerDouble(double %1, double %163), !dbg !2128
  %165 = fmul double %handler_result31, %161, !dbg !2128
  %166 = fmul double %163, 2.000000e+00, !dbg !2130
  %handler_result32 = call double @fSubHandlerDouble(double %166, double %1), !dbg !2131
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double %2), !dbg !2132
  %167 = fmul double %162, %handler_result33, !dbg !2132
  %handler_result34 = call double @fAddHandlerDouble(double %165, double %167), !dbg !2133
  %168 = fdiv double %handler_result34, %163, !dbg !2133
  tail call void @llvm.dbg.value(metadata double %168, metadata !1898, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %162, metadata !1896, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %168, metadata !1897, metadata !DIExpression()), !dbg !1967
  %169 = call double @llvm.fabs.f64(double %162), !dbg !2134
  %170 = call double @llvm.fabs.f64(double %168), !dbg !2135
  %handler_result35 = call double @fAddHandlerDouble(double %169, double %170), !dbg !2136
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !2139, metadata !DIExpression()), !dbg !2142
  tail call void @llvm.dbg.value(metadata double %164, metadata !2140, metadata !DIExpression()), !dbg !2142
  %171 = fcmp olt double %handler_result35, %164, !dbg !2136
  %172 = select i1 %171, double %handler_result35, double %164, !dbg !2136
  tail call void @llvm.dbg.value(metadata double %172, metadata !1901, metadata !DIExpression()), !dbg !1967
  %handler_result36 = call double @fAddHandlerDouble(double %163, double 1.000000e+00), !dbg !2124
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !1899, metadata !DIExpression()), !dbg !1967
  %173 = fcmp olt double %handler_result36, %handler_result30, !dbg !2124
  br i1 %173, label %160, label %174, !dbg !2127, !llvm.loop !2143

174:                                              ; preds = %160, %143
  %175 = phi double [ %150, %143 ], [ %170, %160 ], !dbg !2145
  %176 = phi double [ 0x7FEFFFFFFFFFFFFF, %143 ], [ %172, %160 ], !dbg !1967
  %177 = phi double [ %148, %143 ], [ %168, %160 ], !dbg !1967
  %178 = fdiv double %handler_result28, %176, !dbg !2146
  tail call void @llvm.dbg.value(metadata double %178, metadata !1902, metadata !DIExpression()), !dbg !1967
  store double %177, ptr %3, align 8, !dbg !2147, !tbaa !118
  %handler_result37 = call double @fAddHandlerDouble(double %154, double %158), !dbg !2148
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double 0x3CB0000000000000), !dbg !2149
  %179 = fmul double %handler_result38, 2.000000e+00, !dbg !2149
  %handler_result39 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !2150
  %180 = fmul double %handler_result39, %179, !dbg !2150
  %181 = fmul double %180, %175, !dbg !2151
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2152
  %183 = fmul double %handler_result37, 2.000000e+00, !dbg !2153
  %184 = fmul double %183, %178, !dbg !2154
  %185 = fmul double %178, %184, !dbg !2155
  %186 = fmul double %185, %175, !dbg !2156
  %handler_result40 = call double @fAddHandlerDouble(double %181, double %186), !dbg !2157
  %187 = fmul double %175, 0x3CC0000000000000, !dbg !2157
  %handler_result41 = call double @fAddHandlerDouble(double %187, double %handler_result40), !dbg !2158
  store double %handler_result41, ptr %182, align 8, !dbg !2158, !tbaa !125
  %188 = icmp eq i32 %145, 0, !dbg !2159
  %189 = select i1 %188, i32 %146, i32 %145, !dbg !2159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !2160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !2160
  br label %351

190:                                              ; preds = %141
  %191 = tail call double @llvm.floor.f64(double %0), !dbg !2161
  %handler_result42 = call double @fSubHandlerDouble(double %0, double %191), !dbg !2162
  tail call void @llvm.dbg.value(metadata double %handler_result42, metadata !1905, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !2162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !2163
  %192 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %handler_result42, double noundef %1, double noundef %2, ptr noundef nonnull %11), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %192, metadata !1909, metadata !DIExpression()), !dbg !1970
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double 1.000000e+00), !dbg !2165
  %193 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %handler_result43, double noundef %1, double noundef %2, ptr noundef nonnull %12), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %193, metadata !1910, metadata !DIExpression()), !dbg !1970
  %194 = load double, ptr %11, align 8, !dbg !2166, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %194, metadata !1911, metadata !DIExpression()), !dbg !1970
  %195 = load double, ptr %12, align 8, !dbg !2167, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %195, metadata !1912, metadata !DIExpression()), !dbg !1970
  %196 = call double @llvm.fabs.f64(double %195), !dbg !2168
  %197 = call double @llvm.fabs.f64(double %194), !dbg !2169
  %handler_result44 = call double @fAddHandlerDouble(double %197, double %196), !dbg !2170
  tail call void @llvm.dbg.value(metadata double %handler_result44, metadata !1915, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1916, metadata !DIExpression()), !dbg !1970
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !2170
  %199 = load double, ptr %198, align 8, !dbg !2170, !tbaa !125
  %200 = fdiv double %199, %194, !dbg !2171
  %201 = call double @llvm.fabs.f64(double %200), !dbg !2172
  tail call void @llvm.dbg.value(metadata double %201, metadata !1918, metadata !DIExpression()), !dbg !1970
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !2173
  %203 = load double, ptr %202, align 8, !dbg !2173, !tbaa !125
  %204 = fdiv double %203, %195, !dbg !2174
  %205 = call double @llvm.fabs.f64(double %204), !dbg !2175
  tail call void @llvm.dbg.value(metadata double %205, metadata !1919, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !1914, metadata !DIExpression()), !dbg !1970
  %handler_result45 = call double @fAddHandlerDouble(double %0, double -1.000000e-01), !dbg !2176
  %206 = fcmp olt double %handler_result43, %handler_result45, !dbg !2176
  br i1 %206, label %207, label %221, !dbg !2179

207:                                              ; preds = %207, %190
  %208 = phi double [ %209, %207 ], [ %194, %190 ]
  %209 = phi double [ %215, %207 ], [ %195, %190 ]
  %210 = phi double [ %handler_result51, %207 ], [ %handler_result43, %190 ]
  %211 = phi double [ %219, %207 ], [ 0x7FEFFFFFFFFFFFFF, %190 ]
  tail call void @llvm.dbg.value(metadata double %208, metadata !1911, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %209, metadata !1912, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %210, metadata !1914, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %211, metadata !1916, metadata !DIExpression()), !dbg !1970
  %handler_result46 = call double @fSubHandlerDouble(double %1, double %210), !dbg !2180
  %212 = fmul double %handler_result46, %208, !dbg !2180
  %213 = fmul double %210, 2.000000e+00, !dbg !2182
  %handler_result47 = call double @fSubHandlerDouble(double %213, double %1), !dbg !2183
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result47, double %2), !dbg !2184
  %214 = fmul double %209, %handler_result48, !dbg !2184
  %handler_result49 = call double @fAddHandlerDouble(double %212, double %214), !dbg !2185
  %215 = fdiv double %handler_result49, %210, !dbg !2185
  tail call void @llvm.dbg.value(metadata double %215, metadata !1913, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %209, metadata !1911, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata double %215, metadata !1912, metadata !DIExpression()), !dbg !1970
  %216 = call double @llvm.fabs.f64(double %215), !dbg !2186
  %217 = call double @llvm.fabs.f64(double %209), !dbg !2187
  %handler_result50 = call double @fAddHandlerDouble(double %217, double %216), !dbg !2188
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !2139, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata double %211, metadata !2140, metadata !DIExpression()), !dbg !2190
  %218 = fcmp olt double %handler_result50, %211, !dbg !2188
  %219 = select i1 %218, double %handler_result50, double %211, !dbg !2188
  tail call void @llvm.dbg.value(metadata double %219, metadata !1916, metadata !DIExpression()), !dbg !1970
  %handler_result51 = call double @fAddHandlerDouble(double %210, double 1.000000e+00), !dbg !2176
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !1914, metadata !DIExpression()), !dbg !1970
  %220 = fcmp olt double %handler_result51, %handler_result45, !dbg !2176
  br i1 %220, label %207, label %221, !dbg !2179, !llvm.loop !2191

221:                                              ; preds = %207, %190
  %222 = phi double [ %196, %190 ], [ %216, %207 ], !dbg !2193
  %223 = phi double [ 0x7FEFFFFFFFFFFFFF, %190 ], [ %219, %207 ], !dbg !1970
  %224 = phi double [ %195, %190 ], [ %215, %207 ], !dbg !1970
  %225 = fdiv double %handler_result44, %223, !dbg !2194
  tail call void @llvm.dbg.value(metadata double %225, metadata !1917, metadata !DIExpression()), !dbg !1970
  store double %224, ptr %3, align 8, !dbg !2195, !tbaa !118
  %handler_result52 = call double @fAddHandlerDouble(double %201, double %205), !dbg !2196
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x3CB0000000000000), !dbg !2197
  %226 = fmul double %handler_result53, 2.000000e+00, !dbg !2197
  %227 = call double @llvm.fabs.f64(double %0), !dbg !2198
  %handler_result54 = call double @fAddHandlerDouble(double %227, double 1.000000e+00), !dbg !2199
  %228 = fmul double %handler_result54, %226, !dbg !2199
  %229 = fmul double %228, %222, !dbg !2200
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2201
  %231 = fmul double %handler_result52, 2.000000e+00, !dbg !2202
  %232 = fmul double %231, %225, !dbg !2203
  %233 = fmul double %225, %232, !dbg !2204
  %234 = fmul double %233, %222, !dbg !2205
  %handler_result55 = call double @fAddHandlerDouble(double %229, double %234), !dbg !2206
  %235 = fmul double %222, 0x3CC0000000000000, !dbg !2206
  %handler_result56 = call double @fAddHandlerDouble(double %235, double %handler_result55), !dbg !2207
  store double %handler_result56, ptr %230, align 8, !dbg !2207, !tbaa !125
  %236 = icmp eq i32 %192, 0, !dbg !2208
  %237 = select i1 %236, i32 %193, i32 %192, !dbg !2208
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !2209
  br label %351

238:                                              ; preds = %139
  %handler_result57 = call double @fSubHandlerDouble(double %1, double %2), !dbg !2210
  %239 = fmul double %handler_result57, 5.000000e-01, !dbg !2210
  %240 = fcmp ult double %239, %0, !dbg !2211
  %241 = fneg double %2
  %242 = fcmp ugt double %241, %0
  %243 = and i1 %242, %240, !dbg !2212
  br i1 %243, label %292, label %244, !dbg !2212

244:                                              ; preds = %238
  %handler_result58 = call double @fSubHandlerDouble(double %0, double %1), !dbg !2213
  %245 = tail call double @llvm.floor.f64(double %handler_result58), !dbg !2213
  tail call void @llvm.dbg.value(metadata double %245, metadata !1920, metadata !DIExpression()), !dbg !1973
  %handler_result59 = call double @fAddHandlerDouble(double %245, double 1.000000e+00), !dbg !2214
  %handler_result60 = call double @fSubHandlerDouble(double %handler_result59, double %0), !dbg !2215
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double %1), !dbg !2216
  tail call void @llvm.dbg.value(metadata double %handler_result61, metadata !1924, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !2216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !2217
  %246 = fneg double %handler_result61, !dbg !2218
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double %0), !dbg !2219
  %247 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %246, double noundef %handler_result62, double noundef %2, ptr noundef nonnull %13), !dbg !2219
  tail call void @llvm.dbg.value(metadata i32 %247, metadata !1927, metadata !DIExpression()), !dbg !1973
  %handler_result63 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result61), !dbg !2220
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result62, double -1.000000e+00), !dbg !2221
  %248 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result63, double noundef %handler_result64, double noundef %2, ptr noundef nonnull %14), !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !1928, metadata !DIExpression()), !dbg !1973
  %249 = load double, ptr %13, align 8, !dbg !2222, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %249, metadata !1929, metadata !DIExpression()), !dbg !1973
  %250 = load double, ptr %14, align 8, !dbg !2223, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %250, metadata !1930, metadata !DIExpression()), !dbg !1973
  %251 = call double @llvm.fabs.f64(double %249), !dbg !2224
  %252 = call double @llvm.fabs.f64(double %250), !dbg !2225
  %handler_result65 = call double @fAddHandlerDouble(double %251, double %252), !dbg !2226
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !1933, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1934, metadata !DIExpression()), !dbg !1973
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !2226
  %254 = load double, ptr %253, align 8, !dbg !2226, !tbaa !125
  %255 = fdiv double %254, %249, !dbg !2227
  %256 = call double @llvm.fabs.f64(double %255), !dbg !2228
  tail call void @llvm.dbg.value(metadata double %256, metadata !1936, metadata !DIExpression()), !dbg !1973
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !2229
  %258 = load double, ptr %257, align 8, !dbg !2229, !tbaa !125
  %259 = fdiv double %258, %250, !dbg !2230
  %260 = call double @llvm.fabs.f64(double %259), !dbg !2231
  tail call void @llvm.dbg.value(metadata double %260, metadata !1937, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !1932, metadata !DIExpression()), !dbg !1973
  %handler_result66 = call double @fAddHandlerDouble(double %1, double 1.000000e-01), !dbg !2232
  %261 = fcmp ogt double %handler_result64, %handler_result66, !dbg !2232
  br i1 %261, label %262, label %279, !dbg !2235

262:                                              ; preds = %262, %244
  %263 = phi double [ %277, %262 ], [ 0x7FEFFFFFFFFFFFFF, %244 ]
  %264 = phi double [ %266, %262 ], [ %249, %244 ]
  %265 = phi double [ %handler_result71, %262 ], [ %handler_result64, %244 ]
  %266 = phi double [ %273, %262 ], [ %250, %244 ]
  tail call void @llvm.dbg.value(metadata double %263, metadata !1934, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %264, metadata !1929, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %265, metadata !1932, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %266, metadata !1930, metadata !DIExpression()), !dbg !1973
  %267 = fneg double %265, !dbg !2236
  %handler_result67 = call double @fSubHandlerDouble(double 1.000000e+00, double %265), !dbg !2238
  %handler_result68 = call double @fSubHandlerDouble(double %handler_result67, double %2), !dbg !2239
  %268 = fmul double %handler_result68, %267, !dbg !2239
  %269 = fmul double %266, %268, !dbg !2240
  %handler_result69 = call double @fSubHandlerDouble(double %265, double %0), !dbg !2241
  %270 = fmul double %handler_result69, %2, !dbg !2241
  %271 = fmul double %264, %270, !dbg !2242
  %handler_result70 = call double @fSubHandlerDouble(double %269, double %271), !dbg !2243
  %handler_result71 = call double @fAddHandlerDouble(double %265, double -1.000000e+00), !dbg !2244
  %272 = fmul double %265, %handler_result71, !dbg !2244
  %273 = fdiv double %handler_result70, %272, !dbg !2245
  tail call void @llvm.dbg.value(metadata double %273, metadata !1931, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %266, metadata !1929, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %273, metadata !1930, metadata !DIExpression()), !dbg !1973
  %274 = call double @llvm.fabs.f64(double %266), !dbg !2246
  %275 = call double @llvm.fabs.f64(double %273), !dbg !2247
  %handler_result72 = call double @fAddHandlerDouble(double %274, double %275), !dbg !2248
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !2139, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.dbg.value(metadata double %263, metadata !2140, metadata !DIExpression()), !dbg !2250
  %276 = fcmp olt double %handler_result72, %263, !dbg !2248
  %277 = select i1 %276, double %handler_result72, double %263, !dbg !2248
  tail call void @llvm.dbg.value(metadata double %277, metadata !1934, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !1932, metadata !DIExpression()), !dbg !1973
  %278 = fcmp ogt double %handler_result71, %handler_result66, !dbg !2232
  br i1 %278, label %262, label %279, !dbg !2235, !llvm.loop !2251

279:                                              ; preds = %262, %244
  %280 = phi double [ %252, %244 ], [ %275, %262 ], !dbg !2253
  %281 = phi double [ %250, %244 ], [ %273, %262 ], !dbg !1973
  %282 = phi double [ 0x7FEFFFFFFFFFFFFF, %244 ], [ %277, %262 ], !dbg !1973
  %283 = fdiv double %handler_result65, %282, !dbg !2254
  tail call void @llvm.dbg.value(metadata double %283, metadata !1935, metadata !DIExpression()), !dbg !1973
  store double %281, ptr %3, align 8, !dbg !2255, !tbaa !118
  %handler_result73 = call double @fAddHandlerDouble(double %256, double %260), !dbg !2256
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3CB0000000000000), !dbg !2257
  %284 = fmul double %handler_result74, 2.000000e+00, !dbg !2257
  %handler_result75 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !2258
  %285 = fmul double %handler_result75, %284, !dbg !2258
  %286 = fmul double %285, %280, !dbg !2259
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2260
  %288 = fmul double %283, %283, !dbg !2261
  %handler_result76 = call double @fAddHandlerDouble(double %288, double 1.000000e+00), !dbg !2262
  %289 = fmul double %286, %handler_result76, !dbg !2262
  store double %289, ptr %287, align 8, !dbg !2262, !tbaa !125
  %290 = icmp eq i32 %247, 0, !dbg !2263
  %291 = select i1 %290, i32 %248, i32 %247, !dbg !2263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !2264
  br label %351

292:                                              ; preds = %238
  %293 = tail call double @llvm.floor.f64(double %0), !dbg !2265
  %handler_result77 = call double @fSubHandlerDouble(double %0, double %293), !dbg !2266
  tail call void @llvm.dbg.value(metadata double %handler_result77, metadata !1938, metadata !DIExpression()), !dbg !2267
  %294 = tail call double @llvm.floor.f64(double %239), !dbg !2266
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double %294), !dbg !2268
  tail call void @llvm.dbg.value(metadata double %handler_result78, metadata !1940, metadata !DIExpression()), !dbg !2267
  %handler_result79 = call double @fSubHandlerDouble(double %handler_result78, double %1), !dbg !2269
  %295 = tail call double @llvm.floor.f64(double %handler_result79), !dbg !2269
  tail call void @llvm.dbg.value(metadata double %295, metadata !1941, metadata !DIExpression()), !dbg !2267
  %handler_result80 = call double @fAddHandlerDouble(double %295, double 1.000000e+00), !dbg !2270
  %handler_result81 = call double @fSubHandlerDouble(double %handler_result80, double %handler_result78), !dbg !2271
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double %1), !dbg !2272
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !1942, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !2272
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !2273
  %296 = fneg double %handler_result82, !dbg !2274
  %handler_result83 = call double @fAddHandlerDouble(double %handler_result78, double %handler_result82), !dbg !2275
  %297 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %296, double noundef %handler_result83, double noundef %2, ptr noundef nonnull %15), !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %297, metadata !1955, metadata !DIExpression()), !dbg !1976
  %handler_result84 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result82), !dbg !2276
  %handler_result85 = call double @fAddHandlerDouble(double %handler_result83, double -1.000000e+00), !dbg !2277
  %298 = call fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %handler_result84, double noundef %handler_result85, double noundef %2, ptr noundef nonnull %16), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %298, metadata !1956, metadata !DIExpression()), !dbg !1976
  %299 = load double, ptr %15, align 8, !dbg !2278, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %299, metadata !1957, metadata !DIExpression()), !dbg !1976
  %300 = load double, ptr %16, align 8, !dbg !2279, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %300, metadata !1958, metadata !DIExpression()), !dbg !1976
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !2280
  %302 = load double, ptr %301, align 8, !dbg !2280, !tbaa !125
  %303 = fdiv double %302, %299, !dbg !2281
  %304 = call double @llvm.fabs.f64(double %303), !dbg !2282
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !2283
  %306 = load double, ptr %305, align 8, !dbg !2283, !tbaa !125
  %307 = fdiv double %306, %300, !dbg !2284
  %308 = call double @llvm.fabs.f64(double %307), !dbg !2285
  %handler_result86 = call double @fAddHandlerDouble(double %304, double %308)
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !1951, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !1950, metadata !DIExpression()), !dbg !2267
  %handler_result87 = call double @fAddHandlerDouble(double %1, double 1.000000e-01), !dbg !2286
  %309 = fcmp ogt double %handler_result85, %handler_result87, !dbg !2286
  br i1 %309, label %310, label %322, !dbg !2289

310:                                              ; preds = %310, %292
  %311 = phi double [ %320, %310 ], [ %300, %292 ]
  %312 = phi double [ %311, %310 ], [ %299, %292 ]
  %313 = phi double [ %handler_result92, %310 ], [ %handler_result85, %292 ]
  tail call void @llvm.dbg.value(metadata double %311, metadata !1958, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %312, metadata !1957, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %313, metadata !1950, metadata !DIExpression()), !dbg !2267
  %314 = fneg double %313, !dbg !2290
  %handler_result88 = call double @fSubHandlerDouble(double 1.000000e+00, double %313), !dbg !2292
  %handler_result89 = call double @fSubHandlerDouble(double %handler_result88, double %2), !dbg !2293
  %315 = fmul double %handler_result89, %314, !dbg !2293
  %316 = fmul double %311, %315, !dbg !2294
  %handler_result90 = call double @fSubHandlerDouble(double %313, double %handler_result78), !dbg !2295
  %317 = fmul double %handler_result90, %2, !dbg !2295
  %318 = fmul double %312, %317, !dbg !2296
  %handler_result91 = call double @fSubHandlerDouble(double %316, double %318), !dbg !2297
  %handler_result92 = call double @fAddHandlerDouble(double %313, double -1.000000e+00), !dbg !2298
  %319 = fmul double %313, %handler_result92, !dbg !2298
  %320 = fdiv double %handler_result91, %319, !dbg !2299
  tail call void @llvm.dbg.value(metadata double %320, metadata !1959, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %320, metadata !1958, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %311, metadata !1957, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !1950, metadata !DIExpression()), !dbg !2267
  %321 = fcmp ogt double %handler_result92, %handler_result87, !dbg !2286
  br i1 %321, label %310, label %322, !dbg !2289, !llvm.loop !2300

322:                                              ; preds = %310, %292
  %323 = phi double [ %299, %292 ], [ %311, %310 ], !dbg !1976
  %324 = phi double [ %300, %292 ], [ %320, %310 ], !dbg !1976
  tail call void @llvm.dbg.value(metadata double %323, metadata !1944, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %324, metadata !1943, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double poison, metadata !1945, metadata !DIExpression()), !dbg !2267
  %325 = icmp eq i32 %297, 0, !dbg !2302
  %326 = select i1 %325, i32 %298, i32 %297, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %326, metadata !1946, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !2303
  %handler_result93 = call double @fAddHandlerDouble(double %0, double -1.000000e-01), !dbg !2304
  %327 = fcmp ult double %handler_result78, %handler_result93, !dbg !2304
  br i1 %327, label %328, label %345, !dbg !2306

328:                                              ; preds = %322
  %handler_result94 = call double @fAddHandlerDouble(double %handler_result78, double %2), !dbg !2307
  %329 = fmul double %handler_result94, %1, !dbg !2307
  %330 = fmul double %329, %324, !dbg !2308
  %331 = fmul double %handler_result79, %2, !dbg !2309
  %332 = fmul double %331, %323, !dbg !2310
  %handler_result95 = call double @fAddHandlerDouble(double %332, double %330), !dbg !2311
  %333 = fmul double %handler_result78, %1, !dbg !2311
  %334 = fdiv double %handler_result95, %333, !dbg !2312
  tail call void @llvm.dbg.value(metadata double %334, metadata !1945, metadata !DIExpression()), !dbg !2267
  %handler_result96 = call double @fAddHandlerDouble(double %handler_result78, double 1.000000e+00), !dbg !2313
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !1950, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %334, metadata !1948, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %324, metadata !1947, metadata !DIExpression()), !dbg !2267
  %335 = fcmp olt double %handler_result96, %handler_result93, !dbg !2313
  br i1 %335, label %336, label %345, !dbg !2313

336:                                              ; preds = %336, %328
  %337 = phi double [ %handler_result101, %336 ], [ %handler_result96, %328 ]
  %338 = phi double [ %343, %336 ], [ %334, %328 ]
  %339 = phi double [ %338, %336 ], [ %324, %328 ]
  tail call void @llvm.dbg.value(metadata double %337, metadata !1950, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %338, metadata !1948, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %339, metadata !1947, metadata !DIExpression()), !dbg !2267
  %handler_result97 = call double @fSubHandlerDouble(double %1, double %337), !dbg !2314
  %340 = fmul double %339, %handler_result97, !dbg !2314
  %341 = fmul double %337, 2.000000e+00, !dbg !2320
  %handler_result98 = call double @fSubHandlerDouble(double %341, double %1), !dbg !2321
  %handler_result99 = call double @fAddHandlerDouble(double %handler_result98, double %2), !dbg !2322
  %342 = fmul double %338, %handler_result99, !dbg !2322
  %handler_result100 = call double @fAddHandlerDouble(double %340, double %342), !dbg !2323
  %343 = fdiv double %handler_result100, %337, !dbg !2323
  tail call void @llvm.dbg.value(metadata double %343, metadata !1949, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %338, metadata !1947, metadata !DIExpression()), !dbg !2267
  tail call void @llvm.dbg.value(metadata double %343, metadata !1948, metadata !DIExpression()), !dbg !2267
  %handler_result101 = call double @fAddHandlerDouble(double %337, double 1.000000e+00), !dbg !2324
  tail call void @llvm.dbg.value(metadata double %handler_result101, metadata !1950, metadata !DIExpression()), !dbg !2267
  %344 = fcmp olt double %handler_result101, %handler_result93, !dbg !2324
  br i1 %344, label %336, label %345, !dbg !2325, !llvm.loop !2326

345:                                              ; preds = %336, %328, %322
  %346 = phi double [ %324, %322 ], [ %334, %328 ], [ %343, %336 ], !dbg !2328
  tail call void @llvm.dbg.value(metadata double %346, metadata !1948, metadata !DIExpression()), !dbg !2267
  store double %346, ptr %3, align 8, !dbg !2329, !tbaa !118
  %handler_result102 = call double @fAddHandlerDouble(double %handler_result86, double 0x3CB0000000000000), !dbg !2330
  %handler_result103 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !2331
  %347 = fmul double %handler_result103, %handler_result102, !dbg !2331
  %348 = call double @llvm.fabs.f64(double %346), !dbg !2332
  %349 = fmul double %347, %348, !dbg !2333
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2334
  store double %349, ptr %350, align 8, !dbg !2335, !tbaa !125
  br label %351

351:                                              ; preds = %345, %279, %221, %174, %122, %84, %61, %57, %43, %29
  %352 = phi i32 [ %30, %29 ], [ %44, %43 ], [ %58, %57 ], [ %62, %61 ], [ %101, %84 ], [ %138, %122 ], [ %189, %174 ], [ %237, %221 ], [ %291, %279 ], [ %326, %345 ], !dbg !2336
  ret i32 %352, !dbg !2337
}

declare !dbg !2338 i32 @gsl_sf_hyperg_1F1_series_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_1F1_a_negint_poly(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !426 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !2340
  tail call void @llvm.dbg.value(metadata double %1, metadata !430, metadata !DIExpression()), !dbg !2340
  tail call void @llvm.dbg.value(metadata double %2, metadata !431, metadata !DIExpression()), !dbg !2340
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !432, metadata !DIExpression()), !dbg !2340
  %5 = icmp eq i32 %0, 0, !dbg !2341
  br i1 %5, label %6, label %8, !dbg !2342

6:                                                ; preds = %4
  store double 1.000000e+00, ptr %3, align 8, !dbg !2343, !tbaa !118
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2344
  store double 1.000000e+00, ptr %7, align 8, !dbg !2345, !tbaa !125
  br label %42, !dbg !2346

8:                                                ; preds = %4
  %9 = sub nsw i32 0, %0, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !433, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !437, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !2348
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !436, metadata !DIExpression()), !dbg !2348
  %10 = icmp slt i32 %0, 0, !dbg !2349
  br i1 %10, label %11, label %33, !dbg !2350

11:                                               ; preds = %8
  %12 = xor i32 %0, -1, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !437, metadata !DIExpression()), !dbg !2348
  br label %13, !dbg !2350

13:                                               ; preds = %29, %11
  %14 = phi double [ %30, %29 ], [ 1.000000e+00, %11 ]
  %15 = phi i32 [ %31, %29 ], [ %12, %11 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !436, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !437, metadata !DIExpression()), !dbg !2348
  %16 = add nsw i32 %15, %0, !dbg !2352
  %17 = sitofp i32 %16 to double, !dbg !2353
  %18 = sitofp i32 %15 to double, !dbg !2354
  %handler_result = call double @fAddHandlerDouble(double %18, double %1), !dbg !2355
  %19 = fdiv double %17, %handler_result, !dbg !2355
  %20 = add nuw nsw i32 %15, 1, !dbg !2356
  %21 = sitofp i32 %20 to double, !dbg !2357
  %22 = fdiv double %2, %21, !dbg !2358
  %23 = fmul double %19, %22, !dbg !2359
  tail call void @llvm.dbg.value(metadata double %23, metadata !438, metadata !DIExpression()), !dbg !2360
  %24 = fdiv double 1.000000e+00, %14, !dbg !2361
  %handler_result1 = call double @fAddHandlerDouble(double %24, double %23), !dbg !2362
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !442, metadata !DIExpression()), !dbg !2360
  %25 = fdiv double 0x7FECCCCCCCCCCCCC, %14, !dbg !2362
  %26 = fcmp ule double %handler_result1, %25, !dbg !2363
  br i1 %26, label %29, label %27, !dbg !2364

27:                                               ; preds = %13
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !2365, !tbaa !118
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2365
  store double 0x7FF0000000000000, ptr %28, align 8, !dbg !2365, !tbaa !125
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1198, i32 noundef 16) #8, !dbg !2366
  tail call void @llvm.dbg.value(metadata double undef, metadata !436, metadata !DIExpression()), !dbg !2348
  br label %42

29:                                               ; preds = %13
  %30 = fmul double %14, %handler_result1, !dbg !2367
  tail call void @llvm.dbg.value(metadata double %30, metadata !436, metadata !DIExpression()), !dbg !2348
  %31 = add nsw i32 %15, -1, !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !437, metadata !DIExpression()), !dbg !2348
  %32 = icmp sgt i32 %15, 0, !dbg !2349
  br i1 %32, label %13, label %33, !dbg !2350, !llvm.loop !2369

33:                                               ; preds = %29, %8
  %34 = phi double [ 1.000000e+00, %8 ], [ %30, %29 ], !dbg !2371
  store double %34, ptr %3, align 8, !dbg !2372, !tbaa !118
  %35 = sitofp i32 %9 to double, !dbg !2373
  %36 = tail call double @sqrt(double noundef %35) #8, !dbg !2374
  %handler_result2 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !2375
  %37 = fmul double %handler_result2, 2.000000e+00, !dbg !2375
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !2376
  %39 = tail call double @llvm.fabs.f64(double %34), !dbg !2377
  %40 = fmul double %39, %38, !dbg !2378
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2379
  store double %40, ptr %41, align 8, !dbg !2380, !tbaa !125
  br label %42, !dbg !2381

42:                                               ; preds = %33, %27, %6
  %43 = phi i32 [ 0, %6 ], [ 16, %27 ], [ 0, %33 ], !dbg !2382
  ret i32 %43, !dbg !2383
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_ab_neg(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2384 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2397, metadata !DIExpression(), metadata !2414, metadata ptr %5, metadata !DIExpression()), !dbg !2415
  tail call void @llvm.dbg.value(metadata double %0, metadata !2386, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata double %1, metadata !2387, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata double %2, metadata !2388, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2389, metadata !DIExpression()), !dbg !2416
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !2417
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !2390, metadata !DIExpression()), !dbg !2416
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !2417
  tail call void @llvm.dbg.value(metadata double %6, metadata !2391, metadata !DIExpression()), !dbg !2416
  %7 = tail call double @llvm.fabs.f64(double %0), !dbg !2418
  tail call void @llvm.dbg.value(metadata double %7, metadata !2392, metadata !DIExpression()), !dbg !2416
  %8 = tail call double @llvm.fabs.f64(double %1), !dbg !2419
  tail call void @llvm.dbg.value(metadata double %8, metadata !2393, metadata !DIExpression()), !dbg !2416
  %9 = fcmp ogt double %7, 1.000000e+00, !dbg !2420
  %10 = select i1 %9, double %7, double 1.000000e+00, !dbg !2420
  tail call void @llvm.dbg.value(metadata double %10, metadata !2394, metadata !DIExpression()), !dbg !2416
  %11 = fcmp ogt double %8, 1.000000e+00, !dbg !2421
  %12 = select i1 %11, double %8, double 1.000000e+00, !dbg !2421
  tail call void @llvm.dbg.value(metadata double %12, metadata !2395, metadata !DIExpression()), !dbg !2416
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double 5.000000e-01), !dbg !2422
  %13 = tail call double @llvm.floor.f64(double %handler_result1), !dbg !2422
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result, double %13), !dbg !2423
  %14 = fcmp olt double %handler_result2, 0x3D19000000000000, !dbg !2423
  tail call void @llvm.dbg.value(metadata i1 %14, metadata !2396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2416
  %15 = fcmp olt double %7, 1.000000e+01, !dbg !2424
  %16 = fcmp olt double %8, 1.000000e+01
  %17 = and i1 %15, %16, !dbg !2425
  %18 = fcmp olt double %6, 5.000000e+00
  %19 = and i1 %17, %18, !dbg !2425
  br i1 %19, label %24, label %20, !dbg !2425

20:                                               ; preds = %4
  %21 = fmul double %10, 8.000000e-01, !dbg !2426
  %22 = fmul double %6, %21, !dbg !2427
  %23 = fcmp olt double %22, %1, !dbg !2428
  br i1 %23, label %24, label %26, !dbg !2429

24:                                               ; preds = %20, %4
  %25 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !2430
  br label %100, !dbg !2432

26:                                               ; preds = %20
  %27 = fcmp ogt double %2, 0.000000e+00, !dbg !2433
  %28 = fcmp ogt double %12, %10
  %29 = and i1 %27, %28, !dbg !2434
  br i1 %29, label %30, label %37, !dbg !2434

30:                                               ; preds = %26
  %31 = fmul double %2, 0x4005BF0A8B145769, !dbg !2435
  %32 = fdiv double %31, %12, !dbg !2436
  %handler_result6 = call double @callHandler(i32 12, double %32, double %32), !dbg !2437
  %33 = fmul double %10, %handler_result6, !dbg !2437
  %34 = fcmp olt double %33, 0xC03D0B2CDE569E24, !dbg !2438
  br i1 %34, label %35, label %37, !dbg !2439

35:                                               ; preds = %30
  %36 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !2440
  br label %100, !dbg !2442

37:                                               ; preds = %30, %26
  %38 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !2443
  %39 = fcmp olt double %38, 1.000000e+01
  %40 = and i1 %16, %39
  %41 = and i1 %18, %40, !dbg !2444
  br i1 %41, label %48, label %42, !dbg !2444

42:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata double %38, metadata !160, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2445
  %43 = fcmp ogt double %38, 1.000000e+00, !dbg !2447
  %44 = select i1 %43, double %38, double 1.000000e+00, !dbg !2447
  %45 = fmul double %44, 8.000000e-01, !dbg !2448
  %46 = fmul double %6, %45, !dbg !2449
  %47 = fcmp olt double %46, %1, !dbg !2450
  br i1 %47, label %48, label %58, !dbg !2451

48:                                               ; preds = %42, %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !2452
  %49 = fneg double %2, !dbg !2453
  %50 = call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %handler_result, double noundef %1, double noundef %49, ptr noundef nonnull %5) #8, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !2402, metadata !DIExpression()), !dbg !2415
  %51 = fmul double %6, 0x3CB0000000000000, !dbg !2455
  %52 = load double, ptr %5, align 8, !dbg !2456, !tbaa !118
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2457
  %54 = load double, ptr %53, align 8, !dbg !2457, !tbaa !125
  %55 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %51, double noundef %52, double noundef %54, ptr noundef %3) #8, !dbg !2458
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2403, metadata !DIExpression()), !dbg !2415
  %56 = icmp eq i32 %55, 0, !dbg !2459
  %57 = select i1 %56, i32 %50, i32 %55, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2460
  br label %100

58:                                               ; preds = %42
  %59 = fcmp olt double %2, -3.000000e+01, !dbg !2461
  br i1 %59, label %60, label %69, !dbg !2462

60:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata double %7, metadata !160, metadata !DIExpression()), !dbg !2463
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2463
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !2465
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %1), !dbg !2466
  %61 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !2466
  tail call void @llvm.dbg.value(metadata double %61, metadata !160, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2467
  %62 = fcmp ogt double %61, 1.000000e+00, !dbg !2469
  %63 = select i1 %62, double %61, double 1.000000e+00, !dbg !2469
  %64 = fmul double %10, %63, !dbg !2470
  %65 = fmul double %6, 0x3FEFAE147AE147AE, !dbg !2471
  %66 = fcmp olt double %64, %65, !dbg !2472
  br i1 %66, label %67, label %69, !dbg !2473

67:                                               ; preds = %60
  %68 = tail call fastcc i32 @hyperg_1F1_asymp_negx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2474
  br label %100, !dbg !2476

69:                                               ; preds = %60, %58
  %70 = fcmp ogt double %2, 1.000000e+02, !dbg !2477
  br i1 %70, label %71, label %80, !dbg !2478

71:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata double %38, metadata !160, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2479
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !2481
  %72 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !2481
  tail call void @llvm.dbg.value(metadata double %72, metadata !160, metadata !DIExpression()), !dbg !2482
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2482
  %73 = fcmp ogt double %72, 1.000000e+00, !dbg !2484
  %74 = select i1 %73, double %72, double 1.000000e+00, !dbg !2484
  %75 = fmul double %74, %44, !dbg !2485
  %76 = fmul double %6, 0x3FEFAE147AE147AE, !dbg !2486
  %77 = fcmp olt double %75, %76, !dbg !2487
  br i1 %77, label %78, label %80, !dbg !2488

78:                                               ; preds = %71
  %79 = tail call fastcc i32 @hyperg_1F1_asymp_posx(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2489
  br label %100, !dbg !2491

80:                                               ; preds = %71, %69
  %81 = xor i1 %27, true, !dbg !2492
  %82 = fcmp ogt double %handler_result, 0.000000e+00
  %83 = and i1 %82, %14
  %84 = or i1 %83, %81, !dbg !2492
  br i1 %84, label %87, label %85, !dbg !2492

85:                                               ; preds = %80
  %86 = tail call fastcc i32 @hyperg_1F1_U(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !2493
  br label %100, !dbg !2495

87:                                               ; preds = %80
  %88 = fcmp olt double %2, 0.000000e+00, !dbg !2496
  br i1 %88, label %89, label %98, !dbg !2497

89:                                               ; preds = %87
  %90 = fneg double %2, !dbg !2498
  %91 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %handler_result, double noundef %1, double noundef %90, ptr noundef %3) #8, !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 %91, metadata !2404, metadata !DIExpression()), !dbg !2500
  %92 = tail call double @exp(double noundef %2) #8, !dbg !2501
  tail call void @llvm.dbg.value(metadata double %92, metadata !2411, metadata !DIExpression()), !dbg !2500
  %93 = load double, ptr %3, align 8, !dbg !2502, !tbaa !118
  %94 = fmul double %92, %93, !dbg !2502
  store double %94, ptr %3, align 8, !dbg !2502, !tbaa !118
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2503
  %96 = load double, ptr %95, align 8, !dbg !2504, !tbaa !125
  %97 = fmul double %92, %96, !dbg !2504
  store double %97, ptr %95, align 8, !dbg !2504, !tbaa !125
  br label %100

98:                                               ; preds = %87
  %99 = tail call i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #8, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !2412, metadata !DIExpression()), !dbg !2506
  br label %100

100:                                              ; preds = %98, %89, %85, %78, %67, %48, %35, %24
  %101 = phi i32 [ %25, %24 ], [ %36, %35 ], [ %57, %48 ], [ %68, %67 ], [ %79, %78 ], [ %91, %89 ], [ %99, %98 ], [ %86, %85 ], !dbg !2507
  ret i32 %101, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_1F1_int(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2509 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2518
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2518, metadata ptr %4, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2513, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata double %2, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2520
  %5 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2517, metadata !DIExpression()), !dbg !2519
  %6 = icmp eq i32 %5, 0, !dbg !2521
  br i1 %6, label %8, label %7, !dbg !2520

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 2059, i32 noundef %5) #8, !dbg !2523
  br label %8, !dbg !2523

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2520, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2526
  ret double %9, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hyperg_1F1(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !2527 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2534, metadata !DIExpression(), metadata !2536, metadata ptr %4, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata double %0, metadata !2531, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata double %1, metadata !2532, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata double %2, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2538
  %5 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2535, metadata !DIExpression()), !dbg !2537
  %6 = icmp eq i32 %5, 0, !dbg !2539
  br i1 %6, label %8, label %7, !dbg !2538

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 2064, i32 noundef %5) #8, !dbg !2541
  br label %8, !dbg !2541

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !2538, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2544
  ret double %9, !dbg !2544
}

declare !dbg !2545 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2550 i32 @gsl_sf_hyperg_2F0_series_e(double noundef, double noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2553 i32 @gsl_sf_exprel_n_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_beq2a_pos(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !2554 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2559, metadata !DIExpression(), metadata !2569, metadata ptr %4, metadata !DIExpression()), !dbg !2570
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2571
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2563, metadata !DIExpression(), metadata !2571, metadata ptr %5, metadata !DIExpression()), !dbg !2570
  tail call void @llvm.dbg.value(metadata double %0, metadata !2556, metadata !DIExpression()), !dbg !2572
  tail call void @llvm.dbg.value(metadata double %1, metadata !2557, metadata !DIExpression()), !dbg !2572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2558, metadata !DIExpression()), !dbg !2572
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !2573
  br i1 %6, label %7, label %9, !dbg !2574

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !2575, !tbaa !118
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2577
  store double 0.000000e+00, ptr %8, align 8, !dbg !2578, !tbaa !125
  br label %31, !dbg !2579

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2580
  %handler_result = call double @fAddHandlerDouble(double %0, double -5.000000e-01), !dbg !2581
  %10 = tail call double @llvm.fabs.f64(double %1), !dbg !2581
  %11 = fmul double %10, 5.000000e-01, !dbg !2582
  %12 = call i32 @gsl_sf_bessel_Inu_scaled_e(double noundef %handler_result, double noundef %11, ptr noundef nonnull %4) #8, !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2562, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !2584
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !2585
  %13 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result1, ptr noundef nonnull %5) #8, !dbg !2585
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2564, metadata !DIExpression()), !dbg !2570
  %handler_result2 = call double @fSubHandlerDouble(double 5.000000e-01, double %0), !dbg !2586
  %14 = fmul double %10, 2.500000e-01, !dbg !2586
  %handler_result7 = call double @callHandler(i32 12, double %14, double %14), !dbg !2587
  %15 = fmul double %handler_result2, %handler_result7, !dbg !2587
  tail call void @llvm.dbg.value(metadata double %15, metadata !2565, metadata !DIExpression()), !dbg !2570
  %16 = load double, ptr %5, align 8, !dbg !2588, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %1, metadata !160, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !166, metadata !DIExpression()), !dbg !2589
  %17 = fcmp ogt double %1, 0.000000e+00, !dbg !2591
  %18 = select i1 %17, double %1, double 0.000000e+00, !dbg !2591
  %handler_result3 = call double @fAddHandlerDouble(double %18, double %16), !dbg !2592
  %handler_result4 = call double @fAddHandlerDouble(double %15, double %handler_result3), !dbg !2593
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !2566, metadata !DIExpression()), !dbg !2570
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2593
  %20 = load double, ptr %19, align 8, !dbg !2593, !tbaa !125
  %21 = call double @llvm.fabs.f64(double %15), !dbg !2594
  %handler_result5 = call double @fAddHandlerDouble(double %10, double %21), !dbg !2595
  %22 = fmul double %handler_result5, 0x3CB0000000000000, !dbg !2595
  %handler_result6 = call double @fAddHandlerDouble(double %20, double %22), !dbg !2596
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2567, metadata !DIExpression()), !dbg !2570
  %23 = load double, ptr %4, align 8, !dbg !2596, !tbaa !118
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2597
  %25 = load double, ptr %24, align 8, !dbg !2597, !tbaa !125
  %26 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result4, double noundef %handler_result6, double noundef %23, double noundef %25, ptr noundef %2) #8, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2568, metadata !DIExpression()), !dbg !2570
  %27 = icmp eq i32 %26, 0, !dbg !2599
  %28 = icmp eq i32 %13, 0, !dbg !2599
  %29 = select i1 %28, i32 %12, i32 %13, !dbg !2599
  %30 = select i1 %27, i32 %29, i32 %26, !dbg !2599
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2600
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2600
  br label %31

31:                                               ; preds = %9, %7
  %32 = phi i32 [ 0, %7 ], [ %30, %9 ], !dbg !2601
  ret i32 %32, !dbg !2602
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @hyperg_1F1_CF1_p_ser(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !2603 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2607, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata double %1, metadata !2608, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata double %2, metadata !2609, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2610, metadata !DIExpression()), !dbg !2622
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !2623
  br i1 %5, label %7, label %6, !dbg !2624

6:                                                ; preds = %4
  %handler_result = call double @fSubHandlerDouble(double %1, double %2), !dbg !2625
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2617, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2616, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2615, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2614, metadata !DIExpression()), !dbg !2626
  br label %8, !dbg !2625

7:                                                ; preds = %4
  store double 0.000000e+00, ptr %3, align 8, !dbg !2627, !tbaa !305
  br label %34, !dbg !2629

8:                                                ; preds = %28, %6
  %9 = phi i32 [ 1, %6 ], [ %29, %28 ]
  %10 = phi double [ 0.000000e+00, %6 ], [ %20, %28 ]
  %11 = phi double [ 1.000000e+00, %6 ], [ %21, %28 ]
  %12 = phi double [ 1.000000e+00, %6 ], [ %handler_result6, %28 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2617, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %10, metadata !2616, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %11, metadata !2615, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %12, metadata !2614, metadata !DIExpression()), !dbg !2626
  %13 = sitofp i32 %9 to double, !dbg !2630
  %handler_result1 = call double @fAddHandlerDouble(double %13, double %0), !dbg !2631
  %14 = fmul double %handler_result1, %2, !dbg !2631
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double %13), !dbg !2632
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !2633
  %15 = fmul double %handler_result2, %handler_result3, !dbg !2633
  %16 = fdiv double %14, %15, !dbg !2634
  tail call void @llvm.dbg.value(metadata double %16, metadata !2618, metadata !DIExpression()), !dbg !2635
  %17 = fneg double %16, !dbg !2636
  %handler_result4 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !2637
  %18 = fmul double %handler_result4, %17, !dbg !2637
  %19 = fmul double %handler_result4, %16, !dbg !2638
  %handler_result5 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !2639
  %20 = fdiv double %18, %handler_result5, !dbg !2639
  tail call void @llvm.dbg.value(metadata double %20, metadata !2616, metadata !DIExpression()), !dbg !2626
  %21 = fmul double %11, %20, !dbg !2640
  tail call void @llvm.dbg.value(metadata double %21, metadata !2615, metadata !DIExpression()), !dbg !2626
  %handler_result6 = call double @fAddHandlerDouble(double %12, double %21), !dbg !2641
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2614, metadata !DIExpression()), !dbg !2626
  %22 = fdiv double %21, %handler_result6, !dbg !2641
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !2643
  %24 = fcmp olt double %23, 0x3CC0000000000000, !dbg !2644
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2614, metadata !DIExpression()), !dbg !2626
  %26 = fdiv double %0, %handler_result, !dbg !2645
  %27 = fmul double %26, %handler_result6, !dbg !2646
  store double %27, ptr %3, align 8, !dbg !2647, !tbaa !305
  br label %34, !dbg !2648

28:                                               ; preds = %8
  %29 = add nuw nsw i32 %9, 1, !dbg !2649
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2617, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %20, metadata !2616, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %21, metadata !2615, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2614, metadata !DIExpression()), !dbg !2626
  %30 = icmp eq i32 %29, 5000, !dbg !2650
  br i1 %30, label %31, label %8, !dbg !2625, !llvm.loop !2651

31:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2614, metadata !DIExpression()), !dbg !2626
  %32 = fdiv double %0, %handler_result, !dbg !2645
  %33 = fmul double %32, %handler_result6, !dbg !2646
  store double %33, ptr %3, align 8, !dbg !2647, !tbaa !305
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 11) #8, !dbg !2653
  br label %34, !dbg !2653

34:                                               ; preds = %31, %25, %7
  %35 = phi i32 [ 0, %7 ], [ 11, %31 ], [ 0, %25 ], !dbg !2656
  ret i32 %35, !dbg !2657
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2658 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

declare !dbg !2659 i32 @gsl_sf_bessel_Inu_scaled_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2663 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2666 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !2667 i32 @gsl_sf_bessel_I1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2668 double @pow(double noundef, double noundef) local_unnamed_addr #4

declare !dbg !2669 double @gsl_sf_bessel_In_scaled(i32 noundef, double noundef) local_unnamed_addr #1

declare !dbg !2672 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2673 i32 @gsl_sf_bessel_J1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2674 i32 @gsl_sf_laguerre_n_e(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2676 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2681 i32 @gsl_sf_lnbeta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2682 i32 @gsl_sf_beta_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc void @hyperg_1F1_largebx(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !dbg !2683 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2686, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata double %1, metadata !2687, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata double %2, metadata !2688, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2689, metadata !DIExpression()), !dbg !2695
  %5 = fdiv double %2, %1, !dbg !2696
  tail call void @llvm.dbg.value(metadata double %5, metadata !2690, metadata !DIExpression()), !dbg !2695
  %6 = fneg double %0, !dbg !2697
  %7 = fneg double %5, !dbg !2698
  %8 = tail call double @log1p(double noundef %7) #8, !dbg !2699
  %9 = fmul double %8, %6, !dbg !2700
  %10 = tail call double @exp(double noundef %9) #8, !dbg !2701
  tail call void @llvm.dbg.value(metadata double %10, metadata !2691, metadata !DIExpression()), !dbg !2695
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !2702
  %11 = fmul double %handler_result, %0, !dbg !2702
  %12 = fmul double %1, 2.000000e+00, !dbg !2703
  %13 = fneg double %11, !dbg !2704
  %14 = fdiv double %13, %12, !dbg !2704
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %5), !dbg !2705
  %15 = fdiv double %5, %handler_result1, !dbg !2705
  %16 = fmul double %15, %15, !dbg !2706
  %17 = fmul double %14, %16, !dbg !2707
  tail call void @llvm.dbg.value(metadata double %17, metadata !2692, metadata !DIExpression()), !dbg !2695
  %18 = fmul double %1, 2.400000e+01, !dbg !2708
  %19 = fmul double %18, %1, !dbg !2709
  %20 = fdiv double 1.000000e+00, %19, !dbg !2710
  %21 = fmul double %11, %5, !dbg !2711
  %22 = fmul double %5, %21, !dbg !2712
  %23 = tail call double @pow(double noundef %handler_result1, double noundef 4.000000e+00) #8, !dbg !2713
  %24 = fdiv double %22, %23, !dbg !2714
  %25 = fmul double %20, %24, !dbg !2715
  %26 = fmul double %0, 2.000000e+00, !dbg !2716
  %handler_result2 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !2717
  %27 = fmul double %handler_result2, 8.000000e+00, !dbg !2717
  %28 = fmul double %27, %5, !dbg !2718
  %handler_result3 = call double @fAddHandlerDouble(double %28, double 1.200000e+01), !dbg !2719
  %29 = fmul double %0, 3.000000e+00, !dbg !2719
  %30 = fmul double %29, %0, !dbg !2720
  %handler_result4 = call double @fSubHandlerDouble(double %30, double %0), !dbg !2721
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -2.000000e+00), !dbg !2722
  %31 = fmul double %5, %handler_result5, !dbg !2722
  %32 = fmul double %5, %31, !dbg !2723
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result3, double %32), !dbg !2724
  %33 = fmul double %handler_result6, %25, !dbg !2724
  tail call void @llvm.dbg.value(metadata double %33, metadata !2693, metadata !DIExpression()), !dbg !2695
  %34 = fmul double %1, 4.800000e+01, !dbg !2725
  %35 = fmul double %34, %1, !dbg !2726
  %36 = fmul double %35, %1, !dbg !2727
  %37 = tail call double @pow(double noundef %handler_result1, double noundef 6.000000e+00) #8, !dbg !2728
  %38 = fmul double %36, %37, !dbg !2729
  %39 = fdiv double -1.000000e+00, %38, !dbg !2730
  %40 = fmul double %39, %0, !dbg !2731
  %handler_result7 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !2732
  %41 = fmul double %handler_result7, %5, !dbg !2732
  %handler_result8 = call double @fAddHandlerDouble(double %41, double 1.600000e+01), !dbg !2733
  %handler_result9 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !2734
  %42 = fmul double %handler_result9, %handler_result8, !dbg !2734
  %43 = fmul double %5, %42, !dbg !2735
  %handler_result10 = call double @fAddHandlerDouble(double %43, double 7.200000e+01), !dbg !2736
  %44 = fmul double %5, %handler_result10, !dbg !2736
  %45 = fmul double %44, %0, !dbg !2737
  %handler_result11 = call double @fAddHandlerDouble(double %45, double 9.600000e+01), !dbg !2738
  %46 = fmul double %handler_result, %handler_result11, !dbg !2738
  %47 = fmul double %5, %46, !dbg !2739
  %handler_result12 = call double @fAddHandlerDouble(double %47, double 2.400000e+01), !dbg !2740
  %48 = fmul double %5, %5, !dbg !2740
  %49 = fmul double %48, %handler_result12, !dbg !2741
  %50 = fmul double %handler_result, %49, !dbg !2742
  %51 = fmul double %50, %40, !dbg !2743
  tail call void @llvm.dbg.value(metadata double %51, metadata !2694, metadata !DIExpression()), !dbg !2695
  %handler_result13 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !2744
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %33), !dbg !2745
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double %51), !dbg !2746
  %52 = fmul double %10, %handler_result15, !dbg !2746
  store double %52, ptr %3, align 8, !dbg !2747, !tbaa !118
  %53 = fmul double %10, %51, !dbg !2748
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !2749
  %55 = fmul double %54, 2.000000e+00, !dbg !2750
  %56 = tail call double @llvm.fabs.f64(double %52), !dbg !2751
  %57 = fmul double %56, 0x3CC0000000000000, !dbg !2752
  %handler_result16 = call double @fAddHandlerDouble(double %55, double %57), !dbg !2753
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2753
  store double %handler_result16, ptr %58, align 8, !dbg !2754, !tbaa !125
  ret void, !dbg !2755
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_large2bm4a(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !2756 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2767, metadata !DIExpression(), metadata !2778, metadata ptr %5, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata double %0, metadata !2758, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata double %1, metadata !2759, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata double %2, metadata !2760, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2779
  %6 = fmul double %1, 2.000000e+00, !dbg !2780
  %7 = fmul double %0, 4.000000e+00, !dbg !2781
  %handler_result = call double @fSubHandlerDouble(double %6, double %7), !dbg !2782
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !2762, metadata !DIExpression()), !dbg !2779
  %8 = fdiv double %2, %handler_result, !dbg !2782
  tail call void @llvm.dbg.value(metadata double %8, metadata !2763, metadata !DIExpression()), !dbg !2779
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %8), !dbg !2783
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !2764, metadata !DIExpression()), !dbg !2779
  %9 = tail call double @sqrt(double noundef %8) #8, !dbg !2783
  %handler_result13 = call double @callHandler(i32 5, double %9, double %9), !dbg !2784
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !2765, metadata !DIExpression()), !dbg !2779
  %10 = fmul double %handler_result, 0x4003BD3CC9BE45DE, !dbg !2784
  %11 = fmul double %handler_result, %10, !dbg !2785
  %12 = fmul double %8, %11, !dbg !2786
  %13 = fmul double %handler_result1, %12, !dbg !2787
  tail call void @llvm.dbg.value(metadata double %13, metadata !2766, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !2788
  %14 = call i32 @gsl_sf_lngamma_e(double noundef %1, ptr noundef nonnull %5) #8, !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2768, metadata !DIExpression()), !dbg !2779
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !2790
  %15 = fmul double %handler_result2, 5.000000e-01, !dbg !2790
  %16 = fmul double %2, 2.500000e-01, !dbg !2791
  %17 = fmul double %16, %handler_result, !dbg !2792
  %handler_result14 = call double @callHandler(i32 12, double %17, double %17), !dbg !2793
  %18 = fmul double %15, %handler_result14, !dbg !2793
  tail call void @llvm.dbg.value(metadata double %18, metadata !2769, metadata !DIExpression()), !dbg !2779
  %handler_result15 = call double @callHandler(i32 12, double %13, double %13), !dbg !2794
  %19 = fmul double %handler_result15, 2.500000e-01, !dbg !2794
  tail call void @llvm.dbg.value(metadata double %19, metadata !2770, metadata !DIExpression()), !dbg !2779
  %20 = load double, ptr %5, align 8, !dbg !2795, !tbaa !118
  %21 = fmul double %2, 5.000000e-01, !dbg !2796
  %handler_result3 = call double @fAddHandlerDouble(double %21, double %20), !dbg !2797
  %handler_result4 = call double @fAddHandlerDouble(double %18, double %handler_result3), !dbg !2798
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %19), !dbg !2799
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2771, metadata !DIExpression()), !dbg !2779
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !2799
  %23 = load double, ptr %22, align 8, !dbg !2799, !tbaa !125
  %24 = call double @llvm.fabs.f64(double %21), !dbg !2800
  %25 = call double @llvm.fabs.f64(double %18), !dbg !2801
  %handler_result6 = call double @fAddHandlerDouble(double %24, double %25), !dbg !2802
  %26 = call double @llvm.fabs.f64(double %19), !dbg !2802
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %26), !dbg !2803
  %27 = fmul double %handler_result7, 0x3CC0000000000000, !dbg !2803
  %handler_result8 = call double @fAddHandlerDouble(double %23, double %27), !dbg !2804
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !2772, metadata !DIExpression()), !dbg !2779
  %28 = fmul double %0, 0x400921FB54442D18, !dbg !2804
  %handler_result16 = call double @callHandler(i32 1, double %28, double %28), !dbg !2805
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !2773, metadata !DIExpression()), !dbg !2779
  %29 = fmul double %handler_result, 2.500000e-01, !dbg !2805
  %30 = fmul double %handler_result13, 2.000000e+00, !dbg !2806
  %handler_result17 = call double @callHandler(i32 1, double %30, double %30), !dbg !2807
  %handler_result9 = call double @fSubHandlerDouble(double %30, double %handler_result17), !dbg !2807
  %31 = fmul double %29, %handler_result9, !dbg !2807
  %handler_result10 = call double @fAddHandlerDouble(double %31, double 0x3FE921FB54442D18), !dbg !2808
  %handler_result18 = call double @callHandler(i32 1, double %handler_result10, double %handler_result10), !dbg !2809
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !2774, metadata !DIExpression()), !dbg !2779
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result16, double %handler_result18), !dbg !2809
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !2775, metadata !DIExpression()), !dbg !2779
  %32 = call double @llvm.fabs.f64(double %handler_result16), !dbg !2809
  %33 = call double @llvm.fabs.f64(double %handler_result18), !dbg !2810
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %33), !dbg !2811
  %34 = fmul double %handler_result12, 0x3CC0000000000000, !dbg !2811
  tail call void @llvm.dbg.value(metadata double %34, metadata !2776, metadata !DIExpression()), !dbg !2779
  %35 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result5, double noundef %handler_result8, double noundef %handler_result11, double noundef %34, ptr noundef %3) #8, !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !2777, metadata !DIExpression()), !dbg !2779
  %36 = icmp eq i32 %35, 0, !dbg !2813
  %37 = select i1 %36, i32 %14, i32 %35, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !2814
  ret i32 %37, !dbg !2815
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @hyperg_1F1_luke(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2818, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %1, metadata !2819, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %2, metadata !2820, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2821, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double 1.000000e+50, metadata !2822, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !2823, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata i32 3, metadata !2824, metadata !DIExpression()), !dbg !2853
  %5 = fneg double %2, !dbg !2854
  tail call void @llvm.dbg.value(metadata double %5, metadata !2825, metadata !DIExpression()), !dbg !2853
  %6 = fmul double %2, %2, !dbg !2855
  %7 = fmul double %6, %5, !dbg !2856
  tail call void @llvm.dbg.value(metadata double %7, metadata !2826, metadata !DIExpression()), !dbg !2853
  %8 = fdiv double %0, %1, !dbg !2857
  tail call void @llvm.dbg.value(metadata double %8, metadata !2827, metadata !DIExpression()), !dbg !2853
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !2858
  %9 = fmul double %1, 2.000000e+00, !dbg !2858
  %10 = fdiv double %handler_result, %9, !dbg !2859
  tail call void @llvm.dbg.value(metadata double %10, metadata !2828, metadata !DIExpression()), !dbg !2853
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !2860
  %handler_result2 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !2861
  %11 = fmul double %handler_result2, 2.000000e+00, !dbg !2861
  %12 = fdiv double %handler_result1, %11, !dbg !2862
  tail call void @llvm.dbg.value(metadata double %12, metadata !2829, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2830, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2832, metadata !DIExpression()), !dbg !2853
  %13 = fmul double %10, %2, !dbg !2863
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !2864
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !2833, metadata !DIExpression()), !dbg !2853
  %14 = fmul double %12, %5, !dbg !2864
  %15 = fdiv double %10, 3.000000e+00, !dbg !2865
  %16 = fmul double %15, %2, !dbg !2866
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !2867
  %17 = fmul double %14, %handler_result4, !dbg !2867
  %handler_result5 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !2868
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !2834, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2835, metadata !DIExpression()), !dbg !2853
  %18 = fmul double %8, %2, !dbg !2868
  %handler_result6 = call double @fAddHandlerDouble(double %18, double %handler_result3), !dbg !2869
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !2836, metadata !DIExpression()), !dbg !2853
  %handler_result7 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !2870
  %19 = fmul double %8, %handler_result7, !dbg !2870
  %20 = fmul double %19, %2, !dbg !2871
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result5, double %20), !dbg !2872
  %21 = fmul double %8, %10, !dbg !2872
  %22 = fdiv double %1, %handler_result2, !dbg !2873
  %23 = fmul double %22, %21, !dbg !2874
  %24 = fmul double %23, %5, !dbg !2875
  %25 = fmul double %24, %2, !dbg !2876
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result8, double %25), !dbg !2877
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !2837, metadata !DIExpression()), !dbg !2853
  br label %26, !dbg !2877

26:                                               ; preds = %107, %4
  %27 = phi double [ %handler_result9, %4 ], [ %112, %107 ], !dbg !2878
  %28 = phi double [ %handler_result6, %4 ], [ %108, %107 ], !dbg !2879
  %29 = phi double [ 1.000000e+00, %4 ], [ %109, %107 ], !dbg !2880
  %30 = phi double [ %handler_result5, %4 ], [ %113, %107 ], !dbg !2881
  %31 = phi double [ %handler_result3, %4 ], [ %110, %107 ], !dbg !2882
  %32 = phi double [ 1.000000e+00, %4 ], [ %111, %107 ], !dbg !2883
  %33 = phi double [ 1.000000e+00, %4 ], [ %77, %107 ], !dbg !2853
  %34 = phi i32 [ 3, %4 ], [ %114, %107 ], !dbg !2884
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !2824, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %33, metadata !2830, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %32, metadata !2832, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %31, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %30, metadata !2834, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %29, metadata !2835, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %28, metadata !2836, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %27, metadata !2837, metadata !DIExpression()), !dbg !2853
  %35 = sitofp i32 %34 to double, !dbg !2885
  %handler_result10 = call double @fAddHandlerDouble(double %35, double %0), !dbg !2886
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double -1.000000e+00), !dbg !2887
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !2838, metadata !DIExpression()), !dbg !2888
  %handler_result12 = call double @fAddHandlerDouble(double %35, double %1), !dbg !2889
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double -1.000000e+00), !dbg !2890
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !2840, metadata !DIExpression()), !dbg !2888
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result10, double -2.000000e+00), !dbg !2891
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !2841, metadata !DIExpression()), !dbg !2888
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result12, double -2.000000e+00), !dbg !2892
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !2842, metadata !DIExpression()), !dbg !2888
  %36 = shl nuw nsw i32 %34, 1, !dbg !2892
  %37 = add nsw i32 %36, -1, !dbg !2893
  %38 = sitofp i32 %37 to double, !dbg !2894
  tail call void @llvm.dbg.value(metadata double %38, metadata !2843, metadata !DIExpression()), !dbg !2888
  %39 = add nsw i32 %36, -3, !dbg !2895
  %40 = sitofp i32 %39 to double, !dbg !2896
  tail call void @llvm.dbg.value(metadata double %40, metadata !2844, metadata !DIExpression()), !dbg !2888
  %41 = add nsw i32 %36, -5, !dbg !2897
  %42 = sitofp i32 %41 to double, !dbg !2898
  tail call void @llvm.dbg.value(metadata double %42, metadata !2845, metadata !DIExpression()), !dbg !2888
  %handler_result16 = call double @fSubHandlerDouble(double %35, double %0), !dbg !2899
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double -2.000000e+00), !dbg !2900
  %43 = fmul double %40, 2.000000e+00, !dbg !2900
  %44 = fmul double %handler_result13, %43, !dbg !2901
  %45 = fdiv double %handler_result17, %44, !dbg !2902
  tail call void @llvm.dbg.value(metadata double %45, metadata !2846, metadata !DIExpression()), !dbg !2888
  %46 = fmul double %handler_result10, %handler_result11, !dbg !2903
  %47 = fmul double %38, 4.000000e+00, !dbg !2904
  %48 = fmul double %47, %40, !dbg !2905
  %49 = fmul double %handler_result15, %48, !dbg !2906
  %50 = fmul double %handler_result13, %49, !dbg !2907
  %51 = fdiv double %46, %50, !dbg !2908
  tail call void @llvm.dbg.value(metadata double %51, metadata !2847, metadata !DIExpression()), !dbg !2888
  %52 = fneg double %handler_result14, !dbg !2909
  %53 = fmul double %handler_result11, %52, !dbg !2910
  %54 = fmul double %handler_result17, %53, !dbg !2911
  %55 = fmul double %40, 8.000000e+00, !dbg !2912
  %56 = fmul double %55, %40, !dbg !2913
  %57 = fmul double %56, %42, !dbg !2914
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result12, double -3.000000e+00), !dbg !2915
  %58 = fmul double %handler_result18, %57, !dbg !2915
  %59 = fmul double %handler_result15, %58, !dbg !2916
  %60 = fmul double %handler_result13, %59, !dbg !2917
  %61 = fdiv double %54, %60, !dbg !2918
  tail call void @llvm.dbg.value(metadata double %61, metadata !2848, metadata !DIExpression()), !dbg !2888
  %62 = fneg double %handler_result11, !dbg !2919
  %handler_result19 = call double @fSubHandlerDouble(double %35, double %1), !dbg !2920
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double -1.000000e+00), !dbg !2921
  %63 = fmul double %handler_result20, %62, !dbg !2921
  %64 = fmul double %handler_result15, %43, !dbg !2922
  %65 = fmul double %handler_result13, %64, !dbg !2923
  %66 = fdiv double %63, %65, !dbg !2924
  tail call void @llvm.dbg.value(metadata double %66, metadata !2849, metadata !DIExpression()), !dbg !2888
  %67 = fmul double %45, %2, !dbg !2925
  %handler_result21 = call double @fSubHandlerDouble(double 1.000000e+00, double %67), !dbg !2926
  %68 = fmul double %27, %handler_result21, !dbg !2926
  %69 = fmul double %51, %2, !dbg !2927
  %handler_result22 = call double @fSubHandlerDouble(double %66, double %69), !dbg !2928
  %70 = fmul double %handler_result22, %5, !dbg !2928
  %71 = fmul double %28, %70, !dbg !2929
  %handler_result23 = call double @fAddHandlerDouble(double %68, double %71), !dbg !2930
  %72 = fmul double %7, %61, !dbg !2930
  %73 = fmul double %29, %72, !dbg !2931
  %handler_result24 = call double @fAddHandlerDouble(double %73, double %handler_result23), !dbg !2932
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !2850, metadata !DIExpression()), !dbg !2888
  %74 = fmul double %30, %handler_result21, !dbg !2932
  %75 = fmul double %31, %70, !dbg !2933
  %handler_result25 = call double @fAddHandlerDouble(double %74, double %75), !dbg !2934
  %76 = fmul double %32, %72, !dbg !2934
  %handler_result26 = call double @fAddHandlerDouble(double %76, double %handler_result25), !dbg !2935
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !2851, metadata !DIExpression()), !dbg !2888
  %77 = fdiv double %handler_result24, %handler_result26, !dbg !2935
  tail call void @llvm.dbg.value(metadata double %77, metadata !2852, metadata !DIExpression()), !dbg !2888
  %handler_result27 = call double @fSubHandlerDouble(double %33, double %77), !dbg !2936
  %78 = fdiv double %handler_result27, %33, !dbg !2936
  %79 = tail call double @llvm.fabs.f64(double %78), !dbg !2937
  tail call void @llvm.dbg.value(metadata double %79, metadata !2831, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %77, metadata !2830, metadata !DIExpression()), !dbg !2853
  %80 = fcmp olt double %79, 0x3CB0000000000000, !dbg !2938
  %81 = icmp ugt i32 %34, 5000
  %82 = select i1 %80, i1 true, i1 %81, !dbg !2940
  br i1 %82, label %115, label %83, !dbg !2940

83:                                               ; preds = %26
  %84 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !2941
  %85 = fcmp ogt double %84, 1.000000e+50, !dbg !2943
  br i1 %85, label %89, label %86, !dbg !2944

86:                                               ; preds = %83
  %87 = tail call double @llvm.fabs.f64(double %handler_result26), !dbg !2945
  %88 = fcmp ogt double %87, 1.000000e+50, !dbg !2946
  br i1 %88, label %89, label %96, !dbg !2947

89:                                               ; preds = %86, %83
  %90 = fdiv double %handler_result24, 1.000000e+50, !dbg !2948
  tail call void @llvm.dbg.value(metadata double %90, metadata !2850, metadata !DIExpression()), !dbg !2888
  %91 = fdiv double %handler_result26, 1.000000e+50, !dbg !2950
  tail call void @llvm.dbg.value(metadata double %91, metadata !2851, metadata !DIExpression()), !dbg !2888
  %92 = fdiv double %27, 1.000000e+50, !dbg !2951
  tail call void @llvm.dbg.value(metadata double %92, metadata !2837, metadata !DIExpression()), !dbg !2853
  %93 = fdiv double %30, 1.000000e+50, !dbg !2952
  tail call void @llvm.dbg.value(metadata double %93, metadata !2834, metadata !DIExpression()), !dbg !2853
  %94 = fdiv double %28, 1.000000e+50, !dbg !2953
  tail call void @llvm.dbg.value(metadata double %94, metadata !2836, metadata !DIExpression()), !dbg !2853
  %95 = fdiv double %31, 1.000000e+50, !dbg !2954
  tail call void @llvm.dbg.value(metadata double %95, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2835, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2832, metadata !DIExpression()), !dbg !2853
  br label %107, !dbg !2955

96:                                               ; preds = %86
  %97 = fcmp olt double %84, 0x358DEE7A4AD4B81E, !dbg !2956
  %98 = fcmp olt double %87, 0x358DEE7A4AD4B81E
  %99 = or i1 %97, %98, !dbg !2958
  br i1 %99, label %100, label %107, !dbg !2958

100:                                              ; preds = %96
  %101 = fmul double %handler_result24, 1.000000e+50, !dbg !2959
  tail call void @llvm.dbg.value(metadata double %101, metadata !2850, metadata !DIExpression()), !dbg !2888
  %102 = fmul double %handler_result26, 1.000000e+50, !dbg !2961
  tail call void @llvm.dbg.value(metadata double %102, metadata !2851, metadata !DIExpression()), !dbg !2888
  %103 = fmul double %27, 1.000000e+50, !dbg !2962
  tail call void @llvm.dbg.value(metadata double %103, metadata !2837, metadata !DIExpression()), !dbg !2853
  %104 = fmul double %30, 1.000000e+50, !dbg !2963
  tail call void @llvm.dbg.value(metadata double %104, metadata !2834, metadata !DIExpression()), !dbg !2853
  %105 = fmul double %28, 1.000000e+50, !dbg !2964
  tail call void @llvm.dbg.value(metadata double %105, metadata !2836, metadata !DIExpression()), !dbg !2853
  %106 = fmul double %31, 1.000000e+50, !dbg !2965
  tail call void @llvm.dbg.value(metadata double %106, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2835, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2832, metadata !DIExpression()), !dbg !2853
  br label %107, !dbg !2966

107:                                              ; preds = %100, %96, %89
  %108 = phi double [ %92, %89 ], [ %103, %100 ], [ %27, %96 ], !dbg !2853
  %109 = phi double [ %94, %89 ], [ %105, %100 ], [ %28, %96 ], !dbg !2853
  %110 = phi double [ %93, %89 ], [ %104, %100 ], [ %30, %96 ], !dbg !2853
  %111 = phi double [ %95, %89 ], [ %106, %100 ], [ %31, %96 ], !dbg !2853
  %112 = phi double [ %90, %89 ], [ %101, %100 ], [ %handler_result24, %96 ], !dbg !2888
  %113 = phi double [ %91, %89 ], [ %102, %100 ], [ %handler_result26, %96 ], !dbg !2888
  tail call void @llvm.dbg.value(metadata double %113, metadata !2851, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata double %112, metadata !2850, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata double %111, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %110, metadata !2834, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %109, metadata !2836, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %108, metadata !2837, metadata !DIExpression()), !dbg !2853
  %114 = add nuw nsw i32 %34, 1, !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !2824, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %111, metadata !2832, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %110, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %113, metadata !2834, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %109, metadata !2835, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %108, metadata !2836, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double %112, metadata !2837, metadata !DIExpression()), !dbg !2853
  br label %26

115:                                              ; preds = %26
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !2824, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2832, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2833, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2834, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2835, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2836, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata double poison, metadata !2837, metadata !DIExpression()), !dbg !2853
  store double %77, ptr %3, align 8, !dbg !2968, !tbaa !118
  %116 = fmul double %77, %79, !dbg !2969
  %117 = tail call double @llvm.fabs.f64(double %116), !dbg !2970
  %118 = fmul double %117, 2.000000e+00, !dbg !2971
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2972
  %120 = add nsw i32 %34, -1, !dbg !2973
  %121 = sitofp i32 %120 to double, !dbg !2973
  %122 = fmul double %121, 0x3CC0000000000000, !dbg !2974
  %123 = tail call double @llvm.fabs.f64(double %77), !dbg !2975
  %124 = fmul double %122, %123, !dbg !2976
  %handler_result28 = call double @fAddHandlerDouble(double %124, double %118), !dbg !2977
  store double %handler_result28, ptr %119, align 8, !dbg !2977, !tbaa !125
  ret void, !dbg !2978
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @hyperg_1F1_1_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !dbg !1588 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1591, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double %1, metadata !1592, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1593, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1594, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1595, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1596, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1587, metadata !DIExpression()), !dbg !2979
  br label %4, !dbg !2980

4:                                                ; preds = %4, %3
  %5 = phi double [ 1.000000e+00, %3 ], [ %handler_result5, %4 ]
  %6 = phi double [ 1.000000e+00, %3 ], [ %10, %4 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %handler_result4, %4 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %handler_result2, %4 ]
  tail call void @llvm.dbg.value(metadata double %5, metadata !1587, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double %6, metadata !1596, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double %7, metadata !1595, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata double %8, metadata !1594, metadata !DIExpression()), !dbg !2979
  %handler_result = call double @fAddHandlerDouble(double %5, double %0), !dbg !2981
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double -1.000000e+00), !dbg !2982
  %9 = fdiv double %1, %handler_result1, !dbg !2982
  %10 = fmul double %6, %9, !dbg !2983
  tail call void @llvm.dbg.value(metadata double %10, metadata !1596, metadata !DIExpression()), !dbg !2979
  %handler_result2 = call double @fAddHandlerDouble(double %8, double %10), !dbg !2984
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1594, metadata !DIExpression()), !dbg !2979
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !2984
  %12 = fmul double %11, 0x3CE0000000000000, !dbg !2985
  %13 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !2986
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !2987
  %handler_result3 = call double @fAddHandlerDouble(double %12, double %14), !dbg !2988
  %handler_result4 = call double @fAddHandlerDouble(double %7, double %handler_result3), !dbg !2989
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1595, metadata !DIExpression()), !dbg !2979
  %handler_result5 = call double @fAddHandlerDouble(double %5, double 1.000000e+00), !dbg !2990
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1587, metadata !DIExpression()), !dbg !2979
  %15 = fdiv double %10, %handler_result2, !dbg !2990
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !2991
  %17 = fcmp ogt double %16, 0x3C90000000000000, !dbg !2992
  br i1 %17, label %4, label %18, !dbg !2980, !llvm.loop !2993

18:                                               ; preds = %4
  store double %handler_result2, ptr %2, align 8, !dbg !2995, !tbaa !118
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2996
  %20 = fmul double %11, 2.000000e+00, !dbg !2997
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result4, double %20), !dbg !2998
  store double %handler_result6, ptr %19, align 8, !dbg !2998, !tbaa !125
  ret void, !dbg !2999
}

declare !dbg !3000 i32 @gsl_sf_exprel_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3001 i32 @gsl_sf_exprel_2_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3002 double @log1p(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3003 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !3004 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_beps_bgt0(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3005 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3026, metadata ptr %5, metadata !DIExpression()), !dbg !3027
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3020, metadata !DIExpression(), metadata !3028, metadata ptr %6, metadata !DIExpression()), !dbg !3029
  tail call void @llvm.dbg.value(metadata double %0, metadata !3007, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata double %1, metadata !3008, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata double %2, metadata !3009, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3010, metadata !DIExpression()), !dbg !3030
  %7 = tail call double @llvm.fabs.f64(double %2), !dbg !3031
  %8 = fcmp olt double %7, %1, !dbg !3032
  %9 = tail call double @llvm.fabs.f64(double %0)
  %10 = fcmp olt double %9, 0x3E50000000000000
  %11 = and i1 %10, %8, !dbg !3033
  br i1 %11, label %12, label %45, !dbg !3033

12:                                               ; preds = %4
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !3034
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !3011, metadata !DIExpression()), !dbg !3027
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !3034
  %13 = fmul double %handler_result, %2, !dbg !3035
  %14 = fdiv double %13, %1, !dbg !3036
  %15 = call i32 @gsl_sf_exp_e(double noundef %14, ptr noundef nonnull %5) #8, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !3015, metadata !DIExpression()), !dbg !3027
  %16 = fmul double %1, 2.000000e+00, !dbg !3038
  %17 = fmul double %16, %1, !dbg !3039
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !3040
  %18 = fmul double %handler_result1, %17, !dbg !3040
  %19 = fdiv double %handler_result, %18, !dbg !3041
  tail call void @llvm.dbg.value(metadata double %19, metadata !3016, metadata !DIExpression()), !dbg !3027
  %20 = fmul double %handler_result, 2.000000e+00, !dbg !3042
  %handler_result2 = call double @fSubHandlerDouble(double %1, double %20), !dbg !3043
  %21 = fmul double %handler_result, %handler_result2, !dbg !3043
  %22 = fmul double %1, 3.000000e+00, !dbg !3044
  %23 = fmul double %22, %1, !dbg !3045
  %24 = fmul double %23, %1, !dbg !3046
  %25 = fmul double %handler_result1, %24, !dbg !3047
  %handler_result3 = call double @fAddHandlerDouble(double %1, double 2.000000e+00), !dbg !3048
  %26 = fmul double %handler_result3, %25, !dbg !3048
  %27 = fdiv double %21, %26, !dbg !3049
  tail call void @llvm.dbg.value(metadata double %27, metadata !3017, metadata !DIExpression()), !dbg !3027
  %28 = fmul double %27, %2, !dbg !3050
  %handler_result4 = call double @fAddHandlerDouble(double %19, double %28), !dbg !3051
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !3018, metadata !DIExpression()), !dbg !3027
  %29 = fmul double %0, %2, !dbg !3051
  %30 = fmul double %29, %2, !dbg !3052
  %31 = fmul double %30, %handler_result4, !dbg !3053
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %31), !dbg !3054
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !3019, metadata !DIExpression()), !dbg !3027
  %32 = load double, ptr %5, align 8, !dbg !3054, !tbaa !118
  %33 = fmul double %handler_result5, %32, !dbg !3055
  store double %33, ptr %3, align 8, !dbg !3056, !tbaa !118
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3057
  %35 = load double, ptr %34, align 8, !dbg !3057, !tbaa !125
  %36 = call double @llvm.fabs.f64(double %handler_result5), !dbg !3058
  %37 = fmul double %36, %35, !dbg !3059
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !3060
  %39 = call double @llvm.fabs.f64(double %32), !dbg !3061
  %40 = fmul double %39, 0x3CB0000000000000, !dbg !3062
  %41 = call double @llvm.fabs.f64(double %31), !dbg !3063
  %handler_result6 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !3064
  %42 = fmul double %handler_result6, %40, !dbg !3064
  %handler_result7 = call double @fAddHandlerDouble(double %37, double %42), !dbg !3065
  %43 = call double @llvm.fabs.f64(double %33), !dbg !3065
  %44 = fmul double %43, 0x3CD0000000000000, !dbg !3066
  %handler_result8 = call double @fAddHandlerDouble(double %44, double %handler_result7), !dbg !3067
  store double %handler_result8, ptr %38, align 8, !dbg !3067, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !3068
  br label %61

45:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !3069
  %46 = fneg double %0, !dbg !3070
  %47 = fneg double %2, !dbg !3071
  %48 = call fastcc i32 @hyperg_1F1_small_a_bgt0(double noundef %46, double noundef %1, double noundef %47, ptr noundef nonnull %6), !dbg !3072
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !3022, metadata !DIExpression()), !dbg !3029
  %49 = load double, ptr %6, align 8, !dbg !3073, !tbaa !118
  %50 = fcmp une double %49, 0.000000e+00, !dbg !3074
  br i1 %50, label %51, label %58, !dbg !3075

51:                                               ; preds = %45
  %52 = fmul double %7, 0x3CC0000000000000, !dbg !3076
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3077
  %54 = load double, ptr %53, align 8, !dbg !3077, !tbaa !125
  %55 = call i32 @gsl_sf_exp_mult_err_e(double noundef %2, double noundef %52, double noundef %49, double noundef %54, ptr noundef %3) #8, !dbg !3078
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !3023, metadata !DIExpression()), !dbg !3079
  %56 = icmp eq i32 %55, 0, !dbg !3080
  %57 = select i1 %56, i32 %48, i32 %55, !dbg !3080
  br label %59

58:                                               ; preds = %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !3081
  br label %59, !dbg !3083

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %57, %51 ], [ %48, %58 ], !dbg !3084
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !3085
  br label %61

61:                                               ; preds = %59, %12
  %62 = phi i32 [ %15, %12 ], [ %60, %59 ], !dbg !3086
  ret i32 %62, !dbg !3087
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hyperg_1F1_U(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !3088 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3144, metadata ptr %5, metadata !DIExpression()), !dbg !3145
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3097, metadata !DIExpression(), metadata !3146, metadata ptr %6, metadata !DIExpression()), !dbg !3145
  %7 = alloca double, align 8, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3098, metadata !DIExpression(), metadata !3147, metadata ptr %7, metadata !DIExpression()), !dbg !3145
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3148
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3105, metadata !DIExpression(), metadata !3148, metadata ptr %8, metadata !DIExpression()), !dbg !3145
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3106, metadata !DIExpression(), metadata !3149, metadata ptr %9, metadata !DIExpression()), !dbg !3145
  %10 = alloca double, align 8, !DIAssignID !3150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3107, metadata !DIExpression(), metadata !3150, metadata ptr %10, metadata !DIExpression()), !dbg !3145
  %11 = alloca double, align 8, !DIAssignID !3151
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3108, metadata !DIExpression(), metadata !3151, metadata ptr %11, metadata !DIExpression()), !dbg !3145
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !3152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3114, metadata !DIExpression(), metadata !3152, metadata ptr %12, metadata !DIExpression()), !dbg !3145
  %13 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !3153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3115, metadata !DIExpression(), metadata !3153, metadata ptr %13, metadata !DIExpression()), !dbg !3145
  %14 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !3154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3125, metadata !DIExpression(), metadata !3154, metadata ptr %14, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata double %0, metadata !3090, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata double %1, metadata !3091, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata double %2, metadata !3092, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3093, metadata !DIExpression()), !dbg !3145
  %handler_result = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !3155
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !3094, metadata !DIExpression()), !dbg !3145
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %1), !dbg !3156
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double 1.000000e+00), !dbg !3157
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !3095, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !3157
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !3157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !3158
  %15 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result2, ptr noundef nonnull %5, ptr noundef nonnull %7) #8, !dbg !3159
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !3099, metadata !DIExpression()), !dbg !3145
  %16 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %6) #8, !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3100, metadata !DIExpression()), !dbg !3145
  %17 = icmp eq i32 %15, 0, !dbg !3161
  %18 = select i1 %17, i32 %16, i32 %15, !dbg !3161
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !3101, metadata !DIExpression()), !dbg !3145
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double -1.000000e+00), !dbg !3162
  %handler_result35 = call double @callHandler(i32 12, double %2, double %2), !dbg !3163
  %19 = fmul double %handler_result3, %handler_result35, !dbg !3163
  tail call void @llvm.dbg.value(metadata double %19, metadata !3102, metadata !DIExpression()), !dbg !3145
  %20 = load double, ptr %5, align 8, !dbg !3164, !tbaa !118
  %21 = load double, ptr %6, align 8, !dbg !3165, !tbaa !118
  %handler_result4 = call double @fSubHandlerDouble(double %20, double %21), !dbg !3166
  %handler_result5 = call double @fAddHandlerDouble(double %19, double %handler_result4), !dbg !3167
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !3103, metadata !DIExpression()), !dbg !3145
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !3167
  %23 = load double, ptr %22, align 8, !dbg !3167, !tbaa !125
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !3168
  %25 = load double, ptr %24, align 8, !dbg !3168, !tbaa !125
  %handler_result6 = call double @fAddHandlerDouble(double %23, double %25), !dbg !3169
  %26 = call double @llvm.fabs.f64(double %19), !dbg !3169
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !3170
  %handler_result7 = call double @fAddHandlerDouble(double %27, double %handler_result6), !dbg !3171
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !3104, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !3171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !3171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8, !dbg !3172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8, !dbg !3172
  %handler_result8 = call double @fSubHandlerDouble(double 2.000000e+00, double %handler_result), !dbg !3173
  %28 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result8, ptr noundef nonnull %8, ptr noundef nonnull %10) #8, !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3109, metadata !DIExpression()), !dbg !3145
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result2, double 1.000000e+00), !dbg !3174
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %handler_result), !dbg !3175
  %29 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result10, ptr noundef nonnull %9, ptr noundef nonnull %11) #8, !dbg !3175
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3110, metadata !DIExpression()), !dbg !3145
  %30 = icmp eq i32 %28, 0, !dbg !3176
  %31 = select i1 %30, i32 %29, i32 %28, !dbg !3176
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !3111, metadata !DIExpression()), !dbg !3145
  %32 = load double, ptr %8, align 8, !dbg !3177, !tbaa !118
  %33 = load double, ptr %9, align 8, !dbg !3178, !tbaa !118
  %handler_result11 = call double @fSubHandlerDouble(double %32, double %33), !dbg !3179
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !3112, metadata !DIExpression()), !dbg !3145
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !3179
  %35 = load double, ptr %34, align 8, !dbg !3179, !tbaa !125
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !3180
  %37 = load double, ptr %36, align 8, !dbg !3180, !tbaa !125
  %handler_result12 = call double @fAddHandlerDouble(double %35, double %37), !dbg !3181
  %38 = call double @llvm.fabs.f64(double %32), !dbg !3181
  %39 = call double @llvm.fabs.f64(double %33), !dbg !3182
  %handler_result13 = call double @fAddHandlerDouble(double %38, double %39), !dbg !3183
  %40 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !3183
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result12, double %40), !dbg !3184
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !3113, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !3184
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8, !dbg !3185
  %41 = call i32 @gsl_sf_hyperg_1F1_e(double noundef %handler_result2, double noundef %handler_result, double noundef %2, ptr noundef nonnull %12), !dbg !3186
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3122, metadata !DIExpression()), !dbg !3145
  %42 = call i32 @gsl_sf_hyperg_U_e10_e(double noundef %handler_result2, double noundef %handler_result, double noundef %2, ptr noundef nonnull %13) #8, !dbg !3187
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !3123, metadata !DIExpression()), !dbg !3145
  %43 = icmp eq i32 %41, 0, !dbg !3188
  %44 = select i1 %43, i32 %42, i32 %41, !dbg !3188
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !3124, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8, !dbg !3189
  %45 = load double, ptr %10, align 8, !dbg !3190, !tbaa !305
  %46 = load double, ptr %11, align 8, !dbg !3191, !tbaa !305
  %47 = fmul double %45, %46, !dbg !3192
  %48 = load double, ptr %12, align 8, !dbg !3193, !tbaa !118
  %49 = fmul double %47, %48, !dbg !3194
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !3195
  %51 = load double, ptr %50, align 8, !dbg !3195, !tbaa !125
  %52 = call i32 @gsl_sf_exp_mult_err_e10_e(double noundef %handler_result11, double noundef %handler_result14, double noundef %49, double noundef %51, ptr noundef nonnull %14) #8, !dbg !3196
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !3126, metadata !DIExpression()), !dbg !3145
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result), !dbg !3197
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !3127, metadata !DIExpression()), !dbg !3145
  %53 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 2, !dbg !3197
  %54 = load i32, ptr %53, align 8, !dbg !3197, !tbaa !3198
  %55 = sitofp i32 %54 to double, !dbg !3201
  %56 = fmul double %55, 0x40026BB1BBB55516, !dbg !3202
  tail call void @llvm.dbg.value(metadata double %56, metadata !3128, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata double poison, metadata !3129, metadata !DIExpression()), !dbg !3145
  %57 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 2, !dbg !3203
  %58 = load i32, ptr %57, align 8, !dbg !3203, !tbaa !3198
  %59 = sitofp i32 %58 to double, !dbg !3204
  %60 = fmul double %59, 0x40026BB1BBB55516, !dbg !3205
  tail call void @llvm.dbg.value(metadata double %60, metadata !3130, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata double poison, metadata !3131, metadata !DIExpression()), !dbg !3145
  %61 = fcmp ogt double %56, %60, !dbg !3206
  br i1 %61, label %62, label %88, !dbg !3207

62:                                               ; preds = %4
  %63 = call double @llvm.fabs.f64(double %56), !dbg !3208
  %64 = fmul double %63, 0x3CC0000000000000, !dbg !3209
  tail call void @llvm.dbg.value(metadata double %64, metadata !3129, metadata !DIExpression()), !dbg !3145
  %handler_result16 = call double @fSubHandlerDouble(double %60, double %56), !dbg !3210
  %65 = call double @exp(double noundef %handler_result16) #8, !dbg !3210
  tail call void @llvm.dbg.value(metadata double %65, metadata !3133, metadata !DIExpression()), !dbg !3211
  %66 = call double @llvm.fabs.f64(double %handler_result16), !dbg !3212
  %handler_result17 = call double @fAddHandlerDouble(double %66, double 1.000000e+00), !dbg !3213
  %67 = fmul double %handler_result17, 0x3CC0000000000000, !dbg !3213
  %68 = fmul double %67, %65, !dbg !3214
  tail call void @llvm.dbg.value(metadata double %68, metadata !3136, metadata !DIExpression()), !dbg !3211
  %69 = load double, ptr %14, align 8, !dbg !3215, !tbaa !3216
  %70 = fmul double %65, %69, !dbg !3217
  %71 = load double, ptr %13, align 8, !dbg !3218, !tbaa !3216
  %72 = fmul double %handler_result15, %71, !dbg !3219
  %handler_result18 = call double @fSubHandlerDouble(double %70, double %72), !dbg !3220
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !3137, metadata !DIExpression()), !dbg !3211
  %73 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 1, !dbg !3220
  %74 = load double, ptr %73, align 8, !dbg !3220, !tbaa !3221
  %75 = fmul double %65, %74, !dbg !3222
  %76 = call double @llvm.fabs.f64(double %handler_result15), !dbg !3223
  %77 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 1, !dbg !3224
  %78 = load double, ptr %77, align 8, !dbg !3224, !tbaa !3221
  %79 = fmul double %76, %78, !dbg !3225
  %handler_result19 = call double @fAddHandlerDouble(double %75, double %79), !dbg !3226
  %80 = call double @llvm.fabs.f64(double %69), !dbg !3226
  %81 = fmul double %68, %80, !dbg !3227
  %handler_result20 = call double @fAddHandlerDouble(double %81, double %handler_result19), !dbg !3228
  %82 = call double @llvm.fabs.f64(double %70), !dbg !3228
  %83 = call double @llvm.fabs.f64(double %72), !dbg !3229
  %handler_result21 = call double @fAddHandlerDouble(double %82, double %83), !dbg !3230
  %84 = fmul double %handler_result21, 0x3CB0000000000000, !dbg !3230
  %handler_result22 = call double @fAddHandlerDouble(double %84, double %handler_result20), !dbg !3231
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !3138, metadata !DIExpression()), !dbg !3211
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result5, double %56), !dbg !3232
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result7, double %64), !dbg !3233
  %85 = load double, ptr %7, align 8, !dbg !3233, !tbaa !305
  %86 = fmul double %handler_result18, %85, !dbg !3234
  %87 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result23, double noundef %handler_result24, double noundef %86, double noundef %handler_result22, ptr noundef %3) #8, !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !3132, metadata !DIExpression()), !dbg !3145
  br label %114, !dbg !3236

88:                                               ; preds = %4
  %89 = call double @llvm.fabs.f64(double %60), !dbg !3237
  %90 = fmul double %89, 0x3CC0000000000000, !dbg !3238
  tail call void @llvm.dbg.value(metadata double %90, metadata !3131, metadata !DIExpression()), !dbg !3145
  %handler_result25 = call double @fSubHandlerDouble(double %56, double %60), !dbg !3239
  %91 = call double @exp(double noundef %handler_result25) #8, !dbg !3239
  tail call void @llvm.dbg.value(metadata double %91, metadata !3139, metadata !DIExpression()), !dbg !3240
  %handler_result26 = call double @fSubHandlerDouble(double %60, double %56), !dbg !3241
  %92 = call double @llvm.fabs.f64(double %handler_result26), !dbg !3241
  %handler_result27 = call double @fAddHandlerDouble(double %92, double 1.000000e+00), !dbg !3242
  %93 = fmul double %handler_result27, 0x3CC0000000000000, !dbg !3242
  %94 = fmul double %93, %91, !dbg !3243
  tail call void @llvm.dbg.value(metadata double %94, metadata !3141, metadata !DIExpression()), !dbg !3240
  %95 = load double, ptr %14, align 8, !dbg !3244, !tbaa !3216
  %96 = fmul double %handler_result15, %91, !dbg !3245
  %97 = load double, ptr %13, align 8, !dbg !3246, !tbaa !3216
  %98 = fmul double %96, %97, !dbg !3247
  %handler_result28 = call double @fSubHandlerDouble(double %95, double %98), !dbg !3248
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !3142, metadata !DIExpression()), !dbg !3240
  %99 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %14, i64 0, i32 1, !dbg !3248
  %100 = load double, ptr %99, align 8, !dbg !3248, !tbaa !3221
  %101 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %13, i64 0, i32 1, !dbg !3249
  %102 = load double, ptr %101, align 8, !dbg !3249, !tbaa !3221
  %103 = fmul double %96, %102, !dbg !3250
  %104 = call double @llvm.fabs.f64(double %103), !dbg !3251
  %handler_result29 = call double @fAddHandlerDouble(double %100, double %104), !dbg !3252
  %105 = fmul double %handler_result15, %94, !dbg !3252
  %106 = fmul double %105, %97, !dbg !3253
  %107 = call double @llvm.fabs.f64(double %106), !dbg !3254
  %handler_result30 = call double @fAddHandlerDouble(double %107, double %handler_result29), !dbg !3255
  %108 = call double @llvm.fabs.f64(double %95), !dbg !3255
  %109 = call double @llvm.fabs.f64(double %98), !dbg !3256
  %handler_result31 = call double @fAddHandlerDouble(double %108, double %109), !dbg !3257
  %110 = fmul double %handler_result31, 0x3CB0000000000000, !dbg !3257
  %handler_result32 = call double @fAddHandlerDouble(double %110, double %handler_result30), !dbg !3258
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !3143, metadata !DIExpression()), !dbg !3240
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result5, double %60), !dbg !3259
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result7, double %90), !dbg !3260
  %111 = load double, ptr %7, align 8, !dbg !3260, !tbaa !305
  %112 = fmul double %handler_result28, %111, !dbg !3261
  %113 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result33, double noundef %handler_result34, double noundef %112, double noundef %handler_result32, ptr noundef %3) #8, !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !3132, metadata !DIExpression()), !dbg !3145
  br label %114

114:                                              ; preds = %88, %62
  %115 = phi i32 [ %87, %62 ], [ %113, %88 ], !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3132, metadata !DIExpression()), !dbg !3145
  %116 = icmp eq i32 %115, 0, !dbg !3264
  br i1 %116, label %117, label %124, !dbg !3264

117:                                              ; preds = %114
  %118 = icmp eq i32 %52, 0, !dbg !3264
  br i1 %118, label %119, label %124, !dbg !3264

119:                                              ; preds = %117
  %120 = icmp eq i32 %44, 0, !dbg !3264
  br i1 %120, label %121, label %124, !dbg !3264

121:                                              ; preds = %119
  %122 = icmp eq i32 %31, 0, !dbg !3264
  %123 = select i1 %122, i32 %18, i32 %31, !dbg !3264
  br label %124, !dbg !3264

124:                                              ; preds = %121, %119, %117, %114
  %125 = phi i32 [ %115, %114 ], [ %52, %117 ], [ %44, %119 ], [ %123, %121 ], !dbg !3264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !3265
  ret i32 %125, !dbg !3266
}

declare !dbg !3267 i32 @gsl_sf_hyperg_U_e10_e(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3272 i32 @gsl_sf_exp_mult_err_e10_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!281 = !DILocation(line: 98, column: 53, scope: !254)
!282 = !DILocation(line: 98, column: 60, scope: !254)
!283 = !DILocation(line: 98, column: 18, scope: !254)
!284 = !DILocation(line: 99, column: 15, scope: !259)
!285 = !DILocation(line: 99, column: 30, scope: !259)
!286 = !DILocation(line: 101, column: 33, scope: !258)
!287 = !DILocation(line: 0, scope: !258)
!288 = !DILocation(line: 102, column: 53, scope: !258)
!289 = !DILocation(line: 102, column: 63, scope: !258)
!290 = !DILocation(line: 102, column: 50, scope: !258)
!291 = !DILocation(line: 102, column: 74, scope: !258)
!292 = !DILocation(line: 102, column: 72, scope: !258)
!293 = !DILocation(line: 103, column: 52, scope: !258)
!294 = !DILocation(line: 103, column: 50, scope: !258)
!295 = !DILocation(line: 104, column: 32, scope: !258)
!296 = !DILocation(line: 104, column: 43, scope: !258)
!297 = !DILocation(line: 104, column: 47, scope: !258)
!298 = !DILocation(line: 104, column: 61, scope: !258)
!299 = !DILocation(line: 105, column: 32, scope: !258)
!300 = !DILocation(line: 105, column: 43, scope: !258)
!301 = !DILocation(line: 105, column: 47, scope: !258)
!302 = !DILocation(line: 105, column: 87, scope: !258)
!303 = !DILocation(line: 105, column: 85, scope: !258)
!304 = !DILocation(line: 107, column: 45, scope: !258)
!305 = !{!120, !120, i64 0}
!306 = !DILocation(line: 107, column: 51, scope: !258)
!307 = !DILocation(line: 107, column: 50, scope: !258)
!308 = !DILocation(line: 107, column: 59, scope: !258)
!309 = !DILocation(line: 107, column: 56, scope: !258)
!310 = !DILocation(line: 107, column: 66, scope: !258)
!311 = !DILocation(line: 106, column: 20, scope: !258)
!312 = !DILocation(line: 113, column: 19, scope: !313)
!313 = distinct !DILexicalBlock(scope: !259, file: !2, line: 111, column: 10)
!314 = !DILocation(line: 114, column: 7, scope: !313)
!315 = !DILocation(line: 0, scope: !259)
!316 = !DILocation(line: 116, column: 3, scope: !255)
!317 = !DILocation(line: 118, column: 5, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 118, column: 5)
!319 = distinct !DILexicalBlock(scope: !255, file: !2, line: 117, column: 8)
!320 = !DILocation(line: 118, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !2, line: 118, column: 5)
!322 = !DILocation(line: 0, scope: !255)
!323 = !DILocation(line: 120, column: 1, scope: !239)
!324 = distinct !DISubprogram(name: "hyperg_1F1_asymp_negx", scope: !2, file: !2, line: 44, type: !240, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !339, !340, !343, !344, !345, !346}
!326 = !DILocalVariable(name: "a", arg: 1, scope: !324, file: !2, line: 44, type: !84)
!327 = !DILocalVariable(name: "b", arg: 2, scope: !324, file: !2, line: 44, type: !84)
!328 = !DILocalVariable(name: "x", arg: 3, scope: !324, file: !2, line: 44, type: !84)
!329 = !DILocalVariable(name: "result", arg: 4, scope: !324, file: !2, line: 45, type: !86)
!330 = !DILocalVariable(name: "lg_b", scope: !324, file: !2, line: 47, type: !87)
!331 = !DILocalVariable(name: "lg_bma", scope: !324, file: !2, line: 48, type: !87)
!332 = !DILocalVariable(name: "sgn_b", scope: !324, file: !2, line: 49, type: !85)
!333 = !DILocalVariable(name: "sgn_bma", scope: !324, file: !2, line: 50, type: !85)
!334 = !DILocalVariable(name: "stat_b", scope: !324, file: !2, line: 52, type: !33)
!335 = !DILocalVariable(name: "stat_bma", scope: !324, file: !2, line: 53, type: !33)
!336 = !DILocalVariable(name: "F", scope: !337, file: !2, line: 56, type: !87)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 55, column: 56)
!338 = distinct !DILexicalBlock(scope: !324, file: !2, line: 55, column: 6)
!339 = !DILocalVariable(name: "stat_F", scope: !337, file: !2, line: 57, type: !33)
!340 = !DILocalVariable(name: "ln_term_val", scope: !341, file: !2, line: 59, type: !85)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 58, column: 20)
!342 = distinct !DILexicalBlock(scope: !337, file: !2, line: 58, column: 8)
!343 = !DILocalVariable(name: "ln_term_err", scope: !341, file: !2, line: 60, type: !85)
!344 = !DILocalVariable(name: "ln_pre_val", scope: !341, file: !2, line: 61, type: !85)
!345 = !DILocalVariable(name: "ln_pre_err", scope: !341, file: !2, line: 62, type: !85)
!346 = !DILocalVariable(name: "stat_e", scope: !341, file: !2, line: 63, type: !33)
!347 = distinct !DIAssignID()
!348 = !DILocation(line: 0, scope: !324)
!349 = distinct !DIAssignID()
!350 = distinct !DIAssignID()
!351 = distinct !DIAssignID()
!352 = distinct !DIAssignID()
!353 = !DILocation(line: 0, scope: !337)
!354 = !DILocation(line: 47, column: 3, scope: !324)
!355 = !DILocation(line: 48, column: 3, scope: !324)
!356 = !DILocation(line: 49, column: 3, scope: !324)
!357 = !DILocation(line: 50, column: 3, scope: !324)
!358 = !DILocation(line: 52, column: 18, scope: !324)
!359 = !DILocation(line: 53, column: 18, scope: !324)
!360 = !DILocation(line: 55, column: 13, scope: !338)
!361 = !DILocation(line: 55, column: 28, scope: !338)
!362 = !DILocation(line: 56, column: 5, scope: !337)
!363 = !DILocation(line: 57, column: 53, scope: !337)
!364 = !DILocation(line: 57, column: 61, scope: !337)
!365 = !DILocation(line: 57, column: 18, scope: !337)
!366 = !DILocation(line: 58, column: 10, scope: !342)
!367 = !DILocation(line: 58, column: 14, scope: !342)
!368 = !DILocation(line: 58, column: 8, scope: !337)
!369 = !DILocation(line: 59, column: 34, scope: !341)
!370 = !DILocation(line: 59, column: 29, scope: !341)
!371 = !DILocation(line: 0, scope: !341)
!372 = !DILocation(line: 60, column: 53, scope: !341)
!373 = !DILocation(line: 60, column: 63, scope: !341)
!374 = !DILocation(line: 60, column: 50, scope: !341)
!375 = !DILocation(line: 61, column: 32, scope: !341)
!376 = !DILocation(line: 61, column: 45, scope: !341)
!377 = !DILocation(line: 61, column: 49, scope: !341)
!378 = !DILocation(line: 62, column: 32, scope: !341)
!379 = !DILocation(line: 62, column: 45, scope: !341)
!380 = !DILocation(line: 62, column: 49, scope: !341)
!381 = !DILocation(line: 64, column: 45, scope: !341)
!382 = !DILocation(line: 64, column: 53, scope: !341)
!383 = !DILocation(line: 64, column: 52, scope: !341)
!384 = !DILocation(line: 64, column: 61, scope: !341)
!385 = !DILocation(line: 64, column: 58, scope: !341)
!386 = !DILocation(line: 64, column: 68, scope: !341)
!387 = !DILocation(line: 63, column: 20, scope: !341)
!388 = !DILocation(line: 66, column: 14, scope: !341)
!389 = !DILocation(line: 70, column: 19, scope: !390)
!390 = distinct !DILexicalBlock(scope: !342, file: !2, line: 68, column: 10)
!391 = !DILocation(line: 71, column: 7, scope: !390)
!392 = !DILocation(line: 0, scope: !342)
!393 = !DILocation(line: 73, column: 3, scope: !338)
!394 = !DILocation(line: 75, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 75, column: 5)
!396 = distinct !DILexicalBlock(scope: !338, file: !2, line: 74, column: 8)
!397 = !DILocation(line: 75, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !2, line: 75, column: 5)
!399 = !DILocation(line: 0, scope: !338)
!400 = !DILocation(line: 77, column: 1, scope: !324)
!401 = distinct !DISubprogram(name: "hyperg_1F1_ab_negint", scope: !2, file: !2, line: 1310, type: !81, scopeLine: 1311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !402)
!402 = !{!403, !404, !405, !406, !407, !411, !412}
!403 = !DILocalVariable(name: "a", arg: 1, scope: !401, file: !2, line: 1310, type: !83)
!404 = !DILocalVariable(name: "b", arg: 2, scope: !401, file: !2, line: 1310, type: !83)
!405 = !DILocalVariable(name: "x", arg: 3, scope: !401, file: !2, line: 1310, type: !84)
!406 = !DILocalVariable(name: "result", arg: 4, scope: !401, file: !2, line: 1310, type: !86)
!407 = !DILocalVariable(name: "K", scope: !408, file: !2, line: 1326, type: !87)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 1320, column: 8)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 1317, column: 11)
!410 = distinct !DILexicalBlock(scope: !401, file: !2, line: 1312, column: 6)
!411 = !DILocalVariable(name: "stat_K", scope: !408, file: !2, line: 1327, type: !33)
!412 = !DILocalVariable(name: "stat_e", scope: !408, file: !2, line: 1328, type: !33)
!413 = !DILocation(line: 0, scope: !401)
!414 = !DILocation(line: 1312, column: 8, scope: !410)
!415 = !DILocation(line: 1312, column: 6, scope: !401)
!416 = !DILocation(line: 1313, column: 17, scope: !417)
!417 = distinct !DILexicalBlock(scope: !410, file: !2, line: 1312, column: 16)
!418 = !DILocation(line: 1314, column: 13, scope: !417)
!419 = !DILocation(line: 1314, column: 17, scope: !417)
!420 = !DILocation(line: 1315, column: 5, scope: !417)
!421 = !DILocation(line: 1317, column: 13, scope: !409)
!422 = !DILocation(line: 1317, column: 11, scope: !410)
!423 = !DILocation(line: 1318, column: 40, scope: !424)
!424 = distinct !DILexicalBlock(scope: !409, file: !2, line: 1317, column: 20)
!425 = !DILocalVariable(name: "a", arg: 1, scope: !426, file: !2, line: 1183, type: !83)
!426 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_poly", scope: !2, file: !2, line: 1183, type: !427, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!33, !83, !84, !84, !86}
!429 = !{!425, !430, !431, !432, !433, !436, !437, !438, !442}
!430 = !DILocalVariable(name: "b", arg: 2, scope: !426, file: !2, line: 1183, type: !84)
!431 = !DILocalVariable(name: "x", arg: 3, scope: !426, file: !2, line: 1183, type: !84)
!432 = !DILocalVariable(name: "result", arg: 4, scope: !426, file: !2, line: 1183, type: !86)
!433 = !DILocalVariable(name: "N", scope: !434, file: !2, line: 1191, type: !33)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 1190, column: 8)
!435 = distinct !DILexicalBlock(scope: !426, file: !2, line: 1185, column: 6)
!436 = !DILocalVariable(name: "poly", scope: !434, file: !2, line: 1192, type: !85)
!437 = !DILocalVariable(name: "k", scope: !434, file: !2, line: 1193, type: !33)
!438 = !DILocalVariable(name: "t", scope: !439, file: !2, line: 1195, type: !85)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 1194, column: 27)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 1194, column: 5)
!441 = distinct !DILexicalBlock(scope: !434, file: !2, line: 1194, column: 5)
!442 = !DILocalVariable(name: "r", scope: !439, file: !2, line: 1196, type: !85)
!443 = !DILocation(line: 0, scope: !426, inlinedAt: !444)
!444 = distinct !DILocation(line: 1318, column: 12, scope: !424)
!445 = !DILocation(line: 1185, column: 8, scope: !435, inlinedAt: !444)
!446 = !DILocation(line: 1185, column: 6, scope: !426, inlinedAt: !444)
!447 = !DILocation(line: 1186, column: 17, scope: !448, inlinedAt: !444)
!448 = distinct !DILexicalBlock(scope: !435, file: !2, line: 1185, column: 14)
!449 = !DILocation(line: 1187, column: 13, scope: !448, inlinedAt: !444)
!450 = !DILocation(line: 1187, column: 17, scope: !448, inlinedAt: !444)
!451 = !DILocation(line: 1188, column: 5, scope: !448, inlinedAt: !444)
!452 = !DILocation(line: 1191, column: 13, scope: !434, inlinedAt: !444)
!453 = !DILocation(line: 0, scope: !434, inlinedAt: !444)
!454 = !DILocation(line: 1194, column: 17, scope: !440, inlinedAt: !444)
!455 = !DILocation(line: 1194, column: 5, scope: !441, inlinedAt: !444)
!456 = !DILocation(line: 1194, column: 12, scope: !441, inlinedAt: !444)
!457 = !DILocation(line: 1195, column: 20, scope: !439, inlinedAt: !444)
!458 = !DILocation(line: 1195, column: 18, scope: !439, inlinedAt: !444)
!459 = !DILocation(line: 1195, column: 27, scope: !439, inlinedAt: !444)
!460 = !DILocation(line: 1195, column: 23, scope: !439, inlinedAt: !444)
!461 = !DILocation(line: 1195, column: 37, scope: !439, inlinedAt: !444)
!462 = !DILocation(line: 1195, column: 35, scope: !439, inlinedAt: !444)
!463 = !DILocation(line: 1195, column: 34, scope: !439, inlinedAt: !444)
!464 = !DILocation(line: 1195, column: 30, scope: !439, inlinedAt: !444)
!465 = !DILocation(line: 0, scope: !439, inlinedAt: !444)
!466 = !DILocation(line: 1196, column: 25, scope: !439, inlinedAt: !444)
!467 = !DILocation(line: 1197, column: 29, scope: !468, inlinedAt: !444)
!468 = distinct !DILexicalBlock(scope: !439, file: !2, line: 1197, column: 10)
!469 = !DILocation(line: 1197, column: 12, scope: !468, inlinedAt: !444)
!470 = !DILocation(line: 1197, column: 10, scope: !439, inlinedAt: !444)
!471 = !DILocation(line: 1198, column: 9, scope: !472, inlinedAt: !444)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 1198, column: 9)
!473 = distinct !DILexicalBlock(scope: !468, file: !2, line: 1197, column: 36)
!474 = !DILocation(line: 1198, column: 9, scope: !475, inlinedAt: !444)
!475 = distinct !DILexicalBlock(scope: !472, file: !2, line: 1198, column: 9)
!476 = !DILocation(line: 1201, column: 14, scope: !477, inlinedAt: !444)
!477 = distinct !DILexicalBlock(scope: !468, file: !2, line: 1200, column: 12)
!478 = !DILocation(line: 1194, column: 23, scope: !440, inlinedAt: !444)
!479 = distinct !{!479, !455, !480, !481}
!480 = !DILocation(line: 1203, column: 5, scope: !441, inlinedAt: !444)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !DILocation(line: 1192, column: 12, scope: !434, inlinedAt: !444)
!483 = !DILocation(line: 1204, column: 17, scope: !434, inlinedAt: !444)
!484 = !DILocation(line: 1205, column: 31, scope: !434, inlinedAt: !444)
!485 = !DILocation(line: 1205, column: 26, scope: !434, inlinedAt: !444)
!486 = !DILocation(line: 1205, column: 23, scope: !434, inlinedAt: !444)
!487 = !DILocation(line: 1205, column: 41, scope: !434, inlinedAt: !444)
!488 = !DILocation(line: 1205, column: 61, scope: !434, inlinedAt: !444)
!489 = !DILocation(line: 1205, column: 59, scope: !434, inlinedAt: !444)
!490 = !DILocation(line: 1205, column: 13, scope: !434, inlinedAt: !444)
!491 = !DILocation(line: 1205, column: 17, scope: !434, inlinedAt: !444)
!492 = !DILocation(line: 1206, column: 5, scope: !434, inlinedAt: !444)
!493 = !DILocation(line: 1327, column: 44, scope: !408)
!494 = !DILocation(line: 1327, column: 48, scope: !408)
!495 = !DILocation(line: 1327, column: 51, scope: !408)
!496 = !DILocation(line: 0, scope: !426, inlinedAt: !497)
!497 = distinct !DILocation(line: 1327, column: 18, scope: !408)
!498 = !DILocation(line: 1185, column: 8, scope: !435, inlinedAt: !497)
!499 = !DILocation(line: 1185, column: 6, scope: !426, inlinedAt: !497)
!500 = !DILocation(line: 1191, column: 13, scope: !434, inlinedAt: !497)
!501 = !DILocation(line: 0, scope: !434, inlinedAt: !497)
!502 = !DILocation(line: 1194, column: 17, scope: !440, inlinedAt: !497)
!503 = !DILocation(line: 1194, column: 5, scope: !441, inlinedAt: !497)
!504 = !DILocation(line: 1194, column: 12, scope: !441, inlinedAt: !497)
!505 = !DILocation(line: 1195, column: 20, scope: !439, inlinedAt: !497)
!506 = !DILocation(line: 1195, column: 18, scope: !439, inlinedAt: !497)
!507 = !DILocation(line: 1195, column: 27, scope: !439, inlinedAt: !497)
!508 = !DILocation(line: 1195, column: 23, scope: !439, inlinedAt: !497)
!509 = !DILocation(line: 1195, column: 37, scope: !439, inlinedAt: !497)
!510 = !DILocation(line: 1195, column: 35, scope: !439, inlinedAt: !497)
!511 = !DILocation(line: 1195, column: 34, scope: !439, inlinedAt: !497)
!512 = !DILocation(line: 1195, column: 30, scope: !439, inlinedAt: !497)
!513 = !DILocation(line: 0, scope: !439, inlinedAt: !497)
!514 = !DILocation(line: 1196, column: 25, scope: !439, inlinedAt: !497)
!515 = !DILocation(line: 1197, column: 29, scope: !468, inlinedAt: !497)
!516 = !DILocation(line: 1197, column: 12, scope: !468, inlinedAt: !497)
!517 = !DILocation(line: 1197, column: 10, scope: !439, inlinedAt: !497)
!518 = !DILocation(line: 0, scope: !408)
!519 = !DILocation(line: 1198, column: 9, scope: !475, inlinedAt: !497)
!520 = !DILocation(line: 1201, column: 14, scope: !477, inlinedAt: !497)
!521 = !DILocation(line: 1194, column: 23, scope: !440, inlinedAt: !497)
!522 = distinct !{!522, !503, !523, !481}
!523 = !DILocation(line: 1203, column: 5, scope: !441, inlinedAt: !497)
!524 = !DILocation(line: 1192, column: 12, scope: !434, inlinedAt: !497)
!525 = !DILocation(line: 1205, column: 31, scope: !434, inlinedAt: !497)
!526 = !DILocation(line: 1205, column: 26, scope: !434, inlinedAt: !497)
!527 = !DILocation(line: 1205, column: 23, scope: !434, inlinedAt: !497)
!528 = !DILocation(line: 1205, column: 41, scope: !434, inlinedAt: !497)
!529 = !DILocation(line: 1205, column: 61, scope: !434, inlinedAt: !497)
!530 = !DILocation(line: 1205, column: 59, scope: !434, inlinedAt: !497)
!531 = !DILocation(line: 1206, column: 5, scope: !434, inlinedAt: !497)
!532 = !DILocation(line: 0, scope: !435, inlinedAt: !497)
!533 = !DILocation(line: 1328, column: 67, scope: !408)
!534 = !DILocation(line: 1328, column: 65, scope: !408)
!535 = !DILocation(line: 1328, column: 18, scope: !408)
!536 = !DILocation(line: 1331, column: 12, scope: !408)
!537 = !DILocation(line: 0, scope: !410)
!538 = !DILocation(line: 1333, column: 1, scope: !401)
!539 = distinct !DISubprogram(name: "hyperg_1F1_ab_posint", scope: !2, file: !2, line: 938, type: !81, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !551, !552, !553, !556, !557, !560, !561, !562, !567, !568, !569, !570, !571, !572, !573, !574, !575, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !595, !596, !597, !598, !599, !601, !602, !603, !604, !605, !609, !610, !611, !612, !613, !615, !616, !617, !618, !619, !620, !621, !622, !624, !625, !626}
!541 = !DILocalVariable(name: "a", arg: 1, scope: !539, file: !2, line: 938, type: !83)
!542 = !DILocalVariable(name: "b", arg: 2, scope: !539, file: !2, line: 938, type: !83)
!543 = !DILocalVariable(name: "x", arg: 3, scope: !539, file: !2, line: 938, type: !84)
!544 = !DILocalVariable(name: "result", arg: 4, scope: !539, file: !2, line: 938, type: !86)
!545 = !DILocalVariable(name: "ax", scope: !539, file: !2, line: 940, type: !85)
!546 = !DILocalVariable(name: "K", scope: !547, file: !2, line: 949, type: !87)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 948, column: 23)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 948, column: 11)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 945, column: 11)
!550 = distinct !DILexicalBlock(scope: !539, file: !2, line: 942, column: 6)
!551 = !DILocalVariable(name: "stat_K", scope: !547, file: !2, line: 950, type: !33)
!552 = !DILocalVariable(name: "stat_e", scope: !547, file: !2, line: 951, type: !33)
!553 = !DILocalVariable(name: "ex", scope: !554, file: !2, line: 957, type: !87)
!554 = distinct !DILexicalBlock(scope: !555, file: !2, line: 956, column: 23)
!555 = distinct !DILexicalBlock(scope: !548, file: !2, line: 956, column: 11)
!556 = !DILocalVariable(name: "stat_e", scope: !554, file: !2, line: 958, type: !33)
!557 = !DILocalVariable(name: "ex", scope: !558, file: !2, line: 966, type: !87)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 965, column: 23)
!559 = distinct !DILexicalBlock(scope: !555, file: !2, line: 965, column: 11)
!560 = !DILocalVariable(name: "stat_e", scope: !558, file: !2, line: 967, type: !33)
!561 = !DILocalVariable(name: "poly", scope: !558, file: !2, line: 968, type: !85)
!562 = !DILocalVariable(name: "rap", scope: !563, file: !2, line: 989, type: !85)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 984, column: 34)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 984, column: 11)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 978, column: 14)
!566 = distinct !DILexicalBlock(scope: !559, file: !2, line: 975, column: 11)
!567 = !DILocalVariable(name: "stat_CF1", scope: !563, file: !2, line: 990, type: !33)
!568 = !DILocalVariable(name: "ra", scope: !563, file: !2, line: 991, type: !85)
!569 = !DILocalVariable(name: "Ma", scope: !563, file: !2, line: 992, type: !85)
!570 = !DILocalVariable(name: "Map1", scope: !563, file: !2, line: 993, type: !85)
!571 = !DILocalVariable(name: "Mnp1", scope: !563, file: !2, line: 994, type: !85)
!572 = !DILocalVariable(name: "Mn", scope: !563, file: !2, line: 995, type: !85)
!573 = !DILocalVariable(name: "Mnm1", scope: !563, file: !2, line: 996, type: !85)
!574 = !DILocalVariable(name: "n", scope: !563, file: !2, line: 997, type: !33)
!575 = !DILocalVariable(name: "rap", scope: !576, file: !2, line: 1014, type: !85)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 1007, column: 42)
!577 = distinct !DILexicalBlock(scope: !564, file: !2, line: 1007, column: 11)
!578 = !DILocalVariable(name: "stat_CF1", scope: !576, file: !2, line: 1015, type: !33)
!579 = !DILocalVariable(name: "ra", scope: !576, file: !2, line: 1016, type: !85)
!580 = !DILocalVariable(name: "ex", scope: !576, file: !2, line: 1017, type: !87)
!581 = !DILocalVariable(name: "stat_ex", scope: !576, file: !2, line: 1018, type: !33)
!582 = !DILocalVariable(name: "Ma", scope: !576, file: !2, line: 1020, type: !85)
!583 = !DILocalVariable(name: "Map1", scope: !576, file: !2, line: 1021, type: !85)
!584 = !DILocalVariable(name: "Mnm1", scope: !576, file: !2, line: 1022, type: !85)
!585 = !DILocalVariable(name: "Mn", scope: !576, file: !2, line: 1023, type: !85)
!586 = !DILocalVariable(name: "Mnp1", scope: !576, file: !2, line: 1024, type: !85)
!587 = !DILocalVariable(name: "n", scope: !576, file: !2, line: 1025, type: !33)
!588 = !DILocalVariable(name: "ex", scope: !589, file: !2, line: 1046, type: !85)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 1045, column: 52)
!590 = distinct !DILexicalBlock(scope: !591, file: !2, line: 1045, column: 10)
!591 = distinct !DILexicalBlock(scope: !592, file: !2, line: 1040, column: 15)
!592 = distinct !DILexicalBlock(scope: !593, file: !2, line: 1040, column: 8)
!593 = distinct !DILexicalBlock(scope: !594, file: !2, line: 1038, column: 21)
!594 = distinct !DILexicalBlock(scope: !577, file: !2, line: 1038, column: 11)
!595 = !DILocalVariable(name: "n", scope: !589, file: !2, line: 1047, type: !33)
!596 = !DILocalVariable(name: "Mnm1", scope: !589, file: !2, line: 1048, type: !85)
!597 = !DILocalVariable(name: "Mn", scope: !589, file: !2, line: 1049, type: !85)
!598 = !DILocalVariable(name: "Mnp1", scope: !589, file: !2, line: 1050, type: !85)
!599 = !DILocalVariable(name: "r_Mn", scope: !600, file: !2, line: 1074, type: !87)
!600 = distinct !DILexicalBlock(scope: !592, file: !2, line: 1065, column: 10)
!601 = !DILocalVariable(name: "Mnm1", scope: !600, file: !2, line: 1075, type: !85)
!602 = !DILocalVariable(name: "Mn", scope: !600, file: !2, line: 1076, type: !85)
!603 = !DILocalVariable(name: "Mnp1", scope: !600, file: !2, line: 1077, type: !85)
!604 = !DILocalVariable(name: "n", scope: !600, file: !2, line: 1078, type: !33)
!605 = !DILocalVariable(name: "ex", scope: !606, file: !2, line: 1102, type: !85)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 1097, column: 35)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 1097, column: 8)
!608 = distinct !DILexicalBlock(scope: !594, file: !2, line: 1092, column: 8)
!609 = !DILocalVariable(name: "Manp1", scope: !606, file: !2, line: 1103, type: !85)
!610 = !DILocalVariable(name: "Man", scope: !606, file: !2, line: 1104, type: !85)
!611 = !DILocalVariable(name: "Manm1", scope: !606, file: !2, line: 1105, type: !85)
!612 = !DILocalVariable(name: "n", scope: !606, file: !2, line: 1106, type: !33)
!613 = !DILocalVariable(name: "a0", scope: !614, file: !2, line: 1123, type: !33)
!614 = distinct !DILexicalBlock(scope: !607, file: !2, line: 1117, column: 10)
!615 = !DILocalVariable(name: "Ma0b", scope: !614, file: !2, line: 1124, type: !85)
!616 = !DILocalVariable(name: "Ma0bp1", scope: !614, file: !2, line: 1125, type: !85)
!617 = !DILocalVariable(name: "Ma0p1b", scope: !614, file: !2, line: 1126, type: !85)
!618 = !DILocalVariable(name: "Mnm1", scope: !614, file: !2, line: 1127, type: !85)
!619 = !DILocalVariable(name: "Mn", scope: !614, file: !2, line: 1128, type: !85)
!620 = !DILocalVariable(name: "Mnp1", scope: !614, file: !2, line: 1129, type: !85)
!621 = !DILocalVariable(name: "n", scope: !614, file: !2, line: 1130, type: !33)
!622 = !DILocalVariable(name: "ex", scope: !623, file: !2, line: 1132, type: !85)
!623 = distinct !DILexicalBlock(scope: !614, file: !2, line: 1131, column: 7)
!624 = !DILocalVariable(name: "Ma0np1", scope: !623, file: !2, line: 1133, type: !85)
!625 = !DILocalVariable(name: "Ma0n", scope: !623, file: !2, line: 1134, type: !85)
!626 = !DILocalVariable(name: "Ma0nm1", scope: !623, file: !2, line: 1135, type: !85)
!627 = distinct !DIAssignID()
!628 = !DILocation(line: 0, scope: !547)
!629 = distinct !DIAssignID()
!630 = !DILocation(line: 0, scope: !554)
!631 = distinct !DIAssignID()
!632 = !DILocation(line: 0, scope: !558)
!633 = distinct !DIAssignID()
!634 = !DILocation(line: 0, scope: !563)
!635 = distinct !DIAssignID()
!636 = !DILocation(line: 0, scope: !576)
!637 = distinct !DIAssignID()
!638 = distinct !DIAssignID()
!639 = !DILocation(line: 0, scope: !600)
!640 = !DILocation(line: 0, scope: !539)
!641 = !DILocation(line: 940, column: 15, scope: !539)
!642 = !DILocation(line: 942, column: 8, scope: !550)
!643 = !DILocation(line: 942, column: 6, scope: !539)
!644 = !DILocation(line: 943, column: 12, scope: !645)
!645 = distinct !DILexicalBlock(scope: !550, file: !2, line: 942, column: 14)
!646 = !DILocation(line: 943, column: 5, scope: !645)
!647 = !DILocation(line: 945, column: 13, scope: !549)
!648 = !DILocation(line: 945, column: 11, scope: !550)
!649 = !DILocation(line: 946, column: 31, scope: !650)
!650 = distinct !DILexicalBlock(scope: !549, file: !2, line: 945, column: 19)
!651 = !DILocation(line: 946, column: 12, scope: !650)
!652 = !DILocation(line: 946, column: 5, scope: !650)
!653 = !DILocation(line: 948, column: 18, scope: !548)
!654 = !DILocation(line: 948, column: 13, scope: !548)
!655 = !DILocation(line: 948, column: 11, scope: !549)
!656 = !DILocation(line: 949, column: 5, scope: !547)
!657 = !DILocation(line: 950, column: 39, scope: !547)
!658 = !DILocation(line: 950, column: 18, scope: !547)
!659 = !DILocation(line: 951, column: 65, scope: !547)
!660 = !DILocation(line: 952, column: 45, scope: !547)
!661 = !DILocation(line: 952, column: 52, scope: !547)
!662 = !DILocation(line: 951, column: 18, scope: !547)
!663 = !DILocation(line: 954, column: 12, scope: !547)
!664 = !DILocation(line: 955, column: 3, scope: !548)
!665 = !DILocation(line: 956, column: 18, scope: !555)
!666 = !DILocation(line: 956, column: 13, scope: !555)
!667 = !DILocation(line: 956, column: 11, scope: !548)
!668 = !DILocation(line: 957, column: 5, scope: !554)
!669 = !DILocation(line: 958, column: 18, scope: !554)
!670 = !DILocation(line: 959, column: 23, scope: !554)
!671 = !DILocation(line: 959, column: 38, scope: !554)
!672 = !DILocation(line: 959, column: 37, scope: !554)
!673 = !DILocation(line: 959, column: 27, scope: !554)
!674 = !DILocation(line: 959, column: 18, scope: !554)
!675 = !DILocation(line: 960, column: 23, scope: !554)
!676 = !DILocation(line: 960, column: 27, scope: !554)
!677 = !DILocation(line: 960, column: 13, scope: !554)
!678 = !DILocation(line: 961, column: 27, scope: !554)
!679 = !DILocation(line: 961, column: 54, scope: !554)
!680 = !DILocation(line: 961, column: 45, scope: !554)
!681 = !DILocation(line: 962, column: 44, scope: !554)
!682 = !DILocation(line: 962, column: 42, scope: !554)
!683 = !DILocation(line: 962, column: 17, scope: !554)
!684 = !DILocation(line: 964, column: 3, scope: !555)
!685 = !DILocation(line: 965, column: 18, scope: !559)
!686 = !DILocation(line: 965, column: 13, scope: !559)
!687 = !DILocation(line: 965, column: 11, scope: !555)
!688 = !DILocation(line: 966, column: 5, scope: !558)
!689 = !DILocation(line: 967, column: 18, scope: !558)
!690 = !DILocation(line: 968, column: 29, scope: !558)
!691 = !DILocation(line: 968, column: 28, scope: !558)
!692 = !DILocation(line: 968, column: 39, scope: !558)
!693 = !DILocation(line: 968, column: 30, scope: !558)
!694 = !DILocation(line: 969, column: 23, scope: !558)
!695 = !DILocation(line: 969, column: 27, scope: !558)
!696 = !DILocation(line: 969, column: 18, scope: !558)
!697 = !DILocation(line: 970, column: 23, scope: !558)
!698 = !DILocation(line: 970, column: 29, scope: !558)
!699 = !DILocation(line: 970, column: 27, scope: !558)
!700 = !DILocation(line: 970, column: 13, scope: !558)
!701 = !DILocation(line: 971, column: 27, scope: !558)
!702 = !DILocation(line: 971, column: 54, scope: !558)
!703 = !DILocation(line: 971, column: 73, scope: !558)
!704 = !DILocation(line: 971, column: 64, scope: !558)
!705 = !DILocation(line: 971, column: 45, scope: !558)
!706 = !DILocation(line: 972, column: 44, scope: !558)
!707 = !DILocation(line: 972, column: 42, scope: !558)
!708 = !DILocation(line: 972, column: 17, scope: !558)
!709 = !DILocation(line: 974, column: 3, scope: !559)
!710 = !DILocation(line: 975, column: 17, scope: !566)
!711 = !DILocation(line: 975, column: 13, scope: !566)
!712 = !DILocation(line: 975, column: 11, scope: !559)
!713 = !DILocation(line: 976, column: 33, scope: !714)
!714 = distinct !DILexicalBlock(scope: !566, file: !2, line: 975, column: 21)
!715 = !DILocation(line: 976, column: 12, scope: !714)
!716 = !DILocation(line: 976, column: 5, scope: !714)
!717 = !DILocation(line: 978, column: 18, scope: !565)
!718 = !DILocation(line: 978, column: 23, scope: !565)
!719 = !DILocation(line: 982, column: 39, scope: !720)
!720 = distinct !DILexicalBlock(scope: !565, file: !2, line: 981, column: 7)
!721 = !DILocation(line: 982, column: 42, scope: !720)
!722 = !DILocation(line: 979, column: 16, scope: !565)
!723 = !DILocation(line: 979, column: 20, scope: !565)
!724 = !DILocation(line: 979, column: 21, scope: !565)
!725 = !DILocation(line: 979, column: 18, scope: !565)
!726 = !DILocation(line: 980, column: 11, scope: !565)
!727 = !DILocation(line: 980, column: 18, scope: !565)
!728 = !DILocation(line: 980, column: 22, scope: !565)
!729 = !DILocation(line: 982, column: 12, scope: !720)
!730 = !DILocation(line: 982, column: 5, scope: !720)
!731 = !DILocation(line: 984, column: 17, scope: !564)
!732 = !DILocation(line: 984, column: 25, scope: !564)
!733 = !DILocation(line: 984, column: 22, scope: !564)
!734 = !DILocation(line: 984, column: 11, scope: !565)
!735 = !DILocation(line: 989, column: 5, scope: !563)
!736 = !DILocation(line: 990, column: 20, scope: !563)
!737 = !{i32 0, i32 12}
!738 = !DILocation(line: 998, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !2, line: 998, column: 5)
!740 = distinct !DILexicalBlock(scope: !563, file: !2, line: 998, column: 5)
!741 = !DILocation(line: 998, column: 5, scope: !740)
!742 = !DILocation(line: 991, column: 24, scope: !563)
!743 = !DILocation(line: 991, column: 29, scope: !563)
!744 = !DILocation(line: 991, column: 27, scope: !563)
!745 = !DILocation(line: 993, column: 22, scope: !563)
!746 = !DILocation(line: 999, column: 15, scope: !747)
!747 = distinct !DILexicalBlock(scope: !739, file: !2, line: 998, column: 24)
!748 = !DILocation(line: 999, column: 17, scope: !747)
!749 = !DILocation(line: 999, column: 28, scope: !747)
!750 = !DILocation(line: 999, column: 30, scope: !747)
!751 = !DILocation(line: 999, column: 27, scope: !747)
!752 = !DILocation(line: 999, column: 36, scope: !747)
!753 = !DILocation(line: 999, column: 46, scope: !747)
!754 = !DILocation(line: 999, column: 44, scope: !747)
!755 = !DILocation(line: 999, column: 42, scope: !747)
!756 = !DILocation(line: 998, column: 20, scope: !739)
!757 = distinct !{!757, !741, !758, !481}
!758 = !DILocation(line: 1002, column: 5, scope: !740)
!759 = !DILocation(line: 1003, column: 21, scope: !563)
!760 = !DILocation(line: 1003, column: 17, scope: !563)
!761 = !DILocation(line: 1004, column: 44, scope: !563)
!762 = !DILocation(line: 1004, column: 41, scope: !563)
!763 = !DILocation(line: 1004, column: 61, scope: !563)
!764 = !DILocation(line: 1004, column: 59, scope: !563)
!765 = !DILocation(line: 1004, column: 13, scope: !563)
!766 = !DILocation(line: 1004, column: 17, scope: !563)
!767 = !DILocation(line: 1006, column: 3, scope: !564)
!768 = !DILocation(line: 1007, column: 22, scope: !577)
!769 = !DILocation(line: 1007, column: 32, scope: !577)
!770 = !DILocation(line: 1014, column: 5, scope: !576)
!771 = !DILocation(line: 1015, column: 20, scope: !576)
!772 = !DILocation(line: 1016, column: 24, scope: !576)
!773 = !DILocation(line: 1016, column: 29, scope: !576)
!774 = !DILocation(line: 1016, column: 27, scope: !576)
!775 = !DILocation(line: 1017, column: 5, scope: !576)
!776 = !DILocation(line: 1021, column: 22, scope: !576)
!777 = !DILocation(line: 1026, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1026, column: 5)
!779 = distinct !DILexicalBlock(scope: !576, file: !2, line: 1026, column: 5)
!780 = !DILocation(line: 1026, column: 5, scope: !779)
!781 = !DILocation(line: 1027, column: 17, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !2, line: 1026, column: 26)
!783 = !DILocation(line: 1027, column: 15, scope: !782)
!784 = !DILocation(line: 1027, column: 20, scope: !782)
!785 = !DILocation(line: 1027, column: 30, scope: !782)
!786 = !DILocation(line: 1027, column: 32, scope: !782)
!787 = !DILocation(line: 1027, column: 29, scope: !782)
!788 = !DILocation(line: 1027, column: 37, scope: !782)
!789 = !DILocation(line: 1027, column: 42, scope: !782)
!790 = !DILocation(line: 1027, column: 41, scope: !782)
!791 = !DILocation(line: 1026, column: 22, scope: !778)
!792 = distinct !{!792, !780, !793, !481}
!793 = !DILocation(line: 1030, column: 5, scope: !779)
!794 = !DILocation(line: 1032, column: 15, scope: !576)
!795 = !DILocation(line: 1033, column: 23, scope: !576)
!796 = !DILocation(line: 1033, column: 27, scope: !576)
!797 = !DILocation(line: 1033, column: 31, scope: !576)
!798 = !DILocation(line: 1033, column: 18, scope: !576)
!799 = !DILocation(line: 1034, column: 23, scope: !576)
!800 = !DILocation(line: 1034, column: 36, scope: !576)
!801 = !DILocation(line: 1034, column: 29, scope: !576)
!802 = !DILocation(line: 1034, column: 27, scope: !576)
!803 = !DILocation(line: 1034, column: 13, scope: !576)
!804 = !DILocation(line: 1035, column: 51, scope: !576)
!805 = !DILocation(line: 1035, column: 50, scope: !576)
!806 = !DILocation(line: 1035, column: 45, scope: !576)
!807 = !DILocation(line: 1035, column: 42, scope: !576)
!808 = !DILocation(line: 1035, column: 62, scope: !576)
!809 = !DILocation(line: 1035, column: 60, scope: !576)
!810 = !DILocation(line: 1035, column: 17, scope: !576)
!811 = !DILocation(line: 1036, column: 12, scope: !576)
!812 = !DILocation(line: 1037, column: 3, scope: !577)
!813 = !DILocation(line: 1038, column: 13, scope: !594)
!814 = !DILocation(line: 1038, column: 11, scope: !577)
!815 = !DILocation(line: 1040, column: 10, scope: !592)
!816 = !DILocation(line: 1040, column: 8, scope: !593)
!817 = !DILocation(line: 1045, column: 24, scope: !590)
!818 = !DILocation(line: 1045, column: 18, scope: !590)
!819 = !DILocation(line: 1045, column: 29, scope: !590)
!820 = !DILocation(line: 1045, column: 10, scope: !591)
!821 = !DILocation(line: 1046, column: 21, scope: !589)
!822 = !DILocation(line: 0, scope: !589)
!823 = !DILocation(line: 1049, column: 26, scope: !589)
!824 = !DILocation(line: 1051, column: 21, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 1051, column: 9)
!826 = distinct !DILexicalBlock(scope: !589, file: !2, line: 1051, column: 9)
!827 = !DILocation(line: 1051, column: 9, scope: !826)
!828 = !DILocation(line: 1052, column: 34, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !2, line: 1051, column: 30)
!830 = !DILocation(line: 1052, column: 36, scope: !829)
!831 = !DILocation(line: 1052, column: 33, scope: !829)
!832 = !DILocation(line: 1052, column: 41, scope: !829)
!833 = !DILocation(line: 1052, column: 46, scope: !829)
!834 = !DILocation(line: 1052, column: 45, scope: !829)
!835 = !DILocation(line: 1051, column: 26, scope: !825)
!836 = !DILocation(line: 1052, column: 21, scope: !829)
!837 = !DILocation(line: 1052, column: 19, scope: !829)
!838 = !DILocation(line: 1052, column: 24, scope: !829)
!839 = distinct !{!839, !827, !840, !481}
!840 = !DILocation(line: 1055, column: 9, scope: !826)
!841 = !DILocation(line: 1056, column: 22, scope: !589)
!842 = !DILocation(line: 1057, column: 34, scope: !589)
!843 = !DILocation(line: 1057, column: 54, scope: !589)
!844 = !DILocation(line: 1057, column: 52, scope: !589)
!845 = !DILocation(line: 1057, column: 17, scope: !589)
!846 = !DILocation(line: 1058, column: 30, scope: !589)
!847 = !DILocation(line: 1058, column: 29, scope: !589)
!848 = !DILocation(line: 1058, column: 24, scope: !589)
!849 = !DILocation(line: 1058, column: 21, scope: !589)
!850 = !DILocation(line: 1062, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !2, line: 1062, column: 9)
!852 = distinct !DILexicalBlock(scope: !590, file: !2, line: 1061, column: 12)
!853 = !DILocation(line: 1062, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !2, line: 1062, column: 9)
!855 = !DILocation(line: 1074, column: 7, scope: !600)
!856 = !DILocation(line: 1079, column: 26, scope: !600)
!857 = !DILocation(line: 1079, column: 7, scope: !600)
!858 = !DILocation(line: 1080, column: 17, scope: !600)
!859 = !DILocation(line: 1081, column: 17, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 1081, column: 7)
!861 = distinct !DILexicalBlock(scope: !600, file: !2, line: 1081, column: 7)
!862 = !DILocation(line: 1081, column: 7, scope: !861)
!863 = !DILocation(line: 1082, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !2, line: 1081, column: 26)
!865 = !DILocation(line: 1082, column: 17, scope: !864)
!866 = !DILocation(line: 1082, column: 22, scope: !864)
!867 = !DILocation(line: 1082, column: 32, scope: !864)
!868 = !DILocation(line: 1082, column: 34, scope: !864)
!869 = !DILocation(line: 1082, column: 31, scope: !864)
!870 = !DILocation(line: 1082, column: 39, scope: !864)
!871 = !DILocation(line: 1082, column: 44, scope: !864)
!872 = !DILocation(line: 1082, column: 43, scope: !864)
!873 = !DILocation(line: 1081, column: 22, scope: !860)
!874 = distinct !{!874, !862, !875, !481}
!875 = !DILocation(line: 1085, column: 7, scope: !861)
!876 = !DILocation(line: 1086, column: 20, scope: !600)
!877 = !DILocation(line: 1087, column: 22, scope: !600)
!878 = !DILocation(line: 1087, column: 40, scope: !600)
!879 = !DILocation(line: 1087, column: 31, scope: !600)
!880 = !DILocation(line: 1087, column: 61, scope: !600)
!881 = !DILocation(line: 1087, column: 65, scope: !600)
!882 = !DILocation(line: 1087, column: 51, scope: !600)
!883 = !DILocation(line: 1087, column: 49, scope: !600)
!884 = !DILocation(line: 1087, column: 15, scope: !600)
!885 = !DILocation(line: 1088, column: 44, scope: !600)
!886 = !DILocation(line: 1088, column: 19, scope: !600)
!887 = !DILocation(line: 1090, column: 5, scope: !592)
!888 = !DILocation(line: 1097, column: 16, scope: !607)
!889 = !DILocation(line: 1097, column: 10, scope: !607)
!890 = !DILocation(line: 1097, column: 23, scope: !607)
!891 = !DILocation(line: 1102, column: 19, scope: !606)
!892 = !DILocation(line: 0, scope: !606)
!893 = !DILocation(line: 1104, column: 35, scope: !606)
!894 = !DILocation(line: 1104, column: 25, scope: !606)
!895 = !DILocation(line: 1107, scope: !896)
!896 = distinct !DILexicalBlock(scope: !606, file: !2, line: 1107, column: 7)
!897 = !DILocation(line: 1107, column: 19, scope: !898)
!898 = distinct !DILexicalBlock(scope: !896, file: !2, line: 1107, column: 7)
!899 = !DILocation(line: 1107, column: 7, scope: !896)
!900 = !DILocation(line: 1108, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !2, line: 1107, column: 28)
!902 = !DILocation(line: 1108, column: 23, scope: !901)
!903 = !DILocation(line: 1108, column: 22, scope: !901)
!904 = !DILocation(line: 1108, column: 20, scope: !901)
!905 = !DILocation(line: 1108, column: 28, scope: !901)
!906 = !DILocation(line: 1108, column: 39, scope: !901)
!907 = !DILocation(line: 1108, column: 37, scope: !901)
!908 = !DILocation(line: 1108, column: 36, scope: !901)
!909 = !DILocation(line: 1108, column: 42, scope: !901)
!910 = !DILocation(line: 1108, column: 51, scope: !901)
!911 = !DILocation(line: 1108, column: 52, scope: !901)
!912 = !DILocation(line: 1108, column: 49, scope: !901)
!913 = distinct !{!913, !899, !914, !481}
!914 = !DILocation(line: 1111, column: 7, scope: !896)
!915 = !DILocation(line: 1112, column: 20, scope: !606)
!916 = !DILocation(line: 1113, column: 38, scope: !606)
!917 = !DILocation(line: 1113, column: 58, scope: !606)
!918 = !DILocation(line: 1113, column: 56, scope: !606)
!919 = !DILocation(line: 1113, column: 15, scope: !606)
!920 = !DILocation(line: 1114, column: 28, scope: !606)
!921 = !DILocation(line: 1114, column: 27, scope: !606)
!922 = !DILocation(line: 1114, column: 22, scope: !606)
!923 = !DILocation(line: 1114, column: 19, scope: !606)
!924 = !DILocation(line: 1123, column: 22, scope: !614)
!925 = !DILocation(line: 1123, column: 16, scope: !614)
!926 = !DILocation(line: 0, scope: !614)
!927 = !DILocation(line: 1132, column: 21, scope: !623)
!928 = !DILocation(line: 0, scope: !623)
!929 = !DILocation(line: 1134, column: 40, scope: !623)
!930 = !DILocation(line: 1134, column: 38, scope: !623)
!931 = !DILocation(line: 1134, column: 28, scope: !623)
!932 = !DILocation(line: 1136, scope: !933)
!933 = distinct !DILexicalBlock(scope: !623, file: !2, line: 1136, column: 9)
!934 = !DILocation(line: 1136, column: 22, scope: !935)
!935 = distinct !DILexicalBlock(scope: !933, file: !2, line: 1136, column: 9)
!936 = !DILocation(line: 1136, column: 9, scope: !933)
!937 = !DILocation(line: 1137, column: 21, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !2, line: 1136, column: 31)
!939 = !DILocation(line: 1137, column: 26, scope: !938)
!940 = !DILocation(line: 1137, column: 25, scope: !938)
!941 = !DILocation(line: 1137, column: 23, scope: !938)
!942 = !DILocation(line: 1137, column: 31, scope: !938)
!943 = !DILocation(line: 1137, column: 43, scope: !938)
!944 = !DILocation(line: 1137, column: 41, scope: !938)
!945 = !DILocation(line: 1137, column: 40, scope: !938)
!946 = !DILocation(line: 1137, column: 47, scope: !938)
!947 = !DILocation(line: 1137, column: 57, scope: !938)
!948 = !DILocation(line: 1137, column: 58, scope: !938)
!949 = !DILocation(line: 1137, column: 55, scope: !938)
!950 = distinct !{!950, !936, !951, !481}
!951 = !DILocation(line: 1140, column: 9, scope: !933)
!952 = !DILocation(line: 1148, column: 14, scope: !953)
!953 = distinct !DILexicalBlock(scope: !614, file: !2, line: 1148, column: 11)
!954 = !DILocation(line: 1148, column: 11, scope: !614)
!955 = !DILocation(line: 1143, column: 20, scope: !623)
!956 = !DILocation(line: 1143, column: 27, scope: !623)
!957 = !DILocation(line: 1143, column: 40, scope: !623)
!958 = !DILocation(line: 1143, column: 37, scope: !623)
!959 = !DILocation(line: 1143, column: 36, scope: !623)
!960 = !DILocation(line: 1143, column: 43, scope: !623)
!961 = !DILocation(line: 1143, column: 55, scope: !623)
!962 = !DILocation(line: 1143, column: 52, scope: !623)
!963 = !DILocation(line: 1143, column: 51, scope: !623)
!964 = !DILocation(line: 1152, column: 19, scope: !965)
!965 = distinct !DILexicalBlock(scope: !953, file: !2, line: 1152, column: 16)
!966 = !DILocation(line: 1152, column: 22, scope: !965)
!967 = !DILocation(line: 1152, column: 16, scope: !953)
!968 = !DILocation(line: 1161, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 1161, column: 11)
!970 = distinct !DILexicalBlock(scope: !965, file: !2, line: 1157, column: 9)
!971 = !DILocation(line: 1162, column: 23, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 1161, column: 33)
!973 = distinct !DILexicalBlock(scope: !969, file: !2, line: 1161, column: 11)
!974 = !DILocation(line: 1162, column: 21, scope: !972)
!975 = !DILocation(line: 1162, column: 26, scope: !972)
!976 = !DILocation(line: 1162, column: 36, scope: !972)
!977 = !DILocation(line: 1162, column: 38, scope: !972)
!978 = !DILocation(line: 1162, column: 35, scope: !972)
!979 = !DILocation(line: 1162, column: 43, scope: !972)
!980 = !DILocation(line: 1162, column: 48, scope: !972)
!981 = !DILocation(line: 1162, column: 47, scope: !972)
!982 = !DILocation(line: 1161, column: 29, scope: !973)
!983 = !DILocation(line: 1161, column: 24, scope: !973)
!984 = distinct !{!984, !968, !985, !481}
!985 = !DILocation(line: 1165, column: 11, scope: !969)
!986 = !DILocation(line: 0, scope: !953)
!987 = !DILocation(line: 1168, column: 20, scope: !614)
!988 = !DILocation(line: 1169, column: 38, scope: !614)
!989 = !DILocation(line: 1169, column: 59, scope: !614)
!990 = !DILocation(line: 1169, column: 56, scope: !614)
!991 = !DILocation(line: 1169, column: 15, scope: !614)
!992 = !DILocation(line: 1170, column: 28, scope: !614)
!993 = !DILocation(line: 1170, column: 27, scope: !614)
!994 = !DILocation(line: 1170, column: 22, scope: !614)
!995 = !DILocation(line: 1170, column: 19, scope: !614)
!996 = !DILocation(line: 0, scope: !550)
!997 = !DILocation(line: 1174, column: 1, scope: !539)
!998 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !231, file: !231, line: 122, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!33, !84, !84, !84, !84, !86}
!1001 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !2, file: !2, line: 1844, type: !240, scopeLine: 1847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1033, !1034, !1035, !1036, !1045, !1046, !1047, !1050, !1051, !1052, !1056, !1057, !1058, !1061, !1062}
!1003 = !DILocalVariable(name: "a", arg: 1, scope: !1001, file: !2, line: 1844, type: !84)
!1004 = !DILocalVariable(name: "b", arg: 2, scope: !1001, file: !2, line: 1844, type: !84)
!1005 = !DILocalVariable(name: "x", arg: 3, scope: !1001, file: !2, line: 1844, type: !84)
!1006 = !DILocalVariable(name: "result", arg: 4, scope: !1001, file: !2, line: 1845, type: !86)
!1007 = !DILocalVariable(name: "bma", scope: !1001, file: !2, line: 1848, type: !84)
!1008 = !DILocalVariable(name: "rinta", scope: !1001, file: !2, line: 1849, type: !84)
!1009 = !DILocalVariable(name: "rintb", scope: !1001, file: !2, line: 1850, type: !84)
!1010 = !DILocalVariable(name: "rintbma", scope: !1001, file: !2, line: 1851, type: !84)
!1011 = !DILocalVariable(name: "a_integer", scope: !1001, file: !2, line: 1852, type: !83)
!1012 = !DILocalVariable(name: "b_integer", scope: !1001, file: !2, line: 1853, type: !83)
!1013 = !DILocalVariable(name: "bma_integer", scope: !1001, file: !2, line: 1854, type: !83)
!1014 = !DILocalVariable(name: "b_neg_integer", scope: !1001, file: !2, line: 1855, type: !83)
!1015 = !DILocalVariable(name: "a_neg_integer", scope: !1001, file: !2, line: 1856, type: !83)
!1016 = !DILocalVariable(name: "bma_neg_integer", scope: !1001, file: !2, line: 1857, type: !83)
!1017 = !DILocalVariable(name: "exm1", scope: !1018, file: !2, line: 1892, type: !87)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 1884, column: 75)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1884, column: 13)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1878, column: 11)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 1873, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 1870, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 1861, column: 6)
!1024 = !DILocalVariable(name: "stat_e", scope: !1018, file: !2, line: 1893, type: !33)
!1025 = !DILocalVariable(name: "sa", scope: !1018, file: !2, line: 1894, type: !85)
!1026 = !DILocalVariable(name: "sb", scope: !1018, file: !2, line: 1895, type: !85)
!1027 = !DILocalVariable(name: "lnab", scope: !1018, file: !2, line: 1896, type: !85)
!1028 = !DILocalVariable(name: "hx", scope: !1018, file: !2, line: 1897, type: !87)
!1029 = !DILocalVariable(name: "stat_hx", scope: !1018, file: !2, line: 1898, type: !33)
!1030 = !DILocalVariable(name: "m_arg", scope: !1031, file: !2, line: 1907, type: !84)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1904, column: 61)
!1032 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 1904, column: 14)
!1033 = !DILocalVariable(name: "F_renorm", scope: !1031, file: !2, line: 1908, type: !87)
!1034 = !DILocalVariable(name: "stat_F", scope: !1031, file: !2, line: 1909, type: !33)
!1035 = !DILocalVariable(name: "stat_m", scope: !1031, file: !2, line: 1910, type: !33)
!1036 = !DILocalVariable(name: "Kummer_1F1", scope: !1037, file: !2, line: 1940, type: !87)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1936, column: 30)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 1936, column: 13)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 1931, column: 8)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1930, column: 20)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1930, column: 11)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 1927, column: 11)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 1921, column: 11)
!1044 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1915, column: 11)
!1045 = !DILocalVariable(name: "stat_K", scope: !1037, file: !2, line: 1941, type: !33)
!1046 = !DILocalVariable(name: "stat_e", scope: !1037, file: !2, line: 1942, type: !33)
!1047 = !DILocalVariable(name: "Kummer_1F1", scope: !1048, file: !2, line: 1953, type: !87)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1947, column: 53)
!1049 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1947, column: 13)
!1050 = !DILocalVariable(name: "stat_K", scope: !1048, file: !2, line: 1954, type: !33)
!1051 = !DILocalVariable(name: "stat_e", scope: !1048, file: !2, line: 1955, type: !33)
!1052 = !DILocalVariable(name: "K", scope: !1053, file: !2, line: 1974, type: !87)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 1970, column: 36)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 1970, column: 8)
!1055 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1967, column: 8)
!1056 = !DILocalVariable(name: "stat_K", scope: !1053, file: !2, line: 1975, type: !33)
!1057 = !DILocalVariable(name: "stat_e", scope: !1053, file: !2, line: 1976, type: !33)
!1058 = !DILocalVariable(name: "K", scope: !1059, file: !2, line: 1997, type: !87)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 1994, column: 22)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 1994, column: 13)
!1061 = !DILocalVariable(name: "stat_K", scope: !1059, file: !2, line: 1998, type: !33)
!1062 = !DILocalVariable(name: "stat_e", scope: !1059, file: !2, line: 1999, type: !33)
!1063 = distinct !DIAssignID()
!1064 = !DILocation(line: 0, scope: !1018)
!1065 = distinct !DIAssignID()
!1066 = distinct !DIAssignID()
!1067 = !DILocation(line: 0, scope: !1031)
!1068 = distinct !DIAssignID()
!1069 = !DILocation(line: 0, scope: !1037)
!1070 = distinct !DIAssignID()
!1071 = !DILocation(line: 0, scope: !1048)
!1072 = distinct !DIAssignID()
!1073 = !DILocation(line: 0, scope: !1053)
!1074 = distinct !DIAssignID()
!1075 = !DILocation(line: 0, scope: !1059)
!1076 = !DILocation(line: 0, scope: !1001)
!1077 = !DILocation(line: 1849, column: 32, scope: !1001)
!1078 = !DILocation(line: 1849, column: 24, scope: !1001)
!1079 = !DILocation(line: 1850, column: 24, scope: !1001)
!1080 = !DILocation(line: 1851, column: 26, scope: !1001)
!1081 = !DILocation(line: 1852, column: 29, scope: !1001)
!1082 = !DILocation(line: 1852, column: 43, scope: !1001)
!1083 = !DILocation(line: 1852, column: 64, scope: !1001)
!1084 = !DILocation(line: 1853, column: 29, scope: !1001)
!1085 = !DILocation(line: 1853, column: 43, scope: !1001)
!1086 = !DILocation(line: 1853, column: 64, scope: !1001)
!1087 = !DILocation(line: 1854, column: 29, scope: !1001)
!1088 = !DILocation(line: 1854, column: 47, scope: !1001)
!1089 = !DILocation(line: 1854, column: 68, scope: !1001)
!1090 = !DILocation(line: 1855, column: 35, scope: !1001)
!1091 = !DILocation(line: 1855, column: 42, scope: !1001)
!1092 = !DILocation(line: 1856, column: 35, scope: !1001)
!1093 = !DILocation(line: 1856, column: 42, scope: !1001)
!1094 = !DILocation(line: 1857, column: 37, scope: !1001)
!1095 = !DILocation(line: 1857, column: 44, scope: !1001)
!1096 = !DILocation(line: 1861, column: 8, scope: !1023)
!1097 = !DILocation(line: 1861, column: 6, scope: !1001)
!1098 = !DILocation(line: 1866, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 1861, column: 16)
!1100 = !DILocation(line: 1867, column: 13, scope: !1099)
!1101 = !DILocation(line: 1867, column: 17, scope: !1099)
!1102 = !DILocation(line: 1868, column: 5, scope: !1099)
!1103 = !DILocation(line: 1870, column: 13, scope: !1022)
!1104 = !DILocation(line: 1870, column: 11, scope: !1023)
!1105 = !DILocation(line: 1871, column: 5, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 1871, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 1870, column: 21)
!1108 = !DILocation(line: 1871, column: 5, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 1871, column: 5)
!1110 = !DILocation(line: 1873, column: 13, scope: !1021)
!1111 = !DILocation(line: 1873, column: 11, scope: !1022)
!1112 = !DILocation(line: 1874, column: 17, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1873, column: 21)
!1114 = !DILocation(line: 1875, column: 13, scope: !1113)
!1115 = !DILocation(line: 1875, column: 17, scope: !1113)
!1116 = !DILocation(line: 1876, column: 5, scope: !1113)
!1117 = !DILocation(line: 1878, column: 13, scope: !1020)
!1118 = !DILocation(line: 1878, column: 11, scope: !1021)
!1119 = !DILocation(line: 1883, column: 12, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1878, column: 19)
!1121 = !DILocation(line: 1883, column: 5, scope: !1120)
!1122 = !DILocation(line: 1884, column: 13, scope: !1019)
!1123 = !DILocation(line: 1884, column: 21, scope: !1019)
!1124 = !DILocation(line: 1884, column: 42, scope: !1019)
!1125 = !DILocation(line: 1892, column: 5, scope: !1018)
!1126 = !DILocation(line: 1893, column: 18, scope: !1018)
!1127 = !DILocation(line: 1894, column: 21, scope: !1018)
!1128 = !DILocation(line: 1895, column: 21, scope: !1018)
!1129 = !DILocation(line: 1895, column: 19, scope: !1018)
!1130 = !DILocation(line: 1896, column: 29, scope: !1018)
!1131 = !DILocation(line: 1896, column: 23, scope: !1018)
!1132 = !DILocation(line: 1897, column: 5, scope: !1018)
!1133 = !DILocation(line: 1898, column: 65, scope: !1018)
!1134 = !DILocation(line: 1898, column: 63, scope: !1018)
!1135 = !DILocation(line: 1899, column: 44, scope: !1018)
!1136 = !DILocation(line: 1899, column: 56, scope: !1018)
!1137 = !DILocation(line: 1899, column: 49, scope: !1018)
!1138 = !DILocation(line: 1899, column: 66, scope: !1018)
!1139 = !DILocation(line: 1898, column: 19, scope: !1018)
!1140 = !DILocation(line: 1901, column: 23, scope: !1018)
!1141 = !DILocation(line: 1901, column: 27, scope: !1018)
!1142 = !DILocation(line: 1901, column: 20, scope: !1018)
!1143 = !DILocation(line: 1901, column: 17, scope: !1018)
!1144 = !DILocation(line: 1902, column: 22, scope: !1018)
!1145 = !DILocation(line: 1902, column: 13, scope: !1018)
!1146 = !DILocation(line: 1902, column: 17, scope: !1018)
!1147 = !DILocation(line: 1903, column: 12, scope: !1018)
!1148 = !DILocation(line: 1904, column: 3, scope: !1019)
!1149 = !DILocation(line: 1904, column: 43, scope: !1032)
!1150 = !DILocation(line: 1904, column: 52, scope: !1032)
!1151 = !DILocation(line: 1904, column: 46, scope: !1032)
!1152 = !DILocation(line: 1904, column: 56, scope: !1032)
!1153 = !DILocation(line: 1904, column: 14, scope: !1019)
!1154 = !DILocation(line: 1907, column: 36, scope: !1031)
!1155 = !DILocation(line: 1907, column: 31, scope: !1031)
!1156 = !DILocation(line: 1908, column: 7, scope: !1031)
!1157 = !DILocation(line: 1909, column: 20, scope: !1031)
!1158 = !DILocation(line: 1910, column: 71, scope: !1031)
!1159 = !DILocation(line: 1911, column: 58, scope: !1031)
!1160 = !DILocation(line: 1911, column: 48, scope: !1031)
!1161 = !DILocation(line: 1911, column: 76, scope: !1031)
!1162 = !DILocation(line: 1911, column: 66, scope: !1031)
!1163 = !DILocation(line: 1910, column: 20, scope: !1031)
!1164 = !DILocation(line: 1913, column: 14, scope: !1031)
!1165 = !DILocation(line: 1914, column: 3, scope: !1032)
!1166 = !DILocation(line: 1915, column: 21, scope: !1044)
!1167 = !DILocation(line: 1919, column: 36, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 1915, column: 35)
!1169 = !DILocation(line: 1919, column: 48, scope: !1168)
!1170 = !DILocation(line: 1919, column: 12, scope: !1168)
!1171 = !DILocation(line: 1919, column: 5, scope: !1168)
!1172 = !DILocation(line: 1921, column: 25, scope: !1043)
!1173 = !DILocation(line: 1925, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 1925, column: 5)
!1175 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 1921, column: 55)
!1176 = !DILocation(line: 1925, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1925, column: 5)
!1178 = !DILocation(line: 1927, column: 11, scope: !1043)
!1179 = !DILocation(line: 1928, column: 36, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1927, column: 26)
!1181 = !DILocation(line: 1928, column: 12, scope: !1180)
!1182 = !DILocation(line: 1928, column: 5, scope: !1180)
!1183 = !DILocation(line: 1930, column: 13, scope: !1041)
!1184 = !DILocation(line: 1930, column: 11, scope: !1042)
!1185 = !DILocation(line: 1931, column: 13, scope: !1039)
!1186 = !DILocation(line: 1931, column: 18, scope: !1039)
!1187 = !DILocation(line: 1934, column: 14, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 1931, column: 31)
!1189 = !DILocation(line: 1934, column: 7, scope: !1188)
!1190 = !DILocation(line: 1936, column: 13, scope: !1039)
!1191 = !DILocation(line: 1940, column: 7, scope: !1037)
!1192 = !DILocation(line: 1941, column: 44, scope: !1037)
!1193 = !DILocation(line: 1941, column: 61, scope: !1037)
!1194 = !DILocation(line: 1941, column: 20, scope: !1037)
!1195 = !DILocation(line: 1942, column: 63, scope: !1037)
!1196 = !DILocation(line: 1942, column: 61, scope: !1037)
!1197 = !DILocation(line: 1943, column: 56, scope: !1037)
!1198 = !DILocation(line: 1943, column: 72, scope: !1037)
!1199 = !DILocation(line: 1942, column: 20, scope: !1037)
!1200 = !DILocation(line: 1945, column: 14, scope: !1037)
!1201 = !DILocation(line: 1946, column: 5, scope: !1038)
!1202 = !DILocation(line: 1947, column: 15, scope: !1049)
!1203 = !DILocation(line: 1947, column: 21, scope: !1049)
!1204 = !DILocation(line: 1947, column: 24, scope: !1049)
!1205 = !DILocation(line: 1947, column: 32, scope: !1049)
!1206 = !DILocation(line: 1947, column: 13, scope: !1038)
!1207 = !DILocation(line: 1953, column: 7, scope: !1048)
!1208 = !DILocation(line: 1954, column: 46, scope: !1048)
!1209 = !DILocation(line: 1954, column: 20, scope: !1048)
!1210 = !DILocation(line: 1955, column: 61, scope: !1048)
!1211 = !DILocation(line: 1956, column: 56, scope: !1048)
!1212 = !DILocation(line: 1956, column: 72, scope: !1048)
!1213 = !DILocation(line: 1955, column: 20, scope: !1048)
!1214 = !DILocation(line: 1958, column: 14, scope: !1048)
!1215 = !DILocation(line: 1959, column: 5, scope: !1049)
!1216 = !DILocation(line: 1960, column: 16, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1960, column: 14)
!1218 = !DILocation(line: 1960, column: 14, scope: !1049)
!1219 = !DILocation(line: 1962, column: 14, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1960, column: 21)
!1221 = !DILocation(line: 1962, column: 7, scope: !1220)
!1222 = !DILocation(line: 1964, column: 14, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1963, column: 12)
!1224 = !DILocation(line: 1964, column: 7, scope: !1223)
!1225 = !DILocation(line: 1970, column: 24, scope: !1054)
!1226 = !DILocation(line: 1974, column: 7, scope: !1053)
!1227 = !DILocation(line: 1977, column: 12, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 1977, column: 10)
!1229 = !DILocation(line: 0, scope: !1228)
!1230 = !DILocation(line: 1977, column: 10, scope: !1053)
!1231 = !DILocation(line: 1983, column: 18, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 1977, column: 19)
!1233 = !DILocation(line: 1984, column: 7, scope: !1232)
!1234 = !DILocation(line: 1987, column: 18, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 1985, column: 12)
!1236 = !DILocation(line: 1989, column: 59, scope: !1053)
!1237 = !DILocation(line: 1989, column: 57, scope: !1053)
!1238 = !DILocation(line: 1990, column: 43, scope: !1053)
!1239 = !DILocation(line: 1990, column: 50, scope: !1053)
!1240 = !DILocation(line: 1989, column: 16, scope: !1053)
!1241 = !DILocation(line: 1992, column: 14, scope: !1053)
!1242 = !DILocation(line: 1993, column: 5, scope: !1054)
!1243 = !DILocation(line: 1994, column: 15, scope: !1060)
!1244 = !DILocation(line: 1994, column: 13, scope: !1054)
!1245 = !DILocation(line: 1997, column: 7, scope: !1059)
!1246 = !DILocation(line: 1998, column: 46, scope: !1059)
!1247 = !DILocation(line: 1998, column: 20, scope: !1059)
!1248 = !DILocation(line: 1999, column: 63, scope: !1059)
!1249 = !DILocation(line: 1999, column: 61, scope: !1059)
!1250 = !DILocation(line: 2000, column: 47, scope: !1059)
!1251 = !DILocation(line: 2000, column: 54, scope: !1059)
!1252 = !DILocation(line: 1999, column: 20, scope: !1059)
!1253 = !DILocation(line: 2002, column: 14, scope: !1059)
!1254 = !DILocation(line: 2003, column: 5, scope: !1060)
!1255 = !DILocation(line: 2005, column: 14, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 2004, column: 10)
!1257 = !DILocation(line: 2005, column: 7, scope: !1256)
!1258 = !DILocation(line: 0, scope: !1023)
!1259 = !DILocation(line: 2008, column: 1, scope: !1001)
!1260 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !231, file: !231, line: 75, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubprogram(name: "log", scope: !1262, file: !1262, line: 104, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!85, !85}
!1265 = distinct !DISubprogram(name: "hyperg_1F1_renorm_b0", scope: !2, file: !2, line: 416, type: !1266, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!33, !84, !84, !86}
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1276, !1277, !1278, !1281, !1282, !1283, !1286, !1287, !1288, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1269 = !DILocalVariable(name: "a", arg: 1, scope: !1265, file: !2, line: 416, type: !84)
!1270 = !DILocalVariable(name: "x", arg: 2, scope: !1265, file: !2, line: 416, type: !84)
!1271 = !DILocalVariable(name: "result", arg: 3, scope: !1265, file: !2, line: 416, type: !86)
!1272 = !DILocalVariable(name: "eta", scope: !1265, file: !2, line: 418, type: !85)
!1273 = !DILocalVariable(name: "root_eta", scope: !1274, file: !2, line: 420, type: !85)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 419, column: 17)
!1275 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 419, column: 6)
!1276 = !DILocalVariable(name: "I1_scaled", scope: !1274, file: !2, line: 421, type: !87)
!1277 = !DILocalVariable(name: "stat_I", scope: !1274, file: !2, line: 422, type: !33)
!1278 = !DILocalVariable(name: "corr1", scope: !1279, file: !2, line: 435, type: !84)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 428, column: 10)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 423, column: 8)
!1281 = !DILocalVariable(name: "lnr_val", scope: !1279, file: !2, line: 437, type: !84)
!1282 = !DILocalVariable(name: "lnr_err", scope: !1279, file: !2, line: 438, type: !84)
!1283 = !DILocalVariable(name: "root_eta", scope: !1284, file: !2, line: 449, type: !85)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 447, column: 8)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 442, column: 11)
!1286 = !DILocalVariable(name: "J1", scope: !1284, file: !2, line: 450, type: !87)
!1287 = !DILocalVariable(name: "stat_J", scope: !1284, file: !2, line: 451, type: !33)
!1288 = !DILocalVariable(name: "t1", scope: !1289, file: !2, line: 458, type: !84)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 457, column: 10)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 452, column: 8)
!1291 = !DILocalVariable(name: "t2", scope: !1289, file: !2, line: 459, type: !84)
!1292 = !DILocalVariable(name: "t3", scope: !1289, file: !2, line: 460, type: !84)
!1293 = !DILocalVariable(name: "t4", scope: !1289, file: !2, line: 461, type: !84)
!1294 = !DILocalVariable(name: "lnr_val", scope: !1289, file: !2, line: 462, type: !84)
!1295 = !DILocalVariable(name: "lnr_err", scope: !1289, file: !2, line: 463, type: !84)
!1296 = !DILocalVariable(name: "ex", scope: !1289, file: !2, line: 464, type: !87)
!1297 = !DILocalVariable(name: "stat_e", scope: !1289, file: !2, line: 465, type: !33)
!1298 = distinct !DIAssignID()
!1299 = !DILocation(line: 0, scope: !1274)
!1300 = distinct !DIAssignID()
!1301 = !DILocation(line: 0, scope: !1284)
!1302 = distinct !DIAssignID()
!1303 = !DILocation(line: 0, scope: !1289)
!1304 = !DILocation(line: 0, scope: !1265)
!1305 = !DILocation(line: 418, column: 17, scope: !1265)
!1306 = !DILocation(line: 419, column: 10, scope: !1275)
!1307 = !DILocation(line: 419, column: 6, scope: !1265)
!1308 = !DILocation(line: 420, column: 23, scope: !1274)
!1309 = !DILocation(line: 421, column: 5, scope: !1274)
!1310 = !DILocation(line: 422, column: 47, scope: !1274)
!1311 = !DILocation(line: 422, column: 18, scope: !1274)
!1312 = !DILocation(line: 423, column: 18, scope: !1280)
!1313 = !DILocation(line: 423, column: 22, scope: !1280)
!1314 = !DILocation(line: 423, column: 8, scope: !1274)
!1315 = !DILocation(line: 426, column: 14, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 423, column: 30)
!1317 = !DILocation(line: 425, column: 19, scope: !1316)
!1318 = !DILocation(line: 426, column: 7, scope: !1316)
!1319 = !DILocation(line: 435, column: 36, scope: !1279)
!1320 = !DILocation(line: 435, column: 49, scope: !1279)
!1321 = !DILocation(line: 435, column: 44, scope: !1279)
!1322 = !DILocation(line: 435, column: 39, scope: !1279)
!1323 = !DILocation(line: 435, column: 38, scope: !1279)
!1324 = !DILocation(line: 435, column: 58, scope: !1279)
!1325 = !DILocation(line: 435, column: 57, scope: !1279)
!1326 = !DILocation(line: 0, scope: !1279)
!1327 = !DILocation(line: 437, column: 33, scope: !1279)
!1328 = !DILocation(line: 437, column: 41, scope: !1279)
!1329 = !DILocation(line: 437, column: 53, scope: !1279)
!1330 = !DILocation(line: 437, column: 88, scope: !1279)
!1331 = !DILocation(line: 437, column: 74, scope: !1279)
!1332 = !DILocation(line: 438, column: 53, scope: !1279)
!1333 = !DILocation(line: 438, column: 52, scope: !1279)
!1334 = !DILocation(line: 438, column: 46, scope: !1279)
!1335 = !DILocation(line: 438, column: 86, scope: !1279)
!1336 = !DILocation(line: 438, column: 107, scope: !1279)
!1337 = !DILocation(line: 438, column: 96, scope: !1279)
!1338 = !DILocation(line: 438, column: 70, scope: !1279)
!1339 = !DILocation(line: 439, column: 14, scope: !1279)
!1340 = !DILocation(line: 0, scope: !1280)
!1341 = !DILocation(line: 441, column: 3, scope: !1275)
!1342 = !DILocation(line: 442, column: 15, scope: !1285)
!1343 = !DILocation(line: 442, column: 11, scope: !1275)
!1344 = !DILocation(line: 444, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 442, column: 23)
!1346 = !DILocation(line: 445, column: 5, scope: !1345)
!1347 = !DILocation(line: 449, column: 28, scope: !1284)
!1348 = !DILocation(line: 449, column: 23, scope: !1284)
!1349 = !DILocation(line: 450, column: 5, scope: !1284)
!1350 = !DILocation(line: 451, column: 40, scope: !1284)
!1351 = !DILocation(line: 451, column: 18, scope: !1284)
!1352 = !DILocation(line: 452, column: 11, scope: !1290)
!1353 = !DILocation(line: 452, column: 15, scope: !1290)
!1354 = !DILocation(line: 452, column: 8, scope: !1284)
!1355 = !DILocation(line: 455, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 452, column: 23)
!1357 = !DILocation(line: 455, column: 7, scope: !1356)
!1358 = !DILocation(line: 458, column: 28, scope: !1289)
!1359 = !DILocation(line: 459, column: 28, scope: !1289)
!1360 = !DILocation(line: 460, column: 25, scope: !1289)
!1361 = !DILocation(line: 461, column: 32, scope: !1289)
!1362 = !DILocation(line: 462, column: 38, scope: !1289)
!1363 = !DILocation(line: 462, column: 43, scope: !1289)
!1364 = !DILocation(line: 463, column: 52, scope: !1289)
!1365 = !DILocation(line: 463, column: 46, scope: !1289)
!1366 = !DILocation(line: 463, column: 78, scope: !1289)
!1367 = !DILocation(line: 463, column: 85, scope: !1289)
!1368 = !DILocation(line: 463, column: 81, scope: !1289)
!1369 = !DILocation(line: 463, column: 70, scope: !1289)
!1370 = !DILocation(line: 464, column: 7, scope: !1289)
!1371 = !DILocation(line: 465, column: 20, scope: !1289)
!1372 = !DILocation(line: 466, column: 25, scope: !1289)
!1373 = !DILocation(line: 466, column: 21, scope: !1289)
!1374 = !DILocation(line: 467, column: 25, scope: !1289)
!1375 = !DILocation(line: 469, column: 5, scope: !1290)
!1376 = !DILocation(line: 0, scope: !1290)
!1377 = !DILocation(line: 470, column: 3, scope: !1285)
!1378 = !DILocation(line: 0, scope: !1275)
!1379 = !DILocation(line: 472, column: 1, scope: !1265)
!1380 = !DISubprogram(name: "gsl_sf_multiply_err_e", scope: !1381, file: !1381, line: 52, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!1382 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_lag", scope: !2, file: !2, line: 1223, type: !427, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1406, !1409, !1410, !1411, !1412, !1413, !1415, !1416, !1417}
!1384 = !DILocalVariable(name: "a", arg: 1, scope: !1382, file: !2, line: 1223, type: !83)
!1385 = !DILocalVariable(name: "b", arg: 2, scope: !1382, file: !2, line: 1223, type: !84)
!1386 = !DILocalVariable(name: "x", arg: 3, scope: !1382, file: !2, line: 1223, type: !84)
!1387 = !DILocalVariable(name: "result", arg: 4, scope: !1382, file: !2, line: 1223, type: !86)
!1388 = !DILocalVariable(name: "n", scope: !1382, file: !2, line: 1225, type: !83)
!1389 = !DILocalVariable(name: "lag", scope: !1382, file: !2, line: 1227, type: !87)
!1390 = !DILocalVariable(name: "stat_l", scope: !1382, file: !2, line: 1228, type: !83)
!1391 = !DILocalVariable(name: "lnfact", scope: !1392, file: !2, line: 1230, type: !87)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 1229, column: 15)
!1393 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 1229, column: 6)
!1394 = !DILocalVariable(name: "lng1", scope: !1392, file: !2, line: 1231, type: !87)
!1395 = !DILocalVariable(name: "lng2", scope: !1392, file: !2, line: 1232, type: !87)
!1396 = !DILocalVariable(name: "s1", scope: !1392, file: !2, line: 1233, type: !85)
!1397 = !DILocalVariable(name: "s2", scope: !1392, file: !2, line: 1233, type: !85)
!1398 = !DILocalVariable(name: "stat_f", scope: !1392, file: !2, line: 1234, type: !83)
!1399 = !DILocalVariable(name: "stat_g1", scope: !1392, file: !2, line: 1235, type: !83)
!1400 = !DILocalVariable(name: "stat_g2", scope: !1392, file: !2, line: 1236, type: !83)
!1401 = !DILocalVariable(name: "lnpre_val", scope: !1392, file: !2, line: 1237, type: !84)
!1402 = !DILocalVariable(name: "lnpre_err", scope: !1392, file: !2, line: 1238, type: !84)
!1403 = !DILocalVariable(name: "stat_e", scope: !1392, file: !2, line: 1240, type: !83)
!1404 = !DILocalVariable(name: "lnbeta", scope: !1405, file: !2, line: 1246, type: !87)
!1405 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 1245, column: 8)
!1406 = !DILocalVariable(name: "ln_term_val", scope: !1407, file: !2, line: 1253, type: !84)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 1248, column: 32)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 1248, column: 8)
!1409 = !DILocalVariable(name: "ln_term_err", scope: !1407, file: !2, line: 1254, type: !84)
!1410 = !DILocalVariable(name: "beta", scope: !1407, file: !2, line: 1255, type: !87)
!1411 = !DILocalVariable(name: "stat_b", scope: !1407, file: !2, line: 1256, type: !33)
!1412 = !DILocalVariable(name: "stat_e", scope: !1407, file: !2, line: 1257, type: !33)
!1413 = !DILocalVariable(name: "ln_n", scope: !1414, file: !2, line: 1268, type: !84)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 1264, column: 10)
!1415 = !DILocalVariable(name: "ln_term_val", scope: !1414, file: !2, line: 1269, type: !84)
!1416 = !DILocalVariable(name: "ln_term_err", scope: !1414, file: !2, line: 1270, type: !84)
!1417 = !DILocalVariable(name: "stat_e", scope: !1414, file: !2, line: 1271, type: !33)
!1418 = distinct !DIAssignID()
!1419 = !DILocation(line: 0, scope: !1382)
!1420 = distinct !DIAssignID()
!1421 = !DILocation(line: 0, scope: !1392)
!1422 = distinct !DIAssignID()
!1423 = distinct !DIAssignID()
!1424 = distinct !DIAssignID()
!1425 = distinct !DIAssignID()
!1426 = distinct !DIAssignID()
!1427 = !DILocation(line: 0, scope: !1405)
!1428 = distinct !DIAssignID()
!1429 = !DILocation(line: 0, scope: !1407)
!1430 = !DILocation(line: 1225, column: 17, scope: !1382)
!1431 = !DILocation(line: 1227, column: 3, scope: !1382)
!1432 = !DILocation(line: 1228, column: 22, scope: !1382)
!1433 = !DILocation(line: 1229, column: 8, scope: !1393)
!1434 = !DILocation(line: 1229, column: 6, scope: !1382)
!1435 = !DILocation(line: 1230, column: 5, scope: !1392)
!1436 = !DILocation(line: 1231, column: 5, scope: !1392)
!1437 = !DILocation(line: 1232, column: 5, scope: !1392)
!1438 = !DILocation(line: 1233, column: 5, scope: !1392)
!1439 = !DILocation(line: 1234, column: 25, scope: !1392)
!1440 = !DILocation(line: 1235, column: 50, scope: !1392)
!1441 = !DILocation(line: 1235, column: 25, scope: !1392)
!1442 = !DILocation(line: 1236, column: 25, scope: !1392)
!1443 = !DILocation(line: 1237, column: 37, scope: !1392)
!1444 = !DILocation(line: 1237, column: 49, scope: !1392)
!1445 = !DILocation(line: 1237, column: 60, scope: !1392)
!1446 = !DILocation(line: 1237, column: 41, scope: !1392)
!1447 = !DILocation(line: 1238, column: 37, scope: !1392)
!1448 = !DILocation(line: 1238, column: 48, scope: !1392)
!1449 = !DILocation(line: 1238, column: 59, scope: !1392)
!1450 = !DILocation(line: 1239, column: 33, scope: !1392)
!1451 = !DILocation(line: 1239, column: 31, scope: !1392)
!1452 = !DILocation(line: 1241, column: 49, scope: !1392)
!1453 = !DILocation(line: 1241, column: 52, scope: !1392)
!1454 = !DILocation(line: 1241, column: 51, scope: !1392)
!1455 = !DILocation(line: 1241, column: 59, scope: !1392)
!1456 = !DILocation(line: 1241, column: 54, scope: !1392)
!1457 = !DILocation(line: 1241, column: 68, scope: !1392)
!1458 = !DILocation(line: 1240, column: 24, scope: !1392)
!1459 = !DILocation(line: 1243, column: 12, scope: !1392)
!1460 = !DILocation(line: 1244, column: 3, scope: !1393)
!1461 = !DILocation(line: 1246, column: 5, scope: !1405)
!1462 = !DILocation(line: 1247, column: 24, scope: !1405)
!1463 = !DILocation(line: 1247, column: 5, scope: !1405)
!1464 = !DILocation(line: 1248, column: 20, scope: !1408)
!1465 = !DILocation(line: 1248, column: 8, scope: !1408)
!1466 = !DILocation(line: 1248, column: 25, scope: !1408)
!1467 = !DILocation(line: 1248, column: 8, scope: !1405)
!1468 = !DILocation(line: 1253, column: 42, scope: !1407)
!1469 = !DILocation(line: 1254, column: 56, scope: !1407)
!1470 = !DILocation(line: 1255, column: 7, scope: !1407)
!1471 = !DILocation(line: 1256, column: 20, scope: !1407)
!1472 = !DILocation(line: 1258, column: 49, scope: !1407)
!1473 = !DILocation(line: 1258, column: 58, scope: !1407)
!1474 = !DILocation(line: 1257, column: 20, scope: !1407)
!1475 = !DILocation(line: 1260, column: 27, scope: !1407)
!1476 = !DILocation(line: 1260, column: 30, scope: !1407)
!1477 = !DILocation(line: 1260, column: 19, scope: !1407)
!1478 = !DILocation(line: 1261, column: 15, scope: !1407)
!1479 = !DILocation(line: 1261, column: 19, scope: !1407)
!1480 = !DILocation(line: 1262, column: 14, scope: !1407)
!1481 = !DILocation(line: 1263, column: 5, scope: !1408)
!1482 = !DILocation(line: 1269, column: 41, scope: !1414)
!1483 = !DILocation(line: 0, scope: !1414)
!1484 = !DILocation(line: 1270, column: 41, scope: !1414)
!1485 = !DILocation(line: 1270, column: 71, scope: !1414)
!1486 = !DILocation(line: 1270, column: 69, scope: !1414)
!1487 = !DILocation(line: 1272, column: 49, scope: !1414)
!1488 = !DILocation(line: 1272, column: 58, scope: !1414)
!1489 = !DILocation(line: 1271, column: 20, scope: !1414)
!1490 = !DILocation(line: 1274, column: 14, scope: !1414)
!1491 = !DILocation(line: 0, scope: !1408)
!1492 = !DILocation(line: 1276, column: 3, scope: !1393)
!1493 = !DILocation(line: 0, scope: !1393)
!1494 = !DILocation(line: 1277, column: 1, scope: !1382)
!1495 = distinct !DISubprogram(name: "hyperg_1F1_small_a_bgt0", scope: !2, file: !2, line: 716, type: !240, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1497 = !DILocalVariable(name: "a", arg: 1, scope: !1495, file: !2, line: 716, type: !84)
!1498 = !DILocalVariable(name: "b", arg: 2, scope: !1495, file: !2, line: 716, type: !84)
!1499 = !DILocalVariable(name: "x", arg: 3, scope: !1495, file: !2, line: 716, type: !84)
!1500 = !DILocalVariable(name: "result", arg: 4, scope: !1495, file: !2, line: 716, type: !86)
!1501 = !DILocalVariable(name: "bma", scope: !1495, file: !2, line: 718, type: !84)
!1502 = !DILocalVariable(name: "oma", scope: !1495, file: !2, line: 719, type: !84)
!1503 = !DILocalVariable(name: "ap1mb", scope: !1495, file: !2, line: 720, type: !84)
!1504 = !DILocalVariable(name: "abs_bma", scope: !1495, file: !2, line: 721, type: !84)
!1505 = !DILocalVariable(name: "abs_oma", scope: !1495, file: !2, line: 722, type: !84)
!1506 = !DILocalVariable(name: "abs_ap1mb", scope: !1495, file: !2, line: 723, type: !84)
!1507 = !DILocalVariable(name: "ax", scope: !1495, file: !2, line: 725, type: !84)
!1508 = !DILocalVariable(name: "b_del", scope: !1509, file: !2, line: 752, type: !84)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 748, column: 26)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 748, column: 13)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 745, column: 8)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 744, column: 20)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 744, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 741, column: 11)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 735, column: 11)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 732, column: 11)
!1517 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 727, column: 6)
!1518 = !DILocalVariable(name: "bp", scope: !1509, file: !2, line: 753, type: !85)
!1519 = !DILocalVariable(name: "r_Mbp1", scope: !1509, file: !2, line: 754, type: !87)
!1520 = !DILocalVariable(name: "r_Mb", scope: !1509, file: !2, line: 755, type: !87)
!1521 = !DILocalVariable(name: "Mbp1", scope: !1509, file: !2, line: 756, type: !85)
!1522 = !DILocalVariable(name: "Mb", scope: !1509, file: !2, line: 757, type: !85)
!1523 = !DILocalVariable(name: "Mbm1", scope: !1509, file: !2, line: 758, type: !85)
!1524 = !DILocalVariable(name: "stat_0", scope: !1509, file: !2, line: 759, type: !33)
!1525 = !DILocalVariable(name: "stat_1", scope: !1509, file: !2, line: 760, type: !33)
!1526 = !DILocalVariable(name: "err_rat", scope: !1509, file: !2, line: 761, type: !84)
!1527 = distinct !DIAssignID()
!1528 = distinct !DIAssignID()
!1529 = !DILocation(line: 0, scope: !1509)
!1530 = distinct !DIAssignID()
!1531 = !DILocation(line: 0, scope: !1495)
!1532 = !DILocation(line: 719, column: 25, scope: !1495)
!1533 = !DILocation(line: 720, column: 27, scope: !1495)
!1534 = !DILocation(line: 720, column: 29, scope: !1495)
!1535 = !DILocation(line: 723, column: 28, scope: !1495)
!1536 = !DILocation(line: 725, column: 21, scope: !1495)
!1537 = !DILocation(line: 727, column: 8, scope: !1517)
!1538 = !DILocation(line: 727, column: 6, scope: !1495)
!1539 = !DILocation(line: 728, column: 17, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 727, column: 16)
!1541 = !DILocation(line: 729, column: 13, scope: !1540)
!1542 = !DILocation(line: 729, column: 17, scope: !1540)
!1543 = !DILocation(line: 730, column: 5, scope: !1540)
!1544 = !DILocation(line: 732, column: 13, scope: !1516)
!1545 = !DILocation(line: 732, column: 20, scope: !1516)
!1546 = !DILocalVariable(name: "M", scope: !1547, file: !2, line: 375, type: !87)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 367, column: 26)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 367, column: 13)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 364, column: 8)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 363, column: 20)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 363, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 360, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 357, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 354, column: 11)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 351, column: 6)
!1556 = distinct !DISubprogram(name: "hyperg_1F1_1", scope: !2, file: !2, line: 346, type: !1266, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1546, !1565, !1566}
!1558 = !DILocalVariable(name: "b", arg: 1, scope: !1556, file: !2, line: 346, type: !84)
!1559 = !DILocalVariable(name: "x", arg: 2, scope: !1556, file: !2, line: 346, type: !84)
!1560 = !DILocalVariable(name: "result", arg: 3, scope: !1556, file: !2, line: 346, type: !86)
!1561 = !DILocalVariable(name: "ax", scope: !1556, file: !2, line: 348, type: !85)
!1562 = !DILocalVariable(name: "ib", scope: !1556, file: !2, line: 349, type: !85)
!1563 = !DILocalVariable(name: "off", scope: !1547, file: !2, line: 373, type: !84)
!1564 = !DILocalVariable(name: "bp", scope: !1547, file: !2, line: 374, type: !85)
!1565 = !DILocalVariable(name: "stat_s", scope: !1547, file: !2, line: 376, type: !33)
!1566 = !DILocalVariable(name: "err_rat", scope: !1547, file: !2, line: 377, type: !84)
!1567 = !DILocation(line: 0, scope: !1547, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 733, column: 12, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 732, column: 33)
!1570 = !DILocation(line: 0, scope: !1556, inlinedAt: !1568)
!1571 = !DILocation(line: 349, column: 15, scope: !1556, inlinedAt: !1568)
!1572 = !DILocation(line: 351, column: 8, scope: !1555, inlinedAt: !1568)
!1573 = !DILocation(line: 351, column: 6, scope: !1556, inlinedAt: !1568)
!1574 = !DILocation(line: 352, column: 5, scope: !1575, inlinedAt: !1568)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 352, column: 5)
!1576 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 351, column: 15)
!1577 = !DILocation(line: 352, column: 5, scope: !1578, inlinedAt: !1568)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 352, column: 5)
!1579 = !DILocation(line: 354, column: 13, scope: !1554, inlinedAt: !1568)
!1580 = !DILocation(line: 354, column: 11, scope: !1555, inlinedAt: !1568)
!1581 = !DILocation(line: 355, column: 12, scope: !1582, inlinedAt: !1568)
!1582 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 354, column: 21)
!1583 = !DILocation(line: 355, column: 5, scope: !1582, inlinedAt: !1568)
!1584 = !DILocation(line: 357, column: 19, scope: !1553, inlinedAt: !1568)
!1585 = !DILocation(line: 357, column: 13, scope: !1553, inlinedAt: !1568)
!1586 = !DILocation(line: 357, column: 11, scope: !1554, inlinedAt: !1568)
!1587 = !DILocalVariable(name: "n", scope: !1588, file: !2, line: 300, type: !85)
!1588 = distinct !DISubprogram(name: "hyperg_1F1_1_series", scope: !2, file: !2, line: 295, type: !1589, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1590)
!1589 = !DISubroutineType(cc: DW_CC_nocall, types: !1267)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1587}
!1591 = !DILocalVariable(name: "b", arg: 1, scope: !1588, file: !2, line: 295, type: !84)
!1592 = !DILocalVariable(name: "x", arg: 2, scope: !1588, file: !2, line: 295, type: !84)
!1593 = !DILocalVariable(name: "result", arg: 3, scope: !1588, file: !2, line: 295, type: !86)
!1594 = !DILocalVariable(name: "sum_val", scope: !1588, file: !2, line: 297, type: !85)
!1595 = !DILocalVariable(name: "sum_err", scope: !1588, file: !2, line: 298, type: !85)
!1596 = !DILocalVariable(name: "term", scope: !1588, file: !2, line: 299, type: !85)
!1597 = !DILocation(line: 0, scope: !1588, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 358, column: 12, scope: !1599, inlinedAt: !1568)
!1599 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 357, column: 24)
!1600 = !DILocation(line: 302, column: 19, scope: !1601, inlinedAt: !1598)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 301, column: 52)
!1602 = !DILocation(line: 302, column: 14, scope: !1601, inlinedAt: !1598)
!1603 = !DILocation(line: 302, column: 10, scope: !1601, inlinedAt: !1598)
!1604 = !DILocation(line: 304, column: 36, scope: !1601, inlinedAt: !1598)
!1605 = !DILocation(line: 304, column: 35, scope: !1601, inlinedAt: !1598)
!1606 = !DILocation(line: 304, column: 65, scope: !1601, inlinedAt: !1598)
!1607 = !DILocation(line: 304, column: 64, scope: !1601, inlinedAt: !1598)
!1608 = !DILocation(line: 304, column: 13, scope: !1601, inlinedAt: !1598)
!1609 = !DILocation(line: 305, column: 7, scope: !1601, inlinedAt: !1598)
!1610 = !DILocation(line: 301, column: 18, scope: !1588, inlinedAt: !1598)
!1611 = !DILocation(line: 301, column: 9, scope: !1588, inlinedAt: !1598)
!1612 = !DILocation(line: 301, column: 28, scope: !1588, inlinedAt: !1598)
!1613 = !DILocation(line: 301, column: 3, scope: !1588, inlinedAt: !1598)
!1614 = distinct !{!1614, !1613, !1615, !481}
!1615 = !DILocation(line: 306, column: 3, scope: !1588, inlinedAt: !1598)
!1616 = !DILocation(line: 307, column: 16, scope: !1588, inlinedAt: !1598)
!1617 = !DILocation(line: 308, column: 11, scope: !1588, inlinedAt: !1598)
!1618 = !DILocation(line: 309, column: 22, scope: !1588, inlinedAt: !1598)
!1619 = !DILocation(line: 309, column: 15, scope: !1588, inlinedAt: !1598)
!1620 = !DILocation(line: 358, column: 5, scope: !1599, inlinedAt: !1568)
!1621 = !DILocation(line: 360, column: 11, scope: !1552, inlinedAt: !1568)
!1622 = !DILocation(line: 360, column: 24, scope: !1552, inlinedAt: !1568)
!1623 = !DILocation(line: 360, column: 45, scope: !1552, inlinedAt: !1568)
!1624 = !DILocation(line: 361, column: 29, scope: !1625, inlinedAt: !1568)
!1625 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 360, column: 62)
!1626 = !DILocalVariable(name: "b", arg: 1, scope: !1627, file: !2, line: 319, type: !83)
!1627 = distinct !DISubprogram(name: "hyperg_1F1_1_int", scope: !2, file: !2, line: 319, type: !1628, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!33, !83, !84, !86}
!1630 = !{!1626, !1631, !1632}
!1631 = !DILocalVariable(name: "x", arg: 2, scope: !1627, file: !2, line: 319, type: !84)
!1632 = !DILocalVariable(name: "result", arg: 3, scope: !1627, file: !2, line: 319, type: !86)
!1633 = !DILocation(line: 0, scope: !1627, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 361, column: 12, scope: !1625, inlinedAt: !1568)
!1635 = !DILocation(line: 321, column: 8, scope: !1636, inlinedAt: !1634)
!1636 = distinct !DILexicalBlock(scope: !1627, file: !2, line: 321, column: 6)
!1637 = !DILocation(line: 321, column: 6, scope: !1627, inlinedAt: !1634)
!1638 = !DILocation(line: 322, column: 5, scope: !1639, inlinedAt: !1634)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 322, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 321, column: 13)
!1641 = !DILocation(line: 322, column: 5, scope: !1642, inlinedAt: !1634)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 322, column: 5)
!1643 = !DILocation(line: 324, column: 11, scope: !1636, inlinedAt: !1634)
!1644 = !DILocation(line: 325, column: 12, scope: !1645, inlinedAt: !1634)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 324, column: 19)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 324, column: 11)
!1647 = !DILocation(line: 325, column: 5, scope: !1645, inlinedAt: !1634)
!1648 = !DILocation(line: 328, column: 12, scope: !1649, inlinedAt: !1634)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 327, column: 19)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 327, column: 11)
!1651 = !DILocation(line: 328, column: 5, scope: !1649, inlinedAt: !1634)
!1652 = !DILocation(line: 331, column: 12, scope: !1653, inlinedAt: !1634)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 330, column: 19)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 330, column: 11)
!1655 = !DILocation(line: 331, column: 5, scope: !1653, inlinedAt: !1634)
!1656 = !DILocation(line: 334, column: 31, scope: !1657, inlinedAt: !1634)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 333, column: 8)
!1658 = !DILocation(line: 334, column: 12, scope: !1657, inlinedAt: !1634)
!1659 = !DILocation(line: 334, column: 5, scope: !1657, inlinedAt: !1634)
!1660 = !DILocation(line: 363, column: 13, scope: !1551, inlinedAt: !1568)
!1661 = !DILocation(line: 363, column: 11, scope: !1552, inlinedAt: !1568)
!1662 = !DILocation(line: 364, column: 10, scope: !1549, inlinedAt: !1568)
!1663 = !DILocation(line: 364, column: 18, scope: !1549, inlinedAt: !1568)
!1664 = !DILocation(line: 365, column: 14, scope: !1665, inlinedAt: !1568)
!1665 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 364, column: 33)
!1666 = !DILocation(line: 365, column: 7, scope: !1665, inlinedAt: !1568)
!1667 = !DILocation(line: 367, column: 15, scope: !1548, inlinedAt: !1568)
!1668 = !DILocation(line: 367, column: 13, scope: !1549, inlinedAt: !1568)
!1669 = !DILocation(line: 373, column: 34, scope: !1547, inlinedAt: !1568)
!1670 = !DILocation(line: 373, column: 26, scope: !1547, inlinedAt: !1568)
!1671 = !DILocation(line: 374, column: 21, scope: !1547, inlinedAt: !1568)
!1672 = !DILocation(line: 375, column: 7, scope: !1547, inlinedAt: !1568)
!1673 = !DILocation(line: 376, column: 20, scope: !1547, inlinedAt: !1568)
!1674 = !DILocation(line: 377, column: 32, scope: !1547, inlinedAt: !1568)
!1675 = !DILocation(line: 377, column: 45, scope: !1547, inlinedAt: !1568)
!1676 = !DILocation(line: 377, column: 38, scope: !1547, inlinedAt: !1568)
!1677 = !DILocation(line: 377, column: 36, scope: !1547, inlinedAt: !1568)
!1678 = !DILocation(line: 378, column: 16, scope: !1547, inlinedAt: !1568)
!1679 = !DILocation(line: 378, column: 7, scope: !1547, inlinedAt: !1568)
!1680 = !DILocation(line: 381, column: 25, scope: !1681, inlinedAt: !1568)
!1681 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 378, column: 25)
!1682 = !DILocation(line: 381, column: 29, scope: !1681, inlinedAt: !1568)
!1683 = distinct !DIAssignID()
!1684 = distinct !{!1684, !1679, !1685, !481}
!1685 = !DILocation(line: 382, column: 7, scope: !1547, inlinedAt: !1568)
!1686 = !DILocation(line: 384, column: 32, scope: !1547, inlinedAt: !1568)
!1687 = !DILocation(line: 381, scope: !1681, inlinedAt: !1568)
!1688 = !DILocation(line: 383, column: 20, scope: !1547, inlinedAt: !1568)
!1689 = !DILocation(line: 384, column: 30, scope: !1547, inlinedAt: !1568)
!1690 = !DILocation(line: 384, column: 15, scope: !1547, inlinedAt: !1568)
!1691 = !DILocation(line: 385, column: 47, scope: !1547, inlinedAt: !1568)
!1692 = !DILocation(line: 385, column: 44, scope: !1547, inlinedAt: !1568)
!1693 = !DILocation(line: 385, column: 62, scope: !1547, inlinedAt: !1568)
!1694 = !DILocation(line: 385, column: 19, scope: !1547, inlinedAt: !1568)
!1695 = !DILocation(line: 387, column: 5, scope: !1548, inlinedAt: !1568)
!1696 = !DILocation(line: 387, column: 26, scope: !1697, inlinedAt: !1568)
!1697 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 387, column: 16)
!1698 = !DILocation(line: 387, column: 24, scope: !1697, inlinedAt: !1568)
!1699 = !DILocation(line: 387, column: 34, scope: !1697, inlinedAt: !1568)
!1700 = !DILocation(line: 387, column: 47, scope: !1697, inlinedAt: !1568)
!1701 = !DILocation(line: 387, column: 63, scope: !1697, inlinedAt: !1568)
!1702 = !DILocation(line: 387, column: 61, scope: !1697, inlinedAt: !1568)
!1703 = !DILocation(line: 387, column: 45, scope: !1697, inlinedAt: !1568)
!1704 = !DILocation(line: 387, column: 16, scope: !1548, inlinedAt: !1568)
!1705 = !DILocation(line: 388, column: 14, scope: !1706, inlinedAt: !1568)
!1706 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 387, column: 74)
!1707 = !DILocation(line: 388, column: 7, scope: !1706, inlinedAt: !1568)
!1708 = !DILocation(line: 389, column: 24, scope: !1709, inlinedAt: !1568)
!1709 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 389, column: 16)
!1710 = !DILocation(line: 389, column: 16, scope: !1697, inlinedAt: !1568)
!1711 = !DILocation(line: 390, column: 14, scope: !1712, inlinedAt: !1568)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 389, column: 35)
!1713 = !DILocation(line: 390, column: 7, scope: !1712, inlinedAt: !1568)
!1714 = !DILocation(line: 392, column: 14, scope: !1715, inlinedAt: !1568)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 391, column: 12)
!1716 = !DILocation(line: 392, column: 7, scope: !1715, inlinedAt: !1568)
!1717 = !DILocation(line: 398, column: 11, scope: !1718, inlinedAt: !1568)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 398, column: 8)
!1719 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 395, column: 8)
!1720 = !DILocation(line: 398, column: 18, scope: !1718, inlinedAt: !1568)
!1721 = !DILocation(line: 399, column: 14, scope: !1722, inlinedAt: !1568)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 398, column: 31)
!1723 = !DILocation(line: 399, column: 7, scope: !1722, inlinedAt: !1568)
!1724 = !DILocation(line: 401, column: 16, scope: !1725, inlinedAt: !1568)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 401, column: 13)
!1726 = !DILocation(line: 401, column: 25, scope: !1725, inlinedAt: !1568)
!1727 = !DILocation(line: 401, column: 40, scope: !1725, inlinedAt: !1568)
!1728 = !DILocation(line: 0, scope: !161, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 401, column: 28, scope: !1725, inlinedAt: !1568)
!1730 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !1729)
!1731 = !DILocation(line: 401, column: 63, scope: !1725, inlinedAt: !1568)
!1732 = !DILocation(line: 401, column: 57, scope: !1725, inlinedAt: !1568)
!1733 = !DILocation(line: 401, column: 13, scope: !1718, inlinedAt: !1568)
!1734 = !DILocation(line: 402, column: 14, scope: !1735, inlinedAt: !1568)
!1735 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 401, column: 68)
!1736 = !DILocation(line: 402, column: 7, scope: !1735, inlinedAt: !1568)
!1737 = !DILocation(line: 405, column: 14, scope: !1738, inlinedAt: !1568)
!1738 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 404, column: 10)
!1739 = !DILocation(line: 405, column: 7, scope: !1738, inlinedAt: !1568)
!1740 = !DILocation(line: 735, column: 13, scope: !1515)
!1741 = !DILocation(line: 735, column: 11, scope: !1516)
!1742 = !DILocation(line: 736, column: 27, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 735, column: 22)
!1744 = !DILocation(line: 736, column: 30, scope: !1743)
!1745 = !DILocation(line: 736, column: 18, scope: !1743)
!1746 = !DILocation(line: 737, column: 45, scope: !1743)
!1747 = !DILocation(line: 737, column: 36, scope: !1743)
!1748 = !DILocation(line: 737, column: 13, scope: !1743)
!1749 = !DILocation(line: 738, column: 44, scope: !1743)
!1750 = !DILocation(line: 738, column: 42, scope: !1743)
!1751 = !DILocation(line: 738, column: 17, scope: !1743)
!1752 = !DILocation(line: 739, column: 5, scope: !1743)
!1753 = !DILocation(line: 741, column: 19, scope: !1514)
!1754 = !DILocation(line: 741, column: 13, scope: !1514)
!1755 = !DILocation(line: 741, column: 11, scope: !1515)
!1756 = !DILocation(line: 742, column: 12, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 741, column: 24)
!1758 = !DILocation(line: 742, column: 5, scope: !1757)
!1759 = !DILocation(line: 744, column: 13, scope: !1513)
!1760 = !DILocation(line: 744, column: 11, scope: !1514)
!1761 = !DILocation(line: 745, column: 10, scope: !1511)
!1762 = !DILocation(line: 745, column: 18, scope: !1511)
!1763 = !DILocation(line: 745, column: 28, scope: !1511)
!1764 = !DILocation(line: 745, column: 42, scope: !1511)
!1765 = !DILocation(line: 745, column: 37, scope: !1511)
!1766 = !DILocation(line: 745, column: 8, scope: !1512)
!1767 = !DILocation(line: 746, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 745, column: 46)
!1769 = !DILocation(line: 746, column: 7, scope: !1768)
!1770 = !DILocation(line: 748, column: 15, scope: !1510)
!1771 = !DILocation(line: 748, column: 13, scope: !1511)
!1772 = !DILocation(line: 752, column: 36, scope: !1509)
!1773 = !DILocation(line: 752, column: 28, scope: !1509)
!1774 = !DILocation(line: 753, column: 21, scope: !1509)
!1775 = !DILocation(line: 754, column: 7, scope: !1509)
!1776 = !DILocation(line: 755, column: 7, scope: !1509)
!1777 = !DILocation(line: 759, column: 20, scope: !1509)
!1778 = !DILocation(line: 760, column: 20, scope: !1509)
!1779 = !DILocation(line: 761, column: 42, scope: !1509)
!1780 = !DILocation(line: 761, column: 53, scope: !1509)
!1781 = !DILocation(line: 761, column: 45, scope: !1509)
!1782 = !DILocation(line: 761, column: 30, scope: !1509)
!1783 = !DILocation(line: 761, column: 70, scope: !1509)
!1784 = !DILocation(line: 761, column: 79, scope: !1509)
!1785 = !DILocation(line: 761, column: 73, scope: !1509)
!1786 = !DILocation(line: 761, column: 60, scope: !1509)
!1787 = !DILocation(line: 764, column: 16, scope: !1509)
!1788 = !DILocation(line: 764, column: 7, scope: !1509)
!1789 = !DILocation(line: 766, column: 22, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 764, column: 25)
!1791 = !DILocation(line: 766, column: 27, scope: !1790)
!1792 = !DILocation(line: 766, column: 34, scope: !1790)
!1793 = !DILocation(line: 766, column: 41, scope: !1790)
!1794 = !DILocation(line: 766, column: 44, scope: !1790)
!1795 = !DILocation(line: 766, column: 54, scope: !1790)
!1796 = !DILocation(line: 766, column: 50, scope: !1790)
!1797 = distinct !{!1797, !1788, !1798, !481}
!1798 = !DILocation(line: 770, column: 7, scope: !1509)
!1799 = !DILocation(line: 771, column: 20, scope: !1509)
!1800 = !DILocation(line: 772, column: 33, scope: !1509)
!1801 = !DILocation(line: 772, column: 30, scope: !1509)
!1802 = !DILocation(line: 772, column: 52, scope: !1509)
!1803 = !DILocation(line: 772, column: 50, scope: !1509)
!1804 = !DILocation(line: 772, column: 15, scope: !1509)
!1805 = !DILocation(line: 773, column: 44, scope: !1509)
!1806 = !DILocation(line: 773, column: 19, scope: !1509)
!1807 = !DILocation(line: 774, column: 14, scope: !1509)
!1808 = !DILocation(line: 775, column: 5, scope: !1510)
!1809 = !DILocation(line: 776, column: 24, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 776, column: 14)
!1811 = !DILocation(line: 776, column: 22, scope: !1810)
!1812 = !DILocation(line: 776, column: 32, scope: !1810)
!1813 = !DILocation(line: 776, column: 41, scope: !1810)
!1814 = !DILocation(line: 776, column: 35, scope: !1810)
!1815 = !DILocation(line: 776, column: 47, scope: !1810)
!1816 = !DILocation(line: 776, column: 63, scope: !1810)
!1817 = !DILocation(line: 776, column: 61, scope: !1810)
!1818 = !DILocation(line: 776, column: 45, scope: !1810)
!1819 = !DILocation(line: 776, column: 14, scope: !1510)
!1820 = !DILocation(line: 777, column: 14, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 776, column: 74)
!1822 = !DILocation(line: 777, column: 7, scope: !1821)
!1823 = !DILocation(line: 779, column: 14, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 778, column: 12)
!1825 = !DILocation(line: 779, column: 7, scope: !1824)
!1826 = !DILocation(line: 785, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 785, column: 8)
!1828 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 782, column: 8)
!1829 = !DILocation(line: 785, column: 18, scope: !1827)
!1830 = !DILocation(line: 786, column: 14, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 785, column: 31)
!1832 = !DILocation(line: 786, column: 7, scope: !1831)
!1833 = !DILocation(line: 788, column: 16, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 788, column: 13)
!1835 = !DILocation(line: 788, column: 25, scope: !1834)
!1836 = !DILocation(line: 788, column: 28, scope: !1834)
!1837 = !DILocation(line: 788, column: 57, scope: !1834)
!1838 = !DILocation(line: 788, column: 51, scope: !1834)
!1839 = !DILocation(line: 788, column: 13, scope: !1827)
!1840 = !DILocation(line: 789, column: 14, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 788, column: 62)
!1842 = !DILocation(line: 789, column: 7, scope: !1841)
!1843 = !DILocation(line: 792, column: 14, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 791, column: 10)
!1845 = !DILocation(line: 792, column: 7, scope: !1844)
!1846 = !DILocation(line: 0, scope: !1517)
!1847 = !DILocation(line: 795, column: 1, scope: !1495)
!1848 = distinct !DISubprogram(name: "hyperg_1F1_ab_pos", scope: !2, file: !2, line: 1424, type: !240, scopeLine: 1427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1849)
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1954, !1955, !1956, !1957, !1958, !1959}
!1850 = !DILocalVariable(name: "a", arg: 1, scope: !1848, file: !2, line: 1424, type: !84)
!1851 = !DILocalVariable(name: "b", arg: 2, scope: !1848, file: !2, line: 1424, type: !84)
!1852 = !DILocalVariable(name: "x", arg: 3, scope: !1848, file: !2, line: 1425, type: !84)
!1853 = !DILocalVariable(name: "result", arg: 4, scope: !1848, file: !2, line: 1426, type: !86)
!1854 = !DILocalVariable(name: "ax", scope: !1848, file: !2, line: 1428, type: !84)
!1855 = !DILocalVariable(name: "rap", scope: !1856, file: !2, line: 1461, type: !85)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 1456, column: 34)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 1456, column: 11)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 1450, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 1443, column: 14)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 1436, column: 14)
!1861 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 1430, column: 9)
!1862 = !DILocalVariable(name: "stat_CF1", scope: !1856, file: !2, line: 1462, type: !33)
!1863 = !DILocalVariable(name: "ra", scope: !1856, file: !2, line: 1463, type: !85)
!1864 = !DILocalVariable(name: "Ma", scope: !1856, file: !2, line: 1465, type: !85)
!1865 = !DILocalVariable(name: "Map1", scope: !1856, file: !2, line: 1466, type: !85)
!1866 = !DILocalVariable(name: "Mnp1", scope: !1856, file: !2, line: 1467, type: !85)
!1867 = !DILocalVariable(name: "Mn", scope: !1856, file: !2, line: 1468, type: !85)
!1868 = !DILocalVariable(name: "Mnm1", scope: !1856, file: !2, line: 1469, type: !85)
!1869 = !DILocalVariable(name: "Mn_true", scope: !1856, file: !2, line: 1470, type: !87)
!1870 = !DILocalVariable(name: "stat_Mt", scope: !1856, file: !2, line: 1471, type: !33)
!1871 = !DILocalVariable(name: "n", scope: !1856, file: !2, line: 1472, type: !85)
!1872 = !DILocalVariable(name: "Mn_true", scope: !1873, file: !2, line: 1493, type: !87)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 1486, column: 42)
!1874 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 1486, column: 11)
!1875 = !DILocalVariable(name: "stat_Mt", scope: !1873, file: !2, line: 1494, type: !33)
!1876 = !DILocalVariable(name: "rap", scope: !1873, file: !2, line: 1495, type: !85)
!1877 = !DILocalVariable(name: "stat_CF1", scope: !1873, file: !2, line: 1496, type: !33)
!1878 = !DILocalVariable(name: "ra", scope: !1873, file: !2, line: 1497, type: !85)
!1879 = !DILocalVariable(name: "Ma", scope: !1873, file: !2, line: 1498, type: !85)
!1880 = !DILocalVariable(name: "Mnm1", scope: !1873, file: !2, line: 1499, type: !85)
!1881 = !DILocalVariable(name: "Mn", scope: !1873, file: !2, line: 1500, type: !85)
!1882 = !DILocalVariable(name: "Mnp1", scope: !1873, file: !2, line: 1501, type: !85)
!1883 = !DILocalVariable(name: "n", scope: !1873, file: !2, line: 1502, type: !85)
!1884 = !DILocalVariable(name: "N", scope: !1885, file: !2, line: 1519, type: !85)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 1516, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 1516, column: 8)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 1514, column: 21)
!1888 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 1514, column: 11)
!1889 = !DILocalVariable(name: "eps", scope: !1885, file: !2, line: 1520, type: !85)
!1890 = !DILocalVariable(name: "r_M0", scope: !1885, file: !2, line: 1521, type: !87)
!1891 = !DILocalVariable(name: "r_M1", scope: !1885, file: !2, line: 1522, type: !87)
!1892 = !DILocalVariable(name: "stat_0", scope: !1885, file: !2, line: 1523, type: !33)
!1893 = !DILocalVariable(name: "stat_1", scope: !1885, file: !2, line: 1524, type: !33)
!1894 = !DILocalVariable(name: "M0", scope: !1885, file: !2, line: 1525, type: !85)
!1895 = !DILocalVariable(name: "M1", scope: !1885, file: !2, line: 1526, type: !85)
!1896 = !DILocalVariable(name: "Mam1", scope: !1885, file: !2, line: 1528, type: !85)
!1897 = !DILocalVariable(name: "Ma", scope: !1885, file: !2, line: 1529, type: !85)
!1898 = !DILocalVariable(name: "Map1", scope: !1885, file: !2, line: 1530, type: !85)
!1899 = !DILocalVariable(name: "ap", scope: !1885, file: !2, line: 1531, type: !85)
!1900 = !DILocalVariable(name: "start_pair", scope: !1885, file: !2, line: 1532, type: !85)
!1901 = !DILocalVariable(name: "minim_pair", scope: !1885, file: !2, line: 1533, type: !85)
!1902 = !DILocalVariable(name: "pair_ratio", scope: !1885, file: !2, line: 1534, type: !85)
!1903 = !DILocalVariable(name: "rat_0", scope: !1885, file: !2, line: 1535, type: !85)
!1904 = !DILocalVariable(name: "rat_1", scope: !1885, file: !2, line: 1536, type: !85)
!1905 = !DILocalVariable(name: "eps", scope: !1906, file: !2, line: 1557, type: !85)
!1906 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 1550, column: 10)
!1907 = !DILocalVariable(name: "r_Mnm1", scope: !1906, file: !2, line: 1558, type: !87)
!1908 = !DILocalVariable(name: "r_Mn", scope: !1906, file: !2, line: 1559, type: !87)
!1909 = !DILocalVariable(name: "stat_0", scope: !1906, file: !2, line: 1560, type: !33)
!1910 = !DILocalVariable(name: "stat_1", scope: !1906, file: !2, line: 1561, type: !33)
!1911 = !DILocalVariable(name: "Mnm1", scope: !1906, file: !2, line: 1562, type: !85)
!1912 = !DILocalVariable(name: "Mn", scope: !1906, file: !2, line: 1563, type: !85)
!1913 = !DILocalVariable(name: "Mnp1", scope: !1906, file: !2, line: 1564, type: !85)
!1914 = !DILocalVariable(name: "n", scope: !1906, file: !2, line: 1566, type: !85)
!1915 = !DILocalVariable(name: "start_pair", scope: !1906, file: !2, line: 1567, type: !85)
!1916 = !DILocalVariable(name: "minim_pair", scope: !1906, file: !2, line: 1568, type: !85)
!1917 = !DILocalVariable(name: "pair_ratio", scope: !1906, file: !2, line: 1569, type: !85)
!1918 = !DILocalVariable(name: "rat_0", scope: !1906, file: !2, line: 1570, type: !85)
!1919 = !DILocalVariable(name: "rat_1", scope: !1906, file: !2, line: 1571, type: !85)
!1920 = !DILocalVariable(name: "N", scope: !1921, file: !2, line: 1594, type: !85)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 1591, column: 35)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 1591, column: 8)
!1923 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 1586, column: 8)
!1924 = !DILocalVariable(name: "eps", scope: !1921, file: !2, line: 1595, type: !85)
!1925 = !DILocalVariable(name: "r_Manp1", scope: !1921, file: !2, line: 1596, type: !87)
!1926 = !DILocalVariable(name: "r_Man", scope: !1921, file: !2, line: 1597, type: !87)
!1927 = !DILocalVariable(name: "stat_0", scope: !1921, file: !2, line: 1598, type: !33)
!1928 = !DILocalVariable(name: "stat_1", scope: !1921, file: !2, line: 1599, type: !33)
!1929 = !DILocalVariable(name: "Manp1", scope: !1921, file: !2, line: 1600, type: !85)
!1930 = !DILocalVariable(name: "Man", scope: !1921, file: !2, line: 1601, type: !85)
!1931 = !DILocalVariable(name: "Manm1", scope: !1921, file: !2, line: 1602, type: !85)
!1932 = !DILocalVariable(name: "n", scope: !1921, file: !2, line: 1604, type: !85)
!1933 = !DILocalVariable(name: "start_pair", scope: !1921, file: !2, line: 1605, type: !85)
!1934 = !DILocalVariable(name: "minim_pair", scope: !1921, file: !2, line: 1606, type: !85)
!1935 = !DILocalVariable(name: "pair_ratio", scope: !1921, file: !2, line: 1607, type: !85)
!1936 = !DILocalVariable(name: "rat_0", scope: !1921, file: !2, line: 1608, type: !85)
!1937 = !DILocalVariable(name: "rat_1", scope: !1921, file: !2, line: 1609, type: !85)
!1938 = !DILocalVariable(name: "epsa", scope: !1939, file: !2, line: 1636, type: !85)
!1939 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 1630, column: 10)
!1940 = !DILocalVariable(name: "a0", scope: !1939, file: !2, line: 1637, type: !85)
!1941 = !DILocalVariable(name: "N", scope: !1939, file: !2, line: 1638, type: !85)
!1942 = !DILocalVariable(name: "epsb", scope: !1939, file: !2, line: 1639, type: !85)
!1943 = !DILocalVariable(name: "Ma0b", scope: !1939, file: !2, line: 1640, type: !85)
!1944 = !DILocalVariable(name: "Ma0bp1", scope: !1939, file: !2, line: 1641, type: !85)
!1945 = !DILocalVariable(name: "Ma0p1b", scope: !1939, file: !2, line: 1642, type: !85)
!1946 = !DILocalVariable(name: "stat_a0", scope: !1939, file: !2, line: 1643, type: !33)
!1947 = !DILocalVariable(name: "Mnm1", scope: !1939, file: !2, line: 1644, type: !85)
!1948 = !DILocalVariable(name: "Mn", scope: !1939, file: !2, line: 1645, type: !85)
!1949 = !DILocalVariable(name: "Mnp1", scope: !1939, file: !2, line: 1646, type: !85)
!1950 = !DILocalVariable(name: "n", scope: !1939, file: !2, line: 1647, type: !85)
!1951 = !DILocalVariable(name: "err_rat", scope: !1939, file: !2, line: 1648, type: !85)
!1952 = !DILocalVariable(name: "r_Ma0np1", scope: !1953, file: !2, line: 1650, type: !87)
!1953 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 1649, column: 7)
!1954 = !DILocalVariable(name: "r_Ma0n", scope: !1953, file: !2, line: 1651, type: !87)
!1955 = !DILocalVariable(name: "stat_0", scope: !1953, file: !2, line: 1652, type: !33)
!1956 = !DILocalVariable(name: "stat_1", scope: !1953, file: !2, line: 1653, type: !33)
!1957 = !DILocalVariable(name: "Ma0np1", scope: !1953, file: !2, line: 1654, type: !85)
!1958 = !DILocalVariable(name: "Ma0n", scope: !1953, file: !2, line: 1655, type: !85)
!1959 = !DILocalVariable(name: "Ma0nm1", scope: !1953, file: !2, line: 1656, type: !85)
!1960 = distinct !DIAssignID()
!1961 = !DILocation(line: 0, scope: !1856)
!1962 = distinct !DIAssignID()
!1963 = distinct !DIAssignID()
!1964 = !DILocation(line: 0, scope: !1873)
!1965 = distinct !DIAssignID()
!1966 = distinct !DIAssignID()
!1967 = !DILocation(line: 0, scope: !1885)
!1968 = distinct !DIAssignID()
!1969 = distinct !DIAssignID()
!1970 = !DILocation(line: 0, scope: !1906)
!1971 = distinct !DIAssignID()
!1972 = distinct !DIAssignID()
!1973 = !DILocation(line: 0, scope: !1921)
!1974 = distinct !DIAssignID()
!1975 = distinct !DIAssignID()
!1976 = !DILocation(line: 0, scope: !1953)
!1977 = distinct !DIAssignID()
!1978 = !DILocation(line: 0, scope: !1848)
!1979 = !DILocation(line: 1428, column: 21, scope: !1848)
!1980 = !DILocation(line: 1430, column: 13, scope: !1861)
!1981 = !DILocation(line: 1430, column: 20, scope: !1861)
!1982 = !DILocation(line: 1432, column: 13, scope: !1861)
!1983 = !DILocation(line: 1432, column: 17, scope: !1861)
!1984 = !DILocation(line: 1434, column: 12, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 1433, column: 7)
!1986 = !DILocation(line: 1434, column: 5, scope: !1985)
!1987 = !DILocation(line: 1436, column: 16, scope: !1860)
!1988 = !DILocation(line: 1437, column: 11, scope: !1860)
!1989 = !DILocation(line: 1437, column: 26, scope: !1860)
!1990 = !DILocation(line: 0, scope: !161, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 1437, column: 14, scope: !1860)
!1992 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !1991)
!1993 = !DILocation(line: 1437, column: 61, scope: !1860)
!1994 = !DILocation(line: 1437, column: 51, scope: !1860)
!1995 = !DILocation(line: 0, scope: !161, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 1437, column: 39, scope: !1860)
!1997 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !1996)
!1998 = !DILocation(line: 1437, column: 38, scope: !1860)
!1999 = !DILocation(line: 1437, column: 75, scope: !1860)
!2000 = !DILocation(line: 1437, column: 70, scope: !1860)
!2001 = !DILocation(line: 1436, column: 14, scope: !1861)
!2002 = !DILocation(line: 1441, column: 12, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 1438, column: 7)
!2004 = !DILocation(line: 1441, column: 5, scope: !2003)
!2005 = !DILocation(line: 1443, column: 16, scope: !1859)
!2006 = !DILocation(line: 0, scope: !1859)
!2007 = !DILocation(line: 1444, column: 11, scope: !1859)
!2008 = !DILocation(line: 0, scope: !161, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 1444, column: 14, scope: !1859)
!2010 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2009)
!2011 = !DILocation(line: 1444, column: 53, scope: !1859)
!2012 = !DILocation(line: 0, scope: !161, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 1444, column: 41, scope: !1859)
!2014 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2013)
!2015 = !DILocation(line: 1444, column: 40, scope: !1859)
!2016 = !DILocation(line: 1444, column: 75, scope: !1859)
!2017 = !DILocation(line: 1444, column: 70, scope: !1859)
!2018 = !DILocation(line: 1443, column: 14, scope: !1860)
!2019 = !DILocation(line: 1448, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 1445, column: 7)
!2021 = !DILocation(line: 1448, column: 5, scope: !2020)
!2022 = !DILocation(line: 1450, column: 21, scope: !1858)
!2023 = !DILocation(line: 1450, column: 11, scope: !1859)
!2024 = !DILocation(line: 1453, column: 12, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 1450, column: 29)
!2026 = !DILocation(line: 1453, column: 5, scope: !2025)
!2027 = !DILocation(line: 1456, column: 17, scope: !1857)
!2028 = !DILocation(line: 1456, column: 26, scope: !1857)
!2029 = !DILocation(line: 1456, column: 22, scope: !1857)
!2030 = !DILocation(line: 1456, column: 11, scope: !1858)
!2031 = !DILocation(line: 1461, column: 5, scope: !1856)
!2032 = !DILocation(line: 1462, column: 20, scope: !1856)
!2033 = !DILocation(line: 1463, column: 29, scope: !1856)
!2034 = !DILocation(line: 1470, column: 5, scope: !1856)
!2035 = !DILocation(line: 1473, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 1473, column: 5)
!2037 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 1473, column: 5)
!2038 = !DILocation(line: 1473, column: 5, scope: !2037)
!2039 = !DILocation(line: 1463, column: 24, scope: !1856)
!2040 = !DILocation(line: 1463, column: 27, scope: !1856)
!2041 = !DILocation(line: 1466, column: 22, scope: !1856)
!2042 = !DILocation(line: 1474, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 1473, column: 31)
!2044 = !DILocation(line: 1474, column: 30, scope: !2043)
!2045 = !DILocation(line: 1474, column: 34, scope: !2043)
!2046 = !DILocation(line: 1474, column: 38, scope: !2043)
!2047 = !DILocation(line: 1474, column: 48, scope: !2043)
!2048 = !DILocation(line: 1474, column: 44, scope: !2043)
!2049 = distinct !{!2049, !2038, !2050, !481}
!2050 = !DILocation(line: 1477, column: 5, scope: !2037)
!2051 = !DILocation(line: 1473, scope: !2037)
!2052 = !DILocation(line: 1479, column: 15, scope: !1856)
!2053 = !DILocation(line: 1481, column: 23, scope: !1856)
!2054 = !DILocation(line: 1481, column: 38, scope: !1856)
!2055 = !DILocation(line: 1481, column: 28, scope: !1856)
!2056 = !DILocation(line: 1481, column: 18, scope: !1856)
!2057 = !DILocation(line: 1482, column: 20, scope: !1856)
!2058 = !DILocation(line: 1482, column: 42, scope: !1856)
!2059 = !DILocation(line: 1482, column: 32, scope: !1856)
!2060 = !DILocation(line: 1482, column: 13, scope: !1856)
!2061 = !DILocation(line: 1483, column: 45, scope: !1856)
!2062 = !DILocation(line: 1483, column: 42, scope: !1856)
!2063 = !DILocation(line: 1483, column: 60, scope: !1856)
!2064 = !DILocation(line: 1483, column: 58, scope: !1856)
!2065 = !DILocation(line: 1483, column: 17, scope: !1856)
!2066 = !DILocation(line: 1484, column: 12, scope: !1856)
!2067 = !DILocation(line: 1485, column: 3, scope: !1857)
!2068 = !DILocation(line: 1486, column: 22, scope: !1874)
!2069 = !DILocation(line: 1486, column: 32, scope: !1874)
!2070 = !DILocation(line: 1493, column: 5, scope: !1873)
!2071 = !DILocation(line: 1495, column: 5, scope: !1873)
!2072 = !DILocation(line: 1496, column: 20, scope: !1873)
!2073 = !DILocation(line: 1497, column: 24, scope: !1873)
!2074 = !DILocation(line: 1497, column: 29, scope: !1873)
!2075 = !DILocation(line: 1497, column: 27, scope: !1873)
!2076 = !DILocation(line: 1500, column: 22, scope: !1873)
!2077 = !DILocation(line: 1503, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 1503, column: 5)
!2079 = !DILocation(line: 1503, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 1503, column: 5)
!2081 = !DILocation(line: 1503, column: 5, scope: !2078)
!2082 = !DILocation(line: 1504, column: 20, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 1503, column: 37)
!2084 = !DILocation(line: 1504, column: 30, scope: !2083)
!2085 = !DILocation(line: 1504, column: 34, scope: !2083)
!2086 = !DILocation(line: 1504, column: 37, scope: !2083)
!2087 = !DILocation(line: 1504, column: 41, scope: !2083)
!2088 = distinct !{!2088, !2081, !2089, !481}
!2089 = !DILocation(line: 1507, column: 5, scope: !2078)
!2090 = !DILocation(line: 1508, column: 15, scope: !1873)
!2091 = !DILocation(line: 1509, column: 22, scope: !1873)
!2092 = !DILocation(line: 1509, column: 36, scope: !1873)
!2093 = !DILocation(line: 1509, column: 26, scope: !1873)
!2094 = !DILocation(line: 1509, column: 18, scope: !1873)
!2095 = !DILocation(line: 1510, column: 20, scope: !1873)
!2096 = !DILocation(line: 1510, column: 42, scope: !1873)
!2097 = !DILocation(line: 1510, column: 32, scope: !1873)
!2098 = !DILocation(line: 1510, column: 13, scope: !1873)
!2099 = !DILocation(line: 1511, column: 42, scope: !1873)
!2100 = !DILocation(line: 1511, column: 62, scope: !1873)
!2101 = !DILocation(line: 1511, column: 60, scope: !1873)
!2102 = !DILocation(line: 1511, column: 17, scope: !1873)
!2103 = !DILocation(line: 1512, column: 12, scope: !1873)
!2104 = !DILocation(line: 1513, column: 3, scope: !1874)
!2105 = !DILocation(line: 1514, column: 13, scope: !1888)
!2106 = !DILocation(line: 1514, column: 11, scope: !1874)
!2107 = !DILocation(line: 1516, column: 10, scope: !1886)
!2108 = !DILocation(line: 1516, column: 8, scope: !1887)
!2109 = !DILocation(line: 1519, column: 20, scope: !1885)
!2110 = !DILocation(line: 1521, column: 7, scope: !1885)
!2111 = !DILocation(line: 1522, column: 7, scope: !1885)
!2112 = !DILocation(line: 1523, column: 20, scope: !1885)
!2113 = !DILocation(line: 1524, column: 20, scope: !1885)
!2114 = !DILocation(line: 1525, column: 24, scope: !1885)
!2115 = !DILocation(line: 1526, column: 24, scope: !1885)
!2116 = !DILocation(line: 1532, column: 27, scope: !1885)
!2117 = !DILocation(line: 1532, column: 38, scope: !1885)
!2118 = !DILocation(line: 1535, column: 32, scope: !1885)
!2119 = !DILocation(line: 1535, column: 35, scope: !1885)
!2120 = !DILocation(line: 1535, column: 22, scope: !1885)
!2121 = !DILocation(line: 1536, column: 32, scope: !1885)
!2122 = !DILocation(line: 1536, column: 35, scope: !1885)
!2123 = !DILocation(line: 1536, column: 22, scope: !1885)
!2124 = !DILocation(line: 1537, column: 23, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 1537, column: 7)
!2126 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 1537, column: 7)
!2127 = !DILocation(line: 1537, column: 7, scope: !2126)
!2128 = !DILocation(line: 1538, column: 23, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 1537, column: 42)
!2130 = !DILocation(line: 1538, column: 35, scope: !2129)
!2131 = !DILocation(line: 1538, column: 40, scope: !2129)
!2132 = !DILocation(line: 1538, column: 43, scope: !2129)
!2133 = !DILocation(line: 1538, column: 47, scope: !2129)
!2134 = !DILocation(line: 1541, column: 34, scope: !2129)
!2135 = !DILocation(line: 1541, column: 47, scope: !2129)
!2136 = !DILocation(line: 77, column: 10, scope: !2137, inlinedAt: !2141)
!2137 = distinct !DISubprogram(name: "GSL_MIN_DBL", scope: !162, file: !162, line: 75, type: !163, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2138)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "a", arg: 1, scope: !2137, file: !162, line: 75, type: !85)
!2140 = !DILocalVariable(name: "b", arg: 2, scope: !2137, file: !162, line: 75, type: !85)
!2141 = distinct !DILocation(line: 1541, column: 22, scope: !2129)
!2142 = !DILocation(line: 0, scope: !2137, inlinedAt: !2141)
!2143 = distinct !{!2143, !2127, !2144, !481}
!2144 = !DILocation(line: 1542, column: 7, scope: !2126)
!2145 = !DILocation(line: 1545, column: 82, scope: !1885)
!2146 = !DILocation(line: 1543, column: 30, scope: !1885)
!2147 = !DILocation(line: 1544, column: 20, scope: !1885)
!2148 = !DILocation(line: 1545, column: 43, scope: !1885)
!2149 = !DILocation(line: 1545, column: 26, scope: !1885)
!2150 = !DILocation(line: 1545, column: 62, scope: !1885)
!2151 = !DILocation(line: 1545, column: 80, scope: !1885)
!2152 = !DILocation(line: 1545, column: 15, scope: !1885)
!2153 = !DILocation(line: 1546, column: 26, scope: !1885)
!2154 = !DILocation(line: 1546, column: 44, scope: !1885)
!2155 = !DILocation(line: 1546, column: 56, scope: !1885)
!2156 = !DILocation(line: 1546, column: 68, scope: !1885)
!2157 = !DILocation(line: 1547, column: 44, scope: !1885)
!2158 = !DILocation(line: 1547, column: 19, scope: !1885)
!2159 = !DILocation(line: 1548, column: 14, scope: !1885)
!2160 = !DILocation(line: 1549, column: 5, scope: !1886)
!2161 = !DILocation(line: 1557, column: 24, scope: !1906)
!2162 = !DILocation(line: 1558, column: 7, scope: !1906)
!2163 = !DILocation(line: 1559, column: 7, scope: !1906)
!2164 = !DILocation(line: 1560, column: 20, scope: !1906)
!2165 = !DILocation(line: 1561, column: 20, scope: !1906)
!2166 = !DILocation(line: 1562, column: 28, scope: !1906)
!2167 = !DILocation(line: 1563, column: 26, scope: !1906)
!2168 = !DILocation(line: 1567, column: 27, scope: !1906)
!2169 = !DILocation(line: 1567, column: 38, scope: !1906)
!2170 = !DILocation(line: 1570, column: 34, scope: !1906)
!2171 = !DILocation(line: 1570, column: 37, scope: !1906)
!2172 = !DILocation(line: 1570, column: 22, scope: !1906)
!2173 = !DILocation(line: 1571, column: 32, scope: !1906)
!2174 = !DILocation(line: 1571, column: 35, scope: !1906)
!2175 = !DILocation(line: 1571, column: 22, scope: !1906)
!2176 = !DILocation(line: 1572, column: 23, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 1572, column: 7)
!2178 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 1572, column: 7)
!2179 = !DILocation(line: 1572, column: 7, scope: !2178)
!2180 = !DILocation(line: 1573, column: 22, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 1572, column: 36)
!2182 = !DILocation(line: 1573, column: 32, scope: !2181)
!2183 = !DILocation(line: 1573, column: 36, scope: !2181)
!2184 = !DILocation(line: 1573, column: 39, scope: !2181)
!2185 = !DILocation(line: 1573, column: 43, scope: !2181)
!2186 = !DILocation(line: 1576, column: 34, scope: !2181)
!2187 = !DILocation(line: 1576, column: 45, scope: !2181)
!2188 = !DILocation(line: 77, column: 10, scope: !2137, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 1576, column: 22, scope: !2181)
!2190 = !DILocation(line: 0, scope: !2137, inlinedAt: !2189)
!2191 = distinct !{!2191, !2179, !2192, !481}
!2192 = !DILocation(line: 1577, column: 7, scope: !2178)
!2193 = !DILocation(line: 1580, column: 80, scope: !1906)
!2194 = !DILocation(line: 1578, column: 30, scope: !1906)
!2195 = !DILocation(line: 1579, column: 20, scope: !1906)
!2196 = !DILocation(line: 1580, column: 43, scope: !1906)
!2197 = !DILocation(line: 1580, column: 26, scope: !1906)
!2198 = !DILocation(line: 1580, column: 65, scope: !1906)
!2199 = !DILocation(line: 1580, column: 62, scope: !1906)
!2200 = !DILocation(line: 1580, column: 78, scope: !1906)
!2201 = !DILocation(line: 1580, column: 15, scope: !1906)
!2202 = !DILocation(line: 1581, column: 26, scope: !1906)
!2203 = !DILocation(line: 1581, column: 44, scope: !1906)
!2204 = !DILocation(line: 1581, column: 56, scope: !1906)
!2205 = !DILocation(line: 1581, column: 68, scope: !1906)
!2206 = !DILocation(line: 1582, column: 44, scope: !1906)
!2207 = !DILocation(line: 1582, column: 19, scope: !1906)
!2208 = !DILocation(line: 1583, column: 14, scope: !1906)
!2209 = !DILocation(line: 1584, column: 5, scope: !1886)
!2210 = !DILocation(line: 1591, column: 16, scope: !1922)
!2211 = !DILocation(line: 1591, column: 10, scope: !1922)
!2212 = !DILocation(line: 1591, column: 23, scope: !1922)
!2213 = !DILocation(line: 1594, column: 20, scope: !1921)
!2214 = !DILocation(line: 1595, column: 28, scope: !1921)
!2215 = !DILocation(line: 1595, column: 32, scope: !1921)
!2216 = !DILocation(line: 1596, column: 7, scope: !1921)
!2217 = !DILocation(line: 1597, column: 7, scope: !1921)
!2218 = !DILocation(line: 1598, column: 41, scope: !1921)
!2219 = !DILocation(line: 1598, column: 20, scope: !1921)
!2220 = !DILocation(line: 1599, column: 55, scope: !1921)
!2221 = !DILocation(line: 1599, column: 20, scope: !1921)
!2222 = !DILocation(line: 1600, column: 30, scope: !1921)
!2223 = !DILocation(line: 1601, column: 28, scope: !1921)
!2224 = !DILocation(line: 1605, column: 27, scope: !1921)
!2225 = !DILocation(line: 1605, column: 41, scope: !1921)
!2226 = !DILocation(line: 1608, column: 35, scope: !1921)
!2227 = !DILocation(line: 1608, column: 38, scope: !1921)
!2228 = !DILocation(line: 1608, column: 22, scope: !1921)
!2229 = !DILocation(line: 1609, column: 33, scope: !1921)
!2230 = !DILocation(line: 1609, column: 36, scope: !1921)
!2231 = !DILocation(line: 1609, column: 22, scope: !1921)
!2232 = !DILocation(line: 1610, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 1610, column: 7)
!2234 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 1610, column: 7)
!2235 = !DILocation(line: 1610, column: 7, scope: !2234)
!2236 = !DILocation(line: 1611, column: 18, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 1610, column: 43)
!2238 = !DILocation(line: 1611, column: 25, scope: !2237)
!2239 = !DILocation(line: 1611, column: 20, scope: !2237)
!2240 = !DILocation(line: 1611, column: 28, scope: !2237)
!2241 = !DILocation(line: 1611, column: 36, scope: !2237)
!2242 = !DILocation(line: 1611, column: 42, scope: !2237)
!2243 = !DILocation(line: 1611, column: 55, scope: !2237)
!2244 = !DILocation(line: 1611, column: 52, scope: !2237)
!2245 = !DILocation(line: 1611, column: 49, scope: !2237)
!2246 = !DILocation(line: 1614, column: 34, scope: !2237)
!2247 = !DILocation(line: 1614, column: 48, scope: !2237)
!2248 = !DILocation(line: 77, column: 10, scope: !2137, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 1614, column: 22, scope: !2237)
!2250 = !DILocation(line: 0, scope: !2137, inlinedAt: !2249)
!2251 = distinct !{!2251, !2235, !2252, !481}
!2252 = !DILocation(line: 1615, column: 7, scope: !2234)
!2253 = !DILocation(line: 1626, column: 82, scope: !1921)
!2254 = !DILocation(line: 1624, column: 30, scope: !1921)
!2255 = !DILocation(line: 1625, column: 20, scope: !1921)
!2256 = !DILocation(line: 1626, column: 43, scope: !1921)
!2257 = !DILocation(line: 1626, column: 26, scope: !1921)
!2258 = !DILocation(line: 1626, column: 62, scope: !1921)
!2259 = !DILocation(line: 1626, column: 80, scope: !1921)
!2260 = !DILocation(line: 1626, column: 15, scope: !1921)
!2261 = !DILocation(line: 1627, column: 32, scope: !1921)
!2262 = !DILocation(line: 1627, column: 19, scope: !1921)
!2263 = !DILocation(line: 1628, column: 14, scope: !1921)
!2264 = !DILocation(line: 1629, column: 5, scope: !1922)
!2265 = !DILocation(line: 1636, column: 25, scope: !1939)
!2266 = !DILocation(line: 1637, column: 21, scope: !1939)
!2267 = !DILocation(line: 0, scope: !1939)
!2268 = !DILocation(line: 1638, column: 30, scope: !1939)
!2269 = !DILocation(line: 1638, column: 21, scope: !1939)
!2270 = !DILocation(line: 1639, column: 29, scope: !1939)
!2271 = !DILocation(line: 1639, column: 34, scope: !1939)
!2272 = !DILocation(line: 1650, column: 9, scope: !1953)
!2273 = !DILocation(line: 1651, column: 9, scope: !1953)
!2274 = !DILocation(line: 1652, column: 43, scope: !1953)
!2275 = !DILocation(line: 1652, column: 22, scope: !1953)
!2276 = !DILocation(line: 1653, column: 60, scope: !1953)
!2277 = !DILocation(line: 1653, column: 22, scope: !1953)
!2278 = !DILocation(line: 1654, column: 34, scope: !1953)
!2279 = !DILocation(line: 1655, column: 32, scope: !1953)
!2280 = !DILocation(line: 1658, column: 33, scope: !1953)
!2281 = !DILocation(line: 1658, column: 36, scope: !1953)
!2282 = !DILocation(line: 1658, column: 19, scope: !1953)
!2283 = !DILocation(line: 1658, column: 65, scope: !1953)
!2284 = !DILocation(line: 1658, column: 68, scope: !1953)
!2285 = !DILocation(line: 1658, column: 53, scope: !1953)
!2286 = !DILocation(line: 1660, column: 29, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 1660, column: 9)
!2288 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 1660, column: 9)
!2289 = !DILocation(line: 1660, column: 9, scope: !2288)
!2290 = !DILocation(line: 1661, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 1660, column: 47)
!2292 = !DILocation(line: 1661, column: 28, scope: !2291)
!2293 = !DILocation(line: 1661, column: 23, scope: !2291)
!2294 = !DILocation(line: 1661, column: 31, scope: !2291)
!2295 = !DILocation(line: 1661, column: 40, scope: !2291)
!2296 = !DILocation(line: 1661, column: 47, scope: !2291)
!2297 = !DILocation(line: 1661, column: 61, scope: !2291)
!2298 = !DILocation(line: 1661, column: 58, scope: !2291)
!2299 = !DILocation(line: 1661, column: 55, scope: !2291)
!2300 = distinct !{!2300, !2289, !2301, !481}
!2301 = !DILocation(line: 1664, column: 9, scope: !2288)
!2302 = !DILocation(line: 1668, column: 19, scope: !1953)
!2303 = !DILocation(line: 1669, column: 7, scope: !1939)
!2304 = !DILocation(line: 1674, column: 14, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 1674, column: 11)
!2306 = !DILocation(line: 1674, column: 11, scope: !1939)
!2307 = !DILocation(line: 1667, column: 20, scope: !1953)
!2308 = !DILocation(line: 1667, column: 27, scope: !1953)
!2309 = !DILocation(line: 1667, column: 34, scope: !1953)
!2310 = !DILocation(line: 1667, column: 41, scope: !1953)
!2311 = !DILocation(line: 1667, column: 53, scope: !1953)
!2312 = !DILocation(line: 1667, column: 49, scope: !1953)
!2313 = !DILocation(line: 1678, column: 16, scope: !2305)
!2314 = !DILocation(line: 1688, column: 26, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 1687, column: 44)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 1687, column: 11)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 1687, column: 11)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 1683, column: 9)
!2319 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 1678, column: 16)
!2320 = !DILocation(line: 1688, column: 36, scope: !2315)
!2321 = !DILocation(line: 1688, column: 40, scope: !2315)
!2322 = !DILocation(line: 1688, column: 43, scope: !2315)
!2323 = !DILocation(line: 1688, column: 47, scope: !2315)
!2324 = !DILocation(line: 1687, column: 26, scope: !2316)
!2325 = !DILocation(line: 1687, column: 11, scope: !2317)
!2326 = distinct !{!2326, !2325, !2327, !481}
!2327 = !DILocation(line: 1691, column: 11, scope: !2317)
!2328 = !DILocation(line: 0, scope: !2305)
!2329 = !DILocation(line: 1694, column: 19, scope: !1939)
!2330 = !DILocation(line: 1695, column: 61, scope: !1939)
!2331 = !DILocation(line: 1695, column: 49, scope: !1939)
!2332 = !DILocation(line: 1695, column: 69, scope: !1939)
!2333 = !DILocation(line: 1695, column: 67, scope: !1939)
!2334 = !DILocation(line: 1695, column: 15, scope: !1939)
!2335 = !DILocation(line: 1695, column: 19, scope: !1939)
!2336 = !DILocation(line: 0, scope: !1861)
!2337 = !DILocation(line: 1699, column: 1, scope: !1848)
!2338 = !DISubprogram(name: "gsl_sf_hyperg_1F1_series_e", scope: !2339, file: !2339, line: 34, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2339 = !DIFile(filename: "./hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "715d150f24566e0448edc458ffbf9b78")
!2340 = !DILocation(line: 0, scope: !426)
!2341 = !DILocation(line: 1185, column: 8, scope: !435)
!2342 = !DILocation(line: 1185, column: 6, scope: !426)
!2343 = !DILocation(line: 1186, column: 17, scope: !448)
!2344 = !DILocation(line: 1187, column: 13, scope: !448)
!2345 = !DILocation(line: 1187, column: 17, scope: !448)
!2346 = !DILocation(line: 1188, column: 5, scope: !448)
!2347 = !DILocation(line: 1191, column: 13, scope: !434)
!2348 = !DILocation(line: 0, scope: !434)
!2349 = !DILocation(line: 1194, column: 17, scope: !440)
!2350 = !DILocation(line: 1194, column: 5, scope: !441)
!2351 = !DILocation(line: 1194, column: 12, scope: !441)
!2352 = !DILocation(line: 1195, column: 20, scope: !439)
!2353 = !DILocation(line: 1195, column: 18, scope: !439)
!2354 = !DILocation(line: 1195, column: 27, scope: !439)
!2355 = !DILocation(line: 1195, column: 23, scope: !439)
!2356 = !DILocation(line: 1195, column: 37, scope: !439)
!2357 = !DILocation(line: 1195, column: 35, scope: !439)
!2358 = !DILocation(line: 1195, column: 34, scope: !439)
!2359 = !DILocation(line: 1195, column: 30, scope: !439)
!2360 = !DILocation(line: 0, scope: !439)
!2361 = !DILocation(line: 1196, column: 25, scope: !439)
!2362 = !DILocation(line: 1197, column: 29, scope: !468)
!2363 = !DILocation(line: 1197, column: 12, scope: !468)
!2364 = !DILocation(line: 1197, column: 10, scope: !439)
!2365 = !DILocation(line: 1198, column: 9, scope: !472)
!2366 = !DILocation(line: 1198, column: 9, scope: !475)
!2367 = !DILocation(line: 1201, column: 14, scope: !477)
!2368 = !DILocation(line: 1194, column: 23, scope: !440)
!2369 = distinct !{!2369, !2350, !2370, !481}
!2370 = !DILocation(line: 1203, column: 5, scope: !441)
!2371 = !DILocation(line: 1192, column: 12, scope: !434)
!2372 = !DILocation(line: 1204, column: 17, scope: !434)
!2373 = !DILocation(line: 1205, column: 31, scope: !434)
!2374 = !DILocation(line: 1205, column: 26, scope: !434)
!2375 = !DILocation(line: 1205, column: 23, scope: !434)
!2376 = !DILocation(line: 1205, column: 41, scope: !434)
!2377 = !DILocation(line: 1205, column: 61, scope: !434)
!2378 = !DILocation(line: 1205, column: 59, scope: !434)
!2379 = !DILocation(line: 1205, column: 13, scope: !434)
!2380 = !DILocation(line: 1205, column: 17, scope: !434)
!2381 = !DILocation(line: 1206, column: 5, scope: !434)
!2382 = !DILocation(line: 0, scope: !435)
!2383 = !DILocation(line: 1208, column: 1, scope: !426)
!2384 = distinct !DISubprogram(name: "hyperg_1F1_ab_neg", scope: !2, file: !2, line: 1708, type: !240, scopeLine: 1710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2402, !2403, !2404, !2411, !2412}
!2386 = !DILocalVariable(name: "a", arg: 1, scope: !2384, file: !2, line: 1708, type: !84)
!2387 = !DILocalVariable(name: "b", arg: 2, scope: !2384, file: !2, line: 1708, type: !84)
!2388 = !DILocalVariable(name: "x", arg: 3, scope: !2384, file: !2, line: 1708, type: !84)
!2389 = !DILocalVariable(name: "result", arg: 4, scope: !2384, file: !2, line: 1709, type: !86)
!2390 = !DILocalVariable(name: "bma", scope: !2384, file: !2, line: 1711, type: !84)
!2391 = !DILocalVariable(name: "abs_x", scope: !2384, file: !2, line: 1712, type: !84)
!2392 = !DILocalVariable(name: "abs_a", scope: !2384, file: !2, line: 1713, type: !84)
!2393 = !DILocalVariable(name: "abs_b", scope: !2384, file: !2, line: 1714, type: !84)
!2394 = !DILocalVariable(name: "size_a", scope: !2384, file: !2, line: 1715, type: !84)
!2395 = !DILocalVariable(name: "size_b", scope: !2384, file: !2, line: 1716, type: !84)
!2396 = !DILocalVariable(name: "bma_integer", scope: !2384, file: !2, line: 1717, type: !83)
!2397 = !DILocalVariable(name: "Kummer_1F1", scope: !2398, file: !2, line: 1739, type: !87)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1736, column: 7)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1734, column: 14)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 1724, column: 14)
!2401 = distinct !DILexicalBlock(scope: !2384, file: !2, line: 1719, column: 9)
!2402 = !DILocalVariable(name: "stat_K", scope: !2398, file: !2, line: 1740, type: !33)
!2403 = !DILocalVariable(name: "stat_e", scope: !2398, file: !2, line: 1741, type: !33)
!2404 = !DILocalVariable(name: "status", scope: !2405, file: !2, line: 1769, type: !33)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 1767, column: 18)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 1767, column: 9)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 1765, column: 8)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 1762, column: 11)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 1754, column: 14)
!2410 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1746, column: 14)
!2411 = !DILocalVariable(name: "K_factor", scope: !2405, file: !2, line: 1770, type: !85)
!2412 = !DILocalVariable(name: "status", scope: !2413, file: !2, line: 1775, type: !33)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 1774, column: 12)
!2414 = distinct !DIAssignID()
!2415 = !DILocation(line: 0, scope: !2398)
!2416 = !DILocation(line: 0, scope: !2384)
!2417 = !DILocation(line: 1712, column: 24, scope: !2384)
!2418 = !DILocation(line: 1713, column: 24, scope: !2384)
!2419 = !DILocation(line: 1714, column: 24, scope: !2384)
!2420 = !DILocation(line: 1715, column: 25, scope: !2384)
!2421 = !DILocation(line: 1716, column: 25, scope: !2384)
!2422 = !DILocation(line: 1717, column: 35, scope: !2384)
!2423 = !DILocation(line: 1717, column: 50, scope: !2384)
!2424 = !DILocation(line: 1719, column: 16, scope: !2401)
!2425 = !DILocation(line: 1719, column: 23, scope: !2401)
!2426 = !DILocation(line: 1720, column: 17, scope: !2401)
!2427 = !DILocation(line: 1720, column: 38, scope: !2401)
!2428 = !DILocation(line: 1720, column: 12, scope: !2401)
!2429 = !DILocation(line: 1719, column: 9, scope: !2384)
!2430 = !DILocation(line: 1722, column: 12, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 1721, column: 7)
!2432 = !DILocation(line: 1722, column: 5, scope: !2431)
!2433 = !DILocation(line: 1724, column: 16, scope: !2400)
!2434 = !DILocation(line: 1725, column: 11, scope: !2400)
!2435 = !DILocation(line: 1726, column: 28, scope: !2400)
!2436 = !DILocation(line: 1726, column: 30, scope: !2400)
!2437 = !DILocation(line: 1726, column: 20, scope: !2400)
!2438 = !DILocation(line: 1726, column: 39, scope: !2400)
!2439 = !DILocation(line: 1724, column: 14, scope: !2401)
!2440 = !DILocation(line: 1732, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1727, column: 7)
!2442 = !DILocation(line: 1732, column: 5, scope: !2441)
!2443 = !DILocation(line: 0, scope: !2399)
!2444 = !DILocation(line: 1734, column: 27, scope: !2399)
!2445 = !DILocation(line: 0, scope: !161, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 1735, column: 23, scope: !2399)
!2447 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2446)
!2448 = !DILocation(line: 1735, column: 22, scope: !2399)
!2449 = !DILocation(line: 1735, column: 49, scope: !2399)
!2450 = !DILocation(line: 1735, column: 17, scope: !2399)
!2451 = !DILocation(line: 1734, column: 14, scope: !2400)
!2452 = !DILocation(line: 1739, column: 5, scope: !2398)
!2453 = !DILocation(line: 1740, column: 53, scope: !2398)
!2454 = !DILocation(line: 1740, column: 18, scope: !2398)
!2455 = !DILocation(line: 1741, column: 59, scope: !2398)
!2456 = !DILocation(line: 1742, column: 50, scope: !2398)
!2457 = !DILocation(line: 1742, column: 66, scope: !2398)
!2458 = !DILocation(line: 1741, column: 18, scope: !2398)
!2459 = !DILocation(line: 1744, column: 12, scope: !2398)
!2460 = !DILocation(line: 1745, column: 3, scope: !2399)
!2461 = !DILocation(line: 1746, column: 16, scope: !2410)
!2462 = !DILocation(line: 1747, column: 11, scope: !2410)
!2463 = !DILocation(line: 0, scope: !161, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1747, column: 14, scope: !2410)
!2465 = !DILocation(line: 1747, column: 61, scope: !2410)
!2466 = !DILocation(line: 1747, column: 51, scope: !2410)
!2467 = !DILocation(line: 0, scope: !161, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1747, column: 39, scope: !2410)
!2469 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2468)
!2470 = !DILocation(line: 1747, column: 38, scope: !2410)
!2471 = !DILocation(line: 1747, column: 76, scope: !2410)
!2472 = !DILocation(line: 1747, column: 70, scope: !2410)
!2473 = !DILocation(line: 1746, column: 14, scope: !2399)
!2474 = !DILocation(line: 1752, column: 12, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 1748, column: 7)
!2476 = !DILocation(line: 1752, column: 5, scope: !2475)
!2477 = !DILocation(line: 1754, column: 16, scope: !2409)
!2478 = !DILocation(line: 1755, column: 11, scope: !2409)
!2479 = !DILocation(line: 0, scope: !161, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 1755, column: 14, scope: !2409)
!2481 = !DILocation(line: 1755, column: 53, scope: !2409)
!2482 = !DILocation(line: 0, scope: !161, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 1755, column: 41, scope: !2409)
!2484 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2483)
!2485 = !DILocation(line: 1755, column: 40, scope: !2409)
!2486 = !DILocation(line: 1755, column: 76, scope: !2409)
!2487 = !DILocation(line: 1755, column: 70, scope: !2409)
!2488 = !DILocation(line: 1754, column: 14, scope: !2410)
!2489 = !DILocation(line: 1760, column: 12, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 1756, column: 7)
!2491 = !DILocation(line: 1760, column: 5, scope: !2490)
!2492 = !DILocation(line: 1762, column: 19, scope: !2408)
!2493 = !DILocation(line: 1763, column: 12, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 1762, column: 51)
!2495 = !DILocation(line: 1763, column: 5, scope: !2494)
!2496 = !DILocation(line: 1767, column: 11, scope: !2406)
!2497 = !DILocation(line: 1767, column: 9, scope: !2407)
!2498 = !DILocation(line: 1769, column: 55, scope: !2405)
!2499 = !DILocation(line: 1769, column: 20, scope: !2405)
!2500 = !DILocation(line: 0, scope: !2405)
!2501 = !DILocation(line: 1770, column: 25, scope: !2405)
!2502 = !DILocation(line: 1771, column: 19, scope: !2405)
!2503 = !DILocation(line: 1772, column: 15, scope: !2405)
!2504 = !DILocation(line: 1772, column: 19, scope: !2405)
!2505 = !DILocation(line: 1775, column: 20, scope: !2413)
!2506 = !DILocation(line: 0, scope: !2413)
!2507 = !DILocation(line: 0, scope: !2401)
!2508 = !DILocation(line: 1784, column: 1, scope: !2384)
!2509 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_int", scope: !2, file: !2, line: 2057, type: !2510, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!85, !83, !83, !85}
!2512 = !{!2513, !2514, !2515, !2516, !2517}
!2513 = !DILocalVariable(name: "m", arg: 1, scope: !2509, file: !2, line: 2057, type: !83)
!2514 = !DILocalVariable(name: "n", arg: 2, scope: !2509, file: !2, line: 2057, type: !83)
!2515 = !DILocalVariable(name: "x", arg: 3, scope: !2509, file: !2, line: 2057, type: !85)
!2516 = !DILocalVariable(name: "result", scope: !2509, file: !2, line: 2059, type: !87)
!2517 = !DILocalVariable(name: "status", scope: !2509, file: !2, line: 2059, type: !33)
!2518 = distinct !DIAssignID()
!2519 = !DILocation(line: 0, scope: !2509)
!2520 = !DILocation(line: 2059, column: 3, scope: !2509)
!2521 = !DILocation(line: 2059, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2509, file: !2, line: 2059, column: 3)
!2523 = !DILocation(line: 2059, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 2059, column: 3)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 2059, column: 3)
!2526 = !DILocation(line: 2060, column: 1, scope: !2509)
!2527 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1", scope: !2, file: !2, line: 2062, type: !2528, scopeLine: 2063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!85, !85, !85, !85}
!2530 = !{!2531, !2532, !2533, !2534, !2535}
!2531 = !DILocalVariable(name: "a", arg: 1, scope: !2527, file: !2, line: 2062, type: !85)
!2532 = !DILocalVariable(name: "b", arg: 2, scope: !2527, file: !2, line: 2062, type: !85)
!2533 = !DILocalVariable(name: "x", arg: 3, scope: !2527, file: !2, line: 2062, type: !85)
!2534 = !DILocalVariable(name: "result", scope: !2527, file: !2, line: 2064, type: !87)
!2535 = !DILocalVariable(name: "status", scope: !2527, file: !2, line: 2064, type: !33)
!2536 = distinct !DIAssignID()
!2537 = !DILocation(line: 0, scope: !2527)
!2538 = !DILocation(line: 2064, column: 3, scope: !2527)
!2539 = !DILocation(line: 2064, column: 3, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 2064, column: 3)
!2541 = !DILocation(line: 2064, column: 3, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 2064, column: 3)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 2064, column: 3)
!2544 = !DILocation(line: 2065, column: 1, scope: !2527)
!2545 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !2546, file: !2546, line: 58, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2546 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!33, !85, !86, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2550 = !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !2339, file: !2339, line: 74, type: !2551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!33, !84, !84, !84, !33, !86}
!2553 = !DISubprogram(name: "gsl_sf_exprel_n_e", scope: !231, file: !231, line: 102, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2554 = distinct !DISubprogram(name: "hyperg_1F1_beq2a_pos", scope: !2, file: !2, line: 863, type: !1266, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2556 = !DILocalVariable(name: "a", arg: 1, scope: !2554, file: !2, line: 863, type: !84)
!2557 = !DILocalVariable(name: "x", arg: 2, scope: !2554, file: !2, line: 863, type: !84)
!2558 = !DILocalVariable(name: "result", arg: 3, scope: !2554, file: !2, line: 863, type: !86)
!2559 = !DILocalVariable(name: "I", scope: !2560, file: !2, line: 871, type: !87)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 870, column: 8)
!2561 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 865, column: 6)
!2562 = !DILocalVariable(name: "stat_I", scope: !2560, file: !2, line: 872, type: !33)
!2563 = !DILocalVariable(name: "lg", scope: !2560, file: !2, line: 873, type: !87)
!2564 = !DILocalVariable(name: "stat_g", scope: !2560, file: !2, line: 874, type: !33)
!2565 = !DILocalVariable(name: "ln_term", scope: !2560, file: !2, line: 875, type: !85)
!2566 = !DILocalVariable(name: "lnpre_val", scope: !2560, file: !2, line: 876, type: !85)
!2567 = !DILocalVariable(name: "lnpre_err", scope: !2560, file: !2, line: 877, type: !85)
!2568 = !DILocalVariable(name: "stat_e", scope: !2560, file: !2, line: 878, type: !33)
!2569 = distinct !DIAssignID()
!2570 = !DILocation(line: 0, scope: !2560)
!2571 = distinct !DIAssignID()
!2572 = !DILocation(line: 0, scope: !2554)
!2573 = !DILocation(line: 865, column: 8, scope: !2561)
!2574 = !DILocation(line: 865, column: 6, scope: !2554)
!2575 = !DILocation(line: 866, column: 17, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 865, column: 16)
!2577 = !DILocation(line: 867, column: 13, scope: !2576)
!2578 = !DILocation(line: 867, column: 17, scope: !2576)
!2579 = !DILocation(line: 868, column: 5, scope: !2576)
!2580 = !DILocation(line: 871, column: 5, scope: !2560)
!2581 = !DILocation(line: 872, column: 56, scope: !2560)
!2582 = !DILocation(line: 872, column: 55, scope: !2560)
!2583 = !DILocation(line: 872, column: 18, scope: !2560)
!2584 = !DILocation(line: 873, column: 5, scope: !2560)
!2585 = !DILocation(line: 874, column: 18, scope: !2560)
!2586 = !DILocation(line: 875, column: 40, scope: !2560)
!2587 = !DILocation(line: 875, column: 31, scope: !2560)
!2588 = !DILocation(line: 876, column: 27, scope: !2560)
!2589 = !DILocation(line: 0, scope: !161, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 876, column: 33, scope: !2560)
!2591 = !DILocation(line: 71, column: 10, scope: !161, inlinedAt: !2590)
!2592 = !DILocation(line: 876, column: 52, scope: !2560)
!2593 = !DILocation(line: 877, column: 27, scope: !2560)
!2594 = !DILocation(line: 877, column: 52, scope: !2560)
!2595 = !DILocation(line: 877, column: 49, scope: !2560)
!2596 = !DILocation(line: 879, column: 45, scope: !2560)
!2597 = !DILocation(line: 879, column: 52, scope: !2560)
!2598 = !DILocation(line: 878, column: 18, scope: !2560)
!2599 = !DILocation(line: 881, column: 12, scope: !2560)
!2600 = !DILocation(line: 882, column: 3, scope: !2561)
!2601 = !DILocation(line: 0, scope: !2561)
!2602 = !DILocation(line: 883, column: 1, scope: !2554)
!2603 = distinct !DISubprogram(name: "hyperg_1F1_CF1_p_ser", scope: !2, file: !2, line: 559, type: !2604, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!33, !84, !84, !84, !2549}
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2614, !2615, !2616, !2617, !2618}
!2607 = !DILocalVariable(name: "a", arg: 1, scope: !2603, file: !2, line: 559, type: !84)
!2608 = !DILocalVariable(name: "b", arg: 2, scope: !2603, file: !2, line: 559, type: !84)
!2609 = !DILocalVariable(name: "x", arg: 3, scope: !2603, file: !2, line: 559, type: !84)
!2610 = !DILocalVariable(name: "result", arg: 4, scope: !2603, file: !2, line: 559, type: !2549)
!2611 = !DILocalVariable(name: "maxiter", scope: !2612, file: !2, line: 566, type: !83)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 565, column: 8)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 561, column: 6)
!2614 = !DILocalVariable(name: "sum", scope: !2612, file: !2, line: 567, type: !85)
!2615 = !DILocalVariable(name: "pk", scope: !2612, file: !2, line: 568, type: !85)
!2616 = !DILocalVariable(name: "rhok", scope: !2612, file: !2, line: 569, type: !85)
!2617 = !DILocalVariable(name: "k", scope: !2612, file: !2, line: 570, type: !33)
!2618 = !DILocalVariable(name: "ak", scope: !2619, file: !2, line: 572, type: !85)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 571, column: 30)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !2, line: 571, column: 5)
!2621 = distinct !DILexicalBlock(scope: !2612, file: !2, line: 571, column: 5)
!2622 = !DILocation(line: 0, scope: !2603)
!2623 = !DILocation(line: 561, column: 8, scope: !2613)
!2624 = !DILocation(line: 561, column: 6, scope: !2603)
!2625 = !DILocation(line: 571, column: 5, scope: !2621)
!2626 = !DILocation(line: 0, scope: !2612)
!2627 = !DILocation(line: 562, column: 13, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 561, column: 16)
!2629 = !DILocation(line: 563, column: 5, scope: !2628)
!2630 = !DILocation(line: 572, column: 24, scope: !2619)
!2631 = !DILocation(line: 572, column: 26, scope: !2619)
!2632 = !DILocation(line: 572, column: 36, scope: !2619)
!2633 = !DILocation(line: 572, column: 41, scope: !2619)
!2634 = !DILocation(line: 572, column: 28, scope: !2619)
!2635 = !DILocation(line: 0, scope: !2619)
!2636 = !DILocation(line: 573, column: 14, scope: !2619)
!2637 = !DILocation(line: 573, column: 17, scope: !2619)
!2638 = !DILocation(line: 573, column: 40, scope: !2619)
!2639 = !DILocation(line: 573, column: 30, scope: !2619)
!2640 = !DILocation(line: 574, column: 11, scope: !2619)
!2641 = !DILocation(line: 576, column: 17, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 576, column: 10)
!2643 = !DILocation(line: 576, column: 10, scope: !2642)
!2644 = !DILocation(line: 576, column: 23, scope: !2642)
!2645 = !DILocation(line: 578, column: 16, scope: !2612)
!2646 = !DILocation(line: 578, column: 23, scope: !2612)
!2647 = !DILocation(line: 578, column: 13, scope: !2612)
!2648 = !DILocation(line: 579, column: 8, scope: !2612)
!2649 = !DILocation(line: 571, column: 26, scope: !2620)
!2650 = !DILocation(line: 571, column: 15, scope: !2620)
!2651 = distinct !{!2651, !2625, !2652, !481}
!2652 = !DILocation(line: 577, column: 5, scope: !2621)
!2653 = !DILocation(line: 580, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 580, column: 7)
!2655 = distinct !DILexicalBlock(scope: !2612, file: !2, line: 579, column: 8)
!2656 = !DILocation(line: 0, scope: !2613)
!2657 = !DILocation(line: 584, column: 1, scope: !2603)
!2658 = !DISubprogram(name: "exp", scope: !1262, file: !1262, line: 95, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2659 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !2660, file: !2660, line: 474, type: !2661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2660 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!33, !85, !85, !86}
!2663 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2546, file: !2546, line: 47, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!33, !85, !86}
!2666 = !DISubprogram(name: "sqrt", scope: !1262, file: !1262, line: 143, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2667 = !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !2660, file: !2660, line: 155, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2668 = !DISubprogram(name: "pow", scope: !1262, file: !1262, line: 140, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2669 = !DISubprogram(name: "gsl_sf_bessel_In_scaled", scope: !2660, file: !2660, line: 165, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!85, !83, !84}
!2672 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !231, file: !231, line: 110, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2673 = !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !2660, file: !2660, line: 55, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2674 = !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !2675, file: !2675, line: 62, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2675 = !DIFile(filename: "../gsl/gsl_sf_laguerre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "58c60843776affae828c7538cacd7802")
!2676 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !2546, file: !2546, line: 136, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!33, !2679, !86}
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!2681 = !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !2546, file: !2546, line: 254, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2682 = !DISubprogram(name: "gsl_sf_beta_e", scope: !2546, file: !2546, line: 266, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2683 = distinct !DISubprogram(name: "hyperg_1F1_largebx", scope: !2, file: !2, line: 148, type: !2684, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2685)
!2684 = !DISubroutineType(cc: DW_CC_nocall, types: !241)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2686 = !DILocalVariable(name: "a", arg: 1, scope: !2683, file: !2, line: 148, type: !84)
!2687 = !DILocalVariable(name: "b", arg: 2, scope: !2683, file: !2, line: 148, type: !84)
!2688 = !DILocalVariable(name: "x", arg: 3, scope: !2683, file: !2, line: 148, type: !84)
!2689 = !DILocalVariable(name: "result", arg: 4, scope: !2683, file: !2, line: 148, type: !86)
!2690 = !DILocalVariable(name: "y", scope: !2683, file: !2, line: 150, type: !85)
!2691 = !DILocalVariable(name: "f", scope: !2683, file: !2, line: 151, type: !85)
!2692 = !DILocalVariable(name: "t1", scope: !2683, file: !2, line: 152, type: !85)
!2693 = !DILocalVariable(name: "t2", scope: !2683, file: !2, line: 153, type: !85)
!2694 = !DILocalVariable(name: "t3", scope: !2683, file: !2, line: 154, type: !85)
!2695 = !DILocation(line: 0, scope: !2683)
!2696 = !DILocation(line: 150, column: 15, scope: !2683)
!2697 = !DILocation(line: 151, column: 18, scope: !2683)
!2698 = !DILocation(line: 151, column: 27, scope: !2683)
!2699 = !DILocation(line: 151, column: 21, scope: !2683)
!2700 = !DILocation(line: 151, column: 20, scope: !2683)
!2701 = !DILocation(line: 151, column: 14, scope: !2683)
!2702 = !DILocation(line: 152, column: 19, scope: !2683)
!2703 = !DILocation(line: 152, column: 31, scope: !2683)
!2704 = !DILocation(line: 152, column: 15, scope: !2683)
!2705 = !DILocation(line: 152, column: 42, scope: !2683)
!2706 = !DILocation(line: 152, column: 36, scope: !2683)
!2707 = !DILocation(line: 152, column: 35, scope: !2683)
!2708 = !DILocation(line: 153, column: 21, scope: !2683)
!2709 = !DILocation(line: 153, column: 23, scope: !2683)
!2710 = !DILocation(line: 153, column: 17, scope: !2683)
!2711 = !DILocation(line: 153, column: 37, scope: !2683)
!2712 = !DILocation(line: 153, column: 39, scope: !2683)
!2713 = !DILocation(line: 153, column: 43, scope: !2683)
!2714 = !DILocation(line: 153, column: 42, scope: !2683)
!2715 = !DILocation(line: 153, column: 27, scope: !2683)
!2716 = !DILocation(line: 153, column: 63, scope: !2683)
!2717 = !DILocation(line: 153, column: 60, scope: !2683)
!2718 = !DILocation(line: 153, column: 68, scope: !2683)
!2719 = !DILocation(line: 153, column: 73, scope: !2683)
!2720 = !DILocation(line: 153, column: 75, scope: !2683)
!2721 = !DILocation(line: 153, column: 79, scope: !2683)
!2722 = !DILocation(line: 153, column: 82, scope: !2683)
!2723 = !DILocation(line: 153, column: 84, scope: !2683)
!2724 = !DILocation(line: 153, column: 54, scope: !2683)
!2725 = !DILocation(line: 154, column: 22, scope: !2683)
!2726 = !DILocation(line: 154, column: 24, scope: !2683)
!2727 = !DILocation(line: 154, column: 26, scope: !2683)
!2728 = !DILocation(line: 154, column: 29, scope: !2683)
!2729 = !DILocation(line: 154, column: 28, scope: !2683)
!2730 = !DILocation(line: 154, column: 18, scope: !2683)
!2731 = !DILocation(line: 154, column: 41, scope: !2683)
!2732 = !DILocation(line: 154, column: 78, scope: !2683)
!2733 = !DILocation(line: 154, column: 96, scope: !2683)
!2734 = !DILocation(line: 154, column: 92, scope: !2683)
!2735 = !DILocation(line: 154, column: 74, scope: !2683)
!2736 = !DILocation(line: 154, column: 71, scope: !2683)
!2737 = !DILocation(line: 154, column: 68, scope: !2683)
!2738 = !DILocation(line: 154, column: 65, scope: !2683)
!2739 = !DILocation(line: 154, column: 56, scope: !2683)
!2740 = !DILocation(line: 154, column: 122, scope: !2683)
!2741 = !DILocation(line: 154, column: 121, scope: !2683)
!2742 = !DILocation(line: 154, column: 52, scope: !2683)
!2743 = !DILocation(line: 154, column: 43, scope: !2683)
!2744 = !DILocation(line: 155, column: 29, scope: !2683)
!2745 = !DILocation(line: 155, column: 34, scope: !2683)
!2746 = !DILocation(line: 155, column: 19, scope: !2683)
!2747 = !DILocation(line: 155, column: 15, scope: !2683)
!2748 = !DILocation(line: 156, column: 25, scope: !2683)
!2749 = !DILocation(line: 156, column: 19, scope: !2683)
!2750 = !DILocation(line: 156, column: 18, scope: !2683)
!2751 = !DILocation(line: 156, column: 50, scope: !2683)
!2752 = !DILocation(line: 156, column: 49, scope: !2683)
!2753 = !DILocation(line: 156, column: 11, scope: !2683)
!2754 = !DILocation(line: 156, column: 15, scope: !2683)
!2755 = !DILocation(line: 157, column: 3, scope: !2683)
!2756 = distinct !DISubprogram(name: "hyperg_1F1_large2bm4a", scope: !2, file: !2, line: 167, type: !240, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2758 = !DILocalVariable(name: "a", arg: 1, scope: !2756, file: !2, line: 167, type: !84)
!2759 = !DILocalVariable(name: "b", arg: 2, scope: !2756, file: !2, line: 167, type: !84)
!2760 = !DILocalVariable(name: "x", arg: 3, scope: !2756, file: !2, line: 167, type: !84)
!2761 = !DILocalVariable(name: "result", arg: 4, scope: !2756, file: !2, line: 167, type: !86)
!2762 = !DILocalVariable(name: "eta", scope: !2756, file: !2, line: 169, type: !85)
!2763 = !DILocalVariable(name: "cos2th", scope: !2756, file: !2, line: 170, type: !85)
!2764 = !DILocalVariable(name: "sin2th", scope: !2756, file: !2, line: 171, type: !85)
!2765 = !DILocalVariable(name: "th", scope: !2756, file: !2, line: 172, type: !85)
!2766 = !DILocalVariable(name: "pre_h", scope: !2756, file: !2, line: 173, type: !85)
!2767 = !DILocalVariable(name: "lg_b", scope: !2756, file: !2, line: 174, type: !87)
!2768 = !DILocalVariable(name: "stat_lg", scope: !2756, file: !2, line: 175, type: !33)
!2769 = !DILocalVariable(name: "t1", scope: !2756, file: !2, line: 176, type: !85)
!2770 = !DILocalVariable(name: "t2", scope: !2756, file: !2, line: 177, type: !85)
!2771 = !DILocalVariable(name: "lnpre_val", scope: !2756, file: !2, line: 178, type: !85)
!2772 = !DILocalVariable(name: "lnpre_err", scope: !2756, file: !2, line: 179, type: !85)
!2773 = !DILocalVariable(name: "s1", scope: !2756, file: !2, line: 188, type: !85)
!2774 = !DILocalVariable(name: "s2", scope: !2756, file: !2, line: 189, type: !85)
!2775 = !DILocalVariable(name: "ser_val", scope: !2756, file: !2, line: 191, type: !85)
!2776 = !DILocalVariable(name: "ser_err", scope: !2756, file: !2, line: 192, type: !85)
!2777 = !DILocalVariable(name: "stat_e", scope: !2756, file: !2, line: 193, type: !33)
!2778 = distinct !DIAssignID()
!2779 = !DILocation(line: 0, scope: !2756)
!2780 = !DILocation(line: 169, column: 22, scope: !2756)
!2781 = !DILocation(line: 169, column: 30, scope: !2756)
!2782 = !DILocation(line: 170, column: 20, scope: !2756)
!2783 = !DILocation(line: 172, column: 20, scope: !2756)
!2784 = !DILocation(line: 173, column: 33, scope: !2756)
!2785 = !DILocation(line: 173, column: 37, scope: !2756)
!2786 = !DILocation(line: 173, column: 41, scope: !2756)
!2787 = !DILocation(line: 173, column: 48, scope: !2756)
!2788 = !DILocation(line: 174, column: 3, scope: !2756)
!2789 = !DILocation(line: 175, column: 17, scope: !2756)
!2790 = !DILocation(line: 176, column: 18, scope: !2756)
!2791 = !DILocation(line: 176, column: 35, scope: !2756)
!2792 = !DILocation(line: 176, column: 37, scope: !2756)
!2793 = !DILocation(line: 176, column: 26, scope: !2756)
!2794 = !DILocation(line: 177, column: 19, scope: !2756)
!2795 = !DILocation(line: 178, column: 27, scope: !2756)
!2796 = !DILocation(line: 178, column: 36, scope: !2756)
!2797 = !DILocation(line: 178, column: 39, scope: !2756)
!2798 = !DILocation(line: 178, column: 44, scope: !2756)
!2799 = !DILocation(line: 179, column: 27, scope: !2756)
!2800 = !DILocation(line: 179, column: 58, scope: !2756)
!2801 = !DILocation(line: 179, column: 72, scope: !2756)
!2802 = !DILocation(line: 179, column: 83, scope: !2756)
!2803 = !DILocation(line: 179, column: 55, scope: !2756)
!2804 = !DILocation(line: 188, column: 20, scope: !2756)
!2805 = !DILocation(line: 189, column: 23, scope: !2756)
!2806 = !DILocation(line: 189, column: 32, scope: !2756)
!2807 = !DILocation(line: 189, column: 27, scope: !2756)
!2808 = !DILocation(line: 189, column: 15, scope: !2756)
!2809 = !DILocation(line: 192, column: 45, scope: !2756)
!2810 = !DILocation(line: 192, column: 56, scope: !2756)
!2811 = !DILocation(line: 192, column: 42, scope: !2756)
!2812 = !DILocation(line: 193, column: 16, scope: !2756)
!2813 = !DILocation(line: 196, column: 10, scope: !2756)
!2814 = !DILocation(line: 197, column: 1, scope: !2756)
!2815 = !DILocation(line: 196, column: 3, scope: !2756)
!2816 = distinct !DISubprogram(name: "hyperg_1F1_luke", scope: !2, file: !2, line: 209, type: !2684, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2818 = !DILocalVariable(name: "a", arg: 1, scope: !2816, file: !2, line: 209, type: !84)
!2819 = !DILocalVariable(name: "c", arg: 2, scope: !2816, file: !2, line: 209, type: !84)
!2820 = !DILocalVariable(name: "xin", arg: 3, scope: !2816, file: !2, line: 209, type: !84)
!2821 = !DILocalVariable(name: "result", arg: 4, scope: !2816, file: !2, line: 210, type: !86)
!2822 = !DILocalVariable(name: "RECUR_BIG", scope: !2816, file: !2, line: 212, type: !84)
!2823 = !DILocalVariable(name: "nmax", scope: !2816, file: !2, line: 213, type: !83)
!2824 = !DILocalVariable(name: "n", scope: !2816, file: !2, line: 214, type: !33)
!2825 = !DILocalVariable(name: "x", scope: !2816, file: !2, line: 215, type: !84)
!2826 = !DILocalVariable(name: "x3", scope: !2816, file: !2, line: 216, type: !84)
!2827 = !DILocalVariable(name: "t0", scope: !2816, file: !2, line: 217, type: !84)
!2828 = !DILocalVariable(name: "t1", scope: !2816, file: !2, line: 218, type: !84)
!2829 = !DILocalVariable(name: "t2", scope: !2816, file: !2, line: 219, type: !84)
!2830 = !DILocalVariable(name: "F", scope: !2816, file: !2, line: 220, type: !85)
!2831 = !DILocalVariable(name: "prec", scope: !2816, file: !2, line: 221, type: !85)
!2832 = !DILocalVariable(name: "Bnm3", scope: !2816, file: !2, line: 223, type: !85)
!2833 = !DILocalVariable(name: "Bnm2", scope: !2816, file: !2, line: 224, type: !85)
!2834 = !DILocalVariable(name: "Bnm1", scope: !2816, file: !2, line: 225, type: !85)
!2835 = !DILocalVariable(name: "Anm3", scope: !2816, file: !2, line: 227, type: !85)
!2836 = !DILocalVariable(name: "Anm2", scope: !2816, file: !2, line: 228, type: !85)
!2837 = !DILocalVariable(name: "Anm1", scope: !2816, file: !2, line: 229, type: !85)
!2838 = !DILocalVariable(name: "npam1", scope: !2839, file: !2, line: 232, type: !85)
!2839 = distinct !DILexicalBlock(scope: !2816, file: !2, line: 231, column: 12)
!2840 = !DILocalVariable(name: "npcm1", scope: !2839, file: !2, line: 233, type: !85)
!2841 = !DILocalVariable(name: "npam2", scope: !2839, file: !2, line: 234, type: !85)
!2842 = !DILocalVariable(name: "npcm2", scope: !2839, file: !2, line: 235, type: !85)
!2843 = !DILocalVariable(name: "tnm1", scope: !2839, file: !2, line: 236, type: !85)
!2844 = !DILocalVariable(name: "tnm3", scope: !2839, file: !2, line: 237, type: !85)
!2845 = !DILocalVariable(name: "tnm5", scope: !2839, file: !2, line: 238, type: !85)
!2846 = !DILocalVariable(name: "F1", scope: !2839, file: !2, line: 239, type: !85)
!2847 = !DILocalVariable(name: "F2", scope: !2839, file: !2, line: 240, type: !85)
!2848 = !DILocalVariable(name: "F3", scope: !2839, file: !2, line: 241, type: !85)
!2849 = !DILocalVariable(name: "E", scope: !2839, file: !2, line: 242, type: !85)
!2850 = !DILocalVariable(name: "An", scope: !2839, file: !2, line: 244, type: !85)
!2851 = !DILocalVariable(name: "Bn", scope: !2839, file: !2, line: 245, type: !85)
!2852 = !DILocalVariable(name: "r", scope: !2839, file: !2, line: 246, type: !85)
!2853 = !DILocation(line: 0, scope: !2816)
!2854 = !DILocation(line: 215, column: 21, scope: !2816)
!2855 = !DILocation(line: 216, column: 22, scope: !2816)
!2856 = !DILocation(line: 216, column: 24, scope: !2816)
!2857 = !DILocation(line: 217, column: 22, scope: !2816)
!2858 = !DILocation(line: 218, column: 33, scope: !2816)
!2859 = !DILocation(line: 218, column: 28, scope: !2816)
!2860 = !DILocation(line: 219, column: 36, scope: !2816)
!2861 = !DILocation(line: 219, column: 33, scope: !2816)
!2862 = !DILocation(line: 219, column: 28, scope: !2816)
!2863 = !DILocation(line: 224, column: 21, scope: !2816)
!2864 = !DILocation(line: 225, column: 26, scope: !2816)
!2865 = !DILocation(line: 225, column: 41, scope: !2816)
!2866 = !DILocation(line: 225, column: 37, scope: !2816)
!2867 = !DILocation(line: 225, column: 30, scope: !2816)
!2868 = !DILocation(line: 228, column: 22, scope: !2816)
!2869 = !DILocation(line: 229, column: 32, scope: !2816)
!2870 = !DILocation(line: 229, column: 26, scope: !2816)
!2871 = !DILocation(line: 229, column: 22, scope: !2816)
!2872 = !DILocation(line: 229, column: 47, scope: !2816)
!2873 = !DILocation(line: 229, column: 56, scope: !2816)
!2874 = !DILocation(line: 229, column: 52, scope: !2816)
!2875 = !DILocation(line: 229, column: 66, scope: !2816)
!2876 = !DILocation(line: 229, column: 42, scope: !2816)
!2877 = !DILocation(line: 231, column: 3, scope: !2816)
!2878 = !DILocation(line: 229, column: 10, scope: !2816)
!2879 = !DILocation(line: 228, column: 10, scope: !2816)
!2880 = !DILocation(line: 227, column: 10, scope: !2816)
!2881 = !DILocation(line: 225, column: 10, scope: !2816)
!2882 = !DILocation(line: 224, column: 10, scope: !2816)
!2883 = !DILocation(line: 223, column: 10, scope: !2816)
!2884 = !DILocation(line: 214, column: 7, scope: !2816)
!2885 = !DILocation(line: 232, column: 20, scope: !2839)
!2886 = !DILocation(line: 232, column: 26, scope: !2839)
!2887 = !DILocation(line: 233, column: 22, scope: !2839)
!2888 = !DILocation(line: 0, scope: !2839)
!2889 = !DILocation(line: 233, column: 26, scope: !2839)
!2890 = !DILocation(line: 234, column: 26, scope: !2839)
!2891 = !DILocation(line: 235, column: 26, scope: !2839)
!2892 = !DILocation(line: 236, column: 21, scope: !2839)
!2893 = !DILocation(line: 236, column: 24, scope: !2839)
!2894 = !DILocation(line: 236, column: 20, scope: !2839)
!2895 = !DILocation(line: 237, column: 24, scope: !2839)
!2896 = !DILocation(line: 237, column: 20, scope: !2839)
!2897 = !DILocation(line: 238, column: 24, scope: !2839)
!2898 = !DILocation(line: 238, column: 20, scope: !2839)
!2899 = !DILocation(line: 239, column: 22, scope: !2839)
!2900 = !DILocation(line: 239, column: 30, scope: !2839)
!2901 = !DILocation(line: 239, column: 35, scope: !2839)
!2902 = !DILocation(line: 239, column: 26, scope: !2839)
!2903 = !DILocation(line: 240, column: 23, scope: !2839)
!2904 = !DILocation(line: 240, column: 34, scope: !2839)
!2905 = !DILocation(line: 240, column: 39, scope: !2839)
!2906 = !DILocation(line: 240, column: 44, scope: !2839)
!2907 = !DILocation(line: 240, column: 50, scope: !2839)
!2908 = !DILocation(line: 240, column: 30, scope: !2839)
!2909 = !DILocation(line: 241, column: 17, scope: !2839)
!2910 = !DILocation(line: 241, column: 23, scope: !2839)
!2911 = !DILocation(line: 241, column: 29, scope: !2839)
!2912 = !DILocation(line: 241, column: 42, scope: !2839)
!2913 = !DILocation(line: 241, column: 47, scope: !2839)
!2914 = !DILocation(line: 241, column: 52, scope: !2839)
!2915 = !DILocation(line: 241, column: 57, scope: !2839)
!2916 = !DILocation(line: 241, column: 65, scope: !2839)
!2917 = !DILocation(line: 241, column: 71, scope: !2839)
!2918 = !DILocation(line: 241, column: 38, scope: !2839)
!2919 = !DILocation(line: 242, column: 17, scope: !2839)
!2920 = !DILocation(line: 242, column: 28, scope: !2839)
!2921 = !DILocation(line: 242, column: 23, scope: !2839)
!2922 = !DILocation(line: 242, column: 41, scope: !2839)
!2923 = !DILocation(line: 242, column: 47, scope: !2839)
!2924 = !DILocation(line: 242, column: 32, scope: !2839)
!2925 = !DILocation(line: 244, column: 21, scope: !2839)
!2926 = !DILocation(line: 244, column: 27, scope: !2839)
!2927 = !DILocation(line: 244, column: 38, scope: !2839)
!2928 = !DILocation(line: 244, column: 45, scope: !2839)
!2929 = !DILocation(line: 244, column: 47, scope: !2839)
!2930 = !DILocation(line: 244, column: 57, scope: !2839)
!2931 = !DILocation(line: 244, column: 60, scope: !2839)
!2932 = !DILocation(line: 245, column: 27, scope: !2839)
!2933 = !DILocation(line: 245, column: 47, scope: !2839)
!2934 = !DILocation(line: 245, column: 60, scope: !2839)
!2935 = !DILocation(line: 246, column: 18, scope: !2839)
!2936 = !DILocation(line: 248, column: 24, scope: !2839)
!2937 = !DILocation(line: 248, column: 12, scope: !2839)
!2938 = !DILocation(line: 251, column: 13, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2839, file: !2, line: 251, column: 8)
!2940 = !DILocation(line: 251, column: 31, scope: !2939)
!2941 = !DILocation(line: 253, column: 8, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2839, file: !2, line: 253, column: 8)
!2943 = !DILocation(line: 253, column: 17, scope: !2942)
!2944 = !DILocation(line: 253, column: 29, scope: !2942)
!2945 = !DILocation(line: 253, column: 32, scope: !2942)
!2946 = !DILocation(line: 253, column: 41, scope: !2942)
!2947 = !DILocation(line: 253, column: 8, scope: !2839)
!2948 = !DILocation(line: 254, column: 12, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !2, line: 253, column: 54)
!2950 = !DILocation(line: 255, column: 12, scope: !2949)
!2951 = !DILocation(line: 256, column: 12, scope: !2949)
!2952 = !DILocation(line: 257, column: 12, scope: !2949)
!2953 = !DILocation(line: 258, column: 12, scope: !2949)
!2954 = !DILocation(line: 259, column: 12, scope: !2949)
!2955 = !DILocation(line: 262, column: 5, scope: !2949)
!2956 = !DILocation(line: 263, column: 22, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2942, file: !2, line: 263, column: 13)
!2958 = !DILocation(line: 263, column: 38, scope: !2957)
!2959 = !DILocation(line: 264, column: 12, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !2, line: 263, column: 67)
!2961 = !DILocation(line: 265, column: 12, scope: !2960)
!2962 = !DILocation(line: 266, column: 12, scope: !2960)
!2963 = !DILocation(line: 267, column: 12, scope: !2960)
!2964 = !DILocation(line: 268, column: 12, scope: !2960)
!2965 = !DILocation(line: 269, column: 12, scope: !2960)
!2966 = !DILocation(line: 272, column: 5, scope: !2960)
!2967 = !DILocation(line: 274, column: 6, scope: !2839)
!2968 = !DILocation(line: 283, column: 16, scope: !2816)
!2969 = !DILocation(line: 284, column: 31, scope: !2816)
!2970 = !DILocation(line: 284, column: 24, scope: !2816)
!2971 = !DILocation(line: 284, column: 22, scope: !2816)
!2972 = !DILocation(line: 284, column: 11, scope: !2816)
!2973 = !DILocation(line: 285, column: 44, scope: !2816)
!2974 = !DILocation(line: 285, column: 40, scope: !2816)
!2975 = !DILocation(line: 285, column: 52, scope: !2816)
!2976 = !DILocation(line: 285, column: 50, scope: !2816)
!2977 = !DILocation(line: 285, column: 15, scope: !2816)
!2978 = !DILocation(line: 287, column: 3, scope: !2816)
!2979 = !DILocation(line: 0, scope: !1588)
!2980 = !DILocation(line: 301, column: 3, scope: !1588)
!2981 = !DILocation(line: 302, column: 19, scope: !1601)
!2982 = !DILocation(line: 302, column: 14, scope: !1601)
!2983 = !DILocation(line: 302, column: 10, scope: !1601)
!2984 = !DILocation(line: 304, column: 36, scope: !1601)
!2985 = !DILocation(line: 304, column: 35, scope: !1601)
!2986 = !DILocation(line: 304, column: 65, scope: !1601)
!2987 = !DILocation(line: 304, column: 64, scope: !1601)
!2988 = !DILocation(line: 304, column: 13, scope: !1601)
!2989 = !DILocation(line: 305, column: 7, scope: !1601)
!2990 = !DILocation(line: 301, column: 18, scope: !1588)
!2991 = !DILocation(line: 301, column: 9, scope: !1588)
!2992 = !DILocation(line: 301, column: 28, scope: !1588)
!2993 = distinct !{!2993, !2980, !2994, !481}
!2994 = !DILocation(line: 306, column: 3, scope: !1588)
!2995 = !DILocation(line: 307, column: 16, scope: !1588)
!2996 = !DILocation(line: 308, column: 11, scope: !1588)
!2997 = !DILocation(line: 309, column: 22, scope: !1588)
!2998 = !DILocation(line: 309, column: 15, scope: !1588)
!2999 = !DILocation(line: 310, column: 3, scope: !1588)
!3000 = !DISubprogram(name: "gsl_sf_exprel_e", scope: !231, file: !231, line: 83, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3001 = !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !231, file: !231, line: 91, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3002 = !DISubprogram(name: "log1p", scope: !1262, file: !1262, line: 122, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3003 = !DISubprogram(name: "acos", scope: !1262, file: !1262, line: 53, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3004 = !DISubprogram(name: "sin", scope: !1262, file: !1262, line: 64, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = distinct !DISubprogram(name: "hyperg_1F1_beps_bgt0", scope: !2, file: !2, line: 803, type: !240, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3022, !3023}
!3007 = !DILocalVariable(name: "eps", arg: 1, scope: !3005, file: !2, line: 803, type: !84)
!3008 = !DILocalVariable(name: "b", arg: 2, scope: !3005, file: !2, line: 803, type: !84)
!3009 = !DILocalVariable(name: "x", arg: 3, scope: !3005, file: !2, line: 803, type: !84)
!3010 = !DILocalVariable(name: "result", arg: 4, scope: !3005, file: !2, line: 803, type: !86)
!3011 = !DILocalVariable(name: "a", scope: !3012, file: !2, line: 820, type: !85)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 805, column: 55)
!3013 = distinct !DILexicalBlock(scope: !3005, file: !2, line: 805, column: 6)
!3014 = !DILocalVariable(name: "exab", scope: !3012, file: !2, line: 821, type: !87)
!3015 = !DILocalVariable(name: "stat_e", scope: !3012, file: !2, line: 822, type: !33)
!3016 = !DILocalVariable(name: "v2", scope: !3012, file: !2, line: 823, type: !85)
!3017 = !DILocalVariable(name: "v3", scope: !3012, file: !2, line: 824, type: !85)
!3018 = !DILocalVariable(name: "v", scope: !3012, file: !2, line: 825, type: !85)
!3019 = !DILocalVariable(name: "f", scope: !3012, file: !2, line: 826, type: !85)
!3020 = !DILocalVariable(name: "Kummer_1F1", scope: !3021, file: !2, line: 837, type: !87)
!3021 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 833, column: 8)
!3022 = !DILocalVariable(name: "stat_K", scope: !3021, file: !2, line: 838, type: !33)
!3023 = !DILocalVariable(name: "stat_e", scope: !3024, file: !2, line: 840, type: !33)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 839, column: 31)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 839, column: 8)
!3026 = distinct !DIAssignID()
!3027 = !DILocation(line: 0, scope: !3012)
!3028 = distinct !DIAssignID()
!3029 = !DILocation(line: 0, scope: !3021)
!3030 = !DILocation(line: 0, scope: !3005)
!3031 = !DILocation(line: 805, column: 10, scope: !3013)
!3032 = !DILocation(line: 805, column: 8, scope: !3013)
!3033 = !DILocation(line: 805, column: 18, scope: !3013)
!3034 = !DILocation(line: 821, column: 5, scope: !3012)
!3035 = !DILocation(line: 822, column: 32, scope: !3012)
!3036 = !DILocation(line: 822, column: 34, scope: !3012)
!3037 = !DILocation(line: 822, column: 18, scope: !3012)
!3038 = !DILocation(line: 823, column: 23, scope: !3012)
!3039 = !DILocation(line: 823, column: 25, scope: !3012)
!3040 = !DILocation(line: 823, column: 27, scope: !3012)
!3041 = !DILocation(line: 823, column: 18, scope: !3012)
!3042 = !DILocation(line: 824, column: 25, scope: !3012)
!3043 = !DILocation(line: 824, column: 18, scope: !3012)
!3044 = !DILocation(line: 824, column: 33, scope: !3012)
!3045 = !DILocation(line: 824, column: 35, scope: !3012)
!3046 = !DILocation(line: 824, column: 37, scope: !3012)
!3047 = !DILocation(line: 824, column: 39, scope: !3012)
!3048 = !DILocation(line: 824, column: 47, scope: !3012)
!3049 = !DILocation(line: 824, column: 28, scope: !3012)
!3050 = !DILocation(line: 825, column: 25, scope: !3012)
!3051 = !DILocation(line: 826, column: 27, scope: !3012)
!3052 = !DILocation(line: 826, column: 29, scope: !3012)
!3053 = !DILocation(line: 826, column: 31, scope: !3012)
!3054 = !DILocation(line: 827, column: 25, scope: !3012)
!3055 = !DILocation(line: 827, column: 29, scope: !3012)
!3056 = !DILocation(line: 827, column: 18, scope: !3012)
!3057 = !DILocation(line: 828, column: 25, scope: !3012)
!3058 = !DILocation(line: 828, column: 31, scope: !3012)
!3059 = !DILocation(line: 828, column: 29, scope: !3012)
!3060 = !DILocation(line: 828, column: 13, scope: !3012)
!3061 = !DILocation(line: 829, column: 20, scope: !3012)
!3062 = !DILocation(line: 829, column: 35, scope: !3012)
!3063 = !DILocation(line: 829, column: 62, scope: !3012)
!3064 = !DILocation(line: 829, column: 53, scope: !3012)
!3065 = !DILocation(line: 830, column: 44, scope: !3012)
!3066 = !DILocation(line: 830, column: 42, scope: !3012)
!3067 = !DILocation(line: 830, column: 17, scope: !3012)
!3068 = !DILocation(line: 832, column: 3, scope: !3013)
!3069 = !DILocation(line: 837, column: 5, scope: !3021)
!3070 = !DILocation(line: 838, column: 42, scope: !3021)
!3071 = !DILocation(line: 838, column: 51, scope: !3021)
!3072 = !DILocation(line: 838, column: 18, scope: !3021)
!3073 = !DILocation(line: 839, column: 19, scope: !3025)
!3074 = !DILocation(line: 839, column: 23, scope: !3025)
!3075 = !DILocation(line: 839, column: 8, scope: !3021)
!3076 = !DILocation(line: 840, column: 64, scope: !3024)
!3077 = !DILocation(line: 841, column: 72, scope: !3024)
!3078 = !DILocation(line: 840, column: 20, scope: !3024)
!3079 = !DILocation(line: 0, scope: !3024)
!3080 = !DILocation(line: 843, column: 14, scope: !3024)
!3081 = !DILocation(line: 847, column: 19, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 845, column: 10)
!3083 = !DILocation(line: 848, column: 7, scope: !3082)
!3084 = !DILocation(line: 0, scope: !3025)
!3085 = !DILocation(line: 850, column: 3, scope: !3013)
!3086 = !DILocation(line: 0, scope: !3013)
!3087 = !DILocation(line: 851, column: 1, scope: !3005)
!3088 = distinct !DISubprogram(name: "hyperg_1F1_U", scope: !2, file: !2, line: 1346, type: !240, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3136, !3137, !3138, !3139, !3141, !3142, !3143}
!3090 = !DILocalVariable(name: "a", arg: 1, scope: !3088, file: !2, line: 1346, type: !84)
!3091 = !DILocalVariable(name: "b", arg: 2, scope: !3088, file: !2, line: 1346, type: !84)
!3092 = !DILocalVariable(name: "x", arg: 3, scope: !3088, file: !2, line: 1346, type: !84)
!3093 = !DILocalVariable(name: "result", arg: 4, scope: !3088, file: !2, line: 1346, type: !86)
!3094 = !DILocalVariable(name: "bp", scope: !3088, file: !2, line: 1348, type: !84)
!3095 = !DILocalVariable(name: "ap", scope: !3088, file: !2, line: 1349, type: !84)
!3096 = !DILocalVariable(name: "lg_ap", scope: !3088, file: !2, line: 1351, type: !87)
!3097 = !DILocalVariable(name: "lg_bp", scope: !3088, file: !2, line: 1351, type: !87)
!3098 = !DILocalVariable(name: "sg_ap", scope: !3088, file: !2, line: 1352, type: !85)
!3099 = !DILocalVariable(name: "stat_lg0", scope: !3088, file: !2, line: 1353, type: !33)
!3100 = !DILocalVariable(name: "stat_lg1", scope: !3088, file: !2, line: 1354, type: !33)
!3101 = !DILocalVariable(name: "stat_lg2", scope: !3088, file: !2, line: 1355, type: !33)
!3102 = !DILocalVariable(name: "t1", scope: !3088, file: !2, line: 1356, type: !85)
!3103 = !DILocalVariable(name: "lnpre_val", scope: !3088, file: !2, line: 1357, type: !85)
!3104 = !DILocalVariable(name: "lnpre_err", scope: !3088, file: !2, line: 1358, type: !85)
!3105 = !DILocalVariable(name: "lg_2mbp", scope: !3088, file: !2, line: 1360, type: !87)
!3106 = !DILocalVariable(name: "lg_1papmbp", scope: !3088, file: !2, line: 1360, type: !87)
!3107 = !DILocalVariable(name: "sg_2mbp", scope: !3088, file: !2, line: 1361, type: !85)
!3108 = !DILocalVariable(name: "sg_1papmbp", scope: !3088, file: !2, line: 1361, type: !85)
!3109 = !DILocalVariable(name: "stat_lg3", scope: !3088, file: !2, line: 1362, type: !33)
!3110 = !DILocalVariable(name: "stat_lg4", scope: !3088, file: !2, line: 1363, type: !33)
!3111 = !DILocalVariable(name: "stat_lg5", scope: !3088, file: !2, line: 1364, type: !33)
!3112 = !DILocalVariable(name: "lnc1_val", scope: !3088, file: !2, line: 1365, type: !85)
!3113 = !DILocalVariable(name: "lnc1_err", scope: !3088, file: !2, line: 1366, type: !85)
!3114 = !DILocalVariable(name: "M", scope: !3088, file: !2, line: 1369, type: !87)
!3115 = !DILocalVariable(name: "U", scope: !3088, file: !2, line: 1370, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !88, line: 51, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !88, line: 46, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3117, file: !88, line: 47, baseType: !85, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !3117, file: !88, line: 48, baseType: !85, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !3117, file: !88, line: 49, baseType: !33, size: 32, offset: 128)
!3122 = !DILocalVariable(name: "stat_F", scope: !3088, file: !2, line: 1371, type: !33)
!3123 = !DILocalVariable(name: "stat_U", scope: !3088, file: !2, line: 1372, type: !33)
!3124 = !DILocalVariable(name: "stat_FU", scope: !3088, file: !2, line: 1373, type: !33)
!3125 = !DILocalVariable(name: "term_M", scope: !3088, file: !2, line: 1375, type: !3116)
!3126 = !DILocalVariable(name: "stat_e0", scope: !3088, file: !2, line: 1376, type: !33)
!3127 = !DILocalVariable(name: "ombp", scope: !3088, file: !2, line: 1380, type: !84)
!3128 = !DILocalVariable(name: "Uee_val", scope: !3088, file: !2, line: 1381, type: !84)
!3129 = !DILocalVariable(name: "Uee_err", scope: !3088, file: !2, line: 1382, type: !84)
!3130 = !DILocalVariable(name: "Mee_val", scope: !3088, file: !2, line: 1383, type: !84)
!3131 = !DILocalVariable(name: "Mee_err", scope: !3088, file: !2, line: 1384, type: !84)
!3132 = !DILocalVariable(name: "stat_e1", scope: !3088, file: !2, line: 1385, type: !33)
!3133 = !DILocalVariable(name: "factorM_val", scope: !3134, file: !2, line: 1391, type: !84)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1390, column: 25)
!3135 = distinct !DILexicalBlock(scope: !3088, file: !2, line: 1390, column: 6)
!3136 = !DILocalVariable(name: "factorM_err", scope: !3134, file: !2, line: 1392, type: !84)
!3137 = !DILocalVariable(name: "inner_val", scope: !3134, file: !2, line: 1393, type: !84)
!3138 = !DILocalVariable(name: "inner_err", scope: !3134, file: !2, line: 1394, type: !84)
!3139 = !DILocalVariable(name: "factorU_val", scope: !3140, file: !2, line: 1403, type: !84)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1402, column: 8)
!3141 = !DILocalVariable(name: "factorU_err", scope: !3140, file: !2, line: 1404, type: !84)
!3142 = !DILocalVariable(name: "inner_val", scope: !3140, file: !2, line: 1405, type: !84)
!3143 = !DILocalVariable(name: "inner_err", scope: !3140, file: !2, line: 1406, type: !84)
!3144 = distinct !DIAssignID()
!3145 = !DILocation(line: 0, scope: !3088)
!3146 = distinct !DIAssignID()
!3147 = distinct !DIAssignID()
!3148 = distinct !DIAssignID()
!3149 = distinct !DIAssignID()
!3150 = distinct !DIAssignID()
!3151 = distinct !DIAssignID()
!3152 = distinct !DIAssignID()
!3153 = distinct !DIAssignID()
!3154 = distinct !DIAssignID()
!3155 = !DILocation(line: 1349, column: 23, scope: !3088)
!3156 = !DILocation(line: 1349, column: 27, scope: !3088)
!3157 = !DILocation(line: 1351, column: 3, scope: !3088)
!3158 = !DILocation(line: 1352, column: 3, scope: !3088)
!3159 = !DILocation(line: 1353, column: 18, scope: !3088)
!3160 = !DILocation(line: 1354, column: 18, scope: !3088)
!3161 = !DILocation(line: 1355, column: 18, scope: !3088)
!3162 = !DILocation(line: 1356, column: 26, scope: !3088)
!3163 = !DILocation(line: 1356, column: 24, scope: !3088)
!3164 = !DILocation(line: 1357, column: 28, scope: !3088)
!3165 = !DILocation(line: 1357, column: 40, scope: !3088)
!3166 = !DILocation(line: 1357, column: 44, scope: !3088)
!3167 = !DILocation(line: 1358, column: 28, scope: !3088)
!3168 = !DILocation(line: 1358, column: 40, scope: !3088)
!3169 = !DILocation(line: 1358, column: 70, scope: !3088)
!3170 = !DILocation(line: 1358, column: 68, scope: !3088)
!3171 = !DILocation(line: 1360, column: 3, scope: !3088)
!3172 = !DILocation(line: 1361, column: 3, scope: !3088)
!3173 = !DILocation(line: 1362, column: 18, scope: !3088)
!3174 = !DILocation(line: 1363, column: 45, scope: !3088)
!3175 = !DILocation(line: 1363, column: 18, scope: !3088)
!3176 = !DILocation(line: 1364, column: 18, scope: !3088)
!3177 = !DILocation(line: 1365, column: 29, scope: !3088)
!3178 = !DILocation(line: 1365, column: 46, scope: !3088)
!3179 = !DILocation(line: 1366, column: 29, scope: !3088)
!3180 = !DILocation(line: 1366, column: 46, scope: !3088)
!3181 = !DILocation(line: 1367, column: 42, scope: !3088)
!3182 = !DILocation(line: 1367, column: 62, scope: !3088)
!3183 = !DILocation(line: 1367, column: 39, scope: !3088)
!3184 = !DILocation(line: 1369, column: 3, scope: !3088)
!3185 = !DILocation(line: 1370, column: 3, scope: !3088)
!3186 = !DILocation(line: 1371, column: 16, scope: !3088)
!3187 = !DILocation(line: 1372, column: 16, scope: !3088)
!3188 = !DILocation(line: 1373, column: 17, scope: !3088)
!3189 = !DILocation(line: 1375, column: 3, scope: !3088)
!3190 = !DILocation(line: 1377, column: 46, scope: !3088)
!3191 = !DILocation(line: 1377, column: 54, scope: !3088)
!3192 = !DILocation(line: 1377, column: 53, scope: !3088)
!3193 = !DILocation(line: 1377, column: 67, scope: !3088)
!3194 = !DILocation(line: 1377, column: 64, scope: !3088)
!3195 = !DILocation(line: 1377, column: 74, scope: !3088)
!3196 = !DILocation(line: 1376, column: 17, scope: !3088)
!3197 = !DILocation(line: 1381, column: 28, scope: !3088)
!3198 = !{!3199, !3200, i64 16}
!3199 = !{!"gsl_sf_result_e10_struct", !120, i64 0, !120, i64 8, !3200, i64 16}
!3200 = !{!"int", !121, i64 0}
!3201 = !DILocation(line: 1381, column: 26, scope: !3088)
!3202 = !DILocation(line: 1381, column: 31, scope: !3088)
!3203 = !DILocation(line: 1383, column: 33, scope: !3088)
!3204 = !DILocation(line: 1383, column: 26, scope: !3088)
!3205 = !DILocation(line: 1383, column: 36, scope: !3088)
!3206 = !DILocation(line: 1390, column: 14, scope: !3135)
!3207 = !DILocation(line: 1390, column: 6, scope: !3088)
!3208 = !DILocation(line: 1382, column: 50, scope: !3088)
!3209 = !DILocation(line: 1382, column: 48, scope: !3088)
!3210 = !DILocation(line: 1391, column: 32, scope: !3134)
!3211 = !DILocation(line: 0, scope: !3134)
!3212 = !DILocation(line: 1392, column: 57, scope: !3134)
!3213 = !DILocation(line: 1392, column: 54, scope: !3134)
!3214 = !DILocation(line: 1392, column: 84, scope: !3134)
!3215 = !DILocation(line: 1393, column: 37, scope: !3134)
!3216 = !{!3199, !120, i64 0}
!3217 = !DILocation(line: 1393, column: 40, scope: !3134)
!3218 = !DILocation(line: 1393, column: 62, scope: !3134)
!3219 = !DILocation(line: 1393, column: 59, scope: !3134)
!3220 = !DILocation(line: 1395, column: 16, scope: !3134)
!3221 = !{!3199, !120, i64 8}
!3222 = !DILocation(line: 1395, column: 19, scope: !3134)
!3223 = !DILocation(line: 1395, column: 34, scope: !3134)
!3224 = !DILocation(line: 1395, column: 49, scope: !3134)
!3225 = !DILocation(line: 1395, column: 45, scope: !3134)
!3226 = !DILocation(line: 1396, column: 9, scope: !3134)
!3227 = !DILocation(line: 1396, column: 26, scope: !3134)
!3228 = !DILocation(line: 1397, column: 28, scope: !3134)
!3229 = !DILocation(line: 1397, column: 59, scope: !3134)
!3230 = !DILocation(line: 1397, column: 25, scope: !3134)
!3231 = !DILocation(line: 1398, column: 46, scope: !3134)
!3232 = !DILocation(line: 1398, column: 65, scope: !3134)
!3233 = !DILocation(line: 1399, column: 40, scope: !3134)
!3234 = !DILocation(line: 1399, column: 45, scope: !3134)
!3235 = !DILocation(line: 1398, column: 15, scope: !3134)
!3236 = !DILocation(line: 1401, column: 3, scope: !3134)
!3237 = !DILocation(line: 1384, column: 50, scope: !3088)
!3238 = !DILocation(line: 1384, column: 48, scope: !3088)
!3239 = !DILocation(line: 1403, column: 32, scope: !3140)
!3240 = !DILocation(line: 0, scope: !3140)
!3241 = !DILocation(line: 1404, column: 57, scope: !3140)
!3242 = !DILocation(line: 1404, column: 54, scope: !3140)
!3243 = !DILocation(line: 1404, column: 84, scope: !3140)
!3244 = !DILocation(line: 1405, column: 37, scope: !3140)
!3245 = !DILocation(line: 1405, column: 47, scope: !3140)
!3246 = !DILocation(line: 1405, column: 62, scope: !3140)
!3247 = !DILocation(line: 1405, column: 59, scope: !3140)
!3248 = !DILocation(line: 1407, column: 16, scope: !3140)
!3249 = !DILocation(line: 1407, column: 46, scope: !3140)
!3250 = !DILocation(line: 1407, column: 43, scope: !3140)
!3251 = !DILocation(line: 1407, column: 22, scope: !3140)
!3252 = !DILocation(line: 1408, column: 18, scope: !3140)
!3253 = !DILocation(line: 1408, column: 30, scope: !3140)
!3254 = !DILocation(line: 1408, column: 9, scope: !3140)
!3255 = !DILocation(line: 1409, column: 28, scope: !3140)
!3256 = !DILocation(line: 1409, column: 47, scope: !3140)
!3257 = !DILocation(line: 1409, column: 25, scope: !3140)
!3258 = !DILocation(line: 1410, column: 46, scope: !3140)
!3259 = !DILocation(line: 1410, column: 65, scope: !3140)
!3260 = !DILocation(line: 1411, column: 40, scope: !3140)
!3261 = !DILocation(line: 1411, column: 45, scope: !3140)
!3262 = !DILocation(line: 1410, column: 15, scope: !3140)
!3263 = !DILocation(line: 0, scope: !3135)
!3264 = !DILocation(line: 1415, column: 10, scope: !3088)
!3265 = !DILocation(line: 1416, column: 1, scope: !3088)
!3266 = !DILocation(line: 1415, column: 3, scope: !3088)
!3267 = !DISubprogram(name: "gsl_sf_hyperg_U_e10_e", scope: !3268, file: !3268, line: 100, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3268 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!33, !84, !84, !84, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3272 = !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !231, file: !231, line: 130, type: !3273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!33, !84, !84, !84, !84, !3271}
