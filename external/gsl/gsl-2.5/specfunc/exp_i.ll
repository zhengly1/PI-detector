; ModuleID = 'exp.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #6, !dbg !130
  br label %15, !dbg !130

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !132
  br i1 %7, label %8, label %10, !dbg !134

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !135, !tbaa !124
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !135
  store double 0x10000000000000, ptr %9, align 8, !dbg !135, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !138
  br label %15, !dbg !138

10:                                               ; preds = %6
  %11 = tail call double @exp(double noundef %0) #6, !dbg !140
  store double %11, ptr %1, align 8, !dbg !142, !tbaa !124
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !143
  %13 = fmul double %12, 0x3CC0000000000000, !dbg !144
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !145
  store double %13, ptr %14, align 8, !dbg !146, !tbaa !129
  br label %15, !dbg !147

15:                                               ; preds = %10, %8, %4
  %16 = phi i32 [ 16, %4 ], [ 15, %8 ], [ 0, %10 ], !dbg !148
  ret i32 %16, !dbg !149
}

declare !dbg !150 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !155 double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 16) #6, !dbg !188
  br label %32, !dbg !188

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0xC1DFFFFFFFC00000, !dbg !190
  br i1 %8, label %9, label %12, !dbg !191

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !192, !tbaa !183
  %10 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 1, !dbg !192
  store double 0x10000000000000, ptr %10, align 8, !dbg !192, !tbaa !186
  %11 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 2, !dbg !192
  store i32 0, ptr %11, align 8, !dbg !192, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 15) #6, !dbg !195
  br label %32, !dbg !195

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

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %19, %16 ], [ 0, %12 ], !dbg !202
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !172, metadata !DIExpression()), !dbg !203
  %22 = sitofp i32 %21 to double, !dbg !204
  %23 = fmul double %22, 0x40026BB1BBB55516, !dbg !205
  %handler_result = call double @fSubHandlerDouble(double %0, double %23), !dbg !206
  %24 = tail call double @exp(double noundef %handler_result) #6, !dbg !206
  store double %24, ptr %1, align 8, !dbg !207, !tbaa !183
  %25 = tail call double @llvm.fabs.f64(double %0), !dbg !208
  %handler_result1 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !209
  %26 = fmul double %handler_result1, 2.000000e+00, !dbg !209
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !210
  %28 = tail call double @llvm.fabs.f64(double %24), !dbg !211
  %29 = fmul double %27, %28, !dbg !212
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 1, !dbg !213
  store double %29, ptr %30, align 8, !dbg !214, !tbaa !186
  %31 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %1, i64 0, i32 2, !dbg !215
  store i32 %21, ptr %31, align 8, !dbg !216, !tbaa !187
  br label %32

32:                                               ; preds = %20, %9, %4
  %33 = phi i32 [ 16, %4 ], [ 15, %9 ], [ 0, %20 ], !dbg !217
  ret i32 %33, !dbg !218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !219 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !223, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata double %1, metadata !224, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !243
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !244
  tail call void @llvm.dbg.value(metadata double %4, metadata !226, metadata !DIExpression()), !dbg !243
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !245
  br i1 %5, label %6, label %7, !dbg !246

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !247
  br label %48, !dbg !249

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !250
  %9 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %10 = and i1 %8, %9, !dbg !251
  %11 = fcmp olt double %4, 0x5FE9999999999999
  %12 = and i1 %10, %11, !dbg !251
  %13 = fcmp ogt double %4, 0x2003333333333333
  %14 = and i1 %13, %12, !dbg !251
  br i1 %14, label %15, label %23, !dbg !251

15:                                               ; preds = %7
  %16 = tail call double @exp(double noundef %0) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata double %16, metadata !227, metadata !DIExpression()), !dbg !253
  %17 = fmul double %16, %1, !dbg !254
  store double %17, ptr %2, align 8, !dbg !255, !tbaa !124
  %18 = tail call double @llvm.fabs.f64(double %0), !dbg !256
  %handler_result = call double @fAddHandlerDouble(double %18, double 2.000000e+00), !dbg !257
  %19 = fmul double %handler_result, 0x3CB0000000000000, !dbg !257
  %20 = tail call double @llvm.fabs.f64(double %17), !dbg !258
  %21 = fmul double %19, %20, !dbg !259
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !260
  store double %21, ptr %22, align 8, !dbg !261, !tbaa !129
  br label %48

23:                                               ; preds = %7
  %handler_result9 = call double @callHandler(i32 12, double %4, double %4), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !231, metadata !DIExpression()), !dbg !263
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result9, double %0), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !233, metadata !DIExpression()), !dbg !263
  %24 = fcmp ogt double %handler_result1, 0x40862E2E8418F241, !dbg !262
  br i1 %24, label %25, label %27, !dbg !264

25:                                               ; preds = %23
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !265, !tbaa !124
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !265
  store double 0x7FF0000000000000, ptr %26, align 8, !dbg !265, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 16) #6, !dbg !268
  br label %48, !dbg !268

27:                                               ; preds = %23
  %28 = fcmp olt double %handler_result1, 0xC086231762997524, !dbg !270
  br i1 %28, label %29, label %31, !dbg !271

29:                                               ; preds = %27
  store double 0.000000e+00, ptr %2, align 8, !dbg !272, !tbaa !124
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !272
  store double 0x10000000000000, ptr %30, align 8, !dbg !272, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 15) #6, !dbg !275
  br label %48, !dbg !275

31:                                               ; preds = %27
  %32 = fcmp oge double %1, 0.000000e+00, !dbg !277
  tail call void @llvm.dbg.value(metadata double poison, metadata !234, metadata !DIExpression()), !dbg !278
  %33 = tail call double @llvm.floor.f64(double %0), !dbg !279
  tail call void @llvm.dbg.value(metadata double %33, metadata !238, metadata !DIExpression()), !dbg !278
  %34 = tail call double @llvm.floor.f64(double %handler_result9), !dbg !280
  tail call void @llvm.dbg.value(metadata double %34, metadata !239, metadata !DIExpression()), !dbg !278
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %33), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !240, metadata !DIExpression()), !dbg !278
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result9, double %34), !dbg !282
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !241, metadata !DIExpression()), !dbg !278
  %35 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !282
  %36 = tail call double @llvm.fabs.f64(double %34), !dbg !283
  %handler_result4 = call double @fAddHandlerDouble(double %35, double %36), !dbg !284
  %37 = fmul double %handler_result4, 0x3CC0000000000000, !dbg !284
  tail call void @llvm.dbg.value(metadata double %37, metadata !242, metadata !DIExpression()), !dbg !278
  %handler_result5 = call double @fAddHandlerDouble(double %33, double %34), !dbg !285
  %38 = tail call double @exp(double noundef %handler_result5) #6, !dbg !285
  %39 = fneg double %38, !dbg !286
  %40 = select i1 %32, double %38, double %39, !dbg !286
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result2, double %handler_result3), !dbg !287
  %41 = tail call double @exp(double noundef %handler_result6) #6, !dbg !287
  %42 = fmul double %40, %41, !dbg !288
  store double %42, ptr %2, align 8, !dbg !289, !tbaa !124
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !290
  %44 = fmul double %37, %43, !dbg !291
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !292
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result5, double 1.000000e+00), !dbg !293
  %46 = fmul double %handler_result7, 0x3CC0000000000000, !dbg !293
  %47 = fmul double %46, %43, !dbg !294
  %handler_result8 = call double @fAddHandlerDouble(double %44, double %47), !dbg !295
  store double %handler_result8, ptr %45, align 8, !dbg !295, !tbaa !129
  br label %48

48:                                               ; preds = %31, %29, %25, %15, %6
  %49 = phi i32 [ 0, %6 ], [ 0, %15 ], [ 16, %25 ], [ 15, %29 ], [ 0, %31 ], !dbg !296
  ret i32 %49, !dbg !297
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !298 double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !299 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !303, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata double %1, metadata !304, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !321
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !322
  tail call void @llvm.dbg.value(metadata double %4, metadata !306, metadata !DIExpression()), !dbg !321
  %5 = fcmp oeq double %1, 0.000000e+00, !dbg !323
  br i1 %5, label %6, label %7, !dbg !324

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false), !dbg !325
  br label %54, !dbg !327

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !328
  %9 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %10 = and i1 %8, %9, !dbg !329
  %11 = fcmp olt double %4, 0x5FE9999999999999
  %12 = and i1 %10, %11, !dbg !329
  %13 = fcmp ogt double %4, 0x2003333333333333
  %14 = and i1 %13, %12, !dbg !329
  br i1 %14, label %15, label %24, !dbg !329

15:                                               ; preds = %7
  %16 = tail call double @exp(double noundef %0) #6, !dbg !330
  tail call void @llvm.dbg.value(metadata double %16, metadata !307, metadata !DIExpression()), !dbg !331
  %17 = fmul double %16, %1, !dbg !332
  store double %17, ptr %2, align 8, !dbg !333, !tbaa !183
  %18 = tail call double @llvm.fabs.f64(double %0), !dbg !334
  %handler_result = call double @fAddHandlerDouble(double %18, double 2.000000e+00), !dbg !335
  %19 = fmul double %handler_result, 0x3CB0000000000000, !dbg !335
  %20 = tail call double @llvm.fabs.f64(double %17), !dbg !336
  %21 = fmul double %19, %20, !dbg !337
  %22 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !338
  store double %21, ptr %22, align 8, !dbg !339, !tbaa !186
  %23 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !340
  store i32 0, ptr %23, align 8, !dbg !341, !tbaa !187
  br label %54

24:                                               ; preds = %7
  %handler_result6 = call double @callHandler(i32 12, double %4, double %4), !dbg !342
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !311, metadata !DIExpression()), !dbg !343
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result6, double %0), !dbg !342
  %25 = fdiv double %handler_result1, 0x40026BB1BBB55516, !dbg !342
  tail call void @llvm.dbg.value(metadata double %25, metadata !313, metadata !DIExpression()), !dbg !343
  %26 = fcmp ogt double %25, 0x41DFFFFFFF800000, !dbg !344
  br i1 %26, label %27, label %30, !dbg !345

27:                                               ; preds = %24
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !346, !tbaa !183
  %28 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !346
  store double 0x7FF0000000000000, ptr %28, align 8, !dbg !346, !tbaa !186
  %29 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !346
  store i32 0, ptr %29, align 8, !dbg !346, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 207, i32 noundef 16) #6, !dbg !349
  br label %54, !dbg !349

30:                                               ; preds = %24
  %31 = fcmp olt double %25, 0xC1DFFFFFFFC00000, !dbg !351
  br i1 %31, label %32, label %35, !dbg !352

32:                                               ; preds = %30
  store double 0.000000e+00, ptr %2, align 8, !dbg !353, !tbaa !183
  %33 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !353
  store double 0x10000000000000, ptr %33, align 8, !dbg !353, !tbaa !186
  %34 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !353
  store i32 0, ptr %34, align 8, !dbg !353, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 15) #6, !dbg !356
  br label %54, !dbg !356

35:                                               ; preds = %30
  %36 = fcmp oge double %1, 0.000000e+00, !dbg !358
  tail call void @llvm.dbg.value(metadata double poison, metadata !314, metadata !DIExpression()), !dbg !359
  %37 = tail call double @llvm.floor.f64(double %25), !dbg !360
  %38 = fptosi double %37 to i32, !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !318, metadata !DIExpression()), !dbg !359
  %39 = sitofp i32 %38 to double, !dbg !362
  %handler_result2 = call double @fSubHandlerDouble(double %25, double %39), !dbg !363
  %40 = fmul double %handler_result2, 0x40026BB1BBB55516, !dbg !363
  tail call void @llvm.dbg.value(metadata double %40, metadata !319, metadata !DIExpression()), !dbg !359
  %41 = tail call double @llvm.fabs.f64(double %0), !dbg !364
  %42 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !365
  %handler_result3 = call double @fAddHandlerDouble(double %41, double %42), !dbg !366
  %43 = tail call double @llvm.fabs.f64(double %39), !dbg !366
  %44 = fmul double %43, 0x40026BB1BBB55516, !dbg !367
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %44), !dbg !368
  %45 = fmul double %handler_result4, 0x3CC0000000000000, !dbg !368
  tail call void @llvm.dbg.value(metadata double %45, metadata !320, metadata !DIExpression()), !dbg !359
  %46 = tail call double @exp(double noundef %40) #6, !dbg !369
  %47 = fneg double %46, !dbg !370
  %48 = select i1 %36, double %46, double %47, !dbg !370
  store double %48, ptr %2, align 8, !dbg !371, !tbaa !183
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !372
  %50 = fmul double %45, %49, !dbg !373
  %51 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !374
  %52 = fmul double %49, 0x3CC0000000000000, !dbg !375
  %handler_result5 = call double @fAddHandlerDouble(double %50, double %52), !dbg !376
  store double %handler_result5, ptr %51, align 8, !dbg !376, !tbaa !186
  %53 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !377
  store i32 %38, ptr %53, align 8, !dbg !378, !tbaa !187
  br label %54

54:                                               ; preds = %35, %32, %27, %15, %6
  %55 = phi i32 [ 0, %6 ], [ 0, %15 ], [ 16, %27 ], [ 15, %32 ], [ 0, %35 ], !dbg !379
  ret i32 %55, !dbg !380
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_err_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !381 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !385, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %1, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %2, metadata !387, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %3, metadata !388, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !389, metadata !DIExpression()), !dbg !408
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !409
  tail call void @llvm.dbg.value(metadata double %6, metadata !390, metadata !DIExpression()), !dbg !408
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !410
  br i1 %7, label %8, label %13, !dbg !411

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !412, !tbaa !124
  %9 = tail call double @exp(double noundef %0) #6, !dbg !414
  %10 = fmul double %9, %3, !dbg !415
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !416
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !417
  store double %11, ptr %12, align 8, !dbg !418, !tbaa !129
  br label %57, !dbg !419

13:                                               ; preds = %5
  %14 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !420
  %15 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %16 = and i1 %14, %15, !dbg !421
  %17 = fcmp olt double %6, 0x5FE9999999999999
  %18 = and i1 %16, %17, !dbg !421
  %19 = fcmp ogt double %6, 0x2003333333333333
  %20 = and i1 %19, %18, !dbg !421
  br i1 %20, label %21, label %31, !dbg !421

21:                                               ; preds = %13
  %22 = tail call double @exp(double noundef %0) #6, !dbg !422
  tail call void @llvm.dbg.value(metadata double %22, metadata !391, metadata !DIExpression()), !dbg !423
  %23 = fmul double %22, %2, !dbg !424
  store double %23, ptr %4, align 8, !dbg !425, !tbaa !124
  %24 = tail call double @llvm.fabs.f64(double %3), !dbg !426
  %25 = fmul double %1, %2, !dbg !427
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !428
  %handler_result = call double @fAddHandlerDouble(double %24, double %26), !dbg !429
  %27 = fmul double %handler_result, %22, !dbg !429
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !430
  %29 = tail call double @llvm.fabs.f64(double %23), !dbg !431
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !432
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %30), !dbg !433
  store double %handler_result1, ptr %28, align 8, !dbg !433, !tbaa !129
  br label %57

31:                                               ; preds = %13
  %handler_result9 = call double @callHandler(i32 12, double %6, double %6), !dbg !434
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !395, metadata !DIExpression()), !dbg !435
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result9, double %0), !dbg !434
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !397, metadata !DIExpression()), !dbg !435
  %32 = fcmp ogt double %handler_result2, 0x40862E2E8418F241, !dbg !434
  br i1 %32, label %33, label %35, !dbg !436

33:                                               ; preds = %31
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !437, !tbaa !124
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !437
  store double 0x7FF0000000000000, ptr %34, align 8, !dbg !437, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 254, i32 noundef 16) #6, !dbg !440
  br label %57, !dbg !440

35:                                               ; preds = %31
  %36 = fcmp olt double %handler_result2, 0xC086231762997524, !dbg !442
  br i1 %36, label %37, label %39, !dbg !443

37:                                               ; preds = %35
  store double 0.000000e+00, ptr %4, align 8, !dbg !444, !tbaa !124
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !444
  store double 0x10000000000000, ptr %38, align 8, !dbg !444, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 15) #6, !dbg !447
  br label %57, !dbg !447

39:                                               ; preds = %35
  %40 = fcmp oge double %2, 0.000000e+00, !dbg !449
  tail call void @llvm.dbg.value(metadata double poison, metadata !398, metadata !DIExpression()), !dbg !450
  %41 = tail call double @llvm.floor.f64(double %0), !dbg !451
  tail call void @llvm.dbg.value(metadata double %41, metadata !402, metadata !DIExpression()), !dbg !450
  %42 = tail call double @llvm.floor.f64(double %handler_result9), !dbg !452
  tail call void @llvm.dbg.value(metadata double %42, metadata !403, metadata !DIExpression()), !dbg !450
  %handler_result3 = call double @fSubHandlerDouble(double %0, double %41), !dbg !453
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !404, metadata !DIExpression()), !dbg !450
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result9, double %42), !dbg !454
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !405, metadata !DIExpression()), !dbg !450
  %handler_result5 = call double @fAddHandlerDouble(double %41, double %42), !dbg !455
  %43 = tail call double @exp(double noundef %handler_result5) #6, !dbg !455
  tail call void @llvm.dbg.value(metadata double %43, metadata !406, metadata !DIExpression()), !dbg !450
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result3, double %handler_result4), !dbg !456
  %44 = tail call double @exp(double noundef %handler_result6) #6, !dbg !456
  tail call void @llvm.dbg.value(metadata double %44, metadata !407, metadata !DIExpression()), !dbg !450
  %45 = fneg double %43, !dbg !457
  %46 = select i1 %40, double %43, double %45, !dbg !457
  %47 = fmul double %46, %44, !dbg !458
  store double %47, ptr %4, align 8, !dbg !459, !tbaa !124
  %48 = fmul double %43, %44, !dbg !460
  %49 = fmul double %48, 2.000000e+00, !dbg !461
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !462
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !463
  %52 = fdiv double %3, %2, !dbg !464
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !465
  %54 = fmul double %53, %48, !dbg !466
  %handler_result7 = call double @fAddHandlerDouble(double %54, double %50), !dbg !467
  %55 = tail call double @llvm.fabs.f64(double %1), !dbg !467
  %56 = fmul double %55, %48, !dbg !468
  %handler_result8 = call double @fAddHandlerDouble(double %56, double %handler_result7), !dbg !469
  store double %handler_result8, ptr %51, align 8, !dbg !469, !tbaa !129
  br label %57

57:                                               ; preds = %39, %37, %33, %21, %8
  %58 = phi i32 [ 0, %8 ], [ 0, %21 ], [ 16, %33 ], [ 15, %37 ], [ 0, %39 ], !dbg !470
  ret i32 %58, !dbg !471
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_mult_err_e10_e(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !472 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !476, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %1, metadata !477, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %2, metadata !478, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata double %3, metadata !479, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !480, metadata !DIExpression()), !dbg !496
  %6 = tail call double @llvm.fabs.f64(double %2), !dbg !497
  tail call void @llvm.dbg.value(metadata double %6, metadata !481, metadata !DIExpression()), !dbg !496
  %7 = fcmp oeq double %2, 0.000000e+00, !dbg !498
  br i1 %7, label %8, label %14, !dbg !499

8:                                                ; preds = %5
  store double 0.000000e+00, ptr %4, align 8, !dbg !500, !tbaa !183
  %9 = tail call double @exp(double noundef %0) #6, !dbg !502
  %10 = fmul double %9, %3, !dbg !503
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !504
  %12 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !505
  store double %11, ptr %12, align 8, !dbg !506, !tbaa !186
  %13 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !507
  store i32 0, ptr %13, align 8, !dbg !508, !tbaa !187
  br label %61, !dbg !509

14:                                               ; preds = %5
  %15 = fcmp olt double %0, 0x40762E42FEFA39EF, !dbg !510
  %16 = fcmp ogt double %0, 0xC076232BDD7ABCD2
  %17 = and i1 %15, %16, !dbg !511
  %18 = fcmp olt double %6, 0x5FE9999999999999
  %19 = and i1 %17, %18, !dbg !511
  %20 = fcmp ogt double %6, 0x2003333333333333
  %21 = and i1 %20, %19, !dbg !511
  br i1 %21, label %22, label %33, !dbg !511

22:                                               ; preds = %14
  %23 = tail call double @exp(double noundef %0) #6, !dbg !512
  tail call void @llvm.dbg.value(metadata double %23, metadata !482, metadata !DIExpression()), !dbg !513
  %24 = fmul double %23, %2, !dbg !514
  store double %24, ptr %4, align 8, !dbg !515, !tbaa !183
  %25 = tail call double @llvm.fabs.f64(double %3), !dbg !516
  %26 = fmul double %1, %2, !dbg !517
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !518
  %handler_result = call double @fAddHandlerDouble(double %25, double %27), !dbg !519
  %28 = fmul double %handler_result, %23, !dbg !519
  %29 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !520
  %30 = tail call double @llvm.fabs.f64(double %24), !dbg !521
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !522
  %handler_result1 = call double @fAddHandlerDouble(double %28, double %31), !dbg !523
  store double %handler_result1, ptr %29, align 8, !dbg !523, !tbaa !186
  %32 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !524
  store i32 0, ptr %32, align 8, !dbg !525, !tbaa !187
  br label %61

33:                                               ; preds = %14
  %handler_result7 = call double @callHandler(i32 12, double %6, double %6), !dbg !526
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !486, metadata !DIExpression()), !dbg !527
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result7, double %0), !dbg !526
  %34 = fdiv double %handler_result2, 0x40026BB1BBB55516, !dbg !526
  tail call void @llvm.dbg.value(metadata double %34, metadata !488, metadata !DIExpression()), !dbg !527
  %35 = fcmp ogt double %34, 0x41DFFFFFFF800000, !dbg !528
  br i1 %35, label %36, label %39, !dbg !529

36:                                               ; preds = %33
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !530, !tbaa !183
  %37 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !530
  store double 0x7FF0000000000000, ptr %37, align 8, !dbg !530, !tbaa !186
  %38 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !530
  store i32 0, ptr %38, align 8, !dbg !530, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 16) #6, !dbg !533
  br label %61, !dbg !533

39:                                               ; preds = %33
  %40 = fcmp olt double %34, 0xC1DFFFFFFFC00000, !dbg !535
  br i1 %40, label %41, label %44, !dbg !536

41:                                               ; preds = %39
  store double 0.000000e+00, ptr %4, align 8, !dbg !537, !tbaa !183
  %42 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !537
  store double 0x10000000000000, ptr %42, align 8, !dbg !537, !tbaa !186
  %43 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !537
  store i32 0, ptr %43, align 8, !dbg !537, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 307, i32 noundef 15) #6, !dbg !540
  br label %61, !dbg !540

44:                                               ; preds = %39
  %45 = fcmp oge double %2, 0.000000e+00, !dbg !542
  tail call void @llvm.dbg.value(metadata double poison, metadata !489, metadata !DIExpression()), !dbg !543
  %46 = tail call double @llvm.floor.f64(double %34), !dbg !544
  %47 = fptosi double %46 to i32, !dbg !545
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !493, metadata !DIExpression()), !dbg !543
  %48 = sitofp i32 %47 to double, !dbg !546
  %handler_result3 = call double @fSubHandlerDouble(double %34, double %48), !dbg !547
  %49 = fmul double %handler_result3, 0x40026BB1BBB55516, !dbg !547
  tail call void @llvm.dbg.value(metadata double %49, metadata !494, metadata !DIExpression()), !dbg !543
  %50 = fdiv double %3, %6, !dbg !548
  %handler_result4 = call double @fAddHandlerDouble(double %50, double %1), !dbg !549
  %51 = tail call double @llvm.fabs.f64(double %49), !dbg !549
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !550
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %52), !dbg !551
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !495, metadata !DIExpression()), !dbg !543
  %53 = tail call double @exp(double noundef %49) #6, !dbg !551
  %54 = fneg double %53, !dbg !552
  %55 = select i1 %45, double %53, double %54, !dbg !552
  store double %55, ptr %4, align 8, !dbg !553, !tbaa !183
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !554
  %57 = fmul double %handler_result5, %56, !dbg !555
  %58 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 1, !dbg !556
  %59 = fmul double %56, 0x3CC0000000000000, !dbg !557
  %handler_result6 = call double @fAddHandlerDouble(double %57, double %59), !dbg !558
  store double %handler_result6, ptr %58, align 8, !dbg !558, !tbaa !186
  %60 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %4, i64 0, i32 2, !dbg !559
  store i32 %47, ptr %60, align 8, !dbg !560, !tbaa !187
  br label %61

61:                                               ; preds = %44, %41, %36, %22, %8
  %62 = phi i32 [ 0, %8 ], [ 0, %22 ], [ 16, %36 ], [ 15, %41 ], [ 0, %44 ], !dbg !561
  ret i32 %62, !dbg !562
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expm1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !563 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !565, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !566, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !567, metadata !DIExpression()), !dbg !568
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !569
  br i1 %3, label %4, label %6, !dbg !571

4:                                                ; preds = %2
  store double -1.000000e+00, ptr %1, align 8, !dbg !572, !tbaa !124
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !574
  store double 0x3CB0000000000000, ptr %5, align 8, !dbg !575, !tbaa !129
  br label %36, !dbg !576

6:                                                ; preds = %2
  %7 = fcmp olt double %0, -2.000000e-03, !dbg !577
  br i1 %7, label %8, label %13, !dbg !579

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #6, !dbg !580
  %handler_result = call double @fAddHandlerDouble(double %9, double -1.000000e+00), !dbg !582
  store double %handler_result, ptr %1, align 8, !dbg !582, !tbaa !124
  %10 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !583
  %11 = fmul double %10, 0x3CC0000000000000, !dbg !584
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !585
  store double %11, ptr %12, align 8, !dbg !586, !tbaa !129
  br label %36, !dbg !587

13:                                               ; preds = %6
  %14 = fcmp olt double %0, 2.000000e-03, !dbg !588
  br i1 %14, label %15, label %27, !dbg !590

15:                                               ; preds = %13
  %16 = fmul double %0, 5.000000e-01, !dbg !591
  %17 = fdiv double %0, 3.000000e+00, !dbg !593
  %18 = fmul double %0, 2.500000e-01, !dbg !594
  %19 = fmul double %0, 2.000000e-01, !dbg !595
  %handler_result1 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !596
  %20 = fmul double %18, %handler_result1, !dbg !596
  %handler_result2 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !597
  %21 = fmul double %17, %handler_result2, !dbg !597
  %handler_result3 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !598
  %22 = fmul double %16, %handler_result3, !dbg !598
  %handler_result4 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !599
  %23 = fmul double %handler_result4, %0, !dbg !599
  store double %23, ptr %1, align 8, !dbg !600, !tbaa !124
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !601
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !602
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !603
  store double %25, ptr %26, align 8, !dbg !604, !tbaa !129
  br label %36, !dbg !605

27:                                               ; preds = %13
  %28 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !606
  br i1 %28, label %29, label %34, !dbg !608

29:                                               ; preds = %27
  %30 = tail call double @exp(double noundef %0) #6, !dbg !609
  %handler_result5 = call double @fAddHandlerDouble(double %30, double -1.000000e+00), !dbg !611
  store double %handler_result5, ptr %1, align 8, !dbg !611, !tbaa !124
  %31 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !612
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !613
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !614
  store double %32, ptr %33, align 8, !dbg !615, !tbaa !129
  br label %36, !dbg !616

34:                                               ; preds = %27
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !617, !tbaa !124
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !617
  store double 0x7FF0000000000000, ptr %35, align 8, !dbg !617, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 351, i32 noundef 16) #6, !dbg !620
  br label %36, !dbg !620

36:                                               ; preds = %34, %29, %15, %8, %4
  %37 = phi i32 [ 0, %4 ], [ 0, %8 ], [ 0, %15 ], [ 0, %29 ], [ 16, %34 ], !dbg !622
  ret i32 %37, !dbg !623
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !624 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !626, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !627, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !628, metadata !DIExpression()), !dbg !629
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !630
  br i1 %3, label %4, label %9, !dbg !632

4:                                                ; preds = %2
  %5 = fdiv double -1.000000e+00, %0, !dbg !633
  store double %5, ptr %1, align 8, !dbg !635, !tbaa !124
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !636
  %7 = fmul double %6, 0x3CB0000000000000, !dbg !637
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !638
  store double %7, ptr %8, align 8, !dbg !639, !tbaa !129
  br label %40, !dbg !640

9:                                                ; preds = %2
  %10 = fcmp olt double %0, -2.000000e-03, !dbg !641
  br i1 %10, label %11, label %17, !dbg !643

11:                                               ; preds = %9
  %12 = tail call double @exp(double noundef %0) #6, !dbg !644
  %handler_result = call double @fAddHandlerDouble(double %12, double -1.000000e+00), !dbg !646
  %13 = fdiv double %handler_result, %0, !dbg !646
  store double %13, ptr %1, align 8, !dbg !647, !tbaa !124
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !648
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !649
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !650
  store double %15, ptr %16, align 8, !dbg !651, !tbaa !129
  br label %40, !dbg !652

17:                                               ; preds = %9
  %18 = fcmp olt double %0, 2.000000e-03, !dbg !653
  br i1 %18, label %19, label %30, !dbg !655

19:                                               ; preds = %17
  %20 = fmul double %0, 5.000000e-01, !dbg !656
  %21 = fdiv double %0, 3.000000e+00, !dbg !658
  %22 = fmul double %0, 2.500000e-01, !dbg !659
  %23 = fmul double %0, 2.000000e-01, !dbg !660
  %handler_result1 = call double @fAddHandlerDouble(double %23, double 1.000000e+00), !dbg !661
  %24 = fmul double %22, %handler_result1, !dbg !661
  %handler_result2 = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !662
  %25 = fmul double %21, %handler_result2, !dbg !662
  %handler_result3 = call double @fAddHandlerDouble(double %25, double 1.000000e+00), !dbg !663
  %26 = fmul double %20, %handler_result3, !dbg !663
  %handler_result4 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !664
  store double %handler_result4, ptr %1, align 8, !dbg !664, !tbaa !124
  %27 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !665
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !666
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !667
  store double %28, ptr %29, align 8, !dbg !668, !tbaa !129
  br label %40, !dbg !669

30:                                               ; preds = %17
  %31 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !670
  br i1 %31, label %32, label %38, !dbg !672

32:                                               ; preds = %30
  %33 = tail call double @exp(double noundef %0) #6, !dbg !673
  %handler_result5 = call double @fAddHandlerDouble(double %33, double -1.000000e+00), !dbg !675
  %34 = fdiv double %handler_result5, %0, !dbg !675
  store double %34, ptr %1, align 8, !dbg !676, !tbaa !124
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !677
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !678
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !679
  store double %36, ptr %37, align 8, !dbg !680, !tbaa !129
  br label %40, !dbg !681

38:                                               ; preds = %30
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !682, !tbaa !124
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !682
  store double 0x7FF0000000000000, ptr %39, align 8, !dbg !682, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 381, i32 noundef 16) #6, !dbg !685
  br label %40, !dbg !685

40:                                               ; preds = %38, %32, %19, %11, %4
  %41 = phi i32 [ 0, %4 ], [ 0, %11 ], [ 0, %19 ], [ 0, %32 ], [ 16, %38 ], !dbg !687
  ret i32 %41, !dbg !688
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !689 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !693, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !694, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !695, metadata !DIExpression()), !dbg !696
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !697
  br i1 %3, label %4, label %11, !dbg !699

4:                                                ; preds = %2
  %5 = fdiv double -2.000000e+00, %0, !dbg !700
  %6 = fdiv double 1.000000e+00, %0, !dbg !702
  %handler_result = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !703
  %7 = fmul double %5, %handler_result, !dbg !703
  store double %7, ptr %1, align 8, !dbg !704, !tbaa !124
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !705
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !706
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !707
  store double %9, ptr %10, align 8, !dbg !708, !tbaa !129
  br label %46, !dbg !709

11:                                               ; preds = %2
  %12 = fcmp olt double %0, -2.000000e-03, !dbg !710
  br i1 %12, label %13, label %21, !dbg !712

13:                                               ; preds = %11
  %14 = tail call double @exp(double noundef %0) #6, !dbg !713
  %handler_result1 = call double @fAddHandlerDouble(double %14, double -1.000000e+00), !dbg !715
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %0), !dbg !716
  %15 = fmul double %handler_result2, 2.000000e+00, !dbg !716
  %16 = fmul double %0, %0, !dbg !717
  %17 = fdiv double %15, %16, !dbg !718
  store double %17, ptr %1, align 8, !dbg !719, !tbaa !124
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !720
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !721
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !722
  store double %19, ptr %20, align 8, !dbg !723, !tbaa !129
  br label %46, !dbg !724

21:                                               ; preds = %11
  %22 = fcmp olt double %0, 2.000000e-03, !dbg !725
  br i1 %22, label %23, label %34, !dbg !727

23:                                               ; preds = %21
  %24 = fmul double %0, 0x3FD5555555555555, !dbg !728
  %25 = fmul double %0, 2.500000e-01, !dbg !730
  %26 = fmul double %0, 2.000000e-01, !dbg !731
  %27 = fmul double %0, 0x3FC5555555555555, !dbg !732
  %handler_result3 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !733
  %28 = fmul double %26, %handler_result3, !dbg !733
  %handler_result4 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !734
  %29 = fmul double %25, %handler_result4, !dbg !734
  %handler_result5 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !735
  %30 = fmul double %24, %handler_result5, !dbg !735
  %handler_result6 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !736
  store double %handler_result6, ptr %1, align 8, !dbg !736, !tbaa !124
  %31 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !737
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !738
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !739
  store double %32, ptr %33, align 8, !dbg !740, !tbaa !129
  br label %46, !dbg !741

34:                                               ; preds = %21
  %35 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !742
  br i1 %35, label %36, label %44, !dbg !744

36:                                               ; preds = %34
  %37 = tail call double @exp(double noundef %0) #6, !dbg !745
  %handler_result7 = call double @fAddHandlerDouble(double %37, double -1.000000e+00), !dbg !747
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %0), !dbg !748
  %38 = fmul double %handler_result8, 2.000000e+00, !dbg !748
  %39 = fmul double %0, %0, !dbg !749
  %40 = fdiv double %38, %39, !dbg !750
  store double %40, ptr %1, align 8, !dbg !751, !tbaa !124
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !752
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !753
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !754
  store double %42, ptr %43, align 8, !dbg !755, !tbaa !129
  br label %46, !dbg !756

44:                                               ; preds = %34
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !757, !tbaa !124
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !757
  store double 0x7FF0000000000000, ptr %45, align 8, !dbg !757, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 411, i32 noundef 16) #6, !dbg !760
  br label %46, !dbg !760

46:                                               ; preds = %44, %36, %23, %13, %4
  %47 = phi i32 [ 0, %4 ], [ 0, %13 ], [ 0, %23 ], [ 0, %36 ], [ 16, %44 ], !dbg !762
  ret i32 %47, !dbg !763
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_n_CF_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !764 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !766, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata double %1, metadata !767, metadata !DIExpression()), !dbg !769
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !768, metadata !DIExpression()), !dbg !769
  %4 = tail call fastcc i32 @exprel_n_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !770, !range !771
  ret i32 %4, !dbg !772
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @exprel_n_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !773 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !775, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %1, metadata !776, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !777, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !778, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !779, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 1, metadata !780, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !781, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !782, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !783, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !784, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !785, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !786, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double poison, metadata !787, metadata !DIExpression()), !dbg !797
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !798
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !788, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !792, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !793, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 2, metadata !780, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !781, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !782, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !783, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !784, metadata !DIExpression()), !dbg !797
  %4 = fmul double %1, 0.000000e+00, !dbg !798
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %4), !dbg !799
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !792, metadata !DIExpression()), !dbg !797
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !793, metadata !DIExpression()), !dbg !797
  %5 = fdiv double %handler_result1, %handler_result2, !dbg !800
  tail call void @llvm.dbg.value(metadata double %5, metadata !791, metadata !DIExpression()), !dbg !797
  br label %6, !dbg !801

6:                                                ; preds = %43, %3
  %7 = phi double [ 1.000000e+00, %3 ], [ %44, %43 ], !dbg !797
  %8 = phi double [ 1.000000e+00, %3 ], [ %45, %43 ], !dbg !797
  %9 = phi double [ %5, %3 ], [ %48, %43 ], !dbg !797
  %10 = phi double [ %handler_result1, %3 ], [ %46, %43 ], !dbg !797
  %11 = phi double [ %handler_result2, %3 ], [ %47, %43 ], !dbg !797
  %12 = phi i32 [ 2, %3 ], [ %15, %43 ], !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !780, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %11, metadata !793, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %10, metadata !792, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %9, metadata !791, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %8, metadata !783, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %7, metadata !784, metadata !DIExpression()), !dbg !797
  %13 = icmp eq i32 %12, 5000, !dbg !802
  br i1 %13, label %52, label %14, !dbg !801

14:                                               ; preds = %6
  %15 = add nuw nsw i32 %12, 1, !dbg !803
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !780, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %8, metadata !781, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %7, metadata !782, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %10, metadata !783, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %11, metadata !784, metadata !DIExpression()), !dbg !797
  %16 = and i32 %12, 1, !dbg !804
  %17 = icmp eq i32 %16, 0, !dbg !804
  br i1 %17, label %18, label %21, !dbg !804

18:                                               ; preds = %14
  %19 = lshr exact i32 %12, 1, !dbg !805
  %20 = sitofp i32 %19 to double, !dbg !806
  br label %25, !dbg !804

21:                                               ; preds = %14
  %22 = lshr exact i32 %15, 1, !dbg !807
  %23 = sitofp i32 %22 to double, !dbg !808
  %handler_result3 = call double @fAddHandlerDouble(double %23, double %0), !dbg !809
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double -1.000000e+00), !dbg !810
  %24 = fneg double %handler_result4, !dbg !810
  br label %25, !dbg !804

25:                                               ; preds = %21, %18
  %26 = phi double [ %20, %18 ], [ %24, %21 ]
  %27 = fmul double %26, %1, !dbg !804
  tail call void @llvm.dbg.value(metadata double %27, metadata !789, metadata !DIExpression()), !dbg !797
  %28 = sitofp i32 %15 to double, !dbg !811
  %handler_result5 = call double @fAddHandlerDouble(double %28, double %0), !dbg !812
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double -1.000000e+00), !dbg !813
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !790, metadata !DIExpression()), !dbg !797
  %29 = fmul double %10, %handler_result6, !dbg !813
  %30 = fmul double %8, %27, !dbg !814
  %handler_result7 = call double @fAddHandlerDouble(double %29, double %30), !dbg !815
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !792, metadata !DIExpression()), !dbg !797
  %31 = fmul double %11, %handler_result6, !dbg !815
  %32 = fmul double %7, %27, !dbg !816
  %handler_result8 = call double @fAddHandlerDouble(double %31, double %32), !dbg !817
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !793, metadata !DIExpression()), !dbg !797
  %33 = tail call double @llvm.fabs.f64(double %handler_result7), !dbg !817
  %34 = fcmp ogt double %33, 0x5FEFFFFFFFFFFFFF, !dbg !819
  %35 = tail call double @llvm.fabs.f64(double %handler_result8)
  %36 = fcmp ogt double %35, 0x5FEFFFFFFFFFFFFF
  %37 = select i1 %34, i1 true, i1 %36, !dbg !820
  br i1 %37, label %38, label %43, !dbg !820

38:                                               ; preds = %25
  %39 = fdiv double %handler_result7, 0x5FEFFFFFFFFFFFFF, !dbg !821
  tail call void @llvm.dbg.value(metadata double %39, metadata !792, metadata !DIExpression()), !dbg !797
  %40 = fdiv double %handler_result8, 0x5FEFFFFFFFFFFFFF, !dbg !823
  tail call void @llvm.dbg.value(metadata double %40, metadata !793, metadata !DIExpression()), !dbg !797
  %41 = fdiv double %10, 0x5FEFFFFFFFFFFFFF, !dbg !824
  tail call void @llvm.dbg.value(metadata double %41, metadata !783, metadata !DIExpression()), !dbg !797
  %42 = fdiv double %11, 0x5FEFFFFFFFFFFFFF, !dbg !825
  tail call void @llvm.dbg.value(metadata double %42, metadata !784, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double poison, metadata !781, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double poison, metadata !782, metadata !DIExpression()), !dbg !797
  br label %43, !dbg !826

43:                                               ; preds = %38, %25
  %44 = phi double [ %42, %38 ], [ %11, %25 ], !dbg !827
  %45 = phi double [ %41, %38 ], [ %10, %25 ], !dbg !827
  %46 = phi double [ %39, %38 ], [ %handler_result7, %25 ], !dbg !827
  %47 = phi double [ %40, %38 ], [ %handler_result8, %25 ], !dbg !827
  tail call void @llvm.dbg.value(metadata double %47, metadata !793, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %46, metadata !792, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %45, metadata !783, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %44, metadata !784, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %9, metadata !794, metadata !DIExpression()), !dbg !827
  %48 = fdiv double %46, %47, !dbg !828
  tail call void @llvm.dbg.value(metadata double %48, metadata !791, metadata !DIExpression()), !dbg !797
  %49 = fdiv double %9, %48, !dbg !829
  tail call void @llvm.dbg.value(metadata double %49, metadata !796, metadata !DIExpression()), !dbg !827
  %handler_result9 = call double @fAddHandlerDouble(double %49, double -1.000000e+00), !dbg !830
  %50 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !830
  %51 = fcmp olt double %50, 0x3CC0000000000000, !dbg !832
  br i1 %51, label %52, label %6

52:                                               ; preds = %43, %6
  %53 = phi double [ %48, %43 ], [ %9, %6 ], !dbg !797
  %54 = phi i32 [ %15, %43 ], [ 5000, %6 ], !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !780, metadata !DIExpression()), !dbg !797
  tail call void @llvm.dbg.value(metadata double %53, metadata !791, metadata !DIExpression()), !dbg !797
  store double %53, ptr %2, align 8, !dbg !833, !tbaa !124
  %55 = add nsw i32 %54, 1, !dbg !834
  %56 = sitofp i32 %55 to double, !dbg !834
  %57 = fmul double %56, 4.000000e+00, !dbg !835
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !836
  %59 = tail call double @llvm.fabs.f64(double %53), !dbg !837
  %60 = fmul double %59, %58, !dbg !838
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !839
  store double %60, ptr %61, align 8, !dbg !840, !tbaa !129
  %62 = icmp eq i32 %54, 5000, !dbg !841
  br i1 %62, label %63, label %64, !dbg !843

63:                                               ; preds = %52
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 11) #6, !dbg !844
  br label %64, !dbg !844

64:                                               ; preds = %63, %52
  %65 = phi i32 [ 11, %63 ], [ 0, %52 ], !dbg !846
  ret i32 %65, !dbg !847
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !848 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !890
  call void @llvm.dbg.assign(metadata i1 undef, metadata !855, metadata !DIExpression(), metadata !890, metadata ptr %4, metadata !DIExpression()), !dbg !891
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !892
  call void @llvm.dbg.assign(metadata i1 undef, metadata !871, metadata !DIExpression(), metadata !892, metadata ptr %5, metadata !DIExpression()), !dbg !893
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !894
  call void @llvm.dbg.assign(metadata i1 undef, metadata !878, metadata !DIExpression(), metadata !894, metadata ptr %6, metadata !DIExpression()), !dbg !895
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !879, metadata !DIExpression(), metadata !896, metadata ptr %7, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !852, metadata !DIExpression()), !dbg !897
  tail call void @llvm.dbg.value(metadata double %1, metadata !853, metadata !DIExpression()), !dbg !897
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !854, metadata !DIExpression()), !dbg !897
  %8 = icmp slt i32 %0, 0, !dbg !898
  br i1 %8, label %9, label %11, !dbg !899

9:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !900, !tbaa !124
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !900
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !900, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 1) #6, !dbg !903
  br label %221, !dbg !903

11:                                               ; preds = %3
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !905
  br i1 %12, label %13, label %15, !dbg !906

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !907, !tbaa !124
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !909
  store double 0.000000e+00, ptr %14, align 8, !dbg !910, !tbaa !129
  br label %221, !dbg !911

15:                                               ; preds = %11
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !912
  %17 = sitofp i32 %0 to double, !dbg !913
  %18 = fmul double %17, 0x3ED965FEA53D6E41, !dbg !914
  %19 = fcmp olt double %16, %18, !dbg !915
  br i1 %19, label %20, label %29, !dbg !916

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %0, 1, !dbg !917
  %22 = sitofp i32 %21 to double, !dbg !919
  %23 = fdiv double %1, %22, !dbg !920
  %24 = add nuw nsw i32 %0, 2, !dbg !921
  %25 = sitofp i32 %24 to double, !dbg !922
  %26 = fdiv double %1, %25, !dbg !923
  %handler_result = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !924
  %27 = fmul double %23, %handler_result, !dbg !924
  %handler_result1 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !925
  store double %handler_result1, ptr %2, align 8, !dbg !925, !tbaa !124
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !926
  store double 0x3CC0000000000000, ptr %28, align 8, !dbg !927, !tbaa !129
  br label %221, !dbg !928

29:                                               ; preds = %15
  switch i32 %0, label %47 [
    i32 0, label %30
    i32 1, label %43
    i32 2, label %45
  ], !dbg !929

30:                                               ; preds = %29
  call void @llvm.dbg.value(metadata double %1, metadata !115, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr %2, metadata !116, metadata !DIExpression()), !dbg !930
  %31 = fcmp ogt double %1, 0x40862E42FEFA39EF, !dbg !933
  br i1 %31, label %32, label %34, !dbg !934

32:                                               ; preds = %30
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !935, !tbaa !124
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !935
  store double 0x7FF0000000000000, ptr %33, align 8, !dbg !935, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #6, !dbg !936
  br label %221, !dbg !936

34:                                               ; preds = %30
  %35 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !937
  br i1 %35, label %36, label %38, !dbg !938

36:                                               ; preds = %34
  store double 0.000000e+00, ptr %2, align 8, !dbg !939, !tbaa !124
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !939
  store double 0x10000000000000, ptr %37, align 8, !dbg !939, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !940
  br label %221, !dbg !940

38:                                               ; preds = %34
  %39 = tail call double @exp(double noundef %1) #6, !dbg !941
  store double %39, ptr %2, align 8, !dbg !942, !tbaa !124
  %40 = tail call double @llvm.fabs.f64(double %39), !dbg !943
  %41 = fmul double %40, 0x3CC0000000000000, !dbg !944
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !945
  store double %41, ptr %42, align 8, !dbg !946, !tbaa !129
  br label %221, !dbg !947

43:                                               ; preds = %29
  %44 = tail call i32 @gsl_sf_exprel_e(double noundef %1, ptr noundef %2), !dbg !948, !range !950
  br label %221, !dbg !951

45:                                               ; preds = %29
  %46 = tail call i32 @gsl_sf_exprel_2_e(double noundef %1, ptr noundef %2), !dbg !952, !range !950
  br label %221, !dbg !954

47:                                               ; preds = %29
  %48 = fcmp olt double %17, %1, !dbg !955
  br i1 %48, label %49, label %155, !dbg !956

49:                                               ; preds = %47
  %50 = fdiv double %1, %17, !dbg !957
  %handler_result31 = call double @callHandler(i32 12, double %50, double %50), !dbg !958
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result31, double 1.000000e+00), !dbg !958
  %51 = fmul double %handler_result2, %17, !dbg !958
  %handler_result3 = call double @fSubHandlerDouble(double %51, double %1), !dbg !959
  %52 = fcmp olt double %handler_result3, 0xC04205966F2B4F12, !dbg !959
  br i1 %52, label %53, label %63, !dbg !960

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !961
  %54 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %4) #6, !dbg !962
  %handler_result32 = call double @callHandler(i32 12, double %1, double %1), !dbg !963
  %55 = fmul double %handler_result32, %17, !dbg !963
  tail call void @llvm.dbg.value(metadata double %55, metadata !867, metadata !DIExpression()), !dbg !891
  %56 = load double, ptr %4, align 8, !dbg !964, !tbaa !124
  %handler_result4 = call double @fAddHandlerDouble(double %56, double %1), !dbg !965
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %55), !dbg !966
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !865, metadata !DIExpression()), !dbg !891
  %57 = call double @llvm.fabs.f64(double %56), !dbg !966
  %handler_result6 = call double @fAddHandlerDouble(double %16, double %57), !dbg !967
  %58 = call double @llvm.fabs.f64(double %55), !dbg !967
  %handler_result7 = call double @fAddHandlerDouble(double %58, double %handler_result6), !dbg !968
  %59 = fmul double %handler_result7, 0x3CB0000000000000, !dbg !968
  tail call void @llvm.dbg.value(metadata double %59, metadata !866, metadata !DIExpression()), !dbg !891
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !969
  %61 = load double, ptr %60, align 8, !dbg !969, !tbaa !129
  %handler_result8 = call double @fAddHandlerDouble(double %61, double %59), !dbg !970
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !866, metadata !DIExpression()), !dbg !891
  %62 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result5, double noundef %handler_result8, ptr noundef %2), !dbg !970, !range !950
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !971
  br label %221

63:                                               ; preds = %49
  %handler_result33 = call double @callHandler(i32 12, double %1, double %1), !dbg !972
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !868, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !972
  %64 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %5) #6, !dbg !973
  %65 = load double, ptr %5, align 8, !dbg !974, !tbaa !124
  %handler_result34 = call double @callHandler(i32 12, double %17, double %17), !dbg !975
  tail call void @llvm.dbg.value(metadata double poison, metadata !872, metadata !DIExpression()), !dbg !893
  %66 = load double, ptr %5, align 8, !dbg !975, !tbaa !124
  %handler_result9 = call double @fAddHandlerDouble(double %66, double %1), !dbg !976
  %67 = fmul double %handler_result33, %17, !dbg !976
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %67), !dbg !977
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !873, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata double poison, metadata !874, metadata !DIExpression()), !dbg !893
  %68 = fcmp olt double %handler_result10, 0x40860642FEFA39EF, !dbg !977
  br i1 %68, label %69, label %151, !dbg !978

69:                                               ; preds = %63
  %70 = call double @llvm.fabs.f64(double %66), !dbg !979
  %handler_result11 = call double @fAddHandlerDouble(double %16, double %70), !dbg !980
  %71 = call double @llvm.fabs.f64(double %67), !dbg !980
  %handler_result12 = call double @fAddHandlerDouble(double %71, double %handler_result11), !dbg !981
  %72 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !981
  tail call void @llvm.dbg.value(metadata double %72, metadata !874, metadata !DIExpression()), !dbg !893
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !982
  %74 = load double, ptr %73, align 8, !dbg !982, !tbaa !129
  %handler_result13 = call double @fAddHandlerDouble(double %72, double %74), !dbg !983
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !874, metadata !DIExpression()), !dbg !893
  %handler_result14 = call double @fSubHandlerDouble(double %65, double %handler_result34), !dbg !984
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !872, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !984
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !985
  %75 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result10, double noundef %handler_result13, ptr noundef nonnull %7), !dbg !986, !range !950
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !880, metadata !DIExpression()), !dbg !895
  %76 = add nsw i32 %0, -1, !dbg !987
  %77 = sitofp i32 %76 to double, !dbg !988
  %78 = fmul double %handler_result33, %77, !dbg !989
  %handler_result15 = call double @fSubHandlerDouble(double %78, double %1), !dbg !990
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %handler_result14), !dbg !991
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !881, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !882, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 1, metadata !884, metadata !DIExpression()), !dbg !895
  %79 = add nsw i32 %0, -1, !dbg !991
  %80 = add nsw i32 %0, -2, !dbg !991
  %81 = and i32 %79, 3, !dbg !991
  %82 = icmp ult i32 %80, 3, !dbg !991
  br i1 %82, label %112, label %83, !dbg !991

83:                                               ; preds = %69
  %84 = and i32 %79, -4, !dbg !991
  br label %85, !dbg !991

85:                                               ; preds = %85, %83
  %86 = phi i32 [ 1, %83 ], [ %109, %85 ]
  %87 = phi double [ 1.000000e+00, %83 ], [ %108, %85 ]
  %88 = phi double [ 1.000000e+00, %83 ], [ %handler_result20, %85 ]
  %89 = phi i32 [ 0, %83 ], [ %110, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %87, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %88, metadata !882, metadata !DIExpression()), !dbg !895
  %90 = sub nsw i32 %0, %86, !dbg !993
  %91 = sitofp i32 %90 to double, !dbg !996
  %92 = fdiv double %91, %1, !dbg !997
  %93 = fmul double %87, %92, !dbg !998
  tail call void @llvm.dbg.value(metadata double %93, metadata !883, metadata !DIExpression()), !dbg !895
  %handler_result17 = call double @fAddHandlerDouble(double %88, double %93), !dbg !999
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !882, metadata !DIExpression()), !dbg !895
  %94 = xor i32 %86, -1, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !884, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !884, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !895
  tail call void @llvm.dbg.value(metadata double %93, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !882, metadata !DIExpression()), !dbg !895
  %95 = add nsw i32 %94, %0, !dbg !993
  %96 = sitofp i32 %95 to double, !dbg !996
  %97 = fdiv double %96, %1, !dbg !997
  %98 = fmul double %93, %97, !dbg !998
  tail call void @llvm.dbg.value(metadata double %98, metadata !883, metadata !DIExpression()), !dbg !895
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %98), !dbg !999
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !882, metadata !DIExpression()), !dbg !895
  %99 = add nuw nsw i32 %86, 2, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %98, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !882, metadata !DIExpression()), !dbg !895
  %100 = sub nsw i32 %0, %99, !dbg !993
  %101 = sitofp i32 %100 to double, !dbg !996
  %102 = fdiv double %101, %1, !dbg !997
  %103 = fmul double %98, %102, !dbg !998
  tail call void @llvm.dbg.value(metadata double %103, metadata !883, metadata !DIExpression()), !dbg !895
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %103), !dbg !999
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !882, metadata !DIExpression()), !dbg !895
  %104 = add nuw nsw i32 %86, 3, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %103, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !882, metadata !DIExpression()), !dbg !895
  %105 = sub nsw i32 %0, %104, !dbg !993
  %106 = sitofp i32 %105 to double, !dbg !996
  %107 = fdiv double %106, %1, !dbg !997
  %108 = fmul double %103, %107, !dbg !998
  tail call void @llvm.dbg.value(metadata double %108, metadata !883, metadata !DIExpression()), !dbg !895
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %108), !dbg !999
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !882, metadata !DIExpression()), !dbg !895
  %109 = add nuw nsw i32 %86, 4, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !884, metadata !DIExpression()), !dbg !895
  %110 = add i32 %89, 4, !dbg !991
  %111 = icmp eq i32 %110, %84, !dbg !991
  br i1 %111, label %112, label %85, !dbg !991, !llvm.loop !1000

112:                                              ; preds = %85, %69
  %113 = phi double [ undef, %69 ], [ %handler_result20, %85 ]
  %114 = phi i32 [ 1, %69 ], [ %109, %85 ]
  %115 = phi double [ 1.000000e+00, %69 ], [ %108, %85 ]
  %116 = phi double [ 1.000000e+00, %69 ], [ %handler_result20, %85 ]
  %117 = icmp eq i32 %81, 0, !dbg !991
  br i1 %117, label %130, label %118, !dbg !991

118:                                              ; preds = %118, %112
  %119 = phi i32 [ %127, %118 ], [ %114, %112 ]
  %120 = phi double [ %126, %118 ], [ %115, %112 ]
  %121 = phi double [ %handler_result21, %118 ], [ %116, %112 ]
  %122 = phi i32 [ %128, %118 ], [ 0, %112 ]
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !884, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %120, metadata !883, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %121, metadata !882, metadata !DIExpression()), !dbg !895
  %123 = sub nsw i32 %0, %119, !dbg !993
  %124 = sitofp i32 %123 to double, !dbg !996
  %125 = fdiv double %124, %1, !dbg !997
  %126 = fmul double %120, %125, !dbg !998
  tail call void @llvm.dbg.value(metadata double %126, metadata !883, metadata !DIExpression()), !dbg !895
  %handler_result21 = call double @fAddHandlerDouble(double %121, double %126), !dbg !999
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !882, metadata !DIExpression()), !dbg !895
  %127 = add nuw nsw i32 %119, 1, !dbg !999
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !884, metadata !DIExpression()), !dbg !895
  %128 = add i32 %122, 1, !dbg !991
  %129 = icmp eq i32 %128, %81, !dbg !991
  br i1 %129, label %130, label %118, !dbg !991, !llvm.loop !1003

130:                                              ; preds = %118, %112
  %131 = phi double [ %113, %112 ], [ %handler_result21, %118 ], !dbg !1005
  %132 = call i32 @gsl_sf_exp_mult_e(double noundef %handler_result16, double noundef %131, ptr noundef nonnull %6), !dbg !1006, !range !950
  tail call void @llvm.dbg.value(metadata i32 %132, metadata !875, metadata !DIExpression()), !dbg !895
  %133 = icmp eq i32 %132, 0, !dbg !1007
  br i1 %133, label %134, label %148, !dbg !1009

134:                                              ; preds = %130
  %135 = load double, ptr %7, align 8, !dbg !1010, !tbaa !124
  %136 = load double, ptr %6, align 8, !dbg !1012, !tbaa !124
  %handler_result22 = call double @fSubHandlerDouble(double 1.000000e+00, double %136), !dbg !1013
  %137 = fmul double %135, %handler_result22, !dbg !1013
  store double %137, ptr %2, align 8, !dbg !1014, !tbaa !124
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1015
  %139 = load double, ptr %138, align 8, !dbg !1015, !tbaa !129
  %handler_result23 = call double @fAddHandlerDouble(double %139, double 0x3CC0000000000000), !dbg !1016
  %140 = fmul double %135, %handler_result23, !dbg !1016
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1017
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1018
  %143 = load double, ptr %142, align 8, !dbg !1018, !tbaa !129
  %144 = call double @llvm.fabs.f64(double %handler_result22), !dbg !1019
  %145 = fmul double %144, %143, !dbg !1020
  %handler_result24 = call double @fAddHandlerDouble(double %140, double %145), !dbg !1021
  %146 = call double @llvm.fabs.f64(double %137), !dbg !1021
  %147 = fmul double %146, 0x3CC0000000000000, !dbg !1022
  %handler_result25 = call double @fAddHandlerDouble(double %147, double %handler_result24), !dbg !1023
  store double %handler_result25, ptr %141, align 8, !dbg !1023, !tbaa !129
  br label %149, !dbg !1024

148:                                              ; preds = %130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1025
  br label %149, !dbg !1027

149:                                              ; preds = %148, %134
  %150 = phi i32 [ %75, %134 ], [ %132, %148 ], !dbg !1028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !1029
  br label %153

151:                                              ; preds = %63
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1030, !tbaa !124
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1030
  store double 0x7FF0000000000000, ptr %152, align 8, !dbg !1030, !tbaa !129
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 508, i32 noundef 16) #6, !dbg !1033
  br label %153, !dbg !1033

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ 16, %151 ], !dbg !1035
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !1036
  br label %221

155:                                              ; preds = %47
  %156 = fmul double %17, -1.000000e+01, !dbg !1037
  %157 = fcmp olt double %156, %1, !dbg !1038
  br i1 %157, label %165, label %158, !dbg !1039

158:                                              ; preds = %155
  %159 = add nsw i32 %0, -1, !dbg !1040
  %160 = add nsw i32 %0, -2, !dbg !1040
  %161 = and i32 %159, 3, !dbg !1040
  %162 = icmp ult i32 %160, 3, !dbg !1040
  br i1 %162, label %194, label %163, !dbg !1040

163:                                              ; preds = %158
  %164 = and i32 %159, -4, !dbg !1040
  br label %167, !dbg !1040

165:                                              ; preds = %155
  %166 = tail call fastcc i32 @exprel_n_CF(double noundef %17, double noundef %1, ptr noundef %2), !dbg !1042, !range !771
  br label %221, !dbg !1044

167:                                              ; preds = %167, %163
  %168 = phi i32 [ 1, %163 ], [ %191, %167 ]
  %169 = phi double [ 1.000000e+00, %163 ], [ %190, %167 ]
  %170 = phi double [ 1.000000e+00, %163 ], [ %handler_result29, %167 ]
  %171 = phi i32 [ 0, %163 ], [ %192, %167 ]
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %169, metadata !888, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %170, metadata !885, metadata !DIExpression()), !dbg !1045
  %172 = sub nsw i32 %0, %168, !dbg !1046
  %173 = sitofp i32 %172 to double, !dbg !1049
  %174 = fdiv double %173, %1, !dbg !1050
  %175 = fmul double %169, %174, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %175, metadata !888, metadata !DIExpression()), !dbg !1045
  %handler_result26 = call double @fAddHandlerDouble(double %170, double %175), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !885, metadata !DIExpression()), !dbg !1045
  %176 = xor i32 %168, -1, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !889, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !889, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %175, metadata !888, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !885, metadata !DIExpression()), !dbg !1045
  %177 = add nsw i32 %176, %0, !dbg !1046
  %178 = sitofp i32 %177 to double, !dbg !1049
  %179 = fdiv double %178, %1, !dbg !1050
  %180 = fmul double %175, %179, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %180, metadata !888, metadata !DIExpression()), !dbg !1045
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %180), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !885, metadata !DIExpression()), !dbg !1045
  %181 = add nuw nsw i32 %168, 2, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %180, metadata !888, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !885, metadata !DIExpression()), !dbg !1045
  %182 = sub nsw i32 %0, %181, !dbg !1046
  %183 = sitofp i32 %182 to double, !dbg !1049
  %184 = fdiv double %183, %1, !dbg !1050
  %185 = fmul double %180, %184, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %185, metadata !888, metadata !DIExpression()), !dbg !1045
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %185), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !885, metadata !DIExpression()), !dbg !1045
  %186 = add nuw nsw i32 %168, 3, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %186, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %186, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %185, metadata !888, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !885, metadata !DIExpression()), !dbg !1045
  %187 = sub nsw i32 %0, %186, !dbg !1046
  %188 = sitofp i32 %187 to double, !dbg !1049
  %189 = fdiv double %188, %1, !dbg !1050
  %190 = fmul double %185, %189, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %190, metadata !888, metadata !DIExpression()), !dbg !1045
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double %190), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !885, metadata !DIExpression()), !dbg !1045
  %191 = add nuw nsw i32 %168, 4, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !889, metadata !DIExpression()), !dbg !1045
  %192 = add i32 %171, 4, !dbg !1040
  %193 = icmp eq i32 %192, %164, !dbg !1040
  br i1 %193, label %194, label %167, !dbg !1040, !llvm.loop !1053

194:                                              ; preds = %167, %158
  %195 = phi double [ undef, %158 ], [ %handler_result29, %167 ]
  %196 = phi i32 [ 1, %158 ], [ %191, %167 ]
  %197 = phi double [ 1.000000e+00, %158 ], [ %190, %167 ]
  %198 = phi double [ 1.000000e+00, %158 ], [ %handler_result29, %167 ]
  %199 = icmp eq i32 %161, 0, !dbg !1040
  br i1 %199, label %212, label %200, !dbg !1040

200:                                              ; preds = %200, %194
  %201 = phi i32 [ %209, %200 ], [ %196, %194 ]
  %202 = phi double [ %208, %200 ], [ %197, %194 ]
  %203 = phi double [ %handler_result30, %200 ], [ %198, %194 ]
  %204 = phi i32 [ %210, %200 ], [ 0, %194 ]
  tail call void @llvm.dbg.value(metadata i32 %201, metadata !889, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %202, metadata !888, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata double %203, metadata !885, metadata !DIExpression()), !dbg !1045
  %205 = sub nsw i32 %0, %201, !dbg !1046
  %206 = sitofp i32 %205 to double, !dbg !1049
  %207 = fdiv double %206, %1, !dbg !1050
  %208 = fmul double %202, %207, !dbg !1051
  tail call void @llvm.dbg.value(metadata double %208, metadata !888, metadata !DIExpression()), !dbg !1045
  %handler_result30 = call double @fAddHandlerDouble(double %203, double %208), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result30, metadata !885, metadata !DIExpression()), !dbg !1045
  %209 = add nuw nsw i32 %201, 1, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %209, metadata !889, metadata !DIExpression()), !dbg !1045
  %210 = add i32 %204, 1, !dbg !1040
  %211 = icmp eq i32 %210, %161, !dbg !1040
  br i1 %211, label %212, label %200, !dbg !1040, !llvm.loop !1055

212:                                              ; preds = %200, %194
  %213 = phi double [ %195, %194 ], [ %handler_result30, %200 ], !dbg !1056
  %214 = sub nsw i32 0, %0, !dbg !1057
  %215 = sitofp i32 %214 to double, !dbg !1057
  %216 = fdiv double %215, %1, !dbg !1058
  %217 = fmul double %216, %213, !dbg !1059
  store double %217, ptr %2, align 8, !dbg !1060, !tbaa !124
  %218 = tail call double @llvm.fabs.f64(double %217), !dbg !1061
  %219 = fmul double %218, 0x3CC0000000000000, !dbg !1062
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1063
  store double %219, ptr %220, align 8, !dbg !1064, !tbaa !129
  br label %221

221:                                              ; preds = %212, %165, %153, %53, %45, %43, %38, %36, %32, %20, %13, %9
  %222 = phi i32 [ 1, %9 ], [ 0, %13 ], [ 0, %20 ], [ %44, %43 ], [ %46, %45 ], [ %62, %53 ], [ %154, %153 ], [ %166, %165 ], [ 0, %212 ], [ 16, %32 ], [ 15, %36 ], [ 0, %38 ], !dbg !1065
  ret i32 %222, !dbg !1066
}

declare !dbg !1067 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_err_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1073 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1075, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double %1, metadata !1076, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1077, metadata !DIExpression()), !dbg !1084
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !1085
  tail call void @llvm.dbg.value(metadata double %4, metadata !1078, metadata !DIExpression()), !dbg !1084
  %handler_result = call double @fAddHandlerDouble(double %4, double %0), !dbg !1086
  %5 = fcmp ogt double %handler_result, 0x40862E42FEFA39EF, !dbg !1086
  br i1 %5, label %6, label %8, !dbg !1087

6:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1088, !tbaa !124
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1088
  store double 0x7FF0000000000000, ptr %7, align 8, !dbg !1088, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 16) #6, !dbg !1091
  br label %22, !dbg !1091

8:                                                ; preds = %3
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %4), !dbg !1093
  %9 = fcmp olt double %handler_result1, 0xC086232BDD7ABCD2, !dbg !1093
  br i1 %9, label %10, label %12, !dbg !1094

10:                                               ; preds = %8
  store double 0.000000e+00, ptr %2, align 8, !dbg !1095, !tbaa !124
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1095
  store double 0x10000000000000, ptr %11, align 8, !dbg !1095, !tbaa !129
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 15) #6, !dbg !1098
  br label %22, !dbg !1098

12:                                               ; preds = %8
  %13 = tail call double @exp(double noundef %0) #6, !dbg !1100
  tail call void @llvm.dbg.value(metadata double %13, metadata !1079, metadata !DIExpression()), !dbg !1101
  %14 = tail call double @exp(double noundef %4) #6, !dbg !1102
  tail call void @llvm.dbg.value(metadata double %14, metadata !1083, metadata !DIExpression()), !dbg !1101
  store double %13, ptr %2, align 8, !dbg !1103, !tbaa !124
  %15 = fdiv double 1.000000e+00, %14, !dbg !1104
  %handler_result2 = call double @fSubHandlerDouble(double %14, double %15), !dbg !1105
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !1111, metadata !DIExpression()), !dbg !1114
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1112, metadata !DIExpression()), !dbg !1114
  %16 = fcmp olt double %handler_result2, 0x3CB0000000000000, !dbg !1105
  %17 = select i1 %16, double 0x3CB0000000000000, double %handler_result2, !dbg !1105
  %18 = fmul double %13, %17, !dbg !1115
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1116
  %20 = tail call double @llvm.fabs.f64(double %13), !dbg !1117
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !1118
  %handler_result3 = call double @fAddHandlerDouble(double %21, double %18), !dbg !1119
  store double %handler_result3, ptr %19, align 8, !dbg !1119, !tbaa !129
  br label %22

22:                                               ; preds = %12, %10, %6
  %23 = phi i32 [ 16, %6 ], [ 15, %10 ], [ 0, %12 ], !dbg !1120
  ret i32 %23, !dbg !1121
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_exp_err_e10_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !1122 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1124, metadata !DIExpression()), !dbg !1133
  tail call void @llvm.dbg.value(metadata double %1, metadata !1125, metadata !DIExpression()), !dbg !1133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1126, metadata !DIExpression()), !dbg !1133
  %4 = tail call double @llvm.fabs.f64(double %1), !dbg !1134
  tail call void @llvm.dbg.value(metadata double %4, metadata !1127, metadata !DIExpression()), !dbg !1133
  %handler_result = call double @fAddHandlerDouble(double %4, double %0), !dbg !1135
  %5 = fcmp ogt double %handler_result, 0x41DFFFFFFF800000, !dbg !1135
  br i1 %5, label %6, label %9, !dbg !1136

6:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !1137, !tbaa !183
  %7 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1137
  store double 0x7FF0000000000000, ptr %7, align 8, !dbg !1137, !tbaa !186
  %8 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1137
  store i32 0, ptr %8, align 8, !dbg !1137, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 566, i32 noundef 16) #6, !dbg !1140
  br label %26, !dbg !1140

9:                                                ; preds = %3
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %4), !dbg !1142
  %10 = fcmp olt double %handler_result1, 0xC1DFFFFFFFC00000, !dbg !1142
  br i1 %10, label %11, label %14, !dbg !1143

11:                                               ; preds = %9
  store double 0.000000e+00, ptr %2, align 8, !dbg !1144, !tbaa !183
  %12 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1144
  store double 0x10000000000000, ptr %12, align 8, !dbg !1144, !tbaa !186
  %13 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1144
  store i32 0, ptr %13, align 8, !dbg !1144, !tbaa !187
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 569, i32 noundef 15) #6, !dbg !1147
  br label %26, !dbg !1147

14:                                               ; preds = %9
  %15 = fdiv double %0, 0x40026BB1BBB55516, !dbg !1149
  %16 = tail call double @llvm.floor.f64(double %15), !dbg !1150
  %17 = fptosi double %16 to i32, !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1128, metadata !DIExpression()), !dbg !1152
  %18 = sitofp i32 %17 to double, !dbg !1153
  %19 = fmul double %18, 0x40026BB1BBB55516, !dbg !1154
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %19), !dbg !1155
  %20 = tail call double @exp(double noundef %handler_result2) #6, !dbg !1155
  tail call void @llvm.dbg.value(metadata double %20, metadata !1132, metadata !DIExpression()), !dbg !1152
  store double %20, ptr %2, align 8, !dbg !1156, !tbaa !183
  %21 = tail call double @llvm.fabs.f64(double %0), !dbg !1157
  %handler_result3 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !1158
  %22 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !1158
  %handler_result4 = call double @fAddHandlerDouble(double %4, double %22), !dbg !1159
  %23 = fmul double %handler_result4, %20, !dbg !1159
  %24 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 1, !dbg !1160
  store double %23, ptr %24, align 8, !dbg !1161, !tbaa !186
  %25 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, ptr %2, i64 0, i32 2, !dbg !1162
  store i32 %17, ptr %25, align 8, !dbg !1163, !tbaa !187
  br label %26

26:                                               ; preds = %14, %11, %6
  %27 = phi i32 [ 16, %6 ], [ 15, %11 ], [ 0, %14 ], !dbg !1164
  ret i32 %27, !dbg !1165
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exp(double noundef %0) local_unnamed_addr #0 !dbg !1166 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1170, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata double %0, metadata !115, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr undef, metadata !116, metadata !DIExpression()), !dbg !1174
  %2 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !1176
  br i1 %2, label %3, label %4, !dbg !1177

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1173
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 16) #6, !dbg !1178
  br label %9, !dbg !1178

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1179
  br i1 %5, label %6, label %7, !dbg !1180

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1173
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !1181
  br label %9, !dbg !1181

7:                                                ; preds = %4
  %8 = tail call double @exp(double noundef %0) #6, !dbg !1182
  tail call void @llvm.dbg.value(metadata double %8, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata double poison, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata double %8, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()), !dbg !1173
  br label %12, !dbg !1183

9:                                                ; preds = %6, %3
  %10 = phi double [ 0.000000e+00, %6 ], [ 0x7FF0000000000000, %3 ]
  %11 = phi i32 [ 15, %6 ], [ 16, %3 ]
  tail call void @llvm.dbg.value(metadata double %10, metadata !1171, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1172, metadata !DIExpression()), !dbg !1173
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 588, i32 noundef %11) #6, !dbg !1184
  br label %12, !dbg !1184

12:                                               ; preds = %9, %7
  %13 = phi double [ %8, %7 ], [ %10, %9 ]
  ret double %13, !dbg !1188
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exp_mult(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1189 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1197
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1195, metadata !DIExpression(), metadata !1197, metadata ptr %3, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double %0, metadata !1193, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double %1, metadata !1194, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1199
  %4 = call i32 @gsl_sf_exp_mult_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1199, !range !950
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1196, metadata !DIExpression()), !dbg !1198
  %5 = icmp eq i32 %4, 0, !dbg !1200
  br i1 %5, label %7, label %6, !dbg !1199

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 593, i32 noundef %4) #6, !dbg !1202
  br label %7, !dbg !1202

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1199, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1205
  ret double %8, !dbg !1205
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expm1(double noundef %0) local_unnamed_addr #0 !dbg !1206 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !1208, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata double %0, metadata !565, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr undef, metadata !566, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata double 2.000000e-03, metadata !567, metadata !DIExpression()), !dbg !1212
  %2 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1214
  br i1 %2, label %23, label %3, !dbg !1215

3:                                                ; preds = %1
  %4 = fcmp olt double %0, -2.000000e-03, !dbg !1216
  br i1 %4, label %5, label %7, !dbg !1217

5:                                                ; preds = %3
  %6 = tail call double @exp(double noundef %0) #6, !dbg !1218
  %handler_result = call double @fAddHandlerDouble(double %6, double -1.000000e+00), !dbg !1219
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1211
  tail call void @llvm.dbg.value(metadata double poison, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1211
  br label %23, !dbg !1219

7:                                                ; preds = %3
  %8 = fcmp olt double %0, 2.000000e-03, !dbg !1220
  br i1 %8, label %9, label %18, !dbg !1221

9:                                                ; preds = %7
  %10 = fmul double %0, 5.000000e-01, !dbg !1222
  %11 = fdiv double %0, 3.000000e+00, !dbg !1223
  %12 = fmul double %0, 2.500000e-01, !dbg !1224
  %13 = fmul double %0, 2.000000e-01, !dbg !1225
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1226
  %14 = fmul double %12, %handler_result1, !dbg !1226
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !1227
  %15 = fmul double %11, %handler_result2, !dbg !1227
  %handler_result3 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !1228
  %16 = fmul double %10, %handler_result3, !dbg !1228
  %handler_result4 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !1229
  %17 = fmul double %handler_result4, %0, !dbg !1229
  tail call void @llvm.dbg.value(metadata double %17, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1211
  tail call void @llvm.dbg.value(metadata double poison, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1211
  br label %23, !dbg !1230

18:                                               ; preds = %7
  %19 = fcmp olt double %0, 0x40862E42FEFA39EF, !dbg !1231
  br i1 %19, label %20, label %22, !dbg !1232

20:                                               ; preds = %18
  %21 = tail call double @exp(double noundef %0) #6, !dbg !1233
  %handler_result5 = call double @fAddHandlerDouble(double %21, double -1.000000e+00), !dbg !1234
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1211
  tail call void @llvm.dbg.value(metadata double poison, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1211
  br label %23, !dbg !1234

22:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1211
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1211
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 351, i32 noundef 16) #6, !dbg !1235
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !1209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 16, metadata !1210, metadata !DIExpression()), !dbg !1211
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 16) #6, !dbg !1236
  br label %23, !dbg !1236

23:                                               ; preds = %22, %20, %9, %5, %1
  %24 = phi double [ 0x7FF0000000000000, %22 ], [ -1.000000e+00, %1 ], [ %handler_result5, %20 ], [ %17, %9 ], [ %handler_result, %5 ]
  ret double %24, !dbg !1240
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel(double noundef %0) local_unnamed_addr #0 !dbg !1241 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1244, metadata !DIExpression(), metadata !1246, metadata ptr %2, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata double %0, metadata !1243, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1248
  %3 = call i32 @gsl_sf_exprel_e(double noundef %0, ptr noundef nonnull %2), !dbg !1248, !range !950
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1245, metadata !DIExpression()), !dbg !1247
  %4 = icmp eq i32 %3, 0, !dbg !1249
  br i1 %4, label %6, label %5, !dbg !1248

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 603, i32 noundef %3) #6, !dbg !1251
  br label %6, !dbg !1251

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1248, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1254
  ret double %7, !dbg !1254
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel_2(double noundef %0) local_unnamed_addr #0 !dbg !1255 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1260, metadata ptr %2, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata double %0, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1262
  %3 = call i32 @gsl_sf_exprel_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !1262, !range !950
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1261
  %4 = icmp eq i32 %3, 0, !dbg !1263
  br i1 %4, label %6, label %5, !dbg !1262

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 608, i32 noundef %3) #6, !dbg !1265
  br label %6, !dbg !1265

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1262, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1268
  ret double %7, !dbg !1268
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_exprel_n(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1269 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1277
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1275, metadata !DIExpression(), metadata !1277, metadata ptr %3, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata double %1, metadata !1274, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1279
  %4 = call i32 @gsl_sf_exprel_n_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1279, !range !950
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1276, metadata !DIExpression()), !dbg !1278
  %5 = icmp eq i32 %4, 0, !dbg !1280
  br i1 %5, label %7, label %6, !dbg !1279

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef %4) #6, !dbg !1282
  br label %7, !dbg !1282

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1279, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1285
  ret double %8, !dbg !1285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!206 = !DILocation(line: 132, column: 19, scope: !173)
!207 = !DILocation(line: 132, column: 17, scope: !173)
!208 = !DILocation(line: 133, column: 26, scope: !173)
!209 = !DILocation(line: 133, column: 23, scope: !173)
!210 = !DILocation(line: 133, column: 39, scope: !173)
!211 = !DILocation(line: 133, column: 59, scope: !173)
!212 = !DILocation(line: 133, column: 57, scope: !173)
!213 = !DILocation(line: 133, column: 13, scope: !173)
!214 = !DILocation(line: 133, column: 17, scope: !173)
!215 = !DILocation(line: 134, column: 13, scope: !173)
!216 = !DILocation(line: 134, column: 17, scope: !173)
!217 = !DILocation(line: 0, scope: !175)
!218 = !DILocation(line: 137, column: 1, scope: !159)
!219 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !2, file: !2, line: 140, type: !220, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!55, !105, !105, !107}
!222 = !{!223, !224, !225, !226, !227, !231, !233, !234, !238, !239, !240, !241, !242}
!223 = !DILocalVariable(name: "x", arg: 1, scope: !219, file: !2, line: 140, type: !105)
!224 = !DILocalVariable(name: "y", arg: 2, scope: !219, file: !2, line: 140, type: !105)
!225 = !DILocalVariable(name: "result", arg: 3, scope: !219, file: !2, line: 140, type: !107)
!226 = !DILocalVariable(name: "ay", scope: !219, file: !2, line: 142, type: !105)
!227 = !DILocalVariable(name: "ex", scope: !228, file: !2, line: 152, type: !105)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 151, column: 7)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 149, column: 14)
!230 = distinct !DILexicalBlock(scope: !219, file: !2, line: 144, column: 6)
!231 = !DILocalVariable(name: "ly", scope: !232, file: !2, line: 158, type: !105)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 157, column: 8)
!233 = !DILocalVariable(name: "lnr", scope: !232, file: !2, line: 159, type: !105)
!234 = !DILocalVariable(name: "sy", scope: !235, file: !2, line: 168, type: !105)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 167, column: 10)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 164, column: 13)
!237 = distinct !DILexicalBlock(scope: !232, file: !2, line: 161, column: 8)
!238 = !DILocalVariable(name: "M", scope: !235, file: !2, line: 169, type: !105)
!239 = !DILocalVariable(name: "N", scope: !235, file: !2, line: 170, type: !105)
!240 = !DILocalVariable(name: "a", scope: !235, file: !2, line: 171, type: !105)
!241 = !DILocalVariable(name: "b", scope: !235, file: !2, line: 172, type: !105)
!242 = !DILocalVariable(name: "berr", scope: !235, file: !2, line: 173, type: !105)
!243 = !DILocation(line: 0, scope: !219)
!244 = !DILocation(line: 142, column: 22, scope: !219)
!245 = !DILocation(line: 144, column: 8, scope: !230)
!246 = !DILocation(line: 144, column: 6, scope: !219)
!247 = !DILocation(line: 146, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !230, file: !2, line: 144, column: 16)
!249 = !DILocation(line: 147, column: 5, scope: !248)
!250 = !DILocation(line: 149, column: 18, scope: !229)
!251 = !DILocation(line: 149, column: 42, scope: !229)
!252 = !DILocation(line: 152, column: 23, scope: !228)
!253 = !DILocation(line: 0, scope: !228)
!254 = !DILocation(line: 153, column: 21, scope: !228)
!255 = !DILocation(line: 153, column: 17, scope: !228)
!256 = !DILocation(line: 154, column: 26, scope: !228)
!257 = !DILocation(line: 154, column: 35, scope: !228)
!258 = !DILocation(line: 154, column: 55, scope: !228)
!259 = !DILocation(line: 154, column: 53, scope: !228)
!260 = !DILocation(line: 154, column: 13, scope: !228)
!261 = !DILocation(line: 154, column: 17, scope: !228)
!262 = !DILocation(line: 161, column: 12, scope: !237)
!263 = !DILocation(line: 0, scope: !232)
!264 = !DILocation(line: 161, column: 8, scope: !232)
!265 = !DILocation(line: 162, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !2, line: 162, column: 7)
!267 = distinct !DILexicalBlock(scope: !237, file: !2, line: 161, column: 38)
!268 = !DILocation(line: 162, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !2, line: 162, column: 7)
!270 = !DILocation(line: 164, column: 17, scope: !236)
!271 = !DILocation(line: 164, column: 13, scope: !237)
!272 = !DILocation(line: 165, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 165, column: 7)
!274 = distinct !DILexicalBlock(scope: !236, file: !2, line: 164, column: 43)
!275 = !DILocation(line: 165, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !2, line: 165, column: 7)
!277 = !DILocation(line: 168, column: 27, scope: !235)
!278 = !DILocation(line: 0, scope: !235)
!279 = !DILocation(line: 169, column: 27, scope: !235)
!280 = !DILocation(line: 170, column: 27, scope: !235)
!281 = !DILocation(line: 172, column: 30, scope: !235)
!282 = !DILocation(line: 173, column: 52, scope: !235)
!283 = !DILocation(line: 173, column: 63, scope: !235)
!284 = !DILocation(line: 173, column: 49, scope: !235)
!285 = !DILocation(line: 174, column: 27, scope: !235)
!286 = !DILocation(line: 174, column: 25, scope: !235)
!287 = !DILocation(line: 174, column: 38, scope: !235)
!288 = !DILocation(line: 174, column: 36, scope: !235)
!289 = !DILocation(line: 174, column: 20, scope: !235)
!290 = !DILocation(line: 175, column: 29, scope: !235)
!291 = !DILocation(line: 175, column: 27, scope: !235)
!292 = !DILocation(line: 175, column: 15, scope: !235)
!293 = !DILocation(line: 176, column: 44, scope: !235)
!294 = !DILocation(line: 176, column: 60, scope: !235)
!295 = !DILocation(line: 176, column: 19, scope: !235)
!296 = !DILocation(line: 0, scope: !230)
!297 = !DILocation(line: 180, column: 1, scope: !219)
!298 = !DISubprogram(name: "log", scope: !156, file: !156, line: 104, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = distinct !DISubprogram(name: "gsl_sf_exp_mult_e10_e", scope: !2, file: !2, line: 183, type: !300, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!55, !105, !105, !162}
!302 = !{!303, !304, !305, !306, !307, !311, !313, !314, !318, !319, !320}
!303 = !DILocalVariable(name: "x", arg: 1, scope: !299, file: !2, line: 183, type: !105)
!304 = !DILocalVariable(name: "y", arg: 2, scope: !299, file: !2, line: 183, type: !105)
!305 = !DILocalVariable(name: "result", arg: 3, scope: !299, file: !2, line: 183, type: !162)
!306 = !DILocalVariable(name: "ay", scope: !299, file: !2, line: 185, type: !105)
!307 = !DILocalVariable(name: "ex", scope: !308, file: !2, line: 196, type: !105)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 195, column: 7)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 193, column: 14)
!310 = distinct !DILexicalBlock(scope: !299, file: !2, line: 187, column: 6)
!311 = !DILocalVariable(name: "ly", scope: !312, file: !2, line: 203, type: !105)
!312 = distinct !DILexicalBlock(scope: !309, file: !2, line: 202, column: 8)
!313 = !DILocalVariable(name: "l10_val", scope: !312, file: !2, line: 204, type: !105)
!314 = !DILocalVariable(name: "sy", scope: !315, file: !2, line: 213, type: !105)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 212, column: 10)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 209, column: 13)
!317 = distinct !DILexicalBlock(scope: !312, file: !2, line: 206, column: 8)
!318 = !DILocalVariable(name: "N", scope: !315, file: !2, line: 214, type: !176)
!319 = !DILocalVariable(name: "arg_val", scope: !315, file: !2, line: 215, type: !105)
!320 = !DILocalVariable(name: "arg_err", scope: !315, file: !2, line: 216, type: !105)
!321 = !DILocation(line: 0, scope: !299)
!322 = !DILocation(line: 185, column: 22, scope: !299)
!323 = !DILocation(line: 187, column: 8, scope: !310)
!324 = !DILocation(line: 187, column: 6, scope: !299)
!325 = !DILocation(line: 189, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !310, file: !2, line: 187, column: 16)
!327 = !DILocation(line: 191, column: 5, scope: !326)
!328 = !DILocation(line: 193, column: 18, scope: !309)
!329 = !DILocation(line: 193, column: 42, scope: !309)
!330 = !DILocation(line: 196, column: 23, scope: !308)
!331 = !DILocation(line: 0, scope: !308)
!332 = !DILocation(line: 197, column: 21, scope: !308)
!333 = !DILocation(line: 197, column: 17, scope: !308)
!334 = !DILocation(line: 198, column: 26, scope: !308)
!335 = !DILocation(line: 198, column: 35, scope: !308)
!336 = !DILocation(line: 198, column: 55, scope: !308)
!337 = !DILocation(line: 198, column: 53, scope: !308)
!338 = !DILocation(line: 198, column: 13, scope: !308)
!339 = !DILocation(line: 198, column: 17, scope: !308)
!340 = !DILocation(line: 199, column: 13, scope: !308)
!341 = !DILocation(line: 199, column: 17, scope: !308)
!342 = !DILocation(line: 204, column: 36, scope: !312)
!343 = !DILocation(line: 0, scope: !312)
!344 = !DILocation(line: 206, column: 16, scope: !317)
!345 = !DILocation(line: 206, column: 8, scope: !312)
!346 = !DILocation(line: 207, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 207, column: 7)
!348 = distinct !DILexicalBlock(scope: !317, file: !2, line: 206, column: 29)
!349 = !DILocation(line: 207, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 207, column: 7)
!351 = !DILocation(line: 209, column: 21, scope: !316)
!352 = !DILocation(line: 209, column: 13, scope: !317)
!353 = !DILocation(line: 210, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 210, column: 7)
!355 = distinct !DILexicalBlock(scope: !316, file: !2, line: 209, column: 34)
!356 = !DILocation(line: 210, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !2, line: 210, column: 7)
!358 = !DILocation(line: 213, column: 26, scope: !315)
!359 = !DILocation(line: 0, scope: !315)
!360 = !DILocation(line: 214, column: 32, scope: !315)
!361 = !DILocation(line: 214, column: 26, scope: !315)
!362 = !DILocation(line: 215, column: 41, scope: !315)
!363 = !DILocation(line: 215, column: 44, scope: !315)
!364 = !DILocation(line: 216, column: 55, scope: !315)
!365 = !DILocation(line: 216, column: 65, scope: !315)
!366 = !DILocation(line: 216, column: 83, scope: !315)
!367 = !DILocation(line: 216, column: 82, scope: !315)
!368 = !DILocation(line: 216, column: 52, scope: !315)
!369 = !DILocation(line: 218, column: 27, scope: !315)
!370 = !DILocation(line: 218, column: 25, scope: !315)
!371 = !DILocation(line: 218, column: 20, scope: !315)
!372 = !DILocation(line: 219, column: 32, scope: !315)
!373 = !DILocation(line: 219, column: 30, scope: !315)
!374 = !DILocation(line: 219, column: 15, scope: !315)
!375 = !DILocation(line: 220, column: 44, scope: !315)
!376 = !DILocation(line: 220, column: 19, scope: !315)
!377 = !DILocation(line: 221, column: 15, scope: !315)
!378 = !DILocation(line: 221, column: 19, scope: !315)
!379 = !DILocation(line: 0, scope: !310)
!380 = !DILocation(line: 226, column: 1, scope: !299)
!381 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !2, file: !2, line: 229, type: !382, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!55, !105, !105, !105, !105, !107}
!384 = !{!385, !386, !387, !388, !389, !390, !391, !395, !397, !398, !402, !403, !404, !405, !406, !407}
!385 = !DILocalVariable(name: "x", arg: 1, scope: !381, file: !2, line: 229, type: !105)
!386 = !DILocalVariable(name: "dx", arg: 2, scope: !381, file: !2, line: 229, type: !105)
!387 = !DILocalVariable(name: "y", arg: 3, scope: !381, file: !2, line: 230, type: !105)
!388 = !DILocalVariable(name: "dy", arg: 4, scope: !381, file: !2, line: 230, type: !105)
!389 = !DILocalVariable(name: "result", arg: 5, scope: !381, file: !2, line: 231, type: !107)
!390 = !DILocalVariable(name: "ay", scope: !381, file: !2, line: 233, type: !105)
!391 = !DILocalVariable(name: "ex", scope: !392, file: !2, line: 243, type: !106)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 242, column: 7)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 240, column: 14)
!394 = distinct !DILexicalBlock(scope: !381, file: !2, line: 235, column: 6)
!395 = !DILocalVariable(name: "ly", scope: !396, file: !2, line: 250, type: !105)
!396 = distinct !DILexicalBlock(scope: !393, file: !2, line: 249, column: 8)
!397 = !DILocalVariable(name: "lnr", scope: !396, file: !2, line: 251, type: !105)
!398 = !DILocalVariable(name: "sy", scope: !399, file: !2, line: 260, type: !105)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 259, column: 10)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 256, column: 13)
!401 = distinct !DILexicalBlock(scope: !396, file: !2, line: 253, column: 8)
!402 = !DILocalVariable(name: "M", scope: !399, file: !2, line: 261, type: !105)
!403 = !DILocalVariable(name: "N", scope: !399, file: !2, line: 262, type: !105)
!404 = !DILocalVariable(name: "a", scope: !399, file: !2, line: 263, type: !105)
!405 = !DILocalVariable(name: "b", scope: !399, file: !2, line: 264, type: !105)
!406 = !DILocalVariable(name: "eMN", scope: !399, file: !2, line: 265, type: !105)
!407 = !DILocalVariable(name: "eab", scope: !399, file: !2, line: 266, type: !105)
!408 = !DILocation(line: 0, scope: !381)
!409 = !DILocation(line: 233, column: 22, scope: !381)
!410 = !DILocation(line: 235, column: 8, scope: !394)
!411 = !DILocation(line: 235, column: 6, scope: !381)
!412 = !DILocation(line: 236, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !394, file: !2, line: 235, column: 16)
!414 = !DILocation(line: 237, column: 29, scope: !413)
!415 = !DILocation(line: 237, column: 27, scope: !413)
!416 = !DILocation(line: 237, column: 19, scope: !413)
!417 = !DILocation(line: 237, column: 13, scope: !413)
!418 = !DILocation(line: 237, column: 17, scope: !413)
!419 = !DILocation(line: 238, column: 5, scope: !413)
!420 = !DILocation(line: 240, column: 18, scope: !393)
!421 = !DILocation(line: 240, column: 42, scope: !393)
!422 = !DILocation(line: 243, column: 17, scope: !392)
!423 = !DILocation(line: 0, scope: !392)
!424 = !DILocation(line: 244, column: 22, scope: !392)
!425 = !DILocation(line: 244, column: 18, scope: !392)
!426 = !DILocation(line: 245, column: 26, scope: !392)
!427 = !DILocation(line: 245, column: 43, scope: !392)
!428 = !DILocation(line: 245, column: 37, scope: !392)
!429 = !DILocation(line: 245, column: 23, scope: !392)
!430 = !DILocation(line: 245, column: 13, scope: !392)
!431 = !DILocation(line: 246, column: 44, scope: !392)
!432 = !DILocation(line: 246, column: 42, scope: !392)
!433 = !DILocation(line: 246, column: 17, scope: !392)
!434 = !DILocation(line: 253, column: 12, scope: !401)
!435 = !DILocation(line: 0, scope: !396)
!436 = !DILocation(line: 253, column: 8, scope: !396)
!437 = !DILocation(line: 254, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 254, column: 7)
!439 = distinct !DILexicalBlock(scope: !401, file: !2, line: 253, column: 38)
!440 = !DILocation(line: 254, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !2, line: 254, column: 7)
!442 = !DILocation(line: 256, column: 17, scope: !400)
!443 = !DILocation(line: 256, column: 13, scope: !401)
!444 = !DILocation(line: 257, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 257, column: 7)
!446 = distinct !DILexicalBlock(scope: !400, file: !2, line: 256, column: 43)
!447 = !DILocation(line: 257, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !2, line: 257, column: 7)
!449 = !DILocation(line: 260, column: 26, scope: !399)
!450 = !DILocation(line: 0, scope: !399)
!451 = !DILocation(line: 261, column: 26, scope: !399)
!452 = !DILocation(line: 262, column: 26, scope: !399)
!453 = !DILocation(line: 264, column: 29, scope: !399)
!454 = !DILocation(line: 265, column: 31, scope: !399)
!455 = !DILocation(line: 265, column: 26, scope: !399)
!456 = !DILocation(line: 266, column: 26, scope: !399)
!457 = !DILocation(line: 267, column: 25, scope: !399)
!458 = !DILocation(line: 267, column: 31, scope: !399)
!459 = !DILocation(line: 267, column: 20, scope: !399)
!460 = !DILocation(line: 268, column: 26, scope: !399)
!461 = !DILocation(line: 268, column: 32, scope: !399)
!462 = !DILocation(line: 268, column: 37, scope: !399)
!463 = !DILocation(line: 268, column: 15, scope: !399)
!464 = !DILocation(line: 269, column: 41, scope: !399)
!465 = !DILocation(line: 269, column: 34, scope: !399)
!466 = !DILocation(line: 269, column: 32, scope: !399)
!467 = !DILocation(line: 270, column: 34, scope: !399)
!468 = !DILocation(line: 270, column: 32, scope: !399)
!469 = !DILocation(line: 270, column: 19, scope: !399)
!470 = !DILocation(line: 0, scope: !394)
!471 = !DILocation(line: 274, column: 1, scope: !381)
!472 = distinct !DISubprogram(name: "gsl_sf_exp_mult_err_e10_e", scope: !2, file: !2, line: 277, type: !473, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!55, !105, !105, !105, !105, !162}
!475 = !{!476, !477, !478, !479, !480, !481, !482, !486, !488, !489, !493, !494, !495}
!476 = !DILocalVariable(name: "x", arg: 1, scope: !472, file: !2, line: 277, type: !105)
!477 = !DILocalVariable(name: "dx", arg: 2, scope: !472, file: !2, line: 277, type: !105)
!478 = !DILocalVariable(name: "y", arg: 3, scope: !472, file: !2, line: 278, type: !105)
!479 = !DILocalVariable(name: "dy", arg: 4, scope: !472, file: !2, line: 278, type: !105)
!480 = !DILocalVariable(name: "result", arg: 5, scope: !472, file: !2, line: 279, type: !162)
!481 = !DILocalVariable(name: "ay", scope: !472, file: !2, line: 281, type: !105)
!482 = !DILocalVariable(name: "ex", scope: !483, file: !2, line: 292, type: !105)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 291, column: 7)
!484 = distinct !DILexicalBlock(scope: !485, file: !2, line: 289, column: 14)
!485 = distinct !DILexicalBlock(scope: !472, file: !2, line: 283, column: 6)
!486 = !DILocalVariable(name: "ly", scope: !487, file: !2, line: 300, type: !105)
!487 = distinct !DILexicalBlock(scope: !484, file: !2, line: 299, column: 8)
!488 = !DILocalVariable(name: "l10_val", scope: !487, file: !2, line: 301, type: !105)
!489 = !DILocalVariable(name: "sy", scope: !490, file: !2, line: 310, type: !105)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 309, column: 10)
!491 = distinct !DILexicalBlock(scope: !492, file: !2, line: 306, column: 13)
!492 = distinct !DILexicalBlock(scope: !487, file: !2, line: 303, column: 8)
!493 = !DILocalVariable(name: "N", scope: !490, file: !2, line: 311, type: !176)
!494 = !DILocalVariable(name: "arg_val", scope: !490, file: !2, line: 312, type: !105)
!495 = !DILocalVariable(name: "arg_err", scope: !490, file: !2, line: 313, type: !105)
!496 = !DILocation(line: 0, scope: !472)
!497 = !DILocation(line: 281, column: 22, scope: !472)
!498 = !DILocation(line: 283, column: 8, scope: !485)
!499 = !DILocation(line: 283, column: 6, scope: !472)
!500 = !DILocation(line: 284, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !485, file: !2, line: 283, column: 16)
!502 = !DILocation(line: 285, column: 29, scope: !501)
!503 = !DILocation(line: 285, column: 27, scope: !501)
!504 = !DILocation(line: 285, column: 19, scope: !501)
!505 = !DILocation(line: 285, column: 13, scope: !501)
!506 = !DILocation(line: 285, column: 17, scope: !501)
!507 = !DILocation(line: 286, column: 13, scope: !501)
!508 = !DILocation(line: 286, column: 17, scope: !501)
!509 = !DILocation(line: 287, column: 5, scope: !501)
!510 = !DILocation(line: 289, column: 18, scope: !484)
!511 = !DILocation(line: 289, column: 42, scope: !484)
!512 = !DILocation(line: 292, column: 23, scope: !483)
!513 = !DILocation(line: 0, scope: !483)
!514 = !DILocation(line: 293, column: 22, scope: !483)
!515 = !DILocation(line: 293, column: 18, scope: !483)
!516 = !DILocation(line: 294, column: 26, scope: !483)
!517 = !DILocation(line: 294, column: 43, scope: !483)
!518 = !DILocation(line: 294, column: 37, scope: !483)
!519 = !DILocation(line: 294, column: 23, scope: !483)
!520 = !DILocation(line: 294, column: 13, scope: !483)
!521 = !DILocation(line: 295, column: 44, scope: !483)
!522 = !DILocation(line: 295, column: 42, scope: !483)
!523 = !DILocation(line: 295, column: 17, scope: !483)
!524 = !DILocation(line: 296, column: 13, scope: !483)
!525 = !DILocation(line: 296, column: 17, scope: !483)
!526 = !DILocation(line: 301, column: 36, scope: !487)
!527 = !DILocation(line: 0, scope: !487)
!528 = !DILocation(line: 303, column: 16, scope: !492)
!529 = !DILocation(line: 303, column: 8, scope: !487)
!530 = !DILocation(line: 304, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 304, column: 7)
!532 = distinct !DILexicalBlock(scope: !492, file: !2, line: 303, column: 29)
!533 = !DILocation(line: 304, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !2, line: 304, column: 7)
!535 = !DILocation(line: 306, column: 21, scope: !491)
!536 = !DILocation(line: 306, column: 13, scope: !492)
!537 = !DILocation(line: 307, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 307, column: 7)
!539 = distinct !DILexicalBlock(scope: !491, file: !2, line: 306, column: 34)
!540 = !DILocation(line: 307, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !2, line: 307, column: 7)
!542 = !DILocation(line: 310, column: 26, scope: !490)
!543 = !DILocation(line: 0, scope: !490)
!544 = !DILocation(line: 311, column: 32, scope: !490)
!545 = !DILocation(line: 311, column: 26, scope: !490)
!546 = !DILocation(line: 312, column: 41, scope: !490)
!547 = !DILocation(line: 312, column: 44, scope: !490)
!548 = !DILocation(line: 313, column: 32, scope: !490)
!549 = !DILocation(line: 313, column: 68, scope: !490)
!550 = !DILocation(line: 313, column: 67, scope: !490)
!551 = !DILocation(line: 315, column: 27, scope: !490)
!552 = !DILocation(line: 315, column: 25, scope: !490)
!553 = !DILocation(line: 315, column: 20, scope: !490)
!554 = !DILocation(line: 316, column: 32, scope: !490)
!555 = !DILocation(line: 316, column: 30, scope: !490)
!556 = !DILocation(line: 316, column: 15, scope: !490)
!557 = !DILocation(line: 317, column: 44, scope: !490)
!558 = !DILocation(line: 317, column: 19, scope: !490)
!559 = !DILocation(line: 318, column: 15, scope: !490)
!560 = !DILocation(line: 318, column: 19, scope: !490)
!561 = !DILocation(line: 0, scope: !485)
!562 = !DILocation(line: 323, column: 1, scope: !472)
!563 = distinct !DISubprogram(name: "gsl_sf_expm1_e", scope: !2, file: !2, line: 326, type: !103, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !564)
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "x", arg: 1, scope: !563, file: !2, line: 326, type: !105)
!566 = !DILocalVariable(name: "result", arg: 2, scope: !563, file: !2, line: 326, type: !107)
!567 = !DILocalVariable(name: "cut", scope: !563, file: !2, line: 328, type: !105)
!568 = !DILocation(line: 0, scope: !563)
!569 = !DILocation(line: 330, column: 8, scope: !570)
!570 = distinct !DILexicalBlock(scope: !563, file: !2, line: 330, column: 6)
!571 = !DILocation(line: 330, column: 6, scope: !563)
!572 = !DILocation(line: 331, column: 17, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !2, line: 330, column: 27)
!574 = !DILocation(line: 332, column: 13, scope: !573)
!575 = !DILocation(line: 332, column: 17, scope: !573)
!576 = !DILocation(line: 333, column: 5, scope: !573)
!577 = !DILocation(line: 335, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !2, line: 335, column: 11)
!579 = !DILocation(line: 335, column: 11, scope: !570)
!580 = !DILocation(line: 336, column: 19, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !2, line: 335, column: 21)
!582 = !DILocation(line: 336, column: 17, scope: !581)
!583 = !DILocation(line: 337, column: 43, scope: !581)
!584 = !DILocation(line: 337, column: 41, scope: !581)
!585 = !DILocation(line: 337, column: 13, scope: !581)
!586 = !DILocation(line: 337, column: 17, scope: !581)
!587 = !DILocation(line: 338, column: 5, scope: !581)
!588 = !DILocation(line: 340, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !578, file: !2, line: 340, column: 11)
!590 = !DILocation(line: 340, column: 11, scope: !578)
!591 = !DILocation(line: 341, column: 33, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 340, column: 20)
!593 = !DILocation(line: 341, column: 44, scope: !592)
!594 = !DILocation(line: 341, column: 60, scope: !592)
!595 = !DILocation(line: 341, column: 73, scope: !592)
!596 = !DILocation(line: 341, column: 62, scope: !592)
!597 = !DILocation(line: 341, column: 48, scope: !592)
!598 = !DILocation(line: 341, column: 35, scope: !592)
!599 = !DILocation(line: 341, column: 21, scope: !592)
!600 = !DILocation(line: 341, column: 17, scope: !592)
!601 = !DILocation(line: 342, column: 43, scope: !592)
!602 = !DILocation(line: 342, column: 41, scope: !592)
!603 = !DILocation(line: 342, column: 13, scope: !592)
!604 = !DILocation(line: 342, column: 17, scope: !592)
!605 = !DILocation(line: 343, column: 5, scope: !592)
!606 = !DILocation(line: 345, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !2, line: 345, column: 11)
!608 = !DILocation(line: 345, column: 11, scope: !589)
!609 = !DILocation(line: 346, column: 19, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !2, line: 345, column: 32)
!611 = !DILocation(line: 346, column: 17, scope: !610)
!612 = !DILocation(line: 347, column: 43, scope: !610)
!613 = !DILocation(line: 347, column: 41, scope: !610)
!614 = !DILocation(line: 347, column: 13, scope: !610)
!615 = !DILocation(line: 347, column: 17, scope: !610)
!616 = !DILocation(line: 348, column: 5, scope: !610)
!617 = !DILocation(line: 351, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 351, column: 5)
!619 = distinct !DILexicalBlock(scope: !607, file: !2, line: 350, column: 8)
!620 = !DILocation(line: 351, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !2, line: 351, column: 5)
!622 = !DILocation(line: 0, scope: !570)
!623 = !DILocation(line: 353, column: 1, scope: !563)
!624 = distinct !DISubprogram(name: "gsl_sf_exprel_e", scope: !2, file: !2, line: 356, type: !103, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !625)
!625 = !{!626, !627, !628}
!626 = !DILocalVariable(name: "x", arg: 1, scope: !624, file: !2, line: 356, type: !105)
!627 = !DILocalVariable(name: "result", arg: 2, scope: !624, file: !2, line: 356, type: !107)
!628 = !DILocalVariable(name: "cut", scope: !624, file: !2, line: 358, type: !105)
!629 = !DILocation(line: 0, scope: !624)
!630 = !DILocation(line: 360, column: 8, scope: !631)
!631 = distinct !DILexicalBlock(scope: !624, file: !2, line: 360, column: 6)
!632 = !DILocation(line: 360, column: 6, scope: !624)
!633 = !DILocation(line: 361, column: 23, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !2, line: 360, column: 27)
!635 = !DILocation(line: 361, column: 17, scope: !634)
!636 = !DILocation(line: 362, column: 37, scope: !634)
!637 = !DILocation(line: 362, column: 35, scope: !634)
!638 = !DILocation(line: 362, column: 13, scope: !634)
!639 = !DILocation(line: 362, column: 17, scope: !634)
!640 = !DILocation(line: 363, column: 5, scope: !634)
!641 = !DILocation(line: 365, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !631, file: !2, line: 365, column: 11)
!643 = !DILocation(line: 365, column: 11, scope: !631)
!644 = !DILocation(line: 366, column: 20, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !2, line: 365, column: 21)
!646 = !DILocation(line: 366, column: 33, scope: !645)
!647 = !DILocation(line: 366, column: 17, scope: !645)
!648 = !DILocation(line: 367, column: 43, scope: !645)
!649 = !DILocation(line: 367, column: 41, scope: !645)
!650 = !DILocation(line: 367, column: 13, scope: !645)
!651 = !DILocation(line: 367, column: 17, scope: !645)
!652 = !DILocation(line: 368, column: 5, scope: !645)
!653 = !DILocation(line: 370, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !642, file: !2, line: 370, column: 11)
!655 = !DILocation(line: 370, column: 11, scope: !642)
!656 = !DILocation(line: 371, column: 29, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !2, line: 370, column: 20)
!658 = !DILocation(line: 371, column: 40, scope: !657)
!659 = !DILocation(line: 371, column: 56, scope: !657)
!660 = !DILocation(line: 371, column: 69, scope: !657)
!661 = !DILocation(line: 371, column: 58, scope: !657)
!662 = !DILocation(line: 371, column: 44, scope: !657)
!663 = !DILocation(line: 371, column: 31, scope: !657)
!664 = !DILocation(line: 371, column: 17, scope: !657)
!665 = !DILocation(line: 372, column: 43, scope: !657)
!666 = !DILocation(line: 372, column: 41, scope: !657)
!667 = !DILocation(line: 372, column: 13, scope: !657)
!668 = !DILocation(line: 372, column: 17, scope: !657)
!669 = !DILocation(line: 373, column: 5, scope: !657)
!670 = !DILocation(line: 375, column: 13, scope: !671)
!671 = distinct !DILexicalBlock(scope: !654, file: !2, line: 375, column: 11)
!672 = !DILocation(line: 375, column: 11, scope: !654)
!673 = !DILocation(line: 376, column: 20, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !2, line: 375, column: 32)
!675 = !DILocation(line: 376, column: 33, scope: !674)
!676 = !DILocation(line: 376, column: 17, scope: !674)
!677 = !DILocation(line: 377, column: 43, scope: !674)
!678 = !DILocation(line: 377, column: 41, scope: !674)
!679 = !DILocation(line: 377, column: 13, scope: !674)
!680 = !DILocation(line: 377, column: 17, scope: !674)
!681 = !DILocation(line: 378, column: 5, scope: !674)
!682 = !DILocation(line: 381, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 381, column: 5)
!684 = distinct !DILexicalBlock(scope: !671, file: !2, line: 380, column: 8)
!685 = !DILocation(line: 381, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !2, line: 381, column: 5)
!687 = !DILocation(line: 0, scope: !631)
!688 = !DILocation(line: 383, column: 1, scope: !624)
!689 = distinct !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !2, file: !2, line: 386, type: !690, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!55, !106, !107}
!692 = !{!693, !694, !695}
!693 = !DILocalVariable(name: "x", arg: 1, scope: !689, file: !2, line: 386, type: !106)
!694 = !DILocalVariable(name: "result", arg: 2, scope: !689, file: !2, line: 386, type: !107)
!695 = !DILocalVariable(name: "cut", scope: !689, file: !2, line: 388, type: !105)
!696 = !DILocation(line: 0, scope: !689)
!697 = !DILocation(line: 390, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !2, line: 390, column: 6)
!699 = !DILocation(line: 390, column: 6, scope: !689)
!700 = !DILocation(line: 391, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !2, line: 390, column: 27)
!702 = !DILocation(line: 391, column: 36, scope: !701)
!703 = !DILocation(line: 391, column: 25, scope: !701)
!704 = !DILocation(line: 391, column: 17, scope: !701)
!705 = !DILocation(line: 392, column: 43, scope: !701)
!706 = !DILocation(line: 392, column: 41, scope: !701)
!707 = !DILocation(line: 392, column: 13, scope: !701)
!708 = !DILocation(line: 392, column: 17, scope: !701)
!709 = !DILocation(line: 393, column: 5, scope: !701)
!710 = !DILocation(line: 395, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !698, file: !2, line: 395, column: 11)
!712 = !DILocation(line: 395, column: 11, scope: !698)
!713 = !DILocation(line: 396, column: 24, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !2, line: 395, column: 21)
!715 = !DILocation(line: 396, column: 37, scope: !714)
!716 = !DILocation(line: 396, column: 22, scope: !714)
!717 = !DILocation(line: 396, column: 44, scope: !714)
!718 = !DILocation(line: 396, column: 41, scope: !714)
!719 = !DILocation(line: 396, column: 17, scope: !714)
!720 = !DILocation(line: 397, column: 43, scope: !714)
!721 = !DILocation(line: 397, column: 41, scope: !714)
!722 = !DILocation(line: 397, column: 13, scope: !714)
!723 = !DILocation(line: 397, column: 17, scope: !714)
!724 = !DILocation(line: 398, column: 5, scope: !714)
!725 = !DILocation(line: 400, column: 13, scope: !726)
!726 = distinct !DILexicalBlock(scope: !711, file: !2, line: 400, column: 11)
!727 = !DILocation(line: 400, column: 11, scope: !711)
!728 = !DILocation(line: 401, column: 33, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !2, line: 400, column: 20)
!730 = !DILocation(line: 401, column: 47, scope: !729)
!731 = !DILocation(line: 401, column: 60, scope: !729)
!732 = !DILocation(line: 401, column: 77, scope: !729)
!733 = !DILocation(line: 401, column: 62, scope: !729)
!734 = !DILocation(line: 401, column: 49, scope: !729)
!735 = !DILocation(line: 401, column: 35, scope: !729)
!736 = !DILocation(line: 401, column: 17, scope: !729)
!737 = !DILocation(line: 402, column: 43, scope: !729)
!738 = !DILocation(line: 402, column: 41, scope: !729)
!739 = !DILocation(line: 402, column: 13, scope: !729)
!740 = !DILocation(line: 402, column: 17, scope: !729)
!741 = !DILocation(line: 403, column: 5, scope: !729)
!742 = !DILocation(line: 405, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !726, file: !2, line: 405, column: 11)
!744 = !DILocation(line: 405, column: 11, scope: !726)
!745 = !DILocation(line: 406, column: 24, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !2, line: 405, column: 32)
!747 = !DILocation(line: 406, column: 37, scope: !746)
!748 = !DILocation(line: 406, column: 22, scope: !746)
!749 = !DILocation(line: 406, column: 44, scope: !746)
!750 = !DILocation(line: 406, column: 41, scope: !746)
!751 = !DILocation(line: 406, column: 17, scope: !746)
!752 = !DILocation(line: 407, column: 43, scope: !746)
!753 = !DILocation(line: 407, column: 41, scope: !746)
!754 = !DILocation(line: 407, column: 13, scope: !746)
!755 = !DILocation(line: 407, column: 17, scope: !746)
!756 = !DILocation(line: 408, column: 5, scope: !746)
!757 = !DILocation(line: 411, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 411, column: 5)
!759 = distinct !DILexicalBlock(scope: !743, file: !2, line: 410, column: 8)
!760 = !DILocation(line: 411, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !2, line: 411, column: 5)
!762 = !DILocation(line: 0, scope: !698)
!763 = !DILocation(line: 413, column: 1, scope: !689)
!764 = distinct !DISubprogram(name: "gsl_sf_exprel_n_CF_e", scope: !2, file: !2, line: 417, type: !220, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !765)
!765 = !{!766, !767, !768}
!766 = !DILocalVariable(name: "N", arg: 1, scope: !764, file: !2, line: 417, type: !105)
!767 = !DILocalVariable(name: "x", arg: 2, scope: !764, file: !2, line: 417, type: !105)
!768 = !DILocalVariable(name: "result", arg: 3, scope: !764, file: !2, line: 417, type: !107)
!769 = !DILocation(line: 0, scope: !764)
!770 = !DILocation(line: 419, column: 10, scope: !764)
!771 = !{i32 0, i32 12}
!772 = !DILocation(line: 419, column: 3, scope: !764)
!773 = distinct !DISubprogram(name: "exprel_n_CF", scope: !2, file: !2, line: 35, type: !220, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !796}
!775 = !DILocalVariable(name: "N", arg: 1, scope: !773, file: !2, line: 35, type: !105)
!776 = !DILocalVariable(name: "x", arg: 2, scope: !773, file: !2, line: 35, type: !105)
!777 = !DILocalVariable(name: "result", arg: 3, scope: !773, file: !2, line: 35, type: !107)
!778 = !DILocalVariable(name: "RECUR_BIG", scope: !773, file: !2, line: 37, type: !105)
!779 = !DILocalVariable(name: "maxiter", scope: !773, file: !2, line: 38, type: !176)
!780 = !DILocalVariable(name: "n", scope: !773, file: !2, line: 39, type: !55)
!781 = !DILocalVariable(name: "Anm2", scope: !773, file: !2, line: 40, type: !106)
!782 = !DILocalVariable(name: "Bnm2", scope: !773, file: !2, line: 41, type: !106)
!783 = !DILocalVariable(name: "Anm1", scope: !773, file: !2, line: 42, type: !106)
!784 = !DILocalVariable(name: "Bnm1", scope: !773, file: !2, line: 43, type: !106)
!785 = !DILocalVariable(name: "a1", scope: !773, file: !2, line: 44, type: !106)
!786 = !DILocalVariable(name: "b1", scope: !773, file: !2, line: 45, type: !106)
!787 = !DILocalVariable(name: "a2", scope: !773, file: !2, line: 46, type: !106)
!788 = !DILocalVariable(name: "b2", scope: !773, file: !2, line: 47, type: !106)
!789 = !DILocalVariable(name: "an", scope: !773, file: !2, line: 48, type: !106)
!790 = !DILocalVariable(name: "bn", scope: !773, file: !2, line: 48, type: !106)
!791 = !DILocalVariable(name: "fn", scope: !773, file: !2, line: 50, type: !106)
!792 = !DILocalVariable(name: "An", scope: !773, file: !2, line: 52, type: !106)
!793 = !DILocalVariable(name: "Bn", scope: !773, file: !2, line: 53, type: !106)
!794 = !DILocalVariable(name: "old_fn", scope: !795, file: !2, line: 67, type: !106)
!795 = distinct !DILexicalBlock(scope: !773, file: !2, line: 66, column: 22)
!796 = !DILocalVariable(name: "del", scope: !795, file: !2, line: 68, type: !106)
!797 = !DILocation(line: 0, scope: !773)
!798 = !DILocation(line: 61, column: 20, scope: !773)
!799 = !DILocation(line: 62, column: 16, scope: !773)
!800 = !DILocation(line: 64, column: 10, scope: !773)
!801 = !DILocation(line: 66, column: 3, scope: !773)
!802 = !DILocation(line: 66, column: 11, scope: !773)
!803 = !DILocation(line: 69, column: 6, scope: !795)
!804 = !DILocation(line: 74, column: 12, scope: !795)
!805 = !DILocation(line: 74, column: 34, scope: !795)
!806 = !DILocation(line: 74, column: 28, scope: !795)
!807 = !DILocation(line: 74, column: 48, scope: !795)
!808 = !DILocation(line: 74, column: 46, scope: !795)
!809 = !DILocation(line: 74, column: 51, scope: !795)
!810 = !DILocation(line: 74, column: 42, scope: !795)
!811 = !DILocation(line: 75, column: 14, scope: !795)
!812 = !DILocation(line: 75, column: 16, scope: !795)
!813 = !DILocation(line: 76, column: 12, scope: !795)
!814 = !DILocation(line: 76, column: 22, scope: !795)
!815 = !DILocation(line: 77, column: 12, scope: !795)
!816 = !DILocation(line: 77, column: 22, scope: !795)
!817 = !DILocation(line: 79, column: 8, scope: !818)
!818 = distinct !DILexicalBlock(scope: !795, file: !2, line: 79, column: 8)
!819 = !DILocation(line: 79, column: 17, scope: !818)
!820 = !DILocation(line: 79, column: 29, scope: !818)
!821 = !DILocation(line: 80, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 79, column: 54)
!823 = !DILocation(line: 81, column: 10, scope: !822)
!824 = !DILocation(line: 82, column: 12, scope: !822)
!825 = !DILocation(line: 83, column: 12, scope: !822)
!826 = !DILocation(line: 86, column: 5, scope: !822)
!827 = !DILocation(line: 0, scope: !795)
!828 = !DILocation(line: 89, column: 12, scope: !795)
!829 = !DILocation(line: 90, column: 17, scope: !795)
!830 = !DILocation(line: 92, column: 8, scope: !831)
!831 = distinct !DILexicalBlock(scope: !795, file: !2, line: 92, column: 8)
!832 = !DILocation(line: 92, column: 24, scope: !831)
!833 = !DILocation(line: 95, column: 15, scope: !773)
!834 = !DILocation(line: 96, column: 23, scope: !773)
!835 = !DILocation(line: 96, column: 20, scope: !773)
!836 = !DILocation(line: 96, column: 28, scope: !773)
!837 = !DILocation(line: 96, column: 45, scope: !773)
!838 = !DILocation(line: 96, column: 44, scope: !773)
!839 = !DILocation(line: 96, column: 11, scope: !773)
!840 = !DILocation(line: 96, column: 15, scope: !773)
!841 = !DILocation(line: 98, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !773, file: !2, line: 98, column: 6)
!843 = !DILocation(line: 98, column: 6, scope: !773)
!844 = !DILocation(line: 99, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 99, column: 5)
!846 = !DILocation(line: 0, scope: !842)
!847 = !DILocation(line: 102, column: 1, scope: !773)
!848 = distinct !DISubprogram(name: "gsl_sf_exprel_n_e", scope: !2, file: !2, line: 423, type: !849, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!55, !176, !105, !107}
!851 = !{!852, !853, !854, !855, !865, !866, !867, !868, !871, !872, !873, !874, !875, !878, !879, !880, !881, !882, !883, !884, !885, !888, !889}
!852 = !DILocalVariable(name: "N", arg: 1, scope: !848, file: !2, line: 423, type: !176)
!853 = !DILocalVariable(name: "x", arg: 2, scope: !848, file: !2, line: 423, type: !105)
!854 = !DILocalVariable(name: "result", arg: 3, scope: !848, file: !2, line: 423, type: !107)
!855 = !DILocalVariable(name: "lnf_N", scope: !856, file: !2, line: 453, type: !108)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 448, column: 66)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 448, column: 8)
!858 = distinct !DILexicalBlock(scope: !859, file: !2, line: 447, column: 8)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 444, column: 11)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 441, column: 11)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 438, column: 11)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 433, column: 11)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 428, column: 11)
!864 = distinct !DILexicalBlock(scope: !848, file: !2, line: 425, column: 6)
!865 = !DILocalVariable(name: "lnr_val", scope: !856, file: !2, line: 454, type: !106)
!866 = !DILocalVariable(name: "lnr_err", scope: !856, file: !2, line: 455, type: !106)
!867 = !DILocalVariable(name: "lnterm", scope: !856, file: !2, line: 456, type: !106)
!868 = !DILocalVariable(name: "ln_x", scope: !869, file: !2, line: 470, type: !106)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 464, column: 20)
!870 = distinct !DILexicalBlock(scope: !857, file: !2, line: 464, column: 13)
!871 = !DILocalVariable(name: "lnf_N", scope: !869, file: !2, line: 471, type: !108)
!872 = !DILocalVariable(name: "lg_N", scope: !869, file: !2, line: 472, type: !106)
!873 = !DILocalVariable(name: "lnpre_val", scope: !869, file: !2, line: 473, type: !106)
!874 = !DILocalVariable(name: "lnpre_err", scope: !869, file: !2, line: 474, type: !106)
!875 = !DILocalVariable(name: "stat_eG", scope: !876, file: !2, line: 481, type: !55)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 480, column: 45)
!877 = distinct !DILexicalBlock(scope: !869, file: !2, line: 480, column: 10)
!878 = !DILocalVariable(name: "bigG_ratio", scope: !876, file: !2, line: 482, type: !108)
!879 = !DILocalVariable(name: "pre", scope: !876, file: !2, line: 483, type: !108)
!880 = !DILocalVariable(name: "stat_ex", scope: !876, file: !2, line: 484, type: !55)
!881 = !DILocalVariable(name: "ln_bigG_ratio_pre", scope: !876, file: !2, line: 485, type: !106)
!882 = !DILocalVariable(name: "bigGsum", scope: !876, file: !2, line: 486, type: !106)
!883 = !DILocalVariable(name: "term", scope: !876, file: !2, line: 487, type: !106)
!884 = !DILocalVariable(name: "k", scope: !876, file: !2, line: 488, type: !55)
!885 = !DILocalVariable(name: "sum", scope: !886, file: !2, line: 519, type: !106)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 514, column: 10)
!887 = distinct !DILexicalBlock(scope: !870, file: !2, line: 511, column: 13)
!888 = !DILocalVariable(name: "term", scope: !886, file: !2, line: 520, type: !106)
!889 = !DILocalVariable(name: "k", scope: !886, file: !2, line: 521, type: !55)
!890 = distinct !DIAssignID()
!891 = !DILocation(line: 0, scope: !856)
!892 = distinct !DIAssignID()
!893 = !DILocation(line: 0, scope: !869)
!894 = distinct !DIAssignID()
!895 = !DILocation(line: 0, scope: !876)
!896 = distinct !DIAssignID()
!897 = !DILocation(line: 0, scope: !848)
!898 = !DILocation(line: 425, column: 8, scope: !864)
!899 = !DILocation(line: 425, column: 6, scope: !848)
!900 = !DILocation(line: 426, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 426, column: 5)
!902 = distinct !DILexicalBlock(scope: !864, file: !2, line: 425, column: 13)
!903 = !DILocation(line: 426, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !2, line: 426, column: 5)
!905 = !DILocation(line: 428, column: 13, scope: !863)
!906 = !DILocation(line: 428, column: 11, scope: !864)
!907 = !DILocation(line: 429, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !863, file: !2, line: 428, column: 21)
!909 = !DILocation(line: 430, column: 13, scope: !908)
!910 = !DILocation(line: 430, column: 17, scope: !908)
!911 = !DILocation(line: 431, column: 5, scope: !908)
!912 = !DILocation(line: 433, column: 11, scope: !862)
!913 = !DILocation(line: 433, column: 45, scope: !862)
!914 = !DILocation(line: 433, column: 43, scope: !862)
!915 = !DILocation(line: 433, column: 19, scope: !862)
!916 = !DILocation(line: 433, column: 11, scope: !863)
!917 = !DILocation(line: 434, column: 29, scope: !918)
!918 = distinct !DILexicalBlock(scope: !862, file: !2, line: 433, column: 48)
!919 = !DILocation(line: 434, column: 27, scope: !918)
!920 = !DILocation(line: 434, column: 26, scope: !918)
!921 = !DILocation(line: 434, column: 46, scope: !918)
!922 = !DILocation(line: 434, column: 44, scope: !918)
!923 = !DILocation(line: 434, column: 43, scope: !918)
!924 = !DILocation(line: 434, column: 33, scope: !918)
!925 = !DILocation(line: 434, column: 17, scope: !918)
!926 = !DILocation(line: 435, column: 13, scope: !918)
!927 = !DILocation(line: 435, column: 17, scope: !918)
!928 = !DILocation(line: 436, column: 5, scope: !918)
!929 = !DILocation(line: 438, column: 11, scope: !862)
!930 = !DILocation(line: 0, scope: !102, inlinedAt: !931)
!931 = distinct !DILocation(line: 439, column: 12, scope: !932)
!932 = distinct !DILexicalBlock(scope: !861, file: !2, line: 438, column: 19)
!933 = !DILocation(line: 109, column: 8, scope: !119, inlinedAt: !931)
!934 = !DILocation(line: 109, column: 6, scope: !102, inlinedAt: !931)
!935 = !DILocation(line: 110, column: 5, scope: !122, inlinedAt: !931)
!936 = !DILocation(line: 110, column: 5, scope: !131, inlinedAt: !931)
!937 = !DILocation(line: 112, column: 13, scope: !133, inlinedAt: !931)
!938 = !DILocation(line: 112, column: 11, scope: !119, inlinedAt: !931)
!939 = !DILocation(line: 113, column: 5, scope: !136, inlinedAt: !931)
!940 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !931)
!941 = !DILocation(line: 116, column: 19, scope: !141, inlinedAt: !931)
!942 = !DILocation(line: 116, column: 17, scope: !141, inlinedAt: !931)
!943 = !DILocation(line: 117, column: 43, scope: !141, inlinedAt: !931)
!944 = !DILocation(line: 117, column: 41, scope: !141, inlinedAt: !931)
!945 = !DILocation(line: 117, column: 13, scope: !141, inlinedAt: !931)
!946 = !DILocation(line: 117, column: 17, scope: !141, inlinedAt: !931)
!947 = !DILocation(line: 118, column: 5, scope: !141, inlinedAt: !931)
!948 = !DILocation(line: 442, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !860, file: !2, line: 441, column: 19)
!950 = !{i32 0, i32 17}
!951 = !DILocation(line: 442, column: 5, scope: !949)
!952 = !DILocation(line: 445, column: 12, scope: !953)
!953 = distinct !DILexicalBlock(scope: !859, file: !2, line: 444, column: 19)
!954 = !DILocation(line: 445, column: 5, scope: !953)
!955 = !DILocation(line: 448, column: 10, scope: !857)
!956 = !DILocation(line: 448, column: 14, scope: !857)
!957 = !DILocation(line: 448, column: 37, scope: !857)
!958 = !DILocation(line: 448, column: 24, scope: !857)
!959 = !DILocation(line: 448, column: 42, scope: !857)
!960 = !DILocation(line: 448, column: 8, scope: !858)
!961 = !DILocation(line: 453, column: 7, scope: !856)
!962 = !DILocation(line: 457, column: 7, scope: !856)
!963 = !DILocation(line: 458, column: 17, scope: !856)
!964 = !DILocation(line: 459, column: 28, scope: !856)
!965 = !DILocation(line: 459, column: 32, scope: !856)
!966 = !DILocation(line: 460, column: 47, scope: !856)
!967 = !DILocation(line: 460, column: 65, scope: !856)
!968 = !DILocation(line: 460, column: 34, scope: !856)
!969 = !DILocation(line: 461, column: 24, scope: !856)
!970 = !DILocation(line: 462, column: 14, scope: !856)
!971 = !DILocation(line: 463, column: 5, scope: !857)
!972 = !DILocation(line: 471, column: 7, scope: !869)
!973 = !DILocation(line: 475, column: 7, scope: !869)
!974 = !DILocation(line: 476, column: 21, scope: !869)
!975 = !DILocation(line: 477, column: 30, scope: !869)
!976 = !DILocation(line: 477, column: 37, scope: !869)
!977 = !DILocation(line: 480, column: 20, scope: !877)
!978 = !DILocation(line: 480, column: 10, scope: !869)
!979 = !DILocation(line: 478, column: 49, scope: !869)
!980 = !DILocation(line: 478, column: 67, scope: !869)
!981 = !DILocation(line: 478, column: 36, scope: !869)
!982 = !DILocation(line: 479, column: 26, scope: !869)
!983 = !DILocation(line: 476, column: 25, scope: !869)
!984 = !DILocation(line: 482, column: 9, scope: !876)
!985 = !DILocation(line: 483, column: 9, scope: !876)
!986 = !DILocation(line: 484, column: 23, scope: !876)
!987 = !DILocation(line: 485, column: 43, scope: !876)
!988 = !DILocation(line: 485, column: 41, scope: !876)
!989 = !DILocation(line: 485, column: 46, scope: !876)
!990 = !DILocation(line: 485, column: 52, scope: !876)
!991 = !DILocation(line: 489, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !876, file: !2, line: 489, column: 9)
!993 = !DILocation(line: 490, column: 21, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 489, column: 28)
!995 = distinct !DILexicalBlock(scope: !992, file: !2, line: 489, column: 9)
!996 = !DILocation(line: 490, column: 19, scope: !994)
!997 = !DILocation(line: 490, column: 24, scope: !994)
!998 = !DILocation(line: 490, column: 16, scope: !994)
!999 = !DILocation(line: 489, column: 24, scope: !995)
!1000 = distinct !{!1000, !991, !1001, !1002}
!1001 = !DILocation(line: 492, column: 9, scope: !992)
!1002 = !{!"llvm.loop.mustprogress"}
!1003 = distinct !{!1003, !1004}
!1004 = !{!"llvm.loop.unroll.disable"}
!1005 = !DILocation(line: 491, column: 19, scope: !994)
!1006 = !DILocation(line: 493, column: 19, scope: !876)
!1007 = !DILocation(line: 494, column: 20, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !876, file: !2, line: 494, column: 12)
!1009 = !DILocation(line: 494, column: 12, scope: !876)
!1010 = !DILocation(line: 495, column: 30, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 494, column: 36)
!1012 = !DILocation(line: 495, column: 54, scope: !1011)
!1013 = !DILocation(line: 495, column: 34, scope: !1011)
!1014 = !DILocation(line: 495, column: 24, scope: !1011)
!1015 = !DILocation(line: 496, column: 70, scope: !1011)
!1016 = !DILocation(line: 496, column: 34, scope: !1011)
!1017 = !DILocation(line: 496, column: 19, scope: !1011)
!1018 = !DILocation(line: 497, column: 30, scope: !1011)
!1019 = !DILocation(line: 497, column: 36, scope: !1011)
!1020 = !DILocation(line: 497, column: 34, scope: !1011)
!1021 = !DILocation(line: 498, column: 50, scope: !1011)
!1022 = !DILocation(line: 498, column: 48, scope: !1011)
!1023 = !DILocation(line: 498, column: 23, scope: !1011)
!1024 = !DILocation(line: 499, column: 11, scope: !1011)
!1025 = !DILocation(line: 503, column: 23, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 501, column: 14)
!1027 = !DILocation(line: 504, column: 11, scope: !1026)
!1028 = !DILocation(line: 0, scope: !1008)
!1029 = !DILocation(line: 506, column: 7, scope: !877)
!1030 = !DILocation(line: 508, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 508, column: 9)
!1032 = distinct !DILexicalBlock(scope: !877, file: !2, line: 507, column: 12)
!1033 = !DILocation(line: 508, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 508, column: 9)
!1035 = !DILocation(line: 0, scope: !877)
!1036 = !DILocation(line: 510, column: 5, scope: !870)
!1037 = !DILocation(line: 511, column: 22, scope: !887)
!1038 = !DILocation(line: 511, column: 15, scope: !887)
!1039 = !DILocation(line: 511, column: 13, scope: !870)
!1040 = !DILocation(line: 522, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !886, file: !2, line: 522, column: 7)
!1042 = !DILocation(line: 512, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !887, file: !2, line: 511, column: 26)
!1044 = !DILocation(line: 512, column: 7, scope: !1043)
!1045 = !DILocation(line: 0, scope: !886)
!1046 = !DILocation(line: 523, column: 19, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 522, column: 26)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 522, column: 7)
!1049 = !DILocation(line: 523, column: 17, scope: !1047)
!1050 = !DILocation(line: 523, column: 22, scope: !1047)
!1051 = !DILocation(line: 523, column: 14, scope: !1047)
!1052 = !DILocation(line: 522, column: 22, scope: !1048)
!1053 = distinct !{!1053, !1040, !1054, !1002}
!1054 = !DILocation(line: 525, column: 7, scope: !1041)
!1055 = distinct !{!1055, !1004}
!1056 = !DILocation(line: 524, column: 14, scope: !1047)
!1057 = !DILocation(line: 526, column: 21, scope: !886)
!1058 = !DILocation(line: 526, column: 23, scope: !886)
!1059 = !DILocation(line: 526, column: 26, scope: !886)
!1060 = !DILocation(line: 526, column: 19, scope: !886)
!1061 = !DILocation(line: 527, column: 45, scope: !886)
!1062 = !DILocation(line: 527, column: 43, scope: !886)
!1063 = !DILocation(line: 527, column: 15, scope: !886)
!1064 = !DILocation(line: 527, column: 19, scope: !886)
!1065 = !DILocation(line: 0, scope: !864)
!1066 = !DILocation(line: 531, column: 1, scope: !848)
!1067 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !1068, file: !1068, line: 136, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!55, !1071, !107}
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1073 = distinct !DISubprogram(name: "gsl_sf_exp_err_e", scope: !2, file: !2, line: 535, type: !220, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1083}
!1075 = !DILocalVariable(name: "x", arg: 1, scope: !1073, file: !2, line: 535, type: !105)
!1076 = !DILocalVariable(name: "dx", arg: 2, scope: !1073, file: !2, line: 535, type: !105)
!1077 = !DILocalVariable(name: "result", arg: 3, scope: !1073, file: !2, line: 535, type: !107)
!1078 = !DILocalVariable(name: "adx", scope: !1073, file: !2, line: 537, type: !105)
!1079 = !DILocalVariable(name: "ex", scope: !1080, file: !2, line: 548, type: !105)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 547, column: 8)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 544, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 541, column: 6)
!1083 = !DILocalVariable(name: "edx", scope: !1080, file: !2, line: 549, type: !105)
!1084 = !DILocation(line: 0, scope: !1073)
!1085 = !DILocation(line: 537, column: 22, scope: !1073)
!1086 = !DILocation(line: 541, column: 14, scope: !1082)
!1087 = !DILocation(line: 541, column: 6, scope: !1073)
!1088 = !DILocation(line: 542, column: 5, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 542, column: 5)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 541, column: 33)
!1091 = !DILocation(line: 542, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 542, column: 5)
!1093 = !DILocation(line: 544, column: 19, scope: !1081)
!1094 = !DILocation(line: 544, column: 11, scope: !1082)
!1095 = !DILocation(line: 545, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 545, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 544, column: 38)
!1098 = !DILocation(line: 545, column: 5, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 545, column: 5)
!1100 = !DILocation(line: 548, column: 24, scope: !1080)
!1101 = !DILocation(line: 0, scope: !1080)
!1102 = !DILocation(line: 549, column: 24, scope: !1080)
!1103 = !DILocation(line: 550, column: 18, scope: !1080)
!1104 = !DILocation(line: 551, column: 63, scope: !1080)
!1105 = !DILocation(line: 71, column: 10, scope: !1106, inlinedAt: !1113)
!1106 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !1107, file: !1107, line: 69, type: !1108, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1110)
!1107 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!106, !106, !106}
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "a", arg: 1, scope: !1106, file: !1107, line: 69, type: !106)
!1112 = !DILocalVariable(name: "b", arg: 2, scope: !1106, file: !1107, line: 69, type: !106)
!1113 = distinct !DILocation(line: 551, column: 25, scope: !1080)
!1114 = !DILocation(line: 0, scope: !1106, inlinedAt: !1113)
!1115 = !DILocation(line: 551, column: 23, scope: !1080)
!1116 = !DILocation(line: 551, column: 13, scope: !1080)
!1117 = !DILocation(line: 552, column: 44, scope: !1080)
!1118 = !DILocation(line: 552, column: 42, scope: !1080)
!1119 = !DILocation(line: 552, column: 17, scope: !1080)
!1120 = !DILocation(line: 0, scope: !1082)
!1121 = !DILocation(line: 555, column: 1, scope: !1073)
!1122 = distinct !DISubprogram(name: "gsl_sf_exp_err_e10_e", scope: !2, file: !2, line: 559, type: !300, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1132}
!1124 = !DILocalVariable(name: "x", arg: 1, scope: !1122, file: !2, line: 559, type: !105)
!1125 = !DILocalVariable(name: "dx", arg: 2, scope: !1122, file: !2, line: 559, type: !105)
!1126 = !DILocalVariable(name: "result", arg: 3, scope: !1122, file: !2, line: 559, type: !162)
!1127 = !DILocalVariable(name: "adx", scope: !1122, file: !2, line: 561, type: !105)
!1128 = !DILocalVariable(name: "N", scope: !1129, file: !2, line: 572, type: !176)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 571, column: 8)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 568, column: 11)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 565, column: 6)
!1132 = !DILocalVariable(name: "ex", scope: !1129, file: !2, line: 573, type: !105)
!1133 = !DILocation(line: 0, scope: !1122)
!1134 = !DILocation(line: 561, column: 22, scope: !1122)
!1135 = !DILocation(line: 565, column: 14, scope: !1131)
!1136 = !DILocation(line: 565, column: 6, scope: !1122)
!1137 = !DILocation(line: 566, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 566, column: 5)
!1139 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 565, column: 29)
!1140 = !DILocation(line: 566, column: 5, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 566, column: 5)
!1142 = !DILocation(line: 568, column: 19, scope: !1130)
!1143 = !DILocation(line: 568, column: 11, scope: !1131)
!1144 = !DILocation(line: 569, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 569, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 568, column: 34)
!1147 = !DILocation(line: 569, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 569, column: 5)
!1149 = !DILocation(line: 572, column: 35, scope: !1129)
!1150 = !DILocation(line: 572, column: 28, scope: !1129)
!1151 = !DILocation(line: 572, column: 23, scope: !1129)
!1152 = !DILocation(line: 0, scope: !1129)
!1153 = !DILocation(line: 573, column: 29, scope: !1129)
!1154 = !DILocation(line: 573, column: 30, scope: !1129)
!1155 = !DILocation(line: 573, column: 23, scope: !1129)
!1156 = !DILocation(line: 574, column: 17, scope: !1129)
!1157 = !DILocation(line: 575, column: 50, scope: !1129)
!1158 = !DILocation(line: 575, column: 47, scope: !1129)
!1159 = !DILocation(line: 575, column: 22, scope: !1129)
!1160 = !DILocation(line: 575, column: 13, scope: !1129)
!1161 = !DILocation(line: 575, column: 17, scope: !1129)
!1162 = !DILocation(line: 576, column: 13, scope: !1129)
!1163 = !DILocation(line: 576, column: 17, scope: !1129)
!1164 = !DILocation(line: 0, scope: !1131)
!1165 = !DILocation(line: 579, column: 1, scope: !1122)
!1166 = distinct !DISubprogram(name: "gsl_sf_exp", scope: !2, file: !2, line: 586, type: !1167, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!106, !105}
!1169 = !{!1170, !1171, !1172}
!1170 = !DILocalVariable(name: "x", arg: 1, scope: !1166, file: !2, line: 586, type: !105)
!1171 = !DILocalVariable(name: "result", scope: !1166, file: !2, line: 588, type: !108)
!1172 = !DILocalVariable(name: "status", scope: !1166, file: !2, line: 588, type: !55)
!1173 = !DILocation(line: 0, scope: !1166)
!1174 = !DILocation(line: 0, scope: !102, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 588, column: 3, scope: !1166)
!1176 = !DILocation(line: 109, column: 8, scope: !119, inlinedAt: !1175)
!1177 = !DILocation(line: 109, column: 6, scope: !102, inlinedAt: !1175)
!1178 = !DILocation(line: 110, column: 5, scope: !131, inlinedAt: !1175)
!1179 = !DILocation(line: 112, column: 13, scope: !133, inlinedAt: !1175)
!1180 = !DILocation(line: 112, column: 11, scope: !119, inlinedAt: !1175)
!1181 = !DILocation(line: 113, column: 5, scope: !139, inlinedAt: !1175)
!1182 = !DILocation(line: 116, column: 19, scope: !141, inlinedAt: !1175)
!1183 = !DILocation(line: 588, column: 3, scope: !1166)
!1184 = !DILocation(line: 588, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 588, column: 3)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 588, column: 3)
!1187 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 588, column: 3)
!1188 = !DILocation(line: 589, column: 1, scope: !1166)
!1189 = distinct !DISubprogram(name: "gsl_sf_exp_mult", scope: !2, file: !2, line: 591, type: !1190, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!106, !105, !105}
!1192 = !{!1193, !1194, !1195, !1196}
!1193 = !DILocalVariable(name: "x", arg: 1, scope: !1189, file: !2, line: 591, type: !105)
!1194 = !DILocalVariable(name: "y", arg: 2, scope: !1189, file: !2, line: 591, type: !105)
!1195 = !DILocalVariable(name: "result", scope: !1189, file: !2, line: 593, type: !108)
!1196 = !DILocalVariable(name: "status", scope: !1189, file: !2, line: 593, type: !55)
!1197 = distinct !DIAssignID()
!1198 = !DILocation(line: 0, scope: !1189)
!1199 = !DILocation(line: 593, column: 3, scope: !1189)
!1200 = !DILocation(line: 593, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 593, column: 3)
!1202 = !DILocation(line: 593, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 593, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 593, column: 3)
!1205 = !DILocation(line: 594, column: 1, scope: !1189)
!1206 = distinct !DISubprogram(name: "gsl_sf_expm1", scope: !2, file: !2, line: 596, type: !1167, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DILocalVariable(name: "x", arg: 1, scope: !1206, file: !2, line: 596, type: !105)
!1209 = !DILocalVariable(name: "result", scope: !1206, file: !2, line: 598, type: !108)
!1210 = !DILocalVariable(name: "status", scope: !1206, file: !2, line: 598, type: !55)
!1211 = !DILocation(line: 0, scope: !1206)
!1212 = !DILocation(line: 0, scope: !563, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 598, column: 3, scope: !1206)
!1214 = !DILocation(line: 330, column: 8, scope: !570, inlinedAt: !1213)
!1215 = !DILocation(line: 330, column: 6, scope: !563, inlinedAt: !1213)
!1216 = !DILocation(line: 335, column: 13, scope: !578, inlinedAt: !1213)
!1217 = !DILocation(line: 335, column: 11, scope: !570, inlinedAt: !1213)
!1218 = !DILocation(line: 336, column: 19, scope: !581, inlinedAt: !1213)
!1219 = !DILocation(line: 338, column: 5, scope: !581, inlinedAt: !1213)
!1220 = !DILocation(line: 340, column: 13, scope: !589, inlinedAt: !1213)
!1221 = !DILocation(line: 340, column: 11, scope: !578, inlinedAt: !1213)
!1222 = !DILocation(line: 341, column: 33, scope: !592, inlinedAt: !1213)
!1223 = !DILocation(line: 341, column: 44, scope: !592, inlinedAt: !1213)
!1224 = !DILocation(line: 341, column: 60, scope: !592, inlinedAt: !1213)
!1225 = !DILocation(line: 341, column: 73, scope: !592, inlinedAt: !1213)
!1226 = !DILocation(line: 341, column: 62, scope: !592, inlinedAt: !1213)
!1227 = !DILocation(line: 341, column: 48, scope: !592, inlinedAt: !1213)
!1228 = !DILocation(line: 341, column: 35, scope: !592, inlinedAt: !1213)
!1229 = !DILocation(line: 341, column: 21, scope: !592, inlinedAt: !1213)
!1230 = !DILocation(line: 343, column: 5, scope: !592, inlinedAt: !1213)
!1231 = !DILocation(line: 345, column: 13, scope: !607, inlinedAt: !1213)
!1232 = !DILocation(line: 345, column: 11, scope: !589, inlinedAt: !1213)
!1233 = !DILocation(line: 346, column: 19, scope: !610, inlinedAt: !1213)
!1234 = !DILocation(line: 348, column: 5, scope: !610, inlinedAt: !1213)
!1235 = !DILocation(line: 351, column: 5, scope: !621, inlinedAt: !1213)
!1236 = !DILocation(line: 598, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 598, column: 3)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 598, column: 3)
!1239 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 598, column: 3)
!1240 = !DILocation(line: 599, column: 1, scope: !1206)
!1241 = distinct !DISubprogram(name: "gsl_sf_exprel", scope: !2, file: !2, line: 601, type: !1167, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DILocalVariable(name: "x", arg: 1, scope: !1241, file: !2, line: 601, type: !105)
!1244 = !DILocalVariable(name: "result", scope: !1241, file: !2, line: 603, type: !108)
!1245 = !DILocalVariable(name: "status", scope: !1241, file: !2, line: 603, type: !55)
!1246 = distinct !DIAssignID()
!1247 = !DILocation(line: 0, scope: !1241)
!1248 = !DILocation(line: 603, column: 3, scope: !1241)
!1249 = !DILocation(line: 603, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 603, column: 3)
!1251 = !DILocation(line: 603, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 603, column: 3)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 603, column: 3)
!1254 = !DILocation(line: 604, column: 1, scope: !1241)
!1255 = distinct !DISubprogram(name: "gsl_sf_exprel_2", scope: !2, file: !2, line: 606, type: !1167, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DILocalVariable(name: "x", arg: 1, scope: !1255, file: !2, line: 606, type: !105)
!1258 = !DILocalVariable(name: "result", scope: !1255, file: !2, line: 608, type: !108)
!1259 = !DILocalVariable(name: "status", scope: !1255, file: !2, line: 608, type: !55)
!1260 = distinct !DIAssignID()
!1261 = !DILocation(line: 0, scope: !1255)
!1262 = !DILocation(line: 608, column: 3, scope: !1255)
!1263 = !DILocation(line: 608, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 608, column: 3)
!1265 = !DILocation(line: 608, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 608, column: 3)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 608, column: 3)
!1268 = !DILocation(line: 609, column: 1, scope: !1255)
!1269 = distinct !DISubprogram(name: "gsl_sf_exprel_n", scope: !2, file: !2, line: 611, type: !1270, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!106, !176, !105}
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DILocalVariable(name: "n", arg: 1, scope: !1269, file: !2, line: 611, type: !176)
!1274 = !DILocalVariable(name: "x", arg: 2, scope: !1269, file: !2, line: 611, type: !105)
!1275 = !DILocalVariable(name: "result", scope: !1269, file: !2, line: 613, type: !108)
!1276 = !DILocalVariable(name: "status", scope: !1269, file: !2, line: 613, type: !55)
!1277 = distinct !DIAssignID()
!1278 = !DILocation(line: 0, scope: !1269)
!1279 = !DILocation(line: 613, column: 3, scope: !1269)
!1280 = !DILocation(line: 613, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 613, column: 3)
!1282 = !DILocation(line: 613, column: 3, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 613, column: 3)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 613, column: 3)
!1285 = !DILocation(line: 614, column: 1, scope: !1269)
