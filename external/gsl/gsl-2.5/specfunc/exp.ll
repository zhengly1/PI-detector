; ModuleID = 'exp.c'
source_filename = "exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_result_e10_struct = type { double, double, i32 }

@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"exp.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_exp_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [33 x i8] c"gsl_sf_exp_mult_e(x, y, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [27 x i8] c"gsl_sf_expm1_e(x, &result)\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_exprel_e(x, &result)\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [30 x i8] c"gsl_sf_exprel_2_e(x, &result)\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [33 x i8] c"gsl_sf_exprel_n_e(n, x, &result)\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !49

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !102 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !115, metadata !DIExpression()), !dbg !117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !116, metadata !DIExpression()), !dbg !117
  %3 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !118
  br i1 %3, label %4, label %6, !dbg !120

4:                                                ; preds = %2
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !121, !tbaa !124
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !121
  store double 0x7FF0000000000000, ptr %5, align 8, !dbg !121, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #7, !dbg !130
  br label %15, !dbg !130

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !132
  br i1 %7, label %8, label %10, !dbg !134

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !135, !tbaa !124
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !135
  store double 0x10000000000000, ptr %9, align 8, !dbg !135, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #7, !dbg !138
  br label %15, !dbg !138

10:                                               ; preds = %6
  %11 = tail call double @exp(double noundef %0) #7, !dbg !140
  store double %11, ptr %1, align 8, !dbg !142, !tbaa !124
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !143
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !144
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !145
  store double %13, ptr %14, align 8, !dbg !146, !tbaa !129
  br label %15, !dbg !147

15:                                               ; preds = %4, %8, %10
  %16 = phi i32 [ 16, %4 ], [ 15, %8 ], [ 0, %10 ], !dbg !148
  ret i32 %16, !dbg !149
}

declare !dbg !150 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !155 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_e10_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !159 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !170, metadata !DIExpression()), !dbg !177
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !171, metadata !DIExpression()), !dbg !177
  %3 = fcmp ogt double %0, 0x41DFFFFFFF800000, !dbg !178
  br i1 %3, label %4, label %7, !dbg !179

4:                                                ; preds = %2
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !180, !tbaa !183
  %5 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 1, !dbg !180
  store double 0x7FF0000000000000, ptr %5, align 8, !dbg !180, !tbaa !186
  %6 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 2, !dbg !180
  store i32 0, ptr %6, align 8, !dbg !180, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 16) #7, !dbg !188
  br label %34, !dbg !188

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0xC1DFFFFFFFC00000, !dbg !190
  br i1 %8, label %9, label %12, !dbg !191

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !192, !tbaa !183
  %10 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 1, !dbg !192
  store double 0x10000000000000, ptr %10, align 8, !dbg !192, !tbaa !186
  %11 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 2, !dbg !192
  store i32 0, ptr %11, align 8, !dbg !192, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 15) #7, !dbg !195
  br label %34, !dbg !195

12:                                               ; preds = %7
  %13 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !197
  %14 = fcmp olt double %0, 0xC086232BDD7ABCD2
  %15 = or i1 %13, %14, !dbg !198
  br i1 %15, label %16, label %20, !dbg !198

16:                                               ; preds = %12
  %17 = fdiv double %0, 0x40026BB1BBB55516, !dbg !199
  %18 = tail call double @llvm.floor.f64(double %17), !dbg !200
  %19 = fptosi double %18 to i32, !dbg !201
  br label %20, !dbg !202

20:                                               ; preds = %12, %16
  %21 = phi i32 [ %19, %16 ], [ 0, %12 ], !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !172, metadata !DIExpression()), !dbg !203
  %22 = sitofp i32 %21 to double, !dbg !204
  %23 = fmul double %22, 0x40026BB1BBB55516, !dbg !205
  %24 = fsub double %0, %23, !dbg !206
  %25 = tail call double @exp(double noundef %24) #7, !dbg !207
  store double %25, ptr %1, align 8, !dbg !208, !tbaa !183
  %26 = tail call double @llvm.fabs.f64(double %0), !dbg !209
  %27 = fadd double %26, 1.000000e+00, !dbg !210
  %28 = fmul double %27, 2.000000e+00, !dbg !211
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !212
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !213
  %31 = fmul double %29, %30, !dbg !214
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 1, !dbg !215
  store double %31, ptr %32, align 8, !dbg !216, !tbaa !186
  %33 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 2, !dbg !217
  store i32 %21, ptr %33, align 8, !dbg !218, !tbaa !187
  br label %34

34:                                               ; preds = %4, %9, %20
  %35 = phi i32 [ 16, %4 ], [ 15, %9 ], [ 0, %20 ], !dbg !219
  ret i32 %35, !dbg !220
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !221 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !225, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata double %1, metadata !226, metadata !DIExpression()), !dbg !245
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !227, metadata !DIExpression()), !dbg !245
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !246
  tail call void @llvm.dbg.value(metadata double %4, metadata !228, metadata !DIExpression()), !dbg !245
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !247
  br i1 %5, label %6, label %7, !dbg !248

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !249
  br label %58, !dbg !251

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !252
  %9 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %10 = and i1 %8, %9, !dbg !253
  %11 = fcmp olt double %4, 0x5FE9999999999999
  %12 = and i1 %10, %11, !dbg !253
  %13 = fcmp ogt double %4, 0x2003333333333333
  %14 = and i1 %13, %12, !dbg !253
  br i1 %14, label %15, label %24, !dbg !253

15:                                               ; preds = %7
  %16 = tail call double @exp(double noundef %0) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata double %16, metadata !229, metadata !DIExpression()), !dbg !255
  %17 = fmul double %16, %1, !dbg !256
  store double %17, ptr %2, align 8, !dbg !257, !tbaa !124
  %18 = tail call double @llvm.fabs.f64(double %0), !dbg !258
  %19 = fadd double %18, 2.000000e+00, !dbg !259
  %20 = fmul double %19, 0x3CB0000000000000, !dbg !260
  %21 = tail call double @llvm.fabs.f64(double %17), !dbg !261
  %22 = fmul double %20, %21, !dbg !262
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !263
  store double %22, ptr %23, align 8, !dbg !264, !tbaa !129
  br label %58

24:                                               ; preds = %7
  %25 = tail call double @log(double noundef %4) #7, !dbg !265
  tail call void @llvm.dbg.value(metadata double %25, metadata !233, metadata !DIExpression()), !dbg !266
  %26 = fadd double %25, %0, !dbg !267
  tail call void @llvm.dbg.value(metadata double %26, metadata !235, metadata !DIExpression()), !dbg !266
  %27 = fcmp ogt double %26, 0x40862E2E8418F241, !dbg !268
  br i1 %27, label %28, label %30, !dbg !269

28:                                               ; preds = %24
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !270, !tbaa !124
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !270
  store double 0x7FF0000000000000, ptr %29, align 8, !dbg !270, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 16) #7, !dbg !273
  br label %58, !dbg !273

30:                                               ; preds = %24
  %31 = fcmp olt double %26, 0xC086231762997524, !dbg !275
  br i1 %31, label %32, label %34, !dbg !276

32:                                               ; preds = %30
  store double 0.000000e+00, ptr %2, align 8, !dbg !277, !tbaa !124
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !277
  store double 0x10000000000000, ptr %33, align 8, !dbg !277, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 15) #7, !dbg !280
  br label %58, !dbg !280

34:                                               ; preds = %30
  %35 = fcmp oge double %1, 0.000000e+00, !dbg !282
  tail call void @llvm.dbg.value(metadata double poison, metadata !236, metadata !DIExpression()), !dbg !283
  %36 = tail call double @llvm.floor.f64(double %0), !dbg !284
  tail call void @llvm.dbg.value(metadata double %36, metadata !240, metadata !DIExpression()), !dbg !283
  %37 = tail call double @llvm.floor.f64(double %25), !dbg !285
  tail call void @llvm.dbg.value(metadata double %37, metadata !241, metadata !DIExpression()), !dbg !283
  %38 = fsub double %0, %36, !dbg !286
  tail call void @llvm.dbg.value(metadata double %38, metadata !242, metadata !DIExpression()), !dbg !283
  %39 = fsub double %25, %37, !dbg !287
  tail call void @llvm.dbg.value(metadata double %39, metadata !243, metadata !DIExpression()), !dbg !283
  %40 = tail call double @llvm.fabs.f64(double %25), !dbg !288
  %41 = tail call double @llvm.fabs.f64(double %37), !dbg !289
  %42 = fadd double %40, %41, !dbg !290
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !291
  tail call void @llvm.dbg.value(metadata double %43, metadata !244, metadata !DIExpression()), !dbg !283
  %44 = fadd double %36, %37, !dbg !292
  %45 = tail call double @exp(double noundef %44) #7, !dbg !293
  %46 = fneg double %45, !dbg !294
  %47 = select i1 %35, double %45, double %46, !dbg !294
  %48 = fadd double %38, %39, !dbg !295
  %49 = tail call double @exp(double noundef %48) #7, !dbg !296
  %50 = fmul double %47, %49, !dbg !297
  store double %50, ptr %2, align 8, !dbg !298, !tbaa !124
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !299
  %52 = fmul double %43, %51, !dbg !300
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !301
  %54 = fadd double %44, 1.000000e+00, !dbg !302
  %55 = fmul double %54, 0x3CC0000000000000, !dbg !303
  %56 = fmul double %55, %51, !dbg !304
  %57 = fadd double %52, %56, !dbg !305
  store double %57, ptr %53, align 8, !dbg !305, !tbaa !129
  br label %58

58:                                               ; preds = %28, %32, %34, %15, %6
  %59 = phi i32 [ 0, %6 ], [ 0, %15 ], [ 16, %28 ], [ 15, %32 ], [ 0, %34 ], !dbg !306
  ret i32 %59, !dbg !307
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !308 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !309 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !313, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata double %1, metadata !314, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !315, metadata !DIExpression()), !dbg !331
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !332
  tail call void @llvm.dbg.value(metadata double %4, metadata !316, metadata !DIExpression()), !dbg !331
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !333
  br i1 %5, label %6, label %7, !dbg !334

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false), !dbg !335
  br label %61, !dbg !337

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !338
  %9 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %10 = and i1 %8, %9, !dbg !339
  %11 = fcmp olt double %4, 0x5FE9999999999999
  %12 = and i1 %10, %11, !dbg !339
  %13 = fcmp ogt double %4, 0x2003333333333333
  %14 = and i1 %13, %12, !dbg !339
  br i1 %14, label %15, label %25, !dbg !339

15:                                               ; preds = %7
  %16 = tail call double @exp(double noundef %0) #7, !dbg !340
  tail call void @llvm.dbg.value(metadata double %16, metadata !317, metadata !DIExpression()), !dbg !341
  %17 = fmul double %16, %1, !dbg !342
  store double %17, ptr %2, align 8, !dbg !343, !tbaa !183
  %18 = tail call double @llvm.fabs.f64(double %0), !dbg !344
  %19 = fadd double %18, 2.000000e+00, !dbg !345
  %20 = fmul double %19, 0x3CB0000000000000, !dbg !346
  %21 = tail call double @llvm.fabs.f64(double %17), !dbg !347
  %22 = fmul double %20, %21, !dbg !348
  %23 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !349
  store double %22, ptr %23, align 8, !dbg !350, !tbaa !186
  %24 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !351
  store i32 0, ptr %24, align 8, !dbg !352, !tbaa !187
  br label %61

25:                                               ; preds = %7
  %26 = tail call double @log(double noundef %4) #7, !dbg !353
  tail call void @llvm.dbg.value(metadata double %26, metadata !321, metadata !DIExpression()), !dbg !354
  %27 = fadd double %26, %0, !dbg !355
  %28 = fdiv double %27, 0x40026BB1BBB55516, !dbg !356
  tail call void @llvm.dbg.value(metadata double %28, metadata !323, metadata !DIExpression()), !dbg !354
  %29 = fcmp ogt double %28, 0x41DFFFFFFF800000, !dbg !357
  br i1 %29, label %30, label %33, !dbg !358

30:                                               ; preds = %25
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !359, !tbaa !183
  %31 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !359
  store double 0x7FF0000000000000, ptr %31, align 8, !dbg !359, !tbaa !186
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !359
  store i32 0, ptr %32, align 8, !dbg !359, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 207, i32 noundef 16) #7, !dbg !362
  br label %61, !dbg !362

33:                                               ; preds = %25
  %34 = fcmp olt double %28, 0xC1DFFFFFFFC00000, !dbg !364
  br i1 %34, label %35, label %38, !dbg !365

35:                                               ; preds = %33
  store double 0.000000e+00, ptr %2, align 8, !dbg !366, !tbaa !183
  %36 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !366
  store double 0x10000000000000, ptr %36, align 8, !dbg !366, !tbaa !186
  %37 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !366
  store i32 0, ptr %37, align 8, !dbg !366, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 15) #7, !dbg !369
  br label %61, !dbg !369

38:                                               ; preds = %33
  %39 = fcmp oge double %1, 0.000000e+00, !dbg !371
  tail call void @llvm.dbg.value(metadata double poison, metadata !324, metadata !DIExpression()), !dbg !372
  %40 = tail call double @llvm.floor.f64(double %28), !dbg !373
  %41 = fptosi double %40 to i32, !dbg !374
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !328, metadata !DIExpression()), !dbg !372
  %42 = sitofp i32 %41 to double, !dbg !375
  %43 = fsub double %28, %42, !dbg !376
  %44 = fmul double %43, 0x40026BB1BBB55516, !dbg !377
  tail call void @llvm.dbg.value(metadata double %44, metadata !329, metadata !DIExpression()), !dbg !372
  %45 = tail call double @llvm.fabs.f64(double %0), !dbg !378
  %46 = tail call double @llvm.fabs.f64(double %26), !dbg !379
  %47 = fadd double %45, %46, !dbg !380
  %48 = tail call double @llvm.fabs.f64(double %42), !dbg !381
  %49 = fmul double %48, 0x40026BB1BBB55516, !dbg !382
  %50 = fadd double %47, %49, !dbg !383
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !384
  tail call void @llvm.dbg.value(metadata double %51, metadata !330, metadata !DIExpression()), !dbg !372
  %52 = tail call double @exp(double noundef %44) #7, !dbg !385
  %53 = fneg double %52, !dbg !386
  %54 = select i1 %39, double %52, double %53, !dbg !386
  store double %54, ptr %2, align 8, !dbg !387, !tbaa !183
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !388
  %56 = fmul double %51, %55, !dbg !389
  %57 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !390
  %58 = fmul double %55, 0x3CC0000000000000, !dbg !391
  %59 = fadd double %56, %58, !dbg !392
  store double %59, ptr %57, align 8, !dbg !392, !tbaa !186
  %60 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !393
  store i32 %41, ptr %60, align 8, !dbg !394, !tbaa !187
  br label %61

61:                                               ; preds = %30, %35, %38, %15, %6
  %62 = phi i32 [ 0, %6 ], [ 0, %15 ], [ 16, %30 ], [ 15, %35 ], [ 0, %38 ], !dbg !395
  ret i32 %62, !dbg !396
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_err_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !397 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !401, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %1, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %2, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %3, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !405, metadata !DIExpression()), !dbg !424
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !425
  tail call void @llvm.dbg.value(metadata double %6, metadata !406, metadata !DIExpression()), !dbg !424
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !426
  br i1 %7, label %8, label %13, !dbg !427

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !428, !tbaa !124
  %9 = tail call double @exp(double noundef %0) #7, !dbg !430
  %10 = fmul double %9, %3, !dbg !431
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !432
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !433
  store double %11, ptr %12, align 8, !dbg !434, !tbaa !129
  br label %67, !dbg !435

13:                                               ; preds = %5
  %14 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !436
  %15 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %16 = and i1 %14, %15, !dbg !437
  %17 = fcmp olt double %6, 0x5FE9999999999999
  %18 = and i1 %16, %17, !dbg !437
  %19 = fcmp ogt double %6, 0x2003333333333333
  %20 = and i1 %19, %18, !dbg !437
  br i1 %20, label %21, label %33, !dbg !437

21:                                               ; preds = %13
  %22 = tail call double @exp(double noundef %0) #7, !dbg !438
  tail call void @llvm.dbg.value(metadata double %22, metadata !407, metadata !DIExpression()), !dbg !439
  %23 = fmul double %22, %2, !dbg !440
  store double %23, ptr %4, align 8, !dbg !441, !tbaa !124
  %24 = tail call double @llvm.fabs.f64(double %3), !dbg !442
  %25 = fmul double %1, %2, !dbg !443
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !444
  %27 = fadd double %24, %26, !dbg !445
  %28 = fmul double %27, %22, !dbg !446
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !447
  %30 = tail call double @llvm.fabs.f64(double %23), !dbg !448
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !449
  %32 = fadd double %28, %31, !dbg !450
  store double %32, ptr %29, align 8, !dbg !450, !tbaa !129
  br label %67

33:                                               ; preds = %13
  %34 = tail call double @log(double noundef %6) #7, !dbg !451
  tail call void @llvm.dbg.value(metadata double %34, metadata !411, metadata !DIExpression()), !dbg !452
  %35 = fadd double %34, %0, !dbg !453
  tail call void @llvm.dbg.value(metadata double %35, metadata !413, metadata !DIExpression()), !dbg !452
  %36 = fcmp ogt double %35, 0x40862E2E8418F241, !dbg !454
  br i1 %36, label %37, label %39, !dbg !455

37:                                               ; preds = %33
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !456, !tbaa !124
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !456
  store double 0x7FF0000000000000, ptr %38, align 8, !dbg !456, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 254, i32 noundef 16) #7, !dbg !459
  br label %67, !dbg !459

39:                                               ; preds = %33
  %40 = fcmp olt double %35, 0xC086231762997524, !dbg !461
  br i1 %40, label %41, label %43, !dbg !462

41:                                               ; preds = %39
  store double 0.000000e+00, ptr %4, align 8, !dbg !463, !tbaa !124
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !463
  store double 0x10000000000000, ptr %42, align 8, !dbg !463, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 15) #7, !dbg !466
  br label %67, !dbg !466

43:                                               ; preds = %39
  %44 = fcmp oge double %2, 0.000000e+00, !dbg !468
  tail call void @llvm.dbg.value(metadata double poison, metadata !414, metadata !DIExpression()), !dbg !469
  %45 = tail call double @llvm.floor.f64(double %0), !dbg !470
  tail call void @llvm.dbg.value(metadata double %45, metadata !418, metadata !DIExpression()), !dbg !469
  %46 = tail call double @llvm.floor.f64(double %34), !dbg !471
  tail call void @llvm.dbg.value(metadata double %46, metadata !419, metadata !DIExpression()), !dbg !469
  %47 = fsub double %0, %45, !dbg !472
  tail call void @llvm.dbg.value(metadata double %47, metadata !420, metadata !DIExpression()), !dbg !469
  %48 = fsub double %34, %46, !dbg !473
  tail call void @llvm.dbg.value(metadata double %48, metadata !421, metadata !DIExpression()), !dbg !469
  %49 = fadd double %45, %46, !dbg !474
  %50 = tail call double @exp(double noundef %49) #7, !dbg !475
  tail call void @llvm.dbg.value(metadata double %50, metadata !422, metadata !DIExpression()), !dbg !469
  %51 = fadd double %47, %48, !dbg !476
  %52 = tail call double @exp(double noundef %51) #7, !dbg !477
  tail call void @llvm.dbg.value(metadata double %52, metadata !423, metadata !DIExpression()), !dbg !469
  %53 = fneg double %50, !dbg !478
  %54 = select i1 %44, double %50, double %53, !dbg !478
  %55 = fmul double %54, %52, !dbg !479
  store double %55, ptr %4, align 8, !dbg !480, !tbaa !124
  %56 = fmul double %50, %52, !dbg !481
  %57 = fmul double %56, 2.000000e+00, !dbg !482
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !483
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !484
  %60 = fdiv double %3, %2, !dbg !485
  %61 = tail call double @llvm.fabs.f64(double %60), !dbg !486
  %62 = fmul double %61, %56, !dbg !487
  %63 = fadd double %62, %58, !dbg !488
  %64 = tail call double @llvm.fabs.f64(double %1), !dbg !489
  %65 = fmul double %64, %56, !dbg !490
  %66 = fadd double %65, %63, !dbg !491
  store double %66, ptr %59, align 8, !dbg !491, !tbaa !129
  br label %67

67:                                               ; preds = %37, %41, %43, %21, %8
  %68 = phi i32 [ 0, %8 ], [ 0, %21 ], [ 16, %37 ], [ 15, %41 ], [ 0, %43 ], !dbg !492
  ret i32 %68, !dbg !493
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_err_e10_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !494 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !498, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata double %1, metadata !499, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata double %2, metadata !500, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata double %3, metadata !501, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !518
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !519
  tail call void @llvm.dbg.value(metadata double %6, metadata !503, metadata !DIExpression()), !dbg !518
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !520
  br i1 %7, label %8, label %14, !dbg !521

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !522, !tbaa !183
  %9 = tail call double @exp(double noundef %0) #7, !dbg !524
  %10 = fmul double %9, %3, !dbg !525
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !526
  %12 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !527
  store double %11, ptr %12, align 8, !dbg !528, !tbaa !186
  %13 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !529
  store i32 0, ptr %13, align 8, !dbg !530, !tbaa !187
  br label %69, !dbg !531

14:                                               ; preds = %5
  %15 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !532
  %16 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %17 = and i1 %15, %16, !dbg !533
  %18 = fcmp olt double %6, 0x5FE9999999999999
  %19 = and i1 %17, %18, !dbg !533
  %20 = fcmp ogt double %6, 0x2003333333333333
  %21 = and i1 %20, %19, !dbg !533
  br i1 %21, label %22, label %35, !dbg !533

22:                                               ; preds = %14
  %23 = tail call double @exp(double noundef %0) #7, !dbg !534
  tail call void @llvm.dbg.value(metadata double %23, metadata !504, metadata !DIExpression()), !dbg !535
  %24 = fmul double %23, %2, !dbg !536
  store double %24, ptr %4, align 8, !dbg !537, !tbaa !183
  %25 = tail call double @llvm.fabs.f64(double %3), !dbg !538
  %26 = fmul double %1, %2, !dbg !539
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !540
  %28 = fadd double %25, %27, !dbg !541
  %29 = fmul double %28, %23, !dbg !542
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !543
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !544
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !545
  %33 = fadd double %29, %32, !dbg !546
  store double %33, ptr %30, align 8, !dbg !546, !tbaa !186
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !547
  store i32 0, ptr %34, align 8, !dbg !548, !tbaa !187
  br label %69

35:                                               ; preds = %14
  %36 = tail call double @log(double noundef %6) #7, !dbg !549
  tail call void @llvm.dbg.value(metadata double %36, metadata !508, metadata !DIExpression()), !dbg !550
  %37 = fadd double %36, %0, !dbg !551
  %38 = fdiv double %37, 0x40026BB1BBB55516, !dbg !552
  tail call void @llvm.dbg.value(metadata double %38, metadata !510, metadata !DIExpression()), !dbg !550
  %39 = fcmp ogt double %38, 0x41DFFFFFFF800000, !dbg !553
  br i1 %39, label %40, label %43, !dbg !554

40:                                               ; preds = %35
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !555, !tbaa !183
  %41 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !555
  store double 0x7FF0000000000000, ptr %41, align 8, !dbg !555, !tbaa !186
  %42 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !555
  store i32 0, ptr %42, align 8, !dbg !555, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 16) #7, !dbg !558
  br label %69, !dbg !558

43:                                               ; preds = %35
  %44 = fcmp olt double %38, 0xC1DFFFFFFFC00000, !dbg !560
  br i1 %44, label %45, label %48, !dbg !561

45:                                               ; preds = %43
  store double 0.000000e+00, ptr %4, align 8, !dbg !562, !tbaa !183
  %46 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !562
  store double 0x10000000000000, ptr %46, align 8, !dbg !562, !tbaa !186
  %47 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !562
  store i32 0, ptr %47, align 8, !dbg !562, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 307, i32 noundef 15) #7, !dbg !565
  br label %69, !dbg !565

48:                                               ; preds = %43
  %49 = fcmp oge double %2, 0.000000e+00, !dbg !567
  tail call void @llvm.dbg.value(metadata double poison, metadata !511, metadata !DIExpression()), !dbg !568
  %50 = tail call double @llvm.floor.f64(double %38), !dbg !569
  %51 = fptosi double %50 to i32, !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !515, metadata !DIExpression()), !dbg !568
  %52 = sitofp i32 %51 to double, !dbg !571
  %53 = fsub double %38, %52, !dbg !572
  %54 = fmul double %53, 0x40026BB1BBB55516, !dbg !573
  tail call void @llvm.dbg.value(metadata double %54, metadata !516, metadata !DIExpression()), !dbg !568
  %55 = fdiv double %3, %6, !dbg !574
  %56 = fadd double %55, %1, !dbg !575
  %57 = tail call double @llvm.fabs.f64(double %54), !dbg !576
  %58 = fmul double %57, 0x3CC0000000000000, !dbg !577
  %59 = fadd double %56, %58, !dbg !578
  tail call void @llvm.dbg.value(metadata double %59, metadata !517, metadata !DIExpression()), !dbg !568
  %60 = tail call double @exp(double noundef %54) #7, !dbg !579
  %61 = fneg double %60, !dbg !580
  %62 = select i1 %49, double %60, double %61, !dbg !580
  store double %62, ptr %4, align 8, !dbg !581, !tbaa !183
  %63 = tail call double @llvm.fabs.f64(double %60), !dbg !582
  %64 = fmul double %59, %63, !dbg !583
  %65 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !584
  %66 = fmul double %63, 0x3CC0000000000000, !dbg !585
  %67 = fadd double %64, %66, !dbg !586
  store double %67, ptr %65, align 8, !dbg !586, !tbaa !186
  %68 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !587
  store i32 %51, ptr %68, align 8, !dbg !588, !tbaa !187
  br label %69

69:                                               ; preds = %40, %45, %48, %22, %8
  %70 = phi i32 [ 0, %8 ], [ 0, %22 ], [ 16, %40 ], [ 15, %45 ], [ 0, %48 ], !dbg !589
  ret i32 %70, !dbg !590
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expm1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !591 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !593, metadata !DIExpression()), !dbg !596
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !594, metadata !DIExpression()), !dbg !596
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !597
  br i1 %3, label %4, label %6, !dbg !599

4:                                                ; preds = %2
  store double -1.000000e+00, ptr %1, align 8, !dbg !600, !tbaa !124
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !602
  store double 0x3CB0000000000000, ptr %5, align 8, !dbg !603, !tbaa !129
  br label %42, !dbg !604

6:                                                ; preds = %2
  %7 = fcmp olt double %0, -2.000000e-03, !dbg !605
  br i1 %7, label %8, label %14, !dbg !607

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #7, !dbg !608
  %10 = fadd double %9, -1.000000e+00, !dbg !610
  store double %10, ptr %1, align 8, !dbg !611, !tbaa !124
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !612
  %12 = fmul double %11, 0x3CC0000000000000, !dbg !613
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !614
  store double %12, ptr %13, align 8, !dbg !615, !tbaa !129
  br label %42, !dbg !616

14:                                               ; preds = %6
  %15 = fcmp olt double %0, 2.000000e-03, !dbg !617
  br i1 %15, label %16, label %32, !dbg !619

16:                                               ; preds = %14
  %17 = fmul double %0, 5.000000e-01, !dbg !620
  %18 = fdiv double %0, 3.000000e+00, !dbg !622
  %19 = fmul double %0, 2.500000e-01, !dbg !623
  %20 = fmul double %0, 2.000000e-01, !dbg !624
  %21 = fadd double %20, 1.000000e+00, !dbg !625
  %22 = fmul double %19, %21, !dbg !626
  %23 = fadd double %22, 1.000000e+00, !dbg !627
  %24 = fmul double %18, %23, !dbg !628
  %25 = fadd double %24, 1.000000e+00, !dbg !629
  %26 = fmul double %17, %25, !dbg !630
  %27 = fadd double %26, 1.000000e+00, !dbg !631
  %28 = fmul double %27, %0, !dbg !632
  store double %28, ptr %1, align 8, !dbg !633, !tbaa !124
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !634
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !635
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !636
  store double %30, ptr %31, align 8, !dbg !637, !tbaa !129
  br label %42, !dbg !638

32:                                               ; preds = %14
  %33 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !639
  br i1 %33, label %34, label %40, !dbg !641

34:                                               ; preds = %32
  %35 = tail call double @exp(double noundef %0) #7, !dbg !642
  %36 = fadd double %35, -1.000000e+00, !dbg !644
  store double %36, ptr %1, align 8, !dbg !645, !tbaa !124
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !646
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !647
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !648
  store double %38, ptr %39, align 8, !dbg !649, !tbaa !129
  br label %42, !dbg !650

40:                                               ; preds = %32
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !651, !tbaa !124
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !651
  store double 0x7FF0000000000000, ptr %41, align 8, !dbg !651, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 351, i32 noundef 16) #7, !dbg !654
  br label %42, !dbg !654

42:                                               ; preds = %40, %34, %16, %8, %4
  %43 = phi i32 [ 0, %4 ], [ 0, %8 ], [ 0, %16 ], [ 0, %34 ], [ 16, %40 ], !dbg !656
  ret i32 %43, !dbg !657
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !658 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !660, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !661, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !662, metadata !DIExpression()), !dbg !663
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !664
  br i1 %3, label %4, label %9, !dbg !666

4:                                                ; preds = %2
  %5 = fdiv double -1.000000e+00, %0, !dbg !667
  store double %5, ptr %1, align 8, !dbg !669, !tbaa !124
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !670
  %7 = fmul double %6, 0x3CB0000000000000, !dbg !671
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !672
  store double %7, ptr %8, align 8, !dbg !673, !tbaa !129
  br label %46, !dbg !674

9:                                                ; preds = %2
  %10 = fcmp olt double %0, -2.000000e-03, !dbg !675
  br i1 %10, label %11, label %18, !dbg !677

11:                                               ; preds = %9
  %12 = tail call double @exp(double noundef %0) #7, !dbg !678
  %13 = fadd double %12, -1.000000e+00, !dbg !680
  %14 = fdiv double %13, %0, !dbg !681
  store double %14, ptr %1, align 8, !dbg !682, !tbaa !124
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !683
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !684
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !685
  store double %16, ptr %17, align 8, !dbg !686, !tbaa !129
  br label %46, !dbg !687

18:                                               ; preds = %9
  %19 = fcmp olt double %0, 2.000000e-03, !dbg !688
  br i1 %19, label %20, label %35, !dbg !690

20:                                               ; preds = %18
  %21 = fmul double %0, 5.000000e-01, !dbg !691
  %22 = fdiv double %0, 3.000000e+00, !dbg !693
  %23 = fmul double %0, 2.500000e-01, !dbg !694
  %24 = fmul double %0, 2.000000e-01, !dbg !695
  %25 = fadd double %24, 1.000000e+00, !dbg !696
  %26 = fmul double %23, %25, !dbg !697
  %27 = fadd double %26, 1.000000e+00, !dbg !698
  %28 = fmul double %22, %27, !dbg !699
  %29 = fadd double %28, 1.000000e+00, !dbg !700
  %30 = fmul double %21, %29, !dbg !701
  %31 = fadd double %30, 1.000000e+00, !dbg !702
  store double %31, ptr %1, align 8, !dbg !703, !tbaa !124
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !704
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !705
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !706
  store double %33, ptr %34, align 8, !dbg !707, !tbaa !129
  br label %46, !dbg !708

35:                                               ; preds = %18
  %36 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !709
  br i1 %36, label %37, label %44, !dbg !711

37:                                               ; preds = %35
  %38 = tail call double @exp(double noundef %0) #7, !dbg !712
  %39 = fadd double %38, -1.000000e+00, !dbg !714
  %40 = fdiv double %39, %0, !dbg !715
  store double %40, ptr %1, align 8, !dbg !716, !tbaa !124
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !717
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !718
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !719
  store double %42, ptr %43, align 8, !dbg !720, !tbaa !129
  br label %46, !dbg !721

44:                                               ; preds = %35
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !722, !tbaa !124
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !722
  store double 0x7FF0000000000000, ptr %45, align 8, !dbg !722, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 381, i32 noundef 16) #7, !dbg !725
  br label %46, !dbg !725

46:                                               ; preds = %44, %37, %20, %11, %4
  %47 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 0, %20 ], [ 0, %37 ], [ 16, %44 ], !dbg !727
  ret i32 %47, !dbg !728
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !729 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !733, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !734, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !735, metadata !DIExpression()), !dbg !736
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !737
  br i1 %3, label %4, label %12, !dbg !739

4:                                                ; preds = %2
  %5 = fdiv double -2.000000e+00, %0, !dbg !740
  %6 = fdiv double 1.000000e+00, %0, !dbg !742
  %7 = fadd double %6, 1.000000e+00, !dbg !743
  %8 = fmul double %5, %7, !dbg !744
  store double %8, ptr %1, align 8, !dbg !745, !tbaa !124
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !746
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !747
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !748
  store double %10, ptr %11, align 8, !dbg !749, !tbaa !129
  br label %55, !dbg !750

12:                                               ; preds = %2
  %13 = fcmp olt double %0, -2.000000e-03, !dbg !751
  br i1 %13, label %14, label %24, !dbg !753

14:                                               ; preds = %12
  %15 = tail call double @exp(double noundef %0) #7, !dbg !754
  %16 = fadd double %15, -1.000000e+00, !dbg !756
  %17 = fsub double %16, %0, !dbg !757
  %18 = fmul double %17, 2.000000e+00, !dbg !758
  %19 = fmul double %0, %0, !dbg !759
  %20 = fdiv double %18, %19, !dbg !760
  store double %20, ptr %1, align 8, !dbg !761, !tbaa !124
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !762
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !763
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !764
  store double %22, ptr %23, align 8, !dbg !765, !tbaa !129
  br label %55, !dbg !766

24:                                               ; preds = %12
  %25 = fcmp olt double %0, 2.000000e-03, !dbg !767
  br i1 %25, label %26, label %41, !dbg !769

26:                                               ; preds = %24
  %27 = fmul double %0, 0x3FD5555555555555, !dbg !770
  %28 = fmul double %0, 2.500000e-01, !dbg !772
  %29 = fmul double %0, 2.000000e-01, !dbg !773
  %30 = fmul double %0, 0x3FC5555555555555, !dbg !774
  %31 = fadd double %30, 1.000000e+00, !dbg !775
  %32 = fmul double %29, %31, !dbg !776
  %33 = fadd double %32, 1.000000e+00, !dbg !777
  %34 = fmul double %28, %33, !dbg !778
  %35 = fadd double %34, 1.000000e+00, !dbg !779
  %36 = fmul double %27, %35, !dbg !780
  %37 = fadd double %36, 1.000000e+00, !dbg !781
  store double %37, ptr %1, align 8, !dbg !782, !tbaa !124
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !783
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !784
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !785
  store double %39, ptr %40, align 8, !dbg !786, !tbaa !129
  br label %55, !dbg !787

41:                                               ; preds = %24
  %42 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !788
  br i1 %42, label %43, label %53, !dbg !790

43:                                               ; preds = %41
  %44 = tail call double @exp(double noundef %0) #7, !dbg !791
  %45 = fadd double %44, -1.000000e+00, !dbg !793
  %46 = fsub double %45, %0, !dbg !794
  %47 = fmul double %46, 2.000000e+00, !dbg !795
  %48 = fmul double %0, %0, !dbg !796
  %49 = fdiv double %47, %48, !dbg !797
  store double %49, ptr %1, align 8, !dbg !798, !tbaa !124
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !799
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !800
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !801
  store double %51, ptr %52, align 8, !dbg !802, !tbaa !129
  br label %55, !dbg !803

53:                                               ; preds = %41
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !804, !tbaa !124
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !804
  store double 0x7FF0000000000000, ptr %54, align 8, !dbg !804, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 411, i32 noundef 16) #7, !dbg !807
  br label %55, !dbg !807

55:                                               ; preds = %53, %43, %26, %14, %4
  %56 = phi i32 [ 0, %4 ], [ 0, %14 ], [ 0, %26 ], [ 0, %43 ], [ 16, %53 ], !dbg !809
  ret i32 %56, !dbg !810
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_n_CF_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !811 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !813, metadata !DIExpression()), !dbg !816
  tail call void @llvm.dbg.value(metadata double %1, metadata !814, metadata !DIExpression()), !dbg !816
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !815, metadata !DIExpression()), !dbg !816
  %4 = tail call fastcc i32 @exprel_n_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !817, !range !818
  ret i32 %4, !dbg !819
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @exprel_n_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !820 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !822, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %1, metadata !823, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !824, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !825, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !826, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata i32 1, metadata !827, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !828, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !829, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !830, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !831, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !832, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !833, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double poison, metadata !834, metadata !DIExpression()), !dbg !844
  %4 = fadd double %0, 1.000000e+00, !dbg !845
  tail call void @llvm.dbg.value(metadata double %4, metadata !835, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !839, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !840, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata i32 2, metadata !827, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !828, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !829, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !830, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !831, metadata !DIExpression()), !dbg !844
  %5 = fmul double %1, 0.000000e+00, !dbg !846
  %6 = fsub double %4, %5, !dbg !847
  tail call void @llvm.dbg.value(metadata double %6, metadata !839, metadata !DIExpression()), !dbg !844
  %7 = fsub double %4, %1, !dbg !848
  tail call void @llvm.dbg.value(metadata double %7, metadata !840, metadata !DIExpression()), !dbg !844
  %8 = fdiv double %6, %7, !dbg !849
  tail call void @llvm.dbg.value(metadata double %8, metadata !838, metadata !DIExpression()), !dbg !844
  br label %9, !dbg !850

9:                                                ; preds = %52, %3
  %10 = phi double [ 1.000000e+00, %3 ], [ %53, %52 ], !dbg !844
  %11 = phi double [ 1.000000e+00, %3 ], [ %54, %52 ], !dbg !844
  %12 = phi double [ %8, %3 ], [ %57, %52 ], !dbg !844
  %13 = phi double [ %6, %3 ], [ %55, %52 ], !dbg !844
  %14 = phi double [ %7, %3 ], [ %56, %52 ], !dbg !844
  %15 = phi i32 [ 2, %3 ], [ %18, %52 ], !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !827, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %14, metadata !840, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %13, metadata !839, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %12, metadata !838, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %11, metadata !830, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %10, metadata !831, metadata !DIExpression()), !dbg !844
  %16 = icmp eq i32 %15, 5000, !dbg !851
  br i1 %16, label %62, label %17, !dbg !850

17:                                               ; preds = %9
  %18 = add nuw nsw i32 %15, 1, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !827, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %11, metadata !828, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %10, metadata !829, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %13, metadata !830, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %14, metadata !831, metadata !DIExpression()), !dbg !844
  %19 = and i32 %15, 1, !dbg !853
  %20 = icmp eq i32 %19, 0, !dbg !853
  br i1 %20, label %21, label %24, !dbg !853

21:                                               ; preds = %17
  %22 = lshr exact i32 %15, 1, !dbg !854
  %23 = sitofp i32 %22 to double, !dbg !855
  br label %30, !dbg !853

24:                                               ; preds = %17
  %25 = lshr exact i32 %18, 1, !dbg !856
  %26 = sitofp i32 %25 to double, !dbg !857
  %27 = fadd double %26, %0, !dbg !858
  %28 = fadd double %27, -1.000000e+00, !dbg !859
  %29 = fneg double %28, !dbg !860
  br label %30, !dbg !853

30:                                               ; preds = %24, %21
  %31 = phi double [ %23, %21 ], [ %29, %24 ]
  %32 = fmul double %31, %1, !dbg !853
  tail call void @llvm.dbg.value(metadata double %32, metadata !836, metadata !DIExpression()), !dbg !844
  %33 = sitofp i32 %18 to double, !dbg !861
  %34 = fadd double %33, %0, !dbg !862
  %35 = fadd double %34, -1.000000e+00, !dbg !863
  tail call void @llvm.dbg.value(metadata double %35, metadata !837, metadata !DIExpression()), !dbg !844
  %36 = fmul double %13, %35, !dbg !864
  %37 = fmul double %11, %32, !dbg !865
  %38 = fadd double %36, %37, !dbg !866
  tail call void @llvm.dbg.value(metadata double %38, metadata !839, metadata !DIExpression()), !dbg !844
  %39 = fmul double %14, %35, !dbg !867
  %40 = fmul double %10, %32, !dbg !868
  %41 = fadd double %39, %40, !dbg !869
  tail call void @llvm.dbg.value(metadata double %41, metadata !840, metadata !DIExpression()), !dbg !844
  %42 = tail call double @llvm.fabs.f64(double %38), !dbg !870
  %43 = fcmp ogt double %42, 0x5FEFFFFFFFFFFFFF, !dbg !872
  %44 = tail call double @llvm.fabs.f64(double %41)
  %45 = fcmp ogt double %44, 0x5FEFFFFFFFFFFFFF
  %46 = select i1 %43, i1 true, i1 %45, !dbg !873
  br i1 %46, label %47, label %52, !dbg !873

47:                                               ; preds = %30
  %48 = fdiv double %38, 0x5FEFFFFFFFFFFFFF, !dbg !874
  tail call void @llvm.dbg.value(metadata double %48, metadata !839, metadata !DIExpression()), !dbg !844
  %49 = fdiv double %41, 0x5FEFFFFFFFFFFFFF, !dbg !876
  tail call void @llvm.dbg.value(metadata double %49, metadata !840, metadata !DIExpression()), !dbg !844
  %50 = fdiv double %13, 0x5FEFFFFFFFFFFFFF, !dbg !877
  tail call void @llvm.dbg.value(metadata double %50, metadata !830, metadata !DIExpression()), !dbg !844
  %51 = fdiv double %14, 0x5FEFFFFFFFFFFFFF, !dbg !878
  tail call void @llvm.dbg.value(metadata double %51, metadata !831, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double poison, metadata !828, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double poison, metadata !829, metadata !DIExpression()), !dbg !844
  br label %52, !dbg !879

52:                                               ; preds = %30, %47
  %53 = phi double [ %51, %47 ], [ %14, %30 ], !dbg !880
  %54 = phi double [ %50, %47 ], [ %13, %30 ], !dbg !880
  %55 = phi double [ %48, %47 ], [ %38, %30 ], !dbg !880
  %56 = phi double [ %49, %47 ], [ %41, %30 ], !dbg !880
  tail call void @llvm.dbg.value(metadata double %56, metadata !840, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %55, metadata !839, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %54, metadata !830, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %53, metadata !831, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %12, metadata !841, metadata !DIExpression()), !dbg !880
  %57 = fdiv double %55, %56, !dbg !881
  tail call void @llvm.dbg.value(metadata double %57, metadata !838, metadata !DIExpression()), !dbg !844
  %58 = fdiv double %12, %57, !dbg !882
  tail call void @llvm.dbg.value(metadata double %58, metadata !843, metadata !DIExpression()), !dbg !880
  %59 = fadd double %58, -1.000000e+00, !dbg !883
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !885
  %61 = fcmp olt double %60, 0x3CC0000000000000, !dbg !886
  br i1 %61, label %62, label %9

62:                                               ; preds = %52, %9
  %63 = phi double [ %57, %52 ], [ %12, %9 ], !dbg !844
  %64 = phi i32 [ %18, %52 ], [ 5000, %9 ], !dbg !844
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !827, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata double %63, metadata !838, metadata !DIExpression()), !dbg !844
  store double %63, ptr %2, align 8, !dbg !887, !tbaa !124
  %65 = add nsw i32 %64, 1, !dbg !888
  %66 = sitofp i32 %65 to double, !dbg !888
  %67 = fmul double %66, 4.000000e+00, !dbg !889
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !890
  %69 = tail call double @llvm.fabs.f64(double %63), !dbg !891
  %70 = fmul double %69, %68, !dbg !892
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !893
  store double %70, ptr %71, align 8, !dbg !894, !tbaa !129
  %72 = icmp eq i32 %64, 5000, !dbg !895
  br i1 %72, label %73, label %74, !dbg !897

73:                                               ; preds = %62
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 11) #7, !dbg !898
  br label %74, !dbg !898

74:                                               ; preds = %62, %73
  %75 = phi i32 [ 11, %73 ], [ 0, %62 ], !dbg !900
  ret i32 %75, !dbg !901
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !902 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !944
  call void @llvm.dbg.assign(metadata i1 undef, metadata !909, metadata !DIExpression(), metadata !944, metadata ptr %4, metadata !DIExpression()), !dbg !945
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !946
  call void @llvm.dbg.assign(metadata i1 undef, metadata !925, metadata !DIExpression(), metadata !946, metadata ptr %5, metadata !DIExpression()), !dbg !947
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !932, metadata !DIExpression(), metadata !948, metadata ptr %6, metadata !DIExpression()), !dbg !949
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !950
  call void @llvm.dbg.assign(metadata i1 undef, metadata !933, metadata !DIExpression(), metadata !950, metadata ptr %7, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !906, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %1, metadata !907, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !908, metadata !DIExpression()), !dbg !951
  %8 = icmp slt i32 %0, 0, !dbg !952
  br i1 %8, label %9, label %11, !dbg !953

9:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !954, !tbaa !124
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !954
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !954, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 1) #7, !dbg !957
  br label %256, !dbg !957

11:                                               ; preds = %3
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !959
  br i1 %12, label %13, label %15, !dbg !960

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !961, !tbaa !124
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !963
  store double 0.000000e+00, ptr %14, align 8, !dbg !964, !tbaa !129
  br label %256, !dbg !965

15:                                               ; preds = %11
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !966
  %17 = sitofp i32 %0 to double, !dbg !967
  %18 = fmul double %17, 0x3ED965FEA53D6E41, !dbg !968
  %19 = fcmp olt double %16, %18, !dbg !969
  br i1 %19, label %20, label %31, !dbg !970

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %0, 1, !dbg !971
  %22 = sitofp i32 %21 to double, !dbg !973
  %23 = fdiv double %1, %22, !dbg !974
  %24 = add nuw nsw i32 %0, 2, !dbg !975
  %25 = sitofp i32 %24 to double, !dbg !976
  %26 = fdiv double %1, %25, !dbg !977
  %27 = fadd double %26, 1.000000e+00, !dbg !978
  %28 = fmul double %23, %27, !dbg !979
  %29 = fadd double %28, 1.000000e+00, !dbg !980
  store double %29, ptr %2, align 8, !dbg !981, !tbaa !124
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !982
  store double 0x3CC0000000000000, ptr %30, align 8, !dbg !983, !tbaa !129
  br label %256, !dbg !984

31:                                               ; preds = %15
  switch i32 %0, label %49 [
    i32 0, label %32
    i32 1, label %45
    i32 2, label %47
  ], !dbg !985

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata double %1, metadata !115, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %2, metadata !116, metadata !DIExpression()), !dbg !986
  %33 = fcmp ogt double %1, 0x40862E42FEFA39EF, !dbg !989
  br i1 %33, label %34, label %36, !dbg !990

34:                                               ; preds = %32
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !991, !tbaa !124
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !991
  store double 0x7FF0000000000000, ptr %35, align 8, !dbg !991, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #7, !dbg !992
  br label %256, !dbg !992

36:                                               ; preds = %32
  %37 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !993
  br i1 %37, label %38, label %40, !dbg !994

38:                                               ; preds = %36
  store double 0.000000e+00, ptr %2, align 8, !dbg !995, !tbaa !124
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !995
  store double 0x10000000000000, ptr %39, align 8, !dbg !995, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #7, !dbg !996
  br label %256, !dbg !996

40:                                               ; preds = %36
  %41 = tail call double @exp(double noundef %1) #7, !dbg !997
  store double %41, ptr %2, align 8, !dbg !998, !tbaa !124
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !999
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !1000
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1001
  store double %43, ptr %44, align 8, !dbg !1002, !tbaa !129
  br label %256, !dbg !1003

45:                                               ; preds = %31
  %46 = tail call i32 @gsl_sf_exprel_e(double noundef %1, ptr noundef %2), !dbg !1004, !range !1006
  br label %256, !dbg !1007

47:                                               ; preds = %31
  %48 = tail call i32 @gsl_sf_exprel_2_e(double noundef %1, ptr noundef %2), !dbg !1008, !range !1006
  br label %256, !dbg !1010

49:                                               ; preds = %31
  %50 = fcmp olt double %17, %1, !dbg !1011
  br i1 %50, label %51, label %185, !dbg !1012

51:                                               ; preds = %49
  %52 = fdiv double %1, %17, !dbg !1013
  %53 = tail call double @log(double noundef %52) #7, !dbg !1014
  %54 = fadd double %53, 1.000000e+00, !dbg !1015
  %55 = fmul double %54, %17, !dbg !1016
  %56 = fsub double %55, %1, !dbg !1017
  %57 = fcmp olt double %56, 0xC04205966F2B4F12, !dbg !1018
  br i1 %57, label %58, label %74, !dbg !1019

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1020
  %59 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %4) #7, !dbg !1021
  %60 = call double @log(double noundef %1) #7, !dbg !1022
  %61 = fmul double %60, %17, !dbg !1023
  tail call void @llvm.dbg.value(metadata double %61, metadata !921, metadata !DIExpression()), !dbg !945
  %62 = load double, ptr %4, align 8, !dbg !1024, !tbaa !124
  %63 = fadd double %62, %1, !dbg !1025
  %64 = fsub double %63, %61, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %64, metadata !919, metadata !DIExpression()), !dbg !945
  %65 = call double @llvm.fabs.f64(double %62), !dbg !1027
  %66 = fadd double %16, %65, !dbg !1028
  %67 = call double @llvm.fabs.f64(double %61), !dbg !1029
  %68 = fadd double %67, %66, !dbg !1030
  %69 = fmul double %68, 0x3CB0000000000000, !dbg !1031
  tail call void @llvm.dbg.value(metadata double %69, metadata !920, metadata !DIExpression()), !dbg !945
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1032
  %71 = load double, ptr %70, align 8, !dbg !1032, !tbaa !129
  %72 = fadd double %71, %69, !dbg !1033
  tail call void @llvm.dbg.value(metadata double %72, metadata !920, metadata !DIExpression()), !dbg !945
  %73 = call i32 @gsl_sf_exp_err_e(double noundef %64, double noundef %72, ptr noundef %2), !dbg !1034, !range !1006
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1035
  br label %256

74:                                               ; preds = %51
  %75 = tail call double @log(double noundef %1) #7, !dbg !1036
  tail call void @llvm.dbg.value(metadata double %75, metadata !922, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1037
  %76 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %5) #7, !dbg !1038
  %77 = load double, ptr %5, align 8, !dbg !1039, !tbaa !124
  %78 = call double @log(double noundef %17) #7, !dbg !1040
  tail call void @llvm.dbg.value(metadata double poison, metadata !926, metadata !DIExpression()), !dbg !947
  %79 = load double, ptr %5, align 8, !dbg !1041, !tbaa !124
  %80 = fadd double %79, %1, !dbg !1042
  %81 = fmul double %75, %17, !dbg !1043
  %82 = fsub double %80, %81, !dbg !1044
  tail call void @llvm.dbg.value(metadata double %82, metadata !927, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata double poison, metadata !928, metadata !DIExpression()), !dbg !947
  %83 = fcmp olt double %82, 0x40860642FEFA39EF, !dbg !1045
  br i1 %83, label %84, label %181, !dbg !1046

84:                                               ; preds = %74
  %85 = call double @llvm.fabs.f64(double %79), !dbg !1047
  %86 = fadd double %16, %85, !dbg !1048
  %87 = call double @llvm.fabs.f64(double %81), !dbg !1049
  %88 = fadd double %87, %86, !dbg !1050
  %89 = fmul double %88, 0x3CB0000000000000, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %89, metadata !928, metadata !DIExpression()), !dbg !947
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1052
  %91 = load double, ptr %90, align 8, !dbg !1052, !tbaa !129
  %92 = fadd double %89, %91, !dbg !1053
  tail call void @llvm.dbg.value(metadata double %92, metadata !928, metadata !DIExpression()), !dbg !947
  %93 = fsub double %77, %78, !dbg !1054
  tail call void @llvm.dbg.value(metadata double %93, metadata !926, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1055
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1056
  %94 = call i32 @gsl_sf_exp_err_e(double noundef %82, double noundef %92, ptr noundef nonnull %7), !dbg !1057, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !934, metadata !DIExpression()), !dbg !949
  %95 = add nsw i32 %0, -1, !dbg !1058
  %96 = sitofp i32 %95 to double, !dbg !1059
  %97 = fmul double %75, %96, !dbg !1060
  %98 = fsub double %97, %1, !dbg !1061
  %99 = fsub double %98, %93, !dbg !1062
  tail call void @llvm.dbg.value(metadata double %99, metadata !935, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !936, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 1, metadata !938, metadata !DIExpression()), !dbg !949
  %100 = add nsw i32 %0, -1, !dbg !1063
  %101 = add nsw i32 %0, -2, !dbg !1063
  %102 = and i32 %100, 3, !dbg !1063
  %103 = icmp ult i32 %101, 3, !dbg !1063
  br i1 %103, label %137, label %104, !dbg !1063

104:                                              ; preds = %84
  %105 = and i32 %100, -4, !dbg !1063
  br label %106, !dbg !1063

106:                                              ; preds = %106, %104
  %107 = phi i32 [ 1, %104 ], [ %134, %106 ]
  %108 = phi double [ 1.000000e+00, %104 ], [ %132, %106 ]
  %109 = phi double [ 1.000000e+00, %104 ], [ %133, %106 ]
  %110 = phi i32 [ 0, %104 ], [ %135, %106 ]
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %108, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %109, metadata !936, metadata !DIExpression()), !dbg !949
  %111 = sub nsw i32 %0, %107, !dbg !1065
  %112 = sitofp i32 %111 to double, !dbg !1068
  %113 = fdiv double %112, %1, !dbg !1069
  %114 = fmul double %108, %113, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %114, metadata !937, metadata !DIExpression()), !dbg !949
  %115 = fadd double %109, %114, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %115, metadata !936, metadata !DIExpression()), !dbg !949
  %116 = xor i32 %107, -1, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !938, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !938, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !949
  tail call void @llvm.dbg.value(metadata double %114, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %115, metadata !936, metadata !DIExpression()), !dbg !949
  %117 = add nsw i32 %116, %0, !dbg !1065
  %118 = sitofp i32 %117 to double, !dbg !1068
  %119 = fdiv double %118, %1, !dbg !1069
  %120 = fmul double %114, %119, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %120, metadata !937, metadata !DIExpression()), !dbg !949
  %121 = fadd double %115, %120, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %121, metadata !936, metadata !DIExpression()), !dbg !949
  %122 = add nuw nsw i32 %107, 2, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %120, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %121, metadata !936, metadata !DIExpression()), !dbg !949
  %123 = sub nsw i32 %0, %122, !dbg !1065
  %124 = sitofp i32 %123 to double, !dbg !1068
  %125 = fdiv double %124, %1, !dbg !1069
  %126 = fmul double %120, %125, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %126, metadata !937, metadata !DIExpression()), !dbg !949
  %127 = fadd double %121, %126, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %127, metadata !936, metadata !DIExpression()), !dbg !949
  %128 = add nuw nsw i32 %107, 3, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %126, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %127, metadata !936, metadata !DIExpression()), !dbg !949
  %129 = sub nsw i32 %0, %128, !dbg !1065
  %130 = sitofp i32 %129 to double, !dbg !1068
  %131 = fdiv double %130, %1, !dbg !1069
  %132 = fmul double %126, %131, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %132, metadata !937, metadata !DIExpression()), !dbg !949
  %133 = fadd double %127, %132, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %133, metadata !936, metadata !DIExpression()), !dbg !949
  %134 = add nuw nsw i32 %107, 4, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !938, metadata !DIExpression()), !dbg !949
  %135 = add i32 %110, 4, !dbg !1063
  %136 = icmp eq i32 %135, %105, !dbg !1063
  br i1 %136, label %137, label %106, !dbg !1063, !llvm.loop !1073

137:                                              ; preds = %106, %84
  %138 = phi double [ undef, %84 ], [ %133, %106 ]
  %139 = phi i32 [ 1, %84 ], [ %134, %106 ]
  %140 = phi double [ 1.000000e+00, %84 ], [ %132, %106 ]
  %141 = phi double [ 1.000000e+00, %84 ], [ %133, %106 ]
  %142 = icmp eq i32 %102, 0, !dbg !1063
  br i1 %142, label %156, label %143, !dbg !1063

143:                                              ; preds = %137, %143
  %144 = phi i32 [ %153, %143 ], [ %139, %137 ]
  %145 = phi double [ %151, %143 ], [ %140, %137 ]
  %146 = phi double [ %152, %143 ], [ %141, %137 ]
  %147 = phi i32 [ %154, %143 ], [ 0, %137 ]
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %145, metadata !937, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %146, metadata !936, metadata !DIExpression()), !dbg !949
  %148 = sub nsw i32 %0, %144, !dbg !1065
  %149 = sitofp i32 %148 to double, !dbg !1068
  %150 = fdiv double %149, %1, !dbg !1069
  %151 = fmul double %145, %150, !dbg !1070
  tail call void @llvm.dbg.value(metadata double %151, metadata !937, metadata !DIExpression()), !dbg !949
  %152 = fadd double %146, %151, !dbg !1071
  tail call void @llvm.dbg.value(metadata double %152, metadata !936, metadata !DIExpression()), !dbg !949
  %153 = add nuw nsw i32 %144, 1, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !938, metadata !DIExpression()), !dbg !949
  %154 = add i32 %147, 1, !dbg !1063
  %155 = icmp eq i32 %154, %102, !dbg !1063
  br i1 %155, label %156, label %143, !dbg !1063, !llvm.loop !1076

156:                                              ; preds = %143, %137
  %157 = phi double [ %138, %137 ], [ %152, %143 ], !dbg !1071
  %158 = call i32 @gsl_sf_exp_mult_e(double noundef %99, double noundef %157, ptr noundef nonnull %6), !dbg !1078, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %158, metadata !929, metadata !DIExpression()), !dbg !949
  %159 = icmp eq i32 %158, 0, !dbg !1079
  br i1 %159, label %160, label %178, !dbg !1081

160:                                              ; preds = %156
  %161 = load double, ptr %7, align 8, !dbg !1082, !tbaa !124
  %162 = load double, ptr %6, align 8, !dbg !1084, !tbaa !124
  %163 = fsub double 1.000000e+00, %162, !dbg !1085
  %164 = fmul double %161, %163, !dbg !1086
  store double %164, ptr %2, align 8, !dbg !1087, !tbaa !124
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1088
  %166 = load double, ptr %165, align 8, !dbg !1088, !tbaa !129
  %167 = fadd double %166, 0x3CC0000000000000, !dbg !1089
  %168 = fmul double %161, %167, !dbg !1090
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1091
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1092
  %171 = load double, ptr %170, align 8, !dbg !1092, !tbaa !129
  %172 = call double @llvm.fabs.f64(double %163), !dbg !1093
  %173 = fmul double %172, %171, !dbg !1094
  %174 = fadd double %168, %173, !dbg !1095
  %175 = call double @llvm.fabs.f64(double %164), !dbg !1096
  %176 = fmul double %175, 0x3CC0000000000000, !dbg !1097
  %177 = fadd double %176, %174, !dbg !1098
  store double %177, ptr %169, align 8, !dbg !1098, !tbaa !129
  br label %179, !dbg !1099

178:                                              ; preds = %156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1100
  br label %179, !dbg !1102

179:                                              ; preds = %178, %160
  %180 = phi i32 [ %94, %160 ], [ %158, %178 ], !dbg !1103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1104
  br label %183

181:                                              ; preds = %74
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1105, !tbaa !124
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1105
  store double 0x7FF0000000000000, ptr %182, align 8, !dbg !1105, !tbaa !129
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 16) #7, !dbg !1108
  br label %183, !dbg !1108

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ 16, %181 ], !dbg !1110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1111
  br label %256

185:                                              ; preds = %49
  %186 = fmul double %17, -1.000000e+01, !dbg !1112
  %187 = fcmp olt double %186, %1, !dbg !1113
  br i1 %187, label %195, label %188, !dbg !1114

188:                                              ; preds = %185
  %189 = add nsw i32 %0, -1, !dbg !1115
  %190 = add nsw i32 %0, -2, !dbg !1115
  %191 = and i32 %189, 3, !dbg !1115
  %192 = icmp ult i32 %190, 3, !dbg !1115
  br i1 %192, label %228, label %193, !dbg !1115

193:                                              ; preds = %188
  %194 = and i32 %189, -4, !dbg !1115
  br label %197, !dbg !1115

195:                                              ; preds = %185
  %196 = tail call fastcc i32 @exprel_n_CF(double noundef %17, double noundef %1, ptr noundef %2), !dbg !1117, !range !818
  br label %256, !dbg !1119

197:                                              ; preds = %197, %193
  %198 = phi i32 [ 1, %193 ], [ %225, %197 ]
  %199 = phi double [ 1.000000e+00, %193 ], [ %223, %197 ]
  %200 = phi double [ 1.000000e+00, %193 ], [ %224, %197 ]
  %201 = phi i32 [ 0, %193 ], [ %226, %197 ]
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %199, metadata !942, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %200, metadata !939, metadata !DIExpression()), !dbg !1120
  %202 = sub nsw i32 %0, %198, !dbg !1121
  %203 = sitofp i32 %202 to double, !dbg !1124
  %204 = fdiv double %203, %1, !dbg !1125
  %205 = fmul double %199, %204, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %205, metadata !942, metadata !DIExpression()), !dbg !1120
  %206 = fadd double %200, %205, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %206, metadata !939, metadata !DIExpression()), !dbg !1120
  %207 = xor i32 %198, -1, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !943, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !943, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %205, metadata !942, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %206, metadata !939, metadata !DIExpression()), !dbg !1120
  %208 = add nsw i32 %207, %0, !dbg !1121
  %209 = sitofp i32 %208 to double, !dbg !1124
  %210 = fdiv double %209, %1, !dbg !1125
  %211 = fmul double %205, %210, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %211, metadata !942, metadata !DIExpression()), !dbg !1120
  %212 = fadd double %206, %211, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %212, metadata !939, metadata !DIExpression()), !dbg !1120
  %213 = add nuw nsw i32 %198, 2, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %213, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %211, metadata !942, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %212, metadata !939, metadata !DIExpression()), !dbg !1120
  %214 = sub nsw i32 %0, %213, !dbg !1121
  %215 = sitofp i32 %214 to double, !dbg !1124
  %216 = fdiv double %215, %1, !dbg !1125
  %217 = fmul double %211, %216, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %217, metadata !942, metadata !DIExpression()), !dbg !1120
  %218 = fadd double %212, %217, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %218, metadata !939, metadata !DIExpression()), !dbg !1120
  %219 = add nuw nsw i32 %198, 3, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %219, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %217, metadata !942, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %218, metadata !939, metadata !DIExpression()), !dbg !1120
  %220 = sub nsw i32 %0, %219, !dbg !1121
  %221 = sitofp i32 %220 to double, !dbg !1124
  %222 = fdiv double %221, %1, !dbg !1125
  %223 = fmul double %217, %222, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %223, metadata !942, metadata !DIExpression()), !dbg !1120
  %224 = fadd double %218, %223, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %224, metadata !939, metadata !DIExpression()), !dbg !1120
  %225 = add nuw nsw i32 %198, 4, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %225, metadata !943, metadata !DIExpression()), !dbg !1120
  %226 = add i32 %201, 4, !dbg !1115
  %227 = icmp eq i32 %226, %194, !dbg !1115
  br i1 %227, label %228, label %197, !dbg !1115, !llvm.loop !1129

228:                                              ; preds = %197, %188
  %229 = phi double [ undef, %188 ], [ %224, %197 ]
  %230 = phi i32 [ 1, %188 ], [ %225, %197 ]
  %231 = phi double [ 1.000000e+00, %188 ], [ %223, %197 ]
  %232 = phi double [ 1.000000e+00, %188 ], [ %224, %197 ]
  %233 = icmp eq i32 %191, 0, !dbg !1115
  br i1 %233, label %247, label %234, !dbg !1115

234:                                              ; preds = %228, %234
  %235 = phi i32 [ %244, %234 ], [ %230, %228 ]
  %236 = phi double [ %242, %234 ], [ %231, %228 ]
  %237 = phi double [ %243, %234 ], [ %232, %228 ]
  %238 = phi i32 [ %245, %234 ], [ 0, %228 ]
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !943, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %236, metadata !942, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %237, metadata !939, metadata !DIExpression()), !dbg !1120
  %239 = sub nsw i32 %0, %235, !dbg !1121
  %240 = sitofp i32 %239 to double, !dbg !1124
  %241 = fdiv double %240, %1, !dbg !1125
  %242 = fmul double %236, %241, !dbg !1126
  tail call void @llvm.dbg.value(metadata double %242, metadata !942, metadata !DIExpression()), !dbg !1120
  %243 = fadd double %237, %242, !dbg !1127
  tail call void @llvm.dbg.value(metadata double %243, metadata !939, metadata !DIExpression()), !dbg !1120
  %244 = add nuw nsw i32 %235, 1, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %244, metadata !943, metadata !DIExpression()), !dbg !1120
  %245 = add i32 %238, 1, !dbg !1115
  %246 = icmp eq i32 %245, %191, !dbg !1115
  br i1 %246, label %247, label %234, !dbg !1115, !llvm.loop !1131

247:                                              ; preds = %234, %228
  %248 = phi double [ %229, %228 ], [ %243, %234 ], !dbg !1127
  %249 = sub nsw i32 0, %0, !dbg !1132
  %250 = sitofp i32 %249 to double, !dbg !1132
  %251 = fdiv double %250, %1, !dbg !1133
  %252 = fmul double %251, %248, !dbg !1134
  store double %252, ptr %2, align 8, !dbg !1135, !tbaa !124
  %253 = tail call double @llvm.fabs.f64(double %252), !dbg !1136
  %254 = fmul double %253, 0x3CC0000000000000, !dbg !1137
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1138
  store double %254, ptr %255, align 8, !dbg !1139, !tbaa !129
  br label %256

256:                                              ; preds = %40, %38, %34, %183, %9, %13, %20, %45, %47, %58, %195, %247
  %257 = phi i32 [ 1, %9 ], [ 0, %13 ], [ 0, %20 ], [ %46, %45 ], [ %48, %47 ], [ %73, %58 ], [ %184, %183 ], [ %196, %195 ], [ 0, %247 ], [ 16, %34 ], [ 15, %38 ], [ 0, %40 ], !dbg !1140
  ret i32 %257, !dbg !1141
}

declare !dbg !1142 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_err_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1148 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1150, metadata !DIExpression()), !dbg !1159
  tail call void @llvm.dbg.value(metadata double %1, metadata !1151, metadata !DIExpression()), !dbg !1159
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1152, metadata !DIExpression()), !dbg !1159
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !1160
  tail call void @llvm.dbg.value(metadata double %4, metadata !1153, metadata !DIExpression()), !dbg !1159
  %5 = fadd double %4, %0, !dbg !1161
  %6 = fcmp ogt double %5, 0x40862E42FEFA39EF, !dbg !1162
  br i1 %6, label %7, label %9, !dbg !1163

7:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1164, !tbaa !124
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1164
  store double 0x7FF0000000000000, ptr %8, align 8, !dbg !1164, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 16) #7, !dbg !1167
  br label %26, !dbg !1167

9:                                                ; preds = %3
  %10 = fsub double %0, %4, !dbg !1169
  %11 = fcmp olt double %10, 0xC086232BDD7ABCD2, !dbg !1170
  br i1 %11, label %12, label %14, !dbg !1171

12:                                               ; preds = %9
  store double 0.000000e+00, ptr %2, align 8, !dbg !1172, !tbaa !124
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1172
  store double 0x10000000000000, ptr %13, align 8, !dbg !1172, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 15) #7, !dbg !1175
  br label %26, !dbg !1175

14:                                               ; preds = %9
  %15 = tail call double @exp(double noundef %0) #7, !dbg !1177
  tail call void @llvm.dbg.value(metadata double %15, metadata !1154, metadata !DIExpression()), !dbg !1178
  %16 = tail call double @exp(double noundef %4) #7, !dbg !1179
  tail call void @llvm.dbg.value(metadata double %16, metadata !1158, metadata !DIExpression()), !dbg !1178
  store double %15, ptr %2, align 8, !dbg !1180, !tbaa !124
  %17 = fdiv double 1.000000e+00, %16, !dbg !1181
  %18 = fsub double %16, %17, !dbg !1182
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !1183, metadata !DIExpression()), !dbg !1190
  tail call void @llvm.dbg.value(metadata double %18, metadata !1189, metadata !DIExpression()), !dbg !1190
  %19 = fcmp olt double %18, 0x3CB0000000000000, !dbg !1192
  %20 = select i1 %19, double 0x3CB0000000000000, double %18, !dbg !1192
  %21 = fmul double %15, %20, !dbg !1193
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1194
  %23 = tail call double @llvm.fabs.f64(double %15), !dbg !1195
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !1196
  %25 = fadd double %24, %21, !dbg !1197
  store double %25, ptr %22, align 8, !dbg !1197, !tbaa !129
  br label %26

26:                                               ; preds = %14, %12, %7
  %27 = phi i32 [ 16, %7 ], [ 15, %12 ], [ 0, %14 ], !dbg !1198
  ret i32 %27, !dbg !1199
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_err_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1200 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1202, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata double %1, metadata !1203, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1204, metadata !DIExpression()), !dbg !1211
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !1212
  tail call void @llvm.dbg.value(metadata double %4, metadata !1205, metadata !DIExpression()), !dbg !1211
  %5 = fadd double %4, %0, !dbg !1213
  %6 = fcmp ogt double %5, 0x41DFFFFFFF800000, !dbg !1214
  br i1 %6, label %7, label %10, !dbg !1215

7:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1216, !tbaa !183
  %8 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1216
  store double 0x7FF0000000000000, ptr %8, align 8, !dbg !1216, !tbaa !186
  %9 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1216
  store i32 0, ptr %9, align 8, !dbg !1216, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 566, i32 noundef 16) #7, !dbg !1219
  br label %31, !dbg !1219

10:                                               ; preds = %3
  %11 = fsub double %0, %4, !dbg !1221
  %12 = fcmp olt double %11, 0xC1DFFFFFFFC00000, !dbg !1222
  br i1 %12, label %13, label %16, !dbg !1223

13:                                               ; preds = %10
  store double 0.000000e+00, ptr %2, align 8, !dbg !1224, !tbaa !183
  %14 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1224
  store double 0x10000000000000, ptr %14, align 8, !dbg !1224, !tbaa !186
  %15 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1224
  store i32 0, ptr %15, align 8, !dbg !1224, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 569, i32 noundef 15) #7, !dbg !1227
  br label %31, !dbg !1227

16:                                               ; preds = %10
  %17 = fdiv double %0, 0x40026BB1BBB55516, !dbg !1229
  %18 = tail call double @llvm.floor.f64(double %17), !dbg !1230
  %19 = fptosi double %18 to i32, !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1206, metadata !DIExpression()), !dbg !1232
  %20 = sitofp i32 %19 to double, !dbg !1233
  %21 = fmul double %20, 0x40026BB1BBB55516, !dbg !1234
  %22 = fsub double %0, %21, !dbg !1235
  %23 = tail call double @exp(double noundef %22) #7, !dbg !1236
  tail call void @llvm.dbg.value(metadata double %23, metadata !1210, metadata !DIExpression()), !dbg !1232
  store double %23, ptr %2, align 8, !dbg !1237, !tbaa !183
  %24 = tail call double @llvm.fabs.f64(double %0), !dbg !1238
  %25 = fadd double %24, 1.000000e+00, !dbg !1239
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !1240
  %27 = fadd double %4, %26, !dbg !1241
  %28 = fmul double %27, %23, !dbg !1242
  %29 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1243
  store double %28, ptr %29, align 8, !dbg !1244, !tbaa !186
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1245
  store i32 %19, ptr %30, align 8, !dbg !1246, !tbaa !187
  br label %31

31:                                               ; preds = %16, %13, %7
  %32 = phi i32 [ 16, %7 ], [ 15, %13 ], [ 0, %16 ], !dbg !1247
  ret i32 %32, !dbg !1248
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exp(double noundef %0) local_unnamed_addr #0 !dbg !1249 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1253, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata double %0, metadata !115, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !1257
  %2 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !1259
  br i1 %2, label %3, label %4, !dbg !1260

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1256
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #7, !dbg !1261
  br label %9, !dbg !1261

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1262
  br i1 %5, label %6, label %7, !dbg !1263

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1256
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #7, !dbg !1264
  br label %9, !dbg !1264

7:                                                ; preds = %4
  %8 = tail call double @exp(double noundef %0) #7, !dbg !1265
  tail call void @llvm.dbg.value(metadata double %8, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata double poison, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata double %8, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1255, metadata !DIExpression()), !dbg !1256
  br label %12, !dbg !1266

9:                                                ; preds = %3, %6
  %10 = phi double [ 0.000000e+00, %6 ], [ 0x7FF0000000000000, %3 ]
  %11 = phi i32 [ 15, %6 ], [ 16, %3 ]
  tail call void @llvm.dbg.value(metadata double %10, metadata !1254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1256
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1255, metadata !DIExpression()), !dbg !1256
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef %11) #7, !dbg !1267
  br label %12, !dbg !1267

12:                                               ; preds = %7, %9
  %13 = phi double [ %8, %7 ], [ %10, %9 ]
  ret double %13, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exp_mult(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1272 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1280
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1278, metadata !DIExpression(), metadata !1280, metadata ptr %3, metadata !DIExpression()), !dbg !1281
  tail call void @llvm.dbg.value(metadata double %0, metadata !1276, metadata !DIExpression()), !dbg !1281
  tail call void @llvm.dbg.value(metadata double %1, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1282
  %4 = call i32 @gsl_sf_exp_mult_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1282, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1279, metadata !DIExpression()), !dbg !1281
  %5 = icmp eq i32 %4, 0, !dbg !1283
  br i1 %5, label %7, label %6, !dbg !1282

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 593, i32 noundef %4) #7, !dbg !1285
  br label %7, !dbg !1285

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1282, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1288
  ret double %8, !dbg !1288
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expm1(double noundef %0) local_unnamed_addr #0 !dbg !1289 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1291, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata double %0, metadata !593, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata ptr undef, metadata !594, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !595, metadata !DIExpression()), !dbg !1295
  %2 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1297
  br i1 %2, label %29, label %3, !dbg !1298

3:                                                ; preds = %1
  %4 = fcmp olt double %0, -2.000000e-03, !dbg !1299
  br i1 %4, label %5, label %8, !dbg !1300

5:                                                ; preds = %3
  %6 = tail call double @exp(double noundef %0) #7, !dbg !1301
  %7 = fadd double %6, -1.000000e+00, !dbg !1302
  tail call void @llvm.dbg.value(metadata double %7, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  tail call void @llvm.dbg.value(metadata double poison, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  br label %29, !dbg !1303

8:                                                ; preds = %3
  %9 = fcmp olt double %0, 2.000000e-03, !dbg !1304
  br i1 %9, label %10, label %23, !dbg !1305

10:                                               ; preds = %8
  %11 = fmul double %0, 5.000000e-01, !dbg !1306
  %12 = fdiv double %0, 3.000000e+00, !dbg !1307
  %13 = fmul double %0, 2.500000e-01, !dbg !1308
  %14 = fmul double %0, 2.000000e-01, !dbg !1309
  %15 = fadd double %14, 1.000000e+00, !dbg !1310
  %16 = fmul double %13, %15, !dbg !1311
  %17 = fadd double %16, 1.000000e+00, !dbg !1312
  %18 = fmul double %12, %17, !dbg !1313
  %19 = fadd double %18, 1.000000e+00, !dbg !1314
  %20 = fmul double %11, %19, !dbg !1315
  %21 = fadd double %20, 1.000000e+00, !dbg !1316
  %22 = fmul double %21, %0, !dbg !1317
  tail call void @llvm.dbg.value(metadata double %22, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  tail call void @llvm.dbg.value(metadata double poison, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  br label %29, !dbg !1318

23:                                               ; preds = %8
  %24 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !1319
  br i1 %24, label %25, label %28, !dbg !1320

25:                                               ; preds = %23
  %26 = tail call double @exp(double noundef %0) #7, !dbg !1321
  %27 = fadd double %26, -1.000000e+00, !dbg !1322
  tail call void @llvm.dbg.value(metadata double %27, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  tail call void @llvm.dbg.value(metadata double poison, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  br label %29, !dbg !1323

28:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1294
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 351, i32 noundef 16) #7, !dbg !1324
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 16, metadata !1293, metadata !DIExpression()), !dbg !1294
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 16) #7, !dbg !1325
  br label %29, !dbg !1325

29:                                               ; preds = %1, %25, %10, %5, %28
  %30 = phi double [ 0x7FF0000000000000, %28 ], [ -1.000000e+00, %1 ], [ %27, %25 ], [ %22, %10 ], [ %7, %5 ]
  ret double %30, !dbg !1329
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel(double noundef %0) local_unnamed_addr #0 !dbg !1330 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1335
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1333, metadata !DIExpression(), metadata !1335, metadata ptr %2, metadata !DIExpression()), !dbg !1336
  tail call void @llvm.dbg.value(metadata double %0, metadata !1332, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1337
  %3 = call i32 @gsl_sf_exprel_e(double noundef %0, ptr noundef nonnull %2), !dbg !1337, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1334, metadata !DIExpression()), !dbg !1336
  %4 = icmp eq i32 %3, 0, !dbg !1338
  br i1 %4, label %6, label %5, !dbg !1337

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 603, i32 noundef %3) #7, !dbg !1340
  br label %6, !dbg !1340

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1337, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1343
  ret double %7, !dbg !1343
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel_2(double noundef %0) local_unnamed_addr #0 !dbg !1344 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1349
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1347, metadata !DIExpression(), metadata !1349, metadata ptr %2, metadata !DIExpression()), !dbg !1350
  tail call void @llvm.dbg.value(metadata double %0, metadata !1346, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1351
  %3 = call i32 @gsl_sf_exprel_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !1351, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1348, metadata !DIExpression()), !dbg !1350
  %4 = icmp eq i32 %3, 0, !dbg !1352
  br i1 %4, label %6, label %5, !dbg !1351

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 608, i32 noundef %3) #7, !dbg !1354
  br label %6, !dbg !1354

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1351, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1357
  ret double %7, !dbg !1357
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel_n(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1358 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1364, metadata !DIExpression(), metadata !1366, metadata ptr %3, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1362, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata double %1, metadata !1363, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1368
  %4 = call i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1368, !range !1006
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1365, metadata !DIExpression()), !dbg !1367
  %5 = icmp eq i32 %4, 0, !dbg !1369
  br i1 %5, label %7, label %6, !dbg !1368

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef %4) #7, !dbg !1371
  br label %7, !dbg !1371

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1368, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1374
  ret double %8, !dbg !1374
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!51}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "exp.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "d30250e2c21aff9225f44390800712af")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 426, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 13)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 33)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 27)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 28)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 30)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !29, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !9, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !92, globals: !93, splitDebugInlining: false, nameTableKind: None)
!52 = !{!53}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 39, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!57 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!58 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!59 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!60 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!61 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!62 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!63 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!64 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!65 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!66 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!67 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!68 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!69 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!70 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!71 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!72 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!73 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!74 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!75 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!76 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!77 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!78 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!79 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!80 = !DIEnumerator(name: "GSL_ESING", value: 21)
!81 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!82 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!83 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!84 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!85 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!86 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!87 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!88 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!89 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!90 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!91 = !DIEnumerator(name: "GSL_EOF", value: 32)
!92 = !{!55}
!93 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49}
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 2}
!100 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!101 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!102 = distinct !DISubprogram(name: "gsl_sf_exp_e", scope: !2, file: !2, line: 107, type: !103, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !114)
!103 = !DISubroutineType(types: !104)
!104 = !{!55, !105, !107}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !109, line: 41, baseType: !110)
!109 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !109, line: 37, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !109, line: 38, baseType: !106, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !110, file: !109, line: 39, baseType: !106, size: 64, offset: 64)
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "x", arg: 1, scope: !102, file: !2, line: 107, type: !105)
!116 = !DILocalVariable(name: "result", arg: 2, scope: !102, file: !2, line: 107, type: !107)
!117 = !DILocation(line: 0, scope: !102)
!118 = !DILocation(line: 109, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !102, file: !2, line: 109, column: 6)
!120 = !DILocation(line: 109, column: 6, scope: !102)
!121 = !DILocation(line: 110, column: 5, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 110, column: 5)
!123 = distinct !DILexicalBlock(scope: !119, file: !2, line: 109, column: 27)
!124 = !{!125, !126, i64 0}
!125 = !{!"gsl_sf_result_struct", !126, i64 0, !126, i64 8}
!126 = !{!"double", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !{!125, !126, i64 8}
!130 = !DILocation(line: 110, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !2, line: 110, column: 5)
!132 = !DILocation(line: 112, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !119, file: !2, line: 112, column: 11)
!134 = !DILocation(line: 112, column: 11, scope: !119)
!135 = !DILocation(line: 113, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 113, column: 5)
!137 = distinct !DILexicalBlock(scope: !133, file: !2, line: 112, column: 32)
!138 = !DILocation(line: 113, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !2, line: 113, column: 5)
!140 = !DILocation(line: 116, column: 19, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !2, line: 115, column: 8)
!142 = !DILocation(line: 116, column: 17, scope: !141)
!143 = !DILocation(line: 117, column: 43, scope: !141)
!144 = !DILocation(line: 117, column: 41, scope: !141)
!145 = !DILocation(line: 117, column: 13, scope: !141)
!146 = !DILocation(line: 117, column: 17, scope: !141)
!147 = !DILocation(line: 118, column: 5, scope: !141)
!148 = !DILocation(line: 0, scope: !119)
!149 = !DILocation(line: 120, column: 1, scope: !102)
!150 = !DISubprogram(name: "gsl_error", scope: !54, file: !54, line: 77, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !153, !55, !55}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!155 = !DISubprogram(name: "exp", scope: !156, file: !156, line: 95, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!157 = !DISubroutineType(types: !158)
!158 = !{!106, !106}
!159 = distinct !DISubprogram(name: "gsl_sf_exp_e10_e", scope: !2, file: !2, line: 122, type: !160, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !169)
!160 = !DISubroutineType(types: !161)
!161 = !{!55, !105, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !109, line: 51, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !109, line: 46, size: 192, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !109, line: 47, baseType: !106, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !109, line: 48, baseType: !106, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !164, file: !109, line: 49, baseType: !55, size: 32, offset: 128)
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(name: "x", arg: 1, scope: !159, file: !2, line: 122, type: !105)
!171 = !DILocalVariable(name: "result", arg: 2, scope: !159, file: !2, line: 122, type: !162)
!172 = !DILocalVariable(name: "N", scope: !173, file: !2, line: 131, type: !176)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 130, column: 8)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 127, column: 11)
!175 = distinct !DILexicalBlock(scope: !159, file: !2, line: 124, column: 6)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!177 = !DILocation(line: 0, scope: !159)
!178 = !DILocation(line: 124, column: 8, scope: !175)
!179 = !DILocation(line: 124, column: 6, scope: !159)
!180 = !DILocation(line: 125, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 125, column: 5)
!182 = distinct !DILexicalBlock(scope: !175, file: !2, line: 124, column: 21)
!183 = !{!184, !126, i64 0}
!184 = !{!"gsl_sf_result_e10_struct", !126, i64 0, !126, i64 8, !185, i64 16}
!185 = !{!"int", !127, i64 0}
!186 = !{!184, !126, i64 8}
!187 = !{!184, !185, i64 16}
!188 = !DILocation(line: 125, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !2, line: 125, column: 5)
!190 = !DILocation(line: 127, column: 13, scope: !174)
!191 = !DILocation(line: 127, column: 11, scope: !175)
!192 = !DILocation(line: 128, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 128, column: 5)
!194 = distinct !DILexicalBlock(scope: !174, file: !2, line: 127, column: 26)
!195 = !DILocation(line: 128, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !2, line: 128, column: 5)
!197 = !DILocation(line: 131, column: 22, scope: !173)
!198 = !DILocation(line: 131, column: 40, scope: !173)
!199 = !DILocation(line: 131, column: 79, scope: !173)
!200 = !DILocation(line: 131, column: 72, scope: !173)
!201 = !DILocation(line: 131, column: 66, scope: !173)
!202 = !DILocation(line: 131, column: 19, scope: !173)
!203 = !DILocation(line: 0, scope: !173)
!204 = !DILocation(line: 132, column: 25, scope: !173)
!205 = !DILocation(line: 132, column: 26, scope: !173)
!206 = !DILocation(line: 132, column: 24, scope: !173)
!207 = !DILocation(line: 132, column: 19, scope: !173)
!208 = !DILocation(line: 132, column: 17, scope: !173)
!209 = !DILocation(line: 133, column: 26, scope: !173)
!210 = !DILocation(line: 133, column: 33, scope: !173)
!211 = !DILocation(line: 133, column: 23, scope: !173)
!212 = !DILocation(line: 133, column: 39, scope: !173)
!213 = !DILocation(line: 133, column: 59, scope: !173)
!214 = !DILocation(line: 133, column: 57, scope: !173)
!215 = !DILocation(line: 133, column: 13, scope: !173)
!216 = !DILocation(line: 133, column: 17, scope: !173)
!217 = !DILocation(line: 134, column: 13, scope: !173)
!218 = !DILocation(line: 134, column: 17, scope: !173)
!219 = !DILocation(line: 0, scope: !175)
!220 = !DILocation(line: 137, column: 1, scope: !159)
!221 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !2, file: !2, line: 140, type: !222, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{!55, !105, !105, !107}
!224 = !{!225, !226, !227, !228, !229, !233, !235, !236, !240, !241, !242, !243, !244}
!225 = !DILocalVariable(name: "x", arg: 1, scope: !221, file: !2, line: 140, type: !105)
!226 = !DILocalVariable(name: "y", arg: 2, scope: !221, file: !2, line: 140, type: !105)
!227 = !DILocalVariable(name: "result", arg: 3, scope: !221, file: !2, line: 140, type: !107)
!228 = !DILocalVariable(name: "ay", scope: !221, file: !2, line: 142, type: !105)
!229 = !DILocalVariable(name: "ex", scope: !230, file: !2, line: 152, type: !105)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 151, column: 7)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 149, column: 14)
!232 = distinct !DILexicalBlock(scope: !221, file: !2, line: 144, column: 6)
!233 = !DILocalVariable(name: "ly", scope: !234, file: !2, line: 158, type: !105)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 157, column: 8)
!235 = !DILocalVariable(name: "lnr", scope: !234, file: !2, line: 159, type: !105)
!236 = !DILocalVariable(name: "sy", scope: !237, file: !2, line: 168, type: !105)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 167, column: 10)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 164, column: 13)
!239 = distinct !DILexicalBlock(scope: !234, file: !2, line: 161, column: 8)
!240 = !DILocalVariable(name: "M", scope: !237, file: !2, line: 169, type: !105)
!241 = !DILocalVariable(name: "N", scope: !237, file: !2, line: 170, type: !105)
!242 = !DILocalVariable(name: "a", scope: !237, file: !2, line: 171, type: !105)
!243 = !DILocalVariable(name: "b", scope: !237, file: !2, line: 172, type: !105)
!244 = !DILocalVariable(name: "berr", scope: !237, file: !2, line: 173, type: !105)
!245 = !DILocation(line: 0, scope: !221)
!246 = !DILocation(line: 142, column: 22, scope: !221)
!247 = !DILocation(line: 144, column: 8, scope: !232)
!248 = !DILocation(line: 144, column: 6, scope: !221)
!249 = !DILocation(line: 146, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !232, file: !2, line: 144, column: 16)
!251 = !DILocation(line: 147, column: 5, scope: !250)
!252 = !DILocation(line: 149, column: 18, scope: !231)
!253 = !DILocation(line: 149, column: 42, scope: !231)
!254 = !DILocation(line: 152, column: 23, scope: !230)
!255 = !DILocation(line: 0, scope: !230)
!256 = !DILocation(line: 153, column: 21, scope: !230)
!257 = !DILocation(line: 153, column: 17, scope: !230)
!258 = !DILocation(line: 154, column: 26, scope: !230)
!259 = !DILocation(line: 154, column: 24, scope: !230)
!260 = !DILocation(line: 154, column: 35, scope: !230)
!261 = !DILocation(line: 154, column: 55, scope: !230)
!262 = !DILocation(line: 154, column: 53, scope: !230)
!263 = !DILocation(line: 154, column: 13, scope: !230)
!264 = !DILocation(line: 154, column: 17, scope: !230)
!265 = !DILocation(line: 158, column: 24, scope: !234)
!266 = !DILocation(line: 0, scope: !234)
!267 = !DILocation(line: 159, column: 26, scope: !234)
!268 = !DILocation(line: 161, column: 12, scope: !239)
!269 = !DILocation(line: 161, column: 8, scope: !234)
!270 = !DILocation(line: 162, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 162, column: 7)
!272 = distinct !DILexicalBlock(scope: !239, file: !2, line: 161, column: 38)
!273 = !DILocation(line: 162, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !2, line: 162, column: 7)
!275 = !DILocation(line: 164, column: 17, scope: !238)
!276 = !DILocation(line: 164, column: 13, scope: !239)
!277 = !DILocation(line: 165, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !2, line: 165, column: 7)
!279 = distinct !DILexicalBlock(scope: !238, file: !2, line: 164, column: 43)
!280 = !DILocation(line: 165, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !2, line: 165, column: 7)
!282 = !DILocation(line: 168, column: 27, scope: !237)
!283 = !DILocation(line: 0, scope: !237)
!284 = !DILocation(line: 169, column: 27, scope: !237)
!285 = !DILocation(line: 170, column: 27, scope: !237)
!286 = !DILocation(line: 171, column: 30, scope: !237)
!287 = !DILocation(line: 172, column: 30, scope: !237)
!288 = !DILocation(line: 173, column: 52, scope: !237)
!289 = !DILocation(line: 173, column: 63, scope: !237)
!290 = !DILocation(line: 173, column: 61, scope: !237)
!291 = !DILocation(line: 173, column: 49, scope: !237)
!292 = !DILocation(line: 174, column: 32, scope: !237)
!293 = !DILocation(line: 174, column: 27, scope: !237)
!294 = !DILocation(line: 174, column: 25, scope: !237)
!295 = !DILocation(line: 174, column: 43, scope: !237)
!296 = !DILocation(line: 174, column: 38, scope: !237)
!297 = !DILocation(line: 174, column: 36, scope: !237)
!298 = !DILocation(line: 174, column: 20, scope: !237)
!299 = !DILocation(line: 175, column: 29, scope: !237)
!300 = !DILocation(line: 175, column: 27, scope: !237)
!301 = !DILocation(line: 175, column: 15, scope: !237)
!302 = !DILocation(line: 176, column: 53, scope: !237)
!303 = !DILocation(line: 176, column: 44, scope: !237)
!304 = !DILocation(line: 176, column: 60, scope: !237)
!305 = !DILocation(line: 176, column: 19, scope: !237)
!306 = !DILocation(line: 0, scope: !232)
!307 = !DILocation(line: 180, column: 1, scope: !221)
!308 = !DISubprogram(name: "log", scope: !156, file: !156, line: 104, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e10_e", scope: !2, file: !2, line: 183, type: !310, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!55, !105, !105, !162}
!312 = !{!313, !314, !315, !316, !317, !321, !323, !324, !328, !329, !330}
!313 = !DILocalVariable(name: "x", arg: 1, scope: !309, file: !2, line: 183, type: !105)
!314 = !DILocalVariable(name: "y", arg: 2, scope: !309, file: !2, line: 183, type: !105)
!315 = !DILocalVariable(name: "result", arg: 3, scope: !309, file: !2, line: 183, type: !162)
!316 = !DILocalVariable(name: "ay", scope: !309, file: !2, line: 185, type: !105)
!317 = !DILocalVariable(name: "ex", scope: !318, file: !2, line: 196, type: !105)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 195, column: 7)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 193, column: 14)
!320 = distinct !DILexicalBlock(scope: !309, file: !2, line: 187, column: 6)
!321 = !DILocalVariable(name: "ly", scope: !322, file: !2, line: 203, type: !105)
!322 = distinct !DILexicalBlock(scope: !319, file: !2, line: 202, column: 8)
!323 = !DILocalVariable(name: "l10_val", scope: !322, file: !2, line: 204, type: !105)
!324 = !DILocalVariable(name: "sy", scope: !325, file: !2, line: 213, type: !105)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 212, column: 10)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 209, column: 13)
!327 = distinct !DILexicalBlock(scope: !322, file: !2, line: 206, column: 8)
!328 = !DILocalVariable(name: "N", scope: !325, file: !2, line: 214, type: !176)
!329 = !DILocalVariable(name: "arg_val", scope: !325, file: !2, line: 215, type: !105)
!330 = !DILocalVariable(name: "arg_err", scope: !325, file: !2, line: 216, type: !105)
!331 = !DILocation(line: 0, scope: !309)
!332 = !DILocation(line: 185, column: 22, scope: !309)
!333 = !DILocation(line: 187, column: 8, scope: !320)
!334 = !DILocation(line: 187, column: 6, scope: !309)
!335 = !DILocation(line: 189, column: 17, scope: !336)
!336 = distinct !DILexicalBlock(scope: !320, file: !2, line: 187, column: 16)
!337 = !DILocation(line: 191, column: 5, scope: !336)
!338 = !DILocation(line: 193, column: 18, scope: !319)
!339 = !DILocation(line: 193, column: 42, scope: !319)
!340 = !DILocation(line: 196, column: 23, scope: !318)
!341 = !DILocation(line: 0, scope: !318)
!342 = !DILocation(line: 197, column: 21, scope: !318)
!343 = !DILocation(line: 197, column: 17, scope: !318)
!344 = !DILocation(line: 198, column: 26, scope: !318)
!345 = !DILocation(line: 198, column: 24, scope: !318)
!346 = !DILocation(line: 198, column: 35, scope: !318)
!347 = !DILocation(line: 198, column: 55, scope: !318)
!348 = !DILocation(line: 198, column: 53, scope: !318)
!349 = !DILocation(line: 198, column: 13, scope: !318)
!350 = !DILocation(line: 198, column: 17, scope: !318)
!351 = !DILocation(line: 199, column: 13, scope: !318)
!352 = !DILocation(line: 199, column: 17, scope: !318)
!353 = !DILocation(line: 203, column: 24, scope: !322)
!354 = !DILocation(line: 0, scope: !322)
!355 = !DILocation(line: 204, column: 31, scope: !322)
!356 = !DILocation(line: 204, column: 36, scope: !322)
!357 = !DILocation(line: 206, column: 16, scope: !327)
!358 = !DILocation(line: 206, column: 8, scope: !322)
!359 = !DILocation(line: 207, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 207, column: 7)
!361 = distinct !DILexicalBlock(scope: !327, file: !2, line: 206, column: 29)
!362 = !DILocation(line: 207, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !2, line: 207, column: 7)
!364 = !DILocation(line: 209, column: 21, scope: !326)
!365 = !DILocation(line: 209, column: 13, scope: !327)
!366 = !DILocation(line: 210, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 210, column: 7)
!368 = distinct !DILexicalBlock(scope: !326, file: !2, line: 209, column: 34)
!369 = !DILocation(line: 210, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !2, line: 210, column: 7)
!371 = !DILocation(line: 213, column: 26, scope: !325)
!372 = !DILocation(line: 0, scope: !325)
!373 = !DILocation(line: 214, column: 32, scope: !325)
!374 = !DILocation(line: 214, column: 26, scope: !325)
!375 = !DILocation(line: 215, column: 41, scope: !325)
!376 = !DILocation(line: 215, column: 39, scope: !325)
!377 = !DILocation(line: 215, column: 44, scope: !325)
!378 = !DILocation(line: 216, column: 55, scope: !325)
!379 = !DILocation(line: 216, column: 65, scope: !325)
!380 = !DILocation(line: 216, column: 63, scope: !325)
!381 = !DILocation(line: 216, column: 83, scope: !325)
!382 = !DILocation(line: 216, column: 82, scope: !325)
!383 = !DILocation(line: 216, column: 74, scope: !325)
!384 = !DILocation(line: 216, column: 52, scope: !325)
!385 = !DILocation(line: 218, column: 27, scope: !325)
!386 = !DILocation(line: 218, column: 25, scope: !325)
!387 = !DILocation(line: 218, column: 20, scope: !325)
!388 = !DILocation(line: 219, column: 32, scope: !325)
!389 = !DILocation(line: 219, column: 30, scope: !325)
!390 = !DILocation(line: 219, column: 15, scope: !325)
!391 = !DILocation(line: 220, column: 44, scope: !325)
!392 = !DILocation(line: 220, column: 19, scope: !325)
!393 = !DILocation(line: 221, column: 15, scope: !325)
!394 = !DILocation(line: 221, column: 19, scope: !325)
!395 = !DILocation(line: 0, scope: !320)
!396 = !DILocation(line: 226, column: 1, scope: !309)
!397 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !2, file: !2, line: 229, type: !398, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!55, !105, !105, !105, !105, !107}
!400 = !{!401, !402, !403, !404, !405, !406, !407, !411, !413, !414, !418, !419, !420, !421, !422, !423}
!401 = !DILocalVariable(name: "x", arg: 1, scope: !397, file: !2, line: 229, type: !105)
!402 = !DILocalVariable(name: "dx", arg: 2, scope: !397, file: !2, line: 229, type: !105)
!403 = !DILocalVariable(name: "y", arg: 3, scope: !397, file: !2, line: 230, type: !105)
!404 = !DILocalVariable(name: "dy", arg: 4, scope: !397, file: !2, line: 230, type: !105)
!405 = !DILocalVariable(name: "result", arg: 5, scope: !397, file: !2, line: 231, type: !107)
!406 = !DILocalVariable(name: "ay", scope: !397, file: !2, line: 233, type: !105)
!407 = !DILocalVariable(name: "ex", scope: !408, file: !2, line: 243, type: !106)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 242, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 240, column: 14)
!410 = distinct !DILexicalBlock(scope: !397, file: !2, line: 235, column: 6)
!411 = !DILocalVariable(name: "ly", scope: !412, file: !2, line: 250, type: !105)
!412 = distinct !DILexicalBlock(scope: !409, file: !2, line: 249, column: 8)
!413 = !DILocalVariable(name: "lnr", scope: !412, file: !2, line: 251, type: !105)
!414 = !DILocalVariable(name: "sy", scope: !415, file: !2, line: 260, type: !105)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 259, column: 10)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 256, column: 13)
!417 = distinct !DILexicalBlock(scope: !412, file: !2, line: 253, column: 8)
!418 = !DILocalVariable(name: "M", scope: !415, file: !2, line: 261, type: !105)
!419 = !DILocalVariable(name: "N", scope: !415, file: !2, line: 262, type: !105)
!420 = !DILocalVariable(name: "a", scope: !415, file: !2, line: 263, type: !105)
!421 = !DILocalVariable(name: "b", scope: !415, file: !2, line: 264, type: !105)
!422 = !DILocalVariable(name: "eMN", scope: !415, file: !2, line: 265, type: !105)
!423 = !DILocalVariable(name: "eab", scope: !415, file: !2, line: 266, type: !105)
!424 = !DILocation(line: 0, scope: !397)
!425 = !DILocation(line: 233, column: 22, scope: !397)
!426 = !DILocation(line: 235, column: 8, scope: !410)
!427 = !DILocation(line: 235, column: 6, scope: !397)
!428 = !DILocation(line: 236, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !410, file: !2, line: 235, column: 16)
!430 = !DILocation(line: 237, column: 29, scope: !429)
!431 = !DILocation(line: 237, column: 27, scope: !429)
!432 = !DILocation(line: 237, column: 19, scope: !429)
!433 = !DILocation(line: 237, column: 13, scope: !429)
!434 = !DILocation(line: 237, column: 17, scope: !429)
!435 = !DILocation(line: 238, column: 5, scope: !429)
!436 = !DILocation(line: 240, column: 18, scope: !409)
!437 = !DILocation(line: 240, column: 42, scope: !409)
!438 = !DILocation(line: 243, column: 17, scope: !408)
!439 = !DILocation(line: 0, scope: !408)
!440 = !DILocation(line: 244, column: 22, scope: !408)
!441 = !DILocation(line: 244, column: 18, scope: !408)
!442 = !DILocation(line: 245, column: 26, scope: !408)
!443 = !DILocation(line: 245, column: 43, scope: !408)
!444 = !DILocation(line: 245, column: 37, scope: !408)
!445 = !DILocation(line: 245, column: 35, scope: !408)
!446 = !DILocation(line: 245, column: 23, scope: !408)
!447 = !DILocation(line: 245, column: 13, scope: !408)
!448 = !DILocation(line: 246, column: 44, scope: !408)
!449 = !DILocation(line: 246, column: 42, scope: !408)
!450 = !DILocation(line: 246, column: 17, scope: !408)
!451 = !DILocation(line: 250, column: 24, scope: !412)
!452 = !DILocation(line: 0, scope: !412)
!453 = !DILocation(line: 251, column: 26, scope: !412)
!454 = !DILocation(line: 253, column: 12, scope: !417)
!455 = !DILocation(line: 253, column: 8, scope: !412)
!456 = !DILocation(line: 254, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 254, column: 7)
!458 = distinct !DILexicalBlock(scope: !417, file: !2, line: 253, column: 38)
!459 = !DILocation(line: 254, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !2, line: 254, column: 7)
!461 = !DILocation(line: 256, column: 17, scope: !416)
!462 = !DILocation(line: 256, column: 13, scope: !417)
!463 = !DILocation(line: 257, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 257, column: 7)
!465 = distinct !DILexicalBlock(scope: !416, file: !2, line: 256, column: 43)
!466 = !DILocation(line: 257, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !2, line: 257, column: 7)
!468 = !DILocation(line: 260, column: 26, scope: !415)
!469 = !DILocation(line: 0, scope: !415)
!470 = !DILocation(line: 261, column: 26, scope: !415)
!471 = !DILocation(line: 262, column: 26, scope: !415)
!472 = !DILocation(line: 263, column: 29, scope: !415)
!473 = !DILocation(line: 264, column: 29, scope: !415)
!474 = !DILocation(line: 265, column: 31, scope: !415)
!475 = !DILocation(line: 265, column: 26, scope: !415)
!476 = !DILocation(line: 266, column: 31, scope: !415)
!477 = !DILocation(line: 266, column: 26, scope: !415)
!478 = !DILocation(line: 267, column: 25, scope: !415)
!479 = !DILocation(line: 267, column: 31, scope: !415)
!480 = !DILocation(line: 267, column: 20, scope: !415)
!481 = !DILocation(line: 268, column: 26, scope: !415)
!482 = !DILocation(line: 268, column: 32, scope: !415)
!483 = !DILocation(line: 268, column: 37, scope: !415)
!484 = !DILocation(line: 268, column: 15, scope: !415)
!485 = !DILocation(line: 269, column: 41, scope: !415)
!486 = !DILocation(line: 269, column: 34, scope: !415)
!487 = !DILocation(line: 269, column: 32, scope: !415)
!488 = !DILocation(line: 269, column: 19, scope: !415)
!489 = !DILocation(line: 270, column: 34, scope: !415)
!490 = !DILocation(line: 270, column: 32, scope: !415)
!491 = !DILocation(line: 270, column: 19, scope: !415)
!492 = !DILocation(line: 0, scope: !410)
!493 = !DILocation(line: 274, column: 1, scope: !397)
!494 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !2, file: !2, line: 277, type: !495, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!55, !105, !105, !105, !105, !162}
!497 = !{!498, !499, !500, !501, !502, !503, !504, !508, !510, !511, !515, !516, !517}
!498 = !DILocalVariable(name: "x", arg: 1, scope: !494, file: !2, line: 277, type: !105)
!499 = !DILocalVariable(name: "dx", arg: 2, scope: !494, file: !2, line: 277, type: !105)
!500 = !DILocalVariable(name: "y", arg: 3, scope: !494, file: !2, line: 278, type: !105)
!501 = !DILocalVariable(name: "dy", arg: 4, scope: !494, file: !2, line: 278, type: !105)
!502 = !DILocalVariable(name: "result", arg: 5, scope: !494, file: !2, line: 279, type: !162)
!503 = !DILocalVariable(name: "ay", scope: !494, file: !2, line: 281, type: !105)
!504 = !DILocalVariable(name: "ex", scope: !505, file: !2, line: 292, type: !105)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 291, column: 7)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 289, column: 14)
!507 = distinct !DILexicalBlock(scope: !494, file: !2, line: 283, column: 6)
!508 = !DILocalVariable(name: "ly", scope: !509, file: !2, line: 300, type: !105)
!509 = distinct !DILexicalBlock(scope: !506, file: !2, line: 299, column: 8)
!510 = !DILocalVariable(name: "l10_val", scope: !509, file: !2, line: 301, type: !105)
!511 = !DILocalVariable(name: "sy", scope: !512, file: !2, line: 310, type: !105)
!512 = distinct !DILexicalBlock(scope: !513, file: !2, line: 309, column: 10)
!513 = distinct !DILexicalBlock(scope: !514, file: !2, line: 306, column: 13)
!514 = distinct !DILexicalBlock(scope: !509, file: !2, line: 303, column: 8)
!515 = !DILocalVariable(name: "N", scope: !512, file: !2, line: 311, type: !176)
!516 = !DILocalVariable(name: "arg_val", scope: !512, file: !2, line: 312, type: !105)
!517 = !DILocalVariable(name: "arg_err", scope: !512, file: !2, line: 313, type: !105)
!518 = !DILocation(line: 0, scope: !494)
!519 = !DILocation(line: 281, column: 22, scope: !494)
!520 = !DILocation(line: 283, column: 8, scope: !507)
!521 = !DILocation(line: 283, column: 6, scope: !494)
!522 = !DILocation(line: 284, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !507, file: !2, line: 283, column: 16)
!524 = !DILocation(line: 285, column: 29, scope: !523)
!525 = !DILocation(line: 285, column: 27, scope: !523)
!526 = !DILocation(line: 285, column: 19, scope: !523)
!527 = !DILocation(line: 285, column: 13, scope: !523)
!528 = !DILocation(line: 285, column: 17, scope: !523)
!529 = !DILocation(line: 286, column: 13, scope: !523)
!530 = !DILocation(line: 286, column: 17, scope: !523)
!531 = !DILocation(line: 287, column: 5, scope: !523)
!532 = !DILocation(line: 289, column: 18, scope: !506)
!533 = !DILocation(line: 289, column: 42, scope: !506)
!534 = !DILocation(line: 292, column: 23, scope: !505)
!535 = !DILocation(line: 0, scope: !505)
!536 = !DILocation(line: 293, column: 22, scope: !505)
!537 = !DILocation(line: 293, column: 18, scope: !505)
!538 = !DILocation(line: 294, column: 26, scope: !505)
!539 = !DILocation(line: 294, column: 43, scope: !505)
!540 = !DILocation(line: 294, column: 37, scope: !505)
!541 = !DILocation(line: 294, column: 35, scope: !505)
!542 = !DILocation(line: 294, column: 23, scope: !505)
!543 = !DILocation(line: 294, column: 13, scope: !505)
!544 = !DILocation(line: 295, column: 44, scope: !505)
!545 = !DILocation(line: 295, column: 42, scope: !505)
!546 = !DILocation(line: 295, column: 17, scope: !505)
!547 = !DILocation(line: 296, column: 13, scope: !505)
!548 = !DILocation(line: 296, column: 17, scope: !505)
!549 = !DILocation(line: 300, column: 24, scope: !509)
!550 = !DILocation(line: 0, scope: !509)
!551 = !DILocation(line: 301, column: 31, scope: !509)
!552 = !DILocation(line: 301, column: 36, scope: !509)
!553 = !DILocation(line: 303, column: 16, scope: !514)
!554 = !DILocation(line: 303, column: 8, scope: !509)
!555 = !DILocation(line: 304, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !2, line: 304, column: 7)
!557 = distinct !DILexicalBlock(scope: !514, file: !2, line: 303, column: 29)
!558 = !DILocation(line: 304, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !2, line: 304, column: 7)
!560 = !DILocation(line: 306, column: 21, scope: !513)
!561 = !DILocation(line: 306, column: 13, scope: !514)
!562 = !DILocation(line: 307, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 307, column: 7)
!564 = distinct !DILexicalBlock(scope: !513, file: !2, line: 306, column: 34)
!565 = !DILocation(line: 307, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !2, line: 307, column: 7)
!567 = !DILocation(line: 310, column: 26, scope: !512)
!568 = !DILocation(line: 0, scope: !512)
!569 = !DILocation(line: 311, column: 32, scope: !512)
!570 = !DILocation(line: 311, column: 26, scope: !512)
!571 = !DILocation(line: 312, column: 41, scope: !512)
!572 = !DILocation(line: 312, column: 39, scope: !512)
!573 = !DILocation(line: 312, column: 44, scope: !512)
!574 = !DILocation(line: 313, column: 32, scope: !512)
!575 = !DILocation(line: 313, column: 41, scope: !512)
!576 = !DILocation(line: 313, column: 68, scope: !512)
!577 = !DILocation(line: 313, column: 67, scope: !512)
!578 = !DILocation(line: 313, column: 46, scope: !512)
!579 = !DILocation(line: 315, column: 27, scope: !512)
!580 = !DILocation(line: 315, column: 25, scope: !512)
!581 = !DILocation(line: 315, column: 20, scope: !512)
!582 = !DILocation(line: 316, column: 32, scope: !512)
!583 = !DILocation(line: 316, column: 30, scope: !512)
!584 = !DILocation(line: 316, column: 15, scope: !512)
!585 = !DILocation(line: 317, column: 44, scope: !512)
!586 = !DILocation(line: 317, column: 19, scope: !512)
!587 = !DILocation(line: 318, column: 15, scope: !512)
!588 = !DILocation(line: 318, column: 19, scope: !512)
!589 = !DILocation(line: 0, scope: !507)
!590 = !DILocation(line: 323, column: 1, scope: !494)
!591 = distinct !DISubprogram(name: "gsl_sf_expm1_e", scope: !2, file: !2, line: 326, type: !103, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !592)
!592 = !{!593, !594, !595}
!593 = !DILocalVariable(name: "x", arg: 1, scope: !591, file: !2, line: 326, type: !105)
!594 = !DILocalVariable(name: "result", arg: 2, scope: !591, file: !2, line: 326, type: !107)
!595 = !DILocalVariable(name: "cut", scope: !591, file: !2, line: 328, type: !105)
!596 = !DILocation(line: 0, scope: !591)
!597 = !DILocation(line: 330, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !2, line: 330, column: 6)
!599 = !DILocation(line: 330, column: 6, scope: !591)
!600 = !DILocation(line: 331, column: 17, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !2, line: 330, column: 27)
!602 = !DILocation(line: 332, column: 13, scope: !601)
!603 = !DILocation(line: 332, column: 17, scope: !601)
!604 = !DILocation(line: 333, column: 5, scope: !601)
!605 = !DILocation(line: 335, column: 13, scope: !606)
!606 = distinct !DILexicalBlock(scope: !598, file: !2, line: 335, column: 11)
!607 = !DILocation(line: 335, column: 11, scope: !598)
!608 = !DILocation(line: 336, column: 19, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !2, line: 335, column: 21)
!610 = !DILocation(line: 336, column: 26, scope: !609)
!611 = !DILocation(line: 336, column: 17, scope: !609)
!612 = !DILocation(line: 337, column: 43, scope: !609)
!613 = !DILocation(line: 337, column: 41, scope: !609)
!614 = !DILocation(line: 337, column: 13, scope: !609)
!615 = !DILocation(line: 337, column: 17, scope: !609)
!616 = !DILocation(line: 338, column: 5, scope: !609)
!617 = !DILocation(line: 340, column: 13, scope: !618)
!618 = distinct !DILexicalBlock(scope: !606, file: !2, line: 340, column: 11)
!619 = !DILocation(line: 340, column: 11, scope: !606)
!620 = !DILocation(line: 341, column: 33, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !2, line: 340, column: 20)
!622 = !DILocation(line: 341, column: 44, scope: !621)
!623 = !DILocation(line: 341, column: 60, scope: !621)
!624 = !DILocation(line: 341, column: 73, scope: !621)
!625 = !DILocation(line: 341, column: 68, scope: !621)
!626 = !DILocation(line: 341, column: 62, scope: !621)
!627 = !DILocation(line: 341, column: 54, scope: !621)
!628 = !DILocation(line: 341, column: 48, scope: !621)
!629 = !DILocation(line: 341, column: 41, scope: !621)
!630 = !DILocation(line: 341, column: 35, scope: !621)
!631 = !DILocation(line: 341, column: 28, scope: !621)
!632 = !DILocation(line: 341, column: 21, scope: !621)
!633 = !DILocation(line: 341, column: 17, scope: !621)
!634 = !DILocation(line: 342, column: 43, scope: !621)
!635 = !DILocation(line: 342, column: 41, scope: !621)
!636 = !DILocation(line: 342, column: 13, scope: !621)
!637 = !DILocation(line: 342, column: 17, scope: !621)
!638 = !DILocation(line: 343, column: 5, scope: !621)
!639 = !DILocation(line: 345, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !618, file: !2, line: 345, column: 11)
!641 = !DILocation(line: 345, column: 11, scope: !618)
!642 = !DILocation(line: 346, column: 19, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 345, column: 32)
!644 = !DILocation(line: 346, column: 26, scope: !643)
!645 = !DILocation(line: 346, column: 17, scope: !643)
!646 = !DILocation(line: 347, column: 43, scope: !643)
!647 = !DILocation(line: 347, column: 41, scope: !643)
!648 = !DILocation(line: 347, column: 13, scope: !643)
!649 = !DILocation(line: 347, column: 17, scope: !643)
!650 = !DILocation(line: 348, column: 5, scope: !643)
!651 = !DILocation(line: 351, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !2, line: 351, column: 5)
!653 = distinct !DILexicalBlock(scope: !640, file: !2, line: 350, column: 8)
!654 = !DILocation(line: 351, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !2, line: 351, column: 5)
!656 = !DILocation(line: 0, scope: !598)
!657 = !DILocation(line: 353, column: 1, scope: !591)
!658 = distinct !DISubprogram(name: "gsl_sf_exprel_e", scope: !2, file: !2, line: 356, type: !103, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !659)
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "x", arg: 1, scope: !658, file: !2, line: 356, type: !105)
!661 = !DILocalVariable(name: "result", arg: 2, scope: !658, file: !2, line: 356, type: !107)
!662 = !DILocalVariable(name: "cut", scope: !658, file: !2, line: 358, type: !105)
!663 = !DILocation(line: 0, scope: !658)
!664 = !DILocation(line: 360, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !658, file: !2, line: 360, column: 6)
!666 = !DILocation(line: 360, column: 6, scope: !658)
!667 = !DILocation(line: 361, column: 23, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !2, line: 360, column: 27)
!669 = !DILocation(line: 361, column: 17, scope: !668)
!670 = !DILocation(line: 362, column: 37, scope: !668)
!671 = !DILocation(line: 362, column: 35, scope: !668)
!672 = !DILocation(line: 362, column: 13, scope: !668)
!673 = !DILocation(line: 362, column: 17, scope: !668)
!674 = !DILocation(line: 363, column: 5, scope: !668)
!675 = !DILocation(line: 365, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !665, file: !2, line: 365, column: 11)
!677 = !DILocation(line: 365, column: 11, scope: !665)
!678 = !DILocation(line: 366, column: 20, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !2, line: 365, column: 21)
!680 = !DILocation(line: 366, column: 27, scope: !679)
!681 = !DILocation(line: 366, column: 33, scope: !679)
!682 = !DILocation(line: 366, column: 17, scope: !679)
!683 = !DILocation(line: 367, column: 43, scope: !679)
!684 = !DILocation(line: 367, column: 41, scope: !679)
!685 = !DILocation(line: 367, column: 13, scope: !679)
!686 = !DILocation(line: 367, column: 17, scope: !679)
!687 = !DILocation(line: 368, column: 5, scope: !679)
!688 = !DILocation(line: 370, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !676, file: !2, line: 370, column: 11)
!690 = !DILocation(line: 370, column: 11, scope: !676)
!691 = !DILocation(line: 371, column: 29, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !2, line: 370, column: 20)
!693 = !DILocation(line: 371, column: 40, scope: !692)
!694 = !DILocation(line: 371, column: 56, scope: !692)
!695 = !DILocation(line: 371, column: 69, scope: !692)
!696 = !DILocation(line: 371, column: 64, scope: !692)
!697 = !DILocation(line: 371, column: 58, scope: !692)
!698 = !DILocation(line: 371, column: 50, scope: !692)
!699 = !DILocation(line: 371, column: 44, scope: !692)
!700 = !DILocation(line: 371, column: 37, scope: !692)
!701 = !DILocation(line: 371, column: 31, scope: !692)
!702 = !DILocation(line: 371, column: 24, scope: !692)
!703 = !DILocation(line: 371, column: 17, scope: !692)
!704 = !DILocation(line: 372, column: 43, scope: !692)
!705 = !DILocation(line: 372, column: 41, scope: !692)
!706 = !DILocation(line: 372, column: 13, scope: !692)
!707 = !DILocation(line: 372, column: 17, scope: !692)
!708 = !DILocation(line: 373, column: 5, scope: !692)
!709 = !DILocation(line: 375, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !689, file: !2, line: 375, column: 11)
!711 = !DILocation(line: 375, column: 11, scope: !689)
!712 = !DILocation(line: 376, column: 20, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !2, line: 375, column: 32)
!714 = !DILocation(line: 376, column: 27, scope: !713)
!715 = !DILocation(line: 376, column: 33, scope: !713)
!716 = !DILocation(line: 376, column: 17, scope: !713)
!717 = !DILocation(line: 377, column: 43, scope: !713)
!718 = !DILocation(line: 377, column: 41, scope: !713)
!719 = !DILocation(line: 377, column: 13, scope: !713)
!720 = !DILocation(line: 377, column: 17, scope: !713)
!721 = !DILocation(line: 378, column: 5, scope: !713)
!722 = !DILocation(line: 381, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 381, column: 5)
!724 = distinct !DILexicalBlock(scope: !710, file: !2, line: 380, column: 8)
!725 = !DILocation(line: 381, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !2, line: 381, column: 5)
!727 = !DILocation(line: 0, scope: !665)
!728 = !DILocation(line: 383, column: 1, scope: !658)
!729 = distinct !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !2, file: !2, line: 386, type: !730, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!55, !106, !107}
!732 = !{!733, !734, !735}
!733 = !DILocalVariable(name: "x", arg: 1, scope: !729, file: !2, line: 386, type: !106)
!734 = !DILocalVariable(name: "result", arg: 2, scope: !729, file: !2, line: 386, type: !107)
!735 = !DILocalVariable(name: "cut", scope: !729, file: !2, line: 388, type: !105)
!736 = !DILocation(line: 0, scope: !729)
!737 = !DILocation(line: 390, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !729, file: !2, line: 390, column: 6)
!739 = !DILocation(line: 390, column: 6, scope: !729)
!740 = !DILocation(line: 391, column: 23, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !2, line: 390, column: 27)
!742 = !DILocation(line: 391, column: 36, scope: !741)
!743 = !DILocation(line: 391, column: 31, scope: !741)
!744 = !DILocation(line: 391, column: 25, scope: !741)
!745 = !DILocation(line: 391, column: 17, scope: !741)
!746 = !DILocation(line: 392, column: 43, scope: !741)
!747 = !DILocation(line: 392, column: 41, scope: !741)
!748 = !DILocation(line: 392, column: 13, scope: !741)
!749 = !DILocation(line: 392, column: 17, scope: !741)
!750 = !DILocation(line: 393, column: 5, scope: !741)
!751 = !DILocation(line: 395, column: 13, scope: !752)
!752 = distinct !DILexicalBlock(scope: !738, file: !2, line: 395, column: 11)
!753 = !DILocation(line: 395, column: 11, scope: !738)
!754 = !DILocation(line: 396, column: 24, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !2, line: 395, column: 21)
!756 = !DILocation(line: 396, column: 31, scope: !755)
!757 = !DILocation(line: 396, column: 37, scope: !755)
!758 = !DILocation(line: 396, column: 22, scope: !755)
!759 = !DILocation(line: 396, column: 44, scope: !755)
!760 = !DILocation(line: 396, column: 41, scope: !755)
!761 = !DILocation(line: 396, column: 17, scope: !755)
!762 = !DILocation(line: 397, column: 43, scope: !755)
!763 = !DILocation(line: 397, column: 41, scope: !755)
!764 = !DILocation(line: 397, column: 13, scope: !755)
!765 = !DILocation(line: 397, column: 17, scope: !755)
!766 = !DILocation(line: 398, column: 5, scope: !755)
!767 = !DILocation(line: 400, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !752, file: !2, line: 400, column: 11)
!769 = !DILocation(line: 400, column: 11, scope: !752)
!770 = !DILocation(line: 401, column: 33, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !2, line: 400, column: 20)
!772 = !DILocation(line: 401, column: 47, scope: !771)
!773 = !DILocation(line: 401, column: 60, scope: !771)
!774 = !DILocation(line: 401, column: 77, scope: !771)
!775 = !DILocation(line: 401, column: 68, scope: !771)
!776 = !DILocation(line: 401, column: 62, scope: !771)
!777 = !DILocation(line: 401, column: 55, scope: !771)
!778 = !DILocation(line: 401, column: 49, scope: !771)
!779 = !DILocation(line: 401, column: 41, scope: !771)
!780 = !DILocation(line: 401, column: 35, scope: !771)
!781 = !DILocation(line: 401, column: 24, scope: !771)
!782 = !DILocation(line: 401, column: 17, scope: !771)
!783 = !DILocation(line: 402, column: 43, scope: !771)
!784 = !DILocation(line: 402, column: 41, scope: !771)
!785 = !DILocation(line: 402, column: 13, scope: !771)
!786 = !DILocation(line: 402, column: 17, scope: !771)
!787 = !DILocation(line: 403, column: 5, scope: !771)
!788 = !DILocation(line: 405, column: 13, scope: !789)
!789 = distinct !DILexicalBlock(scope: !768, file: !2, line: 405, column: 11)
!790 = !DILocation(line: 405, column: 11, scope: !768)
!791 = !DILocation(line: 406, column: 24, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !2, line: 405, column: 32)
!793 = !DILocation(line: 406, column: 31, scope: !792)
!794 = !DILocation(line: 406, column: 37, scope: !792)
!795 = !DILocation(line: 406, column: 22, scope: !792)
!796 = !DILocation(line: 406, column: 44, scope: !792)
!797 = !DILocation(line: 406, column: 41, scope: !792)
!798 = !DILocation(line: 406, column: 17, scope: !792)
!799 = !DILocation(line: 407, column: 43, scope: !792)
!800 = !DILocation(line: 407, column: 41, scope: !792)
!801 = !DILocation(line: 407, column: 13, scope: !792)
!802 = !DILocation(line: 407, column: 17, scope: !792)
!803 = !DILocation(line: 408, column: 5, scope: !792)
!804 = !DILocation(line: 411, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !2, line: 411, column: 5)
!806 = distinct !DILexicalBlock(scope: !789, file: !2, line: 410, column: 8)
!807 = !DILocation(line: 411, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !2, line: 411, column: 5)
!809 = !DILocation(line: 0, scope: !738)
!810 = !DILocation(line: 413, column: 1, scope: !729)
!811 = distinct !DISubprogram(name: "gsl_sf_exprel_n_CF_e", scope: !2, file: !2, line: 417, type: !222, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !812)
!812 = !{!813, !814, !815}
!813 = !DILocalVariable(name: "N", arg: 1, scope: !811, file: !2, line: 417, type: !105)
!814 = !DILocalVariable(name: "x", arg: 2, scope: !811, file: !2, line: 417, type: !105)
!815 = !DILocalVariable(name: "result", arg: 3, scope: !811, file: !2, line: 417, type: !107)
!816 = !DILocation(line: 0, scope: !811)
!817 = !DILocation(line: 419, column: 10, scope: !811)
!818 = !{i32 0, i32 12}
!819 = !DILocation(line: 419, column: 3, scope: !811)
!820 = distinct !DISubprogram(name: "exprel_n_CF", scope: !2, file: !2, line: 35, type: !222, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !843}
!822 = !DILocalVariable(name: "N", arg: 1, scope: !820, file: !2, line: 35, type: !105)
!823 = !DILocalVariable(name: "x", arg: 2, scope: !820, file: !2, line: 35, type: !105)
!824 = !DILocalVariable(name: "result", arg: 3, scope: !820, file: !2, line: 35, type: !107)
!825 = !DILocalVariable(name: "RECUR_BIG", scope: !820, file: !2, line: 37, type: !105)
!826 = !DILocalVariable(name: "maxiter", scope: !820, file: !2, line: 38, type: !176)
!827 = !DILocalVariable(name: "n", scope: !820, file: !2, line: 39, type: !55)
!828 = !DILocalVariable(name: "Anm2", scope: !820, file: !2, line: 40, type: !106)
!829 = !DILocalVariable(name: "Bnm2", scope: !820, file: !2, line: 41, type: !106)
!830 = !DILocalVariable(name: "Anm1", scope: !820, file: !2, line: 42, type: !106)
!831 = !DILocalVariable(name: "Bnm1", scope: !820, file: !2, line: 43, type: !106)
!832 = !DILocalVariable(name: "a1", scope: !820, file: !2, line: 44, type: !106)
!833 = !DILocalVariable(name: "b1", scope: !820, file: !2, line: 45, type: !106)
!834 = !DILocalVariable(name: "a2", scope: !820, file: !2, line: 46, type: !106)
!835 = !DILocalVariable(name: "b2", scope: !820, file: !2, line: 47, type: !106)
!836 = !DILocalVariable(name: "an", scope: !820, file: !2, line: 48, type: !106)
!837 = !DILocalVariable(name: "bn", scope: !820, file: !2, line: 48, type: !106)
!838 = !DILocalVariable(name: "fn", scope: !820, file: !2, line: 50, type: !106)
!839 = !DILocalVariable(name: "An", scope: !820, file: !2, line: 52, type: !106)
!840 = !DILocalVariable(name: "Bn", scope: !820, file: !2, line: 53, type: !106)
!841 = !DILocalVariable(name: "old_fn", scope: !842, file: !2, line: 67, type: !106)
!842 = distinct !DILexicalBlock(scope: !820, file: !2, line: 66, column: 22)
!843 = !DILocalVariable(name: "del", scope: !842, file: !2, line: 68, type: !106)
!844 = !DILocation(line: 0, scope: !820)
!845 = !DILocation(line: 47, column: 16, scope: !820)
!846 = !DILocation(line: 61, column: 20, scope: !820)
!847 = !DILocation(line: 61, column: 16, scope: !820)
!848 = !DILocation(line: 62, column: 16, scope: !820)
!849 = !DILocation(line: 64, column: 10, scope: !820)
!850 = !DILocation(line: 66, column: 3, scope: !820)
!851 = !DILocation(line: 66, column: 11, scope: !820)
!852 = !DILocation(line: 69, column: 6, scope: !842)
!853 = !DILocation(line: 74, column: 12, scope: !842)
!854 = !DILocation(line: 74, column: 34, scope: !842)
!855 = !DILocation(line: 74, column: 28, scope: !842)
!856 = !DILocation(line: 74, column: 48, scope: !842)
!857 = !DILocation(line: 74, column: 46, scope: !842)
!858 = !DILocation(line: 74, column: 45, scope: !842)
!859 = !DILocation(line: 74, column: 51, scope: !842)
!860 = !DILocation(line: 74, column: 42, scope: !842)
!861 = !DILocation(line: 75, column: 14, scope: !842)
!862 = !DILocation(line: 75, column: 12, scope: !842)
!863 = !DILocation(line: 75, column: 16, scope: !842)
!864 = !DILocation(line: 76, column: 12, scope: !842)
!865 = !DILocation(line: 76, column: 22, scope: !842)
!866 = !DILocation(line: 76, column: 18, scope: !842)
!867 = !DILocation(line: 77, column: 12, scope: !842)
!868 = !DILocation(line: 77, column: 22, scope: !842)
!869 = !DILocation(line: 77, column: 18, scope: !842)
!870 = !DILocation(line: 79, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !842, file: !2, line: 79, column: 8)
!872 = !DILocation(line: 79, column: 17, scope: !871)
!873 = !DILocation(line: 79, column: 29, scope: !871)
!874 = !DILocation(line: 80, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !2, line: 79, column: 54)
!876 = !DILocation(line: 81, column: 10, scope: !875)
!877 = !DILocation(line: 82, column: 12, scope: !875)
!878 = !DILocation(line: 83, column: 12, scope: !875)
!879 = !DILocation(line: 86, column: 5, scope: !875)
!880 = !DILocation(line: 0, scope: !842)
!881 = !DILocation(line: 89, column: 12, scope: !842)
!882 = !DILocation(line: 90, column: 17, scope: !842)
!883 = !DILocation(line: 92, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !842, file: !2, line: 92, column: 8)
!885 = !DILocation(line: 92, column: 8, scope: !884)
!886 = !DILocation(line: 92, column: 24, scope: !884)
!887 = !DILocation(line: 95, column: 15, scope: !820)
!888 = !DILocation(line: 96, column: 23, scope: !820)
!889 = !DILocation(line: 96, column: 20, scope: !820)
!890 = !DILocation(line: 96, column: 28, scope: !820)
!891 = !DILocation(line: 96, column: 45, scope: !820)
!892 = !DILocation(line: 96, column: 44, scope: !820)
!893 = !DILocation(line: 96, column: 11, scope: !820)
!894 = !DILocation(line: 96, column: 15, scope: !820)
!895 = !DILocation(line: 98, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !820, file: !2, line: 98, column: 6)
!897 = !DILocation(line: 98, column: 6, scope: !820)
!898 = !DILocation(line: 99, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 99, column: 5)
!900 = !DILocation(line: 0, scope: !896)
!901 = !DILocation(line: 102, column: 1, scope: !820)
!902 = distinct !DISubprogram(name: "gsl_sf_exprel_n_e", scope: !2, file: !2, line: 423, type: !903, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!55, !176, !105, !107}
!905 = !{!906, !907, !908, !909, !919, !920, !921, !922, !925, !926, !927, !928, !929, !932, !933, !934, !935, !936, !937, !938, !939, !942, !943}
!906 = !DILocalVariable(name: "N", arg: 1, scope: !902, file: !2, line: 423, type: !176)
!907 = !DILocalVariable(name: "x", arg: 2, scope: !902, file: !2, line: 423, type: !105)
!908 = !DILocalVariable(name: "result", arg: 3, scope: !902, file: !2, line: 423, type: !107)
!909 = !DILocalVariable(name: "lnf_N", scope: !910, file: !2, line: 453, type: !108)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 448, column: 66)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 448, column: 8)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 447, column: 8)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 444, column: 11)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 441, column: 11)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 438, column: 11)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 433, column: 11)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 428, column: 11)
!918 = distinct !DILexicalBlock(scope: !902, file: !2, line: 425, column: 6)
!919 = !DILocalVariable(name: "lnr_val", scope: !910, file: !2, line: 454, type: !106)
!920 = !DILocalVariable(name: "lnr_err", scope: !910, file: !2, line: 455, type: !106)
!921 = !DILocalVariable(name: "lnterm", scope: !910, file: !2, line: 456, type: !106)
!922 = !DILocalVariable(name: "ln_x", scope: !923, file: !2, line: 470, type: !106)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 464, column: 20)
!924 = distinct !DILexicalBlock(scope: !911, file: !2, line: 464, column: 13)
!925 = !DILocalVariable(name: "lnf_N", scope: !923, file: !2, line: 471, type: !108)
!926 = !DILocalVariable(name: "lg_N", scope: !923, file: !2, line: 472, type: !106)
!927 = !DILocalVariable(name: "lnpre_val", scope: !923, file: !2, line: 473, type: !106)
!928 = !DILocalVariable(name: "lnpre_err", scope: !923, file: !2, line: 474, type: !106)
!929 = !DILocalVariable(name: "stat_eG", scope: !930, file: !2, line: 481, type: !55)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 480, column: 45)
!931 = distinct !DILexicalBlock(scope: !923, file: !2, line: 480, column: 10)
!932 = !DILocalVariable(name: "bigG_ratio", scope: !930, file: !2, line: 482, type: !108)
!933 = !DILocalVariable(name: "pre", scope: !930, file: !2, line: 483, type: !108)
!934 = !DILocalVariable(name: "stat_ex", scope: !930, file: !2, line: 484, type: !55)
!935 = !DILocalVariable(name: "ln_bigG_ratio_pre", scope: !930, file: !2, line: 485, type: !106)
!936 = !DILocalVariable(name: "bigGsum", scope: !930, file: !2, line: 486, type: !106)
!937 = !DILocalVariable(name: "term", scope: !930, file: !2, line: 487, type: !106)
!938 = !DILocalVariable(name: "k", scope: !930, file: !2, line: 488, type: !55)
!939 = !DILocalVariable(name: "sum", scope: !940, file: !2, line: 519, type: !106)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 514, column: 10)
!941 = distinct !DILexicalBlock(scope: !924, file: !2, line: 511, column: 13)
!942 = !DILocalVariable(name: "term", scope: !940, file: !2, line: 520, type: !106)
!943 = !DILocalVariable(name: "k", scope: !940, file: !2, line: 521, type: !55)
!944 = distinct !DIAssignID()
!945 = !DILocation(line: 0, scope: !910)
!946 = distinct !DIAssignID()
!947 = !DILocation(line: 0, scope: !923)
!948 = distinct !DIAssignID()
!949 = !DILocation(line: 0, scope: !930)
!950 = distinct !DIAssignID()
!951 = !DILocation(line: 0, scope: !902)
!952 = !DILocation(line: 425, column: 8, scope: !918)
!953 = !DILocation(line: 425, column: 6, scope: !902)
!954 = !DILocation(line: 426, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 426, column: 5)
!956 = distinct !DILexicalBlock(scope: !918, file: !2, line: 425, column: 13)
!957 = !DILocation(line: 426, column: 5, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !2, line: 426, column: 5)
!959 = !DILocation(line: 428, column: 13, scope: !917)
!960 = !DILocation(line: 428, column: 11, scope: !918)
!961 = !DILocation(line: 429, column: 17, scope: !962)
!962 = distinct !DILexicalBlock(scope: !917, file: !2, line: 428, column: 21)
!963 = !DILocation(line: 430, column: 13, scope: !962)
!964 = !DILocation(line: 430, column: 17, scope: !962)
!965 = !DILocation(line: 431, column: 5, scope: !962)
!966 = !DILocation(line: 433, column: 11, scope: !916)
!967 = !DILocation(line: 433, column: 45, scope: !916)
!968 = !DILocation(line: 433, column: 43, scope: !916)
!969 = !DILocation(line: 433, column: 19, scope: !916)
!970 = !DILocation(line: 433, column: 11, scope: !917)
!971 = !DILocation(line: 434, column: 29, scope: !972)
!972 = distinct !DILexicalBlock(scope: !916, file: !2, line: 433, column: 48)
!973 = !DILocation(line: 434, column: 27, scope: !972)
!974 = !DILocation(line: 434, column: 26, scope: !972)
!975 = !DILocation(line: 434, column: 46, scope: !972)
!976 = !DILocation(line: 434, column: 44, scope: !972)
!977 = !DILocation(line: 434, column: 43, scope: !972)
!978 = !DILocation(line: 434, column: 40, scope: !972)
!979 = !DILocation(line: 434, column: 33, scope: !972)
!980 = !DILocation(line: 434, column: 23, scope: !972)
!981 = !DILocation(line: 434, column: 17, scope: !972)
!982 = !DILocation(line: 435, column: 13, scope: !972)
!983 = !DILocation(line: 435, column: 17, scope: !972)
!984 = !DILocation(line: 436, column: 5, scope: !972)
!985 = !DILocation(line: 438, column: 11, scope: !916)
!986 = !DILocation(line: 0, scope: !102, inlinedAt: !987)
!987 = distinct !DILocation(line: 439, column: 12, scope: !988)
!988 = distinct !DILexicalBlock(scope: !915, file: !2, line: 438, column: 19)
!989 = !DILocation(line: 109, column: 8, scope: !119, inlinedAt: !987)
!990 = !DILocation(line: 109, column: 6, scope: !102, inlinedAt: !987)
!991 = !DILocation(line: 110, column: 5, scope: !122, inlinedAt: !987)
!992 = !DILocation(line: 110, column: 5, scope: !131, inlinedAt: !987)
!993 = !DILocation(line: 112, column: 13, scope: !133, inlinedAt: !987)
!994 = !DILocation(line: 112, column: 11, scope: !119, inlinedAt: !987)
!995 = !DILocation(line: 113, column: 5, scope: !136, inlinedAt: !987)
!996 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !987)
!997 = !DILocation(line: 116, column: 19, scope: !141, inlinedAt: !987)
!998 = !DILocation(line: 116, column: 17, scope: !141, inlinedAt: !987)
!999 = !DILocation(line: 117, column: 43, scope: !141, inlinedAt: !987)
!1000 = !DILocation(line: 117, column: 41, scope: !141, inlinedAt: !987)
!1001 = !DILocation(line: 117, column: 13, scope: !141, inlinedAt: !987)
!1002 = !DILocation(line: 117, column: 17, scope: !141, inlinedAt: !987)
!1003 = !DILocation(line: 118, column: 5, scope: !141, inlinedAt: !987)
!1004 = !DILocation(line: 442, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !914, file: !2, line: 441, column: 19)
!1006 = !{i32 0, i32 17}
!1007 = !DILocation(line: 442, column: 5, scope: !1005)
!1008 = !DILocation(line: 445, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !913, file: !2, line: 444, column: 19)
!1010 = !DILocation(line: 445, column: 5, scope: !1009)
!1011 = !DILocation(line: 448, column: 10, scope: !911)
!1012 = !DILocation(line: 448, column: 14, scope: !911)
!1013 = !DILocation(line: 448, column: 37, scope: !911)
!1014 = !DILocation(line: 448, column: 32, scope: !911)
!1015 = !DILocation(line: 448, column: 30, scope: !911)
!1016 = !DILocation(line: 448, column: 24, scope: !911)
!1017 = !DILocation(line: 448, column: 21, scope: !911)
!1018 = !DILocation(line: 448, column: 42, scope: !911)
!1019 = !DILocation(line: 448, column: 8, scope: !912)
!1020 = !DILocation(line: 453, column: 7, scope: !910)
!1021 = !DILocation(line: 457, column: 7, scope: !910)
!1022 = !DILocation(line: 458, column: 18, scope: !910)
!1023 = !DILocation(line: 458, column: 17, scope: !910)
!1024 = !DILocation(line: 459, column: 28, scope: !910)
!1025 = !DILocation(line: 459, column: 20, scope: !910)
!1026 = !DILocation(line: 459, column: 32, scope: !910)
!1027 = !DILocation(line: 460, column: 47, scope: !910)
!1028 = !DILocation(line: 460, column: 45, scope: !910)
!1029 = !DILocation(line: 460, column: 65, scope: !910)
!1030 = !DILocation(line: 460, column: 63, scope: !910)
!1031 = !DILocation(line: 460, column: 34, scope: !910)
!1032 = !DILocation(line: 461, column: 24, scope: !910)
!1033 = !DILocation(line: 461, column: 15, scope: !910)
!1034 = !DILocation(line: 462, column: 14, scope: !910)
!1035 = !DILocation(line: 463, column: 5, scope: !911)
!1036 = !DILocation(line: 470, column: 21, scope: !923)
!1037 = !DILocation(line: 471, column: 7, scope: !923)
!1038 = !DILocation(line: 475, column: 7, scope: !923)
!1039 = !DILocation(line: 476, column: 21, scope: !923)
!1040 = !DILocation(line: 476, column: 27, scope: !923)
!1041 = !DILocation(line: 477, column: 30, scope: !923)
!1042 = !DILocation(line: 477, column: 22, scope: !923)
!1043 = !DILocation(line: 477, column: 37, scope: !923)
!1044 = !DILocation(line: 477, column: 34, scope: !923)
!1045 = !DILocation(line: 480, column: 20, scope: !931)
!1046 = !DILocation(line: 480, column: 10, scope: !923)
!1047 = !DILocation(line: 478, column: 49, scope: !923)
!1048 = !DILocation(line: 478, column: 47, scope: !923)
!1049 = !DILocation(line: 478, column: 67, scope: !923)
!1050 = !DILocation(line: 478, column: 65, scope: !923)
!1051 = !DILocation(line: 478, column: 36, scope: !923)
!1052 = !DILocation(line: 479, column: 26, scope: !923)
!1053 = !DILocation(line: 479, column: 17, scope: !923)
!1054 = !DILocation(line: 476, column: 25, scope: !923)
!1055 = !DILocation(line: 482, column: 9, scope: !930)
!1056 = !DILocation(line: 483, column: 9, scope: !930)
!1057 = !DILocation(line: 484, column: 23, scope: !930)
!1058 = !DILocation(line: 485, column: 43, scope: !930)
!1059 = !DILocation(line: 485, column: 41, scope: !930)
!1060 = !DILocation(line: 485, column: 46, scope: !930)
!1061 = !DILocation(line: 485, column: 39, scope: !930)
!1062 = !DILocation(line: 485, column: 52, scope: !930)
!1063 = !DILocation(line: 489, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !930, file: !2, line: 489, column: 9)
!1065 = !DILocation(line: 490, column: 21, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 489, column: 28)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 489, column: 9)
!1068 = !DILocation(line: 490, column: 19, scope: !1066)
!1069 = !DILocation(line: 490, column: 24, scope: !1066)
!1070 = !DILocation(line: 490, column: 16, scope: !1066)
!1071 = !DILocation(line: 491, column: 19, scope: !1066)
!1072 = !DILocation(line: 489, column: 24, scope: !1067)
!1073 = distinct !{!1073, !1063, !1074, !1075}
!1074 = !DILocation(line: 492, column: 9, scope: !1064)
!1075 = !{!"llvm.loop.mustprogress"}
!1076 = distinct !{!1076, !1077}
!1077 = !{!"llvm.loop.unroll.disable"}
!1078 = !DILocation(line: 493, column: 19, scope: !930)
!1079 = !DILocation(line: 494, column: 20, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !930, file: !2, line: 494, column: 12)
!1081 = !DILocation(line: 494, column: 12, scope: !930)
!1082 = !DILocation(line: 495, column: 30, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 494, column: 36)
!1084 = !DILocation(line: 495, column: 54, scope: !1083)
!1085 = !DILocation(line: 495, column: 41, scope: !1083)
!1086 = !DILocation(line: 495, column: 34, scope: !1083)
!1087 = !DILocation(line: 495, column: 24, scope: !1083)
!1088 = !DILocation(line: 496, column: 70, scope: !1083)
!1089 = !DILocation(line: 496, column: 57, scope: !1083)
!1090 = !DILocation(line: 496, column: 34, scope: !1083)
!1091 = !DILocation(line: 496, column: 19, scope: !1083)
!1092 = !DILocation(line: 497, column: 30, scope: !1083)
!1093 = !DILocation(line: 497, column: 36, scope: !1083)
!1094 = !DILocation(line: 497, column: 34, scope: !1083)
!1095 = !DILocation(line: 497, column: 23, scope: !1083)
!1096 = !DILocation(line: 498, column: 50, scope: !1083)
!1097 = !DILocation(line: 498, column: 48, scope: !1083)
!1098 = !DILocation(line: 498, column: 23, scope: !1083)
!1099 = !DILocation(line: 499, column: 11, scope: !1083)
!1100 = !DILocation(line: 503, column: 23, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 501, column: 14)
!1102 = !DILocation(line: 504, column: 11, scope: !1101)
!1103 = !DILocation(line: 0, scope: !1080)
!1104 = !DILocation(line: 506, column: 7, scope: !931)
!1105 = !DILocation(line: 508, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 508, column: 9)
!1107 = distinct !DILexicalBlock(scope: !931, file: !2, line: 507, column: 12)
!1108 = !DILocation(line: 508, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 508, column: 9)
!1110 = !DILocation(line: 0, scope: !931)
!1111 = !DILocation(line: 510, column: 5, scope: !924)
!1112 = !DILocation(line: 511, column: 22, scope: !941)
!1113 = !DILocation(line: 511, column: 15, scope: !941)
!1114 = !DILocation(line: 511, column: 13, scope: !924)
!1115 = !DILocation(line: 522, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !940, file: !2, line: 522, column: 7)
!1117 = !DILocation(line: 512, column: 14, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !941, file: !2, line: 511, column: 26)
!1119 = !DILocation(line: 512, column: 7, scope: !1118)
!1120 = !DILocation(line: 0, scope: !940)
!1121 = !DILocation(line: 523, column: 19, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 522, column: 26)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 522, column: 7)
!1124 = !DILocation(line: 523, column: 17, scope: !1122)
!1125 = !DILocation(line: 523, column: 22, scope: !1122)
!1126 = !DILocation(line: 523, column: 14, scope: !1122)
!1127 = !DILocation(line: 524, column: 14, scope: !1122)
!1128 = !DILocation(line: 522, column: 22, scope: !1123)
!1129 = distinct !{!1129, !1115, !1130, !1075}
!1130 = !DILocation(line: 525, column: 7, scope: !1116)
!1131 = distinct !{!1131, !1077}
!1132 = !DILocation(line: 526, column: 21, scope: !940)
!1133 = !DILocation(line: 526, column: 23, scope: !940)
!1134 = !DILocation(line: 526, column: 26, scope: !940)
!1135 = !DILocation(line: 526, column: 19, scope: !940)
!1136 = !DILocation(line: 527, column: 45, scope: !940)
!1137 = !DILocation(line: 527, column: 43, scope: !940)
!1138 = !DILocation(line: 527, column: 15, scope: !940)
!1139 = !DILocation(line: 527, column: 19, scope: !940)
!1140 = !DILocation(line: 0, scope: !918)
!1141 = !DILocation(line: 531, column: 1, scope: !902)
!1142 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !1143, file: !1143, line: 136, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!55, !1146, !107}
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1148 = distinct !DISubprogram(name: "gsl_sf_exp_err_e", scope: !2, file: !2, line: 535, type: !222, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1158}
!1150 = !DILocalVariable(name: "x", arg: 1, scope: !1148, file: !2, line: 535, type: !105)
!1151 = !DILocalVariable(name: "dx", arg: 2, scope: !1148, file: !2, line: 535, type: !105)
!1152 = !DILocalVariable(name: "result", arg: 3, scope: !1148, file: !2, line: 535, type: !107)
!1153 = !DILocalVariable(name: "adx", scope: !1148, file: !2, line: 537, type: !105)
!1154 = !DILocalVariable(name: "ex", scope: !1155, file: !2, line: 548, type: !105)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 547, column: 8)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 544, column: 11)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 541, column: 6)
!1158 = !DILocalVariable(name: "edx", scope: !1155, file: !2, line: 549, type: !105)
!1159 = !DILocation(line: 0, scope: !1148)
!1160 = !DILocation(line: 537, column: 22, scope: !1148)
!1161 = !DILocation(line: 541, column: 8, scope: !1157)
!1162 = !DILocation(line: 541, column: 14, scope: !1157)
!1163 = !DILocation(line: 541, column: 6, scope: !1148)
!1164 = !DILocation(line: 542, column: 5, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 542, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 541, column: 33)
!1167 = !DILocation(line: 542, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 542, column: 5)
!1169 = !DILocation(line: 544, column: 13, scope: !1156)
!1170 = !DILocation(line: 544, column: 19, scope: !1156)
!1171 = !DILocation(line: 544, column: 11, scope: !1157)
!1172 = !DILocation(line: 545, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 545, column: 5)
!1174 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 544, column: 38)
!1175 = !DILocation(line: 545, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 545, column: 5)
!1177 = !DILocation(line: 548, column: 24, scope: !1155)
!1178 = !DILocation(line: 0, scope: !1155)
!1179 = !DILocation(line: 549, column: 24, scope: !1155)
!1180 = !DILocation(line: 550, column: 18, scope: !1155)
!1181 = !DILocation(line: 551, column: 63, scope: !1155)
!1182 = !DILocation(line: 551, column: 58, scope: !1155)
!1183 = !DILocalVariable(name: "a", arg: 1, scope: !1184, file: !1185, line: 69, type: !106)
!1184 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1185, file: !1185, line: 69, type: !1186, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1188)
!1185 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!106, !106, !106}
!1188 = !{!1183, !1189}
!1189 = !DILocalVariable(name: "b", arg: 2, scope: !1184, file: !1185, line: 69, type: !106)
!1190 = !DILocation(line: 0, scope: !1184, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 551, column: 25, scope: !1155)
!1192 = !DILocation(line: 71, column: 10, scope: !1184, inlinedAt: !1191)
!1193 = !DILocation(line: 551, column: 23, scope: !1155)
!1194 = !DILocation(line: 551, column: 13, scope: !1155)
!1195 = !DILocation(line: 552, column: 44, scope: !1155)
!1196 = !DILocation(line: 552, column: 42, scope: !1155)
!1197 = !DILocation(line: 552, column: 17, scope: !1155)
!1198 = !DILocation(line: 0, scope: !1157)
!1199 = !DILocation(line: 555, column: 1, scope: !1148)
!1200 = distinct !DISubprogram(name: "gsl_sf_exp_err_e10_e", scope: !2, file: !2, line: 559, type: !310, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1210}
!1202 = !DILocalVariable(name: "x", arg: 1, scope: !1200, file: !2, line: 559, type: !105)
!1203 = !DILocalVariable(name: "dx", arg: 2, scope: !1200, file: !2, line: 559, type: !105)
!1204 = !DILocalVariable(name: "result", arg: 3, scope: !1200, file: !2, line: 559, type: !162)
!1205 = !DILocalVariable(name: "adx", scope: !1200, file: !2, line: 561, type: !105)
!1206 = !DILocalVariable(name: "N", scope: !1207, file: !2, line: 572, type: !176)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 571, column: 8)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 568, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 565, column: 6)
!1210 = !DILocalVariable(name: "ex", scope: !1207, file: !2, line: 573, type: !105)
!1211 = !DILocation(line: 0, scope: !1200)
!1212 = !DILocation(line: 561, column: 22, scope: !1200)
!1213 = !DILocation(line: 565, column: 8, scope: !1209)
!1214 = !DILocation(line: 565, column: 14, scope: !1209)
!1215 = !DILocation(line: 565, column: 6, scope: !1200)
!1216 = !DILocation(line: 566, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 566, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 565, column: 29)
!1219 = !DILocation(line: 566, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 566, column: 5)
!1221 = !DILocation(line: 568, column: 13, scope: !1208)
!1222 = !DILocation(line: 568, column: 19, scope: !1208)
!1223 = !DILocation(line: 568, column: 11, scope: !1209)
!1224 = !DILocation(line: 569, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 569, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 568, column: 34)
!1227 = !DILocation(line: 569, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 569, column: 5)
!1229 = !DILocation(line: 572, column: 35, scope: !1207)
!1230 = !DILocation(line: 572, column: 28, scope: !1207)
!1231 = !DILocation(line: 572, column: 23, scope: !1207)
!1232 = !DILocation(line: 0, scope: !1207)
!1233 = !DILocation(line: 573, column: 29, scope: !1207)
!1234 = !DILocation(line: 573, column: 30, scope: !1207)
!1235 = !DILocation(line: 573, column: 28, scope: !1207)
!1236 = !DILocation(line: 573, column: 23, scope: !1207)
!1237 = !DILocation(line: 574, column: 17, scope: !1207)
!1238 = !DILocation(line: 575, column: 50, scope: !1207)
!1239 = !DILocation(line: 575, column: 58, scope: !1207)
!1240 = !DILocation(line: 575, column: 47, scope: !1207)
!1241 = !DILocation(line: 575, column: 65, scope: !1207)
!1242 = !DILocation(line: 575, column: 22, scope: !1207)
!1243 = !DILocation(line: 575, column: 13, scope: !1207)
!1244 = !DILocation(line: 575, column: 17, scope: !1207)
!1245 = !DILocation(line: 576, column: 13, scope: !1207)
!1246 = !DILocation(line: 576, column: 17, scope: !1207)
!1247 = !DILocation(line: 0, scope: !1209)
!1248 = !DILocation(line: 579, column: 1, scope: !1200)
!1249 = distinct !DISubprogram(name: "gsl_sf_exp", scope: !2, file: !2, line: 586, type: !1250, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!106, !105}
!1252 = !{!1253, !1254, !1255}
!1253 = !DILocalVariable(name: "x", arg: 1, scope: !1249, file: !2, line: 586, type: !105)
!1254 = !DILocalVariable(name: "result", scope: !1249, file: !2, line: 588, type: !108)
!1255 = !DILocalVariable(name: "status", scope: !1249, file: !2, line: 588, type: !55)
!1256 = !DILocation(line: 0, scope: !1249)
!1257 = !DILocation(line: 0, scope: !102, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 588, column: 3, scope: !1249)
!1259 = !DILocation(line: 109, column: 8, scope: !119, inlinedAt: !1258)
!1260 = !DILocation(line: 109, column: 6, scope: !102, inlinedAt: !1258)
!1261 = !DILocation(line: 110, column: 5, scope: !131, inlinedAt: !1258)
!1262 = !DILocation(line: 112, column: 13, scope: !133, inlinedAt: !1258)
!1263 = !DILocation(line: 112, column: 11, scope: !119, inlinedAt: !1258)
!1264 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !1258)
!1265 = !DILocation(line: 116, column: 19, scope: !141, inlinedAt: !1258)
!1266 = !DILocation(line: 588, column: 3, scope: !1249)
!1267 = !DILocation(line: 588, column: 3, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 588, column: 3)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 588, column: 3)
!1270 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 588, column: 3)
!1271 = !DILocation(line: 589, column: 1, scope: !1249)
!1272 = distinct !DISubprogram(name: "gsl_sf_exp_mult", scope: !2, file: !2, line: 591, type: !1273, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!106, !105, !105}
!1275 = !{!1276, !1277, !1278, !1279}
!1276 = !DILocalVariable(name: "x", arg: 1, scope: !1272, file: !2, line: 591, type: !105)
!1277 = !DILocalVariable(name: "y", arg: 2, scope: !1272, file: !2, line: 591, type: !105)
!1278 = !DILocalVariable(name: "result", scope: !1272, file: !2, line: 593, type: !108)
!1279 = !DILocalVariable(name: "status", scope: !1272, file: !2, line: 593, type: !55)
!1280 = distinct !DIAssignID()
!1281 = !DILocation(line: 0, scope: !1272)
!1282 = !DILocation(line: 593, column: 3, scope: !1272)
!1283 = !DILocation(line: 593, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 593, column: 3)
!1285 = !DILocation(line: 593, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 593, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 593, column: 3)
!1288 = !DILocation(line: 594, column: 1, scope: !1272)
!1289 = distinct !DISubprogram(name: "gsl_sf_expm1", scope: !2, file: !2, line: 596, type: !1250, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DILocalVariable(name: "x", arg: 1, scope: !1289, file: !2, line: 596, type: !105)
!1292 = !DILocalVariable(name: "result", scope: !1289, file: !2, line: 598, type: !108)
!1293 = !DILocalVariable(name: "status", scope: !1289, file: !2, line: 598, type: !55)
!1294 = !DILocation(line: 0, scope: !1289)
!1295 = !DILocation(line: 0, scope: !591, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 598, column: 3, scope: !1289)
!1297 = !DILocation(line: 330, column: 8, scope: !598, inlinedAt: !1296)
!1298 = !DILocation(line: 330, column: 6, scope: !591, inlinedAt: !1296)
!1299 = !DILocation(line: 335, column: 13, scope: !606, inlinedAt: !1296)
!1300 = !DILocation(line: 335, column: 11, scope: !598, inlinedAt: !1296)
!1301 = !DILocation(line: 336, column: 19, scope: !609, inlinedAt: !1296)
!1302 = !DILocation(line: 336, column: 26, scope: !609, inlinedAt: !1296)
!1303 = !DILocation(line: 338, column: 5, scope: !609, inlinedAt: !1296)
!1304 = !DILocation(line: 340, column: 13, scope: !618, inlinedAt: !1296)
!1305 = !DILocation(line: 340, column: 11, scope: !606, inlinedAt: !1296)
!1306 = !DILocation(line: 341, column: 33, scope: !621, inlinedAt: !1296)
!1307 = !DILocation(line: 341, column: 44, scope: !621, inlinedAt: !1296)
!1308 = !DILocation(line: 341, column: 60, scope: !621, inlinedAt: !1296)
!1309 = !DILocation(line: 341, column: 73, scope: !621, inlinedAt: !1296)
!1310 = !DILocation(line: 341, column: 68, scope: !621, inlinedAt: !1296)
!1311 = !DILocation(line: 341, column: 62, scope: !621, inlinedAt: !1296)
!1312 = !DILocation(line: 341, column: 54, scope: !621, inlinedAt: !1296)
!1313 = !DILocation(line: 341, column: 48, scope: !621, inlinedAt: !1296)
!1314 = !DILocation(line: 341, column: 41, scope: !621, inlinedAt: !1296)
!1315 = !DILocation(line: 341, column: 35, scope: !621, inlinedAt: !1296)
!1316 = !DILocation(line: 341, column: 28, scope: !621, inlinedAt: !1296)
!1317 = !DILocation(line: 341, column: 21, scope: !621, inlinedAt: !1296)
!1318 = !DILocation(line: 343, column: 5, scope: !621, inlinedAt: !1296)
!1319 = !DILocation(line: 345, column: 13, scope: !640, inlinedAt: !1296)
!1320 = !DILocation(line: 345, column: 11, scope: !618, inlinedAt: !1296)
!1321 = !DILocation(line: 346, column: 19, scope: !643, inlinedAt: !1296)
!1322 = !DILocation(line: 346, column: 26, scope: !643, inlinedAt: !1296)
!1323 = !DILocation(line: 348, column: 5, scope: !643, inlinedAt: !1296)
!1324 = !DILocation(line: 351, column: 5, scope: !655, inlinedAt: !1296)
!1325 = !DILocation(line: 598, column: 3, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 598, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 598, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 598, column: 3)
!1329 = !DILocation(line: 599, column: 1, scope: !1289)
!1330 = distinct !DISubprogram(name: "gsl_sf_exprel", scope: !2, file: !2, line: 601, type: !1250, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DILocalVariable(name: "x", arg: 1, scope: !1330, file: !2, line: 601, type: !105)
!1333 = !DILocalVariable(name: "result", scope: !1330, file: !2, line: 603, type: !108)
!1334 = !DILocalVariable(name: "status", scope: !1330, file: !2, line: 603, type: !55)
!1335 = distinct !DIAssignID()
!1336 = !DILocation(line: 0, scope: !1330)
!1337 = !DILocation(line: 603, column: 3, scope: !1330)
!1338 = !DILocation(line: 603, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 603, column: 3)
!1340 = !DILocation(line: 603, column: 3, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 603, column: 3)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 603, column: 3)
!1343 = !DILocation(line: 604, column: 1, scope: !1330)
!1344 = distinct !DISubprogram(name: "gsl_sf_exprel_2", scope: !2, file: !2, line: 606, type: !1250, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1345)
!1345 = !{!1346, !1347, !1348}
!1346 = !DILocalVariable(name: "x", arg: 1, scope: !1344, file: !2, line: 606, type: !105)
!1347 = !DILocalVariable(name: "result", scope: !1344, file: !2, line: 608, type: !108)
!1348 = !DILocalVariable(name: "status", scope: !1344, file: !2, line: 608, type: !55)
!1349 = distinct !DIAssignID()
!1350 = !DILocation(line: 0, scope: !1344)
!1351 = !DILocation(line: 608, column: 3, scope: !1344)
!1352 = !DILocation(line: 608, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 608, column: 3)
!1354 = !DILocation(line: 608, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 608, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 608, column: 3)
!1357 = !DILocation(line: 609, column: 1, scope: !1344)
!1358 = distinct !DISubprogram(name: "gsl_sf_exprel_n", scope: !2, file: !2, line: 611, type: !1359, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!106, !176, !105}
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DILocalVariable(name: "n", arg: 1, scope: !1358, file: !2, line: 611, type: !176)
!1363 = !DILocalVariable(name: "x", arg: 2, scope: !1358, file: !2, line: 611, type: !105)
!1364 = !DILocalVariable(name: "result", scope: !1358, file: !2, line: 613, type: !108)
!1365 = !DILocalVariable(name: "status", scope: !1358, file: !2, line: 613, type: !55)
!1366 = distinct !DIAssignID()
!1367 = !DILocation(line: 0, scope: !1358)
!1368 = !DILocation(line: 613, column: 3, scope: !1358)
!1369 = !DILocation(line: 613, column: 3, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 613, column: 3)
!1371 = !DILocation(line: 613, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 613, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 613, column: 3)
!1374 = !DILocation(line: 614, column: 1, scope: !1358)
