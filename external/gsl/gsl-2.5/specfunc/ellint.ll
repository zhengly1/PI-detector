; ModuleID = 'ellint.c'
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
  %14 = fadd double %0, %1
  %15 = fcmp olt double %14, 0x34000000000000
  %16 = or i1 %13, %15, !dbg !166
  br i1 %16, label %17, label %19, !dbg !166

17:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !167, !tbaa !170
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !167
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !167, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef 1) #7, !dbg !173
  br label %66, !dbg !173

19:                                               ; preds = %4
  %20 = fcmp ogt double %0, %1, !dbg !175
  %21 = select i1 %20, double %0, double %1, !dbg !175
  %22 = fcmp olt double %21, 0x7FC9999999999999, !dbg !176
  br i1 %22, label %23, label %64, !dbg !177

23:                                               ; preds = %19, %35
  %24 = phi double [ %44, %35 ], [ %1, %19 ], !dbg !178
  %25 = phi double [ %42, %35 ], [ %0, %19 ], !dbg !178
  %26 = phi i32 [ %45, %35 ], [ 0, %19 ], !dbg !178
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !148, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %25, metadata !142, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double %24, metadata !143, metadata !DIExpression()), !dbg !178
  %27 = fadd double %24, %25, !dbg !179
  %28 = fadd double %24, %27, !dbg !181
  %29 = fdiv double %28, 3.000000e+00, !dbg !182
  tail call void @llvm.dbg.value(metadata double %29, metadata !144, metadata !DIExpression()), !dbg !178
  %30 = fadd double %24, %29, !dbg !183
  %31 = fdiv double %30, %29, !dbg !184
  %32 = fadd double %31, -2.000000e+00, !dbg !185
  tail call void @llvm.dbg.value(metadata double %32, metadata !145, metadata !DIExpression()), !dbg !178
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !186
  %34 = fcmp olt double %33, %7, !dbg !188
  br i1 %34, label %49, label %35, !dbg !189

35:                                               ; preds = %23
  %36 = tail call double @sqrt(double noundef %25) #7, !dbg !190
  %37 = fmul double %36, 2.000000e+00, !dbg !191
  %38 = tail call double @sqrt(double noundef %24) #7, !dbg !192
  %39 = fmul double %37, %38, !dbg !193
  %40 = fadd double %24, %39, !dbg !194
  tail call void @llvm.dbg.value(metadata double %40, metadata !146, metadata !DIExpression()), !dbg !178
  %41 = fadd double %25, %40, !dbg !195
  %42 = fmul double %41, 2.500000e-01, !dbg !196
  tail call void @llvm.dbg.value(metadata double %42, metadata !142, metadata !DIExpression()), !dbg !178
  %43 = fadd double %24, %40, !dbg !197
  %44 = fmul double %43, 2.500000e-01, !dbg !198
  tail call void @llvm.dbg.value(metadata double %44, metadata !143, metadata !DIExpression()), !dbg !178
  %45 = add nuw nsw i32 %26, 1, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !148, metadata !DIExpression()), !dbg !178
  %46 = icmp eq i32 %45, 10000, !dbg !200
  br i1 %46, label %47, label %23, !dbg !202, !llvm.loop !203

47:                                               ; preds = %35
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !206, !tbaa !170
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !206
  store double 0x7FF8000000000000, ptr %48, align 8, !dbg !206, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 102, i32 noundef 11) #7, !dbg !209
  br label %66, !dbg !209

49:                                               ; preds = %23
  %50 = fmul double %32, %32, !dbg !211
  %51 = fmul double %32, 0x3FDA2E8BA2E8BA2F, !dbg !212
  %52 = fadd double %51, 3.750000e-01, !dbg !213
  %53 = fmul double %32, %52, !dbg !214
  %54 = fadd double %53, 0x3FC2492492492492, !dbg !215
  %55 = fmul double %32, %54, !dbg !216
  %56 = fadd double %55, 3.000000e-01, !dbg !217
  %57 = fmul double %50, %56, !dbg !218
  tail call void @llvm.dbg.value(metadata double %57, metadata !147, metadata !DIExpression()), !dbg !178
  %58 = fadd double %57, 1.000000e+00, !dbg !219
  %59 = tail call double @sqrt(double noundef %29) #7, !dbg !220
  %60 = fdiv double %58, %59, !dbg !221
  store double %60, ptr %3, align 8, !dbg !222, !tbaa !170
  %61 = tail call double @llvm.fabs.f64(double %60), !dbg !223
  %62 = fmul double %10, %61, !dbg !224
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !225
  store double %62, ptr %63, align 8, !dbg !226, !tbaa !172
  br label %66, !dbg !227

64:                                               ; preds = %19
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !228, !tbaa !170
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !228
  store double 0x7FF8000000000000, ptr %65, align 8, !dbg !228, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 1) #7, !dbg !231
  br label %66, !dbg !231

66:                                               ; preds = %47, %49, %64, %17
  %67 = phi i32 [ 1, %17 ], [ 1, %64 ], [ 0, %49 ], [ 11, %47 ], !dbg !233
  ret i32 %67, !dbg !234
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !235 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !240 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RD_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !244 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !248, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %1, metadata !249, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %2, metadata !250, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !251, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !150, metadata !DIExpression()), !dbg !290
  %6 = and i32 %3, 7, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !253, metadata !DIExpression()), !dbg !289
  %7 = icmp eq i32 %6, 0, !dbg !293
  %8 = select i1 %7, double 1.000000e-03, double 3.000000e-02, !dbg !294
  tail call void @llvm.dbg.value(metadata double %8, metadata !254, metadata !DIExpression()), !dbg !289
  %9 = zext nneg i32 %6 to i64, !dbg !295
  %10 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %9, !dbg !295
  %11 = load double, ptr %10, align 8, !dbg !295, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %11, metadata !255, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double 0x155428A2F98D7321, metadata !256, metadata !DIExpression()), !dbg !289
  %12 = fmul double %8, 1.000000e-01, !dbg !296
  %13 = fmul double %12, 0x7FD0000000000000, !dbg !297
  %14 = tail call double @pow(double noundef %13, double noundef 0x3FE5555555555555) #7, !dbg !298
  tail call void @llvm.dbg.value(metadata double %14, metadata !257, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !258, metadata !DIExpression()), !dbg !289
  %15 = fcmp olt double %0, %1, !dbg !299
  %16 = select i1 %15, double %0, double %1, !dbg !299
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !300
  br i1 %17, label %23, label %18, !dbg !301

18:                                               ; preds = %5
  %19 = fadd double %0, %1, !dbg !302
  %20 = fcmp olt double %19, %2, !dbg !302
  %21 = select i1 %20, double %19, double %2, !dbg !302
  %22 = fcmp olt double %21, 0x155428A2F98D7321, !dbg !303
  br i1 %22, label %23, label %25, !dbg !304

23:                                               ; preds = %5, %18
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !305, !tbaa !170
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !305
  store double 0x7FF8000000000000, ptr %24, align 8, !dbg !305, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 1) #7, !dbg !308
  br label %113, !dbg !308

25:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double %1, metadata !315, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double %2, metadata !316, metadata !DIExpression()), !dbg !318
  %26 = fcmp ogt double %0, %1, !dbg !320
  %27 = select i1 %26, double %0, double %1, !dbg !320
  tail call void @llvm.dbg.value(metadata double %27, metadata !317, metadata !DIExpression()), !dbg !318
  %28 = fcmp ogt double %27, %2, !dbg !321
  %29 = select i1 %28, double %27, double %2, !dbg !321
  %30 = fcmp olt double %29, %14, !dbg !322
  br i1 %30, label %31, label %111, !dbg !323

31:                                               ; preds = %25, %56
  %32 = phi double [ %68, %56 ], [ 1.000000e+00, %25 ], !dbg !324
  %33 = phi double [ %67, %56 ], [ 0.000000e+00, %25 ], !dbg !325
  %34 = phi i32 [ %74, %56 ], [ 0, %25 ], !dbg !326
  %35 = phi double [ %73, %56 ], [ %2, %25 ], !dbg !327
  %36 = phi double [ %72, %56 ], [ %1, %25 ], !dbg !328
  %37 = phi double [ %70, %56 ], [ %0, %25 ], !dbg !329
  tail call void @llvm.dbg.value(metadata double %37, metadata !266, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %36, metadata !267, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %35, metadata !268, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !282, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %33, metadata !269, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %32, metadata !270, metadata !DIExpression()), !dbg !330
  %38 = fadd double %36, %37, !dbg !331
  %39 = fmul double %35, 3.000000e+00, !dbg !332
  %40 = fadd double %39, %38, !dbg !333
  %41 = fmul double %40, 2.000000e-01, !dbg !334
  tail call void @llvm.dbg.value(metadata double %41, metadata !278, metadata !DIExpression()), !dbg !330
  %42 = fsub double %41, %37, !dbg !335
  %43 = fdiv double %42, %41, !dbg !336
  tail call void @llvm.dbg.value(metadata double %43, metadata !279, metadata !DIExpression()), !dbg !330
  %44 = fsub double %41, %36, !dbg !337
  %45 = fdiv double %44, %41, !dbg !338
  tail call void @llvm.dbg.value(metadata double %45, metadata !280, metadata !DIExpression()), !dbg !330
  %46 = fsub double %41, %35, !dbg !339
  %47 = fdiv double %46, %41, !dbg !340
  tail call void @llvm.dbg.value(metadata double %47, metadata !281, metadata !DIExpression()), !dbg !330
  %48 = tail call double @llvm.fabs.f64(double %43), !dbg !341
  %49 = tail call double @llvm.fabs.f64(double %45), !dbg !342
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !343
  tail call void @llvm.dbg.value(metadata double %48, metadata !310, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double %49, metadata !315, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double %50, metadata !316, metadata !DIExpression()), !dbg !344
  %51 = fcmp ogt double %48, %49, !dbg !346
  %52 = select i1 %51, double %48, double %49, !dbg !346
  tail call void @llvm.dbg.value(metadata double %52, metadata !317, metadata !DIExpression()), !dbg !344
  %53 = fcmp ogt double %52, %50, !dbg !347
  %54 = select i1 %53, double %52, double %50, !dbg !347
  tail call void @llvm.dbg.value(metadata double %54, metadata !288, metadata !DIExpression()), !dbg !348
  %55 = fcmp olt double %54, %8, !dbg !349
  br i1 %55, label %78, label %56, !dbg !351

56:                                               ; preds = %31
  %57 = tail call double @sqrt(double noundef %37) #7, !dbg !352
  tail call void @llvm.dbg.value(metadata double %57, metadata !283, metadata !DIExpression()), !dbg !348
  %58 = tail call double @sqrt(double noundef %36) #7, !dbg !353
  tail call void @llvm.dbg.value(metadata double %58, metadata !285, metadata !DIExpression()), !dbg !348
  %59 = tail call double @sqrt(double noundef %35) #7, !dbg !354
  tail call void @llvm.dbg.value(metadata double %59, metadata !286, metadata !DIExpression()), !dbg !348
  %60 = fadd double %58, %59, !dbg !355
  %61 = fmul double %57, %60, !dbg !356
  %62 = fmul double %58, %59, !dbg !357
  %63 = fadd double %62, %61, !dbg !358
  tail call void @llvm.dbg.value(metadata double %63, metadata !287, metadata !DIExpression()), !dbg !348
  %64 = fadd double %35, %63, !dbg !359
  %65 = fmul double %59, %64, !dbg !360
  %66 = fdiv double %32, %65, !dbg !361
  %67 = fadd double %33, %66, !dbg !362
  tail call void @llvm.dbg.value(metadata double %67, metadata !269, metadata !DIExpression()), !dbg !330
  %68 = fmul double %32, 2.500000e-01, !dbg !363
  tail call void @llvm.dbg.value(metadata double %68, metadata !270, metadata !DIExpression()), !dbg !330
  %69 = fadd double %37, %63, !dbg !364
  %70 = fmul double %69, 2.500000e-01, !dbg !365
  tail call void @llvm.dbg.value(metadata double %70, metadata !266, metadata !DIExpression()), !dbg !330
  %71 = fadd double %36, %63, !dbg !366
  %72 = fmul double %71, 2.500000e-01, !dbg !367
  tail call void @llvm.dbg.value(metadata double %72, metadata !267, metadata !DIExpression()), !dbg !330
  %73 = fmul double %64, 2.500000e-01, !dbg !368
  tail call void @llvm.dbg.value(metadata double %73, metadata !268, metadata !DIExpression()), !dbg !330
  %74 = add nuw nsw i32 %34, 1, !dbg !369
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !282, metadata !DIExpression()), !dbg !330
  %75 = icmp eq i32 %74, 10000, !dbg !370
  br i1 %75, label %76, label %31, !dbg !372

76:                                               ; preds = %56
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !373, !tbaa !170
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !373
  store double 0x7FF8000000000000, ptr %77, align 8, !dbg !373, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 11) #7, !dbg !376
  tail call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !282, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !269, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !270, metadata !DIExpression()), !dbg !330
  br label %113

78:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !282, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %33, metadata !269, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %32, metadata !270, metadata !DIExpression()), !dbg !330
  %79 = fmul double %43, %45, !dbg !378
  tail call void @llvm.dbg.value(metadata double %79, metadata !271, metadata !DIExpression()), !dbg !330
  %80 = fmul double %47, %47, !dbg !379
  tail call void @llvm.dbg.value(metadata double %80, metadata !272, metadata !DIExpression()), !dbg !330
  %81 = fsub double %79, %80, !dbg !380
  tail call void @llvm.dbg.value(metadata double %81, metadata !273, metadata !DIExpression()), !dbg !330
  %82 = fmul double %80, 6.000000e+00, !dbg !381
  %83 = fsub double %79, %82, !dbg !382
  tail call void @llvm.dbg.value(metadata double %83, metadata !274, metadata !DIExpression()), !dbg !330
  %84 = fadd double %81, %83, !dbg !383
  %85 = fadd double %81, %84, !dbg !384
  tail call void @llvm.dbg.value(metadata double %85, metadata !275, metadata !DIExpression()), !dbg !330
  %86 = fmul double %83, 0x3FBA2E8BA2E8BA2F, !dbg !385
  %87 = fadd double %86, 0xBFCB6DB6DB6DB6DB, !dbg !386
  %88 = fmul double %47, 0x3FC6276276276276, !dbg !387
  %89 = fmul double %88, %85, !dbg !388
  %90 = fsub double %87, %89, !dbg !389
  %91 = fmul double %83, %90, !dbg !390
  tail call void @llvm.dbg.value(metadata double %91, metadata !276, metadata !DIExpression()), !dbg !330
  %92 = fmul double %85, 0x3FC5555555555555, !dbg !391
  %93 = fmul double %81, 0x3FDA2E8BA2E8BA2F, !dbg !392
  %94 = fmul double %47, 0x3FBD89D89D89D89E, !dbg !393
  %95 = fmul double %94, %79, !dbg !394
  %96 = fsub double %95, %93, !dbg !395
  %97 = fmul double %47, %96, !dbg !396
  %98 = fadd double %97, %92, !dbg !397
  %99 = fmul double %47, %98, !dbg !398
  tail call void @llvm.dbg.value(metadata double %99, metadata !277, metadata !DIExpression()), !dbg !330
  %100 = fmul double %33, 3.000000e+00, !dbg !399
  %101 = fadd double %91, 1.000000e+00, !dbg !400
  %102 = fadd double %99, %101, !dbg !401
  %103 = fmul double %32, %102, !dbg !402
  %104 = tail call double @sqrt(double noundef %41) #7, !dbg !403
  %105 = fmul double %41, %104, !dbg !404
  %106 = fdiv double %103, %105, !dbg !405
  %107 = fadd double %100, %106, !dbg !406
  store double %107, ptr %4, align 8, !dbg !407, !tbaa !170
  %108 = tail call double @llvm.fabs.f64(double %107), !dbg !408
  %109 = fmul double %11, %108, !dbg !409
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !410
  store double %109, ptr %110, align 8, !dbg !411, !tbaa !172
  br label %113, !dbg !412

111:                                              ; preds = %25
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !413, !tbaa !170
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !413
  store double 0x7FF8000000000000, ptr %112, align 8, !dbg !413, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 177, i32 noundef 1) #7, !dbg !416
  br label %113, !dbg !416

113:                                              ; preds = %76, %78, %111, %23
  %114 = phi i32 [ 1, %23 ], [ 1, %111 ], [ 0, %78 ], [ 11, %76 ]
  ret i32 %114, !dbg !418
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !419 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RF_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !422 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !424, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %1, metadata !425, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %2, metadata !426, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !427, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !428, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double 0x34000000000000, metadata !429, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double 0x7FC9999999999999, metadata !430, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !150, metadata !DIExpression()), !dbg !460
  %6 = and i32 %3, 7, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !431, metadata !DIExpression()), !dbg !459
  %7 = icmp eq i32 %6, 0, !dbg !463
  %8 = select i1 %7, double 1.000000e-03, double 3.000000e-02, !dbg !464
  tail call void @llvm.dbg.value(metadata double %8, metadata !432, metadata !DIExpression()), !dbg !459
  %9 = zext nneg i32 %6 to i64, !dbg !465
  %10 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %9, !dbg !465
  %11 = load double, ptr %10, align 8, !dbg !465, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %11, metadata !433, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !434, metadata !DIExpression()), !dbg !459
  %12 = fcmp olt double %0, 0.000000e+00, !dbg !466
  %13 = fcmp olt double %1, 0.000000e+00
  %14 = or i1 %12, %13, !dbg !467
  %15 = fcmp olt double %2, 0.000000e+00
  %16 = or i1 %14, %15, !dbg !467
  br i1 %16, label %17, label %19, !dbg !467

17:                                               ; preds = %5
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !468, !tbaa !170
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !468
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !468, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 1) #7, !dbg !471
  br label %99, !dbg !471

19:                                               ; preds = %5
  %20 = fadd double %0, %1, !dbg !473
  %21 = fcmp olt double %20, 0x34000000000000, !dbg !474
  %22 = fadd double %0, %2
  %23 = fcmp olt double %22, 0x34000000000000
  %24 = or i1 %21, %23, !dbg !475
  %25 = fadd double %1, %2
  %26 = fcmp olt double %25, 0x34000000000000
  %27 = or i1 %26, %24, !dbg !475
  br i1 %27, label %28, label %30, !dbg !475

28:                                               ; preds = %19
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !476, !tbaa !170
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !476
  store double 0x7FF8000000000000, ptr %29, align 8, !dbg !476, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 196, i32 noundef 1) #7, !dbg !479
  br label %99, !dbg !479

30:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %1, metadata !315, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %2, metadata !316, metadata !DIExpression()), !dbg !481
  %31 = fcmp ogt double %0, %1, !dbg !483
  %32 = select i1 %31, double %0, double %1, !dbg !483
  tail call void @llvm.dbg.value(metadata double %32, metadata !317, metadata !DIExpression()), !dbg !481
  %33 = fcmp ogt double %32, %2, !dbg !484
  %34 = select i1 %33, double %32, double %2, !dbg !484
  %35 = fcmp olt double %34, 0x7FC9999999999999, !dbg !485
  br i1 %35, label %36, label %97, !dbg !486

36:                                               ; preds = %30, %61
  %37 = phi i32 [ %75, %61 ], [ 0, %30 ], !dbg !487
  %38 = phi double [ %74, %61 ], [ %2, %30 ], !dbg !488
  %39 = phi double [ %72, %61 ], [ %1, %30 ], !dbg !489
  %40 = phi double [ %70, %61 ], [ %0, %30 ], !dbg !490
  tail call void @llvm.dbg.value(metadata double %40, metadata !442, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double %39, metadata !443, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double %38, metadata !444, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !452, metadata !DIExpression()), !dbg !491
  %41 = fadd double %39, %40, !dbg !492
  %42 = fadd double %38, %41, !dbg !493
  %43 = fdiv double %42, 3.000000e+00, !dbg !494
  tail call void @llvm.dbg.value(metadata double %43, metadata !445, metadata !DIExpression()), !dbg !491
  %44 = fadd double %40, %43, !dbg !495
  %45 = fdiv double %44, %43, !dbg !496
  %46 = fsub double 2.000000e+00, %45, !dbg !497
  tail call void @llvm.dbg.value(metadata double %46, metadata !446, metadata !DIExpression()), !dbg !491
  %47 = fadd double %39, %43, !dbg !498
  %48 = fdiv double %47, %43, !dbg !499
  %49 = fsub double 2.000000e+00, %48, !dbg !500
  tail call void @llvm.dbg.value(metadata double %49, metadata !447, metadata !DIExpression()), !dbg !491
  %50 = fadd double %38, %43, !dbg !501
  %51 = fdiv double %50, %43, !dbg !502
  %52 = fsub double 2.000000e+00, %51, !dbg !503
  tail call void @llvm.dbg.value(metadata double %52, metadata !448, metadata !DIExpression()), !dbg !491
  %53 = tail call double @llvm.fabs.f64(double %46), !dbg !504
  %54 = tail call double @llvm.fabs.f64(double %49), !dbg !505
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !506
  tail call void @llvm.dbg.value(metadata double %53, metadata !310, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %54, metadata !315, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata double %55, metadata !316, metadata !DIExpression()), !dbg !507
  %56 = fcmp ogt double %53, %54, !dbg !509
  %57 = select i1 %56, double %53, double %54, !dbg !509
  tail call void @llvm.dbg.value(metadata double %57, metadata !317, metadata !DIExpression()), !dbg !507
  %58 = fcmp ogt double %57, %55, !dbg !510
  %59 = select i1 %58, double %57, double %55, !dbg !510
  tail call void @llvm.dbg.value(metadata double %59, metadata !453, metadata !DIExpression()), !dbg !511
  %60 = fcmp olt double %59, %8, !dbg !512
  br i1 %60, label %79, label %61, !dbg !514

61:                                               ; preds = %36
  %62 = tail call double @sqrt(double noundef %40) #7, !dbg !515
  tail call void @llvm.dbg.value(metadata double %62, metadata !456, metadata !DIExpression()), !dbg !511
  %63 = tail call double @sqrt(double noundef %39) #7, !dbg !516
  tail call void @llvm.dbg.value(metadata double %63, metadata !457, metadata !DIExpression()), !dbg !511
  %64 = tail call double @sqrt(double noundef %38) #7, !dbg !517
  tail call void @llvm.dbg.value(metadata double %64, metadata !458, metadata !DIExpression()), !dbg !511
  %65 = fadd double %63, %64, !dbg !518
  %66 = fmul double %62, %65, !dbg !519
  %67 = fmul double %63, %64, !dbg !520
  %68 = fadd double %67, %66, !dbg !521
  tail call void @llvm.dbg.value(metadata double %68, metadata !455, metadata !DIExpression()), !dbg !511
  %69 = fadd double %40, %68, !dbg !522
  %70 = fmul double %69, 2.500000e-01, !dbg !523
  tail call void @llvm.dbg.value(metadata double %70, metadata !442, metadata !DIExpression()), !dbg !491
  %71 = fadd double %39, %68, !dbg !524
  %72 = fmul double %71, 2.500000e-01, !dbg !525
  tail call void @llvm.dbg.value(metadata double %72, metadata !443, metadata !DIExpression()), !dbg !491
  %73 = fadd double %38, %68, !dbg !526
  %74 = fmul double %73, 2.500000e-01, !dbg !527
  tail call void @llvm.dbg.value(metadata double %74, metadata !444, metadata !DIExpression()), !dbg !491
  %75 = add nuw nsw i32 %37, 1, !dbg !528
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !452, metadata !DIExpression()), !dbg !491
  %76 = icmp eq i32 %75, 10000, !dbg !529
  br i1 %76, label %77, label %36, !dbg !531

77:                                               ; preds = %61
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !532, !tbaa !170
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !532
  store double 0x7FF8000000000000, ptr %78, align 8, !dbg !532, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 11) #7, !dbg !535
  tail call void @llvm.dbg.value(metadata double poison, metadata !442, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double poison, metadata !443, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double poison, metadata !444, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !452, metadata !DIExpression()), !dbg !491
  br label %99

79:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata double poison, metadata !442, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double poison, metadata !443, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata double poison, metadata !444, metadata !DIExpression()), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !452, metadata !DIExpression()), !dbg !491
  %80 = fmul double %46, %49, !dbg !537
  %81 = fmul double %52, %52, !dbg !538
  %82 = fsub double %80, %81, !dbg !539
  tail call void @llvm.dbg.value(metadata double %82, metadata !449, metadata !DIExpression()), !dbg !491
  %83 = fmul double %52, %80, !dbg !540
  tail call void @llvm.dbg.value(metadata double %83, metadata !450, metadata !DIExpression()), !dbg !491
  %84 = fmul double %82, 0x3FA5555555555555, !dbg !541
  %85 = fadd double %84, -1.000000e-01, !dbg !542
  %86 = fmul double %83, 0x3FB1745D1745D174, !dbg !543
  %87 = fsub double %85, %86, !dbg !544
  %88 = fmul double %82, %87, !dbg !545
  %89 = fadd double %88, 1.000000e+00, !dbg !546
  %90 = fmul double %83, 0x3FB2492492492492, !dbg !547
  %91 = fadd double %90, %89, !dbg !548
  tail call void @llvm.dbg.value(metadata double %91, metadata !451, metadata !DIExpression()), !dbg !491
  %92 = tail call double @sqrt(double noundef %43) #7, !dbg !549
  %93 = fdiv double %91, %92, !dbg !550
  store double %93, ptr %4, align 8, !dbg !551, !tbaa !170
  %94 = tail call double @llvm.fabs.f64(double %93), !dbg !552
  %95 = fmul double %11, %94, !dbg !553
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !554
  store double %95, ptr %96, align 8, !dbg !555, !tbaa !172
  br label %99, !dbg !556

97:                                               ; preds = %30
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !557, !tbaa !170
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !557
  store double 0x7FF8000000000000, ptr %98, align 8, !dbg !557, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 1) #7, !dbg !560
  br label %99, !dbg !560

99:                                               ; preds = %77, %79, %97, %28, %17
  %100 = phi i32 [ 1, %17 ], [ 1, %28 ], [ 1, %97 ], [ 0, %79 ], [ 11, %77 ]
  ret i32 %100, !dbg !562
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_RJ_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !563 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !617, metadata ptr %7, metadata !DIExpression()), !dbg !618
  tail call void @llvm.dbg.value(metadata double %0, metadata !567, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double %1, metadata !568, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double %2, metadata !569, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double %3, metadata !570, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !571, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !572, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !150, metadata !DIExpression()), !dbg !620
  %8 = and i32 %4, 7, !dbg !622
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !573, metadata !DIExpression()), !dbg !619
  %9 = icmp eq i32 %8, 0, !dbg !623
  %10 = select i1 %9, double 1.000000e-03, double 3.000000e-02, !dbg !624
  tail call void @llvm.dbg.value(metadata double %10, metadata !574, metadata !DIExpression()), !dbg !619
  %11 = zext nneg i32 %8 to i64, !dbg !625
  %12 = getelementptr inbounds [0 x double], ptr @gsl_prec_eps, i64 0, i64 %11, !dbg !625
  %13 = load double, ptr %12, align 8, !dbg !625, !tbaa !161
  tail call void @llvm.dbg.value(metadata double %13, metadata !575, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double 0x2AB13C484138708E, metadata !576, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata double 0x551C4B19C41F715F, metadata !577, metadata !DIExpression()), !dbg !619
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !578, metadata !DIExpression()), !dbg !619
  %14 = fcmp olt double %0, 0.000000e+00, !dbg !626
  %15 = fcmp olt double %1, 0.000000e+00
  %16 = or i1 %14, %15, !dbg !627
  %17 = fcmp olt double %2, 0.000000e+00
  %18 = or i1 %16, %17, !dbg !627
  br i1 %18, label %19, label %21, !dbg !627

19:                                               ; preds = %6
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !628, !tbaa !170
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !628
  store double 0x7FF8000000000000, ptr %20, align 8, !dbg !628, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef 1) #7, !dbg !631
  br label %159, !dbg !631

21:                                               ; preds = %6
  %22 = fadd double %0, %1, !dbg !633
  %23 = fcmp olt double %22, 0x2AB13C484138708E, !dbg !634
  %24 = fadd double %0, %2
  %25 = fcmp olt double %24, 0x2AB13C484138708E
  %26 = or i1 %23, %25, !dbg !635
  %27 = fadd double %1, %2
  %28 = fcmp olt double %27, 0x2AB13C484138708E
  %29 = or i1 %28, %26, !dbg !635
  %30 = fcmp olt double %3, 0x2AB13C484138708E
  %31 = or i1 %30, %29, !dbg !635
  br i1 %31, label %32, label %34, !dbg !635

32:                                               ; preds = %21
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !636, !tbaa !170
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !636
  store double 0x7FF8000000000000, ptr %33, align 8, !dbg !636, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1) #7, !dbg !639
  br label %159, !dbg !639

34:                                               ; preds = %21
  tail call void @llvm.dbg.value(metadata double %0, metadata !641, metadata !DIExpression()), !dbg !651
  tail call void @llvm.dbg.value(metadata double %1, metadata !646, metadata !DIExpression()), !dbg !651
  tail call void @llvm.dbg.value(metadata double %2, metadata !647, metadata !DIExpression()), !dbg !651
  tail call void @llvm.dbg.value(metadata double %3, metadata !648, metadata !DIExpression()), !dbg !651
  %35 = fcmp ogt double %0, %1, !dbg !653
  %36 = select i1 %35, double %0, double %1, !dbg !653
  tail call void @llvm.dbg.value(metadata double %36, metadata !649, metadata !DIExpression()), !dbg !651
  %37 = fcmp ogt double %36, %2, !dbg !654
  %38 = select i1 %37, double %36, double %2, !dbg !654
  tail call void @llvm.dbg.value(metadata double %38, metadata !650, metadata !DIExpression()), !dbg !651
  %39 = fcmp ogt double %38, %3, !dbg !655
  %40 = select i1 %39, double %38, double %3, !dbg !655
  %41 = fcmp olt double %40, 0x551C4B19C41F715F, !dbg !656
  br i1 %41, label %42, label %157, !dbg !657

42:                                               ; preds = %34, %102
  %43 = phi i32 [ %96, %102 ], [ 0, %34 ], !dbg !658
  %44 = phi double [ %110, %102 ], [ 1.000000e+00, %34 ], !dbg !659
  %45 = phi double [ %113, %102 ], [ 0.000000e+00, %34 ], !dbg !660
  %46 = phi double [ %103, %102 ], [ %3, %34 ], !dbg !661
  %47 = phi double [ %105, %102 ], [ %2, %34 ], !dbg !662
  %48 = phi double [ %107, %102 ], [ %1, %34 ], !dbg !663
  %49 = phi double [ %109, %102 ], [ %0, %34 ], !dbg !664
  tail call void @llvm.dbg.value(metadata double %49, metadata !587, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %48, metadata !588, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %47, metadata !589, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %46, metadata !590, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %45, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %44, metadata !592, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !606, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !666
  %50 = fadd double %48, %49, !dbg !667
  %51 = fadd double %47, %50, !dbg !668
  %52 = fadd double %46, %51, !dbg !669
  %53 = fadd double %46, %52, !dbg !670
  %54 = fmul double %53, 2.000000e-01, !dbg !671
  tail call void @llvm.dbg.value(metadata double %54, metadata !593, metadata !DIExpression()), !dbg !665
  %55 = fsub double %54, %49, !dbg !672
  %56 = fdiv double %55, %54, !dbg !673
  tail call void @llvm.dbg.value(metadata double %56, metadata !594, metadata !DIExpression()), !dbg !665
  %57 = fsub double %54, %48, !dbg !674
  %58 = fdiv double %57, %54, !dbg !675
  tail call void @llvm.dbg.value(metadata double %58, metadata !595, metadata !DIExpression()), !dbg !665
  %59 = fsub double %54, %47, !dbg !676
  %60 = fdiv double %59, %54, !dbg !677
  tail call void @llvm.dbg.value(metadata double %60, metadata !596, metadata !DIExpression()), !dbg !665
  %61 = fsub double %54, %46, !dbg !678
  %62 = fdiv double %61, %54, !dbg !679
  tail call void @llvm.dbg.value(metadata double %62, metadata !597, metadata !DIExpression()), !dbg !665
  %63 = tail call double @llvm.fabs.f64(double %56), !dbg !680
  %64 = tail call double @llvm.fabs.f64(double %58), !dbg !681
  %65 = tail call double @llvm.fabs.f64(double %60), !dbg !682
  %66 = tail call double @llvm.fabs.f64(double %62), !dbg !683
  tail call void @llvm.dbg.value(metadata double %63, metadata !641, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata double %64, metadata !646, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata double %65, metadata !647, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata double %66, metadata !648, metadata !DIExpression()), !dbg !684
  %67 = fcmp ogt double %63, %64, !dbg !686
  %68 = select i1 %67, double %63, double %64, !dbg !686
  tail call void @llvm.dbg.value(metadata double %68, metadata !649, metadata !DIExpression()), !dbg !684
  %69 = fcmp ogt double %68, %65, !dbg !687
  %70 = select i1 %69, double %68, double %65, !dbg !687
  tail call void @llvm.dbg.value(metadata double %70, metadata !650, metadata !DIExpression()), !dbg !684
  %71 = fcmp ogt double %70, %66, !dbg !688
  %72 = select i1 %71, double %70, double %66, !dbg !688
  tail call void @llvm.dbg.value(metadata double %72, metadata !614, metadata !DIExpression()), !dbg !618
  %73 = fcmp olt double %72, %10, !dbg !689
  br i1 %73, label %114, label %74, !dbg !691

74:                                               ; preds = %42
  %75 = tail call double @sqrt(double noundef %49) #7, !dbg !692
  tail call void @llvm.dbg.value(metadata double %75, metadata !607, metadata !DIExpression()), !dbg !618
  %76 = tail call double @sqrt(double noundef %48) #7, !dbg !693
  tail call void @llvm.dbg.value(metadata double %76, metadata !609, metadata !DIExpression()), !dbg !618
  %77 = tail call double @sqrt(double noundef %47) #7, !dbg !694
  tail call void @llvm.dbg.value(metadata double %77, metadata !610, metadata !DIExpression()), !dbg !618
  %78 = fadd double %76, %77, !dbg !695
  %79 = fmul double %75, %78, !dbg !696
  %80 = fmul double %76, %77, !dbg !697
  %81 = fadd double %80, %79, !dbg !698
  tail call void @llvm.dbg.value(metadata double %81, metadata !611, metadata !DIExpression()), !dbg !618
  %82 = fadd double %75, %76, !dbg !699
  %83 = fadd double %82, %77, !dbg !700
  %84 = fmul double %46, %83, !dbg !701
  %85 = fmul double %75, %76, !dbg !702
  %86 = fmul double %85, %77, !dbg !703
  %87 = fadd double %86, %84, !dbg !704
  tail call void @llvm.dbg.value(metadata double %87, metadata !612, metadata !DIExpression()), !dbg !618
  %88 = fmul double %87, %87, !dbg !705
  tail call void @llvm.dbg.value(metadata double %88, metadata !612, metadata !DIExpression()), !dbg !618
  %89 = fadd double %46, %81, !dbg !706
  %90 = fmul double %46, %89, !dbg !707
  %91 = fmul double %89, %90, !dbg !708
  tail call void @llvm.dbg.value(metadata double %91, metadata !613, metadata !DIExpression()), !dbg !618
  %92 = call i32 @gsl_sf_ellint_RC_e(double noundef %88, double noundef %91, i32 noundef %4, ptr noundef nonnull %7), !dbg !709, !range !710
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !616, metadata !DIExpression()), !dbg !618
  %93 = icmp eq i32 %92, 0, !dbg !711
  br i1 %93, label %95, label %94, !dbg !713

94:                                               ; preds = %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !714
  br label %100, !dbg !716

95:                                               ; preds = %74
  tail call void @llvm.dbg.value(metadata double poison, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !592, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !587, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !588, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !589, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !590, metadata !DIExpression()), !dbg !665
  %96 = add nuw nsw i32 %43, 1, !dbg !717
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !606, metadata !DIExpression()), !dbg !665
  %97 = icmp eq i32 %96, 10000, !dbg !718
  br i1 %97, label %98, label %102, !dbg !720

98:                                               ; preds = %95
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !721, !tbaa !170
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !721
  store double 0x7FF8000000000000, ptr %99, align 8, !dbg !721, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 305, i32 noundef 11) #7, !dbg !724
  br label %100, !dbg !724

100:                                              ; preds = %94, %98
  %101 = phi i32 [ 11, %98 ], [ %92, %94 ]
  tail call void @llvm.dbg.value(metadata double poison, metadata !587, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !588, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !589, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !590, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !592, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !606, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !726
  br label %159

102:                                              ; preds = %95
  %103 = fmul double %89, 2.500000e-01, !dbg !727
  tail call void @llvm.dbg.value(metadata double %103, metadata !590, metadata !DIExpression()), !dbg !665
  %104 = fadd double %47, %81, !dbg !728
  %105 = fmul double %104, 2.500000e-01, !dbg !729
  tail call void @llvm.dbg.value(metadata double %105, metadata !589, metadata !DIExpression()), !dbg !665
  %106 = fadd double %48, %81, !dbg !730
  %107 = fmul double %106, 2.500000e-01, !dbg !731
  tail call void @llvm.dbg.value(metadata double %107, metadata !588, metadata !DIExpression()), !dbg !665
  %108 = fadd double %49, %81, !dbg !732
  %109 = fmul double %108, 2.500000e-01, !dbg !733
  tail call void @llvm.dbg.value(metadata double %109, metadata !587, metadata !DIExpression()), !dbg !665
  %110 = fmul double %44, 2.500000e-01, !dbg !734
  tail call void @llvm.dbg.value(metadata double %110, metadata !592, metadata !DIExpression()), !dbg !665
  %111 = load double, ptr %7, align 8, !dbg !735, !tbaa !170
  %112 = fmul double %44, %111, !dbg !736
  %113 = fadd double %45, %112, !dbg !737
  tail call void @llvm.dbg.value(metadata double %113, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %109, metadata !587, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %107, metadata !588, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %105, metadata !589, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %103, metadata !590, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %113, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %110, metadata !592, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !606, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !726
  br label %42

114:                                              ; preds = %42
  tail call void @llvm.dbg.value(metadata double poison, metadata !587, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !588, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !589, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !590, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %45, metadata !591, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %44, metadata !592, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !606, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !726
  %115 = fadd double %58, %60, !dbg !738
  %116 = fmul double %56, %115, !dbg !739
  %117 = fmul double %58, %60, !dbg !740
  %118 = fadd double %117, %116, !dbg !741
  tail call void @llvm.dbg.value(metadata double %118, metadata !598, metadata !DIExpression()), !dbg !665
  %119 = fmul double %56, %58, !dbg !742
  %120 = fmul double %60, %119, !dbg !743
  tail call void @llvm.dbg.value(metadata double %120, metadata !599, metadata !DIExpression()), !dbg !665
  %121 = fmul double %62, %62, !dbg !744
  tail call void @llvm.dbg.value(metadata double %121, metadata !600, metadata !DIExpression()), !dbg !665
  %122 = fmul double %121, 3.000000e+00, !dbg !745
  %123 = fsub double %118, %122, !dbg !746
  tail call void @llvm.dbg.value(metadata double %123, metadata !601, metadata !DIExpression()), !dbg !665
  %124 = fmul double %62, 2.000000e+00, !dbg !747
  %125 = fsub double %118, %121, !dbg !748
  %126 = fmul double %124, %125, !dbg !749
  %127 = fadd double %120, %126, !dbg !750
  tail call void @llvm.dbg.value(metadata double %127, metadata !602, metadata !DIExpression()), !dbg !665
  %128 = fmul double %123, 0x3FBA2E8BA2E8BA2E, !dbg !751
  %129 = fadd double %128, 0xBFCB6DB6DB6DB6DB, !dbg !752
  %130 = fmul double %127, 0x3FC6276276276276, !dbg !753
  %131 = fsub double %129, %130, !dbg !754
  %132 = fmul double %123, %131, !dbg !755
  %133 = fadd double %132, 1.000000e+00, !dbg !756
  tail call void @llvm.dbg.value(metadata double %133, metadata !603, metadata !DIExpression()), !dbg !665
  %134 = fmul double %62, 0x3FBD89D89D89D89E, !dbg !757
  %135 = fadd double %134, 0xBFD1745D1745D174, !dbg !758
  %136 = fmul double %62, %135, !dbg !759
  %137 = fadd double %136, 0x3FC5555555555555, !dbg !760
  %138 = fmul double %120, %137, !dbg !761
  tail call void @llvm.dbg.value(metadata double %138, metadata !604, metadata !DIExpression()), !dbg !665
  %139 = fmul double %62, %118, !dbg !762
  %140 = fmul double %62, 0x3FC1745D1745D174, !dbg !763
  %141 = fsub double 0x3FD5555555555555, %140, !dbg !764
  %142 = fmul double %141, %139, !dbg !765
  %143 = fmul double %62, 0x3FD5555555555555, !dbg !766
  %144 = fmul double %143, %121, !dbg !767
  %145 = fsub double %142, %144, !dbg !768
  tail call void @llvm.dbg.value(metadata double %145, metadata !605, metadata !DIExpression()), !dbg !665
  %146 = fmul double %45, 3.000000e+00, !dbg !769
  %147 = fadd double %138, %133, !dbg !770
  %148 = fadd double %145, %147, !dbg !771
  %149 = fmul double %44, %148, !dbg !772
  %150 = tail call double @sqrt(double noundef %54) #7, !dbg !773
  %151 = fmul double %54, %150, !dbg !774
  %152 = fdiv double %149, %151, !dbg !775
  %153 = fadd double %146, %152, !dbg !776
  store double %153, ptr %5, align 8, !dbg !777, !tbaa !170
  %154 = tail call double @llvm.fabs.f64(double %153), !dbg !778
  %155 = fmul double %13, %154, !dbg !779
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !780
  store double %155, ptr %156, align 8, !dbg !781, !tbaa !172
  br label %159, !dbg !782

157:                                              ; preds = %34
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !783, !tbaa !170
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !783
  store double 0x7FF8000000000000, ptr %158, align 8, !dbg !783, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 1) #7, !dbg !786
  br label %159, !dbg !786

159:                                              ; preds = %100, %114, %157, %32, %19
  %160 = phi i32 [ 1, %19 ], [ 1, %32 ], [ 1, %157 ], [ 0, %114 ], [ %101, %100 ]
  ret i32 %160, !dbg !788
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_F_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !789 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !802, metadata !DIExpression(), metadata !808, metadata ptr %5, metadata !DIExpression()), !dbg !809
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !804, metadata !DIExpression(), metadata !810, metadata ptr %6, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double %0, metadata !791, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata double %1, metadata !792, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !793, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !794, metadata !DIExpression()), !dbg !812
  %7 = fdiv double %0, 0x400921FB54442D18, !dbg !813
  %8 = fadd double %7, 5.000000e-01, !dbg !814
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !815
  tail call void @llvm.dbg.value(metadata double %9, metadata !795, metadata !DIExpression()), !dbg !812
  %10 = fmul double %9, 0x400921FB54442D18, !dbg !816
  %11 = fsub double %0, %10, !dbg !817
  tail call void @llvm.dbg.value(metadata double %11, metadata !796, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata double %11, metadata !791, metadata !DIExpression()), !dbg !812
  %12 = tail call double @sin(double noundef %11) #7, !dbg !818
  tail call void @llvm.dbg.value(metadata double %12, metadata !797, metadata !DIExpression()), !dbg !809
  %13 = fmul double %12, %12, !dbg !819
  tail call void @llvm.dbg.value(metadata double %13, metadata !799, metadata !DIExpression()), !dbg !809
  %14 = fsub double 1.000000e+00, %13, !dbg !820
  tail call void @llvm.dbg.value(metadata double %14, metadata !800, metadata !DIExpression()), !dbg !809
  %15 = fmul double %1, %1, !dbg !821
  %16 = fmul double %15, %13, !dbg !822
  %17 = fsub double 1.000000e+00, %16, !dbg !823
  tail call void @llvm.dbg.value(metadata double %17, metadata !801, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !824
  %18 = call i32 @gsl_sf_ellint_RF_e(double noundef %14, double noundef %17, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !803, metadata !DIExpression()), !dbg !809
  %19 = load double, ptr %5, align 8, !dbg !826, !tbaa !170
  %20 = fmul double %12, %19, !dbg !827
  store double %20, ptr %3, align 8, !dbg !828, !tbaa !170
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !829
  %22 = fmul double %21, 0x3CB0000000000000, !dbg !830
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !831
  %24 = load double, ptr %23, align 8, !dbg !831, !tbaa !172
  %25 = fmul double %12, %24, !dbg !832
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !833
  %27 = fadd double %22, %26, !dbg !834
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !835
  store double %27, ptr %28, align 8, !dbg !836, !tbaa !172
  %29 = fcmp oeq double %9, 0.000000e+00, !dbg !837
  br i1 %29, label %46, label %30, !dbg !838

30:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !839
  %31 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %6), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !807, metadata !DIExpression()), !dbg !811
  %32 = fmul double %9, 2.000000e+00, !dbg !841
  %33 = load double, ptr %6, align 8, !dbg !842, !tbaa !170
  %34 = fmul double %32, %33, !dbg !843
  %35 = load double, ptr %3, align 8, !dbg !844, !tbaa !170
  %36 = fadd double %35, %34, !dbg !844
  store double %36, ptr %3, align 8, !dbg !844, !tbaa !170
  %37 = tail call double @llvm.fabs.f64(double %9), !dbg !845
  %38 = fmul double %37, 2.000000e+00, !dbg !846
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !847
  %40 = load double, ptr %39, align 8, !dbg !847, !tbaa !172
  %41 = fmul double %38, %40, !dbg !848
  %42 = load double, ptr %28, align 8, !dbg !849, !tbaa !172
  %43 = fadd double %42, %41, !dbg !849
  store double %43, ptr %28, align 8, !dbg !849, !tbaa !172
  %44 = icmp eq i32 %18, 0, !dbg !850
  %45 = select i1 %44, i32 %31, i32 %18, !dbg !850
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !851
  br label %46

46:                                               ; preds = %4, %30
  %47 = phi i32 [ %45, %30 ], [ %18, %4 ], !dbg !852
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !853
  ret i32 %47, !dbg !854
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !855 double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Kcomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !856 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !860, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !861, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !862, metadata !DIExpression()), !dbg !877
  %4 = fmul double %0, %0, !dbg !878
  %5 = fcmp ult double %4, 1.000000e+00, !dbg !879
  br i1 %5, label %8, label %6, !dbg !880

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !881, !tbaa !170
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !881
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !881, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 505, i32 noundef 1) #7, !dbg !884
  br label %35, !dbg !884

8:                                                ; preds = %3
  %9 = fcmp ult double %4, 0x3FEFFFFFF8000000, !dbg !886
  %10 = fsub double 1.000000e+00, %4, !dbg !887
  br i1 %9, label %29, label %11, !dbg !888

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %10, metadata !863, metadata !DIExpression()), !dbg !889
  tail call void @llvm.dbg.value(metadata double 0x3FF62E42FEFA3BDC, metadata !867, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double 0x3FB8BEEF74A49015, metadata !867, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double 0x3FA2619B1B7DF892, metadata !867, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !871, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double 0x3FBFFF140B737B4B, metadata !871, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !889
  tail call void @llvm.dbg.value(metadata double 0x3FB19D0A2A39033E, metadata !871, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !889
  %12 = fmul double %10, 0x3FA2619B1B7DF892, !dbg !890
  %13 = fadd double %12, 0x3FB8BEEF74A49015, !dbg !891
  %14 = fmul double %10, %13, !dbg !892
  %15 = fadd double %14, 0x3FF62E42FEFA3BDC, !dbg !893
  tail call void @llvm.dbg.value(metadata double %15, metadata !872, metadata !DIExpression()), !dbg !889
  %16 = tail call double @log(double noundef %10) #7, !dbg !894
  %17 = fmul double %10, 0x3FB19D0A2A39033E, !dbg !895
  %18 = fadd double %17, 0x3FBFFF140B737B4B, !dbg !896
  %19 = fmul double %10, %18, !dbg !897
  %20 = fadd double %19, 5.000000e-01, !dbg !898
  tail call void @llvm.dbg.value(metadata double poison, metadata !873, metadata !DIExpression()), !dbg !889
  %21 = fmul double %20, %16, !dbg !899
  %22 = fsub double %15, %21, !dbg !899
  store double %22, ptr %2, align 8, !dbg !900, !tbaa !170
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !901
  %24 = fdiv double %0, %10, !dbg !902
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !903
  %26 = fadd double %25, %23, !dbg !904
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !905
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !906
  store double %27, ptr %28, align 8, !dbg !907, !tbaa !172
  br label %35

29:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %10, metadata !874, metadata !DIExpression()), !dbg !908
  %30 = tail call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %10, double noundef 1.000000e+00, i32 noundef %1, ptr noundef %2), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !876, metadata !DIExpression()), !dbg !908
  %31 = fdiv double 0x3CA0000000000000, %10, !dbg !910
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !911
  %33 = load double, ptr %32, align 8, !dbg !912, !tbaa !172
  %34 = fadd double %31, %33, !dbg !912
  store double %34, ptr %32, align 8, !dbg !912, !tbaa !172
  br label %35

35:                                               ; preds = %6, %11, %29
  %36 = phi i32 [ 1, %6 ], [ 0, %11 ], [ %30, %29 ], !dbg !913
  ret i32 %36, !dbg !914
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_E_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !915 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !942
  call void @llvm.dbg.assign(metadata i1 undef, metadata !928, metadata !DIExpression(), metadata !942, metadata ptr %5, metadata !DIExpression()), !dbg !943
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !932, metadata !DIExpression(), metadata !944, metadata ptr %6, metadata !DIExpression()), !dbg !945
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !946
  call void @llvm.dbg.assign(metadata i1 undef, metadata !934, metadata !DIExpression(), metadata !946, metadata ptr %7, metadata !DIExpression()), !dbg !945
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !947
  call void @llvm.dbg.assign(metadata i1 undef, metadata !938, metadata !DIExpression(), metadata !947, metadata ptr %8, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata double %0, metadata !917, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %1, metadata !918, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !919, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !920, metadata !DIExpression()), !dbg !949
  %9 = fdiv double %0, 0x400921FB54442D18, !dbg !950
  %10 = fadd double %9, 5.000000e-01, !dbg !951
  %11 = tail call double @llvm.floor.f64(double %10), !dbg !952
  tail call void @llvm.dbg.value(metadata double %11, metadata !921, metadata !DIExpression()), !dbg !949
  %12 = fmul double %11, 0x400921FB54442D18, !dbg !953
  %13 = fsub double %0, %12, !dbg !954
  tail call void @llvm.dbg.value(metadata double %13, metadata !922, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %13, metadata !917, metadata !DIExpression()), !dbg !949
  %14 = tail call double @sin(double noundef %13) #7, !dbg !955
  tail call void @llvm.dbg.value(metadata double %14, metadata !923, metadata !DIExpression()), !dbg !956
  %15 = fmul double %14, %14, !dbg !957
  tail call void @llvm.dbg.value(metadata double %15, metadata !925, metadata !DIExpression()), !dbg !956
  %16 = fsub double 1.000000e+00, %15, !dbg !958
  tail call void @llvm.dbg.value(metadata double %16, metadata !926, metadata !DIExpression()), !dbg !956
  tail call void @llvm.dbg.value(metadata double poison, metadata !927, metadata !DIExpression()), !dbg !956
  %17 = fcmp olt double %16, 0x3CB0000000000000, !dbg !959
  br i1 %17, label %18, label %34, !dbg !960

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !961
  %19 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %5), !dbg !962
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !931, metadata !DIExpression()), !dbg !943
  %20 = fmul double %11, 2.000000e+00, !dbg !963
  %21 = load double, ptr %5, align 8, !dbg !964, !tbaa !170
  %22 = fmul double %20, %21, !dbg !965
  %23 = fcmp oge double %14, 0.000000e+00, !dbg !966
  %24 = fneg double %21, !dbg !967
  %25 = select i1 %23, double %21, double %24, !dbg !967
  %26 = fadd double %22, %25, !dbg !968
  store double %26, ptr %3, align 8, !dbg !969, !tbaa !170
  %27 = tail call double @llvm.fabs.f64(double %11), !dbg !970
  %28 = fmul double %27, 2.000000e+00, !dbg !971
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !972
  %30 = load double, ptr %29, align 8, !dbg !972, !tbaa !172
  %31 = fmul double %28, %30, !dbg !973
  %32 = fadd double %30, %31, !dbg !974
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !975
  store double %32, ptr %33, align 8, !dbg !976, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !977
  br label %91

34:                                               ; preds = %4
  %35 = fmul double %1, %1, !dbg !978
  %36 = fmul double %35, %15, !dbg !979
  %37 = fsub double 1.000000e+00, %36, !dbg !980
  tail call void @llvm.dbg.value(metadata double %37, metadata !927, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !981
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !981
  %38 = fmul double %14, %15, !dbg !982
  tail call void @llvm.dbg.value(metadata double %38, metadata !935, metadata !DIExpression()), !dbg !945
  %39 = call i32 @gsl_sf_ellint_RF_e(double noundef %16, double noundef %37, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %6), !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !936, metadata !DIExpression()), !dbg !945
  %40 = call i32 @gsl_sf_ellint_RD_e(double noundef %16, double noundef %37, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %7), !dbg !984
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !937, metadata !DIExpression()), !dbg !945
  %41 = load double, ptr %6, align 8, !dbg !985, !tbaa !170
  %42 = fmul double %14, %41, !dbg !986
  %43 = fdiv double %35, 3.000000e+00, !dbg !987
  %44 = fmul double %43, %38, !dbg !988
  %45 = load double, ptr %7, align 8, !dbg !989, !tbaa !170
  %46 = fmul double %44, %45, !dbg !990
  %47 = fsub double %42, %46, !dbg !991
  store double %47, ptr %3, align 8, !dbg !992, !tbaa !170
  %48 = tail call double @llvm.fabs.f64(double %42), !dbg !993
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !994
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !995
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !996
  %52 = load double, ptr %51, align 8, !dbg !996, !tbaa !172
  %53 = fmul double %14, %52, !dbg !997
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !998
  %55 = fadd double %49, %54, !dbg !999
  %56 = fmul double %43, 0x3CB0000000000000, !dbg !1000
  %57 = fmul double %38, %45, !dbg !1001
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !1002
  %59 = fmul double %56, %58, !dbg !1003
  %60 = fadd double %59, %55, !dbg !1004
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1005
  %62 = load double, ptr %61, align 8, !dbg !1005, !tbaa !172
  %63 = fmul double %38, %62, !dbg !1006
  %64 = tail call double @llvm.fabs.f64(double %63), !dbg !1007
  %65 = fmul double %43, %64, !dbg !1008
  %66 = fadd double %60, %65, !dbg !1009
  store double %66, ptr %50, align 8, !dbg !1009, !tbaa !172
  %67 = fcmp oeq double %11, 0.000000e+00, !dbg !1010
  br i1 %67, label %68, label %71, !dbg !1011

68:                                               ; preds = %34
  %69 = icmp eq i32 %39, 0, !dbg !1012
  %70 = select i1 %69, i32 %40, i32 %39, !dbg !1012
  br label %89, !dbg !1014

71:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1015
  %72 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %8), !dbg !1016
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !941, metadata !DIExpression()), !dbg !948
  %73 = fmul double %11, 2.000000e+00, !dbg !1017
  %74 = load double, ptr %8, align 8, !dbg !1018, !tbaa !170
  %75 = fmul double %73, %74, !dbg !1019
  %76 = load double, ptr %3, align 8, !dbg !1020, !tbaa !170
  %77 = fadd double %76, %75, !dbg !1020
  store double %77, ptr %3, align 8, !dbg !1020, !tbaa !170
  %78 = tail call double @llvm.fabs.f64(double %11), !dbg !1021
  %79 = fmul double %78, 2.000000e+00, !dbg !1022
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1023
  %81 = load double, ptr %80, align 8, !dbg !1023, !tbaa !172
  %82 = fmul double %79, %81, !dbg !1024
  %83 = load double, ptr %50, align 8, !dbg !1025, !tbaa !172
  %84 = fadd double %83, %82, !dbg !1025
  store double %84, ptr %50, align 8, !dbg !1025, !tbaa !172
  %85 = icmp eq i32 %39, 0, !dbg !1026
  %86 = icmp eq i32 %40, 0, !dbg !1026
  %87 = select i1 %86, i32 %72, i32 %40, !dbg !1026
  %88 = select i1 %85, i32 %87, i32 %39, !dbg !1026
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1027
  br label %89

89:                                               ; preds = %71, %68
  %90 = phi i32 [ %70, %68 ], [ %88, %71 ], !dbg !1028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1029
  br label %91

91:                                               ; preds = %89, %18
  %92 = phi i32 [ %19, %18 ], [ %90, %89 ], !dbg !1030
  ret i32 %92, !dbg !1031
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Ecomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1032 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1045, metadata !DIExpression(), metadata !1051, metadata ptr %4, metadata !DIExpression()), !dbg !1052
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1047, metadata !DIExpression(), metadata !1053, metadata ptr %5, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %0, metadata !1034, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1035, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1036, metadata !DIExpression()), !dbg !1054
  %6 = fmul double %0, %0, !dbg !1055
  %7 = fcmp ult double %6, 1.000000e+00, !dbg !1056
  br i1 %7, label %10, label %8, !dbg !1057

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1058, !tbaa !170
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1058
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !1058, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 1) #7, !dbg !1061
  br label %49, !dbg !1061

10:                                               ; preds = %3
  %11 = fcmp ult double %6, 0x3FEFFFFFF8000000, !dbg !1063
  br i1 %11, label %31, label %12, !dbg !1064

12:                                               ; preds = %10
  %13 = fsub double 1.000000e+00, %6, !dbg !1065
  tail call void @llvm.dbg.value(metadata double %13, metadata !1037, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FDC5E3B2E6F7625, metadata !1041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FB006F296EE960C, metadata !1041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FA85B9906E45829, metadata !1041, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FCFFF771FB95C41, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FB78D6E13C3242C, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1066
  tail call void @llvm.dbg.value(metadata double 0x3FA4D63BE3935D49, metadata !1042, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1066
  %14 = fmul double %13, 0x3FA85B9906E45829, !dbg !1067
  %15 = fadd double %14, 0x3FB006F296EE960C, !dbg !1068
  %16 = fmul double %13, %15, !dbg !1069
  %17 = fadd double %16, 0x3FDC5E3B2E6F7625, !dbg !1070
  %18 = fmul double %13, %17, !dbg !1071
  %19 = fadd double %18, 1.000000e+00, !dbg !1072
  tail call void @llvm.dbg.value(metadata double %19, metadata !1043, metadata !DIExpression()), !dbg !1066
  %20 = fneg double %13, !dbg !1073
  %21 = tail call double @log(double noundef %13) #7, !dbg !1074
  %22 = fmul double %21, %20, !dbg !1075
  %23 = fmul double %13, 0x3FA4D63BE3935D49, !dbg !1076
  %24 = fadd double %23, 0x3FB78D6E13C3242C, !dbg !1077
  %25 = fmul double %13, %24, !dbg !1078
  %26 = fadd double %25, 0x3FCFFF771FB95C41, !dbg !1079
  %27 = fmul double %26, %22, !dbg !1080
  tail call void @llvm.dbg.value(metadata double %27, metadata !1044, metadata !DIExpression()), !dbg !1066
  %28 = fadd double %19, %27, !dbg !1081
  store double %28, ptr %2, align 8, !dbg !1082, !tbaa !170
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !1083
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1084
  store double %29, ptr %30, align 8, !dbg !1085, !tbaa !172
  br label %49

31:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1087
  %32 = fsub double 1.000000e+00, %6, !dbg !1088
  tail call void @llvm.dbg.value(metadata double %32, metadata !1048, metadata !DIExpression()), !dbg !1052
  %33 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %32, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %4), !dbg !1089
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1049, metadata !DIExpression()), !dbg !1052
  %34 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %32, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %5), !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !1050, metadata !DIExpression()), !dbg !1052
  %35 = load double, ptr %4, align 8, !dbg !1091, !tbaa !170
  %36 = fdiv double %6, 3.000000e+00, !dbg !1092
  %37 = load double, ptr %5, align 8, !dbg !1093, !tbaa !170
  %38 = fmul double %36, %37, !dbg !1094
  %39 = fsub double %35, %38, !dbg !1095
  store double %39, ptr %2, align 8, !dbg !1096, !tbaa !170
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1097
  %41 = load double, ptr %40, align 8, !dbg !1097, !tbaa !172
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1098
  %43 = load double, ptr %42, align 8, !dbg !1098, !tbaa !172
  %44 = fmul double %36, %43, !dbg !1099
  %45 = fadd double %41, %44, !dbg !1100
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1101
  store double %45, ptr %46, align 8, !dbg !1102, !tbaa !172
  %47 = icmp eq i32 %33, 0, !dbg !1103
  %48 = select i1 %47, i32 %34, i32 %33, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1104
  br label %49

49:                                               ; preds = %8, %12, %31
  %50 = phi i32 [ 1, %8 ], [ 0, %12 ], [ %48, %31 ], !dbg !1105
  ret i32 %50, !dbg !1106
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_ellint_P_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 !dbg !1107 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1130
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1131
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1122, metadata !DIExpression(), metadata !1132, metadata ptr %8, metadata !DIExpression()), !dbg !1133
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1123, metadata !DIExpression(), metadata !1134, metadata ptr %9, metadata !DIExpression()), !dbg !1133
  tail call void @llvm.dbg.value(metadata double %0, metadata !1109, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata double %1, metadata !1110, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata double %2, metadata !1111, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1112, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1113, metadata !DIExpression()), !dbg !1135
  %10 = fdiv double %0, 0x400921FB54442D18, !dbg !1136
  %11 = fadd double %10, 5.000000e-01, !dbg !1137
  %12 = tail call double @llvm.floor.f64(double %11), !dbg !1138
  tail call void @llvm.dbg.value(metadata double %12, metadata !1114, metadata !DIExpression()), !dbg !1135
  %13 = fmul double %12, 0x400921FB54442D18, !dbg !1139
  %14 = fsub double %0, %13, !dbg !1140
  tail call void @llvm.dbg.value(metadata double %14, metadata !1115, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata double %14, metadata !1109, metadata !DIExpression()), !dbg !1135
  %15 = tail call double @sin(double noundef %14) #7, !dbg !1141
  tail call void @llvm.dbg.value(metadata double %15, metadata !1116, metadata !DIExpression()), !dbg !1133
  %16 = fmul double %15, %15, !dbg !1142
  tail call void @llvm.dbg.value(metadata double %16, metadata !1118, metadata !DIExpression()), !dbg !1133
  %17 = fmul double %15, %16, !dbg !1143
  tail call void @llvm.dbg.value(metadata double %17, metadata !1119, metadata !DIExpression()), !dbg !1133
  %18 = fsub double 1.000000e+00, %16, !dbg !1144
  tail call void @llvm.dbg.value(metadata double %18, metadata !1120, metadata !DIExpression()), !dbg !1133
  %19 = fmul double %1, %1, !dbg !1145
  %20 = fmul double %19, %16, !dbg !1146
  %21 = fsub double 1.000000e+00, %20, !dbg !1147
  tail call void @llvm.dbg.value(metadata double %21, metadata !1121, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1149
  %22 = call i32 @gsl_sf_ellint_RF_e(double noundef %18, double noundef %21, double noundef 1.000000e+00, i32 noundef %3, ptr noundef nonnull %8), !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1124, metadata !DIExpression()), !dbg !1133
  %23 = fmul double %16, %2, !dbg !1151
  %24 = fadd double %23, 1.000000e+00, !dbg !1152
  %25 = call i32 @gsl_sf_ellint_RJ_e(double noundef %18, double noundef %21, double noundef 1.000000e+00, double noundef %24, i32 noundef %3, ptr noundef nonnull %9), !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1125, metadata !DIExpression()), !dbg !1133
  %26 = load double, ptr %8, align 8, !dbg !1154, !tbaa !170
  %27 = fmul double %15, %26, !dbg !1155
  %28 = fdiv double %2, 3.000000e+00, !dbg !1156
  %29 = fmul double %28, %17, !dbg !1157
  %30 = load double, ptr %9, align 8, !dbg !1158, !tbaa !170
  %31 = fmul double %29, %30, !dbg !1159
  %32 = fsub double %27, %31, !dbg !1160
  store double %32, ptr %4, align 8, !dbg !1161, !tbaa !170
  %33 = tail call double @llvm.fabs.f64(double %27), !dbg !1162
  %34 = fmul double %33, 0x3CB0000000000000, !dbg !1163
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1164
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !1165
  %37 = load double, ptr %36, align 8, !dbg !1165, !tbaa !172
  %38 = fmul double %15, %37, !dbg !1166
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !1167
  %40 = fadd double %34, %39, !dbg !1168
  %41 = fmul double %28, 0x3CB0000000000000, !dbg !1169
  %42 = fmul double %17, %30, !dbg !1170
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !1171
  %44 = fmul double %41, %43, !dbg !1172
  %45 = fadd double %44, %40, !dbg !1173
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !1174
  %47 = load double, ptr %46, align 8, !dbg !1174, !tbaa !172
  %48 = fmul double %17, %47, !dbg !1175
  %49 = tail call double @llvm.fabs.f64(double %48), !dbg !1176
  %50 = fmul double %28, %49, !dbg !1177
  %51 = fadd double %45, %50, !dbg !1178
  store double %51, ptr %35, align 8, !dbg !1178, !tbaa !172
  %52 = fcmp oeq double %12, 0.000000e+00, !dbg !1179
  br i1 %52, label %53, label %56, !dbg !1180

53:                                               ; preds = %5
  %54 = icmp eq i32 %22, 0, !dbg !1181
  %55 = select i1 %54, i32 %25, i32 %22, !dbg !1181
  br label %94, !dbg !1183

56:                                               ; preds = %5
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1184, metadata !DIExpression(), metadata !1130, metadata ptr %6, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1193, metadata !DIExpression(), metadata !1131, metadata ptr %7, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %1, metadata !1189, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata double %2, metadata !1190, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %3, metadata !1191, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr undef, metadata !1192, metadata !DIExpression()), !dbg !1199
  %57 = fcmp ult double %19, 1.000000e+00, !dbg !1200
  br i1 %57, label %59, label %58, !dbg !1201

58:                                               ; preds = %56
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1202
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1202
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #7, !dbg !1203
  br label %77, !dbg !1203

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1207
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1208
  %60 = fsub double 1.000000e+00, %19, !dbg !1209
  call void @llvm.dbg.value(metadata double %60, metadata !1194, metadata !DIExpression()), !dbg !1197
  %61 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %60, double noundef 1.000000e+00, i32 noundef %3, ptr noundef nonnull %6), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %61, metadata !1195, metadata !DIExpression()), !dbg !1197
  %62 = fadd double %2, 1.000000e+00, !dbg !1211
  %63 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %60, double noundef 1.000000e+00, double noundef %62, i32 noundef %3, ptr noundef nonnull %7), !dbg !1212
  call void @llvm.dbg.value(metadata i32 %63, metadata !1196, metadata !DIExpression()), !dbg !1197
  %64 = load double, ptr %6, align 8, !dbg !1213, !tbaa !170
  %65 = load double, ptr %7, align 8, !dbg !1214, !tbaa !170
  %66 = fmul double %28, %65, !dbg !1215
  %67 = fsub double %64, %66, !dbg !1216
  tail call void @llvm.dbg.value(metadata double %67, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1202
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1217
  %69 = load double, ptr %68, align 8, !dbg !1217, !tbaa !172
  %70 = tail call double @llvm.fabs.f64(double %28), !dbg !1218
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1219
  %72 = load double, ptr %71, align 8, !dbg !1219, !tbaa !172
  %73 = fmul double %70, %72, !dbg !1220
  %74 = fadd double %69, %73, !dbg !1221
  tail call void @llvm.dbg.value(metadata double %74, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1202
  %75 = icmp eq i32 %61, 0, !dbg !1222
  %76 = select i1 %75, i32 %63, i32 %61, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1223
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1223
  br label %77

77:                                               ; preds = %58, %59
  %78 = phi double [ %74, %59 ], [ 0x7FF8000000000000, %58 ], !dbg !1224
  %79 = phi double [ %67, %59 ], [ 0x7FF8000000000000, %58 ], !dbg !1224
  %80 = phi i32 [ %76, %59 ], [ 1, %58 ], !dbg !1224
  tail call void @llvm.dbg.value(metadata double %79, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1202
  tail call void @llvm.dbg.value(metadata double %78, metadata !1126, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1129, metadata !DIExpression()), !dbg !1202
  %81 = fmul double %12, 2.000000e+00, !dbg !1225
  %82 = fmul double %81, %79, !dbg !1226
  %83 = load double, ptr %4, align 8, !dbg !1227, !tbaa !170
  %84 = fadd double %82, %83, !dbg !1227
  store double %84, ptr %4, align 8, !dbg !1227, !tbaa !170
  %85 = tail call double @llvm.fabs.f64(double %12), !dbg !1228
  %86 = fmul double %85, 2.000000e+00, !dbg !1229
  %87 = fmul double %86, %78, !dbg !1230
  %88 = load double, ptr %35, align 8, !dbg !1231, !tbaa !172
  %89 = fadd double %87, %88, !dbg !1231
  store double %89, ptr %35, align 8, !dbg !1231, !tbaa !172
  %90 = icmp eq i32 %22, 0, !dbg !1232
  %91 = icmp eq i32 %25, 0, !dbg !1232
  %92 = select i1 %91, i32 %80, i32 %25, !dbg !1232
  %93 = select i1 %90, i32 %92, i32 %22, !dbg !1232
  br label %94

94:                                               ; preds = %77, %53
  %95 = phi i32 [ %55, %53 ], [ %93, %77 ], !dbg !1233
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1234
  ret i32 %95, !dbg !1235
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Pcomp_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !1187 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1236
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1184, metadata !DIExpression(), metadata !1236, metadata ptr %5, metadata !DIExpression()), !dbg !1237
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1193, metadata !DIExpression(), metadata !1238, metadata ptr %6, metadata !DIExpression()), !dbg !1237
  tail call void @llvm.dbg.value(metadata double %0, metadata !1189, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata double %1, metadata !1190, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1191, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1192, metadata !DIExpression()), !dbg !1239
  %7 = fmul double %0, %0, !dbg !1240
  %8 = fcmp ult double %7, 1.000000e+00, !dbg !1241
  br i1 %8, label %11, label %9, !dbg !1242

9:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !1243, !tbaa !170
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1243
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !1243, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #7, !dbg !1244
  br label %31, !dbg !1244

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1245
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1246
  %12 = fsub double 1.000000e+00, %7, !dbg !1247
  tail call void @llvm.dbg.value(metadata double %12, metadata !1194, metadata !DIExpression()), !dbg !1237
  %13 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %12, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !1248
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1195, metadata !DIExpression()), !dbg !1237
  %14 = fadd double %1, 1.000000e+00, !dbg !1249
  %15 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %12, double noundef 1.000000e+00, double noundef %14, i32 noundef %2, ptr noundef nonnull %6), !dbg !1250
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1196, metadata !DIExpression()), !dbg !1237
  %16 = load double, ptr %5, align 8, !dbg !1251, !tbaa !170
  %17 = fdiv double %1, 3.000000e+00, !dbg !1252
  %18 = load double, ptr %6, align 8, !dbg !1253, !tbaa !170
  %19 = fmul double %17, %18, !dbg !1254
  %20 = fsub double %16, %19, !dbg !1255
  store double %20, ptr %3, align 8, !dbg !1256, !tbaa !170
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1257
  %22 = load double, ptr %21, align 8, !dbg !1257, !tbaa !172
  %23 = tail call double @llvm.fabs.f64(double %17), !dbg !1258
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1259
  %25 = load double, ptr %24, align 8, !dbg !1259, !tbaa !172
  %26 = fmul double %23, %25, !dbg !1260
  %27 = fadd double %22, %26, !dbg !1261
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1262
  store double %27, ptr %28, align 8, !dbg !1263, !tbaa !172
  %29 = icmp eq i32 %13, 0, !dbg !1264
  %30 = select i1 %29, i32 %15, i32 %13, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1265
  br label %31

31:                                               ; preds = %9, %11
  %32 = phi i32 [ 1, %9 ], [ %30, %11 ], !dbg !1266
  ret i32 %32, !dbg !1267
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_D_e(double noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !1268 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1288
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1282, metadata !DIExpression(), metadata !1289, metadata ptr %6, metadata !DIExpression()), !dbg !1290
  tail call void @llvm.dbg.value(metadata double %0, metadata !1270, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata double %1, metadata !1271, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1272, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1273, metadata !DIExpression()), !dbg !1291
  %7 = fdiv double %0, 0x400921FB54442D18, !dbg !1292
  %8 = fadd double %7, 5.000000e-01, !dbg !1293
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !1294
  tail call void @llvm.dbg.value(metadata double %9, metadata !1274, metadata !DIExpression()), !dbg !1291
  %10 = fmul double %9, 0x400921FB54442D18, !dbg !1295
  %11 = fsub double %0, %10, !dbg !1296
  tail call void @llvm.dbg.value(metadata double %11, metadata !1275, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata double %11, metadata !1270, metadata !DIExpression()), !dbg !1291
  %12 = tail call double @sin(double noundef %11) #7, !dbg !1297
  tail call void @llvm.dbg.value(metadata double %12, metadata !1276, metadata !DIExpression()), !dbg !1290
  %13 = fmul double %12, %12, !dbg !1298
  tail call void @llvm.dbg.value(metadata double %13, metadata !1278, metadata !DIExpression()), !dbg !1290
  %14 = fmul double %12, %13, !dbg !1299
  tail call void @llvm.dbg.value(metadata double %14, metadata !1279, metadata !DIExpression()), !dbg !1290
  %15 = fsub double 1.000000e+00, %13, !dbg !1300
  tail call void @llvm.dbg.value(metadata double %15, metadata !1280, metadata !DIExpression()), !dbg !1290
  %16 = fmul double %1, %1, !dbg !1301
  %17 = fmul double %16, %13, !dbg !1302
  %18 = fsub double 1.000000e+00, %17, !dbg !1303
  tail call void @llvm.dbg.value(metadata double %18, metadata !1281, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1304
  %19 = call i32 @gsl_sf_ellint_RD_e(double noundef %15, double noundef %18, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %6), !dbg !1305
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1283, metadata !DIExpression()), !dbg !1290
  %20 = fdiv double %14, 3.000000e+00, !dbg !1306
  %21 = load double, ptr %6, align 8, !dbg !1307, !tbaa !170
  %22 = fmul double %20, %21, !dbg !1308
  store double %22, ptr %3, align 8, !dbg !1309, !tbaa !170
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !1310
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !1311
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1312
  %26 = load double, ptr %25, align 8, !dbg !1312, !tbaa !172
  %27 = fmul double %20, %26, !dbg !1313
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !1314
  %29 = fadd double %24, %28, !dbg !1315
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1316
  store double %29, ptr %30, align 8, !dbg !1317, !tbaa !172
  %31 = fcmp oeq double %9, 0.000000e+00, !dbg !1318
  br i1 %31, label %62, label %32, !dbg !1319

32:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1320, metadata !DIExpression(), metadata !1288, metadata ptr %5, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata double %1, metadata !1325, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %2, metadata !1326, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata ptr undef, metadata !1327, metadata !DIExpression()), !dbg !1332
  %33 = fcmp ult double %16, 1.000000e+00, !dbg !1333
  br i1 %33, label %35, label %34, !dbg !1334

34:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1335
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1335
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #7, !dbg !1336
  br label %47, !dbg !1336

35:                                               ; preds = %32
  %36 = fsub double 1.000000e+00, %16, !dbg !1340
  call void @llvm.dbg.value(metadata double %36, metadata !1328, metadata !DIExpression()), !dbg !1330
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1341
  %37 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %36, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %5), !dbg !1342
  call void @llvm.dbg.value(metadata i32 %37, metadata !1329, metadata !DIExpression()), !dbg !1330
  %38 = load double, ptr %5, align 8, !dbg !1343, !tbaa !170
  %39 = fmul double %38, 0x3FD5555555555555, !dbg !1344
  tail call void @llvm.dbg.value(metadata double %39, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1335
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !1345
  %41 = fmul double %40, 0x3CB0000000000000, !dbg !1346
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1347
  %43 = load double, ptr %42, align 8, !dbg !1347, !tbaa !172
  %44 = fmul double %43, 0x3FD5555555555555, !dbg !1348
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !1349
  %46 = fadd double %41, %45, !dbg !1350
  tail call void @llvm.dbg.value(metadata double %46, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1335
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1351
  br label %47

47:                                               ; preds = %34, %35
  %48 = phi double [ %46, %35 ], [ 0x7FF8000000000000, %34 ], !dbg !1352
  %49 = phi double [ %39, %35 ], [ 0x7FF8000000000000, %34 ], !dbg !1352
  %50 = phi i32 [ %37, %35 ], [ 1, %34 ], !dbg !1352
  tail call void @llvm.dbg.value(metadata double %49, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1335
  tail call void @llvm.dbg.value(metadata double %48, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1335
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !1287, metadata !DIExpression()), !dbg !1335
  %51 = fmul double %9, 2.000000e+00, !dbg !1353
  %52 = fmul double %51, %49, !dbg !1354
  %53 = load double, ptr %3, align 8, !dbg !1355, !tbaa !170
  %54 = fadd double %52, %53, !dbg !1355
  store double %54, ptr %3, align 8, !dbg !1355, !tbaa !170
  %55 = tail call double @llvm.fabs.f64(double %9), !dbg !1356
  %56 = fmul double %55, 2.000000e+00, !dbg !1357
  %57 = fmul double %56, %48, !dbg !1358
  %58 = load double, ptr %30, align 8, !dbg !1359, !tbaa !172
  %59 = fadd double %57, %58, !dbg !1359
  store double %59, ptr %30, align 8, !dbg !1359, !tbaa !172
  %60 = icmp eq i32 %19, 0, !dbg !1360
  %61 = select i1 %60, i32 %50, i32 %19, !dbg !1360
  br label %62

62:                                               ; preds = %4, %47
  %63 = phi i32 [ %61, %47 ], [ %19, %4 ], !dbg !1361
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1362
  ret i32 %63, !dbg !1363
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_ellint_Dcomp_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1323 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1364
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1320, metadata !DIExpression(), metadata !1364, metadata ptr %4, metadata !DIExpression()), !dbg !1365
  tail call void @llvm.dbg.value(metadata double %0, metadata !1325, metadata !DIExpression()), !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1326, metadata !DIExpression()), !dbg !1366
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1327, metadata !DIExpression()), !dbg !1366
  %5 = fmul double %0, %0, !dbg !1367
  %6 = fcmp ult double %5, 1.000000e+00, !dbg !1368
  br i1 %6, label %9, label %7, !dbg !1369

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1370, !tbaa !170
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1370
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !1370, !tbaa !172
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #7, !dbg !1371
  br label %22, !dbg !1371

9:                                                ; preds = %3
  %10 = fsub double 1.000000e+00, %5, !dbg !1372
  tail call void @llvm.dbg.value(metadata double %10, metadata !1328, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1373
  %11 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %10, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %4), !dbg !1374
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1329, metadata !DIExpression()), !dbg !1365
  %12 = load double, ptr %4, align 8, !dbg !1375, !tbaa !170
  %13 = fmul double %12, 0x3FD5555555555555, !dbg !1376
  store double %13, ptr %2, align 8, !dbg !1377, !tbaa !170
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !1378
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !1379
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1380
  %17 = load double, ptr %16, align 8, !dbg !1380, !tbaa !172
  %18 = fmul double %17, 0x3FD5555555555555, !dbg !1381
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !1382
  %20 = fadd double %15, %19, !dbg !1383
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1384
  store double %20, ptr %21, align 8, !dbg !1385, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1386
  br label %22

22:                                               ; preds = %7, %9
  %23 = phi i32 [ 1, %7 ], [ %11, %9 ], !dbg !1387
  ret i32 %23, !dbg !1388
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1389 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Kcomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1390 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1396, metadata !DIExpression(), metadata !1398, metadata ptr %3, metadata !DIExpression()), !dbg !1399
  tail call void @llvm.dbg.value(metadata double %0, metadata !1394, metadata !DIExpression()), !dbg !1399
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1395, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1400
  %4 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1397, metadata !DIExpression()), !dbg !1399
  %5 = icmp eq i32 %4, 0, !dbg !1401
  br i1 %5, label %7, label %6, !dbg !1400

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 595, i32 noundef %4) #7, !dbg !1403
  br label %7, !dbg !1403

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1400, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1406
  ret double %8, !dbg !1406
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Ecomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1407 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1411, metadata !DIExpression(), metadata !1413, metadata ptr %3, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata double %0, metadata !1409, metadata !DIExpression()), !dbg !1414
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1415
  %4 = call i32 @gsl_sf_ellint_Ecomp_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1412, metadata !DIExpression()), !dbg !1414
  %5 = icmp eq i32 %4, 0, !dbg !1416
  br i1 %5, label %7, label %6, !dbg !1415

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 600, i32 noundef %4) #7, !dbg !1418
  br label %7, !dbg !1418

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1415, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1421
  ret double %8, !dbg !1421
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Pcomp(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1422 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1431
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1432
  tail call void @llvm.dbg.value(metadata double %0, metadata !1426, metadata !DIExpression()), !dbg !1433
  tail call void @llvm.dbg.value(metadata double %1, metadata !1427, metadata !DIExpression()), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1428, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1184, metadata !DIExpression(), metadata !1431, metadata ptr %4, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1193, metadata !DIExpression(), metadata !1432, metadata ptr %5, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata double %0, metadata !1189, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata double %1, metadata !1190, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %2, metadata !1191, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr undef, metadata !1192, metadata !DIExpression()), !dbg !1436
  %6 = fmul double %0, %0, !dbg !1437
  %7 = fcmp ult double %6, 1.000000e+00, !dbg !1438
  br i1 %7, label %9, label %8, !dbg !1439

8:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1433
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1433
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 572, i32 noundef 1) #7, !dbg !1440
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()), !dbg !1433
  br label %22, !dbg !1441

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1442
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1443
  %10 = fsub double 1.000000e+00, %6, !dbg !1444
  call void @llvm.dbg.value(metadata double %10, metadata !1194, metadata !DIExpression()), !dbg !1434
  %11 = call i32 @gsl_sf_ellint_RF_e(double noundef 0.000000e+00, double noundef %10, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %4), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %11, metadata !1195, metadata !DIExpression()), !dbg !1434
  %12 = fadd double %1, 1.000000e+00, !dbg !1446
  %13 = call i32 @gsl_sf_ellint_RJ_e(double noundef 0.000000e+00, double noundef %10, double noundef 1.000000e+00, double noundef %12, i32 noundef %2, ptr noundef nonnull %5), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %13, metadata !1196, metadata !DIExpression()), !dbg !1434
  %14 = load double, ptr %4, align 8, !dbg !1448, !tbaa !170
  %15 = fdiv double %1, 3.000000e+00, !dbg !1449
  %16 = load double, ptr %5, align 8, !dbg !1450, !tbaa !170
  %17 = fmul double %15, %16, !dbg !1451
  %18 = fsub double %14, %17, !dbg !1452
  tail call void @llvm.dbg.value(metadata double %18, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1433
  tail call void @llvm.dbg.value(metadata double poison, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1433
  %19 = icmp eq i32 %11, 0, !dbg !1453
  %20 = select i1 %19, i32 %13, i32 %11, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1454
  tail call void @llvm.dbg.value(metadata double %18, metadata !1429, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1430, metadata !DIExpression()), !dbg !1433
  %21 = icmp eq i32 %20, 0, !dbg !1455
  br i1 %21, label %25, label %22, !dbg !1441

22:                                               ; preds = %8, %9
  %23 = phi i32 [ 1, %8 ], [ %20, %9 ]
  %24 = phi double [ 0x7FF8000000000000, %8 ], [ %18, %9 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 605, i32 noundef %23) #7, !dbg !1457
  br label %25, !dbg !1457

25:                                               ; preds = %9, %22
  %26 = phi double [ %18, %9 ], [ %24, %22 ]
  ret double %26, !dbg !1460
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_Dcomp(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1461 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1467
  tail call void @llvm.dbg.value(metadata double %0, metadata !1463, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1320, metadata !DIExpression(), metadata !1467, metadata ptr %3, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata double %0, metadata !1325, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %1, metadata !1326, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata ptr undef, metadata !1327, metadata !DIExpression()), !dbg !1471
  %4 = fmul double %0, %0, !dbg !1472
  %5 = fcmp ult double %4, 1.000000e+00, !dbg !1473
  br i1 %5, label %7, label %6, !dbg !1474

6:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1468
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1468
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 1) #7, !dbg !1475
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1466, metadata !DIExpression()), !dbg !1468
  br label %13, !dbg !1476

7:                                                ; preds = %2
  %8 = fsub double 1.000000e+00, %4, !dbg !1477
  call void @llvm.dbg.value(metadata double %8, metadata !1328, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1478
  %9 = call i32 @gsl_sf_ellint_RD_e(double noundef 0.000000e+00, double noundef %8, double noundef 1.000000e+00, i32 noundef %1, ptr noundef nonnull %3), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %9, metadata !1329, metadata !DIExpression()), !dbg !1469
  %10 = load double, ptr %3, align 8, !dbg !1480, !tbaa !170
  %11 = fmul double %10, 0x3FD5555555555555, !dbg !1481
  tail call void @llvm.dbg.value(metadata double %11, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1468
  tail call void @llvm.dbg.value(metadata double poison, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1468
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1482
  tail call void @llvm.dbg.value(metadata double %11, metadata !1465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1466, metadata !DIExpression()), !dbg !1468
  %12 = icmp eq i32 %9, 0, !dbg !1483
  br i1 %12, label %16, label %13, !dbg !1476

13:                                               ; preds = %6, %7
  %14 = phi i32 [ 1, %6 ], [ %9, %7 ]
  %15 = phi double [ 0x7FF8000000000000, %6 ], [ %11, %7 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 610, i32 noundef %14) #7, !dbg !1485
  br label %16, !dbg !1485

16:                                               ; preds = %7, %13
  %17 = phi double [ %11, %7 ], [ %15, %13 ]
  ret double %17, !dbg !1488
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_F(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1489 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1496
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1497
  tail call void @llvm.dbg.value(metadata double %0, metadata !1491, metadata !DIExpression()), !dbg !1498
  tail call void @llvm.dbg.value(metadata double %1, metadata !1492, metadata !DIExpression()), !dbg !1498
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1493, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !802, metadata !DIExpression(), metadata !1496, metadata ptr %4, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !804, metadata !DIExpression(), metadata !1497, metadata ptr %5, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata double %0, metadata !791, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata double %1, metadata !792, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %2, metadata !793, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata ptr undef, metadata !794, metadata !DIExpression()), !dbg !1502
  %6 = fdiv double %0, 0x400921FB54442D18, !dbg !1503
  %7 = fadd double %6, 5.000000e-01, !dbg !1504
  %8 = tail call double @llvm.floor.f64(double %7), !dbg !1505
  call void @llvm.dbg.value(metadata double %8, metadata !795, metadata !DIExpression()), !dbg !1502
  %9 = fmul double %8, 0x400921FB54442D18, !dbg !1506
  %10 = fsub double %0, %9, !dbg !1507
  call void @llvm.dbg.value(metadata double %10, metadata !796, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata double %10, metadata !791, metadata !DIExpression()), !dbg !1502
  %11 = tail call double @sin(double noundef %10) #7, !dbg !1508
  call void @llvm.dbg.value(metadata double %11, metadata !797, metadata !DIExpression()), !dbg !1499
  %12 = fmul double %11, %11, !dbg !1509
  call void @llvm.dbg.value(metadata double %12, metadata !799, metadata !DIExpression()), !dbg !1499
  %13 = fsub double 1.000000e+00, %12, !dbg !1510
  call void @llvm.dbg.value(metadata double %13, metadata !800, metadata !DIExpression()), !dbg !1499
  %14 = fmul double %1, %1, !dbg !1511
  %15 = fmul double %14, %12, !dbg !1512
  %16 = fsub double 1.000000e+00, %15, !dbg !1513
  call void @llvm.dbg.value(metadata double %16, metadata !801, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1514
  %17 = call i32 @gsl_sf_ellint_RF_e(double noundef %13, double noundef %16, double noundef 1.000000e+00, i32 noundef %2, ptr noundef nonnull %4), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %17, metadata !803, metadata !DIExpression()), !dbg !1499
  %18 = load double, ptr %4, align 8, !dbg !1516, !tbaa !170
  %19 = fmul double %11, %18, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %19, metadata !1494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1498
  tail call void @llvm.dbg.value(metadata double poison, metadata !1494, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1498
  %20 = fcmp oeq double %8, 0.000000e+00, !dbg !1518
  br i1 %20, label %29, label %21, !dbg !1519

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1520
  %22 = call i32 @gsl_sf_ellint_Kcomp_e(double noundef %1, i32 noundef %2, ptr noundef nonnull %5), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %22, metadata !807, metadata !DIExpression()), !dbg !1501
  %23 = fmul double %8, 2.000000e+00, !dbg !1522
  %24 = load double, ptr %5, align 8, !dbg !1523, !tbaa !170
  %25 = fmul double %23, %24, !dbg !1524
  %26 = fadd double %19, %25, !dbg !1525
  tail call void @llvm.dbg.value(metadata double %26, metadata !1494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1498
  tail call void @llvm.dbg.value(metadata double poison, metadata !1494, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1498
  %27 = icmp eq i32 %17, 0, !dbg !1526
  %28 = select i1 %27, i32 %22, i32 %17, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1527
  br label %29

29:                                               ; preds = %3, %21
  %30 = phi double [ %19, %3 ], [ %26, %21 ], !dbg !1499
  %31 = phi i32 [ %17, %3 ], [ %28, %21 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata double %30, metadata !1494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1498
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1495, metadata !DIExpression()), !dbg !1498
  %32 = icmp eq i32 %31, 0, !dbg !1530
  br i1 %32, label %34, label %33, !dbg !1532

33:                                               ; preds = %29
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 615, i32 noundef %31) #7, !dbg !1533
  br label %34, !dbg !1533

34:                                               ; preds = %29, %33
  ret double %30, !dbg !1536
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_E(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1537 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1542, metadata !DIExpression(), metadata !1544, metadata ptr %4, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata double %0, metadata !1539, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata double %1, metadata !1540, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1541, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1546
  %5 = call i32 @gsl_sf_ellint_E_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1543, metadata !DIExpression()), !dbg !1545
  %6 = icmp eq i32 %5, 0, !dbg !1547
  br i1 %6, label %8, label %7, !dbg !1546

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef %5) #7, !dbg !1549
  br label %8, !dbg !1549

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !1546, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1552
  ret double %9, !dbg !1552
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_P(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1553 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1561, metadata !DIExpression(), metadata !1563, metadata ptr %5, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %0, metadata !1557, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %1, metadata !1558, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %2, metadata !1559, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1560, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1565
  %6 = call i32 @gsl_sf_ellint_P_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1562, metadata !DIExpression()), !dbg !1564
  %7 = icmp eq i32 %6, 0, !dbg !1566
  br i1 %7, label %9, label %8, !dbg !1565

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 625, i32 noundef %6) #7, !dbg !1568
  br label %9, !dbg !1568

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1565, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1571
  ret double %10, !dbg !1571
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_D(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1572 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1577, metadata !DIExpression(), metadata !1579, metadata ptr %4, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata double %0, metadata !1574, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata double %1, metadata !1575, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1576, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1581
  %5 = call i32 @gsl_sf_ellint_D_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1581
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1578, metadata !DIExpression()), !dbg !1580
  %6 = icmp eq i32 %5, 0, !dbg !1582
  br i1 %6, label %8, label %7, !dbg !1581

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 630, i32 noundef %5) #7, !dbg !1584
  br label %8, !dbg !1584

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !1581, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1587
  ret double %9, !dbg !1587
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RC(double noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1588 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1595
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1593, metadata !DIExpression(), metadata !1595, metadata ptr %4, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata double %0, metadata !1590, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata double %1, metadata !1591, metadata !DIExpression()), !dbg !1596
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1592, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1597
  %5 = call i32 @gsl_sf_ellint_RC_e(double noundef %0, double noundef %1, i32 noundef %2, ptr noundef nonnull %4), !dbg !1597, !range !710
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1594, metadata !DIExpression()), !dbg !1596
  %6 = icmp eq i32 %5, 0, !dbg !1598
  br i1 %6, label %8, label %7, !dbg !1597

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 635, i32 noundef %5) #7, !dbg !1600
  br label %8, !dbg !1600

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !1597, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1603
  ret double %9, !dbg !1603
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RD(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1604 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1610, metadata !DIExpression(), metadata !1612, metadata ptr %5, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata double %0, metadata !1606, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata double %1, metadata !1607, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata double %2, metadata !1608, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1609, metadata !DIExpression()), !dbg !1613
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1614
  %6 = call i32 @gsl_sf_ellint_RD_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1614
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1611, metadata !DIExpression()), !dbg !1613
  %7 = icmp eq i32 %6, 0, !dbg !1615
  br i1 %7, label %9, label %8, !dbg !1614

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 640, i32 noundef %6) #7, !dbg !1617
  br label %9, !dbg !1617

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1614, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1620
  ret double %10, !dbg !1620
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RF(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1621 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1627, metadata !DIExpression(), metadata !1629, metadata ptr %5, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %0, metadata !1623, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %1, metadata !1624, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %2, metadata !1625, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1626, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1631
  %6 = call i32 @gsl_sf_ellint_RF_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %5), !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1628, metadata !DIExpression()), !dbg !1630
  %7 = icmp eq i32 %6, 0, !dbg !1632
  br i1 %7, label %9, label %8, !dbg !1631

8:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 645, i32 noundef %6) #7, !dbg !1634
  br label %9, !dbg !1634

9:                                                ; preds = %4, %8
  %10 = load double, ptr %5, align 8, !dbg !1631, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1637
  ret double %10, !dbg !1637
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_ellint_RJ(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !1638 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1647, metadata !DIExpression(), metadata !1649, metadata ptr %6, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata double %0, metadata !1642, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata double %1, metadata !1643, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata double %2, metadata !1644, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata double %3, metadata !1645, metadata !DIExpression()), !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1651
  %7 = call i32 @gsl_sf_ellint_RJ_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, ptr noundef nonnull %6), !dbg !1651
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1648, metadata !DIExpression()), !dbg !1650
  %8 = icmp eq i32 %7, 0, !dbg !1652
  br i1 %8, label %10, label %9, !dbg !1651

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 650, i32 noundef %7) #7, !dbg !1654
  br label %10, !dbg !1654

10:                                               ; preds = %5, %9
  %11 = load double, ptr %6, align 8, !dbg !1651, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1657
  ret double %11, !dbg !1657
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!179 = !DILocation(line: 94, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !138, file: !2, line: 93, column: 14)
!181 = !DILocation(line: 94, column: 21, scope: !180)
!182 = !DILocation(line: 94, column: 27, scope: !180)
!183 = !DILocation(line: 95, column: 16, scope: !180)
!184 = !DILocation(line: 95, column: 22, scope: !180)
!185 = !DILocation(line: 95, column: 27, scope: !180)
!186 = !DILocation(line: 96, column: 11, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !2, line: 96, column: 11)
!188 = !DILocation(line: 96, column: 20, scope: !187)
!189 = !DILocation(line: 96, column: 11, scope: !180)
!190 = !DILocation(line: 97, column: 21, scope: !180)
!191 = !DILocation(line: 97, column: 19, scope: !180)
!192 = !DILocation(line: 97, column: 32, scope: !180)
!193 = !DILocation(line: 97, column: 30, scope: !180)
!194 = !DILocation(line: 97, column: 41, scope: !180)
!195 = !DILocation(line: 98, column: 16, scope: !180)
!196 = !DILocation(line: 98, column: 25, scope: !180)
!197 = !DILocation(line: 99, column: 16, scope: !180)
!198 = !DILocation(line: 99, column: 25, scope: !180)
!199 = !DILocation(line: 100, column: 8, scope: !180)
!200 = !DILocation(line: 101, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !180, file: !2, line: 101, column: 10)
!202 = !DILocation(line: 101, column: 10, scope: !180)
!203 = distinct !{!203, !204, !205}
!204 = !DILocation(line: 93, column: 5, scope: !138)
!205 = !DILocation(line: 104, column: 5, scope: !138)
!206 = !DILocation(line: 102, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 102, column: 9)
!208 = distinct !DILexicalBlock(scope: !201, file: !2, line: 101, column: 19)
!209 = !DILocation(line: 102, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 102, column: 9)
!211 = !DILocation(line: 105, column: 12, scope: !138)
!212 = !DILocation(line: 105, column: 54, scope: !138)
!213 = !DILocation(line: 105, column: 49, scope: !138)
!214 = !DILocation(line: 105, column: 40, scope: !138)
!215 = !DILocation(line: 105, column: 35, scope: !138)
!216 = !DILocation(line: 105, column: 29, scope: !138)
!217 = !DILocation(line: 105, column: 24, scope: !138)
!218 = !DILocation(line: 105, column: 17, scope: !138)
!219 = !DILocation(line: 106, column: 24, scope: !138)
!220 = !DILocation(line: 106, column: 31, scope: !138)
!221 = !DILocation(line: 106, column: 29, scope: !138)
!222 = !DILocation(line: 106, column: 17, scope: !138)
!223 = !DILocation(line: 107, column: 26, scope: !138)
!224 = !DILocation(line: 107, column: 24, scope: !138)
!225 = !DILocation(line: 107, column: 13, scope: !138)
!226 = !DILocation(line: 107, column: 17, scope: !138)
!227 = !DILocation(line: 108, column: 5, scope: !138)
!228 = !DILocation(line: 111, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 111, column: 5)
!230 = distinct !DILexicalBlock(scope: !139, file: !2, line: 110, column: 8)
!231 = !DILocation(line: 111, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 111, column: 5)
!233 = !DILocation(line: 0, scope: !140)
!234 = !DILocation(line: 113, column: 1, scope: !108)
!235 = !DISubprogram(name: "gsl_error", scope: !59, file: !59, line: 77, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !238, !60, !60}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!240 = !DISubprogram(name: "sqrt", scope: !241, file: !241, line: 143, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!242 = !DISubroutineType(types: !243)
!243 = !{!111, !111}
!244 = distinct !DISubprogram(name: "gsl_sf_ellint_RD_e", scope: !2, file: !2, line: 117, type: !245, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!60, !111, !111, !111, !112, !114}
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !286, !287, !288}
!248 = !DILocalVariable(name: "x", arg: 1, scope: !244, file: !2, line: 117, type: !111)
!249 = !DILocalVariable(name: "y", arg: 2, scope: !244, file: !2, line: 117, type: !111)
!250 = !DILocalVariable(name: "z", arg: 3, scope: !244, file: !2, line: 117, type: !111)
!251 = !DILocalVariable(name: "mode", arg: 4, scope: !244, file: !2, line: 117, type: !112)
!252 = !DILocalVariable(name: "result", arg: 5, scope: !244, file: !2, line: 117, type: !114)
!253 = !DILocalVariable(name: "goal", scope: !244, file: !2, line: 119, type: !130)
!254 = !DILocalVariable(name: "errtol", scope: !244, file: !2, line: 120, type: !127)
!255 = !DILocalVariable(name: "prec", scope: !244, file: !2, line: 121, type: !127)
!256 = !DILocalVariable(name: "lolim", scope: !244, file: !2, line: 122, type: !127)
!257 = !DILocalVariable(name: "uplim", scope: !244, file: !2, line: 123, type: !127)
!258 = !DILocalVariable(name: "nmax", scope: !244, file: !2, line: 124, type: !136)
!259 = !DILocalVariable(name: "c1", scope: !260, file: !2, line: 130, type: !127)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 129, column: 35)
!261 = distinct !DILexicalBlock(scope: !262, file: !2, line: 129, column: 11)
!262 = distinct !DILexicalBlock(scope: !244, file: !2, line: 126, column: 6)
!263 = !DILocalVariable(name: "c2", scope: !260, file: !2, line: 131, type: !127)
!264 = !DILocalVariable(name: "c3", scope: !260, file: !2, line: 132, type: !127)
!265 = !DILocalVariable(name: "c4", scope: !260, file: !2, line: 133, type: !127)
!266 = !DILocalVariable(name: "xn", scope: !260, file: !2, line: 134, type: !111)
!267 = !DILocalVariable(name: "yn", scope: !260, file: !2, line: 135, type: !111)
!268 = !DILocalVariable(name: "zn", scope: !260, file: !2, line: 136, type: !111)
!269 = !DILocalVariable(name: "sigma", scope: !260, file: !2, line: 137, type: !111)
!270 = !DILocalVariable(name: "power4", scope: !260, file: !2, line: 138, type: !111)
!271 = !DILocalVariable(name: "ea", scope: !260, file: !2, line: 139, type: !111)
!272 = !DILocalVariable(name: "eb", scope: !260, file: !2, line: 139, type: !111)
!273 = !DILocalVariable(name: "ec", scope: !260, file: !2, line: 139, type: !111)
!274 = !DILocalVariable(name: "ed", scope: !260, file: !2, line: 139, type: !111)
!275 = !DILocalVariable(name: "ef", scope: !260, file: !2, line: 139, type: !111)
!276 = !DILocalVariable(name: "s1", scope: !260, file: !2, line: 139, type: !111)
!277 = !DILocalVariable(name: "s2", scope: !260, file: !2, line: 139, type: !111)
!278 = !DILocalVariable(name: "mu", scope: !260, file: !2, line: 140, type: !111)
!279 = !DILocalVariable(name: "xndev", scope: !260, file: !2, line: 140, type: !111)
!280 = !DILocalVariable(name: "yndev", scope: !260, file: !2, line: 140, type: !111)
!281 = !DILocalVariable(name: "zndev", scope: !260, file: !2, line: 140, type: !111)
!282 = !DILocalVariable(name: "n", scope: !260, file: !2, line: 141, type: !60)
!283 = !DILocalVariable(name: "xnroot", scope: !284, file: !2, line: 143, type: !111)
!284 = distinct !DILexicalBlock(scope: !260, file: !2, line: 142, column: 14)
!285 = !DILocalVariable(name: "ynroot", scope: !284, file: !2, line: 143, type: !111)
!286 = !DILocalVariable(name: "znroot", scope: !284, file: !2, line: 143, type: !111)
!287 = !DILocalVariable(name: "lamda", scope: !284, file: !2, line: 143, type: !111)
!288 = !DILocalVariable(name: "epslon", scope: !284, file: !2, line: 144, type: !111)
!289 = !DILocation(line: 0, scope: !244)
!290 = !DILocation(line: 0, scope: !151, inlinedAt: !291)
!291 = distinct !DILocation(line: 119, column: 27, scope: !244)
!292 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !291)
!293 = !DILocation(line: 120, column: 32, scope: !244)
!294 = !DILocation(line: 120, column: 27, scope: !244)
!295 = !DILocation(line: 121, column: 25, scope: !244)
!296 = !DILocation(line: 123, column: 31, scope: !244)
!297 = !DILocation(line: 123, column: 38, scope: !244)
!298 = !DILocation(line: 123, column: 24, scope: !244)
!299 = !DILocation(line: 126, column: 6, scope: !262)
!300 = !DILocation(line: 126, column: 19, scope: !262)
!301 = !DILocation(line: 126, column: 25, scope: !262)
!302 = !DILocation(line: 126, column: 28, scope: !262)
!303 = !DILocation(line: 126, column: 43, scope: !262)
!304 = !DILocation(line: 126, column: 6, scope: !244)
!305 = !DILocation(line: 127, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 127, column: 5)
!307 = distinct !DILexicalBlock(scope: !262, file: !2, line: 126, column: 52)
!308 = !DILocation(line: 127, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !2, line: 127, column: 5)
!310 = !DILocalVariable(name: "x", arg: 1, scope: !311, file: !2, line: 33, type: !111)
!311 = distinct !DISubprogram(name: "locMAX3", scope: !2, file: !2, line: 33, type: !312, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!111, !111, !111, !111}
!314 = !{!310, !315, !316, !317}
!315 = !DILocalVariable(name: "y", arg: 2, scope: !311, file: !2, line: 33, type: !111)
!316 = !DILocalVariable(name: "z", arg: 3, scope: !311, file: !2, line: 33, type: !111)
!317 = !DILocalVariable(name: "xy", scope: !311, file: !2, line: 35, type: !111)
!318 = !DILocation(line: 0, scope: !311, inlinedAt: !319)
!319 = distinct !DILocation(line: 129, column: 11, scope: !261)
!320 = !DILocation(line: 35, column: 15, scope: !311, inlinedAt: !319)
!321 = !DILocation(line: 36, column: 10, scope: !311, inlinedAt: !319)
!322 = !DILocation(line: 129, column: 26, scope: !261)
!323 = !DILocation(line: 129, column: 11, scope: !262)
!324 = !DILocation(line: 138, column: 12, scope: !260)
!325 = !DILocation(line: 137, column: 12, scope: !260)
!326 = !DILocation(line: 141, column: 9, scope: !260)
!327 = !DILocation(line: 136, column: 12, scope: !260)
!328 = !DILocation(line: 135, column: 12, scope: !260)
!329 = !DILocation(line: 134, column: 12, scope: !260)
!330 = !DILocation(line: 0, scope: !260)
!331 = !DILocation(line: 145, column: 16, scope: !284)
!332 = !DILocation(line: 145, column: 27, scope: !284)
!333 = !DILocation(line: 145, column: 21, scope: !284)
!334 = !DILocation(line: 145, column: 33, scope: !284)
!335 = !DILocation(line: 146, column: 19, scope: !284)
!336 = !DILocation(line: 146, column: 25, scope: !284)
!337 = !DILocation(line: 147, column: 19, scope: !284)
!338 = !DILocation(line: 147, column: 25, scope: !284)
!339 = !DILocation(line: 148, column: 19, scope: !284)
!340 = !DILocation(line: 148, column: 25, scope: !284)
!341 = !DILocation(line: 149, column: 24, scope: !284)
!342 = !DILocation(line: 149, column: 37, scope: !284)
!343 = !DILocation(line: 149, column: 50, scope: !284)
!344 = !DILocation(line: 0, scope: !311, inlinedAt: !345)
!345 = distinct !DILocation(line: 149, column: 16, scope: !284)
!346 = !DILocation(line: 35, column: 15, scope: !311, inlinedAt: !345)
!347 = !DILocation(line: 36, column: 10, scope: !311, inlinedAt: !345)
!348 = !DILocation(line: 0, scope: !284)
!349 = !DILocation(line: 150, column: 18, scope: !350)
!350 = distinct !DILexicalBlock(scope: !284, file: !2, line: 150, column: 11)
!351 = !DILocation(line: 150, column: 11, scope: !284)
!352 = !DILocation(line: 151, column: 16, scope: !284)
!353 = !DILocation(line: 152, column: 16, scope: !284)
!354 = !DILocation(line: 153, column: 16, scope: !284)
!355 = !DILocation(line: 154, column: 32, scope: !284)
!356 = !DILocation(line: 154, column: 22, scope: !284)
!357 = !DILocation(line: 154, column: 51, scope: !284)
!358 = !DILocation(line: 154, column: 42, scope: !284)
!359 = !DILocation(line: 155, column: 40, scope: !284)
!360 = !DILocation(line: 155, column: 34, scope: !284)
!361 = !DILocation(line: 155, column: 24, scope: !284)
!362 = !DILocation(line: 155, column: 14, scope: !284)
!363 = !DILocation(line: 156, column: 14, scope: !284)
!364 = !DILocation(line: 157, column: 16, scope: !284)
!365 = !DILocation(line: 157, column: 25, scope: !284)
!366 = !DILocation(line: 158, column: 16, scope: !284)
!367 = !DILocation(line: 158, column: 25, scope: !284)
!368 = !DILocation(line: 159, column: 25, scope: !284)
!369 = !DILocation(line: 160, column: 8, scope: !284)
!370 = !DILocation(line: 161, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !284, file: !2, line: 161, column: 10)
!372 = !DILocation(line: 161, column: 10, scope: !284)
!373 = !DILocation(line: 162, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 162, column: 9)
!375 = distinct !DILexicalBlock(scope: !371, file: !2, line: 161, column: 19)
!376 = !DILocation(line: 162, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !2, line: 162, column: 9)
!378 = !DILocation(line: 165, column: 16, scope: !260)
!379 = !DILocation(line: 166, column: 16, scope: !260)
!380 = !DILocation(line: 167, column: 13, scope: !260)
!381 = !DILocation(line: 168, column: 19, scope: !260)
!382 = !DILocation(line: 168, column: 13, scope: !260)
!383 = !DILocation(line: 169, column: 13, scope: !260)
!384 = !DILocation(line: 169, column: 18, scope: !260)
!385 = !DILocation(line: 170, column: 33, scope: !260)
!386 = !DILocation(line: 170, column: 21, scope: !260)
!387 = !DILocation(line: 170, column: 49, scope: !260)
!388 = !DILocation(line: 170, column: 57, scope: !260)
!389 = !DILocation(line: 170, column: 38, scope: !260)
!390 = !DILocation(line: 170, column: 13, scope: !260)
!391 = !DILocation(line: 171, column: 22, scope: !260)
!392 = !DILocation(line: 171, column: 43, scope: !260)
!393 = !DILocation(line: 171, column: 56, scope: !260)
!394 = !DILocation(line: 171, column: 61, scope: !260)
!395 = !DILocation(line: 171, column: 48, scope: !260)
!396 = !DILocation(line: 171, column: 35, scope: !260)
!397 = !DILocation(line: 171, column: 27, scope: !260)
!398 = !DILocation(line: 171, column: 16, scope: !260)
!399 = !DILocation(line: 172, column: 23, scope: !260)
!400 = !DILocation(line: 172, column: 47, scope: !260)
!401 = !DILocation(line: 172, column: 52, scope: !260)
!402 = !DILocation(line: 172, column: 40, scope: !260)
!403 = !DILocation(line: 172, column: 66, scope: !260)
!404 = !DILocation(line: 172, column: 64, scope: !260)
!405 = !DILocation(line: 172, column: 58, scope: !260)
!406 = !DILocation(line: 172, column: 31, scope: !260)
!407 = !DILocation(line: 172, column: 17, scope: !260)
!408 = !DILocation(line: 173, column: 26, scope: !260)
!409 = !DILocation(line: 173, column: 24, scope: !260)
!410 = !DILocation(line: 173, column: 13, scope: !260)
!411 = !DILocation(line: 173, column: 17, scope: !260)
!412 = !DILocation(line: 174, column: 5, scope: !260)
!413 = !DILocation(line: 177, column: 5, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 177, column: 5)
!415 = distinct !DILexicalBlock(scope: !261, file: !2, line: 176, column: 8)
!416 = !DILocation(line: 177, column: 5, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !2, line: 177, column: 5)
!418 = !DILocation(line: 179, column: 1, scope: !244)
!419 = !DISubprogram(name: "pow", scope: !241, file: !241, line: 140, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{!111, !111, !111}
!422 = distinct !DISubprogram(name: "gsl_sf_ellint_RF_e", scope: !2, file: !2, line: 183, type: !245, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !455, !456, !457, !458}
!424 = !DILocalVariable(name: "x", arg: 1, scope: !422, file: !2, line: 183, type: !111)
!425 = !DILocalVariable(name: "y", arg: 2, scope: !422, file: !2, line: 183, type: !111)
!426 = !DILocalVariable(name: "z", arg: 3, scope: !422, file: !2, line: 183, type: !111)
!427 = !DILocalVariable(name: "mode", arg: 4, scope: !422, file: !2, line: 183, type: !112)
!428 = !DILocalVariable(name: "result", arg: 5, scope: !422, file: !2, line: 183, type: !114)
!429 = !DILocalVariable(name: "lolim", scope: !422, file: !2, line: 185, type: !127)
!430 = !DILocalVariable(name: "uplim", scope: !422, file: !2, line: 186, type: !127)
!431 = !DILocalVariable(name: "goal", scope: !422, file: !2, line: 187, type: !130)
!432 = !DILocalVariable(name: "errtol", scope: !422, file: !2, line: 188, type: !127)
!433 = !DILocalVariable(name: "prec", scope: !422, file: !2, line: 189, type: !127)
!434 = !DILocalVariable(name: "nmax", scope: !422, file: !2, line: 190, type: !136)
!435 = !DILocalVariable(name: "c1", scope: !436, file: !2, line: 199, type: !127)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 198, column: 35)
!437 = distinct !DILexicalBlock(scope: !438, file: !2, line: 198, column: 11)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 195, column: 11)
!439 = distinct !DILexicalBlock(scope: !422, file: !2, line: 192, column: 6)
!440 = !DILocalVariable(name: "c2", scope: !436, file: !2, line: 200, type: !127)
!441 = !DILocalVariable(name: "c3", scope: !436, file: !2, line: 201, type: !127)
!442 = !DILocalVariable(name: "xn", scope: !436, file: !2, line: 202, type: !111)
!443 = !DILocalVariable(name: "yn", scope: !436, file: !2, line: 203, type: !111)
!444 = !DILocalVariable(name: "zn", scope: !436, file: !2, line: 204, type: !111)
!445 = !DILocalVariable(name: "mu", scope: !436, file: !2, line: 205, type: !111)
!446 = !DILocalVariable(name: "xndev", scope: !436, file: !2, line: 205, type: !111)
!447 = !DILocalVariable(name: "yndev", scope: !436, file: !2, line: 205, type: !111)
!448 = !DILocalVariable(name: "zndev", scope: !436, file: !2, line: 205, type: !111)
!449 = !DILocalVariable(name: "e2", scope: !436, file: !2, line: 205, type: !111)
!450 = !DILocalVariable(name: "e3", scope: !436, file: !2, line: 205, type: !111)
!451 = !DILocalVariable(name: "s", scope: !436, file: !2, line: 205, type: !111)
!452 = !DILocalVariable(name: "n", scope: !436, file: !2, line: 206, type: !60)
!453 = !DILocalVariable(name: "epslon", scope: !454, file: !2, line: 208, type: !111)
!454 = distinct !DILexicalBlock(scope: !436, file: !2, line: 207, column: 14)
!455 = !DILocalVariable(name: "lamda", scope: !454, file: !2, line: 208, type: !111)
!456 = !DILocalVariable(name: "xnroot", scope: !454, file: !2, line: 209, type: !111)
!457 = !DILocalVariable(name: "ynroot", scope: !454, file: !2, line: 209, type: !111)
!458 = !DILocalVariable(name: "znroot", scope: !454, file: !2, line: 209, type: !111)
!459 = !DILocation(line: 0, scope: !422)
!460 = !DILocation(line: 0, scope: !151, inlinedAt: !461)
!461 = distinct !DILocation(line: 187, column: 27, scope: !422)
!462 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !461)
!463 = !DILocation(line: 188, column: 32, scope: !422)
!464 = !DILocation(line: 188, column: 27, scope: !422)
!465 = !DILocation(line: 189, column: 25, scope: !422)
!466 = !DILocation(line: 192, column: 8, scope: !439)
!467 = !DILocation(line: 192, column: 14, scope: !439)
!468 = !DILocation(line: 193, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !2, line: 193, column: 5)
!470 = distinct !DILexicalBlock(scope: !439, file: !2, line: 192, column: 37)
!471 = !DILocation(line: 193, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !2, line: 193, column: 5)
!473 = !DILocation(line: 195, column: 12, scope: !438)
!474 = !DILocation(line: 195, column: 15, scope: !438)
!475 = !DILocation(line: 195, column: 23, scope: !438)
!476 = !DILocation(line: 196, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 196, column: 5)
!478 = distinct !DILexicalBlock(scope: !438, file: !2, line: 195, column: 54)
!479 = !DILocation(line: 196, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !2, line: 196, column: 5)
!481 = !DILocation(line: 0, scope: !311, inlinedAt: !482)
!482 = distinct !DILocation(line: 198, column: 11, scope: !437)
!483 = !DILocation(line: 35, column: 15, scope: !311, inlinedAt: !482)
!484 = !DILocation(line: 36, column: 10, scope: !311, inlinedAt: !482)
!485 = !DILocation(line: 198, column: 26, scope: !437)
!486 = !DILocation(line: 198, column: 11, scope: !438)
!487 = !DILocation(line: 206, column: 9, scope: !436)
!488 = !DILocation(line: 204, column: 12, scope: !436)
!489 = !DILocation(line: 203, column: 12, scope: !436)
!490 = !DILocation(line: 202, column: 12, scope: !436)
!491 = !DILocation(line: 0, scope: !436)
!492 = !DILocation(line: 210, column: 16, scope: !454)
!493 = !DILocation(line: 210, column: 21, scope: !454)
!494 = !DILocation(line: 210, column: 27, scope: !454)
!495 = !DILocation(line: 211, column: 25, scope: !454)
!496 = !DILocation(line: 211, column: 31, scope: !454)
!497 = !DILocation(line: 211, column: 19, scope: !454)
!498 = !DILocation(line: 212, column: 25, scope: !454)
!499 = !DILocation(line: 212, column: 31, scope: !454)
!500 = !DILocation(line: 212, column: 19, scope: !454)
!501 = !DILocation(line: 213, column: 25, scope: !454)
!502 = !DILocation(line: 213, column: 31, scope: !454)
!503 = !DILocation(line: 213, column: 19, scope: !454)
!504 = !DILocation(line: 214, column: 24, scope: !454)
!505 = !DILocation(line: 214, column: 37, scope: !454)
!506 = !DILocation(line: 214, column: 50, scope: !454)
!507 = !DILocation(line: 0, scope: !311, inlinedAt: !508)
!508 = distinct !DILocation(line: 214, column: 16, scope: !454)
!509 = !DILocation(line: 35, column: 15, scope: !311, inlinedAt: !508)
!510 = !DILocation(line: 36, column: 10, scope: !311, inlinedAt: !508)
!511 = !DILocation(line: 0, scope: !454)
!512 = !DILocation(line: 215, column: 18, scope: !513)
!513 = distinct !DILexicalBlock(scope: !454, file: !2, line: 215, column: 11)
!514 = !DILocation(line: 215, column: 11, scope: !454)
!515 = !DILocation(line: 216, column: 16, scope: !454)
!516 = !DILocation(line: 217, column: 16, scope: !454)
!517 = !DILocation(line: 218, column: 16, scope: !454)
!518 = !DILocation(line: 219, column: 32, scope: !454)
!519 = !DILocation(line: 219, column: 22, scope: !454)
!520 = !DILocation(line: 219, column: 51, scope: !454)
!521 = !DILocation(line: 219, column: 42, scope: !454)
!522 = !DILocation(line: 220, column: 16, scope: !454)
!523 = !DILocation(line: 220, column: 25, scope: !454)
!524 = !DILocation(line: 221, column: 16, scope: !454)
!525 = !DILocation(line: 221, column: 25, scope: !454)
!526 = !DILocation(line: 222, column: 16, scope: !454)
!527 = !DILocation(line: 222, column: 25, scope: !454)
!528 = !DILocation(line: 223, column: 8, scope: !454)
!529 = !DILocation(line: 224, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !454, file: !2, line: 224, column: 10)
!531 = !DILocation(line: 224, column: 10, scope: !454)
!532 = !DILocation(line: 225, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 225, column: 9)
!534 = distinct !DILexicalBlock(scope: !530, file: !2, line: 224, column: 19)
!535 = !DILocation(line: 225, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !2, line: 225, column: 9)
!537 = !DILocation(line: 228, column: 16, scope: !436)
!538 = !DILocation(line: 228, column: 32, scope: !436)
!539 = !DILocation(line: 228, column: 24, scope: !436)
!540 = !DILocation(line: 229, column: 24, scope: !436)
!541 = !DILocation(line: 230, column: 19, scope: !436)
!542 = !DILocation(line: 230, column: 24, scope: !436)
!543 = !DILocation(line: 230, column: 35, scope: !436)
!544 = !DILocation(line: 230, column: 30, scope: !436)
!545 = !DILocation(line: 230, column: 41, scope: !436)
!546 = !DILocation(line: 230, column: 13, scope: !436)
!547 = !DILocation(line: 230, column: 51, scope: !436)
!548 = !DILocation(line: 230, column: 46, scope: !436)
!549 = !DILocation(line: 231, column: 23, scope: !436)
!550 = !DILocation(line: 231, column: 21, scope: !436)
!551 = !DILocation(line: 231, column: 17, scope: !436)
!552 = !DILocation(line: 232, column: 26, scope: !436)
!553 = !DILocation(line: 232, column: 24, scope: !436)
!554 = !DILocation(line: 232, column: 13, scope: !436)
!555 = !DILocation(line: 232, column: 17, scope: !436)
!556 = !DILocation(line: 233, column: 5, scope: !436)
!557 = !DILocation(line: 236, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 236, column: 5)
!559 = distinct !DILexicalBlock(scope: !437, file: !2, line: 235, column: 8)
!560 = !DILocation(line: 236, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !2, line: 236, column: 5)
!562 = !DILocation(line: 238, column: 1, scope: !422)
!563 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ_e", scope: !2, file: !2, line: 242, type: !564, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!60, !111, !111, !111, !111, !112, !114}
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !609, !610, !611, !612, !613, !614, !615, !616}
!567 = !DILocalVariable(name: "x", arg: 1, scope: !563, file: !2, line: 242, type: !111)
!568 = !DILocalVariable(name: "y", arg: 2, scope: !563, file: !2, line: 242, type: !111)
!569 = !DILocalVariable(name: "z", arg: 3, scope: !563, file: !2, line: 242, type: !111)
!570 = !DILocalVariable(name: "p", arg: 4, scope: !563, file: !2, line: 242, type: !111)
!571 = !DILocalVariable(name: "mode", arg: 5, scope: !563, file: !2, line: 242, type: !112)
!572 = !DILocalVariable(name: "result", arg: 6, scope: !563, file: !2, line: 242, type: !114)
!573 = !DILocalVariable(name: "goal", scope: !563, file: !2, line: 244, type: !130)
!574 = !DILocalVariable(name: "errtol", scope: !563, file: !2, line: 245, type: !127)
!575 = !DILocalVariable(name: "prec", scope: !563, file: !2, line: 246, type: !127)
!576 = !DILocalVariable(name: "lolim", scope: !563, file: !2, line: 247, type: !127)
!577 = !DILocalVariable(name: "uplim", scope: !563, file: !2, line: 248, type: !127)
!578 = !DILocalVariable(name: "nmax", scope: !563, file: !2, line: 249, type: !136)
!579 = !DILocalVariable(name: "c1", scope: !580, file: !2, line: 258, type: !127)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 257, column: 37)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 257, column: 11)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 254, column: 11)
!583 = distinct !DILexicalBlock(scope: !563, file: !2, line: 251, column: 6)
!584 = !DILocalVariable(name: "c2", scope: !580, file: !2, line: 259, type: !127)
!585 = !DILocalVariable(name: "c3", scope: !580, file: !2, line: 260, type: !127)
!586 = !DILocalVariable(name: "c4", scope: !580, file: !2, line: 261, type: !127)
!587 = !DILocalVariable(name: "xn", scope: !580, file: !2, line: 262, type: !111)
!588 = !DILocalVariable(name: "yn", scope: !580, file: !2, line: 263, type: !111)
!589 = !DILocalVariable(name: "zn", scope: !580, file: !2, line: 264, type: !111)
!590 = !DILocalVariable(name: "pn", scope: !580, file: !2, line: 265, type: !111)
!591 = !DILocalVariable(name: "sigma", scope: !580, file: !2, line: 266, type: !111)
!592 = !DILocalVariable(name: "power4", scope: !580, file: !2, line: 267, type: !111)
!593 = !DILocalVariable(name: "mu", scope: !580, file: !2, line: 268, type: !111)
!594 = !DILocalVariable(name: "xndev", scope: !580, file: !2, line: 268, type: !111)
!595 = !DILocalVariable(name: "yndev", scope: !580, file: !2, line: 268, type: !111)
!596 = !DILocalVariable(name: "zndev", scope: !580, file: !2, line: 268, type: !111)
!597 = !DILocalVariable(name: "pndev", scope: !580, file: !2, line: 268, type: !111)
!598 = !DILocalVariable(name: "ea", scope: !580, file: !2, line: 269, type: !111)
!599 = !DILocalVariable(name: "eb", scope: !580, file: !2, line: 269, type: !111)
!600 = !DILocalVariable(name: "ec", scope: !580, file: !2, line: 269, type: !111)
!601 = !DILocalVariable(name: "e2", scope: !580, file: !2, line: 269, type: !111)
!602 = !DILocalVariable(name: "e3", scope: !580, file: !2, line: 269, type: !111)
!603 = !DILocalVariable(name: "s1", scope: !580, file: !2, line: 269, type: !111)
!604 = !DILocalVariable(name: "s2", scope: !580, file: !2, line: 269, type: !111)
!605 = !DILocalVariable(name: "s3", scope: !580, file: !2, line: 269, type: !111)
!606 = !DILocalVariable(name: "n", scope: !580, file: !2, line: 270, type: !60)
!607 = !DILocalVariable(name: "xnroot", scope: !608, file: !2, line: 272, type: !111)
!608 = distinct !DILexicalBlock(scope: !580, file: !2, line: 271, column: 14)
!609 = !DILocalVariable(name: "ynroot", scope: !608, file: !2, line: 272, type: !111)
!610 = !DILocalVariable(name: "znroot", scope: !608, file: !2, line: 272, type: !111)
!611 = !DILocalVariable(name: "lamda", scope: !608, file: !2, line: 273, type: !111)
!612 = !DILocalVariable(name: "alfa", scope: !608, file: !2, line: 273, type: !111)
!613 = !DILocalVariable(name: "beta", scope: !608, file: !2, line: 273, type: !111)
!614 = !DILocalVariable(name: "epslon", scope: !608, file: !2, line: 274, type: !111)
!615 = !DILocalVariable(name: "rcresult", scope: !608, file: !2, line: 275, type: !115)
!616 = !DILocalVariable(name: "rcstatus", scope: !608, file: !2, line: 276, type: !60)
!617 = distinct !DIAssignID()
!618 = !DILocation(line: 0, scope: !608)
!619 = !DILocation(line: 0, scope: !563)
!620 = !DILocation(line: 0, scope: !151, inlinedAt: !621)
!621 = distinct !DILocation(line: 244, column: 27, scope: !563)
!622 = !DILocation(line: 75, column: 15, scope: !151, inlinedAt: !621)
!623 = !DILocation(line: 245, column: 32, scope: !563)
!624 = !DILocation(line: 245, column: 27, scope: !563)
!625 = !DILocation(line: 246, column: 25, scope: !563)
!626 = !DILocation(line: 251, column: 8, scope: !583)
!627 = !DILocation(line: 251, column: 14, scope: !583)
!628 = !DILocation(line: 252, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 252, column: 5)
!630 = distinct !DILexicalBlock(scope: !583, file: !2, line: 251, column: 37)
!631 = !DILocation(line: 252, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !2, line: 252, column: 5)
!633 = !DILocation(line: 254, column: 13, scope: !582)
!634 = !DILocation(line: 254, column: 17, scope: !582)
!635 = !DILocation(line: 254, column: 25, scope: !582)
!636 = !DILocation(line: 255, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !2, line: 255, column: 5)
!638 = distinct !DILexicalBlock(scope: !582, file: !2, line: 254, column: 73)
!639 = !DILocation(line: 255, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !2, line: 255, column: 5)
!641 = !DILocalVariable(name: "x", arg: 1, scope: !642, file: !2, line: 40, type: !111)
!642 = distinct !DISubprogram(name: "locMAX4", scope: !2, file: !2, line: 40, type: !643, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!111, !111, !111, !111, !111}
!645 = !{!641, !646, !647, !648, !649, !650}
!646 = !DILocalVariable(name: "y", arg: 2, scope: !642, file: !2, line: 40, type: !111)
!647 = !DILocalVariable(name: "z", arg: 3, scope: !642, file: !2, line: 40, type: !111)
!648 = !DILocalVariable(name: "w", arg: 4, scope: !642, file: !2, line: 40, type: !111)
!649 = !DILocalVariable(name: "xy", scope: !642, file: !2, line: 42, type: !111)
!650 = !DILocalVariable(name: "xyz", scope: !642, file: !2, line: 43, type: !111)
!651 = !DILocation(line: 0, scope: !642, inlinedAt: !652)
!652 = distinct !DILocation(line: 257, column: 11, scope: !581)
!653 = !DILocation(line: 42, column: 16, scope: !642, inlinedAt: !652)
!654 = !DILocation(line: 43, column: 16, scope: !642, inlinedAt: !652)
!655 = !DILocation(line: 44, column: 10, scope: !642, inlinedAt: !652)
!656 = !DILocation(line: 257, column: 28, scope: !581)
!657 = !DILocation(line: 257, column: 11, scope: !582)
!658 = !DILocation(line: 270, column: 9, scope: !580)
!659 = !DILocation(line: 267, column: 12, scope: !580)
!660 = !DILocation(line: 266, column: 12, scope: !580)
!661 = !DILocation(line: 265, column: 12, scope: !580)
!662 = !DILocation(line: 264, column: 12, scope: !580)
!663 = !DILocation(line: 263, column: 12, scope: !580)
!664 = !DILocation(line: 262, column: 12, scope: !580)
!665 = !DILocation(line: 0, scope: !580)
!666 = !DILocation(line: 275, column: 7, scope: !608)
!667 = !DILocation(line: 277, column: 16, scope: !608)
!668 = !DILocation(line: 277, column: 21, scope: !608)
!669 = !DILocation(line: 277, column: 26, scope: !608)
!670 = !DILocation(line: 277, column: 31, scope: !608)
!671 = !DILocation(line: 277, column: 37, scope: !608)
!672 = !DILocation(line: 278, column: 19, scope: !608)
!673 = !DILocation(line: 278, column: 25, scope: !608)
!674 = !DILocation(line: 279, column: 19, scope: !608)
!675 = !DILocation(line: 279, column: 25, scope: !608)
!676 = !DILocation(line: 280, column: 19, scope: !608)
!677 = !DILocation(line: 280, column: 25, scope: !608)
!678 = !DILocation(line: 281, column: 19, scope: !608)
!679 = !DILocation(line: 281, column: 25, scope: !608)
!680 = !DILocation(line: 282, column: 24, scope: !608)
!681 = !DILocation(line: 282, column: 37, scope: !608)
!682 = !DILocation(line: 282, column: 50, scope: !608)
!683 = !DILocation(line: 282, column: 63, scope: !608)
!684 = !DILocation(line: 0, scope: !642, inlinedAt: !685)
!685 = distinct !DILocation(line: 282, column: 16, scope: !608)
!686 = !DILocation(line: 42, column: 16, scope: !642, inlinedAt: !685)
!687 = !DILocation(line: 43, column: 16, scope: !642, inlinedAt: !685)
!688 = !DILocation(line: 44, column: 10, scope: !642, inlinedAt: !685)
!689 = !DILocation(line: 283, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !608, file: !2, line: 283, column: 10)
!691 = !DILocation(line: 283, column: 10, scope: !608)
!692 = !DILocation(line: 284, column: 16, scope: !608)
!693 = !DILocation(line: 285, column: 16, scope: !608)
!694 = !DILocation(line: 286, column: 16, scope: !608)
!695 = !DILocation(line: 287, column: 32, scope: !608)
!696 = !DILocation(line: 287, column: 22, scope: !608)
!697 = !DILocation(line: 287, column: 51, scope: !608)
!698 = !DILocation(line: 287, column: 42, scope: !608)
!699 = !DILocation(line: 288, column: 27, scope: !608)
!700 = !DILocation(line: 288, column: 36, scope: !608)
!701 = !DILocation(line: 288, column: 17, scope: !608)
!702 = !DILocation(line: 288, column: 55, scope: !608)
!703 = !DILocation(line: 288, column: 64, scope: !608)
!704 = !DILocation(line: 288, column: 46, scope: !608)
!705 = !DILocation(line: 289, column: 19, scope: !608)
!706 = !DILocation(line: 290, column: 23, scope: !608)
!707 = !DILocation(line: 290, column: 17, scope: !608)
!708 = !DILocation(line: 290, column: 32, scope: !608)
!709 = !DILocation(line: 291, column: 18, scope: !608)
!710 = !{i32 0, i32 12}
!711 = !DILocation(line: 292, column: 19, scope: !712)
!712 = distinct !DILexicalBlock(scope: !608, file: !2, line: 292, column: 10)
!713 = !DILocation(line: 292, column: 10, scope: !608)
!714 = !DILocation(line: 294, column: 21, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !2, line: 292, column: 35)
!716 = !DILocation(line: 295, column: 9, scope: !715)
!717 = !DILocation(line: 303, column: 8, scope: !608)
!718 = !DILocation(line: 304, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !608, file: !2, line: 304, column: 10)
!720 = !DILocation(line: 304, column: 10, scope: !608)
!721 = !DILocation(line: 305, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 305, column: 9)
!723 = distinct !DILexicalBlock(scope: !719, file: !2, line: 304, column: 19)
!724 = !DILocation(line: 305, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !2, line: 305, column: 9)
!726 = !DILocation(line: 307, column: 5, scope: !580)
!727 = !DILocation(line: 302, column: 25, scope: !608)
!728 = !DILocation(line: 301, column: 16, scope: !608)
!729 = !DILocation(line: 301, column: 25, scope: !608)
!730 = !DILocation(line: 300, column: 16, scope: !608)
!731 = !DILocation(line: 300, column: 25, scope: !608)
!732 = !DILocation(line: 299, column: 16, scope: !608)
!733 = !DILocation(line: 299, column: 25, scope: !608)
!734 = !DILocation(line: 298, column: 14, scope: !608)
!735 = !DILocation(line: 297, column: 35, scope: !608)
!736 = !DILocation(line: 297, column: 24, scope: !608)
!737 = !DILocation(line: 297, column: 14, scope: !608)
!738 = !DILocation(line: 309, column: 25, scope: !580)
!739 = !DILocation(line: 309, column: 16, scope: !580)
!740 = !DILocation(line: 309, column: 42, scope: !580)
!741 = !DILocation(line: 309, column: 34, scope: !580)
!742 = !DILocation(line: 310, column: 16, scope: !580)
!743 = !DILocation(line: 310, column: 24, scope: !580)
!744 = !DILocation(line: 311, column: 16, scope: !580)
!745 = !DILocation(line: 312, column: 19, scope: !580)
!746 = !DILocation(line: 312, column: 13, scope: !580)
!747 = !DILocation(line: 313, column: 19, scope: !580)
!748 = !DILocation(line: 313, column: 33, scope: !580)
!749 = !DILocation(line: 313, column: 27, scope: !580)
!750 = !DILocation(line: 313, column: 13, scope: !580)
!751 = !DILocation(line: 314, column: 39, scope: !580)
!752 = !DILocation(line: 314, column: 27, scope: !580)
!753 = !DILocation(line: 314, column: 55, scope: !580)
!754 = !DILocation(line: 314, column: 44, scope: !580)
!755 = !DILocation(line: 314, column: 19, scope: !580)
!756 = !DILocation(line: 314, column: 14, scope: !580)
!757 = !DILocation(line: 315, column: 54, scope: !580)
!758 = !DILocation(line: 315, column: 46, scope: !580)
!759 = !DILocation(line: 315, column: 33, scope: !580)
!760 = !DILocation(line: 315, column: 25, scope: !580)
!761 = !DILocation(line: 315, column: 13, scope: !580)
!762 = !DILocation(line: 316, column: 16, scope: !580)
!763 = !DILocation(line: 316, column: 35, scope: !580)
!764 = !DILocation(line: 316, column: 27, scope: !580)
!765 = !DILocation(line: 316, column: 21, scope: !580)
!766 = !DILocation(line: 316, column: 46, scope: !580)
!767 = !DILocation(line: 316, column: 54, scope: !580)
!768 = !DILocation(line: 316, column: 41, scope: !580)
!769 = !DILocation(line: 317, column: 23, scope: !580)
!770 = !DILocation(line: 317, column: 46, scope: !580)
!771 = !DILocation(line: 317, column: 51, scope: !580)
!772 = !DILocation(line: 317, column: 40, scope: !580)
!773 = !DILocation(line: 317, column: 65, scope: !580)
!774 = !DILocation(line: 317, column: 63, scope: !580)
!775 = !DILocation(line: 317, column: 57, scope: !580)
!776 = !DILocation(line: 317, column: 31, scope: !580)
!777 = !DILocation(line: 317, column: 17, scope: !580)
!778 = !DILocation(line: 318, column: 26, scope: !580)
!779 = !DILocation(line: 318, column: 24, scope: !580)
!780 = !DILocation(line: 318, column: 13, scope: !580)
!781 = !DILocation(line: 318, column: 17, scope: !580)
!782 = !DILocation(line: 319, column: 5, scope: !580)
!783 = !DILocation(line: 322, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 322, column: 5)
!785 = distinct !DILexicalBlock(scope: !581, file: !2, line: 321, column: 8)
!786 = !DILocation(line: 322, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !2, line: 322, column: 5)
!788 = !DILocation(line: 324, column: 1, scope: !563)
!789 = distinct !DISubprogram(name: "gsl_sf_ellint_F_e", scope: !2, file: !2, line: 329, type: !109, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !799, !800, !801, !802, !803, !804, !807}
!791 = !DILocalVariable(name: "phi", arg: 1, scope: !789, file: !2, line: 329, type: !111)
!792 = !DILocalVariable(name: "k", arg: 2, scope: !789, file: !2, line: 329, type: !111)
!793 = !DILocalVariable(name: "mode", arg: 3, scope: !789, file: !2, line: 329, type: !112)
!794 = !DILocalVariable(name: "result", arg: 4, scope: !789, file: !2, line: 329, type: !114)
!795 = !DILocalVariable(name: "nc", scope: !789, file: !2, line: 334, type: !111)
!796 = !DILocalVariable(name: "phi_red", scope: !789, file: !2, line: 335, type: !111)
!797 = !DILocalVariable(name: "sin_phi", scope: !798, file: !2, line: 339, type: !111)
!798 = distinct !DILexicalBlock(scope: !789, file: !2, line: 338, column: 3)
!799 = !DILocalVariable(name: "sin2_phi", scope: !798, file: !2, line: 340, type: !111)
!800 = !DILocalVariable(name: "x", scope: !798, file: !2, line: 341, type: !111)
!801 = !DILocalVariable(name: "y", scope: !798, file: !2, line: 342, type: !111)
!802 = !DILocalVariable(name: "rf", scope: !798, file: !2, line: 343, type: !115)
!803 = !DILocalVariable(name: "status", scope: !798, file: !2, line: 344, type: !60)
!804 = !DILocalVariable(name: "rk", scope: !805, file: !2, line: 350, type: !115)
!805 = distinct !DILexicalBlock(scope: !806, file: !2, line: 349, column: 12)
!806 = distinct !DILexicalBlock(scope: !798, file: !2, line: 347, column: 9)
!807 = !DILocalVariable(name: "rkstatus", scope: !805, file: !2, line: 351, type: !136)
!808 = distinct !DIAssignID()
!809 = !DILocation(line: 0, scope: !798)
!810 = distinct !DIAssignID()
!811 = !DILocation(line: 0, scope: !805)
!812 = !DILocation(line: 0, scope: !789)
!813 = !DILocation(line: 334, column: 24, scope: !789)
!814 = !DILocation(line: 334, column: 30, scope: !789)
!815 = !DILocation(line: 334, column: 15, scope: !789)
!816 = !DILocation(line: 335, column: 29, scope: !789)
!817 = !DILocation(line: 335, column: 24, scope: !789)
!818 = !DILocation(line: 339, column: 23, scope: !798)
!819 = !DILocation(line: 340, column: 30, scope: !798)
!820 = !DILocation(line: 341, column: 20, scope: !798)
!821 = !DILocation(line: 342, column: 23, scope: !798)
!822 = !DILocation(line: 342, column: 25, scope: !798)
!823 = !DILocation(line: 342, column: 20, scope: !798)
!824 = !DILocation(line: 343, column: 5, scope: !798)
!825 = !DILocation(line: 344, column: 18, scope: !798)
!826 = !DILocation(line: 345, column: 32, scope: !798)
!827 = !DILocation(line: 345, column: 27, scope: !798)
!828 = !DILocation(line: 345, column: 17, scope: !798)
!829 = !DILocation(line: 346, column: 37, scope: !798)
!830 = !DILocation(line: 346, column: 35, scope: !798)
!831 = !DILocation(line: 346, column: 73, scope: !798)
!832 = !DILocation(line: 346, column: 69, scope: !798)
!833 = !DILocation(line: 346, column: 57, scope: !798)
!834 = !DILocation(line: 346, column: 55, scope: !798)
!835 = !DILocation(line: 346, column: 13, scope: !798)
!836 = !DILocation(line: 346, column: 17, scope: !798)
!837 = !DILocation(line: 347, column: 12, scope: !806)
!838 = !DILocation(line: 347, column: 9, scope: !798)
!839 = !DILocation(line: 350, column: 7, scope: !805)
!840 = !DILocation(line: 351, column: 28, scope: !805)
!841 = !DILocation(line: 352, column: 23, scope: !805)
!842 = !DILocation(line: 352, column: 30, scope: !805)
!843 = !DILocation(line: 352, column: 26, scope: !805)
!844 = !DILocation(line: 352, column: 19, scope: !805)
!845 = !DILocation(line: 353, column: 24, scope: !805)
!846 = !DILocation(line: 353, column: 23, scope: !805)
!847 = !DILocation(line: 353, column: 36, scope: !805)
!848 = !DILocation(line: 353, column: 32, scope: !805)
!849 = !DILocation(line: 353, column: 19, scope: !805)
!850 = !DILocation(line: 354, column: 14, scope: !805)
!851 = !DILocation(line: 355, column: 5, scope: !806)
!852 = !DILocation(line: 0, scope: !806)
!853 = !DILocation(line: 356, column: 3, scope: !789)
!854 = !DILocation(line: 357, column: 1, scope: !789)
!855 = !DISubprogram(name: "sin", scope: !241, file: !241, line: 64, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp_e", scope: !2, file: !2, line: 502, type: !857, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!60, !111, !112, !114}
!859 = !{!860, !861, !862, !863, !867, !871, !872, !873, !874, !876}
!860 = !DILocalVariable(name: "k", arg: 1, scope: !856, file: !2, line: 502, type: !111)
!861 = !DILocalVariable(name: "mode", arg: 2, scope: !856, file: !2, line: 502, type: !112)
!862 = !DILocalVariable(name: "result", arg: 3, scope: !856, file: !2, line: 502, type: !114)
!863 = !DILocalVariable(name: "y", scope: !864, file: !2, line: 509, type: !127)
!864 = distinct !DILexicalBlock(scope: !865, file: !2, line: 507, column: 46)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 507, column: 11)
!866 = distinct !DILexicalBlock(scope: !856, file: !2, line: 504, column: 6)
!867 = !DILocalVariable(name: "a", scope: !864, file: !2, line: 510, type: !868)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 192, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 3)
!871 = !DILocalVariable(name: "b", scope: !864, file: !2, line: 511, type: !868)
!872 = !DILocalVariable(name: "ta", scope: !864, file: !2, line: 512, type: !127)
!873 = !DILocalVariable(name: "tb", scope: !864, file: !2, line: 513, type: !127)
!874 = !DILocalVariable(name: "y", scope: !875, file: !2, line: 529, type: !111)
!875 = distinct !DILexicalBlock(scope: !865, file: !2, line: 518, column: 8)
!876 = !DILocalVariable(name: "status", scope: !875, file: !2, line: 530, type: !60)
!877 = !DILocation(line: 0, scope: !856)
!878 = !DILocation(line: 504, column: 7, scope: !866)
!879 = !DILocation(line: 504, column: 10, scope: !866)
!880 = !DILocation(line: 504, column: 6, scope: !856)
!881 = !DILocation(line: 505, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 505, column: 5)
!883 = distinct !DILexicalBlock(scope: !866, file: !2, line: 504, column: 18)
!884 = !DILocation(line: 505, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 505, column: 5)
!886 = !DILocation(line: 507, column: 15, scope: !865)
!887 = !DILocation(line: 0, scope: !865)
!888 = !DILocation(line: 507, column: 11, scope: !866)
!889 = !DILocation(line: 0, scope: !864)
!890 = !DILocation(line: 512, column: 41, scope: !864)
!891 = !DILocation(line: 512, column: 38, scope: !864)
!892 = !DILocation(line: 512, column: 31, scope: !864)
!893 = !DILocation(line: 512, column: 28, scope: !864)
!894 = !DILocation(line: 513, column: 24, scope: !864)
!895 = !DILocation(line: 513, column: 52, scope: !864)
!896 = !DILocation(line: 513, column: 49, scope: !864)
!897 = !DILocation(line: 513, column: 42, scope: !864)
!898 = !DILocation(line: 513, column: 39, scope: !864)
!899 = !DILocation(line: 514, column: 22, scope: !864)
!900 = !DILocation(line: 514, column: 17, scope: !864)
!901 = !DILocation(line: 515, column: 44, scope: !864)
!902 = !DILocation(line: 515, column: 70, scope: !864)
!903 = !DILocation(line: 515, column: 64, scope: !864)
!904 = !DILocation(line: 515, column: 62, scope: !864)
!905 = !DILocation(line: 515, column: 41, scope: !864)
!906 = !DILocation(line: 515, column: 13, scope: !864)
!907 = !DILocation(line: 515, column: 17, scope: !864)
!908 = !DILocation(line: 0, scope: !875)
!909 = !DILocation(line: 530, column: 18, scope: !875)
!910 = !DILocation(line: 531, column: 42, scope: !875)
!911 = !DILocation(line: 531, column: 13, scope: !875)
!912 = !DILocation(line: 531, column: 17, scope: !875)
!913 = !DILocation(line: 0, scope: !866)
!914 = !DILocation(line: 534, column: 1, scope: !856)
!915 = distinct !DISubprogram(name: "gsl_sf_ellint_E_e", scope: !2, file: !2, line: 362, type: !109, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !925, !926, !927, !928, !931, !932, !934, !935, !936, !937, !938, !941}
!917 = !DILocalVariable(name: "phi", arg: 1, scope: !915, file: !2, line: 362, type: !111)
!918 = !DILocalVariable(name: "k", arg: 2, scope: !915, file: !2, line: 362, type: !111)
!919 = !DILocalVariable(name: "mode", arg: 3, scope: !915, file: !2, line: 362, type: !112)
!920 = !DILocalVariable(name: "result", arg: 4, scope: !915, file: !2, line: 362, type: !114)
!921 = !DILocalVariable(name: "nc", scope: !915, file: !2, line: 367, type: !111)
!922 = !DILocalVariable(name: "phi_red", scope: !915, file: !2, line: 368, type: !111)
!923 = !DILocalVariable(name: "sin_phi", scope: !924, file: !2, line: 372, type: !127)
!924 = distinct !DILexicalBlock(scope: !915, file: !2, line: 371, column: 3)
!925 = !DILocalVariable(name: "sin2_phi", scope: !924, file: !2, line: 373, type: !127)
!926 = !DILocalVariable(name: "x", scope: !924, file: !2, line: 374, type: !127)
!927 = !DILocalVariable(name: "y", scope: !924, file: !2, line: 375, type: !127)
!928 = !DILocalVariable(name: "re", scope: !929, file: !2, line: 378, type: !115)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 377, column: 29)
!930 = distinct !DILexicalBlock(scope: !924, file: !2, line: 377, column: 8)
!931 = !DILocalVariable(name: "status", scope: !929, file: !2, line: 379, type: !136)
!932 = !DILocalVariable(name: "rf", scope: !933, file: !2, line: 386, type: !115)
!933 = distinct !DILexicalBlock(scope: !930, file: !2, line: 385, column: 10)
!934 = !DILocalVariable(name: "rd", scope: !933, file: !2, line: 386, type: !115)
!935 = !DILocalVariable(name: "sin3_phi", scope: !933, file: !2, line: 387, type: !127)
!936 = !DILocalVariable(name: "rfstatus", scope: !933, file: !2, line: 388, type: !136)
!937 = !DILocalVariable(name: "rdstatus", scope: !933, file: !2, line: 389, type: !136)
!938 = !DILocalVariable(name: "re", scope: !939, file: !2, line: 398, type: !115)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 397, column: 14)
!940 = distinct !DILexicalBlock(scope: !933, file: !2, line: 395, column: 11)
!941 = !DILocalVariable(name: "restatus", scope: !939, file: !2, line: 399, type: !136)
!942 = distinct !DIAssignID()
!943 = !DILocation(line: 0, scope: !929)
!944 = distinct !DIAssignID()
!945 = !DILocation(line: 0, scope: !933)
!946 = distinct !DIAssignID()
!947 = distinct !DIAssignID()
!948 = !DILocation(line: 0, scope: !939)
!949 = !DILocation(line: 0, scope: !915)
!950 = !DILocation(line: 367, column: 24, scope: !915)
!951 = !DILocation(line: 367, column: 30, scope: !915)
!952 = !DILocation(line: 367, column: 15, scope: !915)
!953 = !DILocation(line: 368, column: 29, scope: !915)
!954 = !DILocation(line: 368, column: 24, scope: !915)
!955 = !DILocation(line: 372, column: 29, scope: !924)
!956 = !DILocation(line: 0, scope: !924)
!957 = !DILocation(line: 373, column: 38, scope: !924)
!958 = !DILocation(line: 374, column: 26, scope: !924)
!959 = !DILocation(line: 377, column: 10, scope: !930)
!960 = !DILocation(line: 377, column: 8, scope: !924)
!961 = !DILocation(line: 378, column: 7, scope: !929)
!962 = !DILocation(line: 379, column: 26, scope: !929)
!963 = !DILocation(line: 381, column: 22, scope: !929)
!964 = !DILocation(line: 381, column: 29, scope: !929)
!965 = !DILocation(line: 381, column: 25, scope: !929)
!966 = !DILocation(line: 381, column: 35, scope: !929)
!967 = !DILocation(line: 381, column: 53, scope: !929)
!968 = !DILocation(line: 381, column: 33, scope: !929)
!969 = !DILocation(line: 381, column: 19, scope: !929)
!970 = !DILocation(line: 382, column: 23, scope: !929)
!971 = !DILocation(line: 382, column: 22, scope: !929)
!972 = !DILocation(line: 382, column: 35, scope: !929)
!973 = !DILocation(line: 382, column: 31, scope: !929)
!974 = !DILocation(line: 382, column: 39, scope: !929)
!975 = !DILocation(line: 382, column: 15, scope: !929)
!976 = !DILocation(line: 382, column: 19, scope: !929)
!977 = !DILocation(line: 384, column: 5, scope: !930)
!978 = !DILocation(line: 375, column: 29, scope: !924)
!979 = !DILocation(line: 375, column: 31, scope: !924)
!980 = !DILocation(line: 375, column: 26, scope: !924)
!981 = !DILocation(line: 386, column: 7, scope: !933)
!982 = !DILocation(line: 387, column: 40, scope: !933)
!983 = !DILocation(line: 388, column: 28, scope: !933)
!984 = !DILocation(line: 389, column: 28, scope: !933)
!985 = !DILocation(line: 390, column: 35, scope: !933)
!986 = !DILocation(line: 390, column: 30, scope: !933)
!987 = !DILocation(line: 390, column: 44, scope: !933)
!988 = !DILocation(line: 390, column: 49, scope: !933)
!989 = !DILocation(line: 390, column: 65, scope: !933)
!990 = !DILocation(line: 390, column: 60, scope: !933)
!991 = !DILocation(line: 390, column: 39, scope: !933)
!992 = !DILocation(line: 390, column: 20, scope: !933)
!993 = !DILocation(line: 391, column: 40, scope: !933)
!994 = !DILocation(line: 391, column: 38, scope: !933)
!995 = !DILocation(line: 391, column: 15, scope: !933)
!996 = !DILocation(line: 392, column: 38, scope: !933)
!997 = !DILocation(line: 392, column: 34, scope: !933)
!998 = !DILocation(line: 392, column: 22, scope: !933)
!999 = !DILocation(line: 392, column: 19, scope: !933)
!1000 = !DILocation(line: 393, column: 30, scope: !933)
!1001 = !DILocation(line: 393, column: 64, scope: !933)
!1002 = !DILocation(line: 393, column: 50, scope: !933)
!1003 = !DILocation(line: 393, column: 48, scope: !933)
!1004 = !DILocation(line: 393, column: 19, scope: !933)
!1005 = !DILocation(line: 394, column: 49, scope: !933)
!1006 = !DILocation(line: 394, column: 45, scope: !933)
!1007 = !DILocation(line: 394, column: 32, scope: !933)
!1008 = !DILocation(line: 394, column: 30, scope: !933)
!1009 = !DILocation(line: 394, column: 19, scope: !933)
!1010 = !DILocation(line: 395, column: 14, scope: !940)
!1011 = !DILocation(line: 395, column: 11, scope: !933)
!1012 = !DILocation(line: 396, column: 16, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !940, file: !2, line: 395, column: 20)
!1014 = !DILocation(line: 396, column: 9, scope: !1013)
!1015 = !DILocation(line: 398, column: 9, scope: !939)
!1016 = !DILocation(line: 399, column: 30, scope: !939)
!1017 = !DILocation(line: 400, column: 25, scope: !939)
!1018 = !DILocation(line: 400, column: 32, scope: !939)
!1019 = !DILocation(line: 400, column: 28, scope: !939)
!1020 = !DILocation(line: 400, column: 21, scope: !939)
!1021 = !DILocation(line: 401, column: 26, scope: !939)
!1022 = !DILocation(line: 401, column: 25, scope: !939)
!1023 = !DILocation(line: 401, column: 38, scope: !939)
!1024 = !DILocation(line: 401, column: 34, scope: !939)
!1025 = !DILocation(line: 401, column: 21, scope: !939)
!1026 = !DILocation(line: 402, column: 16, scope: !939)
!1027 = !DILocation(line: 403, column: 7, scope: !940)
!1028 = !DILocation(line: 0, scope: !940)
!1029 = !DILocation(line: 404, column: 5, scope: !930)
!1030 = !DILocation(line: 0, scope: !930)
!1031 = !DILocation(line: 406, column: 1, scope: !915)
!1032 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp_e", scope: !2, file: !2, line: 539, type: !857, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1041, !1042, !1043, !1044, !1045, !1047, !1048, !1049, !1050}
!1034 = !DILocalVariable(name: "k", arg: 1, scope: !1032, file: !2, line: 539, type: !111)
!1035 = !DILocalVariable(name: "mode", arg: 2, scope: !1032, file: !2, line: 539, type: !112)
!1036 = !DILocalVariable(name: "result", arg: 3, scope: !1032, file: !2, line: 539, type: !114)
!1037 = !DILocalVariable(name: "y", scope: !1038, file: !2, line: 546, type: !127)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 544, column: 46)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 544, column: 11)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 541, column: 6)
!1041 = !DILocalVariable(name: "a", scope: !1038, file: !2, line: 547, type: !868)
!1042 = !DILocalVariable(name: "b", scope: !1038, file: !2, line: 548, type: !868)
!1043 = !DILocalVariable(name: "ta", scope: !1038, file: !2, line: 549, type: !127)
!1044 = !DILocalVariable(name: "tb", scope: !1038, file: !2, line: 550, type: !127)
!1045 = !DILocalVariable(name: "rf", scope: !1046, file: !2, line: 556, type: !115)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 555, column: 8)
!1047 = !DILocalVariable(name: "rd", scope: !1046, file: !2, line: 557, type: !115)
!1048 = !DILocalVariable(name: "y", scope: !1046, file: !2, line: 558, type: !127)
!1049 = !DILocalVariable(name: "rfstatus", scope: !1046, file: !2, line: 559, type: !136)
!1050 = !DILocalVariable(name: "rdstatus", scope: !1046, file: !2, line: 560, type: !136)
!1051 = distinct !DIAssignID()
!1052 = !DILocation(line: 0, scope: !1046)
!1053 = distinct !DIAssignID()
!1054 = !DILocation(line: 0, scope: !1032)
!1055 = !DILocation(line: 541, column: 7, scope: !1040)
!1056 = !DILocation(line: 541, column: 10, scope: !1040)
!1057 = !DILocation(line: 541, column: 6, scope: !1032)
!1058 = !DILocation(line: 542, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 542, column: 5)
!1060 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 541, column: 18)
!1061 = !DILocation(line: 542, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 542, column: 5)
!1063 = !DILocation(line: 544, column: 15, scope: !1039)
!1064 = !DILocation(line: 544, column: 11, scope: !1040)
!1065 = !DILocation(line: 546, column: 26, scope: !1038)
!1066 = !DILocation(line: 0, scope: !1038)
!1067 = !DILocation(line: 549, column: 53, scope: !1038)
!1068 = !DILocation(line: 549, column: 47, scope: !1038)
!1069 = !DILocation(line: 549, column: 40, scope: !1038)
!1070 = !DILocation(line: 549, column: 37, scope: !1038)
!1071 = !DILocation(line: 549, column: 30, scope: !1038)
!1072 = !DILocation(line: 549, column: 27, scope: !1038)
!1073 = !DILocation(line: 550, column: 23, scope: !1038)
!1074 = !DILocation(line: 550, column: 26, scope: !1038)
!1075 = !DILocation(line: 550, column: 25, scope: !1038)
!1076 = !DILocation(line: 550, column: 57, scope: !1038)
!1077 = !DILocation(line: 550, column: 51, scope: !1038)
!1078 = !DILocation(line: 550, column: 44, scope: !1038)
!1079 = !DILocation(line: 550, column: 41, scope: !1038)
!1080 = !DILocation(line: 550, column: 33, scope: !1038)
!1081 = !DILocation(line: 551, column: 22, scope: !1038)
!1082 = !DILocation(line: 551, column: 17, scope: !1038)
!1083 = !DILocation(line: 552, column: 41, scope: !1038)
!1084 = !DILocation(line: 552, column: 13, scope: !1038)
!1085 = !DILocation(line: 552, column: 17, scope: !1038)
!1086 = !DILocation(line: 556, column: 5, scope: !1046)
!1087 = !DILocation(line: 557, column: 5, scope: !1046)
!1088 = !DILocation(line: 558, column: 26, scope: !1046)
!1089 = !DILocation(line: 559, column: 26, scope: !1046)
!1090 = !DILocation(line: 560, column: 26, scope: !1046)
!1091 = !DILocation(line: 561, column: 22, scope: !1046)
!1092 = !DILocation(line: 561, column: 31, scope: !1046)
!1093 = !DILocation(line: 561, column: 41, scope: !1046)
!1094 = !DILocation(line: 561, column: 36, scope: !1046)
!1095 = !DILocation(line: 561, column: 26, scope: !1046)
!1096 = !DILocation(line: 561, column: 17, scope: !1046)
!1097 = !DILocation(line: 562, column: 22, scope: !1046)
!1098 = !DILocation(line: 562, column: 41, scope: !1046)
!1099 = !DILocation(line: 562, column: 36, scope: !1046)
!1100 = !DILocation(line: 562, column: 26, scope: !1046)
!1101 = !DILocation(line: 562, column: 13, scope: !1046)
!1102 = !DILocation(line: 562, column: 17, scope: !1046)
!1103 = !DILocation(line: 563, column: 12, scope: !1046)
!1104 = !DILocation(line: 564, column: 3, scope: !1039)
!1105 = !DILocation(line: 0, scope: !1040)
!1106 = !DILocation(line: 565, column: 1, scope: !1032)
!1107 = distinct !DISubprogram(name: "gsl_sf_ellint_P_e", scope: !2, file: !2, line: 411, type: !245, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1129}
!1109 = !DILocalVariable(name: "phi", arg: 1, scope: !1107, file: !2, line: 411, type: !111)
!1110 = !DILocalVariable(name: "k", arg: 2, scope: !1107, file: !2, line: 411, type: !111)
!1111 = !DILocalVariable(name: "n", arg: 3, scope: !1107, file: !2, line: 411, type: !111)
!1112 = !DILocalVariable(name: "mode", arg: 4, scope: !1107, file: !2, line: 411, type: !112)
!1113 = !DILocalVariable(name: "result", arg: 5, scope: !1107, file: !2, line: 411, type: !114)
!1114 = !DILocalVariable(name: "nc", scope: !1107, file: !2, line: 416, type: !111)
!1115 = !DILocalVariable(name: "phi_red", scope: !1107, file: !2, line: 417, type: !111)
!1116 = !DILocalVariable(name: "sin_phi", scope: !1117, file: !2, line: 423, type: !127)
!1117 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 422, column: 3)
!1118 = !DILocalVariable(name: "sin2_phi", scope: !1117, file: !2, line: 424, type: !127)
!1119 = !DILocalVariable(name: "sin3_phi", scope: !1117, file: !2, line: 425, type: !127)
!1120 = !DILocalVariable(name: "x", scope: !1117, file: !2, line: 426, type: !127)
!1121 = !DILocalVariable(name: "y", scope: !1117, file: !2, line: 427, type: !127)
!1122 = !DILocalVariable(name: "rf", scope: !1117, file: !2, line: 428, type: !115)
!1123 = !DILocalVariable(name: "rj", scope: !1117, file: !2, line: 429, type: !115)
!1124 = !DILocalVariable(name: "rfstatus", scope: !1117, file: !2, line: 430, type: !136)
!1125 = !DILocalVariable(name: "rjstatus", scope: !1117, file: !2, line: 431, type: !136)
!1126 = !DILocalVariable(name: "rp", scope: !1127, file: !2, line: 440, type: !115)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 439, column: 12)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 437, column: 9)
!1129 = !DILocalVariable(name: "rpstatus", scope: !1127, file: !2, line: 441, type: !136)
!1130 = distinct !DIAssignID()
!1131 = distinct !DIAssignID()
!1132 = distinct !DIAssignID()
!1133 = !DILocation(line: 0, scope: !1117)
!1134 = distinct !DIAssignID()
!1135 = !DILocation(line: 0, scope: !1107)
!1136 = !DILocation(line: 416, column: 24, scope: !1107)
!1137 = !DILocation(line: 416, column: 30, scope: !1107)
!1138 = !DILocation(line: 416, column: 15, scope: !1107)
!1139 = !DILocation(line: 417, column: 29, scope: !1107)
!1140 = !DILocation(line: 417, column: 24, scope: !1107)
!1141 = !DILocation(line: 423, column: 29, scope: !1117)
!1142 = !DILocation(line: 424, column: 38, scope: !1117)
!1143 = !DILocation(line: 425, column: 38, scope: !1117)
!1144 = !DILocation(line: 426, column: 26, scope: !1117)
!1145 = !DILocation(line: 427, column: 29, scope: !1117)
!1146 = !DILocation(line: 427, column: 31, scope: !1117)
!1147 = !DILocation(line: 427, column: 26, scope: !1117)
!1148 = !DILocation(line: 428, column: 5, scope: !1117)
!1149 = !DILocation(line: 429, column: 5, scope: !1117)
!1150 = !DILocation(line: 430, column: 26, scope: !1117)
!1151 = !DILocation(line: 431, column: 63, scope: !1117)
!1152 = !DILocation(line: 431, column: 60, scope: !1117)
!1153 = !DILocation(line: 431, column: 26, scope: !1117)
!1154 = !DILocation(line: 432, column: 33, scope: !1117)
!1155 = !DILocation(line: 432, column: 28, scope: !1117)
!1156 = !DILocation(line: 432, column: 40, scope: !1117)
!1157 = !DILocation(line: 432, column: 44, scope: !1117)
!1158 = !DILocation(line: 432, column: 59, scope: !1117)
!1159 = !DILocation(line: 432, column: 54, scope: !1117)
!1160 = !DILocation(line: 432, column: 37, scope: !1117)
!1161 = !DILocation(line: 432, column: 18, scope: !1117)
!1162 = !DILocation(line: 433, column: 38, scope: !1117)
!1163 = !DILocation(line: 433, column: 36, scope: !1117)
!1164 = !DILocation(line: 433, column: 13, scope: !1117)
!1165 = !DILocation(line: 434, column: 38, scope: !1117)
!1166 = !DILocation(line: 434, column: 33, scope: !1117)
!1167 = !DILocation(line: 434, column: 20, scope: !1117)
!1168 = !DILocation(line: 434, column: 17, scope: !1117)
!1169 = !DILocation(line: 435, column: 26, scope: !1117)
!1170 = !DILocation(line: 435, column: 59, scope: !1117)
!1171 = !DILocation(line: 435, column: 46, scope: !1117)
!1172 = !DILocation(line: 435, column: 44, scope: !1117)
!1173 = !DILocation(line: 435, column: 17, scope: !1117)
!1174 = !DILocation(line: 436, column: 45, scope: !1117)
!1175 = !DILocation(line: 436, column: 41, scope: !1117)
!1176 = !DILocation(line: 436, column: 28, scope: !1117)
!1177 = !DILocation(line: 436, column: 26, scope: !1117)
!1178 = !DILocation(line: 436, column: 17, scope: !1117)
!1179 = !DILocation(line: 437, column: 12, scope: !1128)
!1180 = !DILocation(line: 437, column: 9, scope: !1117)
!1181 = !DILocation(line: 438, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 437, column: 18)
!1183 = !DILocation(line: 438, column: 7, scope: !1182)
!1184 = !DILocalVariable(name: "rf", scope: !1185, file: !2, line: 576, type: !115)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 575, column: 8)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 571, column: 6)
!1187 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp_e", scope: !2, file: !2, line: 569, type: !109, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1184, !1193, !1194, !1195, !1196}
!1189 = !DILocalVariable(name: "k", arg: 1, scope: !1187, file: !2, line: 569, type: !111)
!1190 = !DILocalVariable(name: "n", arg: 2, scope: !1187, file: !2, line: 569, type: !111)
!1191 = !DILocalVariable(name: "mode", arg: 3, scope: !1187, file: !2, line: 569, type: !112)
!1192 = !DILocalVariable(name: "result", arg: 4, scope: !1187, file: !2, line: 569, type: !114)
!1193 = !DILocalVariable(name: "rj", scope: !1185, file: !2, line: 577, type: !115)
!1194 = !DILocalVariable(name: "y", scope: !1185, file: !2, line: 578, type: !127)
!1195 = !DILocalVariable(name: "rfstatus", scope: !1185, file: !2, line: 579, type: !136)
!1196 = !DILocalVariable(name: "rjstatus", scope: !1185, file: !2, line: 580, type: !136)
!1197 = !DILocation(line: 0, scope: !1185, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 441, column: 28, scope: !1127)
!1199 = !DILocation(line: 0, scope: !1187, inlinedAt: !1198)
!1200 = !DILocation(line: 571, column: 10, scope: !1186, inlinedAt: !1198)
!1201 = !DILocation(line: 571, column: 6, scope: !1187, inlinedAt: !1198)
!1202 = !DILocation(line: 0, scope: !1127)
!1203 = !DILocation(line: 572, column: 5, scope: !1204, inlinedAt: !1198)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 572, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 572, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 571, column: 18)
!1207 = !DILocation(line: 576, column: 5, scope: !1185, inlinedAt: !1198)
!1208 = !DILocation(line: 577, column: 5, scope: !1185, inlinedAt: !1198)
!1209 = !DILocation(line: 578, column: 26, scope: !1185, inlinedAt: !1198)
!1210 = !DILocation(line: 579, column: 26, scope: !1185, inlinedAt: !1198)
!1211 = !DILocation(line: 580, column: 62, scope: !1185, inlinedAt: !1198)
!1212 = !DILocation(line: 580, column: 26, scope: !1185, inlinedAt: !1198)
!1213 = !DILocation(line: 581, column: 22, scope: !1185, inlinedAt: !1198)
!1214 = !DILocation(line: 581, column: 41, scope: !1185, inlinedAt: !1198)
!1215 = !DILocation(line: 581, column: 36, scope: !1185, inlinedAt: !1198)
!1216 = !DILocation(line: 581, column: 26, scope: !1185, inlinedAt: !1198)
!1217 = !DILocation(line: 582, column: 22, scope: !1185, inlinedAt: !1198)
!1218 = !DILocation(line: 582, column: 28, scope: !1185, inlinedAt: !1198)
!1219 = !DILocation(line: 582, column: 45, scope: !1185, inlinedAt: !1198)
!1220 = !DILocation(line: 582, column: 40, scope: !1185, inlinedAt: !1198)
!1221 = !DILocation(line: 582, column: 26, scope: !1185, inlinedAt: !1198)
!1222 = !DILocation(line: 583, column: 12, scope: !1185, inlinedAt: !1198)
!1223 = !DILocation(line: 584, column: 3, scope: !1186, inlinedAt: !1198)
!1224 = !DILocation(line: 0, scope: !1186, inlinedAt: !1198)
!1225 = !DILocation(line: 442, column: 23, scope: !1127)
!1226 = !DILocation(line: 442, column: 26, scope: !1127)
!1227 = !DILocation(line: 442, column: 19, scope: !1127)
!1228 = !DILocation(line: 443, column: 24, scope: !1127)
!1229 = !DILocation(line: 443, column: 23, scope: !1127)
!1230 = !DILocation(line: 443, column: 32, scope: !1127)
!1231 = !DILocation(line: 443, column: 19, scope: !1127)
!1232 = !DILocation(line: 444, column: 14, scope: !1127)
!1233 = !DILocation(line: 0, scope: !1128)
!1234 = !DILocation(line: 446, column: 3, scope: !1107)
!1235 = !DILocation(line: 447, column: 1, scope: !1107)
!1236 = distinct !DIAssignID()
!1237 = !DILocation(line: 0, scope: !1185)
!1238 = distinct !DIAssignID()
!1239 = !DILocation(line: 0, scope: !1187)
!1240 = !DILocation(line: 571, column: 7, scope: !1186)
!1241 = !DILocation(line: 571, column: 10, scope: !1186)
!1242 = !DILocation(line: 571, column: 6, scope: !1187)
!1243 = !DILocation(line: 572, column: 5, scope: !1205)
!1244 = !DILocation(line: 572, column: 5, scope: !1204)
!1245 = !DILocation(line: 576, column: 5, scope: !1185)
!1246 = !DILocation(line: 577, column: 5, scope: !1185)
!1247 = !DILocation(line: 578, column: 26, scope: !1185)
!1248 = !DILocation(line: 579, column: 26, scope: !1185)
!1249 = !DILocation(line: 580, column: 62, scope: !1185)
!1250 = !DILocation(line: 580, column: 26, scope: !1185)
!1251 = !DILocation(line: 581, column: 22, scope: !1185)
!1252 = !DILocation(line: 581, column: 30, scope: !1185)
!1253 = !DILocation(line: 581, column: 41, scope: !1185)
!1254 = !DILocation(line: 581, column: 36, scope: !1185)
!1255 = !DILocation(line: 581, column: 26, scope: !1185)
!1256 = !DILocation(line: 581, column: 17, scope: !1185)
!1257 = !DILocation(line: 582, column: 22, scope: !1185)
!1258 = !DILocation(line: 582, column: 28, scope: !1185)
!1259 = !DILocation(line: 582, column: 45, scope: !1185)
!1260 = !DILocation(line: 582, column: 40, scope: !1185)
!1261 = !DILocation(line: 582, column: 26, scope: !1185)
!1262 = !DILocation(line: 582, column: 13, scope: !1185)
!1263 = !DILocation(line: 582, column: 17, scope: !1185)
!1264 = !DILocation(line: 583, column: 12, scope: !1185)
!1265 = !DILocation(line: 584, column: 3, scope: !1186)
!1266 = !DILocation(line: 0, scope: !1186)
!1267 = !DILocation(line: 585, column: 1, scope: !1187)
!1268 = distinct !DISubprogram(name: "gsl_sf_ellint_D_e", scope: !2, file: !2, line: 452, type: !109, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1287}
!1270 = !DILocalVariable(name: "phi", arg: 1, scope: !1268, file: !2, line: 452, type: !111)
!1271 = !DILocalVariable(name: "k", arg: 2, scope: !1268, file: !2, line: 452, type: !111)
!1272 = !DILocalVariable(name: "mode", arg: 3, scope: !1268, file: !2, line: 452, type: !112)
!1273 = !DILocalVariable(name: "result", arg: 4, scope: !1268, file: !2, line: 452, type: !114)
!1274 = !DILocalVariable(name: "nc", scope: !1268, file: !2, line: 457, type: !111)
!1275 = !DILocalVariable(name: "phi_red", scope: !1268, file: !2, line: 458, type: !111)
!1276 = !DILocalVariable(name: "sin_phi", scope: !1277, file: !2, line: 463, type: !127)
!1277 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 462, column: 3)
!1278 = !DILocalVariable(name: "sin2_phi", scope: !1277, file: !2, line: 464, type: !127)
!1279 = !DILocalVariable(name: "sin3_phi", scope: !1277, file: !2, line: 465, type: !127)
!1280 = !DILocalVariable(name: "x", scope: !1277, file: !2, line: 466, type: !127)
!1281 = !DILocalVariable(name: "y", scope: !1277, file: !2, line: 467, type: !127)
!1282 = !DILocalVariable(name: "rd", scope: !1277, file: !2, line: 468, type: !115)
!1283 = !DILocalVariable(name: "status", scope: !1277, file: !2, line: 469, type: !136)
!1284 = !DILocalVariable(name: "rd", scope: !1285, file: !2, line: 475, type: !115)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 474, column: 12)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 472, column: 9)
!1287 = !DILocalVariable(name: "rdstatus", scope: !1285, file: !2, line: 476, type: !136)
!1288 = distinct !DIAssignID()
!1289 = distinct !DIAssignID()
!1290 = !DILocation(line: 0, scope: !1277)
!1291 = !DILocation(line: 0, scope: !1268)
!1292 = !DILocation(line: 457, column: 24, scope: !1268)
!1293 = !DILocation(line: 457, column: 30, scope: !1268)
!1294 = !DILocation(line: 457, column: 15, scope: !1268)
!1295 = !DILocation(line: 458, column: 29, scope: !1268)
!1296 = !DILocation(line: 458, column: 24, scope: !1268)
!1297 = !DILocation(line: 463, column: 29, scope: !1277)
!1298 = !DILocation(line: 464, column: 38, scope: !1277)
!1299 = !DILocation(line: 465, column: 38, scope: !1277)
!1300 = !DILocation(line: 466, column: 26, scope: !1277)
!1301 = !DILocation(line: 467, column: 29, scope: !1277)
!1302 = !DILocation(line: 467, column: 31, scope: !1277)
!1303 = !DILocation(line: 467, column: 26, scope: !1277)
!1304 = !DILocation(line: 468, column: 5, scope: !1277)
!1305 = !DILocation(line: 469, column: 24, scope: !1277)
!1306 = !DILocation(line: 470, column: 27, scope: !1277)
!1307 = !DILocation(line: 470, column: 37, scope: !1277)
!1308 = !DILocation(line: 470, column: 32, scope: !1277)
!1309 = !DILocation(line: 470, column: 17, scope: !1277)
!1310 = !DILocation(line: 471, column: 37, scope: !1277)
!1311 = !DILocation(line: 471, column: 35, scope: !1277)
!1312 = !DILocation(line: 471, column: 80, scope: !1277)
!1313 = !DILocation(line: 471, column: 75, scope: !1277)
!1314 = !DILocation(line: 471, column: 57, scope: !1277)
!1315 = !DILocation(line: 471, column: 55, scope: !1277)
!1316 = !DILocation(line: 471, column: 13, scope: !1277)
!1317 = !DILocation(line: 471, column: 17, scope: !1277)
!1318 = !DILocation(line: 472, column: 12, scope: !1286)
!1319 = !DILocation(line: 472, column: 9, scope: !1277)
!1320 = !DILocalVariable(name: "rd", scope: !1321, file: !2, line: 491, type: !115)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 489, column: 10)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 487, column: 6)
!1323 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp_e", scope: !2, file: !2, line: 485, type: !857, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1320, !1329}
!1325 = !DILocalVariable(name: "k", arg: 1, scope: !1323, file: !2, line: 485, type: !111)
!1326 = !DILocalVariable(name: "mode", arg: 2, scope: !1323, file: !2, line: 485, type: !112)
!1327 = !DILocalVariable(name: "result", arg: 3, scope: !1323, file: !2, line: 485, type: !114)
!1328 = !DILocalVariable(name: "y", scope: !1321, file: !2, line: 490, type: !127)
!1329 = !DILocalVariable(name: "status", scope: !1321, file: !2, line: 492, type: !136)
!1330 = !DILocation(line: 0, scope: !1321, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 476, column: 28, scope: !1285)
!1332 = !DILocation(line: 0, scope: !1323, inlinedAt: !1331)
!1333 = !DILocation(line: 487, column: 10, scope: !1322, inlinedAt: !1331)
!1334 = !DILocation(line: 487, column: 6, scope: !1323, inlinedAt: !1331)
!1335 = !DILocation(line: 0, scope: !1285)
!1336 = !DILocation(line: 488, column: 5, scope: !1337, inlinedAt: !1331)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 488, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 488, column: 5)
!1339 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 487, column: 18)
!1340 = !DILocation(line: 490, column: 26, scope: !1321, inlinedAt: !1331)
!1341 = !DILocation(line: 491, column: 5, scope: !1321, inlinedAt: !1331)
!1342 = !DILocation(line: 492, column: 24, scope: !1321, inlinedAt: !1331)
!1343 = !DILocation(line: 493, column: 34, scope: !1321, inlinedAt: !1331)
!1344 = !DILocation(line: 493, column: 29, scope: !1321, inlinedAt: !1331)
!1345 = !DILocation(line: 494, column: 37, scope: !1321, inlinedAt: !1331)
!1346 = !DILocation(line: 494, column: 35, scope: !1321, inlinedAt: !1331)
!1347 = !DILocation(line: 494, column: 75, scope: !1321, inlinedAt: !1331)
!1348 = !DILocation(line: 494, column: 70, scope: !1321, inlinedAt: !1331)
!1349 = !DILocation(line: 494, column: 57, scope: !1321, inlinedAt: !1331)
!1350 = !DILocation(line: 494, column: 55, scope: !1321, inlinedAt: !1331)
!1351 = !DILocation(line: 496, column: 3, scope: !1322, inlinedAt: !1331)
!1352 = !DILocation(line: 0, scope: !1322, inlinedAt: !1331)
!1353 = !DILocation(line: 477, column: 23, scope: !1285)
!1354 = !DILocation(line: 477, column: 26, scope: !1285)
!1355 = !DILocation(line: 477, column: 19, scope: !1285)
!1356 = !DILocation(line: 478, column: 24, scope: !1285)
!1357 = !DILocation(line: 478, column: 23, scope: !1285)
!1358 = !DILocation(line: 478, column: 32, scope: !1285)
!1359 = !DILocation(line: 478, column: 19, scope: !1285)
!1360 = !DILocation(line: 479, column: 14, scope: !1285)
!1361 = !DILocation(line: 0, scope: !1286)
!1362 = !DILocation(line: 481, column: 3, scope: !1268)
!1363 = !DILocation(line: 482, column: 1, scope: !1268)
!1364 = distinct !DIAssignID()
!1365 = !DILocation(line: 0, scope: !1321)
!1366 = !DILocation(line: 0, scope: !1323)
!1367 = !DILocation(line: 487, column: 7, scope: !1322)
!1368 = !DILocation(line: 487, column: 10, scope: !1322)
!1369 = !DILocation(line: 487, column: 6, scope: !1323)
!1370 = !DILocation(line: 488, column: 5, scope: !1338)
!1371 = !DILocation(line: 488, column: 5, scope: !1337)
!1372 = !DILocation(line: 490, column: 26, scope: !1321)
!1373 = !DILocation(line: 491, column: 5, scope: !1321)
!1374 = !DILocation(line: 492, column: 24, scope: !1321)
!1375 = !DILocation(line: 493, column: 34, scope: !1321)
!1376 = !DILocation(line: 493, column: 29, scope: !1321)
!1377 = !DILocation(line: 493, column: 17, scope: !1321)
!1378 = !DILocation(line: 494, column: 37, scope: !1321)
!1379 = !DILocation(line: 494, column: 35, scope: !1321)
!1380 = !DILocation(line: 494, column: 75, scope: !1321)
!1381 = !DILocation(line: 494, column: 70, scope: !1321)
!1382 = !DILocation(line: 494, column: 57, scope: !1321)
!1383 = !DILocation(line: 494, column: 55, scope: !1321)
!1384 = !DILocation(line: 494, column: 13, scope: !1321)
!1385 = !DILocation(line: 494, column: 17, scope: !1321)
!1386 = !DILocation(line: 496, column: 3, scope: !1322)
!1387 = !DILocation(line: 0, scope: !1322)
!1388 = !DILocation(line: 497, column: 1, scope: !1323)
!1389 = !DISubprogram(name: "log", scope: !241, file: !241, line: 104, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp", scope: !2, file: !2, line: 593, type: !1391, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!111, !111, !112}
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DILocalVariable(name: "k", arg: 1, scope: !1390, file: !2, line: 593, type: !111)
!1395 = !DILocalVariable(name: "mode", arg: 2, scope: !1390, file: !2, line: 593, type: !112)
!1396 = !DILocalVariable(name: "result", scope: !1390, file: !2, line: 595, type: !115)
!1397 = !DILocalVariable(name: "status", scope: !1390, file: !2, line: 595, type: !60)
!1398 = distinct !DIAssignID()
!1399 = !DILocation(line: 0, scope: !1390)
!1400 = !DILocation(line: 595, column: 3, scope: !1390)
!1401 = !DILocation(line: 595, column: 3, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 595, column: 3)
!1403 = !DILocation(line: 595, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 595, column: 3)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 595, column: 3)
!1406 = !DILocation(line: 596, column: 1, scope: !1390)
!1407 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp", scope: !2, file: !2, line: 598, type: !1391, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1408)
!1408 = !{!1409, !1410, !1411, !1412}
!1409 = !DILocalVariable(name: "k", arg: 1, scope: !1407, file: !2, line: 598, type: !111)
!1410 = !DILocalVariable(name: "mode", arg: 2, scope: !1407, file: !2, line: 598, type: !112)
!1411 = !DILocalVariable(name: "result", scope: !1407, file: !2, line: 600, type: !115)
!1412 = !DILocalVariable(name: "status", scope: !1407, file: !2, line: 600, type: !60)
!1413 = distinct !DIAssignID()
!1414 = !DILocation(line: 0, scope: !1407)
!1415 = !DILocation(line: 600, column: 3, scope: !1407)
!1416 = !DILocation(line: 600, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 600, column: 3)
!1418 = !DILocation(line: 600, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 600, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 600, column: 3)
!1421 = !DILocation(line: 601, column: 1, scope: !1407)
!1422 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp", scope: !2, file: !2, line: 603, type: !1423, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!111, !111, !111, !112}
!1425 = !{!1426, !1427, !1428, !1429, !1430}
!1426 = !DILocalVariable(name: "k", arg: 1, scope: !1422, file: !2, line: 603, type: !111)
!1427 = !DILocalVariable(name: "n", arg: 2, scope: !1422, file: !2, line: 603, type: !111)
!1428 = !DILocalVariable(name: "mode", arg: 3, scope: !1422, file: !2, line: 603, type: !112)
!1429 = !DILocalVariable(name: "result", scope: !1422, file: !2, line: 605, type: !115)
!1430 = !DILocalVariable(name: "status", scope: !1422, file: !2, line: 605, type: !60)
!1431 = distinct !DIAssignID()
!1432 = distinct !DIAssignID()
!1433 = !DILocation(line: 0, scope: !1422)
!1434 = !DILocation(line: 0, scope: !1185, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 605, column: 3, scope: !1422)
!1436 = !DILocation(line: 0, scope: !1187, inlinedAt: !1435)
!1437 = !DILocation(line: 571, column: 7, scope: !1186, inlinedAt: !1435)
!1438 = !DILocation(line: 571, column: 10, scope: !1186, inlinedAt: !1435)
!1439 = !DILocation(line: 571, column: 6, scope: !1187, inlinedAt: !1435)
!1440 = !DILocation(line: 572, column: 5, scope: !1204, inlinedAt: !1435)
!1441 = !DILocation(line: 605, column: 3, scope: !1422)
!1442 = !DILocation(line: 576, column: 5, scope: !1185, inlinedAt: !1435)
!1443 = !DILocation(line: 577, column: 5, scope: !1185, inlinedAt: !1435)
!1444 = !DILocation(line: 578, column: 26, scope: !1185, inlinedAt: !1435)
!1445 = !DILocation(line: 579, column: 26, scope: !1185, inlinedAt: !1435)
!1446 = !DILocation(line: 580, column: 62, scope: !1185, inlinedAt: !1435)
!1447 = !DILocation(line: 580, column: 26, scope: !1185, inlinedAt: !1435)
!1448 = !DILocation(line: 581, column: 22, scope: !1185, inlinedAt: !1435)
!1449 = !DILocation(line: 581, column: 30, scope: !1185, inlinedAt: !1435)
!1450 = !DILocation(line: 581, column: 41, scope: !1185, inlinedAt: !1435)
!1451 = !DILocation(line: 581, column: 36, scope: !1185, inlinedAt: !1435)
!1452 = !DILocation(line: 581, column: 26, scope: !1185, inlinedAt: !1435)
!1453 = !DILocation(line: 583, column: 12, scope: !1185, inlinedAt: !1435)
!1454 = !DILocation(line: 584, column: 3, scope: !1186, inlinedAt: !1435)
!1455 = !DILocation(line: 605, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 605, column: 3)
!1457 = !DILocation(line: 605, column: 3, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 605, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 605, column: 3)
!1460 = !DILocation(line: 606, column: 1, scope: !1422)
!1461 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp", scope: !2, file: !2, line: 608, type: !1391, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1462)
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "k", arg: 1, scope: !1461, file: !2, line: 608, type: !111)
!1464 = !DILocalVariable(name: "mode", arg: 2, scope: !1461, file: !2, line: 608, type: !112)
!1465 = !DILocalVariable(name: "result", scope: !1461, file: !2, line: 610, type: !115)
!1466 = !DILocalVariable(name: "status", scope: !1461, file: !2, line: 610, type: !60)
!1467 = distinct !DIAssignID()
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 0, scope: !1321, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 610, column: 3, scope: !1461)
!1471 = !DILocation(line: 0, scope: !1323, inlinedAt: !1470)
!1472 = !DILocation(line: 487, column: 7, scope: !1322, inlinedAt: !1470)
!1473 = !DILocation(line: 487, column: 10, scope: !1322, inlinedAt: !1470)
!1474 = !DILocation(line: 487, column: 6, scope: !1323, inlinedAt: !1470)
!1475 = !DILocation(line: 488, column: 5, scope: !1337, inlinedAt: !1470)
!1476 = !DILocation(line: 610, column: 3, scope: !1461)
!1477 = !DILocation(line: 490, column: 26, scope: !1321, inlinedAt: !1470)
!1478 = !DILocation(line: 491, column: 5, scope: !1321, inlinedAt: !1470)
!1479 = !DILocation(line: 492, column: 24, scope: !1321, inlinedAt: !1470)
!1480 = !DILocation(line: 493, column: 34, scope: !1321, inlinedAt: !1470)
!1481 = !DILocation(line: 493, column: 29, scope: !1321, inlinedAt: !1470)
!1482 = !DILocation(line: 496, column: 3, scope: !1322, inlinedAt: !1470)
!1483 = !DILocation(line: 610, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 610, column: 3)
!1485 = !DILocation(line: 610, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 610, column: 3)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 610, column: 3)
!1488 = !DILocation(line: 611, column: 1, scope: !1461)
!1489 = distinct !DISubprogram(name: "gsl_sf_ellint_F", scope: !2, file: !2, line: 613, type: !1423, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495}
!1491 = !DILocalVariable(name: "phi", arg: 1, scope: !1489, file: !2, line: 613, type: !111)
!1492 = !DILocalVariable(name: "k", arg: 2, scope: !1489, file: !2, line: 613, type: !111)
!1493 = !DILocalVariable(name: "mode", arg: 3, scope: !1489, file: !2, line: 613, type: !112)
!1494 = !DILocalVariable(name: "result", scope: !1489, file: !2, line: 615, type: !115)
!1495 = !DILocalVariable(name: "status", scope: !1489, file: !2, line: 615, type: !60)
!1496 = distinct !DIAssignID()
!1497 = distinct !DIAssignID()
!1498 = !DILocation(line: 0, scope: !1489)
!1499 = !DILocation(line: 0, scope: !798, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 615, column: 3, scope: !1489)
!1501 = !DILocation(line: 0, scope: !805, inlinedAt: !1500)
!1502 = !DILocation(line: 0, scope: !789, inlinedAt: !1500)
!1503 = !DILocation(line: 334, column: 24, scope: !789, inlinedAt: !1500)
!1504 = !DILocation(line: 334, column: 30, scope: !789, inlinedAt: !1500)
!1505 = !DILocation(line: 334, column: 15, scope: !789, inlinedAt: !1500)
!1506 = !DILocation(line: 335, column: 29, scope: !789, inlinedAt: !1500)
!1507 = !DILocation(line: 335, column: 24, scope: !789, inlinedAt: !1500)
!1508 = !DILocation(line: 339, column: 23, scope: !798, inlinedAt: !1500)
!1509 = !DILocation(line: 340, column: 30, scope: !798, inlinedAt: !1500)
!1510 = !DILocation(line: 341, column: 20, scope: !798, inlinedAt: !1500)
!1511 = !DILocation(line: 342, column: 23, scope: !798, inlinedAt: !1500)
!1512 = !DILocation(line: 342, column: 25, scope: !798, inlinedAt: !1500)
!1513 = !DILocation(line: 342, column: 20, scope: !798, inlinedAt: !1500)
!1514 = !DILocation(line: 343, column: 5, scope: !798, inlinedAt: !1500)
!1515 = !DILocation(line: 344, column: 18, scope: !798, inlinedAt: !1500)
!1516 = !DILocation(line: 345, column: 32, scope: !798, inlinedAt: !1500)
!1517 = !DILocation(line: 345, column: 27, scope: !798, inlinedAt: !1500)
!1518 = !DILocation(line: 347, column: 12, scope: !806, inlinedAt: !1500)
!1519 = !DILocation(line: 347, column: 9, scope: !798, inlinedAt: !1500)
!1520 = !DILocation(line: 350, column: 7, scope: !805, inlinedAt: !1500)
!1521 = !DILocation(line: 351, column: 28, scope: !805, inlinedAt: !1500)
!1522 = !DILocation(line: 352, column: 23, scope: !805, inlinedAt: !1500)
!1523 = !DILocation(line: 352, column: 30, scope: !805, inlinedAt: !1500)
!1524 = !DILocation(line: 352, column: 26, scope: !805, inlinedAt: !1500)
!1525 = !DILocation(line: 352, column: 19, scope: !805, inlinedAt: !1500)
!1526 = !DILocation(line: 354, column: 14, scope: !805, inlinedAt: !1500)
!1527 = !DILocation(line: 355, column: 5, scope: !806, inlinedAt: !1500)
!1528 = !DILocation(line: 0, scope: !806, inlinedAt: !1500)
!1529 = !DILocation(line: 356, column: 3, scope: !789, inlinedAt: !1500)
!1530 = !DILocation(line: 615, column: 3, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 615, column: 3)
!1532 = !DILocation(line: 615, column: 3, scope: !1489)
!1533 = !DILocation(line: 615, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 615, column: 3)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 615, column: 3)
!1536 = !DILocation(line: 616, column: 1, scope: !1489)
!1537 = distinct !DISubprogram(name: "gsl_sf_ellint_E", scope: !2, file: !2, line: 618, type: !1423, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543}
!1539 = !DILocalVariable(name: "phi", arg: 1, scope: !1537, file: !2, line: 618, type: !111)
!1540 = !DILocalVariable(name: "k", arg: 2, scope: !1537, file: !2, line: 618, type: !111)
!1541 = !DILocalVariable(name: "mode", arg: 3, scope: !1537, file: !2, line: 618, type: !112)
!1542 = !DILocalVariable(name: "result", scope: !1537, file: !2, line: 620, type: !115)
!1543 = !DILocalVariable(name: "status", scope: !1537, file: !2, line: 620, type: !60)
!1544 = distinct !DIAssignID()
!1545 = !DILocation(line: 0, scope: !1537)
!1546 = !DILocation(line: 620, column: 3, scope: !1537)
!1547 = !DILocation(line: 620, column: 3, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 620, column: 3)
!1549 = !DILocation(line: 620, column: 3, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 620, column: 3)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 620, column: 3)
!1552 = !DILocation(line: 621, column: 1, scope: !1537)
!1553 = distinct !DISubprogram(name: "gsl_sf_ellint_P", scope: !2, file: !2, line: 623, type: !1554, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!111, !111, !111, !111, !112}
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562}
!1557 = !DILocalVariable(name: "phi", arg: 1, scope: !1553, file: !2, line: 623, type: !111)
!1558 = !DILocalVariable(name: "k", arg: 2, scope: !1553, file: !2, line: 623, type: !111)
!1559 = !DILocalVariable(name: "n", arg: 3, scope: !1553, file: !2, line: 623, type: !111)
!1560 = !DILocalVariable(name: "mode", arg: 4, scope: !1553, file: !2, line: 623, type: !112)
!1561 = !DILocalVariable(name: "result", scope: !1553, file: !2, line: 625, type: !115)
!1562 = !DILocalVariable(name: "status", scope: !1553, file: !2, line: 625, type: !60)
!1563 = distinct !DIAssignID()
!1564 = !DILocation(line: 0, scope: !1553)
!1565 = !DILocation(line: 625, column: 3, scope: !1553)
!1566 = !DILocation(line: 625, column: 3, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 625, column: 3)
!1568 = !DILocation(line: 625, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 625, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 625, column: 3)
!1571 = !DILocation(line: 626, column: 1, scope: !1553)
!1572 = distinct !DISubprogram(name: "gsl_sf_ellint_D", scope: !2, file: !2, line: 628, type: !1423, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576, !1577, !1578}
!1574 = !DILocalVariable(name: "phi", arg: 1, scope: !1572, file: !2, line: 628, type: !111)
!1575 = !DILocalVariable(name: "k", arg: 2, scope: !1572, file: !2, line: 628, type: !111)
!1576 = !DILocalVariable(name: "mode", arg: 3, scope: !1572, file: !2, line: 628, type: !112)
!1577 = !DILocalVariable(name: "result", scope: !1572, file: !2, line: 630, type: !115)
!1578 = !DILocalVariable(name: "status", scope: !1572, file: !2, line: 630, type: !60)
!1579 = distinct !DIAssignID()
!1580 = !DILocation(line: 0, scope: !1572)
!1581 = !DILocation(line: 630, column: 3, scope: !1572)
!1582 = !DILocation(line: 630, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 630, column: 3)
!1584 = !DILocation(line: 630, column: 3, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 630, column: 3)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 630, column: 3)
!1587 = !DILocation(line: 631, column: 1, scope: !1572)
!1588 = distinct !DISubprogram(name: "gsl_sf_ellint_RC", scope: !2, file: !2, line: 633, type: !1423, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DILocalVariable(name: "x", arg: 1, scope: !1588, file: !2, line: 633, type: !111)
!1591 = !DILocalVariable(name: "y", arg: 2, scope: !1588, file: !2, line: 633, type: !111)
!1592 = !DILocalVariable(name: "mode", arg: 3, scope: !1588, file: !2, line: 633, type: !112)
!1593 = !DILocalVariable(name: "result", scope: !1588, file: !2, line: 635, type: !115)
!1594 = !DILocalVariable(name: "status", scope: !1588, file: !2, line: 635, type: !60)
!1595 = distinct !DIAssignID()
!1596 = !DILocation(line: 0, scope: !1588)
!1597 = !DILocation(line: 635, column: 3, scope: !1588)
!1598 = !DILocation(line: 635, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 635, column: 3)
!1600 = !DILocation(line: 635, column: 3, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 635, column: 3)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 635, column: 3)
!1603 = !DILocation(line: 636, column: 1, scope: !1588)
!1604 = distinct !DISubprogram(name: "gsl_sf_ellint_RD", scope: !2, file: !2, line: 638, type: !1554, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611}
!1606 = !DILocalVariable(name: "x", arg: 1, scope: !1604, file: !2, line: 638, type: !111)
!1607 = !DILocalVariable(name: "y", arg: 2, scope: !1604, file: !2, line: 638, type: !111)
!1608 = !DILocalVariable(name: "z", arg: 3, scope: !1604, file: !2, line: 638, type: !111)
!1609 = !DILocalVariable(name: "mode", arg: 4, scope: !1604, file: !2, line: 638, type: !112)
!1610 = !DILocalVariable(name: "result", scope: !1604, file: !2, line: 640, type: !115)
!1611 = !DILocalVariable(name: "status", scope: !1604, file: !2, line: 640, type: !60)
!1612 = distinct !DIAssignID()
!1613 = !DILocation(line: 0, scope: !1604)
!1614 = !DILocation(line: 640, column: 3, scope: !1604)
!1615 = !DILocation(line: 640, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 640, column: 3)
!1617 = !DILocation(line: 640, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 640, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 640, column: 3)
!1620 = !DILocation(line: 641, column: 1, scope: !1604)
!1621 = distinct !DISubprogram(name: "gsl_sf_ellint_RF", scope: !2, file: !2, line: 643, type: !1554, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628}
!1623 = !DILocalVariable(name: "x", arg: 1, scope: !1621, file: !2, line: 643, type: !111)
!1624 = !DILocalVariable(name: "y", arg: 2, scope: !1621, file: !2, line: 643, type: !111)
!1625 = !DILocalVariable(name: "z", arg: 3, scope: !1621, file: !2, line: 643, type: !111)
!1626 = !DILocalVariable(name: "mode", arg: 4, scope: !1621, file: !2, line: 643, type: !112)
!1627 = !DILocalVariable(name: "result", scope: !1621, file: !2, line: 645, type: !115)
!1628 = !DILocalVariable(name: "status", scope: !1621, file: !2, line: 645, type: !60)
!1629 = distinct !DIAssignID()
!1630 = !DILocation(line: 0, scope: !1621)
!1631 = !DILocation(line: 645, column: 3, scope: !1621)
!1632 = !DILocation(line: 645, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 645, column: 3)
!1634 = !DILocation(line: 645, column: 3, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 645, column: 3)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 645, column: 3)
!1637 = !DILocation(line: 646, column: 1, scope: !1621)
!1638 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ", scope: !2, file: !2, line: 648, type: !1639, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!111, !111, !111, !111, !111, !112}
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1642 = !DILocalVariable(name: "x", arg: 1, scope: !1638, file: !2, line: 648, type: !111)
!1643 = !DILocalVariable(name: "y", arg: 2, scope: !1638, file: !2, line: 648, type: !111)
!1644 = !DILocalVariable(name: "z", arg: 3, scope: !1638, file: !2, line: 648, type: !111)
!1645 = !DILocalVariable(name: "p", arg: 4, scope: !1638, file: !2, line: 648, type: !111)
!1646 = !DILocalVariable(name: "mode", arg: 5, scope: !1638, file: !2, line: 648, type: !112)
!1647 = !DILocalVariable(name: "result", scope: !1638, file: !2, line: 650, type: !115)
!1648 = !DILocalVariable(name: "status", scope: !1638, file: !2, line: 650, type: !60)
!1649 = distinct !DIAssignID()
!1650 = !DILocation(line: 0, scope: !1638)
!1651 = !DILocation(line: 650, column: 3, scope: !1638)
!1652 = !DILocation(line: 650, column: 3, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 650, column: 3)
!1654 = !DILocation(line: 650, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 650, column: 3)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 650, column: 3)
!1657 = !DILocation(line: 651, column: 1, scope: !1638)
