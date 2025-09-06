; ModuleID = 'ellint.ll'
source_filename = "ellint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@gsl_prec_eps = external local_unnamed_addr constant [0 x double], align 8
@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"ellint.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"too many iterations error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Kcomp_e(k, mode, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Ecomp_e(k, mode, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_Pcomp_e(k, n, mode, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Dcomp_e(k, mode, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_F_e(phi, k, mode, &result)\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_E_e(phi, k, mode, &result)\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [44 x i8] c"gsl_sf_ellint_P_e(phi, k, n, mode, &result)\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_D_e(phi, k, mode, &result)\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_RC_e(x, y, mode, &result)\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_RD_e(x, y, z, mode, &result)\00", align 1, !dbg !47
@.str.13 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_RF_e(x, y, z, mode, &result)\00", align 1, !dbg !49
@.str.14 = private unnamed_addr constant [46 x i8] c"gsl_sf_ellint_RJ_e(x, y, z, p, mode, &result)\00", align 1, !dbg !51

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RC_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !108 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !122, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata double %1, metadata !123, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !124, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !125, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata double 0x34000000000000, metadata !126, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata double 0x7FC9999999999999, metadata !128, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !150, metadata !DIExpression()), !dbg !155
  %5 = and i32 %2, 7, !dbg !157
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !129, metadata !DIExpression()), !dbg !149
  %6 = icmp eq i32 %5, 0, !dbg !158
  %7 = select i1 %6, double 1.000000e-03, double 3.000000e-02, !dbg !159
  tail call void @llvm.dbg.value(metadata double %7, metadata !133, metadata !DIExpression()), !dbg !149
  %8 = zext nneg i32 %5 to i64, !dbg !160
  %9 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %8, !dbg !160
  %10 = load double, ptr %9, align 8, !dbg !160, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %10, metadata !134, metadata !DIExpression()), !dbg !149
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !135, metadata !DIExpression()), !dbg !149
  %11 = fcmp olt double %0, 0.000000e+00, !dbg !165
  %12 = fcmp olt double %1, 0.000000e+00
  %13 = or i1 %11, %12, !dbg !166
  %handler_result = call double @fAddHandlerDouble(double %0, double %1)
  %14 = fcmp olt double %handler_result, 0x34000000000000
  %15 = or i1 %13, %14, !dbg !166
  br i1 %15, label %16, label %18, !dbg !166

16:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !167, !tbaa !170
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !167
  store double 0x7FF8000000000000, ptr %17, align 8, !dbg !167, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef 1) #6, !dbg !173
  br label %54, !dbg !173

18:                                               ; preds = %4
  %19 = fcmp ogt double %0, %1, !dbg !175
  %20 = select i1 %19, double %0, double %1, !dbg !175
  %21 = fcmp olt double %20, 0x7FC9999999999999, !dbg !176
  br i1 %21, label %22, label %52, !dbg !177

22:                                               ; preds = %30, %18
  %23 = phi double [ %36, %30 ], [ %1, %18 ], !dbg !178
  %24 = phi double [ %35, %30 ], [ %0, %18 ], !dbg !178
  %25 = phi i32 [ %37, %30 ], [ 0, %18 ], !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !148, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %24, metadata !142, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %23, metadata !143, metadata !DIExpression()), !dbg !178
  %handler_result1 = call double @fAddHandlerDouble(double %23, double %24), !dbg !179
  %handler_result2 = call double @fAddHandlerDouble(double %23, double %handler_result1), !dbg !181
  %26 = fdiv double %handler_result2, 3.000000e+00, !dbg !181
  tail call void @llvm.dbg.value(metadata double %26, metadata !144, metadata !DIExpression()), !dbg !178
  %handler_result3 = call double @fAddHandlerDouble(double %23, double %26), !dbg !182
  %27 = fdiv double %handler_result3, %26, !dbg !182
  %handler_result4 = call double @fAddHandlerDouble(double %27, double -2.000000e+00), !dbg !183
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !145, metadata !DIExpression()), !dbg !178
  %28 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !183
  %29 = fcmp olt double %28, %7, !dbg !185
  br i1 %29, label %41, label %30, !dbg !186

30:                                               ; preds = %22
  %31 = tail call double @sqrt(double noundef %24) #6, !dbg !187
  %32 = fmul double %31, 2.000000e+00, !dbg !188
  %33 = tail call double @sqrt(double noundef %23) #6, !dbg !189
  %34 = fmul double %32, %33, !dbg !190
  %handler_result5 = call double @fAddHandlerDouble(double %23, double %34), !dbg !191
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !146, metadata !DIExpression()), !dbg !178
  %handler_result6 = call double @fAddHandlerDouble(double %24, double %handler_result5), !dbg !192
  %35 = fmul double %handler_result6, 2.500000e-01, !dbg !192
  tail call void @llvm.dbg.value(metadata double %35, metadata !142, metadata !DIExpression()), !dbg !178
  %handler_result7 = call double @fAddHandlerDouble(double %23, double %handler_result5), !dbg !193
  %36 = fmul double %handler_result7, 2.500000e-01, !dbg !193
  tail call void @llvm.dbg.value(metadata double %36, metadata !143, metadata !DIExpression()), !dbg !178
  %37 = add nuw nsw i32 %25, 1, !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !148, metadata !DIExpression()), !dbg !178
  %38 = icmp eq i32 %37, 10000, !dbg !195
  br i1 %38, label %39, label %22, !dbg !197, !llvm.loop !198

39:                                               ; preds = %30
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !201, !tbaa !170
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !201
  store double 0x7FF8000000000000, ptr %40, align 8, !dbg !201, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 102, i32 noundef 11) #6, !dbg !204
  br label %54, !dbg !204

41:                                               ; preds = %22
  %42 = fmul double %handler_result4, %handler_result4, !dbg !206
  %43 = fmul double %handler_result4, 0x3FDA2E8BA2E8BA2F, !dbg !207
  %handler_result8 = call double @fAddHandlerDouble(double %43, double 3.750000e-01), !dbg !208
  %44 = fmul double %handler_result4, %handler_result8, !dbg !208
  %handler_result9 = call double @fAddHandlerDouble(double %44, double 0x3FC2492492492492), !dbg !209
  %45 = fmul double %handler_result4, %handler_result9, !dbg !209
  %handler_result10 = call double @fAddHandlerDouble(double %45, double 3.000000e-01), !dbg !210
  %46 = fmul double %42, %handler_result10, !dbg !210
  tail call void @llvm.dbg.value(metadata double %46, metadata !147, metadata !DIExpression()), !dbg !178
  %handler_result11 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !211
  %47 = tail call double @sqrt(double noundef %26) #6, !dbg !211
  %48 = fdiv double %handler_result11, %47, !dbg !212
  store double %48, ptr %3, align 8, !dbg !213, !tbaa !170
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !214
  %50 = fmul double %10, %49, !dbg !215
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !216
  store double %50, ptr %51, align 8, !dbg !217, !tbaa !172
  br label %54, !dbg !218

52:                                               ; preds = %18
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !219, !tbaa !170
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !219
  store double 0x7FF8000000000000, ptr %53, align 8, !dbg !219, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 1) #6, !dbg !222
  br label %54, !dbg !222

54:                                               ; preds = %52, %41, %39, %16
  %55 = phi i32 [ 1, %16 ], [ 1, %52 ], [ 0, %41 ], [ 11, %39 ], !dbg !224
  ret i32 %55, !dbg !225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !226 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !231 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RD_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !235 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !239, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %1, metadata !240, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double %2, metadata !241, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !242, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !243, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !150, metadata !DIExpression()), !dbg !281
  %6 = and i32 %3, 7, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !244, metadata !DIExpression()), !dbg !280
  %7 = icmp eq i32 %6, 0, !dbg !284
  %8 = select i1 %7, double 1.000000e-03, double 3.000000e-02, !dbg !285
  tail call void @llvm.dbg.value(metadata double %8, metadata !245, metadata !DIExpression()), !dbg !280
  %9 = zext nneg i32 %6 to i64, !dbg !286
  %10 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %9, !dbg !286
  %11 = load double, ptr %10, align 8, !dbg !286, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %11, metadata !246, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata double 0x155428A2F98D7321, metadata !247, metadata !DIExpression()), !dbg !280
  %12 = fmul double %8, 1.000000e-01, !dbg !287
  %13 = fmul double %12, 0x7FD0000000000000, !dbg !288
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #6, !dbg !289
  tail call void @llvm.dbg.value(metadata double %14, metadata !248, metadata !DIExpression()), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !249, metadata !DIExpression()), !dbg !280
  %15 = fcmp olt double %0, %1, !dbg !290
  %16 = select i1 %15, double %0, double %1, !dbg !290
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !291
  br i1 %17, label %22, label %18, !dbg !292

18:                                               ; preds = %5
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !293
  %19 = fcmp olt double %handler_result, %2, !dbg !293
  %20 = select i1 %19, double %handler_result, double %2, !dbg !293
  %21 = fcmp olt double %20, 0x155428A2F98D7321, !dbg !294
  br i1 %21, label %22, label %24, !dbg !295

22:                                               ; preds = %18, %5
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !296, !tbaa !170
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !296
  store double 0x7FF8000000000000, ptr %23, align 8, !dbg !296, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 1) #6, !dbg !299
  br label %90, !dbg !299

24:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double %0, metadata !301, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata double %1, metadata !306, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata double %2, metadata !307, metadata !DIExpression()), !dbg !309
  %25 = fcmp ogt double %0, %1, !dbg !311
  %26 = select i1 %25, double %0, double %1, !dbg !311
  tail call void @llvm.dbg.value(metadata double %26, metadata !308, metadata !DIExpression()), !dbg !309
  %27 = fcmp ogt double %26, %2, !dbg !312
  %28 = select i1 %27, double %26, double %2, !dbg !312
  %29 = fcmp olt double %28, %14, !dbg !313
  br i1 %29, label %30, label %88, !dbg !314

30:                                               ; preds = %50, %24
  %31 = phi double [ %58, %50 ], [ 1.000000e+00, %24 ], !dbg !315
  %32 = phi double [ %handler_result9, %50 ], [ 0.000000e+00, %24 ], !dbg !316
  %33 = phi i32 [ %62, %50 ], [ 0, %24 ], !dbg !317
  %34 = phi double [ %61, %50 ], [ %2, %24 ], !dbg !318
  %35 = phi double [ %60, %50 ], [ %1, %24 ], !dbg !319
  %36 = phi double [ %59, %50 ], [ %0, %24 ], !dbg !320
  tail call void @llvm.dbg.value(metadata double %36, metadata !257, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %35, metadata !258, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %34, metadata !259, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !273, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %32, metadata !260, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %31, metadata !261, metadata !DIExpression()), !dbg !321
  %handler_result1 = call double @fAddHandlerDouble(double %35, double %36), !dbg !322
  %37 = fmul double %34, 3.000000e+00, !dbg !322
  %handler_result2 = call double @fAddHandlerDouble(double %37, double %handler_result1), !dbg !323
  %38 = fmul double %handler_result2, 2.000000e-01, !dbg !323
  tail call void @llvm.dbg.value(metadata double %38, metadata !269, metadata !DIExpression()), !dbg !321
  %handler_result3 = call double @fSubHandlerDouble(double %38, double %36), !dbg !324
  %39 = fdiv double %handler_result3, %38, !dbg !324
  tail call void @llvm.dbg.value(metadata double %39, metadata !270, metadata !DIExpression()), !dbg !321
  %handler_result4 = call double @fSubHandlerDouble(double %38, double %35), !dbg !325
  %40 = fdiv double %handler_result4, %38, !dbg !325
  tail call void @llvm.dbg.value(metadata double %40, metadata !271, metadata !DIExpression()), !dbg !321
  %handler_result5 = call double @fSubHandlerDouble(double %38, double %34), !dbg !326
  %41 = fdiv double %handler_result5, %38, !dbg !326
  tail call void @llvm.dbg.value(metadata double %41, metadata !272, metadata !DIExpression()), !dbg !321
  %42 = tail call double @llvm.fabs.f64(double %39), !dbg !327
  %43 = tail call double @llvm.fabs.f64(double %40), !dbg !328
  %44 = tail call double @llvm.fabs.f64(double %41), !dbg !329
  tail call void @llvm.dbg.value(metadata double %42, metadata !301, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %43, metadata !306, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %44, metadata !307, metadata !DIExpression()), !dbg !330
  %45 = fcmp ogt double %42, %43, !dbg !332
  %46 = select i1 %45, double %42, double %43, !dbg !332
  tail call void @llvm.dbg.value(metadata double %46, metadata !308, metadata !DIExpression()), !dbg !330
  %47 = fcmp ogt double %46, %44, !dbg !333
  %48 = select i1 %47, double %46, double %44, !dbg !333
  tail call void @llvm.dbg.value(metadata double %48, metadata !279, metadata !DIExpression()), !dbg !334
  %49 = fcmp olt double %48, %8, !dbg !335
  br i1 %49, label %66, label %50, !dbg !337

50:                                               ; preds = %30
  %51 = tail call double @sqrt(double noundef %36) #6, !dbg !338
  tail call void @llvm.dbg.value(metadata double %51, metadata !274, metadata !DIExpression()), !dbg !334
  %52 = tail call double @sqrt(double noundef %35) #6, !dbg !339
  tail call void @llvm.dbg.value(metadata double %52, metadata !276, metadata !DIExpression()), !dbg !334
  %53 = tail call double @sqrt(double noundef %34) #6, !dbg !340
  tail call void @llvm.dbg.value(metadata double %53, metadata !277, metadata !DIExpression()), !dbg !334
  %handler_result6 = call double @fAddHandlerDouble(double %52, double %53), !dbg !341
  %54 = fmul double %51, %handler_result6, !dbg !341
  %55 = fmul double %52, %53, !dbg !342
  %handler_result7 = call double @fAddHandlerDouble(double %55, double %54), !dbg !343
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !278, metadata !DIExpression()), !dbg !334
  %handler_result8 = call double @fAddHandlerDouble(double %34, double %handler_result7), !dbg !344
  %56 = fmul double %53, %handler_result8, !dbg !344
  %57 = fdiv double %31, %56, !dbg !345
  %handler_result9 = call double @fAddHandlerDouble(double %32, double %57), !dbg !346
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !260, metadata !DIExpression()), !dbg !321
  %58 = fmul double %31, 2.500000e-01, !dbg !346
  tail call void @llvm.dbg.value(metadata double %58, metadata !261, metadata !DIExpression()), !dbg !321
  %handler_result10 = call double @fAddHandlerDouble(double %36, double %handler_result7), !dbg !347
  %59 = fmul double %handler_result10, 2.500000e-01, !dbg !347
  tail call void @llvm.dbg.value(metadata double %59, metadata !257, metadata !DIExpression()), !dbg !321
  %handler_result11 = call double @fAddHandlerDouble(double %35, double %handler_result7), !dbg !348
  %60 = fmul double %handler_result11, 2.500000e-01, !dbg !348
  tail call void @llvm.dbg.value(metadata double %60, metadata !258, metadata !DIExpression()), !dbg !321
  %61 = fmul double %handler_result8, 2.500000e-01, !dbg !349
  tail call void @llvm.dbg.value(metadata double %61, metadata !259, metadata !DIExpression()), !dbg !321
  %62 = add nuw nsw i32 %33, 1, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !273, metadata !DIExpression()), !dbg !321
  %63 = icmp eq i32 %62, 10000, !dbg !351
  br i1 %63, label %64, label %30, !dbg !353

64:                                               ; preds = %50
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !354, !tbaa !170
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !354
  store double 0x7FF8000000000000, ptr %65, align 8, !dbg !354, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 11) #6, !dbg !357
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !273, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !260, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !261, metadata !DIExpression()), !dbg !321
  br label %90

66:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata double poison, metadata !257, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !273, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %32, metadata !260, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %31, metadata !261, metadata !DIExpression()), !dbg !321
  %67 = fmul double %39, %40, !dbg !359
  tail call void @llvm.dbg.value(metadata double %67, metadata !262, metadata !DIExpression()), !dbg !321
  %68 = fmul double %41, %41, !dbg !360
  tail call void @llvm.dbg.value(metadata double %68, metadata !263, metadata !DIExpression()), !dbg !321
  %handler_result12 = call double @fSubHandlerDouble(double %67, double %68), !dbg !361
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !264, metadata !DIExpression()), !dbg !321
  %69 = fmul double %68, 6.000000e+00, !dbg !361
  %handler_result13 = call double @fSubHandlerDouble(double %67, double %69), !dbg !362
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !265, metadata !DIExpression()), !dbg !321
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result12, double %handler_result13), !dbg !363
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result12, double %handler_result14), !dbg !364
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !266, metadata !DIExpression()), !dbg !321
  %70 = fmul double %handler_result13, 0x3FBA2E8BA2E8BA2F, !dbg !364
  %handler_result16 = call double @fAddHandlerDouble(double %70, double 0xBFCB6DB6DB6DB6DB), !dbg !365
  %71 = fmul double %41, 0x3FC6276276276276, !dbg !365
  %72 = fmul double %71, %handler_result15, !dbg !366
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %72), !dbg !367
  %73 = fmul double %handler_result13, %handler_result17, !dbg !367
  tail call void @llvm.dbg.value(metadata double %73, metadata !267, metadata !DIExpression()), !dbg !321
  %74 = fmul double %handler_result15, 0x3FC5555555555555, !dbg !368
  %75 = fmul double %handler_result12, 0x3FDA2E8BA2E8BA2F, !dbg !369
  %76 = fmul double %41, 0x3FBD89D89D89D89E, !dbg !370
  %77 = fmul double %76, %67, !dbg !371
  %handler_result18 = call double @fSubHandlerDouble(double %77, double %75), !dbg !372
  %78 = fmul double %41, %handler_result18, !dbg !372
  %handler_result19 = call double @fAddHandlerDouble(double %78, double %74), !dbg !373
  %79 = fmul double %41, %handler_result19, !dbg !373
  tail call void @llvm.dbg.value(metadata double %79, metadata !268, metadata !DIExpression()), !dbg !321
  %80 = fmul double %32, 3.000000e+00, !dbg !374
  %handler_result20 = call double @fAddHandlerDouble(double %73, double 1.000000e+00), !dbg !375
  %handler_result21 = call double @fAddHandlerDouble(double %79, double %handler_result20), !dbg !376
  %81 = fmul double %31, %handler_result21, !dbg !376
  %82 = tail call double @sqrt(double noundef %38) #6, !dbg !377
  %83 = fmul double %38, %82, !dbg !378
  %84 = fdiv double %81, %83, !dbg !379
  %handler_result22 = call double @fAddHandlerDouble(double %80, double %84), !dbg !380
  store double %handler_result22, ptr %4, align 8, !dbg !380, !tbaa !170
  %85 = tail call double @llvm.fabs.f64(double %handler_result22), !dbg !381
  %86 = fmul double %11, %85, !dbg !382
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !383
  store double %86, ptr %87, align 8, !dbg !384, !tbaa !172
  br label %90, !dbg !385

88:                                               ; preds = %24
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !386, !tbaa !170
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !386
  store double 0x7FF8000000000000, ptr %89, align 8, !dbg !386, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 177, i32 noundef 1) #6, !dbg !389
  br label %90, !dbg !389

90:                                               ; preds = %88, %66, %64, %22
  %91 = phi i32 [ 1, %22 ], [ 1, %88 ], [ 0, %66 ], [ 11, %64 ]
  ret i32 %91, !dbg !391
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !392 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RF_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !395 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !397, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %1, metadata !398, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %2, metadata !399, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !400, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !401, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double 0x34000000000000, metadata !402, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double 0x7FC9999999999999, metadata !403, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !150, metadata !DIExpression()), !dbg !433
  %6 = and i32 %3, 7, !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !404, metadata !DIExpression()), !dbg !432
  %7 = icmp eq i32 %6, 0, !dbg !436
  %8 = select i1 %7, double 1.000000e-03, double 3.000000e-02, !dbg !437
  tail call void @llvm.dbg.value(metadata double %8, metadata !405, metadata !DIExpression()), !dbg !432
  %9 = zext nneg i32 %6 to i64, !dbg !438
  %10 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %9, !dbg !438
  %11 = load double, ptr %10, align 8, !dbg !438, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %11, metadata !406, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !407, metadata !DIExpression()), !dbg !432
  %12 = fcmp olt double %0, 0.000000e+00, !dbg !439
  %13 = fcmp olt double %1, 0.000000e+00
  %14 = or i1 %12, %13, !dbg !440
  %15 = fcmp olt double %2, 0.000000e+00
  %16 = or i1 %14, %15, !dbg !440
  br i1 %16, label %17, label %19, !dbg !440

17:                                               ; preds = %5
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !441, !tbaa !170
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !441
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !441, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 1) #6, !dbg !444
  br label %78, !dbg !444

19:                                               ; preds = %5
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !446
  %20 = fcmp olt double %handler_result, 0x34000000000000, !dbg !446
  %handler_result1 = call double @fAddHandlerDouble(double %0, double %2)
  %21 = fcmp olt double %handler_result1, 0x34000000000000
  %22 = or i1 %20, %21, !dbg !447
  %handler_result2 = call double @fAddHandlerDouble(double %1, double %2)
  %23 = fcmp olt double %handler_result2, 0x34000000000000
  %24 = or i1 %23, %22, !dbg !447
  br i1 %24, label %25, label %27, !dbg !447

25:                                               ; preds = %19
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !448, !tbaa !170
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !448
  store double 0x7FF8000000000000, ptr %26, align 8, !dbg !448, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 196, i32 noundef 1) #6, !dbg !451
  br label %78, !dbg !451

27:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata double %0, metadata !301, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double %1, metadata !306, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double %2, metadata !307, metadata !DIExpression()), !dbg !453
  %28 = fcmp ogt double %0, %1, !dbg !455
  %29 = select i1 %28, double %0, double %1, !dbg !455
  tail call void @llvm.dbg.value(metadata double %29, metadata !308, metadata !DIExpression()), !dbg !453
  %30 = fcmp ogt double %29, %2, !dbg !456
  %31 = select i1 %30, double %29, double %2, !dbg !456
  %32 = fcmp olt double %31, 0x7FC9999999999999, !dbg !457
  br i1 %32, label %33, label %76, !dbg !458

33:                                               ; preds = %50, %27
  %34 = phi i32 [ %59, %50 ], [ 0, %27 ], !dbg !459
  %35 = phi double [ %58, %50 ], [ %2, %27 ], !dbg !460
  %36 = phi double [ %57, %50 ], [ %1, %27 ], !dbg !461
  %37 = phi double [ %56, %50 ], [ %0, %27 ], !dbg !462
  tail call void @llvm.dbg.value(metadata double %37, metadata !415, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %36, metadata !416, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double %35, metadata !417, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !425, metadata !DIExpression()), !dbg !463
  %handler_result3 = call double @fAddHandlerDouble(double %36, double %37), !dbg !464
  %handler_result4 = call double @fAddHandlerDouble(double %35, double %handler_result3), !dbg !465
  %38 = fdiv double %handler_result4, 3.000000e+00, !dbg !465
  tail call void @llvm.dbg.value(metadata double %38, metadata !418, metadata !DIExpression()), !dbg !463
  %handler_result5 = call double @fAddHandlerDouble(double %37, double %38), !dbg !466
  %39 = fdiv double %handler_result5, %38, !dbg !466
  %handler_result6 = call double @fSubHandlerDouble(double 2.000000e+00, double %39), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !419, metadata !DIExpression()), !dbg !463
  %handler_result7 = call double @fAddHandlerDouble(double %36, double %38), !dbg !468
  %40 = fdiv double %handler_result7, %38, !dbg !468
  %handler_result8 = call double @fSubHandlerDouble(double 2.000000e+00, double %40), !dbg !469
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !420, metadata !DIExpression()), !dbg !463
  %handler_result9 = call double @fAddHandlerDouble(double %35, double %38), !dbg !470
  %41 = fdiv double %handler_result9, %38, !dbg !470
  %handler_result10 = call double @fSubHandlerDouble(double 2.000000e+00, double %41), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !421, metadata !DIExpression()), !dbg !463
  %42 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !471
  %43 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !472
  %44 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !473
  tail call void @llvm.dbg.value(metadata double %42, metadata !301, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata double %43, metadata !306, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata double %44, metadata !307, metadata !DIExpression()), !dbg !474
  %45 = fcmp ogt double %42, %43, !dbg !476
  %46 = select i1 %45, double %42, double %43, !dbg !476
  tail call void @llvm.dbg.value(metadata double %46, metadata !308, metadata !DIExpression()), !dbg !474
  %47 = fcmp ogt double %46, %44, !dbg !477
  %48 = select i1 %47, double %46, double %44, !dbg !477
  tail call void @llvm.dbg.value(metadata double %48, metadata !426, metadata !DIExpression()), !dbg !478
  %49 = fcmp olt double %48, %8, !dbg !479
  br i1 %49, label %63, label %50, !dbg !481

50:                                               ; preds = %33
  %51 = tail call double @sqrt(double noundef %37) #6, !dbg !482
  tail call void @llvm.dbg.value(metadata double %51, metadata !429, metadata !DIExpression()), !dbg !478
  %52 = tail call double @sqrt(double noundef %36) #6, !dbg !483
  tail call void @llvm.dbg.value(metadata double %52, metadata !430, metadata !DIExpression()), !dbg !478
  %53 = tail call double @sqrt(double noundef %35) #6, !dbg !484
  tail call void @llvm.dbg.value(metadata double %53, metadata !431, metadata !DIExpression()), !dbg !478
  %handler_result11 = call double @fAddHandlerDouble(double %52, double %53), !dbg !485
  %54 = fmul double %51, %handler_result11, !dbg !485
  %55 = fmul double %52, %53, !dbg !486
  %handler_result12 = call double @fAddHandlerDouble(double %55, double %54), !dbg !487
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !428, metadata !DIExpression()), !dbg !478
  %handler_result13 = call double @fAddHandlerDouble(double %37, double %handler_result12), !dbg !488
  %56 = fmul double %handler_result13, 2.500000e-01, !dbg !488
  tail call void @llvm.dbg.value(metadata double %56, metadata !415, metadata !DIExpression()), !dbg !463
  %handler_result14 = call double @fAddHandlerDouble(double %36, double %handler_result12), !dbg !489
  %57 = fmul double %handler_result14, 2.500000e-01, !dbg !489
  tail call void @llvm.dbg.value(metadata double %57, metadata !416, metadata !DIExpression()), !dbg !463
  %handler_result15 = call double @fAddHandlerDouble(double %35, double %handler_result12), !dbg !490
  %58 = fmul double %handler_result15, 2.500000e-01, !dbg !490
  tail call void @llvm.dbg.value(metadata double %58, metadata !417, metadata !DIExpression()), !dbg !463
  %59 = add nuw nsw i32 %34, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !425, metadata !DIExpression()), !dbg !463
  %60 = icmp eq i32 %59, 10000, !dbg !492
  br i1 %60, label %61, label %33, !dbg !494

61:                                               ; preds = %50
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !495, !tbaa !170
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !495
  store double 0x7FF8000000000000, ptr %62, align 8, !dbg !495, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 11) #6, !dbg !498
  tail call void @llvm.dbg.value(metadata double poison, metadata !415, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double poison, metadata !416, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double poison, metadata !417, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !425, metadata !DIExpression()), !dbg !463
  br label %78

63:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double poison, metadata !415, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double poison, metadata !416, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata double poison, metadata !417, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !425, metadata !DIExpression()), !dbg !463
  %64 = fmul double %handler_result6, %handler_result8, !dbg !500
  %65 = fmul double %handler_result10, %handler_result10, !dbg !501
  %handler_result16 = call double @fSubHandlerDouble(double %64, double %65), !dbg !502
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !422, metadata !DIExpression()), !dbg !463
  %66 = fmul double %handler_result10, %64, !dbg !502
  tail call void @llvm.dbg.value(metadata double %66, metadata !423, metadata !DIExpression()), !dbg !463
  %67 = fmul double %handler_result16, 0x3FA5555555555555, !dbg !503
  %handler_result17 = call double @fAddHandlerDouble(double %67, double -1.000000e-01), !dbg !504
  %68 = fmul double %66, 0x3FB1745D1745D174, !dbg !504
  %handler_result18 = call double @fSubHandlerDouble(double %handler_result17, double %68), !dbg !505
  %69 = fmul double %handler_result16, %handler_result18, !dbg !505
  %handler_result19 = call double @fAddHandlerDouble(double %69, double 1.000000e+00), !dbg !506
  %70 = fmul double %66, 0x3FB2492492492492, !dbg !506
  %handler_result20 = call double @fAddHandlerDouble(double %70, double %handler_result19), !dbg !507
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !424, metadata !DIExpression()), !dbg !463
  %71 = tail call double @sqrt(double noundef %38) #6, !dbg !507
  %72 = fdiv double %handler_result20, %71, !dbg !508
  store double %72, ptr %4, align 8, !dbg !509, !tbaa !170
  %73 = tail call double @llvm.fabs.f64(double %72), !dbg !510
  %74 = fmul double %11, %73, !dbg !511
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !512
  store double %74, ptr %75, align 8, !dbg !513, !tbaa !172
  br label %78, !dbg !514

76:                                               ; preds = %27
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !515, !tbaa !170
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !515
  store double 0x7FF8000000000000, ptr %77, align 8, !dbg !515, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 1) #6, !dbg !518
  br label %78, !dbg !518

78:                                               ; preds = %76, %63, %61, %25, %17
  %79 = phi i32 [ 1, %17 ], [ 1, %25 ], [ 1, %76 ], [ 0, %63 ], [ 11, %61 ]
  ret i32 %79, !dbg !520
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RJ_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !521 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !573, metadata !DIExpression(), metadata !575, metadata ptr %7, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata double %0, metadata !525, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata double %1, metadata !526, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata double %2, metadata !527, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata double %3, metadata !528, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !529, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !530, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !150, metadata !DIExpression()), !dbg !578
  %8 = and i32 %4, 7, !dbg !580
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !531, metadata !DIExpression()), !dbg !577
  %9 = icmp eq i32 %8, 0, !dbg !581
  %10 = select i1 %9, double 1.000000e-03, double 3.000000e-02, !dbg !582
  tail call void @llvm.dbg.value(metadata double %10, metadata !532, metadata !DIExpression()), !dbg !577
  %11 = zext nneg i32 %8 to i64, !dbg !583
  %12 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %11, !dbg !583
  %13 = load double, ptr %12, align 8, !dbg !583, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %13, metadata !533, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata double 0x2AB13C484138708E, metadata !534, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata double 0x551C4B19C41F715F, metadata !535, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !536, metadata !DIExpression()), !dbg !577
  %14 = fcmp olt double %0, 0.000000e+00, !dbg !584
  %15 = fcmp olt double %1, 0.000000e+00
  %16 = or i1 %14, %15, !dbg !585
  %17 = fcmp olt double %2, 0.000000e+00
  %18 = or i1 %16, %17, !dbg !585
  br i1 %18, label %19, label %21, !dbg !585

19:                                               ; preds = %6
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !586, !tbaa !170
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !586
  store double 0x7FF8000000000000, ptr %20, align 8, !dbg !586, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef 1) #6, !dbg !589
  br label %123, !dbg !589

21:                                               ; preds = %6
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !591
  %22 = fcmp olt double %handler_result, 0x2AB13C484138708E, !dbg !591
  %handler_result1 = call double @fAddHandlerDouble(double %0, double %2)
  %23 = fcmp olt double %handler_result1, 0x2AB13C484138708E
  %24 = or i1 %22, %23, !dbg !592
  %handler_result2 = call double @fAddHandlerDouble(double %1, double %2)
  %25 = fcmp olt double %handler_result2, 0x2AB13C484138708E
  %26 = or i1 %25, %24, !dbg !592
  %27 = fcmp olt double %3, 0x2AB13C484138708E
  %28 = or i1 %27, %26, !dbg !592
  br i1 %28, label %29, label %31, !dbg !592

29:                                               ; preds = %21
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !593, !tbaa !170
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !593
  store double 0x7FF8000000000000, ptr %30, align 8, !dbg !593, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #6, !dbg !596
  br label %123, !dbg !596

31:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata double %0, metadata !598, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %1, metadata !603, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %2, metadata !604, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %3, metadata !605, metadata !DIExpression()), !dbg !608
  %32 = fcmp ogt double %0, %1, !dbg !610
  %33 = select i1 %32, double %0, double %1, !dbg !610
  tail call void @llvm.dbg.value(metadata double %33, metadata !606, metadata !DIExpression()), !dbg !608
  %34 = fcmp ogt double %33, %2, !dbg !611
  %35 = select i1 %34, double %33, double %2, !dbg !611
  tail call void @llvm.dbg.value(metadata double %35, metadata !607, metadata !DIExpression()), !dbg !608
  %36 = fcmp ogt double %35, %3, !dbg !612
  %37 = select i1 %36, double %35, double %3, !dbg !612
  %38 = fcmp olt double %37, 0x551C4B19C41F715F, !dbg !613
  br i1 %38, label %39, label %121, !dbg !614

39:                                               ; preds = %85, %31
  %40 = phi i32 [ %79, %85 ], [ 0, %31 ], !dbg !615
  %41 = phi double [ %90, %85 ], [ 1.000000e+00, %31 ], !dbg !616
  %42 = phi double [ %handler_result20, %85 ], [ 0.000000e+00, %31 ], !dbg !617
  %43 = phi double [ %86, %85 ], [ %3, %31 ], !dbg !618
  %44 = phi double [ %87, %85 ], [ %2, %31 ], !dbg !619
  %45 = phi double [ %88, %85 ], [ %1, %31 ], !dbg !620
  %46 = phi double [ %89, %85 ], [ %0, %31 ], !dbg !621
  tail call void @llvm.dbg.value(metadata double %46, metadata !545, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %45, metadata !546, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %44, metadata !547, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %43, metadata !548, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %42, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %41, metadata !550, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !564, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !623
  %handler_result3 = call double @fAddHandlerDouble(double %45, double %46), !dbg !624
  %handler_result4 = call double @fAddHandlerDouble(double %44, double %handler_result3), !dbg !625
  %handler_result5 = call double @fAddHandlerDouble(double %43, double %handler_result4), !dbg !626
  %handler_result6 = call double @fAddHandlerDouble(double %43, double %handler_result5), !dbg !627
  %47 = fmul double %handler_result6, 2.000000e-01, !dbg !627
  tail call void @llvm.dbg.value(metadata double %47, metadata !551, metadata !DIExpression()), !dbg !622
  %handler_result7 = call double @fSubHandlerDouble(double %47, double %46), !dbg !628
  %48 = fdiv double %handler_result7, %47, !dbg !628
  tail call void @llvm.dbg.value(metadata double %48, metadata !552, metadata !DIExpression()), !dbg !622
  %handler_result8 = call double @fSubHandlerDouble(double %47, double %45), !dbg !629
  %49 = fdiv double %handler_result8, %47, !dbg !629
  tail call void @llvm.dbg.value(metadata double %49, metadata !553, metadata !DIExpression()), !dbg !622
  %handler_result9 = call double @fSubHandlerDouble(double %47, double %44), !dbg !630
  %50 = fdiv double %handler_result9, %47, !dbg !630
  tail call void @llvm.dbg.value(metadata double %50, metadata !554, metadata !DIExpression()), !dbg !622
  %handler_result10 = call double @fSubHandlerDouble(double %47, double %43), !dbg !631
  %51 = fdiv double %handler_result10, %47, !dbg !631
  tail call void @llvm.dbg.value(metadata double %51, metadata !555, metadata !DIExpression()), !dbg !622
  %52 = tail call double @llvm.fabs.f64(double %48), !dbg !632
  %53 = tail call double @llvm.fabs.f64(double %49), !dbg !633
  %54 = tail call double @llvm.fabs.f64(double %50), !dbg !634
  %55 = tail call double @llvm.fabs.f64(double %51), !dbg !635
  tail call void @llvm.dbg.value(metadata double %52, metadata !598, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %53, metadata !603, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %54, metadata !604, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata double %55, metadata !605, metadata !DIExpression()), !dbg !636
  %56 = fcmp ogt double %52, %53, !dbg !638
  %57 = select i1 %56, double %52, double %53, !dbg !638
  tail call void @llvm.dbg.value(metadata double %57, metadata !606, metadata !DIExpression()), !dbg !636
  %58 = fcmp ogt double %57, %54, !dbg !639
  %59 = select i1 %58, double %57, double %54, !dbg !639
  tail call void @llvm.dbg.value(metadata double %59, metadata !607, metadata !DIExpression()), !dbg !636
  %60 = fcmp ogt double %59, %55, !dbg !640
  %61 = select i1 %60, double %59, double %55, !dbg !640
  tail call void @llvm.dbg.value(metadata double %61, metadata !572, metadata !DIExpression()), !dbg !576
  %62 = fcmp olt double %61, %10, !dbg !641
  br i1 %62, label %93, label %63, !dbg !643

63:                                               ; preds = %39
  %64 = tail call double @sqrt(double noundef %46) #6, !dbg !644
  tail call void @llvm.dbg.value(metadata double %64, metadata !565, metadata !DIExpression()), !dbg !576
  %65 = tail call double @sqrt(double noundef %45) #6, !dbg !645
  tail call void @llvm.dbg.value(metadata double %65, metadata !567, metadata !DIExpression()), !dbg !576
  %66 = tail call double @sqrt(double noundef %44) #6, !dbg !646
  tail call void @llvm.dbg.value(metadata double %66, metadata !568, metadata !DIExpression()), !dbg !576
  %handler_result11 = call double @fAddHandlerDouble(double %65, double %66), !dbg !647
  %67 = fmul double %64, %handler_result11, !dbg !647
  %68 = fmul double %65, %66, !dbg !648
  %handler_result12 = call double @fAddHandlerDouble(double %68, double %67), !dbg !649
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !569, metadata !DIExpression()), !dbg !576
  %handler_result13 = call double @fAddHandlerDouble(double %64, double %65), !dbg !650
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double %66), !dbg !651
  %69 = fmul double %43, %handler_result14, !dbg !651
  %70 = fmul double %64, %65, !dbg !652
  %71 = fmul double %70, %66, !dbg !653
  %handler_result15 = call double @fAddHandlerDouble(double %71, double %69), !dbg !654
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !570, metadata !DIExpression()), !dbg !576
  %72 = fmul double %handler_result15, %handler_result15, !dbg !654
  tail call void @llvm.dbg.value(metadata double %72, metadata !570, metadata !DIExpression()), !dbg !576
  %handler_result16 = call double @fAddHandlerDouble(double %43, double %handler_result12), !dbg !655
  %73 = fmul double %43, %handler_result16, !dbg !655
  %74 = fmul double %handler_result16, %73, !dbg !656
  tail call void @llvm.dbg.value(metadata double %74, metadata !571, metadata !DIExpression()), !dbg !576
  %75 = call i32 @gsl_sf_ellint_RC_e(double noundef %72, double noundef %74, i32 noundef %4, ptr noundef nonnull %7), !dbg !657, !range !658
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !574, metadata !DIExpression()), !dbg !576
  %76 = icmp eq i32 %75, 0, !dbg !659
  br i1 %76, label %78, label %77, !dbg !661

77:                                               ; preds = %63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !662
  br label %83, !dbg !664

78:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata double poison, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !550, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !545, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !546, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !547, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !548, metadata !DIExpression()), !dbg !622
  %79 = add nuw nsw i32 %40, 1, !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !564, metadata !DIExpression()), !dbg !622
  %80 = icmp eq i32 %79, 10000, !dbg !666
  br i1 %80, label %81, label %85, !dbg !668

81:                                               ; preds = %78
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !669, !tbaa !170
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !669
  store double 0x7FF8000000000000, ptr %82, align 8, !dbg !669, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 305, i32 noundef 11) #6, !dbg !672
  br label %83, !dbg !672

83:                                               ; preds = %81, %77
  %84 = phi i32 [ 11, %81 ], [ %75, %77 ]
  tail call void @llvm.dbg.value(metadata double poison, metadata !545, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !546, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !547, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !548, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !550, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !564, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !674
  br label %123

85:                                               ; preds = %78
  %86 = fmul double %handler_result16, 2.500000e-01, !dbg !675
  tail call void @llvm.dbg.value(metadata double %86, metadata !548, metadata !DIExpression()), !dbg !622
  %handler_result17 = call double @fAddHandlerDouble(double %44, double %handler_result12), !dbg !676
  %87 = fmul double %handler_result17, 2.500000e-01, !dbg !676
  tail call void @llvm.dbg.value(metadata double %87, metadata !547, metadata !DIExpression()), !dbg !622
  %handler_result18 = call double @fAddHandlerDouble(double %45, double %handler_result12), !dbg !677
  %88 = fmul double %handler_result18, 2.500000e-01, !dbg !677
  tail call void @llvm.dbg.value(metadata double %88, metadata !546, metadata !DIExpression()), !dbg !622
  %handler_result19 = call double @fAddHandlerDouble(double %46, double %handler_result12), !dbg !678
  %89 = fmul double %handler_result19, 2.500000e-01, !dbg !678
  tail call void @llvm.dbg.value(metadata double %89, metadata !545, metadata !DIExpression()), !dbg !622
  %90 = fmul double %41, 2.500000e-01, !dbg !679
  tail call void @llvm.dbg.value(metadata double %90, metadata !550, metadata !DIExpression()), !dbg !622
  %91 = load double, ptr %7, align 8, !dbg !680, !tbaa !170
  %92 = fmul double %41, %91, !dbg !681
  %handler_result20 = call double @fAddHandlerDouble(double %42, double %92), !dbg !674
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %89, metadata !545, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %88, metadata !546, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %87, metadata !547, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %86, metadata !548, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %90, metadata !550, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !564, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !674
  br label %39

93:                                               ; preds = %39
  tail call void @llvm.dbg.value(metadata double poison, metadata !545, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !546, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !547, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double poison, metadata !548, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %42, metadata !549, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata double %41, metadata !550, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !564, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !674
  %handler_result21 = call double @fAddHandlerDouble(double %49, double %50), !dbg !682
  %94 = fmul double %48, %handler_result21, !dbg !682
  %95 = fmul double %49, %50, !dbg !683
  %handler_result22 = call double @fAddHandlerDouble(double %95, double %94), !dbg !684
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !556, metadata !DIExpression()), !dbg !622
  %96 = fmul double %48, %49, !dbg !684
  %97 = fmul double %50, %96, !dbg !685
  tail call void @llvm.dbg.value(metadata double %97, metadata !557, metadata !DIExpression()), !dbg !622
  %98 = fmul double %51, %51, !dbg !686
  tail call void @llvm.dbg.value(metadata double %98, metadata !558, metadata !DIExpression()), !dbg !622
  %99 = fmul double %98, 3.000000e+00, !dbg !687
  %handler_result23 = call double @fSubHandlerDouble(double %handler_result22, double %99), !dbg !688
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !559, metadata !DIExpression()), !dbg !622
  %100 = fmul double %51, 2.000000e+00, !dbg !688
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result22, double %98), !dbg !689
  %101 = fmul double %100, %handler_result24, !dbg !689
  %handler_result25 = call double @fAddHandlerDouble(double %97, double %101), !dbg !690
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !560, metadata !DIExpression()), !dbg !622
  %102 = fmul double %handler_result23, 0x3FBA2E8BA2E8BA2E, !dbg !690
  %handler_result26 = call double @fAddHandlerDouble(double %102, double 0xBFCB6DB6DB6DB6DB), !dbg !691
  %103 = fmul double %handler_result25, 0x3FC6276276276276, !dbg !691
  %handler_result27 = call double @fSubHandlerDouble(double %handler_result26, double %103), !dbg !692
  %104 = fmul double %handler_result23, %handler_result27, !dbg !692
  %handler_result28 = call double @fAddHandlerDouble(double %104, double 1.000000e+00), !dbg !693
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !561, metadata !DIExpression()), !dbg !622
  %105 = fmul double %51, 0x3FBD89D89D89D89E, !dbg !693
  %handler_result29 = call double @fAddHandlerDouble(double %105, double 0xBFD1745D1745D174), !dbg !694
  %106 = fmul double %51, %handler_result29, !dbg !694
  %handler_result30 = call double @fAddHandlerDouble(double %106, double 0x3FC5555555555555), !dbg !695
  %107 = fmul double %97, %handler_result30, !dbg !695
  tail call void @llvm.dbg.value(metadata double %107, metadata !562, metadata !DIExpression()), !dbg !622
  %108 = fmul double %51, %handler_result22, !dbg !696
  %109 = fmul double %51, 0x3FC1745D1745D174, !dbg !697
  %handler_result31 = call double @fSubHandlerDouble(double 0x3FD5555555555555, double %109), !dbg !698
  %110 = fmul double %handler_result31, %108, !dbg !698
  %111 = fmul double %51, 0x3FD5555555555555, !dbg !699
  %112 = fmul double %111, %98, !dbg !700
  %handler_result32 = call double @fSubHandlerDouble(double %110, double %112), !dbg !701
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !563, metadata !DIExpression()), !dbg !622
  %113 = fmul double %42, 3.000000e+00, !dbg !701
  %handler_result33 = call double @fAddHandlerDouble(double %107, double %handler_result28), !dbg !702
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result32, double %handler_result33), !dbg !703
  %114 = fmul double %41, %handler_result34, !dbg !703
  %115 = tail call double @sqrt(double noundef %47) #6, !dbg !704
  %116 = fmul double %47, %115, !dbg !705
  %117 = fdiv double %114, %116, !dbg !706
  %handler_result35 = call double @fAddHandlerDouble(double %113, double %117), !dbg !707
  store double %handler_result35, ptr %5, align 8, !dbg !707, !tbaa !170
  %118 = tail call double @llvm.fabs.f64(double %handler_result35), !dbg !708
  %119 = fmul double %13, %118, !dbg !709
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !710
  store double %119, ptr %120, align 8, !dbg !711, !tbaa !172
  br label %123, !dbg !712

121:                                              ; preds = %31
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !713, !tbaa !170
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !713
  store double 0x7FF8000000000000, ptr %122, align 8, !dbg !713, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 1) #6, !dbg !716
  br label %123, !dbg !716

123:                                              ; preds = %121, %93, %83, %29, %19
  %124 = phi i32 [ 1, %19 ], [ 1, %29 ], [ 1, %121 ], [ 0, %93 ], [ %84, %83 ]
  ret i32 %124, !dbg !718
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_F_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !719 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !738
  call void @llvm.dbg.assign(metadata i1 undef, metadata !732, metadata !DIExpression(), metadata !738, metadata ptr %5, metadata !DIExpression()), !dbg !739
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !740
  call void @llvm.dbg.assign(metadata i1 undef, metadata !734, metadata !DIExpression(), metadata !740, metadata ptr %6, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %0, metadata !721, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata double %1, metadata !722, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !723, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !724, metadata !DIExpression()), !dbg !742
  %7 = fdiv double %0, 0x400921FB54442D18, !dbg !743
  %handler_result = call double @fAddHandlerDouble(double %7, double 5.000000e-01), !dbg !744
  %8 = tail call double @llvm.floor.f64(double %handler_result), !dbg !744
  tail call void @llvm.dbg.value(metadata double %8, metadata !725, metadata !DIExpression()), !dbg !742
  %9 = fmul double %8, 0x400921FB54442D18, !dbg !745
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %9), !dbg !746
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !726, metadata !DIExpression()), !dbg !742
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !721, metadata !DIExpression()), !dbg !742
  %handler_result7 = call double @callHandler(i32 1, double %handler_result1, double %handler_result1), !dbg !747
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !727, metadata !DIExpression()), !dbg !739
  %10 = fmul double %handler_result7, %handler_result7, !dbg !747
  tail call void @llvm.dbg.value(metadata double %10, metadata !729, metadata !DIExpression()), !dbg !739
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !748
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !730, metadata !DIExpression()), !dbg !739
  %11 = fmul double %1, %1, !dbg !748
  %12 = fmul double %11, %10, !dbg !749
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %12), !dbg !750
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !731, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !750
  %13 = call i32 @gsl_sf_ellint_RF_e(double noundef %handler_result2, double noundef %handler_result3, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !751
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !733, metadata !DIExpression()), !dbg !739
  %14 = load double, ptr %5, align 8, !dbg !752, !tbaa !170
  %15 = fmul double %handler_result7, %14, !dbg !753
  store double %15, ptr %3, align 8, !dbg !754, !tbaa !170
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !755
  %17 = fmul double %16, 0x3CB0000000000000, !dbg !756
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !757
  %19 = load double, ptr %18, align 8, !dbg !757, !tbaa !172
  %20 = fmul double %handler_result7, %19, !dbg !758
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !759
  %handler_result4 = call double @fAddHandlerDouble(double %17, double %21), !dbg !760
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !760
  store double %handler_result4, ptr %22, align 8, !dbg !761, !tbaa !172
  %23 = fcmp oeq double %8, 0.000000e+00, !dbg !762
  br i1 %23, label %38, label %24, !dbg !763

24:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !764
  %25 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %6), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !737, metadata !DIExpression()), !dbg !741
  %26 = fmul double %8, 2.000000e+00, !dbg !766
  %27 = load double, ptr %6, align 8, !dbg !767, !tbaa !170
  %28 = fmul double %26, %27, !dbg !768
  %29 = load double, ptr %3, align 8, !dbg !769, !tbaa !170
  %handler_result5 = call double @fAddHandlerDouble(double %29, double %28), !dbg !769
  store double %handler_result5, ptr %3, align 8, !dbg !769, !tbaa !170
  %30 = tail call double @llvm.fabs.f64(double %8), !dbg !770
  %31 = fmul double %30, 2.000000e+00, !dbg !771
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !772
  %33 = load double, ptr %32, align 8, !dbg !772, !tbaa !172
  %34 = fmul double %31, %33, !dbg !773
  %35 = load double, ptr %22, align 8, !dbg !774, !tbaa !172
  %handler_result6 = call double @fAddHandlerDouble(double %35, double %34), !dbg !774
  store double %handler_result6, ptr %22, align 8, !dbg !774, !tbaa !172
  %36 = icmp eq i32 %13, 0, !dbg !775
  %37 = select i1 %36, i32 %25, i32 %13, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !776
  br label %38

38:                                               ; preds = %24, %4
  %39 = phi i32 [ %37, %24 ], [ %13, %4 ], !dbg !777
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !778
  ret i32 %39, !dbg !779
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !780 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Kcomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !781 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !785, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !786, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !787, metadata !DIExpression()), !dbg !802
  %4 = fmul double %0, %0, !dbg !803
  %5 = fcmp ult double %4, 1.000000e+00, !dbg !804
  br i1 %5, label %8, label %6, !dbg !805

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !806, !tbaa !170
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !806
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !806, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 505, i32 noundef 1) #6, !dbg !809
  br label %26, !dbg !809

8:                                                ; preds = %3
  %9 = fcmp ult double %4, 0x3FEFFFFFF8000000, !dbg !811
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %4), !dbg !812
  br i1 %9, label %21, label %10, !dbg !812

10:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !788, metadata !DIExpression()), !dbg !813
  tail call void @llvm.dbg.value(metadata double 0x3FF62E42FEFA3BDC, metadata !792, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !813
  tail call void @llvm.dbg.value(metadata double 0x3FB8BEEF74A49015, metadata !792, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !813
  tail call void @llvm.dbg.value(metadata double 0x3FA2619B1B7DF892, metadata !792, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !813
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !796, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !813
  tail call void @llvm.dbg.value(metadata double 0x3FBFFF140B737B4B, metadata !796, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !813
  tail call void @llvm.dbg.value(metadata double 0x3FB19D0A2A39033E, metadata !796, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !813
  %11 = fmul double %handler_result, 0x3FA2619B1B7DF892, !dbg !814
  %handler_result1 = call double @fAddHandlerDouble(double %11, double 0x3FB8BEEF74A49015), !dbg !815
  %12 = fmul double %handler_result, %handler_result1, !dbg !815
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 0x3FF62E42FEFA3BDC), !dbg !816
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !797, metadata !DIExpression()), !dbg !813
  %handler_result8 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !817
  %13 = fmul double %handler_result, 0x3FB19D0A2A39033E, !dbg !817
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 0x3FBFFF140B737B4B), !dbg !818
  %14 = fmul double %handler_result, %handler_result3, !dbg !818
  %handler_result4 = call double @fAddHandlerDouble(double %14, double 5.000000e-01), !dbg !819
  tail call void @llvm.dbg.value(metadata double poison, metadata !798, metadata !DIExpression()), !dbg !813
  %15 = fmul double %handler_result4, %handler_result8, !dbg !819
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result2, double %15), !dbg !820
  store double %handler_result5, ptr %2, align 8, !dbg !820, !tbaa !170
  %16 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !821
  %17 = fdiv double %0, %handler_result, !dbg !822
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !823
  %handler_result6 = call double @fAddHandlerDouble(double %18, double %16), !dbg !824
  %19 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !824
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !825
  store double %19, ptr %20, align 8, !dbg !826, !tbaa !172
  br label %26

21:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !799, metadata !DIExpression()), !dbg !827
  %22 = tail call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, i32 noundef %1, ptr noundef %2), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !801, metadata !DIExpression()), !dbg !827
  %23 = fdiv double 0x3CA0000000000000, %handler_result, !dbg !829
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !830
  %25 = load double, ptr %24, align 8, !dbg !831, !tbaa !172
  %handler_result7 = call double @fAddHandlerDouble(double %23, double %25), !dbg !831
  store double %handler_result7, ptr %24, align 8, !dbg !831, !tbaa !172
  br label %26

26:                                               ; preds = %21, %10, %6
  %27 = phi i32 [ 1, %6 ], [ 0, %10 ], [ %22, %21 ], !dbg !832
  ret i32 %27, !dbg !833
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_E_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !834 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !861
  call void @llvm.dbg.assign(metadata i1 undef, metadata !847, metadata !DIExpression(), metadata !861, metadata ptr %5, metadata !DIExpression()), !dbg !862
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !851, metadata !DIExpression(), metadata !863, metadata ptr %6, metadata !DIExpression()), !dbg !864
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !853, metadata !DIExpression(), metadata !865, metadata ptr %7, metadata !DIExpression()), !dbg !864
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !866
  call void @llvm.dbg.assign(metadata i1 undef, metadata !857, metadata !DIExpression(), metadata !866, metadata ptr %8, metadata !DIExpression()), !dbg !867
  tail call void @llvm.dbg.value(metadata double %0, metadata !836, metadata !DIExpression()), !dbg !868
  tail call void @llvm.dbg.value(metadata double %1, metadata !837, metadata !DIExpression()), !dbg !868
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !838, metadata !DIExpression()), !dbg !868
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !839, metadata !DIExpression()), !dbg !868
  %9 = fdiv double %0, 0x400921FB54442D18, !dbg !869
  %handler_result = call double @fAddHandlerDouble(double %9, double 5.000000e-01), !dbg !870
  %10 = tail call double @llvm.floor.f64(double %handler_result), !dbg !870
  tail call void @llvm.dbg.value(metadata double %10, metadata !840, metadata !DIExpression()), !dbg !868
  %11 = fmul double %10, 0x400921FB54442D18, !dbg !871
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %11), !dbg !872
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !841, metadata !DIExpression()), !dbg !868
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !836, metadata !DIExpression()), !dbg !868
  %handler_result12 = call double @callHandler(i32 1, double %handler_result1, double %handler_result1), !dbg !873
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !842, metadata !DIExpression()), !dbg !874
  %12 = fmul double %handler_result12, %handler_result12, !dbg !873
  tail call void @llvm.dbg.value(metadata double %12, metadata !844, metadata !DIExpression()), !dbg !874
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %12), !dbg !875
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !845, metadata !DIExpression()), !dbg !874
  tail call void @llvm.dbg.value(metadata double poison, metadata !846, metadata !DIExpression()), !dbg !874
  %13 = fcmp olt double %handler_result2, 0x3CB0000000000000, !dbg !875
  br i1 %13, label %14, label %28, !dbg !876

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !877
  %15 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %5), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !850, metadata !DIExpression()), !dbg !862
  %16 = fmul double %10, 2.000000e+00, !dbg !879
  %17 = load double, ptr %5, align 8, !dbg !880, !tbaa !170
  %18 = fmul double %16, %17, !dbg !881
  %19 = fcmp oge double %handler_result12, 0.000000e+00, !dbg !882
  %20 = fneg double %17, !dbg !883
  %21 = select i1 %19, double %17, double %20, !dbg !883
  %handler_result3 = call double @fAddHandlerDouble(double %18, double %21), !dbg !884
  store double %handler_result3, ptr %3, align 8, !dbg !884, !tbaa !170
  %22 = tail call double @llvm.fabs.f64(double %10), !dbg !885
  %23 = fmul double %22, 2.000000e+00, !dbg !886
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !887
  %25 = load double, ptr %24, align 8, !dbg !887, !tbaa !172
  %26 = fmul double %23, %25, !dbg !888
  %handler_result4 = call double @fAddHandlerDouble(double %25, double %26), !dbg !889
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !889
  store double %handler_result4, ptr %27, align 8, !dbg !890, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !891
  br label %78

28:                                               ; preds = %4
  %29 = fmul double %1, %1, !dbg !892
  %30 = fmul double %29, %12, !dbg !893
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %30), !dbg !894
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !846, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !894
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !894
  %31 = fmul double %handler_result12, %12, !dbg !895
  tail call void @llvm.dbg.value(metadata double %31, metadata !854, metadata !DIExpression()), !dbg !864
  %32 = call i32 @gsl_sf_ellint_RF_e(double noundef %handler_result2, double noundef %handler_result5, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %6), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !855, metadata !DIExpression()), !dbg !864
  %33 = call i32 @gsl_sf_ellint_RD_e(double noundef %handler_result2, double noundef %handler_result5, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %7), !dbg !897
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !856, metadata !DIExpression()), !dbg !864
  %34 = load double, ptr %6, align 8, !dbg !898, !tbaa !170
  %35 = fmul double %handler_result12, %34, !dbg !899
  %36 = fdiv double %29, 3.000000e+00, !dbg !900
  %37 = fmul double %36, %31, !dbg !901
  %38 = load double, ptr %7, align 8, !dbg !902, !tbaa !170
  %39 = fmul double %37, %38, !dbg !903
  %handler_result6 = call double @fSubHandlerDouble(double %35, double %39), !dbg !904
  store double %handler_result6, ptr %3, align 8, !dbg !904, !tbaa !170
  %40 = tail call double @llvm.fabs.f64(double %35), !dbg !905
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !906
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !907
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !908
  %44 = load double, ptr %43, align 8, !dbg !908, !tbaa !172
  %45 = fmul double %handler_result12, %44, !dbg !909
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !910
  %handler_result7 = call double @fAddHandlerDouble(double %41, double %46), !dbg !911
  %47 = fmul double %36, 0x3CB0000000000000, !dbg !911
  %48 = fmul double %31, %38, !dbg !912
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !913
  %50 = fmul double %47, %49, !dbg !914
  %handler_result8 = call double @fAddHandlerDouble(double %50, double %handler_result7), !dbg !915
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !915
  %52 = load double, ptr %51, align 8, !dbg !915, !tbaa !172
  %53 = fmul double %31, %52, !dbg !916
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !917
  %55 = fmul double %36, %54, !dbg !918
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %55), !dbg !919
  store double %handler_result9, ptr %42, align 8, !dbg !919, !tbaa !172
  %56 = fcmp oeq double %10, 0.000000e+00, !dbg !920
  br i1 %56, label %57, label %60, !dbg !921

57:                                               ; preds = %28
  %58 = icmp eq i32 %32, 0, !dbg !922
  %59 = select i1 %58, i32 %33, i32 %32, !dbg !922
  br label %76, !dbg !924

60:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !925
  %61 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %8), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !860, metadata !DIExpression()), !dbg !867
  %62 = fmul double %10, 2.000000e+00, !dbg !927
  %63 = load double, ptr %8, align 8, !dbg !928, !tbaa !170
  %64 = fmul double %62, %63, !dbg !929
  %65 = load double, ptr %3, align 8, !dbg !930, !tbaa !170
  %handler_result10 = call double @fAddHandlerDouble(double %65, double %64), !dbg !930
  store double %handler_result10, ptr %3, align 8, !dbg !930, !tbaa !170
  %66 = tail call double @llvm.fabs.f64(double %10), !dbg !931
  %67 = fmul double %66, 2.000000e+00, !dbg !932
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !933
  %69 = load double, ptr %68, align 8, !dbg !933, !tbaa !172
  %70 = fmul double %67, %69, !dbg !934
  %71 = load double, ptr %42, align 8, !dbg !935, !tbaa !172
  %handler_result11 = call double @fAddHandlerDouble(double %71, double %70), !dbg !935
  store double %handler_result11, ptr %42, align 8, !dbg !935, !tbaa !172
  %72 = icmp eq i32 %32, 0, !dbg !936
  %73 = icmp eq i32 %33, 0, !dbg !936
  %74 = select i1 %73, i32 %61, i32 %33, !dbg !936
  %75 = select i1 %72, i32 %74, i32 %32, !dbg !936
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !937
  br label %76

76:                                               ; preds = %60, %57
  %77 = phi i32 [ %59, %57 ], [ %75, %60 ], !dbg !938
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !939
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !939
  br label %78

78:                                               ; preds = %76, %14
  %79 = phi i32 [ %15, %14 ], [ %77, %76 ], !dbg !940
  ret i32 %79, !dbg !941
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Ecomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !942 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !961
  call void @llvm.dbg.assign(metadata i1 undef, metadata !955, metadata !DIExpression(), metadata !961, metadata ptr %4, metadata !DIExpression()), !dbg !962
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !957, metadata !DIExpression(), metadata !963, metadata ptr %5, metadata !DIExpression()), !dbg !962
  tail call void @llvm.dbg.value(metadata double %0, metadata !944, metadata !DIExpression()), !dbg !964
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !945, metadata !DIExpression()), !dbg !964
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !946, metadata !DIExpression()), !dbg !964
  %6 = fmul double %0, %0, !dbg !965
  %7 = fcmp ult double %6, 1.000000e+00, !dbg !966
  br i1 %7, label %10, label %8, !dbg !967

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !968, !tbaa !170
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !968
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !968, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 1) #6, !dbg !971
  br label %38, !dbg !971

10:                                               ; preds = %3
  %11 = fcmp ult double %6, 0x3FEFFFFFF8000000, !dbg !973
  br i1 %11, label %23, label %12, !dbg !974

12:                                               ; preds = %10
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %6), !dbg !975
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !947, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FDC5E3B2E6F7625, metadata !951, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FB006F296EE960C, metadata !951, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FA85B9906E45829, metadata !951, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FCFFF771FB95C41, metadata !952, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FB78D6E13C3242C, metadata !952, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !976
  tail call void @llvm.dbg.value(metadata double 0x3FA4D63BE3935D49, metadata !952, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !976
  %13 = fmul double %handler_result, 0x3FA85B9906E45829, !dbg !975
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 0x3FB006F296EE960C), !dbg !977
  %14 = fmul double %handler_result, %handler_result1, !dbg !977
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 0x3FDC5E3B2E6F7625), !dbg !978
  %15 = fmul double %handler_result, %handler_result2, !dbg !978
  %handler_result3 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !979
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !953, metadata !DIExpression()), !dbg !976
  %16 = fneg double %handler_result, !dbg !979
  %handler_result10 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !980
  %17 = fmul double %handler_result10, %16, !dbg !980
  %18 = fmul double %handler_result, 0x3FA4D63BE3935D49, !dbg !981
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 0x3FB78D6E13C3242C), !dbg !982
  %19 = fmul double %handler_result, %handler_result4, !dbg !982
  %handler_result5 = call double @fAddHandlerDouble(double %19, double 0x3FCFFF771FB95C41), !dbg !983
  %20 = fmul double %handler_result5, %17, !dbg !983
  tail call void @llvm.dbg.value(metadata double %20, metadata !954, metadata !DIExpression()), !dbg !976
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result3, double %20), !dbg !984
  store double %handler_result6, ptr %2, align 8, !dbg !984, !tbaa !170
  %21 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !985
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !986
  store double %21, ptr %22, align 8, !dbg !987, !tbaa !172
  br label %38

23:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !988
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !989
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %6), !dbg !990
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !958, metadata !DIExpression()), !dbg !962
  %24 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %handler_result7, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %4), !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !959, metadata !DIExpression()), !dbg !962
  %25 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %handler_result7, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %5), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !960, metadata !DIExpression()), !dbg !962
  %26 = load double, ptr %4, align 8, !dbg !992, !tbaa !170
  %27 = fdiv double %6, 3.000000e+00, !dbg !993
  %28 = load double, ptr %5, align 8, !dbg !994, !tbaa !170
  %29 = fmul double %27, %28, !dbg !995
  %handler_result8 = call double @fSubHandlerDouble(double %26, double %29), !dbg !996
  store double %handler_result8, ptr %2, align 8, !dbg !996, !tbaa !170
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !997
  %31 = load double, ptr %30, align 8, !dbg !997, !tbaa !172
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !998
  %33 = load double, ptr %32, align 8, !dbg !998, !tbaa !172
  %34 = fmul double %27, %33, !dbg !999
  %handler_result9 = call double @fAddHandlerDouble(double %31, double %34), !dbg !1000
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1000
  store double %handler_result9, ptr %35, align 8, !dbg !1001, !tbaa !172
  %36 = icmp eq i32 %24, 0, !dbg !1002
  %37 = select i1 %36, i32 %25, i32 %24, !dbg !1002
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1003
  br label %38

38:                                               ; preds = %23, %12, %8
  %39 = phi i32 [ 1, %8 ], [ 0, %12 ], [ %37, %23 ], !dbg !1004
  ret i32 %39, !dbg !1005
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_ellint_P_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !1006 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1029
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1030
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1031
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1021, metadata !DIExpression(), metadata !1031, metadata ptr %8, metadata !DIExpression()), !dbg !1032
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1022, metadata !DIExpression(), metadata !1033, metadata ptr %9, metadata !DIExpression()), !dbg !1032
  tail call void @llvm.dbg.value(metadata double %0, metadata !1008, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double %1, metadata !1009, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double %2, metadata !1010, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1011, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1012, metadata !DIExpression()), !dbg !1034
  %10 = fdiv double %0, 0x400921FB54442D18, !dbg !1035
  %handler_result = call double @fAddHandlerDouble(double %10, double 5.000000e-01), !dbg !1036
  %11 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1036
  tail call void @llvm.dbg.value(metadata double %11, metadata !1013, metadata !DIExpression()), !dbg !1034
  %12 = fmul double %11, 0x400921FB54442D18, !dbg !1037
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %12), !dbg !1038
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1014, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1008, metadata !DIExpression()), !dbg !1034
  %handler_result15 = call double @callHandler(i32 1, double %handler_result1, double %handler_result1), !dbg !1039
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !1015, metadata !DIExpression()), !dbg !1032
  %13 = fmul double %handler_result15, %handler_result15, !dbg !1039
  tail call void @llvm.dbg.value(metadata double %13, metadata !1017, metadata !DIExpression()), !dbg !1032
  %14 = fmul double %handler_result15, %13, !dbg !1040
  tail call void @llvm.dbg.value(metadata double %14, metadata !1018, metadata !DIExpression()), !dbg !1032
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1019, metadata !DIExpression()), !dbg !1032
  %15 = fmul double %1, %1, !dbg !1041
  %16 = fmul double %15, %13, !dbg !1042
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !1043
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1020, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !1043
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !1044
  %17 = call i32 @gsl_sf_ellint_RF_e(double noundef %handler_result2, double noundef %handler_result3, double noundef 1.000000e+00, i32 noundef %3, ptr noundef nonnull %8), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1023, metadata !DIExpression()), !dbg !1032
  %18 = fmul double %13, %2, !dbg !1046
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !1047
  %19 = call i32 @gsl_sf_ellint_RJ_e(double noundef %handler_result2, double noundef %handler_result3, double noundef 1.000000e+00, double noundef %handler_result4, i32 noundef %3, ptr noundef nonnull %9), !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1024, metadata !DIExpression()), !dbg !1032
  %20 = load double, ptr %8, align 8, !dbg !1048, !tbaa !170
  %21 = fmul double %handler_result15, %20, !dbg !1049
  %22 = fdiv double %2, 3.000000e+00, !dbg !1050
  %23 = fmul double %22, %14, !dbg !1051
  %24 = load double, ptr %9, align 8, !dbg !1052, !tbaa !170
  %25 = fmul double %23, %24, !dbg !1053
  %handler_result5 = call double @fSubHandlerDouble(double %21, double %25), !dbg !1054
  store double %handler_result5, ptr %4, align 8, !dbg !1054, !tbaa !170
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !1055
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !1056
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1057
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1058
  %30 = load double, ptr %29, align 8, !dbg !1058, !tbaa !172
  %31 = fmul double %handler_result15, %30, !dbg !1059
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !1060
  %handler_result6 = call double @fAddHandlerDouble(double %27, double %32), !dbg !1061
  %33 = fmul double %22, 0x3CB0000000000000, !dbg !1061
  %34 = fmul double %14, %24, !dbg !1062
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !1063
  %36 = fmul double %33, %35, !dbg !1064
  %handler_result7 = call double @fAddHandlerDouble(double %36, double %handler_result6), !dbg !1065
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1065
  %38 = load double, ptr %37, align 8, !dbg !1065, !tbaa !172
  %39 = fmul double %14, %38, !dbg !1066
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !1067
  %41 = fmul double %22, %40, !dbg !1068
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %41), !dbg !1069
  store double %handler_result8, ptr %28, align 8, !dbg !1069, !tbaa !172
  %42 = fcmp oeq double %11, 0.000000e+00, !dbg !1070
  br i1 %42, label %43, label %46, !dbg !1071

43:                                               ; preds = %5
  %44 = icmp eq i32 %17, 0, !dbg !1072
  %45 = select i1 %44, i32 %19, i32 %17, !dbg !1072
  br label %78, !dbg !1074

46:                                               ; preds = %5
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1075, metadata !DIExpression(), metadata !1029, metadata ptr %6, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1084, metadata !DIExpression(), metadata !1030, metadata ptr %7, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %1, metadata !1080, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata double %2, metadata !1081, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %3, metadata !1082, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr undef, metadata !1083, metadata !DIExpression()), !dbg !1090
  %47 = fcmp ult double %15, 1.000000e+00, !dbg !1091
  br i1 %47, label %49, label %48, !dbg !1092

48:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1093
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1093
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #6, !dbg !1094
  br label %63, !dbg !1094

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1098
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !1099
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %15), !dbg !1100
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !1085, metadata !DIExpression()), !dbg !1088
  %50 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %handler_result9, double noundef 1.000000e+00, i32 noundef %3, ptr noundef nonnull %6), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %50, metadata !1086, metadata !DIExpression()), !dbg !1088
  %handler_result10 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !1101
  %51 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %handler_result9, double noundef 1.000000e+00, double noundef %handler_result10, i32 noundef %3, ptr noundef nonnull %7), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %51, metadata !1087, metadata !DIExpression()), !dbg !1088
  %52 = load double, ptr %6, align 8, !dbg !1102, !tbaa !170
  %53 = load double, ptr %7, align 8, !dbg !1103, !tbaa !170
  %54 = fmul double %22, %53, !dbg !1104
  %handler_result11 = call double @fSubHandlerDouble(double %52, double %54), !dbg !1105
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1093
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1105
  %56 = load double, ptr %55, align 8, !dbg !1105, !tbaa !172
  %57 = tail call double @llvm.fabs.f64(double %22), !dbg !1106
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1107
  %59 = load double, ptr %58, align 8, !dbg !1107, !tbaa !172
  %60 = fmul double %57, %59, !dbg !1108
  %handler_result12 = call double @fAddHandlerDouble(double %56, double %60), !dbg !1109
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1093
  %61 = icmp eq i32 %50, 0, !dbg !1109
  %62 = select i1 %61, i32 %51, i32 %50, !dbg !1109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1110
  br label %63

63:                                               ; preds = %49, %48
  %64 = phi double [ %handler_result12, %49 ], [ 0x7FF8000000000000, %48 ], !dbg !1111
  %65 = phi double [ %handler_result11, %49 ], [ 0x7FF8000000000000, %48 ], !dbg !1111
  %66 = phi i32 [ %62, %49 ], [ 1, %48 ], !dbg !1111
  tail call void @llvm.dbg.value(metadata double %65, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1093
  tail call void @llvm.dbg.value(metadata double %64, metadata !1025, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1093
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1028, metadata !DIExpression()), !dbg !1093
  %67 = fmul double %11, 2.000000e+00, !dbg !1112
  %68 = fmul double %67, %65, !dbg !1113
  %69 = load double, ptr %4, align 8, !dbg !1114, !tbaa !170
  %handler_result13 = call double @fAddHandlerDouble(double %68, double %69), !dbg !1114
  store double %handler_result13, ptr %4, align 8, !dbg !1114, !tbaa !170
  %70 = tail call double @llvm.fabs.f64(double %11), !dbg !1115
  %71 = fmul double %70, 2.000000e+00, !dbg !1116
  %72 = fmul double %71, %64, !dbg !1117
  %73 = load double, ptr %28, align 8, !dbg !1118, !tbaa !172
  %handler_result14 = call double @fAddHandlerDouble(double %72, double %73), !dbg !1118
  store double %handler_result14, ptr %28, align 8, !dbg !1118, !tbaa !172
  %74 = icmp eq i32 %17, 0, !dbg !1119
  %75 = icmp eq i32 %19, 0, !dbg !1119
  %76 = select i1 %75, i32 %66, i32 %19, !dbg !1119
  %77 = select i1 %74, i32 %76, i32 %17, !dbg !1119
  br label %78

78:                                               ; preds = %63, %43
  %79 = phi i32 [ %45, %43 ], [ %77, %63 ], !dbg !1120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !1121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !1121
  ret i32 %79, !dbg !1122
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Pcomp_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1078 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1075, metadata !DIExpression(), metadata !1123, metadata ptr %5, metadata !DIExpression()), !dbg !1124
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1084, metadata !DIExpression(), metadata !1125, metadata ptr %6, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata double %0, metadata !1080, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata double %1, metadata !1081, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1082, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1083, metadata !DIExpression()), !dbg !1126
  %7 = fmul double %0, %0, !dbg !1127
  %8 = fcmp ult double %7, 1.000000e+00, !dbg !1128
  br i1 %8, label %11, label %9, !dbg !1129

9:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1130, !tbaa !170
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1130
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !1130, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #6, !dbg !1131
  br label %27, !dbg !1131

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1133
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %7), !dbg !1134
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1085, metadata !DIExpression()), !dbg !1124
  %12 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1086, metadata !DIExpression()), !dbg !1124
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1135
  %13 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, double noundef %handler_result1, i32 noundef %2, ptr noundef nonnull %6), !dbg !1135
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1087, metadata !DIExpression()), !dbg !1124
  %14 = load double, ptr %5, align 8, !dbg !1136, !tbaa !170
  %15 = fdiv double %1, 3.000000e+00, !dbg !1137
  %16 = load double, ptr %6, align 8, !dbg !1138, !tbaa !170
  %17 = fmul double %15, %16, !dbg !1139
  %handler_result2 = call double @fSubHandlerDouble(double %14, double %17), !dbg !1140
  store double %handler_result2, ptr %3, align 8, !dbg !1140, !tbaa !170
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1141
  %19 = load double, ptr %18, align 8, !dbg !1141, !tbaa !172
  %20 = tail call double @llvm.fabs.f64(double %15), !dbg !1142
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1143
  %22 = load double, ptr %21, align 8, !dbg !1143, !tbaa !172
  %23 = fmul double %20, %22, !dbg !1144
  %handler_result3 = call double @fAddHandlerDouble(double %19, double %23), !dbg !1145
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1145
  store double %handler_result3, ptr %24, align 8, !dbg !1146, !tbaa !172
  %25 = icmp eq i32 %12, 0, !dbg !1147
  %26 = select i1 %25, i32 %13, i32 %12, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1148
  br label %27

27:                                               ; preds = %11, %9
  %28 = phi i32 [ 1, %9 ], [ %26, %11 ], !dbg !1149
  ret i32 %28, !dbg !1150
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_D_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1151 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1171
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1172
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1165, metadata !DIExpression(), metadata !1172, metadata ptr %6, metadata !DIExpression()), !dbg !1173
  tail call void @llvm.dbg.value(metadata double %0, metadata !1153, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata double %1, metadata !1154, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1155, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1156, metadata !DIExpression()), !dbg !1174
  %7 = fdiv double %0, 0x400921FB54442D18, !dbg !1175
  %handler_result = call double @fAddHandlerDouble(double %7, double 5.000000e-01), !dbg !1176
  %8 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1176
  tail call void @llvm.dbg.value(metadata double %8, metadata !1157, metadata !DIExpression()), !dbg !1174
  %9 = fmul double %8, 0x400921FB54442D18, !dbg !1177
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %9), !dbg !1178
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1158, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1153, metadata !DIExpression()), !dbg !1174
  %handler_result9 = call double @callHandler(i32 1, double %handler_result1, double %handler_result1), !dbg !1179
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1159, metadata !DIExpression()), !dbg !1173
  %10 = fmul double %handler_result9, %handler_result9, !dbg !1179
  tail call void @llvm.dbg.value(metadata double %10, metadata !1161, metadata !DIExpression()), !dbg !1173
  %11 = fmul double %handler_result9, %10, !dbg !1180
  tail call void @llvm.dbg.value(metadata double %11, metadata !1162, metadata !DIExpression()), !dbg !1173
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %10), !dbg !1181
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1163, metadata !DIExpression()), !dbg !1173
  %12 = fmul double %1, %1, !dbg !1181
  %13 = fmul double %12, %10, !dbg !1182
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !1183
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1164, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1183
  %14 = call i32 @gsl_sf_ellint_RD_e(double noundef %handler_result2, double noundef %handler_result3, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %6), !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1166, metadata !DIExpression()), !dbg !1173
  %15 = fdiv double %11, 3.000000e+00, !dbg !1185
  %16 = load double, ptr %6, align 8, !dbg !1186, !tbaa !170
  %17 = fmul double %15, %16, !dbg !1187
  store double %17, ptr %3, align 8, !dbg !1188, !tbaa !170
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !1189
  %19 = fmul double %18, 0x3CB0000000000000, !dbg !1190
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1191
  %21 = load double, ptr %20, align 8, !dbg !1191, !tbaa !172
  %22 = fmul double %15, %21, !dbg !1192
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !1193
  %handler_result4 = call double @fAddHandlerDouble(double %19, double %23), !dbg !1194
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1194
  store double %handler_result4, ptr %24, align 8, !dbg !1195, !tbaa !172
  %25 = fcmp oeq double %8, 0.000000e+00, !dbg !1196
  br i1 %25, label %52, label %26, !dbg !1197

26:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1198, metadata !DIExpression(), metadata !1171, metadata ptr %5, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata double %1, metadata !1203, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %2, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr undef, metadata !1205, metadata !DIExpression()), !dbg !1210
  %27 = fcmp ult double %12, 1.000000e+00, !dbg !1211
  br i1 %27, label %29, label %28, !dbg !1212

28:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1213
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1213
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #6, !dbg !1214
  br label %39, !dbg !1214

29:                                               ; preds = %26
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %12), !dbg !1218
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !1206, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1218
  %30 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %handler_result5, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !1219
  call void @llvm.dbg.value(metadata i32 %30, metadata !1207, metadata !DIExpression()), !dbg !1208
  %31 = load double, ptr %5, align 8, !dbg !1220, !tbaa !170
  %32 = fmul double %31, 0x3FD5555555555555, !dbg !1221
  tail call void @llvm.dbg.value(metadata double %32, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1213
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !1222
  %34 = fmul double %33, 0x3CB0000000000000, !dbg !1223
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1224
  %36 = load double, ptr %35, align 8, !dbg !1224, !tbaa !172
  %37 = fmul double %36, 0x3FD5555555555555, !dbg !1225
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1226
  %handler_result6 = call double @fAddHandlerDouble(double %34, double %38), !dbg !1227
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1227
  br label %39

39:                                               ; preds = %29, %28
  %40 = phi double [ %handler_result6, %29 ], [ 0x7FF8000000000000, %28 ], !dbg !1228
  %41 = phi double [ %32, %29 ], [ 0x7FF8000000000000, %28 ], !dbg !1228
  %42 = phi i32 [ %30, %29 ], [ 1, %28 ], !dbg !1228
  tail call void @llvm.dbg.value(metadata double %41, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1213
  tail call void @llvm.dbg.value(metadata double %40, metadata !1167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1170, metadata !DIExpression()), !dbg !1213
  %43 = fmul double %8, 2.000000e+00, !dbg !1229
  %44 = fmul double %43, %41, !dbg !1230
  %45 = load double, ptr %3, align 8, !dbg !1231, !tbaa !170
  %handler_result7 = call double @fAddHandlerDouble(double %44, double %45), !dbg !1231
  store double %handler_result7, ptr %3, align 8, !dbg !1231, !tbaa !170
  %46 = tail call double @llvm.fabs.f64(double %8), !dbg !1232
  %47 = fmul double %46, 2.000000e+00, !dbg !1233
  %48 = fmul double %47, %40, !dbg !1234
  %49 = load double, ptr %24, align 8, !dbg !1235, !tbaa !172
  %handler_result8 = call double @fAddHandlerDouble(double %48, double %49), !dbg !1235
  store double %handler_result8, ptr %24, align 8, !dbg !1235, !tbaa !172
  %50 = icmp eq i32 %14, 0, !dbg !1236
  %51 = select i1 %50, i32 %42, i32 %14, !dbg !1236
  br label %52

52:                                               ; preds = %39, %4
  %53 = phi i32 [ %51, %39 ], [ %14, %4 ], !dbg !1237
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1238
  ret i32 %53, !dbg !1239
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Dcomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1201 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1198, metadata !DIExpression(), metadata !1240, metadata ptr %4, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata double %0, metadata !1203, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1204, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1205, metadata !DIExpression()), !dbg !1242
  %5 = fmul double %0, %0, !dbg !1243
  %6 = fcmp ult double %5, 1.000000e+00, !dbg !1244
  br i1 %6, label %9, label %7, !dbg !1245

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1246, !tbaa !170
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1246
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !1246, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #6, !dbg !1247
  br label %20, !dbg !1247

9:                                                ; preds = %3
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %5), !dbg !1248
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1206, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1248
  %10 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %4), !dbg !1249
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1207, metadata !DIExpression()), !dbg !1241
  %11 = load double, ptr %4, align 8, !dbg !1250, !tbaa !170
  %12 = fmul double %11, 0x3FD5555555555555, !dbg !1251
  store double %12, ptr %2, align 8, !dbg !1252, !tbaa !170
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !1253
  %14 = fmul double %13, 0x3CB0000000000000, !dbg !1254
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1255
  %16 = load double, ptr %15, align 8, !dbg !1255, !tbaa !172
  %17 = fmul double %16, 0x3FD5555555555555, !dbg !1256
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !1257
  %handler_result1 = call double @fAddHandlerDouble(double %14, double %18), !dbg !1258
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1258
  store double %handler_result1, ptr %19, align 8, !dbg !1259, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1260
  br label %20

20:                                               ; preds = %9, %7
  %21 = phi i32 [ 1, %7 ], [ %10, %9 ], !dbg !1261
  ret i32 %21, !dbg !1262
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1263 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Kcomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1264 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1272
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1270, metadata !DIExpression(), metadata !1272, metadata ptr %3, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata double %0, metadata !1268, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1269, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1274
  %4 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1274
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1271, metadata !DIExpression()), !dbg !1273
  %5 = icmp eq i32 %4, 0, !dbg !1275
  br i1 %5, label %7, label %6, !dbg !1274

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 595, i32 noundef %4) #6, !dbg !1277
  br label %7, !dbg !1277

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1274, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1280
  ret double %8, !dbg !1280
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Ecomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1281 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1285, metadata !DIExpression(), metadata !1287, metadata ptr %3, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata double %0, metadata !1283, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1289
  %4 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1289
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1286, metadata !DIExpression()), !dbg !1288
  %5 = icmp eq i32 %4, 0, !dbg !1290
  br i1 %5, label %7, label %6, !dbg !1289

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 600, i32 noundef %4) #6, !dbg !1292
  br label %7, !dbg !1292

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1289, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1295
  ret double %8, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Pcomp(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1296 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1305
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1306
  tail call void @llvm.dbg.value(metadata double %0, metadata !1300, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata double %1, metadata !1301, metadata !DIExpression()), !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1302, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1075, metadata !DIExpression(), metadata !1305, metadata ptr %4, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1084, metadata !DIExpression(), metadata !1306, metadata ptr %5, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata double %0, metadata !1080, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata double %1, metadata !1081, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %2, metadata !1082, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr undef, metadata !1083, metadata !DIExpression()), !dbg !1310
  %6 = fmul double %0, %0, !dbg !1311
  %7 = fcmp ult double %6, 1.000000e+00, !dbg !1312
  br i1 %7, label %9, label %8, !dbg !1313

8:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #6, !dbg !1314
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1307
  br label %19, !dbg !1315

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1316
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1317
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %6), !dbg !1318
  call void @llvm.dbg.value(metadata double %handler_result, metadata !1085, metadata !DIExpression()), !dbg !1308
  %10 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %4), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %10, metadata !1086, metadata !DIExpression()), !dbg !1308
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1319
  %11 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, double noundef %handler_result1, i32 noundef %2, ptr noundef nonnull %5), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %11, metadata !1087, metadata !DIExpression()), !dbg !1308
  %12 = load double, ptr %4, align 8, !dbg !1320, !tbaa !170
  %13 = fdiv double %1, 3.000000e+00, !dbg !1321
  %14 = load double, ptr %5, align 8, !dbg !1322, !tbaa !170
  %15 = fmul double %13, %14, !dbg !1323
  %handler_result2 = call double @fSubHandlerDouble(double %12, double %15), !dbg !1324
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  tail call void @llvm.dbg.value(metadata double poison, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1307
  %16 = icmp eq i32 %10, 0, !dbg !1324
  %17 = select i1 %16, i32 %11, i32 %10, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1325
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1325
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1304, metadata !DIExpression()), !dbg !1307
  %18 = icmp eq i32 %17, 0, !dbg !1326
  br i1 %18, label %22, label %19, !dbg !1315

19:                                               ; preds = %9, %8
  %20 = phi i32 [ 1, %8 ], [ %17, %9 ]
  %21 = phi double [ 0x7FF8000000000000, %8 ], [ %handler_result2, %9 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 605, i32 noundef %20) #6, !dbg !1328
  br label %22, !dbg !1328

22:                                               ; preds = %19, %9
  %23 = phi double [ %handler_result2, %9 ], [ %21, %19 ]
  ret double %23, !dbg !1331
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Dcomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1332 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1338
  tail call void @llvm.dbg.value(metadata double %0, metadata !1334, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1335, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1198, metadata !DIExpression(), metadata !1338, metadata ptr %3, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata double %0, metadata !1203, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i32 %1, metadata !1204, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr undef, metadata !1205, metadata !DIExpression()), !dbg !1342
  %4 = fmul double %0, %0, !dbg !1343
  %5 = fcmp ult double %4, 1.000000e+00, !dbg !1344
  br i1 %5, label %7, label %6, !dbg !1345

6:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1339
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1339
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #6, !dbg !1346
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1337, metadata !DIExpression()), !dbg !1339
  br label %12, !dbg !1347

7:                                                ; preds = %2
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %4), !dbg !1348
  call void @llvm.dbg.value(metadata double %handler_result, metadata !1206, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1348
  %8 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %handler_result, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %3), !dbg !1349
  call void @llvm.dbg.value(metadata i32 %8, metadata !1207, metadata !DIExpression()), !dbg !1340
  %9 = load double, ptr %3, align 8, !dbg !1350, !tbaa !170
  %10 = fmul double %9, 0x3FD5555555555555, !dbg !1351
  tail call void @llvm.dbg.value(metadata double %10, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1339
  tail call void @llvm.dbg.value(metadata double poison, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1339
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1352
  tail call void @llvm.dbg.value(metadata double %10, metadata !1336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1337, metadata !DIExpression()), !dbg !1339
  %11 = icmp eq i32 %8, 0, !dbg !1353
  br i1 %11, label %15, label %12, !dbg !1347

12:                                               ; preds = %7, %6
  %13 = phi i32 [ 1, %6 ], [ %8, %7 ]
  %14 = phi double [ 0x7FF8000000000000, %6 ], [ %10, %7 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 610, i32 noundef %13) #6, !dbg !1355
  br label %15, !dbg !1355

15:                                               ; preds = %12, %7
  %16 = phi double [ %10, %7 ], [ %14, %12 ]
  ret double %16, !dbg !1358
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_F(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1359 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1366
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1367
  tail call void @llvm.dbg.value(metadata double %0, metadata !1361, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata double %1, metadata !1362, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1363, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.assign(metadata i1 undef, metadata !732, metadata !DIExpression(), metadata !1366, metadata ptr %4, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !734, metadata !DIExpression(), metadata !1367, metadata ptr %5, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata double %0, metadata !721, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata double %1, metadata !722, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %2, metadata !723, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata ptr undef, metadata !724, metadata !DIExpression()), !dbg !1372
  %6 = fdiv double %0, 0x400921FB54442D18, !dbg !1373
  %handler_result = call double @fAddHandlerDouble(double %6, double 5.000000e-01), !dbg !1374
  %7 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1374
  call void @llvm.dbg.value(metadata double %7, metadata !725, metadata !DIExpression()), !dbg !1372
  %8 = fmul double %7, 0x400921FB54442D18, !dbg !1375
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %8), !dbg !1376
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !726, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !721, metadata !DIExpression()), !dbg !1372
  %handler_result5 = call double @callHandler(i32 1, double %handler_result1, double %handler_result1), !dbg !1377
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !727, metadata !DIExpression()), !dbg !1369
  %9 = fmul double %handler_result5, %handler_result5, !dbg !1377
  call void @llvm.dbg.value(metadata double %9, metadata !729, metadata !DIExpression()), !dbg !1369
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %9), !dbg !1378
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !730, metadata !DIExpression()), !dbg !1369
  %10 = fmul double %1, %1, !dbg !1378
  %11 = fmul double %10, %9, !dbg !1379
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !1380
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !731, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1380
  %12 = call i32 @gsl_sf_ellint_RF_e(double noundef %handler_result2, double noundef %handler_result3, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %4), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %12, metadata !733, metadata !DIExpression()), !dbg !1369
  %13 = load double, ptr %4, align 8, !dbg !1382, !tbaa !170
  %14 = fmul double %handler_result5, %13, !dbg !1383
  tail call void @llvm.dbg.value(metadata double %14, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1368
  tail call void @llvm.dbg.value(metadata double poison, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1368
  %15 = fcmp oeq double %7, 0.000000e+00, !dbg !1384
  br i1 %15, label %23, label %16, !dbg !1385

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1386
  %17 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %5), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %17, metadata !737, metadata !DIExpression()), !dbg !1371
  %18 = fmul double %7, 2.000000e+00, !dbg !1388
  %19 = load double, ptr %5, align 8, !dbg !1389, !tbaa !170
  %20 = fmul double %18, %19, !dbg !1390
  %handler_result4 = call double @fAddHandlerDouble(double %14, double %20), !dbg !1391
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1368
  tail call void @llvm.dbg.value(metadata double poison, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1368
  %21 = icmp eq i32 %12, 0, !dbg !1391
  %22 = select i1 %21, i32 %17, i32 %12, !dbg !1391
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1392
  br label %23

23:                                               ; preds = %16, %3
  %24 = phi double [ %14, %3 ], [ %handler_result4, %16 ], !dbg !1369
  %25 = phi i32 [ %12, %3 ], [ %22, %16 ], !dbg !1393
  tail call void @llvm.dbg.value(metadata double %24, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1368
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1394
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1365, metadata !DIExpression()), !dbg !1368
  %26 = icmp eq i32 %25, 0, !dbg !1395
  br i1 %26, label %28, label %27, !dbg !1397

27:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 615, i32 noundef %25) #6, !dbg !1398
  br label %28, !dbg !1398

28:                                               ; preds = %27, %23
  ret double %24, !dbg !1401
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_E(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1402 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1409
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1407, metadata !DIExpression(), metadata !1409, metadata ptr %4, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %0, metadata !1404, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata double %1, metadata !1405, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1406, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1411
  %5 = call i32 @gsl_sf_ellint_E_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1408, metadata !DIExpression()), !dbg !1410
  %6 = icmp eq i32 %5, 0, !dbg !1412
  br i1 %6, label %8, label %7, !dbg !1411

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef %5) #6, !dbg !1414
  br label %8, !dbg !1414

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !1411, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1417
  ret double %9, !dbg !1417
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_P(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1418 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1426, metadata !DIExpression(), metadata !1428, metadata ptr %5, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double %0, metadata !1422, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double %1, metadata !1423, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata double %2, metadata !1424, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1425, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1430
  %6 = call i32 @gsl_sf_ellint_P_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1427, metadata !DIExpression()), !dbg !1429
  %7 = icmp eq i32 %6, 0, !dbg !1431
  br i1 %7, label %9, label %8, !dbg !1430

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 625, i32 noundef %6) #6, !dbg !1433
  br label %9, !dbg !1433

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1430, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1436
  ret double %10, !dbg !1436
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_D(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1437 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1442, metadata !DIExpression(), metadata !1444, metadata ptr %4, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata double %0, metadata !1439, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata double %1, metadata !1440, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1441, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1446
  %5 = call i32 @gsl_sf_ellint_D_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1443, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq i32 %5, 0, !dbg !1447
  br i1 %6, label %8, label %7, !dbg !1446

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 630, i32 noundef %5) #6, !dbg !1449
  br label %8, !dbg !1449

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !1446, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1452
  ret double %9, !dbg !1452
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RC(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1453 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1460
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1458, metadata !DIExpression(), metadata !1460, metadata ptr %4, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata double %0, metadata !1455, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata double %1, metadata !1456, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1457, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !1462
  %5 = call i32 @gsl_sf_ellint_RC_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1462, !range !658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1459, metadata !DIExpression()), !dbg !1461
  %6 = icmp eq i32 %5, 0, !dbg !1463
  br i1 %6, label %8, label %7, !dbg !1462

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 635, i32 noundef %5) #6, !dbg !1465
  br label %8, !dbg !1465

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !1462, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !1468
  ret double %9, !dbg !1468
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RD(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1469 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1475, metadata !DIExpression(), metadata !1477, metadata ptr %5, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata double %0, metadata !1471, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata double %1, metadata !1472, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata double %2, metadata !1473, metadata !DIExpression()), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1474, metadata !DIExpression()), !dbg !1478
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1479
  %6 = call i32 @gsl_sf_ellint_RD_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1476, metadata !DIExpression()), !dbg !1478
  %7 = icmp eq i32 %6, 0, !dbg !1480
  br i1 %7, label %9, label %8, !dbg !1479

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 640, i32 noundef %6) #6, !dbg !1482
  br label %9, !dbg !1482

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1479, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1485
  ret double %10, !dbg !1485
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RF(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1486 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1492, metadata !DIExpression(), metadata !1494, metadata ptr %5, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata double %0, metadata !1488, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata double %1, metadata !1489, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata double %2, metadata !1490, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1491, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !1496
  %6 = call i32 @gsl_sf_ellint_RF_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1496
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1493, metadata !DIExpression()), !dbg !1495
  %7 = icmp eq i32 %6, 0, !dbg !1497
  br i1 %7, label %9, label %8, !dbg !1496

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 645, i32 noundef %6) #6, !dbg !1499
  br label %9, !dbg !1499

9:                                                ; preds = %8, %4
  %10 = load double, ptr %5, align 8, !dbg !1496, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1502
  ret double %10, !dbg !1502
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RJ(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !1503 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1512, metadata !DIExpression(), metadata !1514, metadata ptr %6, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata double %0, metadata !1507, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata double %1, metadata !1508, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata double %2, metadata !1509, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata double %3, metadata !1510, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1511, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !1516
  %7 = call i32 @gsl_sf_ellint_RJ_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull %6), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1513, metadata !DIExpression()), !dbg !1515
  %8 = icmp eq i32 %7, 0, !dbg !1517
  br i1 %8, label %10, label %9, !dbg !1516

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 650, i32 noundef %7) #6, !dbg !1519
  br label %10, !dbg !1519

10:                                               ; preds = %9, %5
  %11 = load double, ptr %6, align 8, !dbg !1516, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1522
  ret double %11, !dbg !1522
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!56}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ellint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "17ca53cadc46e90f598fe82f1d0ad055")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 26)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 40)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 43)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !19, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 41)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 620, type: !33, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 44)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !33, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !19, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 640, type: !26, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !26, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 650, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 46)
!56 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !97, globals: !99, splitDebugInlining: false, nameTableKind: None)
!57 = !{!58}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 39, baseType: !60, size: 32, elements: !61)
!59 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!62 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!63 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!64 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!65 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!66 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!67 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!68 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!69 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!70 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!71 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!72 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!73 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!74 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!75 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!76 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!77 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!78 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!79 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!80 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!81 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!82 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!83 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!84 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!85 = !DIEnumerator(name: "GSL_ESING", value: 21)
!86 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!87 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!88 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!89 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!90 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!91 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!92 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!93 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!94 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!95 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!96 = !DIEnumerator(name: "GSL_EOF", value: 32)
!97 = !{!98}
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!0, !7, !12, !17, !22, !24, !29, !31, !36, !38, !43, !45, !47, !49, !51}
!100 = !{i32 7, !"Dwarf Version", i32 5}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 4}
!103 = !{i32 8, !"PIC Level", i32 2}
!104 = !{i32 7, !"PIE Level", i32 2}
!105 = !{i32 7, !"uwtable", i32 2}
!106 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!107 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!108 = distinct !DISubprogram(name: "gsl_sf_ellint_RC_e", scope: !2, file: !2, line: 74, type: !109, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !121)
!109 = !DISubroutineType(types: !110)
!110 = !{!60, !111, !111, !112, !114}
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !113, line: 50, baseType: !98)
!113 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !116, line: 41, baseType: !117)
!116 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !116, line: 37, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !116, line: 38, baseType: !111, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !117, file: !116, line: 39, baseType: !111, size: 64, offset: 64)
!121 = !{!122, !123, !124, !125, !126, !128, !129, !133, !134, !135, !137, !141, !142, !143, !144, !145, !146, !147, !148}
!122 = !DILocalVariable(name: "x", arg: 1, scope: !108, file: !2, line: 74, type: !111)
!123 = !DILocalVariable(name: "y", arg: 2, scope: !108, file: !2, line: 74, type: !111)
!124 = !DILocalVariable(name: "mode", arg: 3, scope: !108, file: !2, line: 74, type: !112)
!125 = !DILocalVariable(name: "result", arg: 4, scope: !108, file: !2, line: 74, type: !114)
!126 = !DILocalVariable(name: "lolim", scope: !108, file: !2, line: 76, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!128 = !DILocalVariable(name: "uplim", scope: !108, file: !2, line: 77, type: !127)
!129 = !DILocalVariable(name: "goal", scope: !108, file: !2, line: 78, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_prec_t", file: !132, line: 42, baseType: !98)
!132 = !DIFile(filename: "../gsl/gsl_precision.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c2d989a32da557bd99ff9561902c5d43")
!133 = !DILocalVariable(name: "errtol", scope: !108, file: !2, line: 79, type: !127)
!134 = !DILocalVariable(name: "prec", scope: !108, file: !2, line: 80, type: !127)
!135 = !DILocalVariable(name: "nmax", scope: !108, file: !2, line: 81, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!137 = !DILocalVariable(name: "c1", scope: !138, file: !2, line: 87, type: !127)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 86, column: 34)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 86, column: 11)
!140 = distinct !DILexicalBlock(scope: !108, file: !2, line: 83, column: 6)
!141 = !DILocalVariable(name: "c2", scope: !138, file: !2, line: 88, type: !127)
!142 = !DILocalVariable(name: "xn", scope: !138, file: !2, line: 89, type: !111)
!143 = !DILocalVariable(name: "yn", scope: !138, file: !2, line: 90, type: !111)
!144 = !DILocalVariable(name: "mu", scope: !138, file: !2, line: 91, type: !111)
!145 = !DILocalVariable(name: "sn", scope: !138, file: !2, line: 91, type: !111)
!146 = !DILocalVariable(name: "lamda", scope: !138, file: !2, line: 91, type: !111)
!147 = !DILocalVariable(name: "s", scope: !138, file: !2, line: 91, type: !111)
!148 = !DILocalVariable(name: "n", scope: !138, file: !2, line: 92, type: !60)
!149 = !DILocation(line: 0, scope: !108)
!150 = !DILocalVariable(name: "mt", arg: 1, scope: !151, file: !113, line: 74, type: !112)
!151 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !113, file: !113, line: 74, type: !152, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!98, !112}
!154 = !{!150}
!155 = !DILocation(line: 0, scope: !151, inlinedAt: !156)
!156 = distinct !DILocation(line: 78, column: 27, scope: !108)
!157 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !156)
!158 = !DILocation(line: 79, column: 32, scope: !108)
!159 = !DILocation(line: 79, column: 27, scope: !108)
!160 = !DILocation(line: 80, column: 25, scope: !108)
!161 = !{!162, !162, i64 0}
!162 = !{!"double", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 83, column: 8, scope: !140)
!166 = !DILocation(line: 83, column: 14, scope: !140)
!167 = !DILocation(line: 84, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 84, column: 5)
!169 = distinct !DILexicalBlock(scope: !140, file: !2, line: 83, column: 43)
!170 = !{!171, !162, i64 0}
!171 = !{!"gsl_sf_result_struct", !162, i64 0, !162, i64 8}
!172 = !{!171, !162, i64 8}
!173 = !DILocation(line: 84, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !2, line: 84, column: 5)
!175 = !DILocation(line: 86, column: 11, scope: !139)
!176 = !DILocation(line: 86, column: 25, scope: !139)
!177 = !DILocation(line: 86, column: 11, scope: !140)
!178 = !DILocation(line: 0, scope: !138)
!179 = !DILocation(line: 94, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !138, file: !2, line: 93, column: 14)
!181 = !DILocation(line: 94, column: 27, scope: !180)
!182 = !DILocation(line: 95, column: 22, scope: !180)
!183 = !DILocation(line: 96, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !2, line: 96, column: 11)
!185 = !DILocation(line: 96, column: 20, scope: !184)
!186 = !DILocation(line: 96, column: 11, scope: !180)
!187 = !DILocation(line: 97, column: 21, scope: !180)
!188 = !DILocation(line: 97, column: 19, scope: !180)
!189 = !DILocation(line: 97, column: 32, scope: !180)
!190 = !DILocation(line: 97, column: 30, scope: !180)
!191 = !DILocation(line: 98, column: 16, scope: !180)
!192 = !DILocation(line: 98, column: 25, scope: !180)
!193 = !DILocation(line: 99, column: 25, scope: !180)
!194 = !DILocation(line: 100, column: 8, scope: !180)
!195 = !DILocation(line: 101, column: 11, scope: !196)
!196 = distinct !DILexicalBlock(scope: !180, file: !2, line: 101, column: 10)
!197 = !DILocation(line: 101, column: 10, scope: !180)
!198 = distinct !{!198, !199, !200}
!199 = !DILocation(line: 93, column: 5, scope: !138)
!200 = !DILocation(line: 104, column: 5, scope: !138)
!201 = !DILocation(line: 102, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 102, column: 9)
!203 = distinct !DILexicalBlock(scope: !196, file: !2, line: 101, column: 19)
!204 = !DILocation(line: 102, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !2, line: 102, column: 9)
!206 = !DILocation(line: 105, column: 12, scope: !138)
!207 = !DILocation(line: 105, column: 54, scope: !138)
!208 = !DILocation(line: 105, column: 40, scope: !138)
!209 = !DILocation(line: 105, column: 29, scope: !138)
!210 = !DILocation(line: 105, column: 17, scope: !138)
!211 = !DILocation(line: 106, column: 31, scope: !138)
!212 = !DILocation(line: 106, column: 29, scope: !138)
!213 = !DILocation(line: 106, column: 17, scope: !138)
!214 = !DILocation(line: 107, column: 26, scope: !138)
!215 = !DILocation(line: 107, column: 24, scope: !138)
!216 = !DILocation(line: 107, column: 13, scope: !138)
!217 = !DILocation(line: 107, column: 17, scope: !138)
!218 = !DILocation(line: 108, column: 5, scope: !138)
!219 = !DILocation(line: 111, column: 5, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 111, column: 5)
!221 = distinct !DILexicalBlock(scope: !139, file: !2, line: 110, column: 8)
!222 = !DILocation(line: 111, column: 5, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !2, line: 111, column: 5)
!224 = !DILocation(line: 0, scope: !140)
!225 = !DILocation(line: 113, column: 1, scope: !108)
!226 = !DISubprogram(name: "gsl_error", scope: !59, file: !59, line: 77, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229, !229, !60, !60}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!231 = !DISubprogram(name: "sqrt", scope: !232, file: !232, line: 143, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!233 = !DISubroutineType(types: !234)
!234 = !{!111, !111}
!235 = distinct !DISubprogram(name: "gsl_sf_ellint_RD_e", scope: !2, file: !2, line: 117, type: !236, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!60, !111, !111, !111, !112, !114}
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !276, !277, !278, !279}
!239 = !DILocalVariable(name: "x", arg: 1, scope: !235, file: !2, line: 117, type: !111)
!240 = !DILocalVariable(name: "y", arg: 2, scope: !235, file: !2, line: 117, type: !111)
!241 = !DILocalVariable(name: "z", arg: 3, scope: !235, file: !2, line: 117, type: !111)
!242 = !DILocalVariable(name: "mode", arg: 4, scope: !235, file: !2, line: 117, type: !112)
!243 = !DILocalVariable(name: "result", arg: 5, scope: !235, file: !2, line: 117, type: !114)
!244 = !DILocalVariable(name: "goal", scope: !235, file: !2, line: 119, type: !130)
!245 = !DILocalVariable(name: "errtol", scope: !235, file: !2, line: 120, type: !127)
!246 = !DILocalVariable(name: "prec", scope: !235, file: !2, line: 121, type: !127)
!247 = !DILocalVariable(name: "lolim", scope: !235, file: !2, line: 122, type: !127)
!248 = !DILocalVariable(name: "uplim", scope: !235, file: !2, line: 123, type: !127)
!249 = !DILocalVariable(name: "nmax", scope: !235, file: !2, line: 124, type: !136)
!250 = !DILocalVariable(name: "c1", scope: !251, file: !2, line: 130, type: !127)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 129, column: 35)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 129, column: 11)
!253 = distinct !DILexicalBlock(scope: !235, file: !2, line: 126, column: 6)
!254 = !DILocalVariable(name: "c2", scope: !251, file: !2, line: 131, type: !127)
!255 = !DILocalVariable(name: "c3", scope: !251, file: !2, line: 132, type: !127)
!256 = !DILocalVariable(name: "c4", scope: !251, file: !2, line: 133, type: !127)
!257 = !DILocalVariable(name: "xn", scope: !251, file: !2, line: 134, type: !111)
!258 = !DILocalVariable(name: "yn", scope: !251, file: !2, line: 135, type: !111)
!259 = !DILocalVariable(name: "zn", scope: !251, file: !2, line: 136, type: !111)
!260 = !DILocalVariable(name: "sigma", scope: !251, file: !2, line: 137, type: !111)
!261 = !DILocalVariable(name: "power4", scope: !251, file: !2, line: 138, type: !111)
!262 = !DILocalVariable(name: "ea", scope: !251, file: !2, line: 139, type: !111)
!263 = !DILocalVariable(name: "eb", scope: !251, file: !2, line: 139, type: !111)
!264 = !DILocalVariable(name: "ec", scope: !251, file: !2, line: 139, type: !111)
!265 = !DILocalVariable(name: "ed", scope: !251, file: !2, line: 139, type: !111)
!266 = !DILocalVariable(name: "ef", scope: !251, file: !2, line: 139, type: !111)
!267 = !DILocalVariable(name: "s1", scope: !251, file: !2, line: 139, type: !111)
!268 = !DILocalVariable(name: "s2", scope: !251, file: !2, line: 139, type: !111)
!269 = !DILocalVariable(name: "mu", scope: !251, file: !2, line: 140, type: !111)
!270 = !DILocalVariable(name: "xndev", scope: !251, file: !2, line: 140, type: !111)
!271 = !DILocalVariable(name: "yndev", scope: !251, file: !2, line: 140, type: !111)
!272 = !DILocalVariable(name: "zndev", scope: !251, file: !2, line: 140, type: !111)
!273 = !DILocalVariable(name: "n", scope: !251, file: !2, line: 141, type: !60)
!274 = !DILocalVariable(name: "xnroot", scope: !275, file: !2, line: 143, type: !111)
!275 = distinct !DILexicalBlock(scope: !251, file: !2, line: 142, column: 14)
!276 = !DILocalVariable(name: "ynroot", scope: !275, file: !2, line: 143, type: !111)
!277 = !DILocalVariable(name: "znroot", scope: !275, file: !2, line: 143, type: !111)
!278 = !DILocalVariable(name: "lamda", scope: !275, file: !2, line: 143, type: !111)
!279 = !DILocalVariable(name: "epslon", scope: !275, file: !2, line: 144, type: !111)
!280 = !DILocation(line: 0, scope: !235)
!281 = !DILocation(line: 0, scope: !151, inlinedAt: !282)
!282 = distinct !DILocation(line: 119, column: 27, scope: !235)
!283 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !282)
!284 = !DILocation(line: 120, column: 32, scope: !235)
!285 = !DILocation(line: 120, column: 27, scope: !235)
!286 = !DILocation(line: 121, column: 25, scope: !235)
!287 = !DILocation(line: 123, column: 31, scope: !235)
!288 = !DILocation(line: 123, column: 38, scope: !235)
!289 = !DILocation(line: 123, column: 24, scope: !235)
!290 = !DILocation(line: 126, column: 6, scope: !253)
!291 = !DILocation(line: 126, column: 19, scope: !253)
!292 = !DILocation(line: 126, column: 25, scope: !253)
!293 = !DILocation(line: 126, column: 28, scope: !253)
!294 = !DILocation(line: 126, column: 43, scope: !253)
!295 = !DILocation(line: 126, column: 6, scope: !235)
!296 = !DILocation(line: 127, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 127, column: 5)
!298 = distinct !DILexicalBlock(scope: !253, file: !2, line: 126, column: 52)
!299 = !DILocation(line: 127, column: 5, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !2, line: 127, column: 5)
!301 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !2, line: 33, type: !111)
!302 = distinct !DISubprogram(name: "locMAX3", scope: !2, file: !2, line: 33, type: !303, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!111, !111, !111, !111}
!305 = !{!301, !306, !307, !308}
!306 = !DILocalVariable(name: "y", arg: 2, scope: !302, file: !2, line: 33, type: !111)
!307 = !DILocalVariable(name: "z", arg: 3, scope: !302, file: !2, line: 33, type: !111)
!308 = !DILocalVariable(name: "xy", scope: !302, file: !2, line: 35, type: !111)
!309 = !DILocation(line: 0, scope: !302, inlinedAt: !310)
!310 = distinct !DILocation(line: 129, column: 11, scope: !252)
!311 = !DILocation(line: 35, column: 15, scope: !302, inlinedAt: !310)
!312 = !DILocation(line: 36, column: 10, scope: !302, inlinedAt: !310)
!313 = !DILocation(line: 129, column: 26, scope: !252)
!314 = !DILocation(line: 129, column: 11, scope: !253)
!315 = !DILocation(line: 138, column: 12, scope: !251)
!316 = !DILocation(line: 137, column: 12, scope: !251)
!317 = !DILocation(line: 141, column: 9, scope: !251)
!318 = !DILocation(line: 136, column: 12, scope: !251)
!319 = !DILocation(line: 135, column: 12, scope: !251)
!320 = !DILocation(line: 134, column: 12, scope: !251)
!321 = !DILocation(line: 0, scope: !251)
!322 = !DILocation(line: 145, column: 27, scope: !275)
!323 = !DILocation(line: 145, column: 33, scope: !275)
!324 = !DILocation(line: 146, column: 25, scope: !275)
!325 = !DILocation(line: 147, column: 25, scope: !275)
!326 = !DILocation(line: 148, column: 25, scope: !275)
!327 = !DILocation(line: 149, column: 24, scope: !275)
!328 = !DILocation(line: 149, column: 37, scope: !275)
!329 = !DILocation(line: 149, column: 50, scope: !275)
!330 = !DILocation(line: 0, scope: !302, inlinedAt: !331)
!331 = distinct !DILocation(line: 149, column: 16, scope: !275)
!332 = !DILocation(line: 35, column: 15, scope: !302, inlinedAt: !331)
!333 = !DILocation(line: 36, column: 10, scope: !302, inlinedAt: !331)
!334 = !DILocation(line: 0, scope: !275)
!335 = !DILocation(line: 150, column: 18, scope: !336)
!336 = distinct !DILexicalBlock(scope: !275, file: !2, line: 150, column: 11)
!337 = !DILocation(line: 150, column: 11, scope: !275)
!338 = !DILocation(line: 151, column: 16, scope: !275)
!339 = !DILocation(line: 152, column: 16, scope: !275)
!340 = !DILocation(line: 153, column: 16, scope: !275)
!341 = !DILocation(line: 154, column: 22, scope: !275)
!342 = !DILocation(line: 154, column: 51, scope: !275)
!343 = !DILocation(line: 155, column: 40, scope: !275)
!344 = !DILocation(line: 155, column: 34, scope: !275)
!345 = !DILocation(line: 155, column: 24, scope: !275)
!346 = !DILocation(line: 156, column: 14, scope: !275)
!347 = !DILocation(line: 157, column: 25, scope: !275)
!348 = !DILocation(line: 158, column: 25, scope: !275)
!349 = !DILocation(line: 159, column: 25, scope: !275)
!350 = !DILocation(line: 160, column: 8, scope: !275)
!351 = !DILocation(line: 161, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !275, file: !2, line: 161, column: 10)
!353 = !DILocation(line: 161, column: 10, scope: !275)
!354 = !DILocation(line: 162, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 162, column: 9)
!356 = distinct !DILexicalBlock(scope: !352, file: !2, line: 161, column: 19)
!357 = !DILocation(line: 162, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !2, line: 162, column: 9)
!359 = !DILocation(line: 165, column: 16, scope: !251)
!360 = !DILocation(line: 166, column: 16, scope: !251)
!361 = !DILocation(line: 168, column: 19, scope: !251)
!362 = !DILocation(line: 169, column: 13, scope: !251)
!363 = !DILocation(line: 169, column: 18, scope: !251)
!364 = !DILocation(line: 170, column: 33, scope: !251)
!365 = !DILocation(line: 170, column: 49, scope: !251)
!366 = !DILocation(line: 170, column: 57, scope: !251)
!367 = !DILocation(line: 170, column: 13, scope: !251)
!368 = !DILocation(line: 171, column: 22, scope: !251)
!369 = !DILocation(line: 171, column: 43, scope: !251)
!370 = !DILocation(line: 171, column: 56, scope: !251)
!371 = !DILocation(line: 171, column: 61, scope: !251)
!372 = !DILocation(line: 171, column: 35, scope: !251)
!373 = !DILocation(line: 171, column: 16, scope: !251)
!374 = !DILocation(line: 172, column: 23, scope: !251)
!375 = !DILocation(line: 172, column: 52, scope: !251)
!376 = !DILocation(line: 172, column: 40, scope: !251)
!377 = !DILocation(line: 172, column: 66, scope: !251)
!378 = !DILocation(line: 172, column: 64, scope: !251)
!379 = !DILocation(line: 172, column: 58, scope: !251)
!380 = !DILocation(line: 172, column: 17, scope: !251)
!381 = !DILocation(line: 173, column: 26, scope: !251)
!382 = !DILocation(line: 173, column: 24, scope: !251)
!383 = !DILocation(line: 173, column: 13, scope: !251)
!384 = !DILocation(line: 173, column: 17, scope: !251)
!385 = !DILocation(line: 174, column: 5, scope: !251)
!386 = !DILocation(line: 177, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 177, column: 5)
!388 = distinct !DILexicalBlock(scope: !252, file: !2, line: 176, column: 8)
!389 = !DILocation(line: 177, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !2, line: 177, column: 5)
!391 = !DILocation(line: 179, column: 1, scope: !235)
!392 = !DISubprogram(name: "pow", scope: !232, file: !232, line: 140, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!111, !111, !111}
!395 = distinct !DISubprogram(name: "gsl_sf_ellint_RF_e", scope: !2, file: !2, line: 183, type: !236, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !428, !429, !430, !431}
!397 = !DILocalVariable(name: "x", arg: 1, scope: !395, file: !2, line: 183, type: !111)
!398 = !DILocalVariable(name: "y", arg: 2, scope: !395, file: !2, line: 183, type: !111)
!399 = !DILocalVariable(name: "z", arg: 3, scope: !395, file: !2, line: 183, type: !111)
!400 = !DILocalVariable(name: "mode", arg: 4, scope: !395, file: !2, line: 183, type: !112)
!401 = !DILocalVariable(name: "result", arg: 5, scope: !395, file: !2, line: 183, type: !114)
!402 = !DILocalVariable(name: "lolim", scope: !395, file: !2, line: 185, type: !127)
!403 = !DILocalVariable(name: "uplim", scope: !395, file: !2, line: 186, type: !127)
!404 = !DILocalVariable(name: "goal", scope: !395, file: !2, line: 187, type: !130)
!405 = !DILocalVariable(name: "errtol", scope: !395, file: !2, line: 188, type: !127)
!406 = !DILocalVariable(name: "prec", scope: !395, file: !2, line: 189, type: !127)
!407 = !DILocalVariable(name: "nmax", scope: !395, file: !2, line: 190, type: !136)
!408 = !DILocalVariable(name: "c1", scope: !409, file: !2, line: 199, type: !127)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 198, column: 35)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 198, column: 11)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 195, column: 11)
!412 = distinct !DILexicalBlock(scope: !395, file: !2, line: 192, column: 6)
!413 = !DILocalVariable(name: "c2", scope: !409, file: !2, line: 200, type: !127)
!414 = !DILocalVariable(name: "c3", scope: !409, file: !2, line: 201, type: !127)
!415 = !DILocalVariable(name: "xn", scope: !409, file: !2, line: 202, type: !111)
!416 = !DILocalVariable(name: "yn", scope: !409, file: !2, line: 203, type: !111)
!417 = !DILocalVariable(name: "zn", scope: !409, file: !2, line: 204, type: !111)
!418 = !DILocalVariable(name: "mu", scope: !409, file: !2, line: 205, type: !111)
!419 = !DILocalVariable(name: "xndev", scope: !409, file: !2, line: 205, type: !111)
!420 = !DILocalVariable(name: "yndev", scope: !409, file: !2, line: 205, type: !111)
!421 = !DILocalVariable(name: "zndev", scope: !409, file: !2, line: 205, type: !111)
!422 = !DILocalVariable(name: "e2", scope: !409, file: !2, line: 205, type: !111)
!423 = !DILocalVariable(name: "e3", scope: !409, file: !2, line: 205, type: !111)
!424 = !DILocalVariable(name: "s", scope: !409, file: !2, line: 205, type: !111)
!425 = !DILocalVariable(name: "n", scope: !409, file: !2, line: 206, type: !60)
!426 = !DILocalVariable(name: "epslon", scope: !427, file: !2, line: 208, type: !111)
!427 = distinct !DILexicalBlock(scope: !409, file: !2, line: 207, column: 14)
!428 = !DILocalVariable(name: "lamda", scope: !427, file: !2, line: 208, type: !111)
!429 = !DILocalVariable(name: "xnroot", scope: !427, file: !2, line: 209, type: !111)
!430 = !DILocalVariable(name: "ynroot", scope: !427, file: !2, line: 209, type: !111)
!431 = !DILocalVariable(name: "znroot", scope: !427, file: !2, line: 209, type: !111)
!432 = !DILocation(line: 0, scope: !395)
!433 = !DILocation(line: 0, scope: !151, inlinedAt: !434)
!434 = distinct !DILocation(line: 187, column: 27, scope: !395)
!435 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !434)
!436 = !DILocation(line: 188, column: 32, scope: !395)
!437 = !DILocation(line: 188, column: 27, scope: !395)
!438 = !DILocation(line: 189, column: 25, scope: !395)
!439 = !DILocation(line: 192, column: 8, scope: !412)
!440 = !DILocation(line: 192, column: 14, scope: !412)
!441 = !DILocation(line: 193, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !2, line: 193, column: 5)
!443 = distinct !DILexicalBlock(scope: !412, file: !2, line: 192, column: 37)
!444 = !DILocation(line: 193, column: 5, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !2, line: 193, column: 5)
!446 = !DILocation(line: 195, column: 15, scope: !411)
!447 = !DILocation(line: 195, column: 23, scope: !411)
!448 = !DILocation(line: 196, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 196, column: 5)
!450 = distinct !DILexicalBlock(scope: !411, file: !2, line: 195, column: 54)
!451 = !DILocation(line: 196, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !2, line: 196, column: 5)
!453 = !DILocation(line: 0, scope: !302, inlinedAt: !454)
!454 = distinct !DILocation(line: 198, column: 11, scope: !410)
!455 = !DILocation(line: 35, column: 15, scope: !302, inlinedAt: !454)
!456 = !DILocation(line: 36, column: 10, scope: !302, inlinedAt: !454)
!457 = !DILocation(line: 198, column: 26, scope: !410)
!458 = !DILocation(line: 198, column: 11, scope: !411)
!459 = !DILocation(line: 206, column: 9, scope: !409)
!460 = !DILocation(line: 204, column: 12, scope: !409)
!461 = !DILocation(line: 203, column: 12, scope: !409)
!462 = !DILocation(line: 202, column: 12, scope: !409)
!463 = !DILocation(line: 0, scope: !409)
!464 = !DILocation(line: 210, column: 21, scope: !427)
!465 = !DILocation(line: 210, column: 27, scope: !427)
!466 = !DILocation(line: 211, column: 31, scope: !427)
!467 = !DILocation(line: 212, column: 25, scope: !427)
!468 = !DILocation(line: 212, column: 31, scope: !427)
!469 = !DILocation(line: 213, column: 25, scope: !427)
!470 = !DILocation(line: 213, column: 31, scope: !427)
!471 = !DILocation(line: 214, column: 24, scope: !427)
!472 = !DILocation(line: 214, column: 37, scope: !427)
!473 = !DILocation(line: 214, column: 50, scope: !427)
!474 = !DILocation(line: 0, scope: !302, inlinedAt: !475)
!475 = distinct !DILocation(line: 214, column: 16, scope: !427)
!476 = !DILocation(line: 35, column: 15, scope: !302, inlinedAt: !475)
!477 = !DILocation(line: 36, column: 10, scope: !302, inlinedAt: !475)
!478 = !DILocation(line: 0, scope: !427)
!479 = !DILocation(line: 215, column: 18, scope: !480)
!480 = distinct !DILexicalBlock(scope: !427, file: !2, line: 215, column: 11)
!481 = !DILocation(line: 215, column: 11, scope: !427)
!482 = !DILocation(line: 216, column: 16, scope: !427)
!483 = !DILocation(line: 217, column: 16, scope: !427)
!484 = !DILocation(line: 218, column: 16, scope: !427)
!485 = !DILocation(line: 219, column: 22, scope: !427)
!486 = !DILocation(line: 219, column: 51, scope: !427)
!487 = !DILocation(line: 220, column: 16, scope: !427)
!488 = !DILocation(line: 220, column: 25, scope: !427)
!489 = !DILocation(line: 221, column: 25, scope: !427)
!490 = !DILocation(line: 222, column: 25, scope: !427)
!491 = !DILocation(line: 223, column: 8, scope: !427)
!492 = !DILocation(line: 224, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !427, file: !2, line: 224, column: 10)
!494 = !DILocation(line: 224, column: 10, scope: !427)
!495 = !DILocation(line: 225, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 225, column: 9)
!497 = distinct !DILexicalBlock(scope: !493, file: !2, line: 224, column: 19)
!498 = !DILocation(line: 225, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !2, line: 225, column: 9)
!500 = !DILocation(line: 228, column: 16, scope: !409)
!501 = !DILocation(line: 228, column: 32, scope: !409)
!502 = !DILocation(line: 229, column: 24, scope: !409)
!503 = !DILocation(line: 230, column: 19, scope: !409)
!504 = !DILocation(line: 230, column: 35, scope: !409)
!505 = !DILocation(line: 230, column: 41, scope: !409)
!506 = !DILocation(line: 230, column: 51, scope: !409)
!507 = !DILocation(line: 231, column: 23, scope: !409)
!508 = !DILocation(line: 231, column: 21, scope: !409)
!509 = !DILocation(line: 231, column: 17, scope: !409)
!510 = !DILocation(line: 232, column: 26, scope: !409)
!511 = !DILocation(line: 232, column: 24, scope: !409)
!512 = !DILocation(line: 232, column: 13, scope: !409)
!513 = !DILocation(line: 232, column: 17, scope: !409)
!514 = !DILocation(line: 233, column: 5, scope: !409)
!515 = !DILocation(line: 236, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !2, line: 236, column: 5)
!517 = distinct !DILexicalBlock(scope: !410, file: !2, line: 235, column: 8)
!518 = !DILocation(line: 236, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !2, line: 236, column: 5)
!520 = !DILocation(line: 238, column: 1, scope: !395)
!521 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ_e", scope: !2, file: !2, line: 242, type: !522, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!60, !111, !111, !111, !111, !112, !114}
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !567, !568, !569, !570, !571, !572, !573, !574}
!525 = !DILocalVariable(name: "x", arg: 1, scope: !521, file: !2, line: 242, type: !111)
!526 = !DILocalVariable(name: "y", arg: 2, scope: !521, file: !2, line: 242, type: !111)
!527 = !DILocalVariable(name: "z", arg: 3, scope: !521, file: !2, line: 242, type: !111)
!528 = !DILocalVariable(name: "p", arg: 4, scope: !521, file: !2, line: 242, type: !111)
!529 = !DILocalVariable(name: "mode", arg: 5, scope: !521, file: !2, line: 242, type: !112)
!530 = !DILocalVariable(name: "result", arg: 6, scope: !521, file: !2, line: 242, type: !114)
!531 = !DILocalVariable(name: "goal", scope: !521, file: !2, line: 244, type: !130)
!532 = !DILocalVariable(name: "errtol", scope: !521, file: !2, line: 245, type: !127)
!533 = !DILocalVariable(name: "prec", scope: !521, file: !2, line: 246, type: !127)
!534 = !DILocalVariable(name: "lolim", scope: !521, file: !2, line: 247, type: !127)
!535 = !DILocalVariable(name: "uplim", scope: !521, file: !2, line: 248, type: !127)
!536 = !DILocalVariable(name: "nmax", scope: !521, file: !2, line: 249, type: !136)
!537 = !DILocalVariable(name: "c1", scope: !538, file: !2, line: 258, type: !127)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 257, column: 37)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 257, column: 11)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 254, column: 11)
!541 = distinct !DILexicalBlock(scope: !521, file: !2, line: 251, column: 6)
!542 = !DILocalVariable(name: "c2", scope: !538, file: !2, line: 259, type: !127)
!543 = !DILocalVariable(name: "c3", scope: !538, file: !2, line: 260, type: !127)
!544 = !DILocalVariable(name: "c4", scope: !538, file: !2, line: 261, type: !127)
!545 = !DILocalVariable(name: "xn", scope: !538, file: !2, line: 262, type: !111)
!546 = !DILocalVariable(name: "yn", scope: !538, file: !2, line: 263, type: !111)
!547 = !DILocalVariable(name: "zn", scope: !538, file: !2, line: 264, type: !111)
!548 = !DILocalVariable(name: "pn", scope: !538, file: !2, line: 265, type: !111)
!549 = !DILocalVariable(name: "sigma", scope: !538, file: !2, line: 266, type: !111)
!550 = !DILocalVariable(name: "power4", scope: !538, file: !2, line: 267, type: !111)
!551 = !DILocalVariable(name: "mu", scope: !538, file: !2, line: 268, type: !111)
!552 = !DILocalVariable(name: "xndev", scope: !538, file: !2, line: 268, type: !111)
!553 = !DILocalVariable(name: "yndev", scope: !538, file: !2, line: 268, type: !111)
!554 = !DILocalVariable(name: "zndev", scope: !538, file: !2, line: 268, type: !111)
!555 = !DILocalVariable(name: "pndev", scope: !538, file: !2, line: 268, type: !111)
!556 = !DILocalVariable(name: "ea", scope: !538, file: !2, line: 269, type: !111)
!557 = !DILocalVariable(name: "eb", scope: !538, file: !2, line: 269, type: !111)
!558 = !DILocalVariable(name: "ec", scope: !538, file: !2, line: 269, type: !111)
!559 = !DILocalVariable(name: "e2", scope: !538, file: !2, line: 269, type: !111)
!560 = !DILocalVariable(name: "e3", scope: !538, file: !2, line: 269, type: !111)
!561 = !DILocalVariable(name: "s1", scope: !538, file: !2, line: 269, type: !111)
!562 = !DILocalVariable(name: "s2", scope: !538, file: !2, line: 269, type: !111)
!563 = !DILocalVariable(name: "s3", scope: !538, file: !2, line: 269, type: !111)
!564 = !DILocalVariable(name: "n", scope: !538, file: !2, line: 270, type: !60)
!565 = !DILocalVariable(name: "xnroot", scope: !566, file: !2, line: 272, type: !111)
!566 = distinct !DILexicalBlock(scope: !538, file: !2, line: 271, column: 14)
!567 = !DILocalVariable(name: "ynroot", scope: !566, file: !2, line: 272, type: !111)
!568 = !DILocalVariable(name: "znroot", scope: !566, file: !2, line: 272, type: !111)
!569 = !DILocalVariable(name: "lamda", scope: !566, file: !2, line: 273, type: !111)
!570 = !DILocalVariable(name: "alfa", scope: !566, file: !2, line: 273, type: !111)
!571 = !DILocalVariable(name: "beta", scope: !566, file: !2, line: 273, type: !111)
!572 = !DILocalVariable(name: "epslon", scope: !566, file: !2, line: 274, type: !111)
!573 = !DILocalVariable(name: "rcresult", scope: !566, file: !2, line: 275, type: !115)
!574 = !DILocalVariable(name: "rcstatus", scope: !566, file: !2, line: 276, type: !60)
!575 = distinct !DIAssignID()
!576 = !DILocation(line: 0, scope: !566)
!577 = !DILocation(line: 0, scope: !521)
!578 = !DILocation(line: 0, scope: !151, inlinedAt: !579)
!579 = distinct !DILocation(line: 244, column: 27, scope: !521)
!580 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !579)
!581 = !DILocation(line: 245, column: 32, scope: !521)
!582 = !DILocation(line: 245, column: 27, scope: !521)
!583 = !DILocation(line: 246, column: 25, scope: !521)
!584 = !DILocation(line: 251, column: 8, scope: !541)
!585 = !DILocation(line: 251, column: 14, scope: !541)
!586 = !DILocation(line: 252, column: 5, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 252, column: 5)
!588 = distinct !DILexicalBlock(scope: !541, file: !2, line: 251, column: 37)
!589 = !DILocation(line: 252, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !2, line: 252, column: 5)
!591 = !DILocation(line: 254, column: 17, scope: !540)
!592 = !DILocation(line: 254, column: 25, scope: !540)
!593 = !DILocation(line: 255, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 255, column: 5)
!595 = distinct !DILexicalBlock(scope: !540, file: !2, line: 254, column: 73)
!596 = !DILocation(line: 255, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !2, line: 255, column: 5)
!598 = !DILocalVariable(name: "x", arg: 1, scope: !599, file: !2, line: 40, type: !111)
!599 = distinct !DISubprogram(name: "locMAX4", scope: !2, file: !2, line: 40, type: !600, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!111, !111, !111, !111, !111}
!602 = !{!598, !603, !604, !605, !606, !607}
!603 = !DILocalVariable(name: "y", arg: 2, scope: !599, file: !2, line: 40, type: !111)
!604 = !DILocalVariable(name: "z", arg: 3, scope: !599, file: !2, line: 40, type: !111)
!605 = !DILocalVariable(name: "w", arg: 4, scope: !599, file: !2, line: 40, type: !111)
!606 = !DILocalVariable(name: "xy", scope: !599, file: !2, line: 42, type: !111)
!607 = !DILocalVariable(name: "xyz", scope: !599, file: !2, line: 43, type: !111)
!608 = !DILocation(line: 0, scope: !599, inlinedAt: !609)
!609 = distinct !DILocation(line: 257, column: 11, scope: !539)
!610 = !DILocation(line: 42, column: 16, scope: !599, inlinedAt: !609)
!611 = !DILocation(line: 43, column: 16, scope: !599, inlinedAt: !609)
!612 = !DILocation(line: 44, column: 10, scope: !599, inlinedAt: !609)
!613 = !DILocation(line: 257, column: 28, scope: !539)
!614 = !DILocation(line: 257, column: 11, scope: !540)
!615 = !DILocation(line: 270, column: 9, scope: !538)
!616 = !DILocation(line: 267, column: 12, scope: !538)
!617 = !DILocation(line: 266, column: 12, scope: !538)
!618 = !DILocation(line: 265, column: 12, scope: !538)
!619 = !DILocation(line: 264, column: 12, scope: !538)
!620 = !DILocation(line: 263, column: 12, scope: !538)
!621 = !DILocation(line: 262, column: 12, scope: !538)
!622 = !DILocation(line: 0, scope: !538)
!623 = !DILocation(line: 275, column: 7, scope: !566)
!624 = !DILocation(line: 277, column: 21, scope: !566)
!625 = !DILocation(line: 277, column: 26, scope: !566)
!626 = !DILocation(line: 277, column: 31, scope: !566)
!627 = !DILocation(line: 277, column: 37, scope: !566)
!628 = !DILocation(line: 278, column: 25, scope: !566)
!629 = !DILocation(line: 279, column: 25, scope: !566)
!630 = !DILocation(line: 280, column: 25, scope: !566)
!631 = !DILocation(line: 281, column: 25, scope: !566)
!632 = !DILocation(line: 282, column: 24, scope: !566)
!633 = !DILocation(line: 282, column: 37, scope: !566)
!634 = !DILocation(line: 282, column: 50, scope: !566)
!635 = !DILocation(line: 282, column: 63, scope: !566)
!636 = !DILocation(line: 0, scope: !599, inlinedAt: !637)
!637 = distinct !DILocation(line: 282, column: 16, scope: !566)
!638 = !DILocation(line: 42, column: 16, scope: !599, inlinedAt: !637)
!639 = !DILocation(line: 43, column: 16, scope: !599, inlinedAt: !637)
!640 = !DILocation(line: 44, column: 10, scope: !599, inlinedAt: !637)
!641 = !DILocation(line: 283, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !566, file: !2, line: 283, column: 10)
!643 = !DILocation(line: 283, column: 10, scope: !566)
!644 = !DILocation(line: 284, column: 16, scope: !566)
!645 = !DILocation(line: 285, column: 16, scope: !566)
!646 = !DILocation(line: 286, column: 16, scope: !566)
!647 = !DILocation(line: 287, column: 22, scope: !566)
!648 = !DILocation(line: 287, column: 51, scope: !566)
!649 = !DILocation(line: 288, column: 27, scope: !566)
!650 = !DILocation(line: 288, column: 36, scope: !566)
!651 = !DILocation(line: 288, column: 17, scope: !566)
!652 = !DILocation(line: 288, column: 55, scope: !566)
!653 = !DILocation(line: 288, column: 64, scope: !566)
!654 = !DILocation(line: 289, column: 19, scope: !566)
!655 = !DILocation(line: 290, column: 17, scope: !566)
!656 = !DILocation(line: 290, column: 32, scope: !566)
!657 = !DILocation(line: 291, column: 18, scope: !566)
!658 = !{i32 0, i32 12}
!659 = !DILocation(line: 292, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !566, file: !2, line: 292, column: 10)
!661 = !DILocation(line: 292, column: 10, scope: !566)
!662 = !DILocation(line: 294, column: 21, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !2, line: 292, column: 35)
!664 = !DILocation(line: 295, column: 9, scope: !663)
!665 = !DILocation(line: 303, column: 8, scope: !566)
!666 = !DILocation(line: 304, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !566, file: !2, line: 304, column: 10)
!668 = !DILocation(line: 304, column: 10, scope: !566)
!669 = !DILocation(line: 305, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !2, line: 305, column: 9)
!671 = distinct !DILexicalBlock(scope: !667, file: !2, line: 304, column: 19)
!672 = !DILocation(line: 305, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !2, line: 305, column: 9)
!674 = !DILocation(line: 307, column: 5, scope: !538)
!675 = !DILocation(line: 302, column: 25, scope: !566)
!676 = !DILocation(line: 301, column: 25, scope: !566)
!677 = !DILocation(line: 300, column: 25, scope: !566)
!678 = !DILocation(line: 299, column: 25, scope: !566)
!679 = !DILocation(line: 298, column: 14, scope: !566)
!680 = !DILocation(line: 297, column: 35, scope: !566)
!681 = !DILocation(line: 297, column: 24, scope: !566)
!682 = !DILocation(line: 309, column: 16, scope: !538)
!683 = !DILocation(line: 309, column: 42, scope: !538)
!684 = !DILocation(line: 310, column: 16, scope: !538)
!685 = !DILocation(line: 310, column: 24, scope: !538)
!686 = !DILocation(line: 311, column: 16, scope: !538)
!687 = !DILocation(line: 312, column: 19, scope: !538)
!688 = !DILocation(line: 313, column: 19, scope: !538)
!689 = !DILocation(line: 313, column: 27, scope: !538)
!690 = !DILocation(line: 314, column: 39, scope: !538)
!691 = !DILocation(line: 314, column: 55, scope: !538)
!692 = !DILocation(line: 314, column: 19, scope: !538)
!693 = !DILocation(line: 315, column: 54, scope: !538)
!694 = !DILocation(line: 315, column: 33, scope: !538)
!695 = !DILocation(line: 315, column: 13, scope: !538)
!696 = !DILocation(line: 316, column: 16, scope: !538)
!697 = !DILocation(line: 316, column: 35, scope: !538)
!698 = !DILocation(line: 316, column: 21, scope: !538)
!699 = !DILocation(line: 316, column: 46, scope: !538)
!700 = !DILocation(line: 316, column: 54, scope: !538)
!701 = !DILocation(line: 317, column: 23, scope: !538)
!702 = !DILocation(line: 317, column: 51, scope: !538)
!703 = !DILocation(line: 317, column: 40, scope: !538)
!704 = !DILocation(line: 317, column: 65, scope: !538)
!705 = !DILocation(line: 317, column: 63, scope: !538)
!706 = !DILocation(line: 317, column: 57, scope: !538)
!707 = !DILocation(line: 317, column: 17, scope: !538)
!708 = !DILocation(line: 318, column: 26, scope: !538)
!709 = !DILocation(line: 318, column: 24, scope: !538)
!710 = !DILocation(line: 318, column: 13, scope: !538)
!711 = !DILocation(line: 318, column: 17, scope: !538)
!712 = !DILocation(line: 319, column: 5, scope: !538)
!713 = !DILocation(line: 322, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 322, column: 5)
!715 = distinct !DILexicalBlock(scope: !539, file: !2, line: 321, column: 8)
!716 = !DILocation(line: 322, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !2, line: 322, column: 5)
!718 = !DILocation(line: 324, column: 1, scope: !521)
!719 = distinct !DISubprogram(name: "gsl_sf_ellint_F_e", scope: !2, file: !2, line: 329, type: !109, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !729, !730, !731, !732, !733, !734, !737}
!721 = !DILocalVariable(name: "phi", arg: 1, scope: !719, file: !2, line: 329, type: !111)
!722 = !DILocalVariable(name: "k", arg: 2, scope: !719, file: !2, line: 329, type: !111)
!723 = !DILocalVariable(name: "mode", arg: 3, scope: !719, file: !2, line: 329, type: !112)
!724 = !DILocalVariable(name: "result", arg: 4, scope: !719, file: !2, line: 329, type: !114)
!725 = !DILocalVariable(name: "nc", scope: !719, file: !2, line: 334, type: !111)
!726 = !DILocalVariable(name: "phi_red", scope: !719, file: !2, line: 335, type: !111)
!727 = !DILocalVariable(name: "sin_phi", scope: !728, file: !2, line: 339, type: !111)
!728 = distinct !DILexicalBlock(scope: !719, file: !2, line: 338, column: 3)
!729 = !DILocalVariable(name: "sin2_phi", scope: !728, file: !2, line: 340, type: !111)
!730 = !DILocalVariable(name: "x", scope: !728, file: !2, line: 341, type: !111)
!731 = !DILocalVariable(name: "y", scope: !728, file: !2, line: 342, type: !111)
!732 = !DILocalVariable(name: "rf", scope: !728, file: !2, line: 343, type: !115)
!733 = !DILocalVariable(name: "status", scope: !728, file: !2, line: 344, type: !60)
!734 = !DILocalVariable(name: "rk", scope: !735, file: !2, line: 350, type: !115)
!735 = distinct !DILexicalBlock(scope: !736, file: !2, line: 349, column: 12)
!736 = distinct !DILexicalBlock(scope: !728, file: !2, line: 347, column: 9)
!737 = !DILocalVariable(name: "rkstatus", scope: !735, file: !2, line: 351, type: !136)
!738 = distinct !DIAssignID()
!739 = !DILocation(line: 0, scope: !728)
!740 = distinct !DIAssignID()
!741 = !DILocation(line: 0, scope: !735)
!742 = !DILocation(line: 0, scope: !719)
!743 = !DILocation(line: 334, column: 24, scope: !719)
!744 = !DILocation(line: 334, column: 15, scope: !719)
!745 = !DILocation(line: 335, column: 29, scope: !719)
!746 = !DILocation(line: 339, column: 23, scope: !728)
!747 = !DILocation(line: 340, column: 30, scope: !728)
!748 = !DILocation(line: 342, column: 23, scope: !728)
!749 = !DILocation(line: 342, column: 25, scope: !728)
!750 = !DILocation(line: 343, column: 5, scope: !728)
!751 = !DILocation(line: 344, column: 18, scope: !728)
!752 = !DILocation(line: 345, column: 32, scope: !728)
!753 = !DILocation(line: 345, column: 27, scope: !728)
!754 = !DILocation(line: 345, column: 17, scope: !728)
!755 = !DILocation(line: 346, column: 37, scope: !728)
!756 = !DILocation(line: 346, column: 35, scope: !728)
!757 = !DILocation(line: 346, column: 73, scope: !728)
!758 = !DILocation(line: 346, column: 69, scope: !728)
!759 = !DILocation(line: 346, column: 57, scope: !728)
!760 = !DILocation(line: 346, column: 13, scope: !728)
!761 = !DILocation(line: 346, column: 17, scope: !728)
!762 = !DILocation(line: 347, column: 12, scope: !736)
!763 = !DILocation(line: 347, column: 9, scope: !728)
!764 = !DILocation(line: 350, column: 7, scope: !735)
!765 = !DILocation(line: 351, column: 28, scope: !735)
!766 = !DILocation(line: 352, column: 23, scope: !735)
!767 = !DILocation(line: 352, column: 30, scope: !735)
!768 = !DILocation(line: 352, column: 26, scope: !735)
!769 = !DILocation(line: 352, column: 19, scope: !735)
!770 = !DILocation(line: 353, column: 24, scope: !735)
!771 = !DILocation(line: 353, column: 23, scope: !735)
!772 = !DILocation(line: 353, column: 36, scope: !735)
!773 = !DILocation(line: 353, column: 32, scope: !735)
!774 = !DILocation(line: 353, column: 19, scope: !735)
!775 = !DILocation(line: 354, column: 14, scope: !735)
!776 = !DILocation(line: 355, column: 5, scope: !736)
!777 = !DILocation(line: 0, scope: !736)
!778 = !DILocation(line: 356, column: 3, scope: !719)
!779 = !DILocation(line: 357, column: 1, scope: !719)
!780 = !DISubprogram(name: "sin", scope: !232, file: !232, line: 64, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp_e", scope: !2, file: !2, line: 502, type: !782, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!60, !111, !112, !114}
!784 = !{!785, !786, !787, !788, !792, !796, !797, !798, !799, !801}
!785 = !DILocalVariable(name: "k", arg: 1, scope: !781, file: !2, line: 502, type: !111)
!786 = !DILocalVariable(name: "mode", arg: 2, scope: !781, file: !2, line: 502, type: !112)
!787 = !DILocalVariable(name: "result", arg: 3, scope: !781, file: !2, line: 502, type: !114)
!788 = !DILocalVariable(name: "y", scope: !789, file: !2, line: 509, type: !127)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 507, column: 46)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 507, column: 11)
!791 = distinct !DILexicalBlock(scope: !781, file: !2, line: 504, column: 6)
!792 = !DILocalVariable(name: "a", scope: !789, file: !2, line: 510, type: !793)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 192, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 3)
!796 = !DILocalVariable(name: "b", scope: !789, file: !2, line: 511, type: !793)
!797 = !DILocalVariable(name: "ta", scope: !789, file: !2, line: 512, type: !127)
!798 = !DILocalVariable(name: "tb", scope: !789, file: !2, line: 513, type: !127)
!799 = !DILocalVariable(name: "y", scope: !800, file: !2, line: 529, type: !111)
!800 = distinct !DILexicalBlock(scope: !790, file: !2, line: 518, column: 8)
!801 = !DILocalVariable(name: "status", scope: !800, file: !2, line: 530, type: !60)
!802 = !DILocation(line: 0, scope: !781)
!803 = !DILocation(line: 504, column: 7, scope: !791)
!804 = !DILocation(line: 504, column: 10, scope: !791)
!805 = !DILocation(line: 504, column: 6, scope: !781)
!806 = !DILocation(line: 505, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 505, column: 5)
!808 = distinct !DILexicalBlock(scope: !791, file: !2, line: 504, column: 18)
!809 = !DILocation(line: 505, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !2, line: 505, column: 5)
!811 = !DILocation(line: 507, column: 15, scope: !790)
!812 = !DILocation(line: 507, column: 11, scope: !791)
!813 = !DILocation(line: 0, scope: !789)
!814 = !DILocation(line: 512, column: 41, scope: !789)
!815 = !DILocation(line: 512, column: 31, scope: !789)
!816 = !DILocation(line: 513, column: 24, scope: !789)
!817 = !DILocation(line: 513, column: 52, scope: !789)
!818 = !DILocation(line: 513, column: 42, scope: !789)
!819 = !DILocation(line: 514, column: 22, scope: !789)
!820 = !DILocation(line: 514, column: 17, scope: !789)
!821 = !DILocation(line: 515, column: 44, scope: !789)
!822 = !DILocation(line: 515, column: 70, scope: !789)
!823 = !DILocation(line: 515, column: 64, scope: !789)
!824 = !DILocation(line: 515, column: 41, scope: !789)
!825 = !DILocation(line: 515, column: 13, scope: !789)
!826 = !DILocation(line: 515, column: 17, scope: !789)
!827 = !DILocation(line: 0, scope: !800)
!828 = !DILocation(line: 530, column: 18, scope: !800)
!829 = !DILocation(line: 531, column: 42, scope: !800)
!830 = !DILocation(line: 531, column: 13, scope: !800)
!831 = !DILocation(line: 531, column: 17, scope: !800)
!832 = !DILocation(line: 0, scope: !791)
!833 = !DILocation(line: 534, column: 1, scope: !781)
!834 = distinct !DISubprogram(name: "gsl_sf_ellint_E_e", scope: !2, file: !2, line: 362, type: !109, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !835)
!835 = !{!836, !837, !838, !839, !840, !841, !842, !844, !845, !846, !847, !850, !851, !853, !854, !855, !856, !857, !860}
!836 = !DILocalVariable(name: "phi", arg: 1, scope: !834, file: !2, line: 362, type: !111)
!837 = !DILocalVariable(name: "k", arg: 2, scope: !834, file: !2, line: 362, type: !111)
!838 = !DILocalVariable(name: "mode", arg: 3, scope: !834, file: !2, line: 362, type: !112)
!839 = !DILocalVariable(name: "result", arg: 4, scope: !834, file: !2, line: 362, type: !114)
!840 = !DILocalVariable(name: "nc", scope: !834, file: !2, line: 367, type: !111)
!841 = !DILocalVariable(name: "phi_red", scope: !834, file: !2, line: 368, type: !111)
!842 = !DILocalVariable(name: "sin_phi", scope: !843, file: !2, line: 372, type: !127)
!843 = distinct !DILexicalBlock(scope: !834, file: !2, line: 371, column: 3)
!844 = !DILocalVariable(name: "sin2_phi", scope: !843, file: !2, line: 373, type: !127)
!845 = !DILocalVariable(name: "x", scope: !843, file: !2, line: 374, type: !127)
!846 = !DILocalVariable(name: "y", scope: !843, file: !2, line: 375, type: !127)
!847 = !DILocalVariable(name: "re", scope: !848, file: !2, line: 378, type: !115)
!848 = distinct !DILexicalBlock(scope: !849, file: !2, line: 377, column: 29)
!849 = distinct !DILexicalBlock(scope: !843, file: !2, line: 377, column: 8)
!850 = !DILocalVariable(name: "status", scope: !848, file: !2, line: 379, type: !136)
!851 = !DILocalVariable(name: "rf", scope: !852, file: !2, line: 386, type: !115)
!852 = distinct !DILexicalBlock(scope: !849, file: !2, line: 385, column: 10)
!853 = !DILocalVariable(name: "rd", scope: !852, file: !2, line: 386, type: !115)
!854 = !DILocalVariable(name: "sin3_phi", scope: !852, file: !2, line: 387, type: !127)
!855 = !DILocalVariable(name: "rfstatus", scope: !852, file: !2, line: 388, type: !136)
!856 = !DILocalVariable(name: "rdstatus", scope: !852, file: !2, line: 389, type: !136)
!857 = !DILocalVariable(name: "re", scope: !858, file: !2, line: 398, type: !115)
!858 = distinct !DILexicalBlock(scope: !859, file: !2, line: 397, column: 14)
!859 = distinct !DILexicalBlock(scope: !852, file: !2, line: 395, column: 11)
!860 = !DILocalVariable(name: "restatus", scope: !858, file: !2, line: 399, type: !136)
!861 = distinct !DIAssignID()
!862 = !DILocation(line: 0, scope: !848)
!863 = distinct !DIAssignID()
!864 = !DILocation(line: 0, scope: !852)
!865 = distinct !DIAssignID()
!866 = distinct !DIAssignID()
!867 = !DILocation(line: 0, scope: !858)
!868 = !DILocation(line: 0, scope: !834)
!869 = !DILocation(line: 367, column: 24, scope: !834)
!870 = !DILocation(line: 367, column: 15, scope: !834)
!871 = !DILocation(line: 368, column: 29, scope: !834)
!872 = !DILocation(line: 372, column: 29, scope: !843)
!873 = !DILocation(line: 373, column: 38, scope: !843)
!874 = !DILocation(line: 0, scope: !843)
!875 = !DILocation(line: 377, column: 10, scope: !849)
!876 = !DILocation(line: 377, column: 8, scope: !843)
!877 = !DILocation(line: 378, column: 7, scope: !848)
!878 = !DILocation(line: 379, column: 26, scope: !848)
!879 = !DILocation(line: 381, column: 22, scope: !848)
!880 = !DILocation(line: 381, column: 29, scope: !848)
!881 = !DILocation(line: 381, column: 25, scope: !848)
!882 = !DILocation(line: 381, column: 35, scope: !848)
!883 = !DILocation(line: 381, column: 53, scope: !848)
!884 = !DILocation(line: 381, column: 19, scope: !848)
!885 = !DILocation(line: 382, column: 23, scope: !848)
!886 = !DILocation(line: 382, column: 22, scope: !848)
!887 = !DILocation(line: 382, column: 35, scope: !848)
!888 = !DILocation(line: 382, column: 31, scope: !848)
!889 = !DILocation(line: 382, column: 15, scope: !848)
!890 = !DILocation(line: 382, column: 19, scope: !848)
!891 = !DILocation(line: 384, column: 5, scope: !849)
!892 = !DILocation(line: 375, column: 29, scope: !843)
!893 = !DILocation(line: 375, column: 31, scope: !843)
!894 = !DILocation(line: 386, column: 7, scope: !852)
!895 = !DILocation(line: 387, column: 40, scope: !852)
!896 = !DILocation(line: 388, column: 28, scope: !852)
!897 = !DILocation(line: 389, column: 28, scope: !852)
!898 = !DILocation(line: 390, column: 35, scope: !852)
!899 = !DILocation(line: 390, column: 30, scope: !852)
!900 = !DILocation(line: 390, column: 44, scope: !852)
!901 = !DILocation(line: 390, column: 49, scope: !852)
!902 = !DILocation(line: 390, column: 65, scope: !852)
!903 = !DILocation(line: 390, column: 60, scope: !852)
!904 = !DILocation(line: 390, column: 20, scope: !852)
!905 = !DILocation(line: 391, column: 40, scope: !852)
!906 = !DILocation(line: 391, column: 38, scope: !852)
!907 = !DILocation(line: 391, column: 15, scope: !852)
!908 = !DILocation(line: 392, column: 38, scope: !852)
!909 = !DILocation(line: 392, column: 34, scope: !852)
!910 = !DILocation(line: 392, column: 22, scope: !852)
!911 = !DILocation(line: 393, column: 30, scope: !852)
!912 = !DILocation(line: 393, column: 64, scope: !852)
!913 = !DILocation(line: 393, column: 50, scope: !852)
!914 = !DILocation(line: 393, column: 48, scope: !852)
!915 = !DILocation(line: 394, column: 49, scope: !852)
!916 = !DILocation(line: 394, column: 45, scope: !852)
!917 = !DILocation(line: 394, column: 32, scope: !852)
!918 = !DILocation(line: 394, column: 30, scope: !852)
!919 = !DILocation(line: 394, column: 19, scope: !852)
!920 = !DILocation(line: 395, column: 14, scope: !859)
!921 = !DILocation(line: 395, column: 11, scope: !852)
!922 = !DILocation(line: 396, column: 16, scope: !923)
!923 = distinct !DILexicalBlock(scope: !859, file: !2, line: 395, column: 20)
!924 = !DILocation(line: 396, column: 9, scope: !923)
!925 = !DILocation(line: 398, column: 9, scope: !858)
!926 = !DILocation(line: 399, column: 30, scope: !858)
!927 = !DILocation(line: 400, column: 25, scope: !858)
!928 = !DILocation(line: 400, column: 32, scope: !858)
!929 = !DILocation(line: 400, column: 28, scope: !858)
!930 = !DILocation(line: 400, column: 21, scope: !858)
!931 = !DILocation(line: 401, column: 26, scope: !858)
!932 = !DILocation(line: 401, column: 25, scope: !858)
!933 = !DILocation(line: 401, column: 38, scope: !858)
!934 = !DILocation(line: 401, column: 34, scope: !858)
!935 = !DILocation(line: 401, column: 21, scope: !858)
!936 = !DILocation(line: 402, column: 16, scope: !858)
!937 = !DILocation(line: 403, column: 7, scope: !859)
!938 = !DILocation(line: 0, scope: !859)
!939 = !DILocation(line: 404, column: 5, scope: !849)
!940 = !DILocation(line: 0, scope: !849)
!941 = !DILocation(line: 406, column: 1, scope: !834)
!942 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp_e", scope: !2, file: !2, line: 539, type: !782, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !943)
!943 = !{!944, !945, !946, !947, !951, !952, !953, !954, !955, !957, !958, !959, !960}
!944 = !DILocalVariable(name: "k", arg: 1, scope: !942, file: !2, line: 539, type: !111)
!945 = !DILocalVariable(name: "mode", arg: 2, scope: !942, file: !2, line: 539, type: !112)
!946 = !DILocalVariable(name: "result", arg: 3, scope: !942, file: !2, line: 539, type: !114)
!947 = !DILocalVariable(name: "y", scope: !948, file: !2, line: 546, type: !127)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 544, column: 46)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 544, column: 11)
!950 = distinct !DILexicalBlock(scope: !942, file: !2, line: 541, column: 6)
!951 = !DILocalVariable(name: "a", scope: !948, file: !2, line: 547, type: !793)
!952 = !DILocalVariable(name: "b", scope: !948, file: !2, line: 548, type: !793)
!953 = !DILocalVariable(name: "ta", scope: !948, file: !2, line: 549, type: !127)
!954 = !DILocalVariable(name: "tb", scope: !948, file: !2, line: 550, type: !127)
!955 = !DILocalVariable(name: "rf", scope: !956, file: !2, line: 556, type: !115)
!956 = distinct !DILexicalBlock(scope: !949, file: !2, line: 555, column: 8)
!957 = !DILocalVariable(name: "rd", scope: !956, file: !2, line: 557, type: !115)
!958 = !DILocalVariable(name: "y", scope: !956, file: !2, line: 558, type: !127)
!959 = !DILocalVariable(name: "rfstatus", scope: !956, file: !2, line: 559, type: !136)
!960 = !DILocalVariable(name: "rdstatus", scope: !956, file: !2, line: 560, type: !136)
!961 = distinct !DIAssignID()
!962 = !DILocation(line: 0, scope: !956)
!963 = distinct !DIAssignID()
!964 = !DILocation(line: 0, scope: !942)
!965 = !DILocation(line: 541, column: 7, scope: !950)
!966 = !DILocation(line: 541, column: 10, scope: !950)
!967 = !DILocation(line: 541, column: 6, scope: !942)
!968 = !DILocation(line: 542, column: 5, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 542, column: 5)
!970 = distinct !DILexicalBlock(scope: !950, file: !2, line: 541, column: 18)
!971 = !DILocation(line: 542, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !2, line: 542, column: 5)
!973 = !DILocation(line: 544, column: 15, scope: !949)
!974 = !DILocation(line: 544, column: 11, scope: !950)
!975 = !DILocation(line: 549, column: 53, scope: !948)
!976 = !DILocation(line: 0, scope: !948)
!977 = !DILocation(line: 549, column: 40, scope: !948)
!978 = !DILocation(line: 549, column: 30, scope: !948)
!979 = !DILocation(line: 550, column: 23, scope: !948)
!980 = !DILocation(line: 550, column: 25, scope: !948)
!981 = !DILocation(line: 550, column: 57, scope: !948)
!982 = !DILocation(line: 550, column: 44, scope: !948)
!983 = !DILocation(line: 550, column: 33, scope: !948)
!984 = !DILocation(line: 551, column: 17, scope: !948)
!985 = !DILocation(line: 552, column: 41, scope: !948)
!986 = !DILocation(line: 552, column: 13, scope: !948)
!987 = !DILocation(line: 552, column: 17, scope: !948)
!988 = !DILocation(line: 556, column: 5, scope: !956)
!989 = !DILocation(line: 557, column: 5, scope: !956)
!990 = !DILocation(line: 559, column: 26, scope: !956)
!991 = !DILocation(line: 560, column: 26, scope: !956)
!992 = !DILocation(line: 561, column: 22, scope: !956)
!993 = !DILocation(line: 561, column: 31, scope: !956)
!994 = !DILocation(line: 561, column: 41, scope: !956)
!995 = !DILocation(line: 561, column: 36, scope: !956)
!996 = !DILocation(line: 561, column: 17, scope: !956)
!997 = !DILocation(line: 562, column: 22, scope: !956)
!998 = !DILocation(line: 562, column: 41, scope: !956)
!999 = !DILocation(line: 562, column: 36, scope: !956)
!1000 = !DILocation(line: 562, column: 13, scope: !956)
!1001 = !DILocation(line: 562, column: 17, scope: !956)
!1002 = !DILocation(line: 563, column: 12, scope: !956)
!1003 = !DILocation(line: 564, column: 3, scope: !949)
!1004 = !DILocation(line: 0, scope: !950)
!1005 = !DILocation(line: 565, column: 1, scope: !942)
!1006 = distinct !DISubprogram(name: "gsl_sf_ellint_P_e", scope: !2, file: !2, line: 411, type: !236, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1028}
!1008 = !DILocalVariable(name: "phi", arg: 1, scope: !1006, file: !2, line: 411, type: !111)
!1009 = !DILocalVariable(name: "k", arg: 2, scope: !1006, file: !2, line: 411, type: !111)
!1010 = !DILocalVariable(name: "n", arg: 3, scope: !1006, file: !2, line: 411, type: !111)
!1011 = !DILocalVariable(name: "mode", arg: 4, scope: !1006, file: !2, line: 411, type: !112)
!1012 = !DILocalVariable(name: "result", arg: 5, scope: !1006, file: !2, line: 411, type: !114)
!1013 = !DILocalVariable(name: "nc", scope: !1006, file: !2, line: 416, type: !111)
!1014 = !DILocalVariable(name: "phi_red", scope: !1006, file: !2, line: 417, type: !111)
!1015 = !DILocalVariable(name: "sin_phi", scope: !1016, file: !2, line: 423, type: !127)
!1016 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 422, column: 3)
!1017 = !DILocalVariable(name: "sin2_phi", scope: !1016, file: !2, line: 424, type: !127)
!1018 = !DILocalVariable(name: "sin3_phi", scope: !1016, file: !2, line: 425, type: !127)
!1019 = !DILocalVariable(name: "x", scope: !1016, file: !2, line: 426, type: !127)
!1020 = !DILocalVariable(name: "y", scope: !1016, file: !2, line: 427, type: !127)
!1021 = !DILocalVariable(name: "rf", scope: !1016, file: !2, line: 428, type: !115)
!1022 = !DILocalVariable(name: "rj", scope: !1016, file: !2, line: 429, type: !115)
!1023 = !DILocalVariable(name: "rfstatus", scope: !1016, file: !2, line: 430, type: !136)
!1024 = !DILocalVariable(name: "rjstatus", scope: !1016, file: !2, line: 431, type: !136)
!1025 = !DILocalVariable(name: "rp", scope: !1026, file: !2, line: 440, type: !115)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 439, column: 12)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 437, column: 9)
!1028 = !DILocalVariable(name: "rpstatus", scope: !1026, file: !2, line: 441, type: !136)
!1029 = distinct !DIAssignID()
!1030 = distinct !DIAssignID()
!1031 = distinct !DIAssignID()
!1032 = !DILocation(line: 0, scope: !1016)
!1033 = distinct !DIAssignID()
!1034 = !DILocation(line: 0, scope: !1006)
!1035 = !DILocation(line: 416, column: 24, scope: !1006)
!1036 = !DILocation(line: 416, column: 15, scope: !1006)
!1037 = !DILocation(line: 417, column: 29, scope: !1006)
!1038 = !DILocation(line: 423, column: 29, scope: !1016)
!1039 = !DILocation(line: 424, column: 38, scope: !1016)
!1040 = !DILocation(line: 425, column: 38, scope: !1016)
!1041 = !DILocation(line: 427, column: 29, scope: !1016)
!1042 = !DILocation(line: 427, column: 31, scope: !1016)
!1043 = !DILocation(line: 428, column: 5, scope: !1016)
!1044 = !DILocation(line: 429, column: 5, scope: !1016)
!1045 = !DILocation(line: 430, column: 26, scope: !1016)
!1046 = !DILocation(line: 431, column: 63, scope: !1016)
!1047 = !DILocation(line: 431, column: 26, scope: !1016)
!1048 = !DILocation(line: 432, column: 33, scope: !1016)
!1049 = !DILocation(line: 432, column: 28, scope: !1016)
!1050 = !DILocation(line: 432, column: 40, scope: !1016)
!1051 = !DILocation(line: 432, column: 44, scope: !1016)
!1052 = !DILocation(line: 432, column: 59, scope: !1016)
!1053 = !DILocation(line: 432, column: 54, scope: !1016)
!1054 = !DILocation(line: 432, column: 18, scope: !1016)
!1055 = !DILocation(line: 433, column: 38, scope: !1016)
!1056 = !DILocation(line: 433, column: 36, scope: !1016)
!1057 = !DILocation(line: 433, column: 13, scope: !1016)
!1058 = !DILocation(line: 434, column: 38, scope: !1016)
!1059 = !DILocation(line: 434, column: 33, scope: !1016)
!1060 = !DILocation(line: 434, column: 20, scope: !1016)
!1061 = !DILocation(line: 435, column: 26, scope: !1016)
!1062 = !DILocation(line: 435, column: 59, scope: !1016)
!1063 = !DILocation(line: 435, column: 46, scope: !1016)
!1064 = !DILocation(line: 435, column: 44, scope: !1016)
!1065 = !DILocation(line: 436, column: 45, scope: !1016)
!1066 = !DILocation(line: 436, column: 41, scope: !1016)
!1067 = !DILocation(line: 436, column: 28, scope: !1016)
!1068 = !DILocation(line: 436, column: 26, scope: !1016)
!1069 = !DILocation(line: 436, column: 17, scope: !1016)
!1070 = !DILocation(line: 437, column: 12, scope: !1027)
!1071 = !DILocation(line: 437, column: 9, scope: !1016)
!1072 = !DILocation(line: 438, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 437, column: 18)
!1074 = !DILocation(line: 438, column: 7, scope: !1073)
!1075 = !DILocalVariable(name: "rf", scope: !1076, file: !2, line: 576, type: !115)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 575, column: 8)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 571, column: 6)
!1078 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp_e", scope: !2, file: !2, line: 569, type: !109, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1075, !1084, !1085, !1086, !1087}
!1080 = !DILocalVariable(name: "k", arg: 1, scope: !1078, file: !2, line: 569, type: !111)
!1081 = !DILocalVariable(name: "n", arg: 2, scope: !1078, file: !2, line: 569, type: !111)
!1082 = !DILocalVariable(name: "mode", arg: 3, scope: !1078, file: !2, line: 569, type: !112)
!1083 = !DILocalVariable(name: "result", arg: 4, scope: !1078, file: !2, line: 569, type: !114)
!1084 = !DILocalVariable(name: "rj", scope: !1076, file: !2, line: 577, type: !115)
!1085 = !DILocalVariable(name: "y", scope: !1076, file: !2, line: 578, type: !127)
!1086 = !DILocalVariable(name: "rfstatus", scope: !1076, file: !2, line: 579, type: !136)
!1087 = !DILocalVariable(name: "rjstatus", scope: !1076, file: !2, line: 580, type: !136)
!1088 = !DILocation(line: 0, scope: !1076, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 441, column: 28, scope: !1026)
!1090 = !DILocation(line: 0, scope: !1078, inlinedAt: !1089)
!1091 = !DILocation(line: 571, column: 10, scope: !1077, inlinedAt: !1089)
!1092 = !DILocation(line: 571, column: 6, scope: !1078, inlinedAt: !1089)
!1093 = !DILocation(line: 0, scope: !1026)
!1094 = !DILocation(line: 572, column: 5, scope: !1095, inlinedAt: !1089)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 572, column: 5)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 572, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 571, column: 18)
!1098 = !DILocation(line: 576, column: 5, scope: !1076, inlinedAt: !1089)
!1099 = !DILocation(line: 577, column: 5, scope: !1076, inlinedAt: !1089)
!1100 = !DILocation(line: 579, column: 26, scope: !1076, inlinedAt: !1089)
!1101 = !DILocation(line: 580, column: 26, scope: !1076, inlinedAt: !1089)
!1102 = !DILocation(line: 581, column: 22, scope: !1076, inlinedAt: !1089)
!1103 = !DILocation(line: 581, column: 41, scope: !1076, inlinedAt: !1089)
!1104 = !DILocation(line: 581, column: 36, scope: !1076, inlinedAt: !1089)
!1105 = !DILocation(line: 582, column: 22, scope: !1076, inlinedAt: !1089)
!1106 = !DILocation(line: 582, column: 28, scope: !1076, inlinedAt: !1089)
!1107 = !DILocation(line: 582, column: 45, scope: !1076, inlinedAt: !1089)
!1108 = !DILocation(line: 582, column: 40, scope: !1076, inlinedAt: !1089)
!1109 = !DILocation(line: 583, column: 12, scope: !1076, inlinedAt: !1089)
!1110 = !DILocation(line: 584, column: 3, scope: !1077, inlinedAt: !1089)
!1111 = !DILocation(line: 0, scope: !1077, inlinedAt: !1089)
!1112 = !DILocation(line: 442, column: 23, scope: !1026)
!1113 = !DILocation(line: 442, column: 26, scope: !1026)
!1114 = !DILocation(line: 442, column: 19, scope: !1026)
!1115 = !DILocation(line: 443, column: 24, scope: !1026)
!1116 = !DILocation(line: 443, column: 23, scope: !1026)
!1117 = !DILocation(line: 443, column: 32, scope: !1026)
!1118 = !DILocation(line: 443, column: 19, scope: !1026)
!1119 = !DILocation(line: 444, column: 14, scope: !1026)
!1120 = !DILocation(line: 0, scope: !1027)
!1121 = !DILocation(line: 446, column: 3, scope: !1006)
!1122 = !DILocation(line: 447, column: 1, scope: !1006)
!1123 = distinct !DIAssignID()
!1124 = !DILocation(line: 0, scope: !1076)
!1125 = distinct !DIAssignID()
!1126 = !DILocation(line: 0, scope: !1078)
!1127 = !DILocation(line: 571, column: 7, scope: !1077)
!1128 = !DILocation(line: 571, column: 10, scope: !1077)
!1129 = !DILocation(line: 571, column: 6, scope: !1078)
!1130 = !DILocation(line: 572, column: 5, scope: !1096)
!1131 = !DILocation(line: 572, column: 5, scope: !1095)
!1132 = !DILocation(line: 576, column: 5, scope: !1076)
!1133 = !DILocation(line: 577, column: 5, scope: !1076)
!1134 = !DILocation(line: 579, column: 26, scope: !1076)
!1135 = !DILocation(line: 580, column: 26, scope: !1076)
!1136 = !DILocation(line: 581, column: 22, scope: !1076)
!1137 = !DILocation(line: 581, column: 30, scope: !1076)
!1138 = !DILocation(line: 581, column: 41, scope: !1076)
!1139 = !DILocation(line: 581, column: 36, scope: !1076)
!1140 = !DILocation(line: 581, column: 17, scope: !1076)
!1141 = !DILocation(line: 582, column: 22, scope: !1076)
!1142 = !DILocation(line: 582, column: 28, scope: !1076)
!1143 = !DILocation(line: 582, column: 45, scope: !1076)
!1144 = !DILocation(line: 582, column: 40, scope: !1076)
!1145 = !DILocation(line: 582, column: 13, scope: !1076)
!1146 = !DILocation(line: 582, column: 17, scope: !1076)
!1147 = !DILocation(line: 583, column: 12, scope: !1076)
!1148 = !DILocation(line: 584, column: 3, scope: !1077)
!1149 = !DILocation(line: 0, scope: !1077)
!1150 = !DILocation(line: 585, column: 1, scope: !1078)
!1151 = distinct !DISubprogram(name: "gsl_sf_ellint_D_e", scope: !2, file: !2, line: 452, type: !109, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1170}
!1153 = !DILocalVariable(name: "phi", arg: 1, scope: !1151, file: !2, line: 452, type: !111)
!1154 = !DILocalVariable(name: "k", arg: 2, scope: !1151, file: !2, line: 452, type: !111)
!1155 = !DILocalVariable(name: "mode", arg: 3, scope: !1151, file: !2, line: 452, type: !112)
!1156 = !DILocalVariable(name: "result", arg: 4, scope: !1151, file: !2, line: 452, type: !114)
!1157 = !DILocalVariable(name: "nc", scope: !1151, file: !2, line: 457, type: !111)
!1158 = !DILocalVariable(name: "phi_red", scope: !1151, file: !2, line: 458, type: !111)
!1159 = !DILocalVariable(name: "sin_phi", scope: !1160, file: !2, line: 463, type: !127)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 462, column: 3)
!1161 = !DILocalVariable(name: "sin2_phi", scope: !1160, file: !2, line: 464, type: !127)
!1162 = !DILocalVariable(name: "sin3_phi", scope: !1160, file: !2, line: 465, type: !127)
!1163 = !DILocalVariable(name: "x", scope: !1160, file: !2, line: 466, type: !127)
!1164 = !DILocalVariable(name: "y", scope: !1160, file: !2, line: 467, type: !127)
!1165 = !DILocalVariable(name: "rd", scope: !1160, file: !2, line: 468, type: !115)
!1166 = !DILocalVariable(name: "status", scope: !1160, file: !2, line: 469, type: !136)
!1167 = !DILocalVariable(name: "rd", scope: !1168, file: !2, line: 475, type: !115)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 474, column: 12)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 472, column: 9)
!1170 = !DILocalVariable(name: "rdstatus", scope: !1168, file: !2, line: 476, type: !136)
!1171 = distinct !DIAssignID()
!1172 = distinct !DIAssignID()
!1173 = !DILocation(line: 0, scope: !1160)
!1174 = !DILocation(line: 0, scope: !1151)
!1175 = !DILocation(line: 457, column: 24, scope: !1151)
!1176 = !DILocation(line: 457, column: 15, scope: !1151)
!1177 = !DILocation(line: 458, column: 29, scope: !1151)
!1178 = !DILocation(line: 463, column: 29, scope: !1160)
!1179 = !DILocation(line: 464, column: 38, scope: !1160)
!1180 = !DILocation(line: 465, column: 38, scope: !1160)
!1181 = !DILocation(line: 467, column: 29, scope: !1160)
!1182 = !DILocation(line: 467, column: 31, scope: !1160)
!1183 = !DILocation(line: 468, column: 5, scope: !1160)
!1184 = !DILocation(line: 469, column: 24, scope: !1160)
!1185 = !DILocation(line: 470, column: 27, scope: !1160)
!1186 = !DILocation(line: 470, column: 37, scope: !1160)
!1187 = !DILocation(line: 470, column: 32, scope: !1160)
!1188 = !DILocation(line: 470, column: 17, scope: !1160)
!1189 = !DILocation(line: 471, column: 37, scope: !1160)
!1190 = !DILocation(line: 471, column: 35, scope: !1160)
!1191 = !DILocation(line: 471, column: 80, scope: !1160)
!1192 = !DILocation(line: 471, column: 75, scope: !1160)
!1193 = !DILocation(line: 471, column: 57, scope: !1160)
!1194 = !DILocation(line: 471, column: 13, scope: !1160)
!1195 = !DILocation(line: 471, column: 17, scope: !1160)
!1196 = !DILocation(line: 472, column: 12, scope: !1169)
!1197 = !DILocation(line: 472, column: 9, scope: !1160)
!1198 = !DILocalVariable(name: "rd", scope: !1199, file: !2, line: 491, type: !115)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 489, column: 10)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 487, column: 6)
!1201 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp_e", scope: !2, file: !2, line: 485, type: !782, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1198, !1207}
!1203 = !DILocalVariable(name: "k", arg: 1, scope: !1201, file: !2, line: 485, type: !111)
!1204 = !DILocalVariable(name: "mode", arg: 2, scope: !1201, file: !2, line: 485, type: !112)
!1205 = !DILocalVariable(name: "result", arg: 3, scope: !1201, file: !2, line: 485, type: !114)
!1206 = !DILocalVariable(name: "y", scope: !1199, file: !2, line: 490, type: !127)
!1207 = !DILocalVariable(name: "status", scope: !1199, file: !2, line: 492, type: !136)
!1208 = !DILocation(line: 0, scope: !1199, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 476, column: 28, scope: !1168)
!1210 = !DILocation(line: 0, scope: !1201, inlinedAt: !1209)
!1211 = !DILocation(line: 487, column: 10, scope: !1200, inlinedAt: !1209)
!1212 = !DILocation(line: 487, column: 6, scope: !1201, inlinedAt: !1209)
!1213 = !DILocation(line: 0, scope: !1168)
!1214 = !DILocation(line: 488, column: 5, scope: !1215, inlinedAt: !1209)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 488, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 488, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 487, column: 18)
!1218 = !DILocation(line: 491, column: 5, scope: !1199, inlinedAt: !1209)
!1219 = !DILocation(line: 492, column: 24, scope: !1199, inlinedAt: !1209)
!1220 = !DILocation(line: 493, column: 34, scope: !1199, inlinedAt: !1209)
!1221 = !DILocation(line: 493, column: 29, scope: !1199, inlinedAt: !1209)
!1222 = !DILocation(line: 494, column: 37, scope: !1199, inlinedAt: !1209)
!1223 = !DILocation(line: 494, column: 35, scope: !1199, inlinedAt: !1209)
!1224 = !DILocation(line: 494, column: 75, scope: !1199, inlinedAt: !1209)
!1225 = !DILocation(line: 494, column: 70, scope: !1199, inlinedAt: !1209)
!1226 = !DILocation(line: 494, column: 57, scope: !1199, inlinedAt: !1209)
!1227 = !DILocation(line: 496, column: 3, scope: !1200, inlinedAt: !1209)
!1228 = !DILocation(line: 0, scope: !1200, inlinedAt: !1209)
!1229 = !DILocation(line: 477, column: 23, scope: !1168)
!1230 = !DILocation(line: 477, column: 26, scope: !1168)
!1231 = !DILocation(line: 477, column: 19, scope: !1168)
!1232 = !DILocation(line: 478, column: 24, scope: !1168)
!1233 = !DILocation(line: 478, column: 23, scope: !1168)
!1234 = !DILocation(line: 478, column: 32, scope: !1168)
!1235 = !DILocation(line: 478, column: 19, scope: !1168)
!1236 = !DILocation(line: 479, column: 14, scope: !1168)
!1237 = !DILocation(line: 0, scope: !1169)
!1238 = !DILocation(line: 481, column: 3, scope: !1151)
!1239 = !DILocation(line: 482, column: 1, scope: !1151)
!1240 = distinct !DIAssignID()
!1241 = !DILocation(line: 0, scope: !1199)
!1242 = !DILocation(line: 0, scope: !1201)
!1243 = !DILocation(line: 487, column: 7, scope: !1200)
!1244 = !DILocation(line: 487, column: 10, scope: !1200)
!1245 = !DILocation(line: 487, column: 6, scope: !1201)
!1246 = !DILocation(line: 488, column: 5, scope: !1216)
!1247 = !DILocation(line: 488, column: 5, scope: !1215)
!1248 = !DILocation(line: 491, column: 5, scope: !1199)
!1249 = !DILocation(line: 492, column: 24, scope: !1199)
!1250 = !DILocation(line: 493, column: 34, scope: !1199)
!1251 = !DILocation(line: 493, column: 29, scope: !1199)
!1252 = !DILocation(line: 493, column: 17, scope: !1199)
!1253 = !DILocation(line: 494, column: 37, scope: !1199)
!1254 = !DILocation(line: 494, column: 35, scope: !1199)
!1255 = !DILocation(line: 494, column: 75, scope: !1199)
!1256 = !DILocation(line: 494, column: 70, scope: !1199)
!1257 = !DILocation(line: 494, column: 57, scope: !1199)
!1258 = !DILocation(line: 494, column: 13, scope: !1199)
!1259 = !DILocation(line: 494, column: 17, scope: !1199)
!1260 = !DILocation(line: 496, column: 3, scope: !1200)
!1261 = !DILocation(line: 0, scope: !1200)
!1262 = !DILocation(line: 497, column: 1, scope: !1201)
!1263 = !DISubprogram(name: "log", scope: !232, file: !232, line: 104, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1264 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp", scope: !2, file: !2, line: 593, type: !1265, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!111, !111, !112}
!1267 = !{!1268, !1269, !1270, !1271}
!1268 = !DILocalVariable(name: "k", arg: 1, scope: !1264, file: !2, line: 593, type: !111)
!1269 = !DILocalVariable(name: "mode", arg: 2, scope: !1264, file: !2, line: 593, type: !112)
!1270 = !DILocalVariable(name: "result", scope: !1264, file: !2, line: 595, type: !115)
!1271 = !DILocalVariable(name: "status", scope: !1264, file: !2, line: 595, type: !60)
!1272 = distinct !DIAssignID()
!1273 = !DILocation(line: 0, scope: !1264)
!1274 = !DILocation(line: 595, column: 3, scope: !1264)
!1275 = !DILocation(line: 595, column: 3, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 595, column: 3)
!1277 = !DILocation(line: 595, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 595, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 595, column: 3)
!1280 = !DILocation(line: 596, column: 1, scope: !1264)
!1281 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp", scope: !2, file: !2, line: 598, type: !1265, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1282)
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DILocalVariable(name: "k", arg: 1, scope: !1281, file: !2, line: 598, type: !111)
!1284 = !DILocalVariable(name: "mode", arg: 2, scope: !1281, file: !2, line: 598, type: !112)
!1285 = !DILocalVariable(name: "result", scope: !1281, file: !2, line: 600, type: !115)
!1286 = !DILocalVariable(name: "status", scope: !1281, file: !2, line: 600, type: !60)
!1287 = distinct !DIAssignID()
!1288 = !DILocation(line: 0, scope: !1281)
!1289 = !DILocation(line: 600, column: 3, scope: !1281)
!1290 = !DILocation(line: 600, column: 3, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 600, column: 3)
!1292 = !DILocation(line: 600, column: 3, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 600, column: 3)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 600, column: 3)
!1295 = !DILocation(line: 601, column: 1, scope: !1281)
!1296 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp", scope: !2, file: !2, line: 603, type: !1297, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!111, !111, !111, !112}
!1299 = !{!1300, !1301, !1302, !1303, !1304}
!1300 = !DILocalVariable(name: "k", arg: 1, scope: !1296, file: !2, line: 603, type: !111)
!1301 = !DILocalVariable(name: "n", arg: 2, scope: !1296, file: !2, line: 603, type: !111)
!1302 = !DILocalVariable(name: "mode", arg: 3, scope: !1296, file: !2, line: 603, type: !112)
!1303 = !DILocalVariable(name: "result", scope: !1296, file: !2, line: 605, type: !115)
!1304 = !DILocalVariable(name: "status", scope: !1296, file: !2, line: 605, type: !60)
!1305 = distinct !DIAssignID()
!1306 = distinct !DIAssignID()
!1307 = !DILocation(line: 0, scope: !1296)
!1308 = !DILocation(line: 0, scope: !1076, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 605, column: 3, scope: !1296)
!1310 = !DILocation(line: 0, scope: !1078, inlinedAt: !1309)
!1311 = !DILocation(line: 571, column: 7, scope: !1077, inlinedAt: !1309)
!1312 = !DILocation(line: 571, column: 10, scope: !1077, inlinedAt: !1309)
!1313 = !DILocation(line: 571, column: 6, scope: !1078, inlinedAt: !1309)
!1314 = !DILocation(line: 572, column: 5, scope: !1095, inlinedAt: !1309)
!1315 = !DILocation(line: 605, column: 3, scope: !1296)
!1316 = !DILocation(line: 576, column: 5, scope: !1076, inlinedAt: !1309)
!1317 = !DILocation(line: 577, column: 5, scope: !1076, inlinedAt: !1309)
!1318 = !DILocation(line: 579, column: 26, scope: !1076, inlinedAt: !1309)
!1319 = !DILocation(line: 580, column: 26, scope: !1076, inlinedAt: !1309)
!1320 = !DILocation(line: 581, column: 22, scope: !1076, inlinedAt: !1309)
!1321 = !DILocation(line: 581, column: 30, scope: !1076, inlinedAt: !1309)
!1322 = !DILocation(line: 581, column: 41, scope: !1076, inlinedAt: !1309)
!1323 = !DILocation(line: 581, column: 36, scope: !1076, inlinedAt: !1309)
!1324 = !DILocation(line: 583, column: 12, scope: !1076, inlinedAt: !1309)
!1325 = !DILocation(line: 584, column: 3, scope: !1077, inlinedAt: !1309)
!1326 = !DILocation(line: 605, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 605, column: 3)
!1328 = !DILocation(line: 605, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 605, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 605, column: 3)
!1331 = !DILocation(line: 606, column: 1, scope: !1296)
!1332 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp", scope: !2, file: !2, line: 608, type: !1265, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DILocalVariable(name: "k", arg: 1, scope: !1332, file: !2, line: 608, type: !111)
!1335 = !DILocalVariable(name: "mode", arg: 2, scope: !1332, file: !2, line: 608, type: !112)
!1336 = !DILocalVariable(name: "result", scope: !1332, file: !2, line: 610, type: !115)
!1337 = !DILocalVariable(name: "status", scope: !1332, file: !2, line: 610, type: !60)
!1338 = distinct !DIAssignID()
!1339 = !DILocation(line: 0, scope: !1332)
!1340 = !DILocation(line: 0, scope: !1199, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 610, column: 3, scope: !1332)
!1342 = !DILocation(line: 0, scope: !1201, inlinedAt: !1341)
!1343 = !DILocation(line: 487, column: 7, scope: !1200, inlinedAt: !1341)
!1344 = !DILocation(line: 487, column: 10, scope: !1200, inlinedAt: !1341)
!1345 = !DILocation(line: 487, column: 6, scope: !1201, inlinedAt: !1341)
!1346 = !DILocation(line: 488, column: 5, scope: !1215, inlinedAt: !1341)
!1347 = !DILocation(line: 610, column: 3, scope: !1332)
!1348 = !DILocation(line: 491, column: 5, scope: !1199, inlinedAt: !1341)
!1349 = !DILocation(line: 492, column: 24, scope: !1199, inlinedAt: !1341)
!1350 = !DILocation(line: 493, column: 34, scope: !1199, inlinedAt: !1341)
!1351 = !DILocation(line: 493, column: 29, scope: !1199, inlinedAt: !1341)
!1352 = !DILocation(line: 496, column: 3, scope: !1200, inlinedAt: !1341)
!1353 = !DILocation(line: 610, column: 3, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 610, column: 3)
!1355 = !DILocation(line: 610, column: 3, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 610, column: 3)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 610, column: 3)
!1358 = !DILocation(line: 611, column: 1, scope: !1332)
!1359 = distinct !DISubprogram(name: "gsl_sf_ellint_F", scope: !2, file: !2, line: 613, type: !1297, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365}
!1361 = !DILocalVariable(name: "phi", arg: 1, scope: !1359, file: !2, line: 613, type: !111)
!1362 = !DILocalVariable(name: "k", arg: 2, scope: !1359, file: !2, line: 613, type: !111)
!1363 = !DILocalVariable(name: "mode", arg: 3, scope: !1359, file: !2, line: 613, type: !112)
!1364 = !DILocalVariable(name: "result", scope: !1359, file: !2, line: 615, type: !115)
!1365 = !DILocalVariable(name: "status", scope: !1359, file: !2, line: 615, type: !60)
!1366 = distinct !DIAssignID()
!1367 = distinct !DIAssignID()
!1368 = !DILocation(line: 0, scope: !1359)
!1369 = !DILocation(line: 0, scope: !728, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 615, column: 3, scope: !1359)
!1371 = !DILocation(line: 0, scope: !735, inlinedAt: !1370)
!1372 = !DILocation(line: 0, scope: !719, inlinedAt: !1370)
!1373 = !DILocation(line: 334, column: 24, scope: !719, inlinedAt: !1370)
!1374 = !DILocation(line: 334, column: 15, scope: !719, inlinedAt: !1370)
!1375 = !DILocation(line: 335, column: 29, scope: !719, inlinedAt: !1370)
!1376 = !DILocation(line: 339, column: 23, scope: !728, inlinedAt: !1370)
!1377 = !DILocation(line: 340, column: 30, scope: !728, inlinedAt: !1370)
!1378 = !DILocation(line: 342, column: 23, scope: !728, inlinedAt: !1370)
!1379 = !DILocation(line: 342, column: 25, scope: !728, inlinedAt: !1370)
!1380 = !DILocation(line: 343, column: 5, scope: !728, inlinedAt: !1370)
!1381 = !DILocation(line: 344, column: 18, scope: !728, inlinedAt: !1370)
!1382 = !DILocation(line: 345, column: 32, scope: !728, inlinedAt: !1370)
!1383 = !DILocation(line: 345, column: 27, scope: !728, inlinedAt: !1370)
!1384 = !DILocation(line: 347, column: 12, scope: !736, inlinedAt: !1370)
!1385 = !DILocation(line: 347, column: 9, scope: !728, inlinedAt: !1370)
!1386 = !DILocation(line: 350, column: 7, scope: !735, inlinedAt: !1370)
!1387 = !DILocation(line: 351, column: 28, scope: !735, inlinedAt: !1370)
!1388 = !DILocation(line: 352, column: 23, scope: !735, inlinedAt: !1370)
!1389 = !DILocation(line: 352, column: 30, scope: !735, inlinedAt: !1370)
!1390 = !DILocation(line: 352, column: 26, scope: !735, inlinedAt: !1370)
!1391 = !DILocation(line: 354, column: 14, scope: !735, inlinedAt: !1370)
!1392 = !DILocation(line: 355, column: 5, scope: !736, inlinedAt: !1370)
!1393 = !DILocation(line: 0, scope: !736, inlinedAt: !1370)
!1394 = !DILocation(line: 356, column: 3, scope: !719, inlinedAt: !1370)
!1395 = !DILocation(line: 615, column: 3, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 615, column: 3)
!1397 = !DILocation(line: 615, column: 3, scope: !1359)
!1398 = !DILocation(line: 615, column: 3, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 615, column: 3)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 615, column: 3)
!1401 = !DILocation(line: 616, column: 1, scope: !1359)
!1402 = distinct !DISubprogram(name: "gsl_sf_ellint_E", scope: !2, file: !2, line: 618, type: !1297, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408}
!1404 = !DILocalVariable(name: "phi", arg: 1, scope: !1402, file: !2, line: 618, type: !111)
!1405 = !DILocalVariable(name: "k", arg: 2, scope: !1402, file: !2, line: 618, type: !111)
!1406 = !DILocalVariable(name: "mode", arg: 3, scope: !1402, file: !2, line: 618, type: !112)
!1407 = !DILocalVariable(name: "result", scope: !1402, file: !2, line: 620, type: !115)
!1408 = !DILocalVariable(name: "status", scope: !1402, file: !2, line: 620, type: !60)
!1409 = distinct !DIAssignID()
!1410 = !DILocation(line: 0, scope: !1402)
!1411 = !DILocation(line: 620, column: 3, scope: !1402)
!1412 = !DILocation(line: 620, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 620, column: 3)
!1414 = !DILocation(line: 620, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 620, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 620, column: 3)
!1417 = !DILocation(line: 621, column: 1, scope: !1402)
!1418 = distinct !DISubprogram(name: "gsl_sf_ellint_P", scope: !2, file: !2, line: 623, type: !1419, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!111, !111, !111, !111, !112}
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427}
!1422 = !DILocalVariable(name: "phi", arg: 1, scope: !1418, file: !2, line: 623, type: !111)
!1423 = !DILocalVariable(name: "k", arg: 2, scope: !1418, file: !2, line: 623, type: !111)
!1424 = !DILocalVariable(name: "n", arg: 3, scope: !1418, file: !2, line: 623, type: !111)
!1425 = !DILocalVariable(name: "mode", arg: 4, scope: !1418, file: !2, line: 623, type: !112)
!1426 = !DILocalVariable(name: "result", scope: !1418, file: !2, line: 625, type: !115)
!1427 = !DILocalVariable(name: "status", scope: !1418, file: !2, line: 625, type: !60)
!1428 = distinct !DIAssignID()
!1429 = !DILocation(line: 0, scope: !1418)
!1430 = !DILocation(line: 625, column: 3, scope: !1418)
!1431 = !DILocation(line: 625, column: 3, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 625, column: 3)
!1433 = !DILocation(line: 625, column: 3, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 625, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 625, column: 3)
!1436 = !DILocation(line: 626, column: 1, scope: !1418)
!1437 = distinct !DISubprogram(name: "gsl_sf_ellint_D", scope: !2, file: !2, line: 628, type: !1297, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443}
!1439 = !DILocalVariable(name: "phi", arg: 1, scope: !1437, file: !2, line: 628, type: !111)
!1440 = !DILocalVariable(name: "k", arg: 2, scope: !1437, file: !2, line: 628, type: !111)
!1441 = !DILocalVariable(name: "mode", arg: 3, scope: !1437, file: !2, line: 628, type: !112)
!1442 = !DILocalVariable(name: "result", scope: !1437, file: !2, line: 630, type: !115)
!1443 = !DILocalVariable(name: "status", scope: !1437, file: !2, line: 630, type: !60)
!1444 = distinct !DIAssignID()
!1445 = !DILocation(line: 0, scope: !1437)
!1446 = !DILocation(line: 630, column: 3, scope: !1437)
!1447 = !DILocation(line: 630, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 630, column: 3)
!1449 = !DILocation(line: 630, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 630, column: 3)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 630, column: 3)
!1452 = !DILocation(line: 631, column: 1, scope: !1437)
!1453 = distinct !DISubprogram(name: "gsl_sf_ellint_RC", scope: !2, file: !2, line: 633, type: !1297, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459}
!1455 = !DILocalVariable(name: "x", arg: 1, scope: !1453, file: !2, line: 633, type: !111)
!1456 = !DILocalVariable(name: "y", arg: 2, scope: !1453, file: !2, line: 633, type: !111)
!1457 = !DILocalVariable(name: "mode", arg: 3, scope: !1453, file: !2, line: 633, type: !112)
!1458 = !DILocalVariable(name: "result", scope: !1453, file: !2, line: 635, type: !115)
!1459 = !DILocalVariable(name: "status", scope: !1453, file: !2, line: 635, type: !60)
!1460 = distinct !DIAssignID()
!1461 = !DILocation(line: 0, scope: !1453)
!1462 = !DILocation(line: 635, column: 3, scope: !1453)
!1463 = !DILocation(line: 635, column: 3, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 635, column: 3)
!1465 = !DILocation(line: 635, column: 3, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 635, column: 3)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 635, column: 3)
!1468 = !DILocation(line: 636, column: 1, scope: !1453)
!1469 = distinct !DISubprogram(name: "gsl_sf_ellint_RD", scope: !2, file: !2, line: 638, type: !1419, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476}
!1471 = !DILocalVariable(name: "x", arg: 1, scope: !1469, file: !2, line: 638, type: !111)
!1472 = !DILocalVariable(name: "y", arg: 2, scope: !1469, file: !2, line: 638, type: !111)
!1473 = !DILocalVariable(name: "z", arg: 3, scope: !1469, file: !2, line: 638, type: !111)
!1474 = !DILocalVariable(name: "mode", arg: 4, scope: !1469, file: !2, line: 638, type: !112)
!1475 = !DILocalVariable(name: "result", scope: !1469, file: !2, line: 640, type: !115)
!1476 = !DILocalVariable(name: "status", scope: !1469, file: !2, line: 640, type: !60)
!1477 = distinct !DIAssignID()
!1478 = !DILocation(line: 0, scope: !1469)
!1479 = !DILocation(line: 640, column: 3, scope: !1469)
!1480 = !DILocation(line: 640, column: 3, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 640, column: 3)
!1482 = !DILocation(line: 640, column: 3, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 640, column: 3)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 640, column: 3)
!1485 = !DILocation(line: 641, column: 1, scope: !1469)
!1486 = distinct !DISubprogram(name: "gsl_sf_ellint_RF", scope: !2, file: !2, line: 643, type: !1419, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493}
!1488 = !DILocalVariable(name: "x", arg: 1, scope: !1486, file: !2, line: 643, type: !111)
!1489 = !DILocalVariable(name: "y", arg: 2, scope: !1486, file: !2, line: 643, type: !111)
!1490 = !DILocalVariable(name: "z", arg: 3, scope: !1486, file: !2, line: 643, type: !111)
!1491 = !DILocalVariable(name: "mode", arg: 4, scope: !1486, file: !2, line: 643, type: !112)
!1492 = !DILocalVariable(name: "result", scope: !1486, file: !2, line: 645, type: !115)
!1493 = !DILocalVariable(name: "status", scope: !1486, file: !2, line: 645, type: !60)
!1494 = distinct !DIAssignID()
!1495 = !DILocation(line: 0, scope: !1486)
!1496 = !DILocation(line: 645, column: 3, scope: !1486)
!1497 = !DILocation(line: 645, column: 3, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 645, column: 3)
!1499 = !DILocation(line: 645, column: 3, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 645, column: 3)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 645, column: 3)
!1502 = !DILocation(line: 646, column: 1, scope: !1486)
!1503 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ", scope: !2, file: !2, line: 648, type: !1504, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!111, !111, !111, !111, !111, !112}
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1507 = !DILocalVariable(name: "x", arg: 1, scope: !1503, file: !2, line: 648, type: !111)
!1508 = !DILocalVariable(name: "y", arg: 2, scope: !1503, file: !2, line: 648, type: !111)
!1509 = !DILocalVariable(name: "z", arg: 3, scope: !1503, file: !2, line: 648, type: !111)
!1510 = !DILocalVariable(name: "p", arg: 4, scope: !1503, file: !2, line: 648, type: !111)
!1511 = !DILocalVariable(name: "mode", arg: 5, scope: !1503, file: !2, line: 648, type: !112)
!1512 = !DILocalVariable(name: "result", scope: !1503, file: !2, line: 650, type: !115)
!1513 = !DILocalVariable(name: "status", scope: !1503, file: !2, line: 650, type: !60)
!1514 = distinct !DIAssignID()
!1515 = !DILocation(line: 0, scope: !1503)
!1516 = !DILocation(line: 650, column: 3, scope: !1503)
!1517 = !DILocation(line: 650, column: 3, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 650, column: 3)
!1519 = !DILocation(line: 650, column: 3, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 650, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 650, column: 3)
!1522 = !DILocation(line: 651, column: 1, scope: !1503)
