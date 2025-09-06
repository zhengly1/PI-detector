; ModuleID = 'legendre_Qn.ll'
source_filename = "legendre_Qn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"legendre_Qn.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q0_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [33 x i8] c"gsl_sf_legendre_Q1_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [36 x i8] c"gsl_sf_legendre_Ql_e(l, x, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Q0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !84 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !97, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !98, metadata !DIExpression()), !dbg !121
  %3 = fcmp ole double %0, -1.000000e+00, !dbg !122
  %4 = fcmp oeq double %0, 1.000000e+00
  %5 = or i1 %3, %4, !dbg !123
  br i1 %5, label %6, label %8, !dbg !123

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !124, !tbaa !127
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !124
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !124, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 1) #5, !dbg !133
  br label %56, !dbg !133

8:                                                ; preds = %2
  %9 = fmul double %0, %0, !dbg !135
  %10 = fcmp olt double %9, 0x3F6428A2F98D728D, !dbg !136
  br i1 %10, label %11, label %21, !dbg !137

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !99, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !103, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !104, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !105, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !106, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double %9, metadata !107, metadata !DIExpression()), !dbg !138
  %12 = fmul double %9, 0x3FB745D1745D1746, !dbg !139
  %handler_result = call double @fAddHandlerDouble(double %12, double 0x3FBC71C71C71C71C), !dbg !140
  %13 = fmul double %9, %handler_result, !dbg !140
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 0x3FC2492492492492), !dbg !141
  %14 = fmul double %9, %handler_result1, !dbg !141
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 2.000000e-01), !dbg !142
  %15 = fmul double %9, %handler_result2, !dbg !142
  %handler_result3 = call double @fAddHandlerDouble(double %15, double 0x3FD5555555555555), !dbg !143
  %16 = fmul double %9, %handler_result3, !dbg !143
  %handler_result4 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !144
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !108, metadata !DIExpression()), !dbg !138
  %17 = fmul double %handler_result4, %0, !dbg !144
  store double %17, ptr %1, align 8, !dbg !145, !tbaa !127
  %18 = tail call double @llvm.fabs.f64(double %0), !dbg !146
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !147
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !148
  store double %19, ptr %20, align 8, !dbg !149, !tbaa !132
  br label %56

21:                                               ; preds = %8
  %22 = fcmp olt double %0, 1.000000e+00, !dbg !150
  br i1 %22, label %23, label %29, !dbg !151

23:                                               ; preds = %21
  %handler_result5 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !152
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !154
  %24 = fdiv double %handler_result5, %handler_result6, !dbg !154
  %handler_result16 = call double @callHandler(i32 12, double %24, double %24), !dbg !155
  %25 = fmul double %handler_result16, 5.000000e-01, !dbg !155
  store double %25, ptr %1, align 8, !dbg !156, !tbaa !127
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !157
  %27 = fmul double %26, 0x3CC0000000000000, !dbg !158
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !159
  store double %27, ptr %28, align 8, !dbg !160, !tbaa !132
  br label %56, !dbg !161

29:                                               ; preds = %21
  %30 = fcmp olt double %0, 1.000000e+01, !dbg !162
  br i1 %30, label %31, label %37, !dbg !163

31:                                               ; preds = %29
  %handler_result7 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !164
  %handler_result8 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !166
  %32 = fdiv double %handler_result7, %handler_result8, !dbg !166
  %handler_result17 = call double @callHandler(i32 12, double %32, double %32), !dbg !167
  %33 = fmul double %handler_result17, 5.000000e-01, !dbg !167
  store double %33, ptr %1, align 8, !dbg !168, !tbaa !127
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !169
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !170
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !171
  store double %35, ptr %36, align 8, !dbg !172, !tbaa !132
  br label %56, !dbg !173

37:                                               ; preds = %29
  %38 = fmul double %0, 0x10000000000000, !dbg !174
  %39 = fcmp olt double %38, 2.000000e+00, !dbg !175
  br i1 %39, label %40, label %54, !dbg !176

40:                                               ; preds = %37
  %41 = fdiv double 1.000000e+00, %9, !dbg !177
  tail call void @llvm.dbg.value(metadata double %41, metadata !109, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !114, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !115, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !116, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !117, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !118, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FB3B13B13B13B14, metadata !119, metadata !DIExpression()), !dbg !178
  tail call void @llvm.dbg.value(metadata double 0x3FB1111111111111, metadata !120, metadata !DIExpression()), !dbg !178
  %42 = fdiv double 1.000000e+00, %0, !dbg !179
  %43 = fmul double %41, 0x3FB1111111111111, !dbg !180
  %handler_result9 = call double @fAddHandlerDouble(double %43, double 0x3FB3B13B13B13B14), !dbg !181
  %44 = fmul double %41, %handler_result9, !dbg !181
  %handler_result10 = call double @fAddHandlerDouble(double %44, double 0x3FB745D1745D1746), !dbg !182
  %45 = fmul double %41, %handler_result10, !dbg !182
  %handler_result11 = call double @fAddHandlerDouble(double %45, double 0x3FBC71C71C71C71C), !dbg !183
  %46 = fmul double %41, %handler_result11, !dbg !183
  %handler_result12 = call double @fAddHandlerDouble(double %46, double 0x3FC2492492492492), !dbg !184
  %47 = fmul double %41, %handler_result12, !dbg !184
  %handler_result13 = call double @fAddHandlerDouble(double %47, double 2.000000e-01), !dbg !185
  %48 = fmul double %41, %handler_result13, !dbg !185
  %handler_result14 = call double @fAddHandlerDouble(double %48, double 0x3FD5555555555555), !dbg !186
  %49 = fmul double %41, %handler_result14, !dbg !186
  %handler_result15 = call double @fAddHandlerDouble(double %49, double 1.000000e+00), !dbg !187
  %50 = fmul double %42, %handler_result15, !dbg !187
  store double %50, ptr %1, align 8, !dbg !188, !tbaa !127
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !189
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !190
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !191
  store double %52, ptr %53, align 8, !dbg !192, !tbaa !132
  br label %56

54:                                               ; preds = %37
  store double 0.000000e+00, ptr %1, align 8, !dbg !193, !tbaa !127
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !193
  store double 0x10000000000000, ptr %55, align 8, !dbg !193, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 15) #5, !dbg !196
  br label %56, !dbg !196

56:                                               ; preds = %54, %40, %31, %23, %11, %6
  %57 = phi i32 [ 1, %6 ], [ 0, %11 ], [ 0, %23 ], [ 0, %31 ], [ 0, %40 ], [ 15, %54 ], !dbg !198
  ret i32 %57, !dbg !199
}

declare !dbg !200 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !205 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Q1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !209 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !211, metadata !DIExpression()), !dbg !237
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !212, metadata !DIExpression()), !dbg !237
  %3 = fcmp ole double %0, -1.000000e+00, !dbg !238
  %4 = fcmp oeq double %0, 1.000000e+00
  %5 = or i1 %3, %4, !dbg !239
  br i1 %5, label %6, label %8, !dbg !239

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !240, !tbaa !127
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !240
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !240, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef 1) #5, !dbg !243
  br label %60, !dbg !243

8:                                                ; preds = %2
  %9 = fmul double %0, %0, !dbg !245
  %10 = fcmp olt double %9, 0x3F6428A2F98D728D, !dbg !246
  br i1 %10, label %11, label %21, !dbg !247

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !213, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !217, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !218, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !219, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !220, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %9, metadata !221, metadata !DIExpression()), !dbg !248
  %12 = fmul double %9, 0x3FB745D1745D1746, !dbg !249
  %handler_result = call double @fAddHandlerDouble(double %12, double 0x3FBC71C71C71C71C), !dbg !250
  %13 = fmul double %9, %handler_result, !dbg !250
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 0x3FC2492492492492), !dbg !251
  %14 = fmul double %9, %handler_result1, !dbg !251
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 2.000000e-01), !dbg !252
  %15 = fmul double %9, %handler_result2, !dbg !252
  %handler_result3 = call double @fAddHandlerDouble(double %15, double 0x3FD5555555555555), !dbg !253
  %16 = fmul double %9, %handler_result3, !dbg !253
  %handler_result4 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !222, metadata !DIExpression()), !dbg !248
  %17 = fmul double %9, %handler_result4, !dbg !254
  %handler_result5 = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !255
  store double %handler_result5, ptr %1, align 8, !dbg !255, !tbaa !127
  %18 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !256
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !257
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !258
  store double %19, ptr %20, align 8, !dbg !259, !tbaa !132
  br label %60

21:                                               ; preds = %8
  %22 = fcmp olt double %0, 1.000000e+00, !dbg !260
  br i1 %22, label %23, label %30, !dbg !261

23:                                               ; preds = %21
  %24 = fmul double %0, 5.000000e-01, !dbg !262
  %handler_result6 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !264
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !265
  %25 = fdiv double %handler_result6, %handler_result7, !dbg !265
  %handler_result20 = call double @callHandler(i32 12, double %25, double %25), !dbg !266
  %26 = fmul double %24, %handler_result20, !dbg !266
  %handler_result8 = call double @fAddHandlerDouble(double %26, double -1.000000e+00), !dbg !267
  store double %handler_result8, ptr %1, align 8, !dbg !267, !tbaa !127
  %27 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !268
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !269
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !270
  store double %28, ptr %29, align 8, !dbg !271, !tbaa !132
  br label %60, !dbg !272

30:                                               ; preds = %21
  %31 = fcmp olt double %0, 6.000000e+00, !dbg !273
  br i1 %31, label %32, label %39, !dbg !274

32:                                               ; preds = %30
  %33 = fmul double %0, 5.000000e-01, !dbg !275
  %handler_result9 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !277
  %handler_result10 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !278
  %34 = fdiv double %handler_result9, %handler_result10, !dbg !278
  %handler_result21 = call double @callHandler(i32 12, double %34, double %34), !dbg !279
  %35 = fmul double %33, %handler_result21, !dbg !279
  %handler_result11 = call double @fAddHandlerDouble(double %35, double -1.000000e+00), !dbg !280
  store double %handler_result11, ptr %1, align 8, !dbg !280, !tbaa !127
  %36 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !281
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !282
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !283
  store double %37, ptr %38, align 8, !dbg !284, !tbaa !132
  br label %60, !dbg !285

39:                                               ; preds = %30
  %40 = fmul double %0, 0x2000000000000000, !dbg !286
  %41 = fcmp olt double %40, 0x3FE24A5B5BE85B8F, !dbg !287
  br i1 %41, label %42, label %58, !dbg !288

42:                                               ; preds = %39
  %43 = fdiv double 1.000000e+00, %9, !dbg !289
  tail call void @llvm.dbg.value(metadata double %43, metadata !223, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 6.000000e-01, metadata !228, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FDB6DB6DB6DB6DB, metadata !229, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !230, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FD1745D1745D174, metadata !231, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FCD89D89D89D89E, metadata !232, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !233, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FC6969696969697, metadata !234, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double 0x3FC435E50D79435E, metadata !235, metadata !DIExpression()), !dbg !290
  %44 = fmul double %43, 0x3FC435E50D79435E, !dbg !291
  %handler_result12 = call double @fAddHandlerDouble(double %44, double 0x3FC6969696969697), !dbg !292
  %45 = fmul double %43, %handler_result12, !dbg !292
  %handler_result13 = call double @fAddHandlerDouble(double %45, double 2.000000e-01), !dbg !293
  %46 = fmul double %43, %handler_result13, !dbg !293
  %handler_result14 = call double @fAddHandlerDouble(double %46, double 0x3FCD89D89D89D89E), !dbg !294
  %47 = fmul double %43, %handler_result14, !dbg !294
  %handler_result15 = call double @fAddHandlerDouble(double %47, double 0x3FD1745D1745D174), !dbg !295
  %48 = fmul double %43, %handler_result15, !dbg !295
  %handler_result16 = call double @fAddHandlerDouble(double %48, double 0x3FD5555555555555), !dbg !296
  %49 = fmul double %43, %handler_result16, !dbg !296
  %handler_result17 = call double @fAddHandlerDouble(double %49, double 0x3FDB6DB6DB6DB6DB), !dbg !297
  %50 = fmul double %43, %handler_result17, !dbg !297
  %handler_result18 = call double @fAddHandlerDouble(double %50, double 6.000000e-01), !dbg !298
  %51 = fmul double %43, %handler_result18, !dbg !298
  %handler_result19 = call double @fAddHandlerDouble(double %51, double 1.000000e+00), !dbg !299
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !236, metadata !DIExpression()), !dbg !290
  %52 = fmul double %0, 3.000000e+00, !dbg !299
  %53 = fmul double %52, %0, !dbg !300
  %54 = fdiv double %handler_result19, %53, !dbg !301
  store double %54, ptr %1, align 8, !dbg !302, !tbaa !127
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !303
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !304
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !305
  store double %56, ptr %57, align 8, !dbg !306, !tbaa !132
  br label %60

58:                                               ; preds = %39
  store double 0.000000e+00, ptr %1, align 8, !dbg !307, !tbaa !127
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !307
  store double 0x10000000000000, ptr %59, align 8, !dbg !307, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef 15) #5, !dbg !310
  br label %60, !dbg !310

60:                                               ; preds = %58, %42, %32, %23, %11, %6
  %61 = phi i32 [ 1, %6 ], [ 0, %11 ], [ 0, %23 ], [ 0, %32 ], [ 0, %42 ], [ 15, %58 ], !dbg !312
  ret i32 %61, !dbg !313
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_Ql_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !314 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !349
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !350
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !351
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !352
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !322, metadata !DIExpression(), metadata !353, metadata ptr %8, metadata !DIExpression()), !dbg !354
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !329, metadata !DIExpression(), metadata !355, metadata ptr %9, metadata !DIExpression()), !dbg !354
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !356
  call void @llvm.dbg.assign(metadata i1 undef, metadata !344, metadata !DIExpression(), metadata !356, metadata ptr %10, metadata !DIExpression()), !dbg !357
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !358
  call void @llvm.dbg.assign(metadata i1 undef, metadata !347, metadata !DIExpression(), metadata !358, metadata ptr %11, metadata !DIExpression()), !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !319, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata double %1, metadata !320, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !360
  %12 = fcmp ole double %1, -1.000000e+00, !dbg !361
  %13 = fcmp oeq double %1, 1.000000e+00
  %14 = or i1 %12, %13, !dbg !362
  %15 = icmp slt i32 %0, 0
  %16 = or i1 %15, %14, !dbg !362
  br i1 %16, label %17, label %19, !dbg !362

17:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !363, !tbaa !127
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !363
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !363, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 1) #5, !dbg !366
  br label %271, !dbg !366

19:                                               ; preds = %3
  switch i32 %0, label %24 [
    i32 0, label %20
    i32 1, label %22
  ], !dbg !368

20:                                               ; preds = %19
  %21 = tail call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef %2), !dbg !369, !range !371
  br label %271, !dbg !372

22:                                               ; preds = %19
  %23 = tail call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef %2), !dbg !373, !range !371
  br label %271, !dbg !375

24:                                               ; preds = %19
  %25 = icmp ugt i32 %0, 100000, !dbg !376
  br i1 %25, label %26, label %122, !dbg !377

26:                                               ; preds = %24
  %27 = sitofp i32 %0 to double, !dbg !378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !349, metadata ptr %4, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !392, metadata !DIExpression(), metadata !350, metadata ptr %5, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !406, metadata !DIExpression(), metadata !351, metadata ptr %6, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !352, metadata ptr %7, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double %27, metadata !387, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata double %1, metadata !388, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !421
  %28 = fcmp olt double %1, 1.000000e+00, !dbg !422
  %handler_result = call double @fAddHandlerDouble(double %27, double 5.000000e-01), !dbg !423
  br i1 %28, label %29, label %78, !dbg !423

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %handler_result, metadata !390, metadata !DIExpression()), !dbg !418
  %handler_result36 = call double @callHandler(i32 5, double %1, double %1), !dbg !424
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !391, metadata !DIExpression()), !dbg !418
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !424
  %30 = fcmp olt double %handler_result36, 0x3F20000000000000, !dbg !425
  br i1 %30, label %31, label %36, !dbg !426

31:                                               ; preds = %29
  %32 = fmul double %handler_result36, %handler_result36, !dbg !427
  %33 = fdiv double %32, 1.500000e+01, !dbg !429
  %handler_result1 = call double @fAddHandlerDouble(double %33, double 1.000000e+00), !dbg !430
  %34 = fdiv double %handler_result1, 2.400000e+01, !dbg !430
  call void @llvm.dbg.value(metadata double %34, metadata !397, metadata !DIExpression()), !dbg !418
  %35 = fdiv double %32, 1.200000e+01, !dbg !431
  %handler_result2 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !432
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !396, metadata !DIExpression()), !dbg !418
  br label %46, !dbg !432

36:                                               ; preds = %29
  %37 = fmul double %1, %1, !dbg !433
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %37), !dbg !434
  %38 = tail call double @sqrt(double noundef %handler_result3) #5, !dbg !434
  call void @llvm.dbg.value(metadata double %38, metadata !399, metadata !DIExpression()), !dbg !435
  %39 = fdiv double %1, %38, !dbg !436
  call void @llvm.dbg.value(metadata double %39, metadata !402, metadata !DIExpression()), !dbg !435
  %40 = fmul double %handler_result36, %39, !dbg !437
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %40), !dbg !438
  %41 = fmul double %handler_result4, 1.250000e-01, !dbg !438
  %42 = fmul double %handler_result36, %handler_result36, !dbg !439
  %43 = fdiv double %41, %42, !dbg !440
  call void @llvm.dbg.value(metadata double %43, metadata !397, metadata !DIExpression()), !dbg !418
  %44 = fdiv double %handler_result36, %38, !dbg !441
  %45 = tail call double @sqrt(double noundef %44) #5, !dbg !442
  call void @llvm.dbg.value(metadata double %45, metadata !396, metadata !DIExpression()), !dbg !418
  br label %46

46:                                               ; preds = %36, %31
  %47 = phi double [ %34, %31 ], [ %43, %36 ], !dbg !443
  %48 = phi double [ %handler_result2, %31 ], [ %45, %36 ], !dbg !443
  call void @llvm.dbg.value(metadata double %48, metadata !396, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata double %47, metadata !397, metadata !DIExpression()), !dbg !418
  %49 = fmul double %handler_result, %handler_result36, !dbg !444
  %50 = call i32 @gsl_sf_bessel_Y0_e(double noundef %49, ptr noundef nonnull %4) #5, !dbg !445
  call void @llvm.dbg.value(metadata i32 %50, metadata !393, metadata !DIExpression()), !dbg !418
  %51 = call i32 @gsl_sf_bessel_Y1_e(double noundef %49, ptr noundef nonnull %5) #5, !dbg !446
  call void @llvm.dbg.value(metadata i32 %51, metadata !394, metadata !DIExpression()), !dbg !418
  %52 = load double, ptr %4, align 8, !dbg !447, !tbaa !127
  %53 = fdiv double %handler_result36, %handler_result, !dbg !448
  %54 = load double, ptr %5, align 8, !dbg !449, !tbaa !127
  %55 = fmul double %53, %54, !dbg !450
  %56 = fmul double %47, %55, !dbg !451
  %handler_result5 = call double @fAddHandlerDouble(double %52, double %56), !dbg !452
  %57 = fmul double %handler_result5, 0xBFF921FB54442D18, !dbg !452
  call void @llvm.dbg.value(metadata double %57, metadata !398, metadata !DIExpression()), !dbg !418
  %58 = call i32 @gsl_sf_multiply_e(double noundef %48, double noundef %57, ptr noundef %2) #5, !dbg !453
  call void @llvm.dbg.value(metadata i32 %58, metadata !395, metadata !DIExpression()), !dbg !418
  %59 = call double @llvm.fabs.f64(double %48), !dbg !454
  %60 = fmul double %59, 0x3FF921FB54442D18, !dbg !455
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !456
  %62 = load double, ptr %61, align 8, !dbg !456, !tbaa !132
  %63 = fmul double %53, %47, !dbg !457
  %64 = call double @llvm.fabs.f64(double %63), !dbg !458
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !459
  %66 = load double, ptr %65, align 8, !dbg !459, !tbaa !132
  %67 = fmul double %64, %66, !dbg !460
  %handler_result6 = call double @fAddHandlerDouble(double %62, double %67), !dbg !461
  %68 = fmul double %60, %handler_result6, !dbg !461
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !462
  %70 = load double, ptr %69, align 8, !dbg !463, !tbaa !132
  %handler_result7 = call double @fAddHandlerDouble(double %70, double %68), !dbg !464
  %71 = load double, ptr %2, align 8, !dbg !464, !tbaa !127
  %72 = call double @llvm.fabs.f64(double %71), !dbg !465
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !466
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %73), !dbg !467
  store double %handler_result8, ptr %69, align 8, !dbg !467, !tbaa !132
  %74 = icmp eq i32 %58, 0, !dbg !468
  %75 = icmp eq i32 %50, 0, !dbg !468
  %76 = select i1 %75, i32 %51, i32 %50, !dbg !468
  %77 = select i1 %74, i32 %76, i32 %58, !dbg !468
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !469
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !469
  br label %271

78:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %handler_result, metadata !403, metadata !DIExpression()), !dbg !420
  %79 = tail call double @acosh(double noundef %1) #5, !dbg !470
  call void @llvm.dbg.value(metadata double %79, metadata !405, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !471
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !471
  %80 = fcmp olt double %79, 0x3F20000000000000, !dbg !472
  br i1 %80, label %81, label %86, !dbg !473

81:                                               ; preds = %78
  %82 = fmul double %79, %79, !dbg !474
  %83 = fdiv double %82, 1.500000e+01, !dbg !476
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %83), !dbg !477
  %84 = fdiv double %handler_result9, 2.400000e+01, !dbg !477
  call void @llvm.dbg.value(metadata double %84, metadata !412, metadata !DIExpression()), !dbg !420
  %85 = fdiv double %82, 1.200000e+01, !dbg !478
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %85), !dbg !479
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !411, metadata !DIExpression()), !dbg !420
  br label %96, !dbg !479

86:                                               ; preds = %78
  %87 = fmul double %1, %1, !dbg !480
  %handler_result11 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !481
  %88 = tail call double @sqrt(double noundef %handler_result11) #5, !dbg !481
  call void @llvm.dbg.value(metadata double %88, metadata !414, metadata !DIExpression()), !dbg !482
  %89 = fdiv double %1, %88, !dbg !483
  call void @llvm.dbg.value(metadata double %89, metadata !417, metadata !DIExpression()), !dbg !482
  %90 = fmul double %79, %89, !dbg !484
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %90), !dbg !485
  %91 = fmul double %handler_result12, -1.250000e-01, !dbg !485
  %92 = fmul double %79, %79, !dbg !486
  %93 = fdiv double %91, %92, !dbg !487
  call void @llvm.dbg.value(metadata double %93, metadata !412, metadata !DIExpression()), !dbg !420
  %94 = fdiv double %79, %88, !dbg !488
  %95 = tail call double @sqrt(double noundef %94) #5, !dbg !489
  call void @llvm.dbg.value(metadata double %95, metadata !411, metadata !DIExpression()), !dbg !420
  br label %96

96:                                               ; preds = %86, %81
  %97 = phi double [ %handler_result10, %81 ], [ %95, %86 ], !dbg !490
  %98 = phi double [ %84, %81 ], [ %93, %86 ], !dbg !490
  call void @llvm.dbg.value(metadata double %98, metadata !412, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata double %97, metadata !411, metadata !DIExpression()), !dbg !420
  %99 = fmul double %handler_result, %79, !dbg !491
  %100 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %99, ptr noundef nonnull %6) #5, !dbg !492
  call void @llvm.dbg.value(metadata i32 %100, metadata !408, metadata !DIExpression()), !dbg !420
  %101 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %99, ptr noundef nonnull %7) #5, !dbg !493
  call void @llvm.dbg.value(metadata i32 %101, metadata !409, metadata !DIExpression()), !dbg !420
  %102 = load double, ptr %6, align 8, !dbg !494, !tbaa !127
  %103 = fdiv double %79, %handler_result, !dbg !495
  %104 = load double, ptr %7, align 8, !dbg !496, !tbaa !127
  %105 = fmul double %103, %104, !dbg !497
  %106 = fmul double %98, %105, !dbg !498
  %handler_result13 = call double @fSubHandlerDouble(double %102, double %106), !dbg !499
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !413, metadata !DIExpression()), !dbg !420
  %107 = fneg double %handler_result, !dbg !499
  %108 = fmul double %79, %107, !dbg !500
  %109 = fmul double %97, %handler_result13, !dbg !501
  %110 = call i32 @gsl_sf_exp_mult_e(double noundef %108, double noundef %109, ptr noundef %2) #5, !dbg !502
  call void @llvm.dbg.value(metadata i32 %110, metadata !410, metadata !DIExpression()), !dbg !420
  %111 = load double, ptr %2, align 8, !dbg !503, !tbaa !127
  %112 = call double @llvm.fabs.f64(double %111), !dbg !504
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !505
  %114 = call double @llvm.fabs.f64(double %99), !dbg !506
  %115 = fmul double %114, %113, !dbg !507
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !508
  %117 = fmul double %112, 0x3CC0000000000000, !dbg !509
  %handler_result14 = call double @fAddHandlerDouble(double %117, double %115), !dbg !510
  store double %handler_result14, ptr %116, align 8, !dbg !510, !tbaa !132
  %118 = icmp eq i32 %110, 0, !dbg !511
  %119 = icmp eq i32 %100, 0, !dbg !511
  %120 = select i1 %119, i32 %101, i32 %100, !dbg !511
  %121 = select i1 %118, i32 %120, i32 %110, !dbg !511
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !512
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !512
  br label %271

122:                                              ; preds = %24
  %123 = fcmp olt double %1, 1.000000e+00, !dbg !513
  br i1 %123, label %124, label %178, !dbg !514

124:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5, !dbg !515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5, !dbg !515
  %125 = call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef nonnull %8), !dbg !516, !range !371
  tail call void @llvm.dbg.value(metadata i32 %125, metadata !330, metadata !DIExpression()), !dbg !354
  %126 = call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef nonnull %9), !dbg !517, !range !371
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !331, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double poison, metadata !332, metadata !DIExpression()), !dbg !354
  %127 = load double, ptr %9, align 8, !dbg !518, !tbaa !127
  tail call void @llvm.dbg.value(metadata double %127, metadata !333, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 1, metadata !335, metadata !DIExpression()), !dbg !354
  %128 = load double, ptr %8, align 8, !dbg !519, !tbaa !127
  tail call void @llvm.dbg.value(metadata double %128, metadata !332, metadata !DIExpression()), !dbg !354
  %129 = add nsw i32 %0, -1, !dbg !520
  %130 = and i32 %129, 1, !dbg !520
  %131 = icmp eq i32 %0, 2, !dbg !520
  br i1 %131, label %157, label %132, !dbg !520

132:                                              ; preds = %124
  %133 = and i32 %129, -2, !dbg !520
  br label %134, !dbg !520

134:                                              ; preds = %134, %132
  %135 = phi double [ %128, %132 ], [ %144, %134 ]
  %136 = phi i32 [ 1, %132 ], [ %152, %134 ]
  %137 = phi double [ %127, %132 ], [ %151, %134 ]
  %138 = phi i32 [ 0, %132 ], [ %153, %134 ]
  tail call void @llvm.dbg.value(metadata double %135, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !335, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %137, metadata !333, metadata !DIExpression()), !dbg !354
  %139 = sitofp i32 %136 to double, !dbg !522
  %140 = fmul double %139, 2.000000e+00, !dbg !525
  %handler_result15 = call double @fAddHandlerDouble(double %140, double 1.000000e+00), !dbg !526
  %141 = fmul double %handler_result15, %1, !dbg !526
  %142 = fmul double %137, %141, !dbg !527
  %143 = fmul double %135, %139, !dbg !528
  %handler_result16 = call double @fSubHandlerDouble(double %142, double %143), !dbg !529
  %handler_result17 = call double @fAddHandlerDouble(double %139, double 1.000000e+00), !dbg !530
  %144 = fdiv double %handler_result16, %handler_result17, !dbg !530
  tail call void @llvm.dbg.value(metadata double %144, metadata !334, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %137, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %144, metadata !333, metadata !DIExpression()), !dbg !354
  %145 = add nuw nsw i32 %136, 1, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !335, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %137, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !335, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %144, metadata !333, metadata !DIExpression()), !dbg !354
  %146 = sitofp i32 %145 to double, !dbg !522
  %147 = fmul double %146, 2.000000e+00, !dbg !525
  %handler_result18 = call double @fAddHandlerDouble(double %147, double 1.000000e+00), !dbg !526
  %148 = fmul double %handler_result18, %1, !dbg !526
  %149 = fmul double %144, %148, !dbg !527
  %150 = fmul double %137, %146, !dbg !528
  %handler_result19 = call double @fSubHandlerDouble(double %149, double %150), !dbg !529
  %handler_result20 = call double @fAddHandlerDouble(double %146, double 1.000000e+00), !dbg !530
  %151 = fdiv double %handler_result19, %handler_result20, !dbg !530
  tail call void @llvm.dbg.value(metadata double %151, metadata !334, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %144, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %151, metadata !333, metadata !DIExpression()), !dbg !354
  %152 = add nuw nsw i32 %136, 2, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !335, metadata !DIExpression()), !dbg !354
  %153 = add i32 %138, 2, !dbg !520
  %154 = icmp eq i32 %153, %133, !dbg !520
  br i1 %154, label %155, label %134, !dbg !520, !llvm.loop !532

155:                                              ; preds = %134
  %156 = sitofp i32 %152 to double, !dbg !522
  br label %157, !dbg !520

157:                                              ; preds = %155, %124
  %158 = phi double [ undef, %124 ], [ %151, %155 ]
  %159 = phi double [ %128, %124 ], [ %144, %155 ]
  %160 = phi double [ 1.000000e+00, %124 ], [ %156, %155 ]
  %161 = phi double [ %127, %124 ], [ %151, %155 ]
  %162 = icmp eq i32 %130, 0, !dbg !520
  br i1 %162, label %169, label %163, !dbg !520

163:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata double %159, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !335, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %161, metadata !333, metadata !DIExpression()), !dbg !354
  %164 = fmul double %160, 2.000000e+00, !dbg !525
  %handler_result21 = call double @fAddHandlerDouble(double %164, double 1.000000e+00), !dbg !526
  %165 = fmul double %handler_result21, %1, !dbg !526
  %166 = fmul double %161, %165, !dbg !527
  %167 = fmul double %159, %160, !dbg !528
  %handler_result22 = call double @fSubHandlerDouble(double %166, double %167), !dbg !529
  %handler_result23 = call double @fAddHandlerDouble(double %160, double 1.000000e+00), !dbg !530
  %168 = fdiv double %handler_result22, %handler_result23, !dbg !530
  tail call void @llvm.dbg.value(metadata double %168, metadata !334, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %161, metadata !332, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata double %168, metadata !333, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !335, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !354
  br label %169, !dbg !535

169:                                              ; preds = %163, %157
  %170 = phi double [ %158, %157 ], [ %168, %163 ], !dbg !530
  store double %170, ptr %2, align 8, !dbg !535, !tbaa !127
  %171 = sitofp i32 %0 to double, !dbg !536
  %172 = fmul double %171, 0x3CB0000000000000, !dbg !537
  %173 = tail call double @llvm.fabs.f64(double %170), !dbg !538
  %174 = fmul double %172, %173, !dbg !539
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !540
  store double %174, ptr %175, align 8, !dbg !541, !tbaa !132
  %176 = icmp eq i32 %125, 0, !dbg !542
  %177 = select i1 %176, i32 %126, i32 %125, !dbg !542
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5, !dbg !543
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5, !dbg !543
  br label %271

178:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i32 %0, metadata !544, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !550, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !551, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %1, metadata !552, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr undef, metadata !553, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !554, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i32 5000, metadata !555, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i32 1, metadata !556, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !557, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !558, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !559, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !560, metadata !DIExpression()), !dbg !572
  %179 = sitofp i32 %0 to double, !dbg !574
  %handler_result24 = call double @fAddHandlerDouble(double %179, double 1.000000e+00), !dbg !575
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !561, metadata !DIExpression()), !dbg !572
  %180 = fmul double %handler_result24, 2.000000e+00, !dbg !575
  %handler_result25 = call double @fAddHandlerDouble(double %180, double 1.000000e+00), !dbg !576
  %181 = fmul double %handler_result25, %1, !dbg !576
  call void @llvm.dbg.value(metadata double %181, metadata !562, metadata !DIExpression()), !dbg !572
  %182 = fmul double %181, 0.000000e+00, !dbg !577
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result24, double %182), !dbg !578
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !563, metadata !DIExpression()), !dbg !572
  %183 = fmul double %handler_result24, 0.000000e+00, !dbg !578
  %handler_result27 = call double @fAddHandlerDouble(double %183, double %181), !dbg !579
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !564, metadata !DIExpression()), !dbg !572
  %184 = fdiv double %handler_result26, %handler_result27, !dbg !579
  call void @llvm.dbg.value(metadata double %184, metadata !567, metadata !DIExpression()), !dbg !572
  br label %185, !dbg !580

185:                                              ; preds = %214, %178
  %186 = phi double [ 1.000000e+00, %178 ], [ %215, %214 ], !dbg !572
  %187 = phi double [ %handler_result26, %178 ], [ %216, %214 ], !dbg !572
  %188 = phi double [ %handler_result27, %178 ], [ %217, %214 ], !dbg !572
  %189 = phi double [ 0.000000e+00, %178 ], [ %218, %214 ], !dbg !572
  %190 = phi double [ %184, %178 ], [ %219, %214 ], !dbg !572
  %191 = phi i32 [ 1, %178 ], [ %194, %214 ], !dbg !572
  call void @llvm.dbg.value(metadata i32 %191, metadata !556, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %190, metadata !567, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %189, metadata !559, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %188, metadata !564, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %187, metadata !563, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %186, metadata !560, metadata !DIExpression()), !dbg !572
  %192 = icmp eq i32 %191, 5000, !dbg !581
  br i1 %192, label %225, label %193, !dbg !580

193:                                              ; preds = %185
  %194 = add nuw nsw i32 %191, 1, !dbg !582
  call void @llvm.dbg.value(metadata i32 %194, metadata !556, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %189, metadata !557, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %186, metadata !558, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %187, metadata !559, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %188, metadata !560, metadata !DIExpression()), !dbg !572
  %195 = add nuw nsw i32 %194, %0, !dbg !583
  %196 = sitofp i32 %195 to double, !dbg !584
  call void @llvm.dbg.value(metadata double %196, metadata !571, metadata !DIExpression()), !dbg !585
  %197 = fmul double %196, %196, !dbg !586
  %handler_result28 = call double @fSubHandlerDouble(double 0.000000e+00, double %197), !dbg !587
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !565, metadata !DIExpression()), !dbg !572
  %198 = fmul double %196, 2.000000e+00, !dbg !587
  %handler_result29 = call double @fAddHandlerDouble(double %198, double 1.000000e+00), !dbg !588
  %199 = fmul double %handler_result29, %1, !dbg !588
  call void @llvm.dbg.value(metadata double %199, metadata !566, metadata !DIExpression()), !dbg !572
  %200 = fmul double %187, %199, !dbg !589
  %201 = fmul double %189, %handler_result28, !dbg !590
  %handler_result30 = call double @fAddHandlerDouble(double %201, double %200), !dbg !591
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !563, metadata !DIExpression()), !dbg !572
  %202 = fmul double %188, %199, !dbg !591
  %203 = fmul double %186, %handler_result28, !dbg !592
  %handler_result31 = call double @fAddHandlerDouble(double %203, double %202), !dbg !593
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !564, metadata !DIExpression()), !dbg !572
  %204 = tail call double @llvm.fabs.f64(double %handler_result30), !dbg !593
  %205 = fcmp ogt double %204, 0x5FEFFFFFFFFFFFFF, !dbg !595
  %206 = tail call double @llvm.fabs.f64(double %handler_result31)
  %207 = fcmp ogt double %206, 0x5FEFFFFFFFFFFFFF
  %208 = select i1 %205, i1 true, i1 %207, !dbg !596
  br i1 %208, label %209, label %214, !dbg !596

209:                                              ; preds = %193
  %210 = fdiv double %handler_result30, 0x5FEFFFFFFFFFFFFF, !dbg !597
  call void @llvm.dbg.value(metadata double %210, metadata !563, metadata !DIExpression()), !dbg !572
  %211 = fdiv double %handler_result31, 0x5FEFFFFFFFFFFFFF, !dbg !599
  call void @llvm.dbg.value(metadata double %211, metadata !564, metadata !DIExpression()), !dbg !572
  %212 = fdiv double %187, 0x5FEFFFFFFFFFFFFF, !dbg !600
  call void @llvm.dbg.value(metadata double %212, metadata !559, metadata !DIExpression()), !dbg !572
  %213 = fdiv double %188, 0x5FEFFFFFFFFFFFFF, !dbg !601
  call void @llvm.dbg.value(metadata double %213, metadata !560, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double poison, metadata !557, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double poison, metadata !558, metadata !DIExpression()), !dbg !572
  br label %214, !dbg !602

214:                                              ; preds = %209, %193
  %215 = phi double [ %213, %209 ], [ %188, %193 ], !dbg !585
  %216 = phi double [ %210, %209 ], [ %handler_result30, %193 ], !dbg !585
  %217 = phi double [ %211, %209 ], [ %handler_result31, %193 ], !dbg !585
  %218 = phi double [ %212, %209 ], [ %187, %193 ], !dbg !585
  call void @llvm.dbg.value(metadata double %218, metadata !559, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %217, metadata !564, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %216, metadata !563, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %215, metadata !560, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %190, metadata !568, metadata !DIExpression()), !dbg !585
  %219 = fdiv double %216, %217, !dbg !603
  call void @llvm.dbg.value(metadata double %219, metadata !567, metadata !DIExpression()), !dbg !572
  %220 = fdiv double %190, %219, !dbg !604
  call void @llvm.dbg.value(metadata double %220, metadata !570, metadata !DIExpression()), !dbg !585
  %handler_result32 = call double @fAddHandlerDouble(double %220, double -1.000000e+00), !dbg !605
  %221 = tail call double @llvm.fabs.f64(double %handler_result32), !dbg !605
  %222 = fcmp olt double %221, 0x3CD0000000000000, !dbg !607
  br i1 %222, label %223, label %185

223:                                              ; preds = %214
  call void @llvm.dbg.value(metadata i32 %194, metadata !556, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata double %219, metadata !567, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata double %219, metadata !336, metadata !DIExpression()), !dbg !608
  %224 = icmp eq i32 %194, 5000, !dbg !609
  br i1 %224, label %225, label %227, !dbg !611

225:                                              ; preds = %223, %185
  %226 = phi double [ %219, %223 ], [ %190, %185 ], !dbg !612
  tail call void @llvm.dbg.value(metadata double %226, metadata !336, metadata !DIExpression()), !dbg !608
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 11) #5, !dbg !613
  br label %227, !dbg !613

227:                                              ; preds = %225, %223
  %228 = phi double [ %226, %225 ], [ %219, %223 ], !dbg !612
  %229 = phi i32 [ 11, %225 ], [ 0, %223 ], !dbg !615
  tail call void @llvm.dbg.value(metadata double %228, metadata !336, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !338, metadata !DIExpression()), !dbg !608
  %230 = fmul double %228, 0x2000000000000000, !dbg !616
  tail call void @llvm.dbg.value(metadata double %230, metadata !340, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !341, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !608
  %231 = icmp eq i32 %0, 0, !dbg !617
  br i1 %231, label %244, label %232, !dbg !620

232:                                              ; preds = %232, %227
  %233 = phi i32 [ %242, %232 ], [ %0, %227 ]
  %234 = phi double [ %241, %232 ], [ 0x2000000000000000, %227 ]
  %235 = phi double [ %234, %232 ], [ %230, %227 ]
  tail call void @llvm.dbg.value(metadata i32 %233, metadata !343, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %234, metadata !341, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %235, metadata !340, metadata !DIExpression()), !dbg !608
  %236 = sitofp i32 %233 to double, !dbg !621
  %237 = fmul double %236, 2.000000e+00, !dbg !623
  %handler_result33 = call double @fAddHandlerDouble(double %237, double 1.000000e+00), !dbg !624
  %238 = fmul double %handler_result33, %1, !dbg !624
  %239 = fmul double %234, %238, !dbg !625
  %handler_result34 = call double @fAddHandlerDouble(double %236, double 1.000000e+00), !dbg !626
  %240 = fmul double %235, %handler_result34, !dbg !626
  %handler_result35 = call double @fSubHandlerDouble(double %239, double %240), !dbg !627
  %241 = fdiv double %handler_result35, %236, !dbg !627
  tail call void @llvm.dbg.value(metadata double %241, metadata !342, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %234, metadata !340, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata double %241, metadata !341, metadata !DIExpression()), !dbg !608
  %242 = add nsw i32 %233, -1, !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %242, metadata !343, metadata !DIExpression()), !dbg !608
  %243 = icmp sgt i32 %233, 1, !dbg !617
  br i1 %243, label %232, label %244, !dbg !620, !llvm.loop !629

244:                                              ; preds = %232, %227
  %245 = phi double [ %230, %227 ], [ %234, %232 ], !dbg !608
  %246 = phi double [ 0x2000000000000000, %227 ], [ %241, %232 ], !dbg !608
  %247 = tail call double @llvm.fabs.f64(double %246), !dbg !631
  %248 = tail call double @llvm.fabs.f64(double %245), !dbg !632
  %249 = fcmp ogt double %247, %248, !dbg !633
  %250 = fmul double %179, 0x3CB0000000000000, !dbg !634
  br i1 %249, label %251, label %257, !dbg !635

251:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5, !dbg !636
  %252 = call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef nonnull %10), !dbg !637, !range !371
  tail call void @llvm.dbg.value(metadata i32 %252, metadata !339, metadata !DIExpression()), !dbg !608
  %253 = load double, ptr %10, align 8, !dbg !638, !tbaa !127
  %254 = fmul double %253, 0x2000000000000000, !dbg !639
  %255 = fdiv double %254, %246, !dbg !640
  %256 = tail call double @llvm.fabs.f64(double %255), !dbg !641
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5, !dbg !642
  br label %263, !dbg !643

257:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5, !dbg !644
  %258 = call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef nonnull %11), !dbg !645, !range !371
  tail call void @llvm.dbg.value(metadata i32 %258, metadata !339, metadata !DIExpression()), !dbg !608
  %259 = load double, ptr %11, align 8, !dbg !646, !tbaa !127
  %260 = fmul double %259, 0x2000000000000000, !dbg !647
  %261 = fdiv double %260, %245, !dbg !648
  %262 = tail call double @llvm.fabs.f64(double %261), !dbg !649
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5, !dbg !650
  br label %263

263:                                              ; preds = %257, %251
  %264 = phi double [ %255, %251 ], [ %261, %257 ], !dbg !634
  %265 = phi double [ %256, %251 ], [ %262, %257 ]
  %266 = phi i32 [ %252, %251 ], [ %258, %257 ], !dbg !634
  %267 = fmul double %250, %265, !dbg !634
  store double %264, ptr %2, align 8, !dbg !634
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !634
  store double %267, ptr %268, align 8, !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %266, metadata !339, metadata !DIExpression()), !dbg !608
  %269 = icmp eq i32 %266, 0, !dbg !651
  %270 = select i1 %269, i32 %229, i32 %266, !dbg !651
  br label %271

271:                                              ; preds = %263, %169, %96, %46, %22, %20, %17
  %272 = phi i32 [ 1, %17 ], [ %21, %20 ], [ %23, %22 ], [ %177, %169 ], [ %270, %263 ], [ %77, %46 ], [ %121, %96 ], !dbg !652
  ret i32 %272, !dbg !653
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Q0(double noundef %0) local_unnamed_addr #0 !dbg !654 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !661
  call void @llvm.dbg.assign(metadata i1 undef, metadata !659, metadata !DIExpression(), metadata !661, metadata ptr %2, metadata !DIExpression()), !dbg !662
  tail call void @llvm.dbg.value(metadata double %0, metadata !658, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !663
  %3 = call i32 @gsl_sf_legendre_Q0_e(double noundef %0, ptr noundef nonnull %2), !dbg !663, !range !371
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !660, metadata !DIExpression()), !dbg !662
  %4 = icmp eq i32 %3, 0, !dbg !664
  br i1 %4, label %6, label %5, !dbg !663

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 355, i32 noundef %3) #5, !dbg !666
  br label %6, !dbg !666

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !663, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !669
  ret double %7, !dbg !669
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Q1(double noundef %0) local_unnamed_addr #0 !dbg !670 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !673, metadata !DIExpression(), metadata !675, metadata ptr %2, metadata !DIExpression()), !dbg !676
  tail call void @llvm.dbg.value(metadata double %0, metadata !672, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !677
  %3 = call i32 @gsl_sf_legendre_Q1_e(double noundef %0, ptr noundef nonnull %2), !dbg !677, !range !371
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !674, metadata !DIExpression()), !dbg !676
  %4 = icmp eq i32 %3, 0, !dbg !678
  br i1 %4, label %6, label %5, !dbg !677

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef %3) #5, !dbg !680
  br label %6, !dbg !680

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !677, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !683
  ret double %7, !dbg !683
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Ql(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !684 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !690, metadata !DIExpression(), metadata !692, metadata ptr %3, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !688, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata double %1, metadata !689, metadata !DIExpression()), !dbg !693
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !694
  %4 = call i32 @gsl_sf_legendre_Ql_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !694
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !691, metadata !DIExpression()), !dbg !693
  %5 = icmp eq i32 %4, 0, !dbg !695
  br i1 %5, label %7, label %6, !dbg !694

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 365, i32 noundef %4) #5, !dbg !697
  br label %7, !dbg !697

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !694, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !700
  ret double %8, !dbg !700
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !701 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !702 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !703 i32 @gsl_sf_bessel_Y0_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !705 i32 @gsl_sf_bessel_Y1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !706 i32 @gsl_sf_multiply_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !708 double @acosh(double noundef) local_unnamed_addr #4

declare !dbg !709 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !710 i32 @gsl_sf_bessel_K1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !711 i32 @gsl_sf_exp_mult_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "legendre_Qn.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "9340c03aba1c3f44ed57adf676279480")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 365, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 36)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !75, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!40 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!41 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!42 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!43 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!44 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!45 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!46 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!47 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!48 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!49 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!50 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!51 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!52 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!53 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!54 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!55 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!56 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!57 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!58 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!59 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!60 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!61 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!62 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!63 = !DIEnumerator(name: "GSL_ESING", value: 21)
!64 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!65 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!66 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!67 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!68 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!69 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!70 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!71 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!72 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!73 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!74 = !DIEnumerator(name: "GSL_EOF", value: 32)
!75 = !{!0, !7, !12, !17, !22, !24, !29}
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 8, !"PIC Level", i32 2}
!80 = !{i32 7, !"PIE Level", i32 2}
!81 = !{i32 7, !"uwtable", i32 2}
!82 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!83 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!84 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0_e", scope: !2, file: !2, line: 180, type: !85, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !96)
!85 = !DISubroutineType(types: !86)
!86 = !{!38, !87, !89}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !91, line: 41, baseType: !92)
!91 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !91, line: 37, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !91, line: 38, baseType: !88, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !92, file: !91, line: 39, baseType: !88, size: 64, offset: 64)
!96 = !{!97, !98, !99, !103, !104, !105, !106, !107, !108, !109, !114, !115, !116, !117, !118, !119, !120}
!97 = !DILocalVariable(name: "x", arg: 1, scope: !84, file: !2, line: 180, type: !87)
!98 = !DILocalVariable(name: "result", arg: 2, scope: !84, file: !2, line: 180, type: !89)
!99 = !DILocalVariable(name: "c3", scope: !100, file: !2, line: 188, type: !87)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 187, column: 40)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 187, column: 11)
!102 = distinct !DILexicalBlock(scope: !84, file: !2, line: 184, column: 6)
!103 = !DILocalVariable(name: "c5", scope: !100, file: !2, line: 189, type: !87)
!104 = !DILocalVariable(name: "c7", scope: !100, file: !2, line: 190, type: !87)
!105 = !DILocalVariable(name: "c9", scope: !100, file: !2, line: 191, type: !87)
!106 = !DILocalVariable(name: "c11", scope: !100, file: !2, line: 192, type: !87)
!107 = !DILocalVariable(name: "y", scope: !100, file: !2, line: 193, type: !87)
!108 = !DILocalVariable(name: "series", scope: !100, file: !2, line: 194, type: !87)
!109 = !DILocalVariable(name: "y", scope: !110, file: !2, line: 210, type: !87)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 209, column: 32)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 209, column: 11)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 204, column: 11)
!113 = distinct !DILexicalBlock(scope: !101, file: !2, line: 199, column: 11)
!114 = !DILocalVariable(name: "c1", scope: !110, file: !2, line: 211, type: !87)
!115 = !DILocalVariable(name: "c2", scope: !110, file: !2, line: 212, type: !87)
!116 = !DILocalVariable(name: "c3", scope: !110, file: !2, line: 213, type: !87)
!117 = !DILocalVariable(name: "c4", scope: !110, file: !2, line: 214, type: !87)
!118 = !DILocalVariable(name: "c5", scope: !110, file: !2, line: 215, type: !87)
!119 = !DILocalVariable(name: "c6", scope: !110, file: !2, line: 216, type: !87)
!120 = !DILocalVariable(name: "c7", scope: !110, file: !2, line: 217, type: !87)
!121 = !DILocation(line: 0, scope: !84)
!122 = !DILocation(line: 184, column: 8, scope: !102)
!123 = !DILocation(line: 184, column: 16, scope: !102)
!124 = !DILocation(line: 185, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 185, column: 5)
!126 = distinct !DILexicalBlock(scope: !102, file: !2, line: 184, column: 29)
!127 = !{!128, !129, i64 0}
!128 = !{!"gsl_sf_result_struct", !129, i64 0, !129, i64 8}
!129 = !{!"double", !130, i64 0}
!130 = !{!"omnipotent char", !131, i64 0}
!131 = !{!"Simple C/C++ TBAA"}
!132 = !{!128, !129, i64 8}
!133 = !DILocation(line: 185, column: 5, scope: !134)
!134 = distinct !DILexicalBlock(scope: !125, file: !2, line: 185, column: 5)
!135 = !DILocation(line: 187, column: 12, scope: !101)
!136 = !DILocation(line: 187, column: 15, scope: !101)
!137 = !DILocation(line: 187, column: 11, scope: !102)
!138 = !DILocation(line: 0, scope: !100)
!139 = !DILocation(line: 194, column: 66, scope: !100)
!140 = !DILocation(line: 194, column: 58, scope: !100)
!141 = !DILocation(line: 194, column: 50, scope: !100)
!142 = !DILocation(line: 194, column: 42, scope: !100)
!143 = !DILocation(line: 194, column: 34, scope: !100)
!144 = !DILocation(line: 195, column: 21, scope: !100)
!145 = !DILocation(line: 195, column: 17, scope: !100)
!146 = !DILocation(line: 196, column: 43, scope: !100)
!147 = !DILocation(line: 196, column: 41, scope: !100)
!148 = !DILocation(line: 196, column: 13, scope: !100)
!149 = !DILocation(line: 196, column: 17, scope: !100)
!150 = !DILocation(line: 199, column: 13, scope: !113)
!151 = !DILocation(line: 199, column: 11, scope: !101)
!152 = !DILocation(line: 200, column: 41, scope: !153)
!153 = distinct !DILexicalBlock(scope: !113, file: !2, line: 199, column: 20)
!154 = !DILocation(line: 200, column: 36, scope: !153)
!155 = !DILocation(line: 200, column: 23, scope: !153)
!156 = !DILocation(line: 200, column: 17, scope: !153)
!157 = !DILocation(line: 201, column: 44, scope: !153)
!158 = !DILocation(line: 201, column: 42, scope: !153)
!159 = !DILocation(line: 201, column: 13, scope: !153)
!160 = !DILocation(line: 201, column: 18, scope: !153)
!161 = !DILocation(line: 202, column: 5, scope: !153)
!162 = !DILocation(line: 204, column: 13, scope: !112)
!163 = !DILocation(line: 204, column: 11, scope: !113)
!164 = !DILocation(line: 205, column: 39, scope: !165)
!165 = distinct !DILexicalBlock(scope: !112, file: !2, line: 204, column: 21)
!166 = !DILocation(line: 205, column: 36, scope: !165)
!167 = !DILocation(line: 205, column: 23, scope: !165)
!168 = !DILocation(line: 205, column: 17, scope: !165)
!169 = !DILocation(line: 206, column: 43, scope: !165)
!170 = !DILocation(line: 206, column: 41, scope: !165)
!171 = !DILocation(line: 206, column: 13, scope: !165)
!172 = !DILocation(line: 206, column: 17, scope: !165)
!173 = !DILocation(line: 207, column: 5, scope: !165)
!174 = !DILocation(line: 209, column: 12, scope: !111)
!175 = !DILocation(line: 209, column: 25, scope: !111)
!176 = !DILocation(line: 209, column: 11, scope: !112)
!177 = !DILocation(line: 210, column: 25, scope: !110)
!178 = !DILocation(line: 0, scope: !110)
!179 = !DILocation(line: 218, column: 23, scope: !110)
!180 = !DILocation(line: 218, column: 85, scope: !110)
!181 = !DILocation(line: 218, column: 77, scope: !110)
!182 = !DILocation(line: 218, column: 69, scope: !110)
!183 = !DILocation(line: 218, column: 61, scope: !110)
!184 = !DILocation(line: 218, column: 53, scope: !110)
!185 = !DILocation(line: 218, column: 45, scope: !110)
!186 = !DILocation(line: 218, column: 37, scope: !110)
!187 = !DILocation(line: 218, column: 27, scope: !110)
!188 = !DILocation(line: 218, column: 17, scope: !110)
!189 = !DILocation(line: 219, column: 43, scope: !110)
!190 = !DILocation(line: 219, column: 41, scope: !110)
!191 = !DILocation(line: 219, column: 13, scope: !110)
!192 = !DILocation(line: 219, column: 17, scope: !110)
!193 = !DILocation(line: 223, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 223, column: 5)
!195 = distinct !DILexicalBlock(scope: !111, file: !2, line: 222, column: 8)
!196 = !DILocation(line: 223, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 223, column: 5)
!198 = !DILocation(line: 0, scope: !102)
!199 = !DILocation(line: 225, column: 1, scope: !84)
!200 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203, !203, !38, !38}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!205 = !DISubprogram(name: "log", scope: !206, file: !206, line: 104, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!207 = !DISubroutineType(types: !208)
!208 = !{!88, !88}
!209 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1_e", scope: !2, file: !2, line: 229, type: !85, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !210)
!210 = !{!211, !212, !213, !217, !218, !219, !220, !221, !222, !223, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!211 = !DILocalVariable(name: "x", arg: 1, scope: !209, file: !2, line: 229, type: !87)
!212 = !DILocalVariable(name: "result", arg: 2, scope: !209, file: !2, line: 229, type: !89)
!213 = !DILocalVariable(name: "c3", scope: !214, file: !2, line: 237, type: !87)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 236, column: 40)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 236, column: 11)
!216 = distinct !DILexicalBlock(scope: !209, file: !2, line: 233, column: 6)
!217 = !DILocalVariable(name: "c5", scope: !214, file: !2, line: 238, type: !87)
!218 = !DILocalVariable(name: "c7", scope: !214, file: !2, line: 239, type: !87)
!219 = !DILocalVariable(name: "c9", scope: !214, file: !2, line: 240, type: !87)
!220 = !DILocalVariable(name: "c11", scope: !214, file: !2, line: 241, type: !87)
!221 = !DILocalVariable(name: "y", scope: !214, file: !2, line: 242, type: !87)
!222 = !DILocalVariable(name: "series", scope: !214, file: !2, line: 243, type: !87)
!223 = !DILocalVariable(name: "y", scope: !224, file: !2, line: 259, type: !87)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 258, column: 46)
!225 = distinct !DILexicalBlock(scope: !226, file: !2, line: 258, column: 11)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 253, column: 11)
!227 = distinct !DILexicalBlock(scope: !215, file: !2, line: 248, column: 11)
!228 = !DILocalVariable(name: "c1", scope: !224, file: !2, line: 260, type: !87)
!229 = !DILocalVariable(name: "c2", scope: !224, file: !2, line: 261, type: !87)
!230 = !DILocalVariable(name: "c3", scope: !224, file: !2, line: 262, type: !87)
!231 = !DILocalVariable(name: "c4", scope: !224, file: !2, line: 263, type: !87)
!232 = !DILocalVariable(name: "c5", scope: !224, file: !2, line: 264, type: !87)
!233 = !DILocalVariable(name: "c6", scope: !224, file: !2, line: 265, type: !87)
!234 = !DILocalVariable(name: "c7", scope: !224, file: !2, line: 266, type: !87)
!235 = !DILocalVariable(name: "c8", scope: !224, file: !2, line: 267, type: !87)
!236 = !DILocalVariable(name: "sum", scope: !224, file: !2, line: 268, type: !87)
!237 = !DILocation(line: 0, scope: !209)
!238 = !DILocation(line: 233, column: 8, scope: !216)
!239 = !DILocation(line: 233, column: 16, scope: !216)
!240 = !DILocation(line: 234, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 234, column: 5)
!242 = distinct !DILexicalBlock(scope: !216, file: !2, line: 233, column: 29)
!243 = !DILocation(line: 234, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 234, column: 5)
!245 = !DILocation(line: 236, column: 12, scope: !215)
!246 = !DILocation(line: 236, column: 15, scope: !215)
!247 = !DILocation(line: 236, column: 11, scope: !216)
!248 = !DILocation(line: 0, scope: !214)
!249 = !DILocation(line: 243, column: 66, scope: !214)
!250 = !DILocation(line: 243, column: 58, scope: !214)
!251 = !DILocation(line: 243, column: 50, scope: !214)
!252 = !DILocation(line: 243, column: 42, scope: !214)
!253 = !DILocation(line: 243, column: 34, scope: !214)
!254 = !DILocation(line: 244, column: 25, scope: !214)
!255 = !DILocation(line: 244, column: 17, scope: !214)
!256 = !DILocation(line: 245, column: 43, scope: !214)
!257 = !DILocation(line: 245, column: 41, scope: !214)
!258 = !DILocation(line: 245, column: 13, scope: !214)
!259 = !DILocation(line: 245, column: 17, scope: !214)
!260 = !DILocation(line: 248, column: 13, scope: !227)
!261 = !DILocation(line: 248, column: 11, scope: !215)
!262 = !DILocation(line: 249, column: 23, scope: !263)
!263 = distinct !DILexicalBlock(scope: !227, file: !2, line: 248, column: 19)
!264 = !DILocation(line: 249, column: 46, scope: !263)
!265 = !DILocation(line: 249, column: 41, scope: !263)
!266 = !DILocation(line: 249, column: 27, scope: !263)
!267 = !DILocation(line: 249, column: 17, scope: !263)
!268 = !DILocation(line: 250, column: 44, scope: !263)
!269 = !DILocation(line: 250, column: 42, scope: !263)
!270 = !DILocation(line: 250, column: 13, scope: !263)
!271 = !DILocation(line: 250, column: 18, scope: !263)
!272 = !DILocation(line: 251, column: 5, scope: !263)
!273 = !DILocation(line: 253, column: 13, scope: !226)
!274 = !DILocation(line: 253, column: 11, scope: !227)
!275 = !DILocation(line: 254, column: 23, scope: !276)
!276 = distinct !DILexicalBlock(scope: !226, file: !2, line: 253, column: 20)
!277 = !DILocation(line: 254, column: 43, scope: !276)
!278 = !DILocation(line: 254, column: 40, scope: !276)
!279 = !DILocation(line: 254, column: 27, scope: !276)
!280 = !DILocation(line: 254, column: 17, scope: !276)
!281 = !DILocation(line: 255, column: 43, scope: !276)
!282 = !DILocation(line: 255, column: 41, scope: !276)
!283 = !DILocation(line: 255, column: 13, scope: !276)
!284 = !DILocation(line: 255, column: 17, scope: !276)
!285 = !DILocation(line: 256, column: 5, scope: !276)
!286 = !DILocation(line: 258, column: 12, scope: !225)
!287 = !DILocation(line: 258, column: 30, scope: !225)
!288 = !DILocation(line: 258, column: 11, scope: !226)
!289 = !DILocation(line: 259, column: 23, scope: !224)
!290 = !DILocation(line: 0, scope: !224)
!291 = !DILocation(line: 268, column: 87, scope: !224)
!292 = !DILocation(line: 268, column: 79, scope: !224)
!293 = !DILocation(line: 268, column: 71, scope: !224)
!294 = !DILocation(line: 268, column: 63, scope: !224)
!295 = !DILocation(line: 268, column: 55, scope: !224)
!296 = !DILocation(line: 268, column: 47, scope: !224)
!297 = !DILocation(line: 268, column: 39, scope: !224)
!298 = !DILocation(line: 268, column: 31, scope: !224)
!299 = !DILocation(line: 269, column: 29, scope: !224)
!300 = !DILocation(line: 269, column: 31, scope: !224)
!301 = !DILocation(line: 269, column: 23, scope: !224)
!302 = !DILocation(line: 269, column: 17, scope: !224)
!303 = !DILocation(line: 270, column: 43, scope: !224)
!304 = !DILocation(line: 270, column: 41, scope: !224)
!305 = !DILocation(line: 270, column: 13, scope: !224)
!306 = !DILocation(line: 270, column: 17, scope: !224)
!307 = !DILocation(line: 274, column: 5, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 274, column: 5)
!309 = distinct !DILexicalBlock(scope: !225, file: !2, line: 273, column: 8)
!310 = !DILocation(line: 274, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !2, line: 274, column: 5)
!312 = !DILocation(line: 0, scope: !216)
!313 = !DILocation(line: 276, column: 1, scope: !209)
!314 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql_e", scope: !2, file: !2, line: 280, type: !315, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !318)
!315 = !DISubroutineType(types: !316)
!316 = !{!38, !317, !87, !89}
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!318 = !{!319, !320, !321, !322, !329, !330, !331, !332, !333, !334, !335, !336, !338, !339, !340, !341, !342, !343, !344, !347}
!319 = !DILocalVariable(name: "l", arg: 1, scope: !314, file: !2, line: 280, type: !317)
!320 = !DILocalVariable(name: "x", arg: 2, scope: !314, file: !2, line: 280, type: !87)
!321 = !DILocalVariable(name: "result", arg: 3, scope: !314, file: !2, line: 280, type: !89)
!322 = !DILocalVariable(name: "Q0", scope: !323, file: !2, line: 299, type: !90)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 296, column: 19)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 296, column: 11)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 293, column: 11)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 290, column: 11)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 287, column: 11)
!328 = distinct !DILexicalBlock(scope: !314, file: !2, line: 284, column: 6)
!329 = !DILocalVariable(name: "Q1", scope: !323, file: !2, line: 299, type: !90)
!330 = !DILocalVariable(name: "stat_Q0", scope: !323, file: !2, line: 300, type: !38)
!331 = !DILocalVariable(name: "stat_Q1", scope: !323, file: !2, line: 301, type: !38)
!332 = !DILocalVariable(name: "Qellm1", scope: !323, file: !2, line: 302, type: !88)
!333 = !DILocalVariable(name: "Qell", scope: !323, file: !2, line: 303, type: !88)
!334 = !DILocalVariable(name: "Qellp1", scope: !323, file: !2, line: 304, type: !88)
!335 = !DILocalVariable(name: "ell", scope: !323, file: !2, line: 305, type: !38)
!336 = !DILocalVariable(name: "rat", scope: !337, file: !2, line: 318, type: !88)
!337 = distinct !DILexicalBlock(scope: !324, file: !2, line: 315, column: 8)
!338 = !DILocalVariable(name: "stat_CF1", scope: !337, file: !2, line: 319, type: !38)
!339 = !DILocalVariable(name: "stat_Q", scope: !337, file: !2, line: 320, type: !38)
!340 = !DILocalVariable(name: "Qellp1", scope: !337, file: !2, line: 321, type: !88)
!341 = !DILocalVariable(name: "Qell", scope: !337, file: !2, line: 322, type: !88)
!342 = !DILocalVariable(name: "Qellm1", scope: !337, file: !2, line: 323, type: !88)
!343 = !DILocalVariable(name: "ell", scope: !337, file: !2, line: 324, type: !38)
!344 = !DILocalVariable(name: "Q0", scope: !345, file: !2, line: 332, type: !90)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 331, column: 35)
!346 = distinct !DILexicalBlock(scope: !337, file: !2, line: 331, column: 8)
!347 = !DILocalVariable(name: "Q1", scope: !348, file: !2, line: 338, type: !90)
!348 = distinct !DILexicalBlock(scope: !346, file: !2, line: 337, column: 10)
!349 = distinct !DIAssignID()
!350 = distinct !DIAssignID()
!351 = distinct !DIAssignID()
!352 = distinct !DIAssignID()
!353 = distinct !DIAssignID()
!354 = !DILocation(line: 0, scope: !323)
!355 = distinct !DIAssignID()
!356 = distinct !DIAssignID()
!357 = !DILocation(line: 0, scope: !345)
!358 = distinct !DIAssignID()
!359 = !DILocation(line: 0, scope: !348)
!360 = !DILocation(line: 0, scope: !314)
!361 = !DILocation(line: 284, column: 8, scope: !328)
!362 = !DILocation(line: 284, column: 16, scope: !328)
!363 = !DILocation(line: 285, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 285, column: 5)
!365 = distinct !DILexicalBlock(scope: !328, file: !2, line: 284, column: 38)
!366 = !DILocation(line: 285, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !2, line: 285, column: 5)
!368 = !DILocation(line: 287, column: 11, scope: !328)
!369 = !DILocation(line: 288, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !327, file: !2, line: 287, column: 19)
!371 = !{i32 0, i32 16}
!372 = !DILocation(line: 288, column: 5, scope: !370)
!373 = !DILocation(line: 291, column: 12, scope: !374)
!374 = distinct !DILexicalBlock(scope: !326, file: !2, line: 290, column: 19)
!375 = !DILocation(line: 291, column: 5, scope: !374)
!376 = !DILocation(line: 293, column: 13, scope: !325)
!377 = !DILocation(line: 293, column: 11, scope: !326)
!378 = !DILocation(line: 294, column: 35, scope: !379)
!379 = distinct !DILexicalBlock(scope: !325, file: !2, line: 293, column: 23)
!380 = !DILocalVariable(name: "Y0", scope: !381, file: !2, line: 106, type: !90)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 103, column: 15)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 103, column: 6)
!383 = distinct !DISubprogram(name: "legendre_Ql_asymp_unif", scope: !2, file: !2, line: 101, type: !384, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!38, !87, !87, !89}
!386 = !{!387, !388, !389, !390, !391, !380, !392, !393, !394, !395, !396, !397, !398, !399, !402, !403, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !417}
!387 = !DILocalVariable(name: "ell", arg: 1, scope: !383, file: !2, line: 101, type: !87)
!388 = !DILocalVariable(name: "x", arg: 2, scope: !383, file: !2, line: 101, type: !87)
!389 = !DILocalVariable(name: "result", arg: 3, scope: !383, file: !2, line: 101, type: !89)
!390 = !DILocalVariable(name: "u", scope: !381, file: !2, line: 104, type: !88)
!391 = !DILocalVariable(name: "th", scope: !381, file: !2, line: 105, type: !88)
!392 = !DILocalVariable(name: "Y1", scope: !381, file: !2, line: 106, type: !90)
!393 = !DILocalVariable(name: "stat_Y0", scope: !381, file: !2, line: 107, type: !38)
!394 = !DILocalVariable(name: "stat_Y1", scope: !381, file: !2, line: 107, type: !38)
!395 = !DILocalVariable(name: "stat_m", scope: !381, file: !2, line: 108, type: !38)
!396 = !DILocalVariable(name: "pre", scope: !381, file: !2, line: 109, type: !88)
!397 = !DILocalVariable(name: "B00", scope: !381, file: !2, line: 110, type: !88)
!398 = !DILocalVariable(name: "sum", scope: !381, file: !2, line: 111, type: !88)
!399 = !DILocalVariable(name: "sin_th", scope: !400, file: !2, line: 121, type: !88)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 120, column: 10)
!401 = distinct !DILexicalBlock(scope: !381, file: !2, line: 116, column: 8)
!402 = !DILocalVariable(name: "cot_th", scope: !400, file: !2, line: 122, type: !88)
!403 = !DILocalVariable(name: "u", scope: !404, file: !2, line: 139, type: !88)
!404 = distinct !DILexicalBlock(scope: !382, file: !2, line: 138, column: 8)
!405 = !DILocalVariable(name: "xi", scope: !404, file: !2, line: 140, type: !88)
!406 = !DILocalVariable(name: "K0_scaled", scope: !404, file: !2, line: 141, type: !90)
!407 = !DILocalVariable(name: "K1_scaled", scope: !404, file: !2, line: 141, type: !90)
!408 = !DILocalVariable(name: "stat_K0", scope: !404, file: !2, line: 142, type: !38)
!409 = !DILocalVariable(name: "stat_K1", scope: !404, file: !2, line: 142, type: !38)
!410 = !DILocalVariable(name: "stat_e", scope: !404, file: !2, line: 143, type: !38)
!411 = !DILocalVariable(name: "pre", scope: !404, file: !2, line: 144, type: !88)
!412 = !DILocalVariable(name: "B00", scope: !404, file: !2, line: 145, type: !88)
!413 = !DILocalVariable(name: "sum", scope: !404, file: !2, line: 146, type: !88)
!414 = !DILocalVariable(name: "sinh_xi", scope: !415, file: !2, line: 156, type: !88)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 155, column: 10)
!416 = distinct !DILexicalBlock(scope: !404, file: !2, line: 151, column: 8)
!417 = !DILocalVariable(name: "coth_xi", scope: !415, file: !2, line: 157, type: !88)
!418 = !DILocation(line: 0, scope: !381, inlinedAt: !419)
!419 = distinct !DILocation(line: 294, column: 12, scope: !379)
!420 = !DILocation(line: 0, scope: !404, inlinedAt: !419)
!421 = !DILocation(line: 0, scope: !383, inlinedAt: !419)
!422 = !DILocation(line: 103, column: 8, scope: !382, inlinedAt: !419)
!423 = !DILocation(line: 103, column: 6, scope: !383, inlinedAt: !419)
!424 = !DILocation(line: 106, column: 5, scope: !381, inlinedAt: !419)
!425 = !DILocation(line: 116, column: 11, scope: !401, inlinedAt: !419)
!426 = !DILocation(line: 116, column: 8, scope: !381, inlinedAt: !419)
!427 = !DILocation(line: 117, column: 22, scope: !428, inlinedAt: !419)
!428 = distinct !DILexicalBlock(scope: !401, file: !2, line: 116, column: 36)
!429 = !DILocation(line: 117, column: 25, scope: !428, inlinedAt: !419)
!430 = !DILocation(line: 117, column: 31, scope: !428, inlinedAt: !419)
!431 = !DILocation(line: 118, column: 24, scope: !428, inlinedAt: !419)
!432 = !DILocation(line: 119, column: 5, scope: !428, inlinedAt: !419)
!433 = !DILocation(line: 121, column: 35, scope: !400, inlinedAt: !419)
!434 = !DILocation(line: 121, column: 23, scope: !400, inlinedAt: !419)
!435 = !DILocation(line: 0, scope: !400, inlinedAt: !419)
!436 = !DILocation(line: 122, column: 25, scope: !400, inlinedAt: !419)
!437 = !DILocation(line: 123, column: 33, scope: !400, inlinedAt: !419)
!438 = !DILocation(line: 123, column: 21, scope: !400, inlinedAt: !419)
!439 = !DILocation(line: 123, column: 48, scope: !400, inlinedAt: !419)
!440 = !DILocation(line: 123, column: 43, scope: !400, inlinedAt: !419)
!441 = !DILocation(line: 124, column: 20, scope: !400, inlinedAt: !419)
!442 = !DILocation(line: 124, column: 13, scope: !400, inlinedAt: !419)
!443 = !DILocation(line: 0, scope: !401, inlinedAt: !419)
!444 = !DILocation(line: 127, column: 35, scope: !381, inlinedAt: !419)
!445 = !DILocation(line: 127, column: 15, scope: !381, inlinedAt: !419)
!446 = !DILocation(line: 128, column: 15, scope: !381, inlinedAt: !419)
!447 = !DILocation(line: 130, column: 27, scope: !381, inlinedAt: !419)
!448 = !DILocation(line: 130, column: 35, scope: !381, inlinedAt: !419)
!449 = !DILocation(line: 130, column: 43, scope: !381, inlinedAt: !419)
!450 = !DILocation(line: 130, column: 38, scope: !381, inlinedAt: !419)
!451 = !DILocation(line: 130, column: 47, scope: !381, inlinedAt: !419)
!452 = !DILocation(line: 130, column: 21, scope: !381, inlinedAt: !419)
!453 = !DILocation(line: 132, column: 14, scope: !381, inlinedAt: !419)
!454 = !DILocation(line: 133, column: 31, scope: !381, inlinedAt: !419)
!455 = !DILocation(line: 133, column: 29, scope: !381, inlinedAt: !419)
!456 = !DILocation(line: 133, column: 47, scope: !381, inlinedAt: !419)
!457 = !DILocation(line: 133, column: 62, scope: !381, inlinedAt: !419)
!458 = !DILocation(line: 133, column: 53, scope: !381, inlinedAt: !419)
!459 = !DILocation(line: 133, column: 71, scope: !381, inlinedAt: !419)
!460 = !DILocation(line: 133, column: 67, scope: !381, inlinedAt: !419)
!461 = !DILocation(line: 133, column: 41, scope: !381, inlinedAt: !419)
!462 = !DILocation(line: 133, column: 13, scope: !381, inlinedAt: !419)
!463 = !DILocation(line: 133, column: 17, scope: !381, inlinedAt: !419)
!464 = !DILocation(line: 134, column: 51, scope: !381, inlinedAt: !419)
!465 = !DILocation(line: 134, column: 38, scope: !381, inlinedAt: !419)
!466 = !DILocation(line: 134, column: 36, scope: !381, inlinedAt: !419)
!467 = !DILocation(line: 134, column: 17, scope: !381, inlinedAt: !419)
!468 = !DILocation(line: 136, column: 12, scope: !381, inlinedAt: !419)
!469 = !DILocation(line: 137, column: 3, scope: !382, inlinedAt: !419)
!470 = !DILocation(line: 140, column: 18, scope: !404, inlinedAt: !419)
!471 = !DILocation(line: 141, column: 5, scope: !404, inlinedAt: !419)
!472 = !DILocation(line: 151, column: 11, scope: !416, inlinedAt: !419)
!473 = !DILocation(line: 151, column: 8, scope: !404, inlinedAt: !419)
!474 = !DILocation(line: 152, column: 20, scope: !475, inlinedAt: !419)
!475 = distinct !DILexicalBlock(scope: !416, file: !2, line: 151, column: 36)
!476 = !DILocation(line: 152, column: 23, scope: !475, inlinedAt: !419)
!477 = !DILocation(line: 152, column: 29, scope: !475, inlinedAt: !419)
!478 = !DILocation(line: 153, column: 24, scope: !475, inlinedAt: !419)
!479 = !DILocation(line: 154, column: 5, scope: !475, inlinedAt: !419)
!480 = !DILocation(line: 156, column: 30, scope: !415, inlinedAt: !419)
!481 = !DILocation(line: 156, column: 24, scope: !415, inlinedAt: !419)
!482 = !DILocation(line: 0, scope: !415, inlinedAt: !419)
!483 = !DILocation(line: 157, column: 26, scope: !415, inlinedAt: !419)
!484 = !DILocation(line: 158, column: 34, scope: !415, inlinedAt: !419)
!485 = !DILocation(line: 158, column: 22, scope: !415, inlinedAt: !419)
!486 = !DILocation(line: 158, column: 50, scope: !415, inlinedAt: !419)
!487 = !DILocation(line: 158, column: 45, scope: !415, inlinedAt: !419)
!488 = !DILocation(line: 159, column: 20, scope: !415, inlinedAt: !419)
!489 = !DILocation(line: 159, column: 13, scope: !415, inlinedAt: !419)
!490 = !DILocation(line: 0, scope: !416, inlinedAt: !419)
!491 = !DILocation(line: 162, column: 42, scope: !404, inlinedAt: !419)
!492 = !DILocation(line: 162, column: 15, scope: !404, inlinedAt: !419)
!493 = !DILocation(line: 163, column: 15, scope: !404, inlinedAt: !419)
!494 = !DILocation(line: 165, column: 21, scope: !404, inlinedAt: !419)
!495 = !DILocation(line: 165, column: 29, scope: !404, inlinedAt: !419)
!496 = !DILocation(line: 165, column: 44, scope: !404, inlinedAt: !419)
!497 = !DILocation(line: 165, column: 32, scope: !404, inlinedAt: !419)
!498 = !DILocation(line: 165, column: 48, scope: !404, inlinedAt: !419)
!499 = !DILocation(line: 167, column: 32, scope: !404, inlinedAt: !419)
!500 = !DILocation(line: 167, column: 34, scope: !404, inlinedAt: !419)
!501 = !DILocation(line: 167, column: 43, scope: !404, inlinedAt: !419)
!502 = !DILocation(line: 167, column: 14, scope: !404, inlinedAt: !419)
!503 = !DILocation(line: 168, column: 51, scope: !404, inlinedAt: !419)
!504 = !DILocation(line: 168, column: 38, scope: !404, inlinedAt: !419)
!505 = !DILocation(line: 168, column: 36, scope: !404, inlinedAt: !419)
!506 = !DILocation(line: 168, column: 58, scope: !404, inlinedAt: !419)
!507 = !DILocation(line: 168, column: 56, scope: !404, inlinedAt: !419)
!508 = !DILocation(line: 168, column: 13, scope: !404, inlinedAt: !419)
!509 = !DILocation(line: 169, column: 42, scope: !404, inlinedAt: !419)
!510 = !DILocation(line: 169, column: 17, scope: !404, inlinedAt: !419)
!511 = !DILocation(line: 171, column: 12, scope: !404, inlinedAt: !419)
!512 = !DILocation(line: 172, column: 3, scope: !382, inlinedAt: !419)
!513 = !DILocation(line: 296, column: 13, scope: !324)
!514 = !DILocation(line: 296, column: 11, scope: !325)
!515 = !DILocation(line: 299, column: 5, scope: !323)
!516 = !DILocation(line: 300, column: 19, scope: !323)
!517 = !DILocation(line: 301, column: 19, scope: !323)
!518 = !DILocation(line: 303, column: 24, scope: !323)
!519 = !DILocation(line: 302, column: 24, scope: !323)
!520 = !DILocation(line: 306, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !323, file: !2, line: 306, column: 5)
!522 = !DILocation(line: 307, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 306, column: 30)
!524 = distinct !DILexicalBlock(scope: !521, file: !2, line: 306, column: 5)
!525 = !DILocation(line: 307, column: 23, scope: !523)
!526 = !DILocation(line: 307, column: 18, scope: !523)
!527 = !DILocation(line: 307, column: 35, scope: !523)
!528 = !DILocation(line: 307, column: 48, scope: !523)
!529 = !DILocation(line: 307, column: 65, scope: !523)
!530 = !DILocation(line: 307, column: 58, scope: !523)
!531 = !DILocation(line: 306, column: 26, scope: !524)
!532 = distinct !{!532, !520, !533, !534}
!533 = !DILocation(line: 310, column: 5, scope: !521)
!534 = !{!"llvm.loop.mustprogress"}
!535 = !DILocation(line: 311, column: 17, scope: !323)
!536 = !DILocation(line: 312, column: 37, scope: !323)
!537 = !DILocation(line: 312, column: 35, scope: !323)
!538 = !DILocation(line: 312, column: 41, scope: !323)
!539 = !DILocation(line: 312, column: 39, scope: !323)
!540 = !DILocation(line: 312, column: 13, scope: !323)
!541 = !DILocation(line: 312, column: 17, scope: !323)
!542 = !DILocation(line: 313, column: 12, scope: !323)
!543 = !DILocation(line: 314, column: 3, scope: !324)
!544 = !DILocalVariable(name: "ell", arg: 1, scope: !545, file: !2, line: 39, type: !38)
!545 = distinct !DISubprogram(name: "legendreQ_CF1_xgt1", scope: !2, file: !2, line: 39, type: !546, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !549)
!546 = !DISubroutineType(types: !547)
!547 = !{!38, !38, !88, !88, !88, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!549 = !{!544, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !570, !571}
!550 = !DILocalVariable(name: "a", arg: 2, scope: !545, file: !2, line: 39, type: !88)
!551 = !DILocalVariable(name: "b", arg: 3, scope: !545, file: !2, line: 39, type: !88)
!552 = !DILocalVariable(name: "x", arg: 4, scope: !545, file: !2, line: 39, type: !88)
!553 = !DILocalVariable(name: "result", arg: 5, scope: !545, file: !2, line: 39, type: !548)
!554 = !DILocalVariable(name: "RECUR_BIG", scope: !545, file: !2, line: 41, type: !87)
!555 = !DILocalVariable(name: "maxiter", scope: !545, file: !2, line: 42, type: !317)
!556 = !DILocalVariable(name: "n", scope: !545, file: !2, line: 43, type: !38)
!557 = !DILocalVariable(name: "Anm2", scope: !545, file: !2, line: 44, type: !88)
!558 = !DILocalVariable(name: "Bnm2", scope: !545, file: !2, line: 45, type: !88)
!559 = !DILocalVariable(name: "Anm1", scope: !545, file: !2, line: 46, type: !88)
!560 = !DILocalVariable(name: "Bnm1", scope: !545, file: !2, line: 47, type: !88)
!561 = !DILocalVariable(name: "a1", scope: !545, file: !2, line: 48, type: !88)
!562 = !DILocalVariable(name: "b1", scope: !545, file: !2, line: 49, type: !88)
!563 = !DILocalVariable(name: "An", scope: !545, file: !2, line: 50, type: !88)
!564 = !DILocalVariable(name: "Bn", scope: !545, file: !2, line: 51, type: !88)
!565 = !DILocalVariable(name: "an", scope: !545, file: !2, line: 52, type: !88)
!566 = !DILocalVariable(name: "bn", scope: !545, file: !2, line: 52, type: !88)
!567 = !DILocalVariable(name: "fn", scope: !545, file: !2, line: 53, type: !88)
!568 = !DILocalVariable(name: "old_fn", scope: !569, file: !2, line: 56, type: !88)
!569 = distinct !DILexicalBlock(scope: !545, file: !2, line: 55, column: 22)
!570 = !DILocalVariable(name: "del", scope: !569, file: !2, line: 57, type: !88)
!571 = !DILocalVariable(name: "lna", scope: !569, file: !2, line: 58, type: !88)
!572 = !DILocation(line: 0, scope: !545, inlinedAt: !573)
!573 = distinct !DILocation(line: 319, column: 21, scope: !337)
!574 = !DILocation(line: 48, column: 15, scope: !545, inlinedAt: !573)
!575 = !DILocation(line: 49, column: 19, scope: !545, inlinedAt: !573)
!576 = !DILocation(line: 49, column: 39, scope: !545, inlinedAt: !573)
!577 = !DILocation(line: 50, column: 17, scope: !545, inlinedAt: !573)
!578 = !DILocation(line: 51, column: 27, scope: !545, inlinedAt: !573)
!579 = !DILocation(line: 53, column: 17, scope: !545, inlinedAt: !573)
!580 = !DILocation(line: 55, column: 3, scope: !545, inlinedAt: !573)
!581 = !DILocation(line: 55, column: 11, scope: !545, inlinedAt: !573)
!582 = !DILocation(line: 59, column: 6, scope: !569, inlinedAt: !573)
!583 = !DILocation(line: 64, column: 15, scope: !569, inlinedAt: !573)
!584 = !DILocation(line: 64, column: 11, scope: !569, inlinedAt: !573)
!585 = !DILocation(line: 0, scope: !569, inlinedAt: !573)
!586 = !DILocation(line: 65, column: 19, scope: !569, inlinedAt: !573)
!587 = !DILocation(line: 66, column: 14, scope: !569, inlinedAt: !573)
!588 = !DILocation(line: 66, column: 26, scope: !569, inlinedAt: !573)
!589 = !DILocation(line: 67, column: 12, scope: !569, inlinedAt: !573)
!590 = !DILocation(line: 67, column: 22, scope: !569, inlinedAt: !573)
!591 = !DILocation(line: 68, column: 12, scope: !569, inlinedAt: !573)
!592 = !DILocation(line: 68, column: 22, scope: !569, inlinedAt: !573)
!593 = !DILocation(line: 70, column: 8, scope: !594, inlinedAt: !573)
!594 = distinct !DILexicalBlock(scope: !569, file: !2, line: 70, column: 8)
!595 = !DILocation(line: 70, column: 17, scope: !594, inlinedAt: !573)
!596 = !DILocation(line: 70, column: 29, scope: !594, inlinedAt: !573)
!597 = !DILocation(line: 71, column: 10, scope: !598, inlinedAt: !573)
!598 = distinct !DILexicalBlock(scope: !594, file: !2, line: 70, column: 54)
!599 = !DILocation(line: 72, column: 10, scope: !598, inlinedAt: !573)
!600 = !DILocation(line: 73, column: 12, scope: !598, inlinedAt: !573)
!601 = !DILocation(line: 74, column: 12, scope: !598, inlinedAt: !573)
!602 = !DILocation(line: 77, column: 5, scope: !598, inlinedAt: !573)
!603 = !DILocation(line: 80, column: 12, scope: !569, inlinedAt: !573)
!604 = !DILocation(line: 81, column: 17, scope: !569, inlinedAt: !573)
!605 = !DILocation(line: 83, column: 8, scope: !606, inlinedAt: !573)
!606 = distinct !DILexicalBlock(scope: !569, file: !2, line: 83, column: 8)
!607 = !DILocation(line: 83, column: 24, scope: !606, inlinedAt: !573)
!608 = !DILocation(line: 0, scope: !337)
!609 = !DILocation(line: 88, column: 8, scope: !610, inlinedAt: !573)
!610 = distinct !DILexicalBlock(scope: !545, file: !2, line: 88, column: 6)
!611 = !DILocation(line: 88, column: 6, scope: !545, inlinedAt: !573)
!612 = !DILocation(line: 86, column: 11, scope: !545, inlinedAt: !573)
!613 = !DILocation(line: 89, column: 5, scope: !614, inlinedAt: !573)
!614 = distinct !DILexicalBlock(scope: !610, file: !2, line: 89, column: 5)
!615 = !DILocation(line: 0, scope: !610, inlinedAt: !573)
!616 = !DILocation(line: 321, column: 25, scope: !337)
!617 = !DILocation(line: 325, column: 19, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 325, column: 5)
!619 = distinct !DILexicalBlock(scope: !337, file: !2, line: 325, column: 5)
!620 = !DILocation(line: 325, column: 5, scope: !619)
!621 = !DILocation(line: 326, column: 26, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !2, line: 325, column: 30)
!623 = !DILocation(line: 326, column: 25, scope: !622)
!624 = !DILocation(line: 326, column: 19, scope: !622)
!625 = !DILocation(line: 326, column: 37, scope: !622)
!626 = !DILocation(line: 326, column: 56, scope: !622)
!627 = !DILocation(line: 326, column: 66, scope: !622)
!628 = !DILocation(line: 325, column: 26, scope: !618)
!629 = distinct !{!629, !620, !630, !534}
!630 = !DILocation(line: 329, column: 5, scope: !619)
!631 = !DILocation(line: 331, column: 8, scope: !346)
!632 = !DILocation(line: 331, column: 21, scope: !346)
!633 = !DILocation(line: 331, column: 19, scope: !346)
!634 = !DILocation(line: 0, scope: !346)
!635 = !DILocation(line: 331, column: 8, scope: !337)
!636 = !DILocation(line: 332, column: 7, scope: !345)
!637 = !DILocation(line: 333, column: 16, scope: !345)
!638 = !DILocation(line: 334, column: 43, scope: !345)
!639 = !DILocation(line: 334, column: 38, scope: !345)
!640 = !DILocation(line: 334, column: 47, scope: !345)
!641 = !DILocation(line: 335, column: 43, scope: !345)
!642 = !DILocation(line: 336, column: 5, scope: !346)
!643 = !DILocation(line: 336, column: 5, scope: !345)
!644 = !DILocation(line: 338, column: 7, scope: !348)
!645 = !DILocation(line: 339, column: 16, scope: !348)
!646 = !DILocation(line: 340, column: 43, scope: !348)
!647 = !DILocation(line: 340, column: 38, scope: !348)
!648 = !DILocation(line: 340, column: 47, scope: !348)
!649 = !DILocation(line: 341, column: 43, scope: !348)
!650 = !DILocation(line: 342, column: 5, scope: !346)
!651 = !DILocation(line: 344, column: 12, scope: !337)
!652 = !DILocation(line: 0, scope: !328)
!653 = !DILocation(line: 346, column: 1, scope: !314)
!654 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0", scope: !2, file: !2, line: 353, type: !655, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!88, !87}
!657 = !{!658, !659, !660}
!658 = !DILocalVariable(name: "x", arg: 1, scope: !654, file: !2, line: 353, type: !87)
!659 = !DILocalVariable(name: "result", scope: !654, file: !2, line: 355, type: !90)
!660 = !DILocalVariable(name: "status", scope: !654, file: !2, line: 355, type: !38)
!661 = distinct !DIAssignID()
!662 = !DILocation(line: 0, scope: !654)
!663 = !DILocation(line: 355, column: 3, scope: !654)
!664 = !DILocation(line: 355, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !2, line: 355, column: 3)
!666 = !DILocation(line: 355, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !2, line: 355, column: 3)
!668 = distinct !DILexicalBlock(scope: !665, file: !2, line: 355, column: 3)
!669 = !DILocation(line: 356, column: 1, scope: !654)
!670 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1", scope: !2, file: !2, line: 358, type: !655, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !671)
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(name: "x", arg: 1, scope: !670, file: !2, line: 358, type: !87)
!673 = !DILocalVariable(name: "result", scope: !670, file: !2, line: 360, type: !90)
!674 = !DILocalVariable(name: "status", scope: !670, file: !2, line: 360, type: !38)
!675 = distinct !DIAssignID()
!676 = !DILocation(line: 0, scope: !670)
!677 = !DILocation(line: 360, column: 3, scope: !670)
!678 = !DILocation(line: 360, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !670, file: !2, line: 360, column: 3)
!680 = !DILocation(line: 360, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 360, column: 3)
!682 = distinct !DILexicalBlock(scope: !679, file: !2, line: 360, column: 3)
!683 = !DILocation(line: 361, column: 1, scope: !670)
!684 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql", scope: !2, file: !2, line: 363, type: !685, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!88, !317, !87}
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "l", arg: 1, scope: !684, file: !2, line: 363, type: !317)
!689 = !DILocalVariable(name: "x", arg: 2, scope: !684, file: !2, line: 363, type: !87)
!690 = !DILocalVariable(name: "result", scope: !684, file: !2, line: 365, type: !90)
!691 = !DILocalVariable(name: "status", scope: !684, file: !2, line: 365, type: !38)
!692 = distinct !DIAssignID()
!693 = !DILocation(line: 0, scope: !684)
!694 = !DILocation(line: 365, column: 3, scope: !684)
!695 = !DILocation(line: 365, column: 3, scope: !696)
!696 = distinct !DILexicalBlock(scope: !684, file: !2, line: 365, column: 3)
!697 = !DILocation(line: 365, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 365, column: 3)
!699 = distinct !DILexicalBlock(scope: !696, file: !2, line: 365, column: 3)
!700 = !DILocation(line: 366, column: 1, scope: !684)
!701 = !DISubprogram(name: "acos", scope: !206, file: !206, line: 53, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubprogram(name: "sqrt", scope: !206, file: !206, line: 143, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !704, file: !704, line: 79, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!705 = !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !704, file: !704, line: 88, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubprogram(name: "gsl_sf_multiply_e", scope: !707, file: !707, line: 46, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!708 = !DISubprogram(name: "acosh", scope: !206, file: !206, line: 85, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !704, file: !704, line: 218, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!710 = !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !704, file: !704, line: 228, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!711 = !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !712, file: !712, line: 60, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
