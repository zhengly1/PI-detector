; ModuleID = 'bessel_Knu.ll'
source_filename = "bessel_Knu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_e10_struct = type { double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Knu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Knu_scaled_e(nu, x, &result)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Knu_e(nu, x, &result)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_lnKnu_e(nu, x, &result)\00", align 1, !dbg !19

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Knu_scaled_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !75 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !102, metadata ptr %4, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !90, metadata !DIExpression()), !dbg !104
  %5 = fcmp ole double %1, 0.000000e+00, !dbg !105
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = or i1 %6, %5, !dbg !106
  br i1 %7, label %8, label %10, !dbg !106

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !107, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !107
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !107, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #5, !dbg !116
  br label %15, !dbg !116

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5, !dbg !118
  %11 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !119, !range !120
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !100, metadata !DIExpression()), !dbg !103
  %12 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef %2) #5, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !101, metadata !DIExpression()), !dbg !103
  %13 = icmp eq i32 %11, 0, !dbg !122
  %14 = select i1 %13, i32 %12, i32 %11, !dbg !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5, !dbg !123
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ 1, %8 ], [ %14, %10 ], !dbg !124
  ret i32 %16, !dbg !125
}

declare !dbg !126 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !131 {
  %4 = alloca double, align 8, !DIAssignID !158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !143, metadata !DIExpression(), metadata !158, metadata ptr %4, metadata !DIExpression()), !dbg !159
  %5 = alloca double, align 8, !DIAssignID !160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !144, metadata !DIExpression(), metadata !160, metadata ptr %5, metadata !DIExpression()), !dbg !159
  %6 = alloca double, align 8, !DIAssignID !161
  call void @llvm.dbg.assign(metadata i1 undef, metadata !145, metadata !DIExpression(), metadata !161, metadata ptr %6, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %0, metadata !136, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata double %1, metadata !137, metadata !DIExpression()), !dbg !162
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !138, metadata !DIExpression()), !dbg !162
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !163
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !164
  br i1 %9, label %10, label %13, !dbg !164

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !165, !tbaa !168
  %11 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !165
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !165, !tbaa !171
  %12 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !165
  store i32 0, ptr %12, align 8, !dbg !165, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, i32 noundef 1) #5, !dbg !173
  br label %59, !dbg !173

13:                                               ; preds = %3
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !175
  %14 = fptosi double %handler_result to i32, !dbg !175
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !139, metadata !DIExpression()), !dbg !159
  %15 = sitofp i32 %14 to double, !dbg !176
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %15), !dbg !177
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !142, metadata !DIExpression()), !dbg !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5, !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5, !dbg !177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !159
  %16 = fcmp olt double %1, 2.000000e+00, !dbg !178
  br i1 %16, label %17, label %19, !dbg !180

17:                                               ; preds = %13
  %18 = call i32 @gsl_sf_bessel_K_scaled_temme(double noundef %handler_result1, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #5, !dbg !181
  br label %21, !dbg !183

19:                                               ; preds = %13
  %20 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef %handler_result1, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #5, !dbg !184
  br label %21

21:                                               ; preds = %19, %17
  %22 = load double, ptr %4, align 8, !dbg !186, !tbaa !187
  tail call void @llvm.dbg.value(metadata double %22, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double poison, metadata !147, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !149, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %22, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !159
  %23 = icmp sgt i32 %14, 0, !dbg !188
  br i1 %23, label %24, label %51, !dbg !189

24:                                               ; preds = %21
  %25 = load double, ptr %5, align 8, !dbg !190, !tbaa !187
  tail call void @llvm.dbg.value(metadata double %25, metadata !147, metadata !DIExpression()), !dbg !159
  br label %26, !dbg !189

26:                                               ; preds = %41, %24
  %27 = phi double [ %44, %41 ], [ %22, %24 ]
  %28 = phi i32 [ %43, %41 ], [ 0, %24 ]
  %29 = phi i32 [ %49, %41 ], [ 0, %24 ]
  %30 = phi double [ %handler_result5, %41 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata double %27, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !150, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !149, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %30, metadata !147, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %27, metadata !148, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %30, metadata !146, metadata !DIExpression()), !dbg !159
  %31 = call double @llvm.fabs.f64(double %30), !dbg !191
  %32 = fcmp ogt double %31, 0x5FEFFFFFFFFFFFFF, !dbg !192
  br i1 %32, label %33, label %41, !dbg !193

33:                                               ; preds = %26
  %handler_result7 = call double @callHandler(i32 12, double %31, double %31), !dbg !194
  %34 = fdiv double %handler_result7, 0x40026BB1BBB55516, !dbg !194
  %35 = call double @llvm.floor.f64(double %34), !dbg !195
  tail call void @llvm.dbg.value(metadata double %35, metadata !151, metadata !DIExpression()), !dbg !196
  %36 = call double @pow(double noundef 1.000000e+01, double noundef %35) #5, !dbg !197
  tail call void @llvm.dbg.value(metadata double %36, metadata !157, metadata !DIExpression()), !dbg !196
  %37 = fdiv double %27, %36, !dbg !198
  tail call void @llvm.dbg.value(metadata double %37, metadata !148, metadata !DIExpression()), !dbg !159
  %38 = fdiv double %30, %36, !dbg !199
  tail call void @llvm.dbg.value(metadata double %38, metadata !146, metadata !DIExpression()), !dbg !159
  %39 = sitofp i32 %28 to double, !dbg !200
  %handler_result2 = call double @fAddHandlerDouble(double %35, double %39), !dbg !200
  %40 = fptosi double %handler_result2 to i32, !dbg !200
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !150, metadata !DIExpression()), !dbg !159
  br label %41, !dbg !201

41:                                               ; preds = %33, %26
  %42 = phi double [ %37, %33 ], [ %27, %26 ], !dbg !202
  %43 = phi i32 [ %40, %33 ], [ %28, %26 ], !dbg !159
  %44 = phi double [ %38, %33 ], [ %30, %26 ], !dbg !202
  tail call void @llvm.dbg.value(metadata double %44, metadata !146, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !150, metadata !DIExpression()), !dbg !159
  tail call void @llvm.dbg.value(metadata double %42, metadata !148, metadata !DIExpression()), !dbg !159
  %45 = sitofp i32 %29 to double, !dbg !203
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %45), !dbg !204
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 1.000000e+00), !dbg !205
  %46 = fmul double %handler_result4, 2.000000e+00, !dbg !205
  %47 = fdiv double %46, %1, !dbg !206
  %48 = fmul double %47, %44, !dbg !207
  %handler_result5 = call double @fAddHandlerDouble(double %42, double %48), !dbg !208
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !147, metadata !DIExpression()), !dbg !159
  %49 = add nuw nsw i32 %29, 1, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !149, metadata !DIExpression()), !dbg !159
  %50 = icmp eq i32 %49, %14, !dbg !188
  br i1 %50, label %51, label %26, !dbg !189, !llvm.loop !209

51:                                               ; preds = %41, %21
  %52 = phi i32 [ 0, %21 ], [ %43, %41 ], !dbg !159
  %53 = phi double [ %22, %21 ], [ %44, %41 ], !dbg !159
  store double %53, ptr %2, align 8, !dbg !212, !tbaa !168
  %handler_result6 = call double @fAddHandlerDouble(double %15, double 4.000000e+00), !dbg !213
  %54 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !213
  %55 = call double @llvm.fabs.f64(double %53), !dbg !214
  %56 = fmul double %54, %55, !dbg !215
  %57 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !216
  store double %56, ptr %57, align 8, !dbg !217, !tbaa !171
  %58 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !218
  store i32 %52, ptr %58, align 8, !dbg !219, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5, !dbg !220
  br label %59

59:                                               ; preds = %51, %10
  %60 = phi i32 [ 1, %10 ], [ 0, %51 ], !dbg !221
  ret i32 %60, !dbg !222
}

declare !dbg !223 i32 @gsl_sf_result_smash_e(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !228 i32 @gsl_sf_bessel_K_scaled_temme(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !233 i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !235 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !239 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Knu_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !242 {
  %4 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !250
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !251
  call void @llvm.dbg.assign(metadata i1 undef, metadata !247, metadata !DIExpression(), metadata !251, metadata ptr %5, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata double %0, metadata !244, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata double %1, metadata !245, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !253
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !250, metadata ptr %4, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr %5, metadata !90, metadata !DIExpression()), !dbg !256
  %6 = fcmp ole double %1, 0.000000e+00, !dbg !257
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = or i1 %7, %6, !dbg !258
  br i1 %8, label %9, label %11, !dbg !258

9:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !259, !tbaa !110, !DIAssignID !260
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !260, metadata ptr %5, metadata !DIExpression()), !dbg !252
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !259
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !259, !tbaa !115, !DIAssignID !261
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !261, metadata ptr %10, metadata !DIExpression()), !dbg !252
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #5, !dbg !262
  br label %19, !dbg !262

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5, !dbg !263
  %12 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !264, !range !120
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !254
  %13 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %4, ptr noundef nonnull %5) #5, !dbg !265
  call void @llvm.dbg.value(metadata i32 %13, metadata !101, metadata !DIExpression()), !dbg !254
  %14 = icmp eq i32 %12, 0, !dbg !266
  %15 = select i1 %14, i32 %13, i32 %12, !dbg !266
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5, !dbg !267
  %16 = load double, ptr %5, align 8, !dbg !268, !tbaa !110
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !dbg !269, !tbaa !115
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi double [ 0x7FF8000000000000, %9 ], [ %18, %11 ], !dbg !269
  %21 = phi double [ 0x7FF8000000000000, %9 ], [ %16, %11 ], !dbg !268
  %22 = phi i32 [ 1, %9 ], [ %15, %11 ], !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !248, metadata !DIExpression()), !dbg !252
  %23 = fneg double %1, !dbg !271
  %24 = call i32 @gsl_sf_exp_mult_err_e(double noundef %23, double noundef 0.000000e+00, double noundef %21, double noundef %20, ptr noundef %2) #5, !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !249, metadata !DIExpression()), !dbg !252
  %25 = icmp eq i32 %24, 0, !dbg !273
  %26 = select i1 %25, i32 %22, i32 %24, !dbg !273
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !274
  ret i32 %26, !dbg !275
}

declare !dbg !276 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_lnKnu_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !280 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !285, metadata !DIExpression(), metadata !300, metadata ptr %4, metadata !DIExpression()), !dbg !301
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !302
  call void @llvm.dbg.assign(metadata i1 undef, metadata !292, metadata !DIExpression(), metadata !302, metadata ptr %5, metadata !DIExpression()), !dbg !303
  %6 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !297, metadata !DIExpression(), metadata !304, metadata ptr %6, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata double %0, metadata !282, metadata !DIExpression()), !dbg !306
  tail call void @llvm.dbg.value(metadata double %1, metadata !283, metadata !DIExpression()), !dbg !306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !284, metadata !DIExpression()), !dbg !306
  %7 = fcmp ole double %1, 0.000000e+00, !dbg !307
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = or i1 %8, %7, !dbg !308
  br i1 %9, label %10, label %12, !dbg !308

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !309, !tbaa !110
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !309
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !309, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 1) #5, !dbg !312
  br label %69, !dbg !312

12:                                               ; preds = %3
  %13 = fcmp oeq double %0, 0.000000e+00, !dbg !314
  br i1 %13, label %14, label %28, !dbg !315

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !316
  %15 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef nonnull %4) #5, !dbg !317
  %16 = load double, ptr %4, align 8, !dbg !318, !tbaa !110
  %17 = call double @llvm.fabs.f64(double %16), !dbg !319
  %handler_result15 = call double @callHandler(i32 12, double %17, double %17), !dbg !320
  %handler_result = call double @fSubHandlerDouble(double %handler_result15, double %1), !dbg !320
  store double %handler_result, ptr %2, align 8, !dbg !320, !tbaa !110
  %18 = call double @llvm.fabs.f64(double %1), !dbg !321
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !322
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !323
  %21 = load double, ptr %20, align 8, !dbg !323, !tbaa !115
  %22 = load double, ptr %4, align 8, !dbg !324, !tbaa !110
  %23 = fdiv double %21, %22, !dbg !325
  %24 = call double @llvm.fabs.f64(double %23), !dbg !326
  %handler_result1 = call double @fAddHandlerDouble(double %19, double %24), !dbg !327
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !327
  %26 = call double @llvm.fabs.f64(double %handler_result), !dbg !328
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !329
  %handler_result2 = call double @fAddHandlerDouble(double %27, double %handler_result1), !dbg !330
  store double %handler_result2, ptr %25, align 8, !dbg !330, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !331
  br label %69

28:                                               ; preds = %12
  %29 = fcmp olt double %1, 2.000000e+00, !dbg !332
  %30 = fcmp ogt double %0, 1.000000e+00
  %31 = and i1 %30, %29, !dbg !333
  br i1 %31, label %32, label %52, !dbg !333

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !334
  %33 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %5) #5, !dbg !335
  %34 = fmul double %1, 5.000000e-01, !dbg !336
  %handler_result16 = call double @callHandler(i32 12, double %34, double %34), !dbg !337
  %35 = fmul double %handler_result16, %0, !dbg !337
  %handler_result3 = call double @fSubHandlerDouble(double 0xBFE62E42FEFA39EF, double %35), !dbg !338
  %36 = load double, ptr %5, align 8, !dbg !338, !tbaa !110
  %handler_result4 = call double @fAddHandlerDouble(double %36, double %handler_result3), !dbg !339
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !289, metadata !DIExpression()), !dbg !303
  %37 = fcmp ogt double %handler_result4, 0x40858E42FEFA39EF, !dbg !339
  br i1 %37, label %39, label %38, !dbg !340

38:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !341
  br label %52

39:                                               ; preds = %32
  %40 = fmul double %1, 2.500000e-01, !dbg !342
  %41 = fmul double %40, %1, !dbg !343
  tail call void @llvm.dbg.value(metadata double %41, metadata !293, metadata !DIExpression()), !dbg !344
  %handler_result5 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !345
  %42 = fdiv double %41, %handler_result5, !dbg !345
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %42), !dbg !346
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !296, metadata !DIExpression()), !dbg !344
  %43 = fcmp ogt double %0, 2.000000e+00, !dbg !346
  %handler_result7 = call double @fAddHandlerDouble(double %0, double -2.000000e+00), !dbg !348
  %44 = fdiv double %41, %handler_result7, !dbg !348
  %45 = fmul double %42, %44, !dbg !348
  %46 = select i1 %43, double %45, double -0.000000e+00, !dbg !348
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %46), !dbg !349
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !296, metadata !DIExpression()), !dbg !344
  %handler_result17 = call double @callHandler(i32 12, double %handler_result8, double %handler_result8), !dbg !350
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result17), !dbg !350
  store double %handler_result9, ptr %2, align 8, !dbg !350, !tbaa !110
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !351
  %48 = load double, ptr %47, align 8, !dbg !351, !tbaa !115
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !352
  %50 = call double @llvm.fabs.f64(double %handler_result9), !dbg !353
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !354
  %handler_result10 = call double @fAddHandlerDouble(double %48, double %51), !dbg !355
  store double %handler_result10, ptr %49, align 8, !dbg !355, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !341
  br label %69

52:                                               ; preds = %38, %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5, !dbg !356
  %53 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !357, !range !120
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !299, metadata !DIExpression()), !dbg !305
  %54 = load double, ptr %6, align 8, !dbg !358, !tbaa !168
  %55 = call double @llvm.fabs.f64(double %54), !dbg !359
  %handler_result18 = call double @callHandler(i32 12, double %55, double %55), !dbg !360
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result18, double %1), !dbg !360
  %56 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %6, i64 0, i32 2, !dbg !360
  %57 = load i32, ptr %56, align 8, !dbg !360, !tbaa !172
  %58 = sitofp i32 %57 to double, !dbg !361
  %59 = fmul double %58, 0x40026BB1BBB55516, !dbg !362
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %59), !dbg !363
  store double %handler_result12, ptr %2, align 8, !dbg !363, !tbaa !110
  %60 = call double @llvm.fabs.f64(double %1), !dbg !364
  %61 = fmul double %60, 0x3CB0000000000000, !dbg !365
  %62 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %6, i64 0, i32 1, !dbg !366
  %63 = load double, ptr %62, align 8, !dbg !366, !tbaa !171
  %64 = fdiv double %63, %54, !dbg !367
  %65 = call double @llvm.fabs.f64(double %64), !dbg !368
  %handler_result13 = call double @fAddHandlerDouble(double %61, double %65), !dbg !369
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !369
  %67 = call double @llvm.fabs.f64(double %handler_result12), !dbg !370
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !371
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %68), !dbg !372
  store double %handler_result14, ptr %66, align 8, !dbg !372, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5, !dbg !373
  br label %69

69:                                               ; preds = %52, %39, %14, %10
  %70 = phi i32 [ 1, %10 ], [ 0, %14 ], [ 0, %39 ], [ %53, %52 ], !dbg !306
  ret i32 %70, !dbg !374
}

declare !dbg !375 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !379 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Knu_scaled(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !383 {
  %3 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !391
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !392, metadata ptr %4, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %0, metadata !387, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %1, metadata !388, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !391, metadata ptr %3, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !397
  %5 = fcmp ole double %1, 0.000000e+00, !dbg !398
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = or i1 %6, %5, !dbg !399
  br i1 %7, label %8, label %10, !dbg !399

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !400, !tbaa !110, !DIAssignID !401
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !401, metadata ptr %4, metadata !DIExpression()), !dbg !393
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !400
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !400, !tbaa !115, !DIAssignID !402
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !402, metadata ptr %9, metadata !DIExpression()), !dbg !393
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #5, !dbg !403
  tail call void @llvm.dbg.value(metadata i32 1, metadata !390, metadata !DIExpression()), !dbg !393
  br label %16, !dbg !394

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5, !dbg !404
  %11 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !405, !range !120
  call void @llvm.dbg.value(metadata i32 %11, metadata !100, metadata !DIExpression()), !dbg !395
  %12 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %3, ptr noundef nonnull %4) #5, !dbg !406
  call void @llvm.dbg.value(metadata i32 %12, metadata !101, metadata !DIExpression()), !dbg !395
  %13 = icmp eq i32 %11, 0, !dbg !407
  %14 = select i1 %13, i32 %12, i32 %11, !dbg !407
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !390, metadata !DIExpression()), !dbg !393
  %15 = icmp eq i32 %14, 0, !dbg !409
  br i1 %15, label %18, label %16, !dbg !394

16:                                               ; preds = %10, %8
  %17 = phi i32 [ 1, %8 ], [ %14, %10 ]
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 178, i32 noundef %17) #5, !dbg !411
  br label %18, !dbg !411

18:                                               ; preds = %16, %10
  %19 = load double, ptr %4, align 8, !dbg !394, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !414
  ret double %19, !dbg !414
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Knu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !415 {
  %3 = alloca %struct.gsl_sf_result_e10_struct, align 8, !DIAssignID !421
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !422
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !419, metadata !DIExpression(), metadata !423, metadata ptr %5, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %0, metadata !417, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %1, metadata !418, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !425
  call void @llvm.dbg.assign(metadata i1 undef, metadata !247, metadata !DIExpression(), metadata !422, metadata ptr %4, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata double %0, metadata !244, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata double %1, metadata !245, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata ptr %5, metadata !246, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !91, metadata !DIExpression(), metadata !421, metadata ptr %3, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata double %0, metadata !88, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !431
  %6 = fcmp ole double %1, 0.000000e+00, !dbg !432
  %7 = fcmp olt double %0, 0.000000e+00
  %8 = or i1 %7, %6, !dbg !433
  br i1 %8, label %9, label %11, !dbg !433

9:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !434, !tbaa !110, !DIAssignID !435
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !435, metadata ptr %4, metadata !DIExpression()), !dbg !426
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !434
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !434, !tbaa !115, !DIAssignID !436
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !247, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !436, metadata ptr %10, metadata !DIExpression()), !dbg !426
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42, i32 noundef 1) #5, !dbg !437
  br label %19, !dbg !437

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5, !dbg !438
  %12 = call i32 @gsl_sf_bessel_Knu_scaled_e10_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !439, !range !120
  call void @llvm.dbg.value(metadata i32 %12, metadata !100, metadata !DIExpression()), !dbg !429
  %13 = call i32 @gsl_sf_result_smash_e(ptr noundef nonnull %3, ptr noundef nonnull %4) #5, !dbg !440
  call void @llvm.dbg.value(metadata i32 %13, metadata !101, metadata !DIExpression()), !dbg !429
  %14 = icmp eq i32 %12, 0, !dbg !441
  %15 = select i1 %14, i32 %13, i32 %12, !dbg !441
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5, !dbg !442
  %16 = load double, ptr %4, align 8, !dbg !443, !tbaa !110
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !dbg !444, !tbaa !115
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi double [ 0x7FF8000000000000, %9 ], [ %18, %11 ], !dbg !444
  %21 = phi double [ 0x7FF8000000000000, %9 ], [ %16, %11 ], !dbg !443
  %22 = phi i32 [ 1, %9 ], [ %15, %11 ], !dbg !445
  call void @llvm.dbg.value(metadata i32 %22, metadata !248, metadata !DIExpression()), !dbg !426
  %23 = fneg double %1, !dbg !446
  %24 = call i32 @gsl_sf_exp_mult_err_e(double noundef %23, double noundef 0.000000e+00, double noundef %21, double noundef %20, ptr noundef nonnull %5) #5, !dbg !447
  call void @llvm.dbg.value(metadata i32 %24, metadata !249, metadata !DIExpression()), !dbg !426
  %25 = icmp eq i32 %24, 0, !dbg !448
  %26 = select i1 %25, i32 %22, i32 %24, !dbg !448
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !420, metadata !DIExpression()), !dbg !424
  %27 = icmp eq i32 %26, 0, !dbg !450
  br i1 %27, label %29, label %28, !dbg !425

28:                                               ; preds = %19
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef %26) #5, !dbg !452
  br label %29, !dbg !452

29:                                               ; preds = %28, %19
  %30 = load double, ptr %5, align 8, !dbg !425, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !455
  ret double %30, !dbg !455
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_lnKnu(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !456 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !462
  call void @llvm.dbg.assign(metadata i1 undef, metadata !460, metadata !DIExpression(), metadata !462, metadata ptr %3, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %0, metadata !458, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %1, metadata !459, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !464
  %4 = call i32 @gsl_sf_bessel_lnKnu_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !464, !range !120
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !461, metadata !DIExpression()), !dbg !463
  %5 = icmp eq i32 %4, 0, !dbg !465
  br i1 %5, label %7, label %6, !dbg !464

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 188, i32 noundef 1) #5, !dbg !467
  br label %7, !dbg !467

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !464, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !470
  ret double %8, !dbg !470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Knu.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7a705e814c0375f1c986056dcca86061")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 43)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 36)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 38)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !66, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!28}
!66 = !{!0, !7, !9, !14, !19}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!74 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!75 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e", scope: !2, file: !2, line: 37, type: !76, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !87)
!76 = !DISubroutineType(types: !77)
!77 = !{!28, !78, !78, !80}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !79, size: 64, offset: 64)
!87 = !{!88, !89, !90, !91, !100, !101}
!88 = !DILocalVariable(name: "nu", arg: 1, scope: !75, file: !2, line: 37, type: !78)
!89 = !DILocalVariable(name: "x", arg: 2, scope: !75, file: !2, line: 37, type: !78)
!90 = !DILocalVariable(name: "result", arg: 3, scope: !75, file: !2, line: 37, type: !80)
!91 = !DILocalVariable(name: "result_e10", scope: !92, file: !2, line: 45, type: !94)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 44, column: 8)
!93 = distinct !DILexicalBlock(scope: !75, file: !2, line: 41, column: 6)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !82, line: 51, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !82, line: 46, size: 192, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !82, line: 47, baseType: !79, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !82, line: 48, baseType: !79, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !95, file: !82, line: 49, baseType: !28, size: 32, offset: 128)
!100 = !DILocalVariable(name: "status", scope: !92, file: !2, line: 46, type: !28)
!101 = !DILocalVariable(name: "status2", scope: !92, file: !2, line: 47, type: !28)
!102 = distinct !DIAssignID()
!103 = !DILocation(line: 0, scope: !92)
!104 = !DILocation(line: 0, scope: !75)
!105 = !DILocation(line: 41, column: 8, scope: !93)
!106 = !DILocation(line: 41, column: 15, scope: !93)
!107 = !DILocation(line: 42, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 42, column: 5)
!109 = distinct !DILexicalBlock(scope: !93, file: !2, line: 41, column: 28)
!110 = !{!111, !112, i64 0}
!111 = !{!"gsl_sf_result_struct", !112, i64 0, !112, i64 8}
!112 = !{!"double", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!111, !112, i64 8}
!116 = !DILocation(line: 42, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 42, column: 5)
!118 = !DILocation(line: 45, column: 5, scope: !92)
!119 = !DILocation(line: 46, column: 18, scope: !92)
!120 = !{i32 0, i32 2}
!121 = !DILocation(line: 47, column: 19, scope: !92)
!122 = !DILocation(line: 48, column: 12, scope: !92)
!123 = !DILocation(line: 49, column: 3, scope: !93)
!124 = !DILocation(line: 0, scope: !93)
!125 = !DILocation(line: 50, column: 1, scope: !75)
!126 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !28, !28}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!131 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_e10_e", scope: !2, file: !2, line: 53, type: !132, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !135)
!132 = !DISubroutineType(types: !133)
!133 = !{!28, !78, !78, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!135 = !{!136, !137, !138, !139, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !157}
!136 = !DILocalVariable(name: "nu", arg: 1, scope: !131, file: !2, line: 53, type: !78)
!137 = !DILocalVariable(name: "x", arg: 2, scope: !131, file: !2, line: 53, type: !78)
!138 = !DILocalVariable(name: "result", arg: 3, scope: !131, file: !2, line: 53, type: !134)
!139 = !DILocalVariable(name: "N", scope: !140, file: !2, line: 61, type: !28)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 60, column: 8)
!141 = distinct !DILexicalBlock(scope: !131, file: !2, line: 57, column: 6)
!142 = !DILocalVariable(name: "mu", scope: !140, file: !2, line: 62, type: !79)
!143 = !DILocalVariable(name: "K_mu", scope: !140, file: !2, line: 63, type: !79)
!144 = !DILocalVariable(name: "K_mup1", scope: !140, file: !2, line: 63, type: !79)
!145 = !DILocalVariable(name: "Kp_mu", scope: !140, file: !2, line: 63, type: !79)
!146 = !DILocalVariable(name: "K_nu", scope: !140, file: !2, line: 64, type: !79)
!147 = !DILocalVariable(name: "K_nup1", scope: !140, file: !2, line: 64, type: !79)
!148 = !DILocalVariable(name: "K_num1", scope: !140, file: !2, line: 64, type: !79)
!149 = !DILocalVariable(name: "n", scope: !140, file: !2, line: 65, type: !28)
!150 = !DILocalVariable(name: "e10", scope: !140, file: !2, line: 65, type: !28)
!151 = !DILocalVariable(name: "p", scope: !152, file: !2, line: 83, type: !79)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 82, column: 42)
!153 = distinct !DILexicalBlock(scope: !154, file: !2, line: 82, column: 11)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 78, column: 24)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 78, column: 5)
!156 = distinct !DILexicalBlock(scope: !140, file: !2, line: 78, column: 5)
!157 = !DILocalVariable(name: "factor", scope: !152, file: !2, line: 84, type: !79)
!158 = distinct !DIAssignID()
!159 = !DILocation(line: 0, scope: !140)
!160 = distinct !DIAssignID()
!161 = distinct !DIAssignID()
!162 = !DILocation(line: 0, scope: !131)
!163 = !DILocation(line: 57, column: 8, scope: !141)
!164 = !DILocation(line: 57, column: 15, scope: !141)
!165 = !DILocation(line: 58, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 58, column: 5)
!167 = distinct !DILexicalBlock(scope: !141, file: !2, line: 57, column: 28)
!168 = !{!169, !112, i64 0}
!169 = !{!"gsl_sf_result_e10_struct", !112, i64 0, !112, i64 8, !170, i64 16}
!170 = !{!"int", !113, i64 0}
!171 = !{!169, !112, i64 8}
!172 = !{!169, !170, i64 16}
!173 = !DILocation(line: 58, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !2, line: 58, column: 5)
!175 = !DILocation(line: 61, column: 13, scope: !140)
!176 = !DILocation(line: 62, column: 22, scope: !140)
!177 = !DILocation(line: 63, column: 5, scope: !140)
!178 = !DILocation(line: 67, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !140, file: !2, line: 67, column: 8)
!180 = !DILocation(line: 67, column: 8, scope: !140)
!181 = !DILocation(line: 68, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !2, line: 67, column: 17)
!183 = !DILocation(line: 69, column: 5, scope: !182)
!184 = !DILocation(line: 71, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !2, line: 70, column: 10)
!186 = !DILocation(line: 75, column: 14, scope: !140)
!187 = !{!112, !112, i64 0}
!188 = !DILocation(line: 78, column: 15, scope: !155)
!189 = !DILocation(line: 78, column: 5, scope: !156)
!190 = !DILocation(line: 76, column: 14, scope: !140)
!191 = !DILocation(line: 82, column: 11, scope: !153)
!192 = !DILocation(line: 82, column: 22, scope: !153)
!193 = !DILocation(line: 82, column: 11, scope: !154)
!194 = !DILocation(line: 83, column: 41, scope: !152)
!195 = !DILocation(line: 83, column: 20, scope: !152)
!196 = !DILocation(line: 0, scope: !152)
!197 = !DILocation(line: 84, column: 25, scope: !152)
!198 = !DILocation(line: 85, column: 16, scope: !152)
!199 = !DILocation(line: 86, column: 14, scope: !152)
!200 = !DILocation(line: 87, column: 13, scope: !152)
!201 = !DILocation(line: 88, column: 7, scope: !152)
!202 = !DILocation(line: 0, scope: !154)
!203 = !DILocation(line: 89, column: 24, scope: !154)
!204 = !DILocation(line: 89, column: 25, scope: !154)
!205 = !DILocation(line: 89, column: 19, scope: !154)
!206 = !DILocation(line: 89, column: 28, scope: !154)
!207 = !DILocation(line: 89, column: 31, scope: !154)
!208 = !DILocation(line: 78, column: 20, scope: !155)
!209 = distinct !{!209, !189, !210, !211}
!210 = !DILocation(line: 90, column: 5, scope: !156)
!211 = !{!"llvm.loop.mustprogress"}
!212 = !DILocation(line: 92, column: 17, scope: !140)
!213 = !DILocation(line: 93, column: 41, scope: !140)
!214 = !DILocation(line: 93, column: 55, scope: !140)
!215 = !DILocation(line: 93, column: 53, scope: !140)
!216 = !DILocation(line: 93, column: 13, scope: !140)
!217 = !DILocation(line: 93, column: 17, scope: !140)
!218 = !DILocation(line: 94, column: 13, scope: !140)
!219 = !DILocation(line: 94, column: 17, scope: !140)
!220 = !DILocation(line: 96, column: 3, scope: !141)
!221 = !DILocation(line: 0, scope: !141)
!222 = !DILocation(line: 97, column: 1, scope: !131)
!223 = !DISubprogram(name: "gsl_sf_result_smash_e", scope: !82, file: !82, line: 54, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!28, !226, !80}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!228 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_temme", scope: !229, file: !229, line: 34, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DIFile(filename: "./bessel_temme.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "896353903515c0fd2eba1477c11cb66c")
!230 = !DISubroutineType(types: !231)
!231 = !{!28, !78, !78, !232, !232, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!233 = !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !234, file: !234, line: 81, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!235 = !DISubprogram(name: "log", scope: !236, file: !236, line: 104, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!237 = !DISubroutineType(types: !238)
!238 = !{!79, !79}
!239 = !DISubprogram(name: "pow", scope: !236, file: !236, line: 140, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!79, !79, !79}
!242 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_e", scope: !2, file: !2, line: 101, type: !76, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !243)
!243 = !{!244, !245, !246, !247, !248, !249}
!244 = !DILocalVariable(name: "nu", arg: 1, scope: !242, file: !2, line: 101, type: !78)
!245 = !DILocalVariable(name: "x", arg: 2, scope: !242, file: !2, line: 101, type: !78)
!246 = !DILocalVariable(name: "result", arg: 3, scope: !242, file: !2, line: 101, type: !80)
!247 = !DILocalVariable(name: "b", scope: !242, file: !2, line: 103, type: !81)
!248 = !DILocalVariable(name: "stat_K", scope: !242, file: !2, line: 104, type: !28)
!249 = !DILocalVariable(name: "stat_e", scope: !242, file: !2, line: 105, type: !28)
!250 = distinct !DIAssignID()
!251 = distinct !DIAssignID()
!252 = !DILocation(line: 0, scope: !242)
!253 = !DILocation(line: 103, column: 3, scope: !242)
!254 = !DILocation(line: 0, scope: !92, inlinedAt: !255)
!255 = distinct !DILocation(line: 104, column: 16, scope: !242)
!256 = !DILocation(line: 0, scope: !75, inlinedAt: !255)
!257 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !255)
!258 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !255)
!259 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !255)
!260 = distinct !DIAssignID()
!261 = distinct !DIAssignID()
!262 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !255)
!263 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !255)
!264 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !255)
!265 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !255)
!266 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !255)
!267 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !255)
!268 = !DILocation(line: 105, column: 49, scope: !242)
!269 = !DILocation(line: 105, column: 56, scope: !242)
!270 = !DILocation(line: 0, scope: !93, inlinedAt: !255)
!271 = !DILocation(line: 105, column: 38, scope: !242)
!272 = !DILocation(line: 105, column: 16, scope: !242)
!273 = !DILocation(line: 106, column: 10, scope: !242)
!274 = !DILocation(line: 107, column: 1, scope: !242)
!275 = !DILocation(line: 106, column: 3, scope: !242)
!276 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !277, file: !277, line: 122, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!278 = !DISubroutineType(types: !279)
!279 = !{!28, !78, !78, !78, !78, !80}
!280 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu_e", scope: !2, file: !2, line: 111, type: !76, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !281)
!281 = !{!282, !283, !284, !285, !289, !292, !293, !296, !297, !299}
!282 = !DILocalVariable(name: "nu", arg: 1, scope: !280, file: !2, line: 111, type: !78)
!283 = !DILocalVariable(name: "x", arg: 2, scope: !280, file: !2, line: 111, type: !78)
!284 = !DILocalVariable(name: "result", arg: 3, scope: !280, file: !2, line: 111, type: !80)
!285 = !DILocalVariable(name: "K_scaled", scope: !286, file: !2, line: 119, type: !81)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 118, column: 22)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 118, column: 11)
!288 = distinct !DILexicalBlock(scope: !280, file: !2, line: 115, column: 6)
!289 = !DILocalVariable(name: "ln_bound", scope: !290, file: !2, line: 138, type: !79)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 130, column: 32)
!291 = distinct !DILexicalBlock(scope: !287, file: !2, line: 130, column: 11)
!292 = !DILocalVariable(name: "lg_nu", scope: !290, file: !2, line: 139, type: !81)
!293 = !DILocalVariable(name: "xi", scope: !294, file: !2, line: 145, type: !79)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 142, column: 43)
!295 = distinct !DILexicalBlock(scope: !290, file: !2, line: 142, column: 8)
!296 = !DILocalVariable(name: "sum", scope: !294, file: !2, line: 146, type: !79)
!297 = !DILocalVariable(name: "K_scaled", scope: !298, file: !2, line: 162, type: !94)
!298 = distinct !DILexicalBlock(scope: !280, file: !2, line: 157, column: 3)
!299 = !DILocalVariable(name: "status", scope: !298, file: !2, line: 163, type: !28)
!300 = distinct !DIAssignID()
!301 = !DILocation(line: 0, scope: !286)
!302 = distinct !DIAssignID()
!303 = !DILocation(line: 0, scope: !290)
!304 = distinct !DIAssignID()
!305 = !DILocation(line: 0, scope: !298)
!306 = !DILocation(line: 0, scope: !280)
!307 = !DILocation(line: 115, column: 8, scope: !288)
!308 = !DILocation(line: 115, column: 15, scope: !288)
!309 = !DILocation(line: 116, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 116, column: 5)
!311 = distinct !DILexicalBlock(scope: !288, file: !2, line: 115, column: 28)
!312 = !DILocation(line: 116, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !2, line: 116, column: 5)
!314 = !DILocation(line: 118, column: 14, scope: !287)
!315 = !DILocation(line: 118, column: 11, scope: !288)
!316 = !DILocation(line: 119, column: 5, scope: !286)
!317 = !DILocation(line: 124, column: 5, scope: !286)
!318 = !DILocation(line: 125, column: 43, scope: !286)
!319 = !DILocation(line: 125, column: 29, scope: !286)
!320 = !DILocation(line: 125, column: 18, scope: !286)
!321 = !DILocation(line: 126, column: 38, scope: !286)
!322 = !DILocation(line: 126, column: 36, scope: !286)
!323 = !DILocation(line: 126, column: 62, scope: !286)
!324 = !DILocation(line: 126, column: 75, scope: !286)
!325 = !DILocation(line: 126, column: 65, scope: !286)
!326 = !DILocation(line: 126, column: 48, scope: !286)
!327 = !DILocation(line: 126, column: 13, scope: !286)
!328 = !DILocation(line: 127, column: 38, scope: !286)
!329 = !DILocation(line: 127, column: 36, scope: !286)
!330 = !DILocation(line: 127, column: 17, scope: !286)
!331 = !DILocation(line: 129, column: 3, scope: !287)
!332 = !DILocation(line: 130, column: 13, scope: !291)
!333 = !DILocation(line: 130, column: 19, scope: !291)
!334 = !DILocation(line: 139, column: 5, scope: !290)
!335 = !DILocation(line: 140, column: 5, scope: !290)
!336 = !DILocation(line: 141, column: 35, scope: !290)
!337 = !DILocation(line: 141, column: 27, scope: !290)
!338 = !DILocation(line: 141, column: 47, scope: !290)
!339 = !DILocation(line: 142, column: 17, scope: !295)
!340 = !DILocation(line: 142, column: 8, scope: !290)
!341 = !DILocation(line: 154, column: 3, scope: !291)
!342 = !DILocation(line: 145, column: 24, scope: !294)
!343 = !DILocation(line: 145, column: 26, scope: !294)
!344 = !DILocation(line: 0, scope: !294)
!345 = !DILocation(line: 146, column: 28, scope: !294)
!346 = !DILocation(line: 147, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !294, file: !2, line: 147, column: 10)
!348 = !DILocation(line: 147, column: 10, scope: !294)
!349 = !DILocation(line: 148, column: 33, scope: !294)
!350 = !DILocation(line: 148, column: 20, scope: !294)
!351 = !DILocation(line: 149, column: 28, scope: !294)
!352 = !DILocation(line: 149, column: 15, scope: !294)
!353 = !DILocation(line: 150, column: 46, scope: !294)
!354 = !DILocation(line: 150, column: 44, scope: !294)
!355 = !DILocation(line: 150, column: 19, scope: !294)
!356 = !DILocation(line: 162, column: 5, scope: !298)
!357 = !DILocation(line: 163, column: 18, scope: !298)
!358 = !DILocation(line: 164, column: 43, scope: !298)
!359 = !DILocation(line: 164, column: 29, scope: !298)
!360 = !DILocation(line: 164, column: 60, scope: !298)
!361 = !DILocation(line: 164, column: 51, scope: !298)
!362 = !DILocation(line: 164, column: 64, scope: !298)
!363 = !DILocation(line: 164, column: 18, scope: !298)
!364 = !DILocation(line: 165, column: 38, scope: !298)
!365 = !DILocation(line: 165, column: 36, scope: !298)
!366 = !DILocation(line: 165, column: 62, scope: !298)
!367 = !DILocation(line: 165, column: 65, scope: !298)
!368 = !DILocation(line: 165, column: 48, scope: !298)
!369 = !DILocation(line: 165, column: 13, scope: !298)
!370 = !DILocation(line: 166, column: 38, scope: !298)
!371 = !DILocation(line: 166, column: 36, scope: !298)
!372 = !DILocation(line: 166, column: 17, scope: !298)
!373 = !DILocation(line: 168, column: 3, scope: !280)
!374 = !DILocation(line: 169, column: 1, scope: !280)
!375 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !376, file: !376, line: 218, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!377 = !DISubroutineType(types: !378)
!378 = !{!28, !78, !80}
!379 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !380, file: !380, line: 47, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!381 = !DISubroutineType(types: !382)
!382 = !{!28, !79, !80}
!383 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled", scope: !2, file: !2, line: 176, type: !384, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!79, !78, !78}
!386 = !{!387, !388, !389, !390}
!387 = !DILocalVariable(name: "nu", arg: 1, scope: !383, file: !2, line: 176, type: !78)
!388 = !DILocalVariable(name: "x", arg: 2, scope: !383, file: !2, line: 176, type: !78)
!389 = !DILocalVariable(name: "result", scope: !383, file: !2, line: 178, type: !81)
!390 = !DILocalVariable(name: "status", scope: !383, file: !2, line: 178, type: !28)
!391 = distinct !DIAssignID()
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !383)
!394 = !DILocation(line: 178, column: 3, scope: !383)
!395 = !DILocation(line: 0, scope: !92, inlinedAt: !396)
!396 = distinct !DILocation(line: 178, column: 3, scope: !383)
!397 = !DILocation(line: 0, scope: !75, inlinedAt: !396)
!398 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !396)
!399 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !396)
!400 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !396)
!401 = distinct !DIAssignID()
!402 = distinct !DIAssignID()
!403 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !396)
!404 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !396)
!405 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !396)
!406 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !396)
!407 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !396)
!408 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !396)
!409 = !DILocation(line: 178, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !383, file: !2, line: 178, column: 3)
!411 = !DILocation(line: 178, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 178, column: 3)
!413 = distinct !DILexicalBlock(scope: !410, file: !2, line: 178, column: 3)
!414 = !DILocation(line: 179, column: 1, scope: !383)
!415 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu", scope: !2, file: !2, line: 181, type: !384, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !416)
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "nu", arg: 1, scope: !415, file: !2, line: 181, type: !78)
!418 = !DILocalVariable(name: "x", arg: 2, scope: !415, file: !2, line: 181, type: !78)
!419 = !DILocalVariable(name: "result", scope: !415, file: !2, line: 183, type: !81)
!420 = !DILocalVariable(name: "status", scope: !415, file: !2, line: 183, type: !28)
!421 = distinct !DIAssignID()
!422 = distinct !DIAssignID()
!423 = distinct !DIAssignID()
!424 = !DILocation(line: 0, scope: !415)
!425 = !DILocation(line: 183, column: 3, scope: !415)
!426 = !DILocation(line: 0, scope: !242, inlinedAt: !427)
!427 = distinct !DILocation(line: 183, column: 3, scope: !415)
!428 = !DILocation(line: 103, column: 3, scope: !242, inlinedAt: !427)
!429 = !DILocation(line: 0, scope: !92, inlinedAt: !430)
!430 = distinct !DILocation(line: 104, column: 16, scope: !242, inlinedAt: !427)
!431 = !DILocation(line: 0, scope: !75, inlinedAt: !430)
!432 = !DILocation(line: 41, column: 8, scope: !93, inlinedAt: !430)
!433 = !DILocation(line: 41, column: 15, scope: !93, inlinedAt: !430)
!434 = !DILocation(line: 42, column: 5, scope: !108, inlinedAt: !430)
!435 = distinct !DIAssignID()
!436 = distinct !DIAssignID()
!437 = !DILocation(line: 42, column: 5, scope: !117, inlinedAt: !430)
!438 = !DILocation(line: 45, column: 5, scope: !92, inlinedAt: !430)
!439 = !DILocation(line: 46, column: 18, scope: !92, inlinedAt: !430)
!440 = !DILocation(line: 47, column: 19, scope: !92, inlinedAt: !430)
!441 = !DILocation(line: 48, column: 12, scope: !92, inlinedAt: !430)
!442 = !DILocation(line: 49, column: 3, scope: !93, inlinedAt: !430)
!443 = !DILocation(line: 105, column: 49, scope: !242, inlinedAt: !427)
!444 = !DILocation(line: 105, column: 56, scope: !242, inlinedAt: !427)
!445 = !DILocation(line: 0, scope: !93, inlinedAt: !430)
!446 = !DILocation(line: 105, column: 38, scope: !242, inlinedAt: !427)
!447 = !DILocation(line: 105, column: 16, scope: !242, inlinedAt: !427)
!448 = !DILocation(line: 106, column: 10, scope: !242, inlinedAt: !427)
!449 = !DILocation(line: 107, column: 1, scope: !242, inlinedAt: !427)
!450 = !DILocation(line: 183, column: 3, scope: !451)
!451 = distinct !DILexicalBlock(scope: !415, file: !2, line: 183, column: 3)
!452 = !DILocation(line: 183, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 183, column: 3)
!454 = distinct !DILexicalBlock(scope: !451, file: !2, line: 183, column: 3)
!455 = !DILocation(line: 184, column: 1, scope: !415)
!456 = distinct !DISubprogram(name: "gsl_sf_bessel_lnKnu", scope: !2, file: !2, line: 186, type: !384, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !457)
!457 = !{!458, !459, !460, !461}
!458 = !DILocalVariable(name: "nu", arg: 1, scope: !456, file: !2, line: 186, type: !78)
!459 = !DILocalVariable(name: "x", arg: 2, scope: !456, file: !2, line: 186, type: !78)
!460 = !DILocalVariable(name: "result", scope: !456, file: !2, line: 188, type: !81)
!461 = !DILocalVariable(name: "status", scope: !456, file: !2, line: 188, type: !28)
!462 = distinct !DIAssignID()
!463 = !DILocation(line: 0, scope: !456)
!464 = !DILocation(line: 188, column: 3, scope: !456)
!465 = !DILocation(line: 188, column: 3, scope: !466)
!466 = distinct !DILexicalBlock(scope: !456, file: !2, line: 188, column: 3)
!467 = !DILocation(line: 188, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !2, line: 188, column: 3)
!469 = distinct !DILexicalBlock(scope: !466, file: !2, line: 188, column: 3)
!470 = !DILocation(line: 189, column: 1, scope: !456)
