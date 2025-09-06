; ModuleID = 'legendre_Qn.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 1) #6, !dbg !133
  br label %74, !dbg !133

8:                                                ; preds = %2
  %9 = fmul double %0, %0, !dbg !135
  %10 = fcmp olt double %9, 0x3F6428A2F98D728D, !dbg !136
  br i1 %10, label %11, label %26, !dbg !137

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !99, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !103, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !104, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !105, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !106, metadata !DIExpression()), !dbg !138
  tail call void @llvm.dbg.value(metadata double %9, metadata !107, metadata !DIExpression()), !dbg !138
  %12 = fmul double %9, 0x3FB745D1745D1746, !dbg !139
  %13 = fadd double %12, 0x3FBC71C71C71C71C, !dbg !140
  %14 = fmul double %9, %13, !dbg !141
  %15 = fadd double %14, 0x3FC2492492492492, !dbg !142
  %16 = fmul double %9, %15, !dbg !143
  %17 = fadd double %16, 2.000000e-01, !dbg !144
  %18 = fmul double %9, %17, !dbg !145
  %19 = fadd double %18, 0x3FD5555555555555, !dbg !146
  %20 = fmul double %9, %19, !dbg !147
  %21 = fadd double %20, 1.000000e+00, !dbg !148
  tail call void @llvm.dbg.value(metadata double %21, metadata !108, metadata !DIExpression()), !dbg !138
  %22 = fmul double %21, %0, !dbg !149
  store double %22, ptr %1, align 8, !dbg !150, !tbaa !127
  %23 = tail call double @llvm.fabs.f64(double %0), !dbg !151
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !152
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !153
  store double %24, ptr %25, align 8, !dbg !154, !tbaa !132
  br label %74

26:                                               ; preds = %8
  %27 = fcmp olt double %0, 1.000000e+00, !dbg !155
  br i1 %27, label %28, label %37, !dbg !156

28:                                               ; preds = %26
  %29 = fadd double %0, 1.000000e+00, !dbg !157
  %30 = fsub double 1.000000e+00, %0, !dbg !159
  %31 = fdiv double %29, %30, !dbg !160
  %32 = tail call double @log(double noundef %31) #6, !dbg !161
  %33 = fmul double %32, 5.000000e-01, !dbg !162
  store double %33, ptr %1, align 8, !dbg !163, !tbaa !127
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !164
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !165
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !166
  store double %35, ptr %36, align 8, !dbg !167, !tbaa !132
  br label %74, !dbg !168

37:                                               ; preds = %26
  %38 = fcmp olt double %0, 1.000000e+01, !dbg !169
  br i1 %38, label %39, label %48, !dbg !170

39:                                               ; preds = %37
  %40 = fadd double %0, 1.000000e+00, !dbg !171
  %41 = fadd double %0, -1.000000e+00, !dbg !173
  %42 = fdiv double %40, %41, !dbg !174
  %43 = tail call double @log(double noundef %42) #6, !dbg !175
  %44 = fmul double %43, 5.000000e-01, !dbg !176
  store double %44, ptr %1, align 8, !dbg !177, !tbaa !127
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !178
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !179
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !180
  store double %46, ptr %47, align 8, !dbg !181, !tbaa !132
  br label %74, !dbg !182

48:                                               ; preds = %37
  %49 = fmul double %0, 0x10000000000000, !dbg !183
  %50 = fcmp olt double %49, 2.000000e+00, !dbg !184
  br i1 %50, label %51, label %72, !dbg !185

51:                                               ; preds = %48
  %52 = fdiv double 1.000000e+00, %9, !dbg !186
  tail call void @llvm.dbg.value(metadata double %52, metadata !109, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !114, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !115, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !116, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !117, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !118, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FB3B13B13B13B14, metadata !119, metadata !DIExpression()), !dbg !187
  tail call void @llvm.dbg.value(metadata double 0x3FB1111111111111, metadata !120, metadata !DIExpression()), !dbg !187
  %53 = fdiv double 1.000000e+00, %0, !dbg !188
  %54 = fmul double %52, 0x3FB1111111111111, !dbg !189
  %55 = fadd double %54, 0x3FB3B13B13B13B14, !dbg !190
  %56 = fmul double %52, %55, !dbg !191
  %57 = fadd double %56, 0x3FB745D1745D1746, !dbg !192
  %58 = fmul double %52, %57, !dbg !193
  %59 = fadd double %58, 0x3FBC71C71C71C71C, !dbg !194
  %60 = fmul double %52, %59, !dbg !195
  %61 = fadd double %60, 0x3FC2492492492492, !dbg !196
  %62 = fmul double %52, %61, !dbg !197
  %63 = fadd double %62, 2.000000e-01, !dbg !198
  %64 = fmul double %52, %63, !dbg !199
  %65 = fadd double %64, 0x3FD5555555555555, !dbg !200
  %66 = fmul double %52, %65, !dbg !201
  %67 = fadd double %66, 1.000000e+00, !dbg !202
  %68 = fmul double %53, %67, !dbg !203
  store double %68, ptr %1, align 8, !dbg !204, !tbaa !127
  %69 = tail call double @llvm.fabs.f64(double %68), !dbg !205
  %70 = fmul double %69, 0x3CC0000000000000, !dbg !206
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !207
  store double %70, ptr %71, align 8, !dbg !208, !tbaa !132
  br label %74

72:                                               ; preds = %48
  store double 0.000000e+00, ptr %1, align 8, !dbg !209, !tbaa !127
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !209
  store double 0x10000000000000, ptr %73, align 8, !dbg !209, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 223, i32 noundef 15) #6, !dbg !212
  br label %74, !dbg !212

74:                                               ; preds = %6, %11, %28, %39, %51, %72
  %75 = phi i32 [ 1, %6 ], [ 0, %11 ], [ 0, %28 ], [ 0, %39 ], [ 0, %51 ], [ 15, %72 ], !dbg !214
  ret i32 %75, !dbg !215
}

declare !dbg !216 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !221 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_Q1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !225 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !227, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !228, metadata !DIExpression()), !dbg !253
  %3 = fcmp ole double %0, -1.000000e+00, !dbg !254
  %4 = fcmp oeq double %0, 1.000000e+00
  %5 = or i1 %3, %4, !dbg !255
  br i1 %5, label %6, label %8, !dbg !255

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !256, !tbaa !127
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !256
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !256, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef 1) #6, !dbg !259
  br label %82, !dbg !259

8:                                                ; preds = %2
  %9 = fmul double %0, %0, !dbg !261
  %10 = fcmp olt double %9, 0x3F6428A2F98D728D, !dbg !262
  br i1 %10, label %11, label %27, !dbg !263

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !229, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !233, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double 0x3FC2492492492492, metadata !234, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double 0x3FBC71C71C71C71C, metadata !235, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double 0x3FB745D1745D1746, metadata !236, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double %9, metadata !237, metadata !DIExpression()), !dbg !264
  %12 = fmul double %9, 0x3FB745D1745D1746, !dbg !265
  %13 = fadd double %12, 0x3FBC71C71C71C71C, !dbg !266
  %14 = fmul double %9, %13, !dbg !267
  %15 = fadd double %14, 0x3FC2492492492492, !dbg !268
  %16 = fmul double %9, %15, !dbg !269
  %17 = fadd double %16, 2.000000e-01, !dbg !270
  %18 = fmul double %9, %17, !dbg !271
  %19 = fadd double %18, 0x3FD5555555555555, !dbg !272
  %20 = fmul double %9, %19, !dbg !273
  %21 = fadd double %20, 1.000000e+00, !dbg !274
  tail call void @llvm.dbg.value(metadata double %21, metadata !238, metadata !DIExpression()), !dbg !264
  %22 = fmul double %9, %21, !dbg !275
  %23 = fadd double %22, -1.000000e+00, !dbg !276
  store double %23, ptr %1, align 8, !dbg !277, !tbaa !127
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !278
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !279
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !280
  store double %25, ptr %26, align 8, !dbg !281, !tbaa !132
  br label %82

27:                                               ; preds = %8
  %28 = fcmp olt double %0, 1.000000e+00, !dbg !282
  br i1 %28, label %29, label %40, !dbg !283

29:                                               ; preds = %27
  %30 = fmul double %0, 5.000000e-01, !dbg !284
  %31 = fadd double %0, 1.000000e+00, !dbg !286
  %32 = fsub double 1.000000e+00, %0, !dbg !287
  %33 = fdiv double %31, %32, !dbg !288
  %34 = tail call double @log(double noundef %33) #6, !dbg !289
  %35 = fmul double %30, %34, !dbg !290
  %36 = fadd double %35, -1.000000e+00, !dbg !291
  store double %36, ptr %1, align 8, !dbg !292, !tbaa !127
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !293
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !294
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !295
  store double %38, ptr %39, align 8, !dbg !296, !tbaa !132
  br label %82, !dbg !297

40:                                               ; preds = %27
  %41 = fcmp olt double %0, 6.000000e+00, !dbg !298
  br i1 %41, label %42, label %53, !dbg !299

42:                                               ; preds = %40
  %43 = fmul double %0, 5.000000e-01, !dbg !300
  %44 = fadd double %0, 1.000000e+00, !dbg !302
  %45 = fadd double %0, -1.000000e+00, !dbg !303
  %46 = fdiv double %44, %45, !dbg !304
  %47 = tail call double @log(double noundef %46) #6, !dbg !305
  %48 = fmul double %43, %47, !dbg !306
  %49 = fadd double %48, -1.000000e+00, !dbg !307
  store double %49, ptr %1, align 8, !dbg !308, !tbaa !127
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !309
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !310
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !311
  store double %51, ptr %52, align 8, !dbg !312, !tbaa !132
  br label %82, !dbg !313

53:                                               ; preds = %40
  %54 = fmul double %0, 0x2000000000000000, !dbg !314
  %55 = fcmp olt double %54, 0x3FE24A5B5BE85B8F, !dbg !315
  br i1 %55, label %56, label %80, !dbg !316

56:                                               ; preds = %53
  %57 = fdiv double 1.000000e+00, %9, !dbg !317
  tail call void @llvm.dbg.value(metadata double %57, metadata !239, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 6.000000e-01, metadata !244, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FDB6DB6DB6DB6DB, metadata !245, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FD5555555555555, metadata !246, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FD1745D1745D174, metadata !247, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FCD89D89D89D89E, metadata !248, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !249, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FC6969696969697, metadata !250, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata double 0x3FC435E50D79435E, metadata !251, metadata !DIExpression()), !dbg !318
  %58 = fmul double %57, 0x3FC435E50D79435E, !dbg !319
  %59 = fadd double %58, 0x3FC6969696969697, !dbg !320
  %60 = fmul double %57, %59, !dbg !321
  %61 = fadd double %60, 2.000000e-01, !dbg !322
  %62 = fmul double %57, %61, !dbg !323
  %63 = fadd double %62, 0x3FCD89D89D89D89E, !dbg !324
  %64 = fmul double %57, %63, !dbg !325
  %65 = fadd double %64, 0x3FD1745D1745D174, !dbg !326
  %66 = fmul double %57, %65, !dbg !327
  %67 = fadd double %66, 0x3FD5555555555555, !dbg !328
  %68 = fmul double %57, %67, !dbg !329
  %69 = fadd double %68, 0x3FDB6DB6DB6DB6DB, !dbg !330
  %70 = fmul double %57, %69, !dbg !331
  %71 = fadd double %70, 6.000000e-01, !dbg !332
  %72 = fmul double %57, %71, !dbg !333
  %73 = fadd double %72, 1.000000e+00, !dbg !334
  tail call void @llvm.dbg.value(metadata double %73, metadata !252, metadata !DIExpression()), !dbg !318
  %74 = fmul double %0, 3.000000e+00, !dbg !335
  %75 = fmul double %74, %0, !dbg !336
  %76 = fdiv double %73, %75, !dbg !337
  store double %76, ptr %1, align 8, !dbg !338, !tbaa !127
  %77 = tail call double @llvm.fabs.f64(double %76), !dbg !339
  %78 = fmul double %77, 0x3CC0000000000000, !dbg !340
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !341
  store double %78, ptr %79, align 8, !dbg !342, !tbaa !132
  br label %82

80:                                               ; preds = %53
  store double 0.000000e+00, ptr %1, align 8, !dbg !343, !tbaa !127
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !343
  store double 0x10000000000000, ptr %81, align 8, !dbg !343, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef 15) #6, !dbg !346
  br label %82, !dbg !346

82:                                               ; preds = %6, %11, %29, %42, %56, %80
  %83 = phi i32 [ 1, %6 ], [ 0, %11 ], [ 0, %29 ], [ 0, %42 ], [ 0, %56 ], [ 15, %80 ], !dbg !348
  ret i32 %83, !dbg !349
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_Ql_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !350 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !385
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !386
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !387
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !388
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !358, metadata !DIExpression(), metadata !389, metadata ptr %8, metadata !DIExpression()), !dbg !390
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !365, metadata !DIExpression(), metadata !391, metadata ptr %9, metadata !DIExpression()), !dbg !390
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !392, metadata ptr %10, metadata !DIExpression()), !dbg !393
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !394, metadata ptr %11, metadata !DIExpression()), !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !355, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %1, metadata !356, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !396
  %12 = fcmp ole double %1, -1.000000e+00, !dbg !397
  %13 = fcmp oeq double %1, 1.000000e+00
  %14 = or i1 %12, %13, !dbg !398
  %15 = icmp slt i32 %0, 0
  %16 = or i1 %15, %14, !dbg !398
  br i1 %16, label %17, label %19, !dbg !398

17:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !399, !tbaa !127
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !399
  store double 0x7FF8000000000000, ptr %18, align 8, !dbg !399, !tbaa !132
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 1) #6, !dbg !402
  br label %308, !dbg !402

19:                                               ; preds = %3
  switch i32 %0, label %24 [
    i32 0, label %20
    i32 1, label %22
  ], !dbg !404

20:                                               ; preds = %19
  %21 = tail call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef %2), !dbg !405, !range !407
  br label %308, !dbg !408

22:                                               ; preds = %19
  %23 = tail call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef %2), !dbg !409, !range !407
  br label %308, !dbg !411

24:                                               ; preds = %19
  %25 = icmp ugt i32 %0, 100000, !dbg !412
  br i1 %25, label %26, label %138, !dbg !413

26:                                               ; preds = %24
  %27 = sitofp i32 %0 to double, !dbg !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !416, metadata !DIExpression(), metadata !385, metadata ptr %4, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !428, metadata !DIExpression(), metadata !386, metadata ptr %5, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !442, metadata !DIExpression(), metadata !387, metadata ptr %6, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !443, metadata !DIExpression(), metadata !388, metadata ptr %7, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata double %27, metadata !423, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata double %1, metadata !424, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !457
  %28 = fcmp olt double %1, 1.000000e+00, !dbg !458
  %29 = fadd double %27, 5.000000e-01, !dbg !459
  br i1 %28, label %30, label %88, !dbg !460

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %29, metadata !426, metadata !DIExpression()), !dbg !454
  %31 = tail call double @acos(double noundef %1) #6, !dbg !461
  call void @llvm.dbg.value(metadata double %31, metadata !427, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !462
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !462
  %32 = fcmp olt double %31, 0x3F20000000000000, !dbg !463
  br i1 %32, label %33, label %40, !dbg !464

33:                                               ; preds = %30
  %34 = fmul double %31, %31, !dbg !465
  %35 = fdiv double %34, 1.500000e+01, !dbg !467
  %36 = fadd double %35, 1.000000e+00, !dbg !468
  %37 = fdiv double %36, 2.400000e+01, !dbg !469
  call void @llvm.dbg.value(metadata double %37, metadata !433, metadata !DIExpression()), !dbg !454
  %38 = fdiv double %34, 1.200000e+01, !dbg !470
  %39 = fadd double %38, 1.000000e+00, !dbg !471
  call void @llvm.dbg.value(metadata double %39, metadata !432, metadata !DIExpression()), !dbg !454
  br label %52, !dbg !472

40:                                               ; preds = %30
  %41 = fmul double %1, %1, !dbg !473
  %42 = fsub double 1.000000e+00, %41, !dbg !474
  %43 = tail call double @sqrt(double noundef %42) #6, !dbg !475
  call void @llvm.dbg.value(metadata double %43, metadata !435, metadata !DIExpression()), !dbg !476
  %44 = fdiv double %1, %43, !dbg !477
  call void @llvm.dbg.value(metadata double %44, metadata !438, metadata !DIExpression()), !dbg !476
  %45 = fmul double %31, %44, !dbg !478
  %46 = fsub double 1.000000e+00, %45, !dbg !479
  %47 = fmul double %46, 1.250000e-01, !dbg !480
  %48 = fmul double %31, %31, !dbg !481
  %49 = fdiv double %47, %48, !dbg !482
  call void @llvm.dbg.value(metadata double %49, metadata !433, metadata !DIExpression()), !dbg !454
  %50 = fdiv double %31, %43, !dbg !483
  %51 = tail call double @sqrt(double noundef %50) #6, !dbg !484
  call void @llvm.dbg.value(metadata double %51, metadata !432, metadata !DIExpression()), !dbg !454
  br label %52

52:                                               ; preds = %40, %33
  %53 = phi double [ %37, %33 ], [ %49, %40 ], !dbg !485
  %54 = phi double [ %39, %33 ], [ %51, %40 ], !dbg !485
  call void @llvm.dbg.value(metadata double %54, metadata !432, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata double %53, metadata !433, metadata !DIExpression()), !dbg !454
  %55 = fmul double %29, %31, !dbg !486
  %56 = call i32 @gsl_sf_bessel_Y0_e(double noundef %55, ptr noundef nonnull %4) #6, !dbg !487
  call void @llvm.dbg.value(metadata i32 %56, metadata !429, metadata !DIExpression()), !dbg !454
  %57 = call i32 @gsl_sf_bessel_Y1_e(double noundef %55, ptr noundef nonnull %5) #6, !dbg !488
  call void @llvm.dbg.value(metadata i32 %57, metadata !430, metadata !DIExpression()), !dbg !454
  %58 = load double, ptr %4, align 8, !dbg !489, !tbaa !127
  %59 = fdiv double %31, %29, !dbg !490
  %60 = load double, ptr %5, align 8, !dbg !491, !tbaa !127
  %61 = fmul double %59, %60, !dbg !492
  %62 = fmul double %53, %61, !dbg !493
  %63 = fadd double %58, %62, !dbg !494
  %64 = fmul double %63, 0xBFF921FB54442D18, !dbg !495
  call void @llvm.dbg.value(metadata double %64, metadata !434, metadata !DIExpression()), !dbg !454
  %65 = call i32 @gsl_sf_multiply_e(double noundef %54, double noundef %64, ptr noundef %2) #6, !dbg !496
  call void @llvm.dbg.value(metadata i32 %65, metadata !431, metadata !DIExpression()), !dbg !454
  %66 = call double @llvm.fabs.f64(double %54), !dbg !497
  %67 = fmul double %66, 0x3FF921FB54442D18, !dbg !498
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !499
  %69 = load double, ptr %68, align 8, !dbg !499, !tbaa !132
  %70 = fmul double %59, %53, !dbg !500
  %71 = call double @llvm.fabs.f64(double %70), !dbg !501
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !502
  %73 = load double, ptr %72, align 8, !dbg !502, !tbaa !132
  %74 = fmul double %71, %73, !dbg !503
  %75 = fadd double %69, %74, !dbg !504
  %76 = fmul double %67, %75, !dbg !505
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !506
  %78 = load double, ptr %77, align 8, !dbg !507, !tbaa !132
  %79 = fadd double %78, %76, !dbg !507
  %80 = load double, ptr %2, align 8, !dbg !508, !tbaa !127
  %81 = call double @llvm.fabs.f64(double %80), !dbg !509
  %82 = fmul double %81, 0x3CB0000000000000, !dbg !510
  %83 = fadd double %79, %82, !dbg !511
  store double %83, ptr %77, align 8, !dbg !511, !tbaa !132
  %84 = icmp eq i32 %65, 0, !dbg !512
  %85 = icmp eq i32 %56, 0, !dbg !512
  %86 = select i1 %85, i32 %57, i32 %56, !dbg !512
  %87 = select i1 %84, i32 %86, i32 %65, !dbg !512
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !513
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !513
  br label %308

88:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double %29, metadata !439, metadata !DIExpression()), !dbg !456
  %89 = tail call double @acosh(double noundef %1) #6, !dbg !514
  call void @llvm.dbg.value(metadata double %89, metadata !441, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !515
  %90 = fcmp olt double %89, 0x3F20000000000000, !dbg !516
  br i1 %90, label %91, label %98, !dbg !517

91:                                               ; preds = %88
  %92 = fmul double %89, %89, !dbg !518
  %93 = fdiv double %92, 1.500000e+01, !dbg !520
  %94 = fsub double 1.000000e+00, %93, !dbg !521
  %95 = fdiv double %94, 2.400000e+01, !dbg !522
  call void @llvm.dbg.value(metadata double %95, metadata !448, metadata !DIExpression()), !dbg !456
  %96 = fdiv double %92, 1.200000e+01, !dbg !523
  %97 = fsub double 1.000000e+00, %96, !dbg !524
  call void @llvm.dbg.value(metadata double %97, metadata !447, metadata !DIExpression()), !dbg !456
  br label %110, !dbg !525

98:                                               ; preds = %88
  %99 = fmul double %1, %1, !dbg !526
  %100 = fadd double %99, -1.000000e+00, !dbg !527
  %101 = tail call double @sqrt(double noundef %100) #6, !dbg !528
  call void @llvm.dbg.value(metadata double %101, metadata !450, metadata !DIExpression()), !dbg !529
  %102 = fdiv double %1, %101, !dbg !530
  call void @llvm.dbg.value(metadata double %102, metadata !453, metadata !DIExpression()), !dbg !529
  %103 = fmul double %89, %102, !dbg !531
  %104 = fsub double 1.000000e+00, %103, !dbg !532
  %105 = fmul double %104, -1.250000e-01, !dbg !533
  %106 = fmul double %89, %89, !dbg !534
  %107 = fdiv double %105, %106, !dbg !535
  call void @llvm.dbg.value(metadata double %107, metadata !448, metadata !DIExpression()), !dbg !456
  %108 = fdiv double %89, %101, !dbg !536
  %109 = tail call double @sqrt(double noundef %108) #6, !dbg !537
  call void @llvm.dbg.value(metadata double %109, metadata !447, metadata !DIExpression()), !dbg !456
  br label %110

110:                                              ; preds = %98, %91
  %111 = phi double [ %97, %91 ], [ %109, %98 ], !dbg !538
  %112 = phi double [ %95, %91 ], [ %107, %98 ], !dbg !538
  call void @llvm.dbg.value(metadata double %112, metadata !448, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata double %111, metadata !447, metadata !DIExpression()), !dbg !456
  %113 = fmul double %29, %89, !dbg !539
  %114 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %113, ptr noundef nonnull %6) #6, !dbg !540
  call void @llvm.dbg.value(metadata i32 %114, metadata !444, metadata !DIExpression()), !dbg !456
  %115 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %113, ptr noundef nonnull %7) #6, !dbg !541
  call void @llvm.dbg.value(metadata i32 %115, metadata !445, metadata !DIExpression()), !dbg !456
  %116 = load double, ptr %6, align 8, !dbg !542, !tbaa !127
  %117 = fdiv double %89, %29, !dbg !543
  %118 = load double, ptr %7, align 8, !dbg !544, !tbaa !127
  %119 = fmul double %117, %118, !dbg !545
  %120 = fmul double %112, %119, !dbg !546
  %121 = fsub double %116, %120, !dbg !547
  call void @llvm.dbg.value(metadata double %121, metadata !449, metadata !DIExpression()), !dbg !456
  %122 = fneg double %29, !dbg !548
  %123 = fmul double %89, %122, !dbg !549
  %124 = fmul double %111, %121, !dbg !550
  %125 = call i32 @gsl_sf_exp_mult_e(double noundef %123, double noundef %124, ptr noundef %2) #6, !dbg !551
  call void @llvm.dbg.value(metadata i32 %125, metadata !446, metadata !DIExpression()), !dbg !456
  %126 = load double, ptr %2, align 8, !dbg !552, !tbaa !127
  %127 = call double @llvm.fabs.f64(double %126), !dbg !553
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !554
  %129 = call double @llvm.fabs.f64(double %113), !dbg !555
  %130 = fmul double %129, %128, !dbg !556
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !557
  %132 = fmul double %127, 0x3CC0000000000000, !dbg !558
  %133 = fadd double %132, %130, !dbg !559
  store double %133, ptr %131, align 8, !dbg !559, !tbaa !132
  %134 = icmp eq i32 %125, 0, !dbg !560
  %135 = icmp eq i32 %114, 0, !dbg !560
  %136 = select i1 %135, i32 %115, i32 %114, !dbg !560
  %137 = select i1 %134, i32 %136, i32 %125, !dbg !560
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !561
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !561
  br label %308

138:                                              ; preds = %24
  %139 = fcmp olt double %1, 1.000000e+00, !dbg !562
  br i1 %139, label %140, label %203, !dbg !563

140:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !564
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !564
  %141 = call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef nonnull %8), !dbg !565, !range !407
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !366, metadata !DIExpression()), !dbg !390
  %142 = call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef nonnull %9), !dbg !566, !range !407
  tail call void @llvm.dbg.value(metadata i32 %142, metadata !367, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double poison, metadata !368, metadata !DIExpression()), !dbg !390
  %143 = load double, ptr %9, align 8, !dbg !567, !tbaa !127
  tail call void @llvm.dbg.value(metadata double %143, metadata !369, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 1, metadata !371, metadata !DIExpression()), !dbg !390
  %144 = load double, ptr %8, align 8, !dbg !568, !tbaa !127
  tail call void @llvm.dbg.value(metadata double %144, metadata !368, metadata !DIExpression()), !dbg !390
  %145 = add nsw i32 %0, -1, !dbg !569
  %146 = and i32 %145, 1, !dbg !569
  %147 = icmp eq i32 %0, 2, !dbg !569
  br i1 %147, label %179, label %148, !dbg !569

148:                                              ; preds = %140
  %149 = and i32 %145, -2, !dbg !569
  br label %150, !dbg !569

150:                                              ; preds = %150, %148
  %151 = phi double [ %144, %148 ], [ %163, %150 ]
  %152 = phi i32 [ 1, %148 ], [ %174, %150 ]
  %153 = phi double [ %143, %148 ], [ %173, %150 ]
  %154 = phi i32 [ 0, %148 ], [ %175, %150 ]
  tail call void @llvm.dbg.value(metadata double %151, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %152, metadata !371, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %153, metadata !369, metadata !DIExpression()), !dbg !390
  %155 = sitofp i32 %152 to double, !dbg !571
  %156 = fmul double %155, 2.000000e+00, !dbg !574
  %157 = fadd double %156, 1.000000e+00, !dbg !575
  %158 = fmul double %157, %1, !dbg !576
  %159 = fmul double %153, %158, !dbg !577
  %160 = fmul double %151, %155, !dbg !578
  %161 = fsub double %159, %160, !dbg !579
  %162 = fadd double %155, 1.000000e+00, !dbg !580
  %163 = fdiv double %161, %162, !dbg !581
  tail call void @llvm.dbg.value(metadata double %163, metadata !370, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %153, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %163, metadata !369, metadata !DIExpression()), !dbg !390
  %164 = add nuw nsw i32 %152, 1, !dbg !582
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !371, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %153, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %164, metadata !371, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %163, metadata !369, metadata !DIExpression()), !dbg !390
  %165 = sitofp i32 %164 to double, !dbg !571
  %166 = fmul double %165, 2.000000e+00, !dbg !574
  %167 = fadd double %166, 1.000000e+00, !dbg !575
  %168 = fmul double %167, %1, !dbg !576
  %169 = fmul double %163, %168, !dbg !577
  %170 = fmul double %153, %165, !dbg !578
  %171 = fsub double %169, %170, !dbg !579
  %172 = fadd double %165, 1.000000e+00, !dbg !580
  %173 = fdiv double %171, %172, !dbg !581
  tail call void @llvm.dbg.value(metadata double %173, metadata !370, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %163, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %173, metadata !369, metadata !DIExpression()), !dbg !390
  %174 = add nuw nsw i32 %152, 2, !dbg !582
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !371, metadata !DIExpression()), !dbg !390
  %175 = add i32 %154, 2, !dbg !569
  %176 = icmp eq i32 %175, %149, !dbg !569
  br i1 %176, label %177, label %150, !dbg !569, !llvm.loop !583

177:                                              ; preds = %150
  %178 = sitofp i32 %174 to double, !dbg !571
  br label %179, !dbg !569

179:                                              ; preds = %177, %140
  %180 = phi double [ undef, %140 ], [ %173, %177 ]
  %181 = phi double [ %144, %140 ], [ %163, %177 ]
  %182 = phi double [ 1.000000e+00, %140 ], [ %178, %177 ]
  %183 = phi double [ %143, %140 ], [ %173, %177 ]
  %184 = icmp eq i32 %146, 0, !dbg !569
  br i1 %184, label %194, label %185, !dbg !569

185:                                              ; preds = %179
  tail call void @llvm.dbg.value(metadata double %181, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !371, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %183, metadata !369, metadata !DIExpression()), !dbg !390
  %186 = fmul double %182, 2.000000e+00, !dbg !574
  %187 = fadd double %186, 1.000000e+00, !dbg !575
  %188 = fmul double %187, %1, !dbg !576
  %189 = fmul double %183, %188, !dbg !577
  %190 = fmul double %181, %182, !dbg !578
  %191 = fsub double %189, %190, !dbg !579
  %192 = fadd double %182, 1.000000e+00, !dbg !580
  %193 = fdiv double %191, %192, !dbg !581
  tail call void @llvm.dbg.value(metadata double %193, metadata !370, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %183, metadata !368, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata double %193, metadata !369, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !371, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !390
  br label %194, !dbg !586

194:                                              ; preds = %179, %185
  %195 = phi double [ %180, %179 ], [ %193, %185 ], !dbg !581
  store double %195, ptr %2, align 8, !dbg !586, !tbaa !127
  %196 = sitofp i32 %0 to double, !dbg !587
  %197 = fmul double %196, 0x3CB0000000000000, !dbg !588
  %198 = tail call double @llvm.fabs.f64(double %195), !dbg !589
  %199 = fmul double %197, %198, !dbg !590
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !591
  store double %199, ptr %200, align 8, !dbg !592, !tbaa !132
  %201 = icmp eq i32 %141, 0, !dbg !593
  %202 = select i1 %201, i32 %142, i32 %141, !dbg !593
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !594
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !594
  br label %308

203:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 %0, metadata !595, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !601, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !602, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %1, metadata !603, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata ptr undef, metadata !604, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 0x5FEFFFFFFFFFFFFF, metadata !605, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 5000, metadata !606, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 1, metadata !607, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !608, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !609, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !610, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !611, metadata !DIExpression()), !dbg !623
  %204 = sitofp i32 %0 to double, !dbg !625
  %205 = fadd double %204, 1.000000e+00, !dbg !626
  call void @llvm.dbg.value(metadata double %205, metadata !612, metadata !DIExpression()), !dbg !623
  %206 = fmul double %205, 2.000000e+00, !dbg !627
  %207 = fadd double %206, 1.000000e+00, !dbg !628
  %208 = fmul double %207, %1, !dbg !629
  call void @llvm.dbg.value(metadata double %208, metadata !613, metadata !DIExpression()), !dbg !623
  %209 = fmul double %208, 0.000000e+00, !dbg !630
  %210 = fadd double %205, %209, !dbg !631
  call void @llvm.dbg.value(metadata double %210, metadata !614, metadata !DIExpression()), !dbg !623
  %211 = fmul double %205, 0.000000e+00, !dbg !632
  %212 = fadd double %211, %208, !dbg !633
  call void @llvm.dbg.value(metadata double %212, metadata !615, metadata !DIExpression()), !dbg !623
  %213 = fdiv double %210, %212, !dbg !634
  call void @llvm.dbg.value(metadata double %213, metadata !618, metadata !DIExpression()), !dbg !623
  br label %214, !dbg !635

214:                                              ; preds = %247, %203
  %215 = phi double [ 1.000000e+00, %203 ], [ %248, %247 ], !dbg !623
  %216 = phi double [ %210, %203 ], [ %249, %247 ], !dbg !623
  %217 = phi double [ %212, %203 ], [ %250, %247 ], !dbg !623
  %218 = phi double [ 0.000000e+00, %203 ], [ %251, %247 ], !dbg !623
  %219 = phi double [ %213, %203 ], [ %252, %247 ], !dbg !623
  %220 = phi i32 [ 1, %203 ], [ %223, %247 ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %220, metadata !607, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %219, metadata !618, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %218, metadata !610, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %217, metadata !615, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %216, metadata !614, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %215, metadata !611, metadata !DIExpression()), !dbg !623
  %221 = icmp eq i32 %220, 5000, !dbg !636
  br i1 %221, label %259, label %222, !dbg !635

222:                                              ; preds = %214
  %223 = add nuw nsw i32 %220, 1, !dbg !637
  call void @llvm.dbg.value(metadata i32 %223, metadata !607, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %218, metadata !608, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %215, metadata !609, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %216, metadata !610, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %217, metadata !611, metadata !DIExpression()), !dbg !623
  %224 = add nuw nsw i32 %223, %0, !dbg !638
  %225 = sitofp i32 %224 to double, !dbg !639
  call void @llvm.dbg.value(metadata double %225, metadata !622, metadata !DIExpression()), !dbg !640
  %226 = fmul double %225, %225, !dbg !641
  %227 = fsub double 0.000000e+00, %226, !dbg !642
  call void @llvm.dbg.value(metadata double %227, metadata !616, metadata !DIExpression()), !dbg !623
  %228 = fmul double %225, 2.000000e+00, !dbg !643
  %229 = fadd double %228, 1.000000e+00, !dbg !644
  %230 = fmul double %229, %1, !dbg !645
  call void @llvm.dbg.value(metadata double %230, metadata !617, metadata !DIExpression()), !dbg !623
  %231 = fmul double %216, %230, !dbg !646
  %232 = fmul double %218, %227, !dbg !647
  %233 = fadd double %232, %231, !dbg !648
  call void @llvm.dbg.value(metadata double %233, metadata !614, metadata !DIExpression()), !dbg !623
  %234 = fmul double %217, %230, !dbg !649
  %235 = fmul double %215, %227, !dbg !650
  %236 = fadd double %235, %234, !dbg !651
  call void @llvm.dbg.value(metadata double %236, metadata !615, metadata !DIExpression()), !dbg !623
  %237 = tail call double @llvm.fabs.f64(double %233), !dbg !652
  %238 = fcmp ogt double %237, 0x5FEFFFFFFFFFFFFF, !dbg !654
  %239 = tail call double @llvm.fabs.f64(double %236)
  %240 = fcmp ogt double %239, 0x5FEFFFFFFFFFFFFF
  %241 = select i1 %238, i1 true, i1 %240, !dbg !655
  br i1 %241, label %242, label %247, !dbg !655

242:                                              ; preds = %222
  %243 = fdiv double %233, 0x5FEFFFFFFFFFFFFF, !dbg !656
  call void @llvm.dbg.value(metadata double %243, metadata !614, metadata !DIExpression()), !dbg !623
  %244 = fdiv double %236, 0x5FEFFFFFFFFFFFFF, !dbg !658
  call void @llvm.dbg.value(metadata double %244, metadata !615, metadata !DIExpression()), !dbg !623
  %245 = fdiv double %216, 0x5FEFFFFFFFFFFFFF, !dbg !659
  call void @llvm.dbg.value(metadata double %245, metadata !610, metadata !DIExpression()), !dbg !623
  %246 = fdiv double %217, 0x5FEFFFFFFFFFFFFF, !dbg !660
  call void @llvm.dbg.value(metadata double %246, metadata !611, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double poison, metadata !608, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double poison, metadata !609, metadata !DIExpression()), !dbg !623
  br label %247, !dbg !661

247:                                              ; preds = %242, %222
  %248 = phi double [ %246, %242 ], [ %217, %222 ], !dbg !640
  %249 = phi double [ %243, %242 ], [ %233, %222 ], !dbg !640
  %250 = phi double [ %244, %242 ], [ %236, %222 ], !dbg !640
  %251 = phi double [ %245, %242 ], [ %216, %222 ], !dbg !640
  call void @llvm.dbg.value(metadata double %251, metadata !610, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %250, metadata !615, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %249, metadata !614, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %248, metadata !611, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %219, metadata !619, metadata !DIExpression()), !dbg !640
  %252 = fdiv double %249, %250, !dbg !662
  call void @llvm.dbg.value(metadata double %252, metadata !618, metadata !DIExpression()), !dbg !623
  %253 = fdiv double %219, %252, !dbg !663
  call void @llvm.dbg.value(metadata double %253, metadata !621, metadata !DIExpression()), !dbg !640
  %254 = fadd double %253, -1.000000e+00, !dbg !664
  %255 = tail call double @llvm.fabs.f64(double %254), !dbg !666
  %256 = fcmp olt double %255, 0x3CD0000000000000, !dbg !667
  br i1 %256, label %257, label %214

257:                                              ; preds = %247
  call void @llvm.dbg.value(metadata i32 %223, metadata !607, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata double %252, metadata !618, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata double %252, metadata !372, metadata !DIExpression()), !dbg !668
  %258 = icmp eq i32 %223, 5000, !dbg !669
  br i1 %258, label %259, label %261, !dbg !671

259:                                              ; preds = %214, %257
  %260 = phi double [ %252, %257 ], [ %219, %214 ], !dbg !672
  tail call void @llvm.dbg.value(metadata double %260, metadata !372, metadata !DIExpression()), !dbg !668
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 11) #6, !dbg !673
  br label %261, !dbg !673

261:                                              ; preds = %257, %259
  %262 = phi double [ %260, %259 ], [ %252, %257 ], !dbg !672
  %263 = phi i32 [ 11, %259 ], [ 0, %257 ], !dbg !675
  tail call void @llvm.dbg.value(metadata double %262, metadata !372, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %263, metadata !374, metadata !DIExpression()), !dbg !668
  %264 = fmul double %262, 0x2000000000000000, !dbg !676
  tail call void @llvm.dbg.value(metadata double %264, metadata !376, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !377, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !379, metadata !DIExpression()), !dbg !668
  %265 = icmp eq i32 %0, 0, !dbg !677
  br i1 %265, label %281, label %266, !dbg !680

266:                                              ; preds = %261, %266
  %267 = phi i32 [ %279, %266 ], [ %0, %261 ]
  %268 = phi double [ %278, %266 ], [ 0x2000000000000000, %261 ]
  %269 = phi double [ %268, %266 ], [ %264, %261 ]
  tail call void @llvm.dbg.value(metadata i32 %267, metadata !379, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata double %268, metadata !377, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata double %269, metadata !376, metadata !DIExpression()), !dbg !668
  %270 = sitofp i32 %267 to double, !dbg !681
  %271 = fmul double %270, 2.000000e+00, !dbg !683
  %272 = fadd double %271, 1.000000e+00, !dbg !684
  %273 = fmul double %272, %1, !dbg !685
  %274 = fmul double %268, %273, !dbg !686
  %275 = fadd double %270, 1.000000e+00, !dbg !687
  %276 = fmul double %269, %275, !dbg !688
  %277 = fsub double %274, %276, !dbg !689
  %278 = fdiv double %277, %270, !dbg !690
  tail call void @llvm.dbg.value(metadata double %278, metadata !378, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata double %268, metadata !376, metadata !DIExpression()), !dbg !668
  tail call void @llvm.dbg.value(metadata double %278, metadata !377, metadata !DIExpression()), !dbg !668
  %279 = add nsw i32 %267, -1, !dbg !691
  tail call void @llvm.dbg.value(metadata i32 %279, metadata !379, metadata !DIExpression()), !dbg !668
  %280 = icmp sgt i32 %267, 1, !dbg !677
  br i1 %280, label %266, label %281, !dbg !680, !llvm.loop !692

281:                                              ; preds = %266, %261
  %282 = phi double [ %264, %261 ], [ %268, %266 ], !dbg !668
  %283 = phi double [ 0x2000000000000000, %261 ], [ %278, %266 ], !dbg !668
  %284 = tail call double @llvm.fabs.f64(double %283), !dbg !694
  %285 = tail call double @llvm.fabs.f64(double %282), !dbg !695
  %286 = fcmp ogt double %284, %285, !dbg !696
  %287 = fmul double %204, 0x3CB0000000000000, !dbg !697
  br i1 %286, label %288, label %294, !dbg !698

288:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !699
  %289 = call i32 @gsl_sf_legendre_Q0_e(double noundef %1, ptr noundef nonnull %10), !dbg !700, !range !407
  tail call void @llvm.dbg.value(metadata i32 %289, metadata !375, metadata !DIExpression()), !dbg !668
  %290 = load double, ptr %10, align 8, !dbg !701, !tbaa !127
  %291 = fmul double %290, 0x2000000000000000, !dbg !702
  %292 = fdiv double %291, %283, !dbg !703
  %293 = tail call double @llvm.fabs.f64(double %292), !dbg !704
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !705
  br label %300, !dbg !706

294:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !707
  %295 = call i32 @gsl_sf_legendre_Q1_e(double noundef %1, ptr noundef nonnull %11), !dbg !708, !range !407
  tail call void @llvm.dbg.value(metadata i32 %295, metadata !375, metadata !DIExpression()), !dbg !668
  %296 = load double, ptr %11, align 8, !dbg !709, !tbaa !127
  %297 = fmul double %296, 0x2000000000000000, !dbg !710
  %298 = fdiv double %297, %282, !dbg !711
  %299 = tail call double @llvm.fabs.f64(double %298), !dbg !712
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !713
  br label %300

300:                                              ; preds = %294, %288
  %301 = phi double [ %292, %288 ], [ %298, %294 ], !dbg !697
  %302 = phi double [ %293, %288 ], [ %299, %294 ]
  %303 = phi i32 [ %289, %288 ], [ %295, %294 ], !dbg !697
  %304 = fmul double %287, %302, !dbg !697
  store double %301, ptr %2, align 8, !dbg !697
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !697
  store double %304, ptr %305, align 8, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %303, metadata !375, metadata !DIExpression()), !dbg !668
  %306 = icmp eq i32 %303, 0, !dbg !714
  %307 = select i1 %306, i32 %263, i32 %303, !dbg !714
  br label %308

308:                                              ; preds = %110, %52, %17, %20, %22, %194, %300
  %309 = phi i32 [ 1, %17 ], [ %21, %20 ], [ %23, %22 ], [ %202, %194 ], [ %307, %300 ], [ %87, %52 ], [ %137, %110 ], !dbg !715
  ret i32 %309, !dbg !716
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Q0(double noundef %0) local_unnamed_addr #0 !dbg !717 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !724
  call void @llvm.dbg.assign(metadata i1 undef, metadata !722, metadata !DIExpression(), metadata !724, metadata ptr %2, metadata !DIExpression()), !dbg !725
  tail call void @llvm.dbg.value(metadata double %0, metadata !721, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !726
  %3 = call i32 @gsl_sf_legendre_Q0_e(double noundef %0, ptr noundef nonnull %2), !dbg !726, !range !407
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !723, metadata !DIExpression()), !dbg !725
  %4 = icmp eq i32 %3, 0, !dbg !727
  br i1 %4, label %6, label %5, !dbg !726

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 355, i32 noundef %3) #6, !dbg !729
  br label %6, !dbg !729

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !726, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !732
  ret double %7, !dbg !732
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Q1(double noundef %0) local_unnamed_addr #0 !dbg !733 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !738
  call void @llvm.dbg.assign(metadata i1 undef, metadata !736, metadata !DIExpression(), metadata !738, metadata ptr %2, metadata !DIExpression()), !dbg !739
  tail call void @llvm.dbg.value(metadata double %0, metadata !735, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !740
  %3 = call i32 @gsl_sf_legendre_Q1_e(double noundef %0, ptr noundef nonnull %2), !dbg !740, !range !407
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !737, metadata !DIExpression()), !dbg !739
  %4 = icmp eq i32 %3, 0, !dbg !741
  br i1 %4, label %6, label %5, !dbg !740

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef %3) #6, !dbg !743
  br label %6, !dbg !743

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !740, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !746
  ret double %7, !dbg !746
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_Ql(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !747 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !753, metadata !DIExpression(), metadata !755, metadata ptr %3, metadata !DIExpression()), !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !751, metadata !DIExpression()), !dbg !756
  tail call void @llvm.dbg.value(metadata double %1, metadata !752, metadata !DIExpression()), !dbg !756
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !757
  %4 = call i32 @gsl_sf_legendre_Ql_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !754, metadata !DIExpression()), !dbg !756
  %5 = icmp eq i32 %4, 0, !dbg !758
  br i1 %5, label %7, label %6, !dbg !757

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 365, i32 noundef %4) #6, !dbg !760
  br label %7, !dbg !760

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !757, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !763
  ret double %8, !dbg !763
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !764 double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !765 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !766 i32 @gsl_sf_bessel_Y0_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !768 i32 @gsl_sf_bessel_Y1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !769 i32 @gsl_sf_multiply_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !771 double @acosh(double noundef) local_unnamed_addr #4

declare !dbg !772 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !773 i32 @gsl_sf_bessel_K1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !774 i32 @gsl_sf_exp_mult_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!140 = !DILocation(line: 194, column: 63, scope: !100)
!141 = !DILocation(line: 194, column: 58, scope: !100)
!142 = !DILocation(line: 194, column: 55, scope: !100)
!143 = !DILocation(line: 194, column: 50, scope: !100)
!144 = !DILocation(line: 194, column: 47, scope: !100)
!145 = !DILocation(line: 194, column: 42, scope: !100)
!146 = !DILocation(line: 194, column: 39, scope: !100)
!147 = !DILocation(line: 194, column: 34, scope: !100)
!148 = !DILocation(line: 194, column: 31, scope: !100)
!149 = !DILocation(line: 195, column: 21, scope: !100)
!150 = !DILocation(line: 195, column: 17, scope: !100)
!151 = !DILocation(line: 196, column: 43, scope: !100)
!152 = !DILocation(line: 196, column: 41, scope: !100)
!153 = !DILocation(line: 196, column: 13, scope: !100)
!154 = !DILocation(line: 196, column: 17, scope: !100)
!155 = !DILocation(line: 199, column: 13, scope: !113)
!156 = !DILocation(line: 199, column: 11, scope: !101)
!157 = !DILocation(line: 200, column: 33, scope: !158)
!158 = distinct !DILexicalBlock(scope: !113, file: !2, line: 199, column: 20)
!159 = !DILocation(line: 200, column: 41, scope: !158)
!160 = !DILocation(line: 200, column: 36, scope: !158)
!161 = !DILocation(line: 200, column: 25, scope: !158)
!162 = !DILocation(line: 200, column: 23, scope: !158)
!163 = !DILocation(line: 200, column: 17, scope: !158)
!164 = !DILocation(line: 201, column: 44, scope: !158)
!165 = !DILocation(line: 201, column: 42, scope: !158)
!166 = !DILocation(line: 201, column: 13, scope: !158)
!167 = !DILocation(line: 201, column: 18, scope: !158)
!168 = !DILocation(line: 202, column: 5, scope: !158)
!169 = !DILocation(line: 204, column: 13, scope: !112)
!170 = !DILocation(line: 204, column: 11, scope: !113)
!171 = !DILocation(line: 205, column: 31, scope: !172)
!172 = distinct !DILexicalBlock(scope: !112, file: !2, line: 204, column: 21)
!173 = !DILocation(line: 205, column: 39, scope: !172)
!174 = !DILocation(line: 205, column: 36, scope: !172)
!175 = !DILocation(line: 205, column: 25, scope: !172)
!176 = !DILocation(line: 205, column: 23, scope: !172)
!177 = !DILocation(line: 205, column: 17, scope: !172)
!178 = !DILocation(line: 206, column: 43, scope: !172)
!179 = !DILocation(line: 206, column: 41, scope: !172)
!180 = !DILocation(line: 206, column: 13, scope: !172)
!181 = !DILocation(line: 206, column: 17, scope: !172)
!182 = !DILocation(line: 207, column: 5, scope: !172)
!183 = !DILocation(line: 209, column: 12, scope: !111)
!184 = !DILocation(line: 209, column: 25, scope: !111)
!185 = !DILocation(line: 209, column: 11, scope: !112)
!186 = !DILocation(line: 210, column: 25, scope: !110)
!187 = !DILocation(line: 0, scope: !110)
!188 = !DILocation(line: 218, column: 23, scope: !110)
!189 = !DILocation(line: 218, column: 85, scope: !110)
!190 = !DILocation(line: 218, column: 82, scope: !110)
!191 = !DILocation(line: 218, column: 77, scope: !110)
!192 = !DILocation(line: 218, column: 74, scope: !110)
!193 = !DILocation(line: 218, column: 69, scope: !110)
!194 = !DILocation(line: 218, column: 66, scope: !110)
!195 = !DILocation(line: 218, column: 61, scope: !110)
!196 = !DILocation(line: 218, column: 58, scope: !110)
!197 = !DILocation(line: 218, column: 53, scope: !110)
!198 = !DILocation(line: 218, column: 50, scope: !110)
!199 = !DILocation(line: 218, column: 45, scope: !110)
!200 = !DILocation(line: 218, column: 42, scope: !110)
!201 = !DILocation(line: 218, column: 37, scope: !110)
!202 = !DILocation(line: 218, column: 34, scope: !110)
!203 = !DILocation(line: 218, column: 27, scope: !110)
!204 = !DILocation(line: 218, column: 17, scope: !110)
!205 = !DILocation(line: 219, column: 43, scope: !110)
!206 = !DILocation(line: 219, column: 41, scope: !110)
!207 = !DILocation(line: 219, column: 13, scope: !110)
!208 = !DILocation(line: 219, column: 17, scope: !110)
!209 = !DILocation(line: 223, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 223, column: 5)
!211 = distinct !DILexicalBlock(scope: !111, file: !2, line: 222, column: 8)
!212 = !DILocation(line: 223, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 223, column: 5)
!214 = !DILocation(line: 0, scope: !102)
!215 = !DILocation(line: 225, column: 1, scope: !84)
!216 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !219, !38, !38}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!221 = !DISubprogram(name: "log", scope: !222, file: !222, line: 104, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!223 = !DISubroutineType(types: !224)
!224 = !{!88, !88}
!225 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1_e", scope: !2, file: !2, line: 229, type: !85, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !226)
!226 = !{!227, !228, !229, !233, !234, !235, !236, !237, !238, !239, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!227 = !DILocalVariable(name: "x", arg: 1, scope: !225, file: !2, line: 229, type: !87)
!228 = !DILocalVariable(name: "result", arg: 2, scope: !225, file: !2, line: 229, type: !89)
!229 = !DILocalVariable(name: "c3", scope: !230, file: !2, line: 237, type: !87)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 236, column: 40)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 236, column: 11)
!232 = distinct !DILexicalBlock(scope: !225, file: !2, line: 233, column: 6)
!233 = !DILocalVariable(name: "c5", scope: !230, file: !2, line: 238, type: !87)
!234 = !DILocalVariable(name: "c7", scope: !230, file: !2, line: 239, type: !87)
!235 = !DILocalVariable(name: "c9", scope: !230, file: !2, line: 240, type: !87)
!236 = !DILocalVariable(name: "c11", scope: !230, file: !2, line: 241, type: !87)
!237 = !DILocalVariable(name: "y", scope: !230, file: !2, line: 242, type: !87)
!238 = !DILocalVariable(name: "series", scope: !230, file: !2, line: 243, type: !87)
!239 = !DILocalVariable(name: "y", scope: !240, file: !2, line: 259, type: !87)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 258, column: 46)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 258, column: 11)
!242 = distinct !DILexicalBlock(scope: !243, file: !2, line: 253, column: 11)
!243 = distinct !DILexicalBlock(scope: !231, file: !2, line: 248, column: 11)
!244 = !DILocalVariable(name: "c1", scope: !240, file: !2, line: 260, type: !87)
!245 = !DILocalVariable(name: "c2", scope: !240, file: !2, line: 261, type: !87)
!246 = !DILocalVariable(name: "c3", scope: !240, file: !2, line: 262, type: !87)
!247 = !DILocalVariable(name: "c4", scope: !240, file: !2, line: 263, type: !87)
!248 = !DILocalVariable(name: "c5", scope: !240, file: !2, line: 264, type: !87)
!249 = !DILocalVariable(name: "c6", scope: !240, file: !2, line: 265, type: !87)
!250 = !DILocalVariable(name: "c7", scope: !240, file: !2, line: 266, type: !87)
!251 = !DILocalVariable(name: "c8", scope: !240, file: !2, line: 267, type: !87)
!252 = !DILocalVariable(name: "sum", scope: !240, file: !2, line: 268, type: !87)
!253 = !DILocation(line: 0, scope: !225)
!254 = !DILocation(line: 233, column: 8, scope: !232)
!255 = !DILocation(line: 233, column: 16, scope: !232)
!256 = !DILocation(line: 234, column: 5, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 234, column: 5)
!258 = distinct !DILexicalBlock(scope: !232, file: !2, line: 233, column: 29)
!259 = !DILocation(line: 234, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !2, line: 234, column: 5)
!261 = !DILocation(line: 236, column: 12, scope: !231)
!262 = !DILocation(line: 236, column: 15, scope: !231)
!263 = !DILocation(line: 236, column: 11, scope: !232)
!264 = !DILocation(line: 0, scope: !230)
!265 = !DILocation(line: 243, column: 66, scope: !230)
!266 = !DILocation(line: 243, column: 63, scope: !230)
!267 = !DILocation(line: 243, column: 58, scope: !230)
!268 = !DILocation(line: 243, column: 55, scope: !230)
!269 = !DILocation(line: 243, column: 50, scope: !230)
!270 = !DILocation(line: 243, column: 47, scope: !230)
!271 = !DILocation(line: 243, column: 42, scope: !230)
!272 = !DILocation(line: 243, column: 39, scope: !230)
!273 = !DILocation(line: 243, column: 34, scope: !230)
!274 = !DILocation(line: 243, column: 31, scope: !230)
!275 = !DILocation(line: 244, column: 25, scope: !230)
!276 = !DILocation(line: 244, column: 34, scope: !230)
!277 = !DILocation(line: 244, column: 17, scope: !230)
!278 = !DILocation(line: 245, column: 43, scope: !230)
!279 = !DILocation(line: 245, column: 41, scope: !230)
!280 = !DILocation(line: 245, column: 13, scope: !230)
!281 = !DILocation(line: 245, column: 17, scope: !230)
!282 = !DILocation(line: 248, column: 13, scope: !243)
!283 = !DILocation(line: 248, column: 11, scope: !231)
!284 = !DILocation(line: 249, column: 23, scope: !285)
!285 = distinct !DILexicalBlock(scope: !243, file: !2, line: 248, column: 19)
!286 = !DILocation(line: 249, column: 38, scope: !285)
!287 = !DILocation(line: 249, column: 46, scope: !285)
!288 = !DILocation(line: 249, column: 41, scope: !285)
!289 = !DILocation(line: 249, column: 30, scope: !285)
!290 = !DILocation(line: 249, column: 27, scope: !285)
!291 = !DILocation(line: 249, column: 52, scope: !285)
!292 = !DILocation(line: 249, column: 17, scope: !285)
!293 = !DILocation(line: 250, column: 44, scope: !285)
!294 = !DILocation(line: 250, column: 42, scope: !285)
!295 = !DILocation(line: 250, column: 13, scope: !285)
!296 = !DILocation(line: 250, column: 18, scope: !285)
!297 = !DILocation(line: 251, column: 5, scope: !285)
!298 = !DILocation(line: 253, column: 13, scope: !242)
!299 = !DILocation(line: 253, column: 11, scope: !243)
!300 = !DILocation(line: 254, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !242, file: !2, line: 253, column: 20)
!302 = !DILocation(line: 254, column: 35, scope: !301)
!303 = !DILocation(line: 254, column: 43, scope: !301)
!304 = !DILocation(line: 254, column: 40, scope: !301)
!305 = !DILocation(line: 254, column: 29, scope: !301)
!306 = !DILocation(line: 254, column: 27, scope: !301)
!307 = !DILocation(line: 254, column: 50, scope: !301)
!308 = !DILocation(line: 254, column: 17, scope: !301)
!309 = !DILocation(line: 255, column: 43, scope: !301)
!310 = !DILocation(line: 255, column: 41, scope: !301)
!311 = !DILocation(line: 255, column: 13, scope: !301)
!312 = !DILocation(line: 255, column: 17, scope: !301)
!313 = !DILocation(line: 256, column: 5, scope: !301)
!314 = !DILocation(line: 258, column: 12, scope: !241)
!315 = !DILocation(line: 258, column: 30, scope: !241)
!316 = !DILocation(line: 258, column: 11, scope: !242)
!317 = !DILocation(line: 259, column: 23, scope: !240)
!318 = !DILocation(line: 0, scope: !240)
!319 = !DILocation(line: 268, column: 87, scope: !240)
!320 = !DILocation(line: 268, column: 84, scope: !240)
!321 = !DILocation(line: 268, column: 79, scope: !240)
!322 = !DILocation(line: 268, column: 76, scope: !240)
!323 = !DILocation(line: 268, column: 71, scope: !240)
!324 = !DILocation(line: 268, column: 68, scope: !240)
!325 = !DILocation(line: 268, column: 63, scope: !240)
!326 = !DILocation(line: 268, column: 60, scope: !240)
!327 = !DILocation(line: 268, column: 55, scope: !240)
!328 = !DILocation(line: 268, column: 52, scope: !240)
!329 = !DILocation(line: 268, column: 47, scope: !240)
!330 = !DILocation(line: 268, column: 44, scope: !240)
!331 = !DILocation(line: 268, column: 39, scope: !240)
!332 = !DILocation(line: 268, column: 36, scope: !240)
!333 = !DILocation(line: 268, column: 31, scope: !240)
!334 = !DILocation(line: 268, column: 28, scope: !240)
!335 = !DILocation(line: 269, column: 29, scope: !240)
!336 = !DILocation(line: 269, column: 31, scope: !240)
!337 = !DILocation(line: 269, column: 23, scope: !240)
!338 = !DILocation(line: 269, column: 17, scope: !240)
!339 = !DILocation(line: 270, column: 43, scope: !240)
!340 = !DILocation(line: 270, column: 41, scope: !240)
!341 = !DILocation(line: 270, column: 13, scope: !240)
!342 = !DILocation(line: 270, column: 17, scope: !240)
!343 = !DILocation(line: 274, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !2, line: 274, column: 5)
!345 = distinct !DILexicalBlock(scope: !241, file: !2, line: 273, column: 8)
!346 = !DILocation(line: 274, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !2, line: 274, column: 5)
!348 = !DILocation(line: 0, scope: !232)
!349 = !DILocation(line: 276, column: 1, scope: !225)
!350 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql_e", scope: !2, file: !2, line: 280, type: !351, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !354)
!351 = !DISubroutineType(types: !352)
!352 = !{!38, !353, !87, !89}
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!354 = !{!355, !356, !357, !358, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375, !376, !377, !378, !379, !380, !383}
!355 = !DILocalVariable(name: "l", arg: 1, scope: !350, file: !2, line: 280, type: !353)
!356 = !DILocalVariable(name: "x", arg: 2, scope: !350, file: !2, line: 280, type: !87)
!357 = !DILocalVariable(name: "result", arg: 3, scope: !350, file: !2, line: 280, type: !89)
!358 = !DILocalVariable(name: "Q0", scope: !359, file: !2, line: 299, type: !90)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 296, column: 19)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 296, column: 11)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 293, column: 11)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 290, column: 11)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 287, column: 11)
!364 = distinct !DILexicalBlock(scope: !350, file: !2, line: 284, column: 6)
!365 = !DILocalVariable(name: "Q1", scope: !359, file: !2, line: 299, type: !90)
!366 = !DILocalVariable(name: "stat_Q0", scope: !359, file: !2, line: 300, type: !38)
!367 = !DILocalVariable(name: "stat_Q1", scope: !359, file: !2, line: 301, type: !38)
!368 = !DILocalVariable(name: "Qellm1", scope: !359, file: !2, line: 302, type: !88)
!369 = !DILocalVariable(name: "Qell", scope: !359, file: !2, line: 303, type: !88)
!370 = !DILocalVariable(name: "Qellp1", scope: !359, file: !2, line: 304, type: !88)
!371 = !DILocalVariable(name: "ell", scope: !359, file: !2, line: 305, type: !38)
!372 = !DILocalVariable(name: "rat", scope: !373, file: !2, line: 318, type: !88)
!373 = distinct !DILexicalBlock(scope: !360, file: !2, line: 315, column: 8)
!374 = !DILocalVariable(name: "stat_CF1", scope: !373, file: !2, line: 319, type: !38)
!375 = !DILocalVariable(name: "stat_Q", scope: !373, file: !2, line: 320, type: !38)
!376 = !DILocalVariable(name: "Qellp1", scope: !373, file: !2, line: 321, type: !88)
!377 = !DILocalVariable(name: "Qell", scope: !373, file: !2, line: 322, type: !88)
!378 = !DILocalVariable(name: "Qellm1", scope: !373, file: !2, line: 323, type: !88)
!379 = !DILocalVariable(name: "ell", scope: !373, file: !2, line: 324, type: !38)
!380 = !DILocalVariable(name: "Q0", scope: !381, file: !2, line: 332, type: !90)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 331, column: 35)
!382 = distinct !DILexicalBlock(scope: !373, file: !2, line: 331, column: 8)
!383 = !DILocalVariable(name: "Q1", scope: !384, file: !2, line: 338, type: !90)
!384 = distinct !DILexicalBlock(scope: !382, file: !2, line: 337, column: 10)
!385 = distinct !DIAssignID()
!386 = distinct !DIAssignID()
!387 = distinct !DIAssignID()
!388 = distinct !DIAssignID()
!389 = distinct !DIAssignID()
!390 = !DILocation(line: 0, scope: !359)
!391 = distinct !DIAssignID()
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !381)
!394 = distinct !DIAssignID()
!395 = !DILocation(line: 0, scope: !384)
!396 = !DILocation(line: 0, scope: !350)
!397 = !DILocation(line: 284, column: 8, scope: !364)
!398 = !DILocation(line: 284, column: 16, scope: !364)
!399 = !DILocation(line: 285, column: 5, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 285, column: 5)
!401 = distinct !DILexicalBlock(scope: !364, file: !2, line: 284, column: 38)
!402 = !DILocation(line: 285, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !2, line: 285, column: 5)
!404 = !DILocation(line: 287, column: 11, scope: !364)
!405 = !DILocation(line: 288, column: 12, scope: !406)
!406 = distinct !DILexicalBlock(scope: !363, file: !2, line: 287, column: 19)
!407 = !{i32 0, i32 16}
!408 = !DILocation(line: 288, column: 5, scope: !406)
!409 = !DILocation(line: 291, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !362, file: !2, line: 290, column: 19)
!411 = !DILocation(line: 291, column: 5, scope: !410)
!412 = !DILocation(line: 293, column: 13, scope: !361)
!413 = !DILocation(line: 293, column: 11, scope: !362)
!414 = !DILocation(line: 294, column: 35, scope: !415)
!415 = distinct !DILexicalBlock(scope: !361, file: !2, line: 293, column: 23)
!416 = !DILocalVariable(name: "Y0", scope: !417, file: !2, line: 106, type: !90)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 103, column: 15)
!418 = distinct !DILexicalBlock(scope: !419, file: !2, line: 103, column: 6)
!419 = distinct !DISubprogram(name: "legendre_Ql_asymp_unif", scope: !2, file: !2, line: 101, type: !420, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!38, !87, !87, !89}
!422 = !{!423, !424, !425, !426, !427, !416, !428, !429, !430, !431, !432, !433, !434, !435, !438, !439, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !453}
!423 = !DILocalVariable(name: "ell", arg: 1, scope: !419, file: !2, line: 101, type: !87)
!424 = !DILocalVariable(name: "x", arg: 2, scope: !419, file: !2, line: 101, type: !87)
!425 = !DILocalVariable(name: "result", arg: 3, scope: !419, file: !2, line: 101, type: !89)
!426 = !DILocalVariable(name: "u", scope: !417, file: !2, line: 104, type: !88)
!427 = !DILocalVariable(name: "th", scope: !417, file: !2, line: 105, type: !88)
!428 = !DILocalVariable(name: "Y1", scope: !417, file: !2, line: 106, type: !90)
!429 = !DILocalVariable(name: "stat_Y0", scope: !417, file: !2, line: 107, type: !38)
!430 = !DILocalVariable(name: "stat_Y1", scope: !417, file: !2, line: 107, type: !38)
!431 = !DILocalVariable(name: "stat_m", scope: !417, file: !2, line: 108, type: !38)
!432 = !DILocalVariable(name: "pre", scope: !417, file: !2, line: 109, type: !88)
!433 = !DILocalVariable(name: "B00", scope: !417, file: !2, line: 110, type: !88)
!434 = !DILocalVariable(name: "sum", scope: !417, file: !2, line: 111, type: !88)
!435 = !DILocalVariable(name: "sin_th", scope: !436, file: !2, line: 121, type: !88)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 120, column: 10)
!437 = distinct !DILexicalBlock(scope: !417, file: !2, line: 116, column: 8)
!438 = !DILocalVariable(name: "cot_th", scope: !436, file: !2, line: 122, type: !88)
!439 = !DILocalVariable(name: "u", scope: !440, file: !2, line: 139, type: !88)
!440 = distinct !DILexicalBlock(scope: !418, file: !2, line: 138, column: 8)
!441 = !DILocalVariable(name: "xi", scope: !440, file: !2, line: 140, type: !88)
!442 = !DILocalVariable(name: "K0_scaled", scope: !440, file: !2, line: 141, type: !90)
!443 = !DILocalVariable(name: "K1_scaled", scope: !440, file: !2, line: 141, type: !90)
!444 = !DILocalVariable(name: "stat_K0", scope: !440, file: !2, line: 142, type: !38)
!445 = !DILocalVariable(name: "stat_K1", scope: !440, file: !2, line: 142, type: !38)
!446 = !DILocalVariable(name: "stat_e", scope: !440, file: !2, line: 143, type: !38)
!447 = !DILocalVariable(name: "pre", scope: !440, file: !2, line: 144, type: !88)
!448 = !DILocalVariable(name: "B00", scope: !440, file: !2, line: 145, type: !88)
!449 = !DILocalVariable(name: "sum", scope: !440, file: !2, line: 146, type: !88)
!450 = !DILocalVariable(name: "sinh_xi", scope: !451, file: !2, line: 156, type: !88)
!451 = distinct !DILexicalBlock(scope: !452, file: !2, line: 155, column: 10)
!452 = distinct !DILexicalBlock(scope: !440, file: !2, line: 151, column: 8)
!453 = !DILocalVariable(name: "coth_xi", scope: !451, file: !2, line: 157, type: !88)
!454 = !DILocation(line: 0, scope: !417, inlinedAt: !455)
!455 = distinct !DILocation(line: 294, column: 12, scope: !415)
!456 = !DILocation(line: 0, scope: !440, inlinedAt: !455)
!457 = !DILocation(line: 0, scope: !419, inlinedAt: !455)
!458 = !DILocation(line: 103, column: 8, scope: !418, inlinedAt: !455)
!459 = !DILocation(line: 0, scope: !418, inlinedAt: !455)
!460 = !DILocation(line: 103, column: 6, scope: !419, inlinedAt: !455)
!461 = !DILocation(line: 105, column: 18, scope: !417, inlinedAt: !455)
!462 = !DILocation(line: 106, column: 5, scope: !417, inlinedAt: !455)
!463 = !DILocation(line: 116, column: 11, scope: !437, inlinedAt: !455)
!464 = !DILocation(line: 116, column: 8, scope: !417, inlinedAt: !455)
!465 = !DILocation(line: 117, column: 22, scope: !466, inlinedAt: !455)
!466 = distinct !DILexicalBlock(scope: !437, file: !2, line: 116, column: 36)
!467 = !DILocation(line: 117, column: 25, scope: !466, inlinedAt: !455)
!468 = !DILocation(line: 117, column: 18, scope: !466, inlinedAt: !455)
!469 = !DILocation(line: 117, column: 31, scope: !466, inlinedAt: !455)
!470 = !DILocation(line: 118, column: 24, scope: !466, inlinedAt: !455)
!471 = !DILocation(line: 118, column: 17, scope: !466, inlinedAt: !455)
!472 = !DILocation(line: 119, column: 5, scope: !466, inlinedAt: !455)
!473 = !DILocation(line: 121, column: 35, scope: !436, inlinedAt: !455)
!474 = !DILocation(line: 121, column: 32, scope: !436, inlinedAt: !455)
!475 = !DILocation(line: 121, column: 23, scope: !436, inlinedAt: !455)
!476 = !DILocation(line: 0, scope: !436, inlinedAt: !455)
!477 = !DILocation(line: 122, column: 25, scope: !436, inlinedAt: !455)
!478 = !DILocation(line: 123, column: 33, scope: !436, inlinedAt: !455)
!479 = !DILocation(line: 123, column: 28, scope: !436, inlinedAt: !455)
!480 = !DILocation(line: 123, column: 21, scope: !436, inlinedAt: !455)
!481 = !DILocation(line: 123, column: 48, scope: !436, inlinedAt: !455)
!482 = !DILocation(line: 123, column: 43, scope: !436, inlinedAt: !455)
!483 = !DILocation(line: 124, column: 20, scope: !436, inlinedAt: !455)
!484 = !DILocation(line: 124, column: 13, scope: !436, inlinedAt: !455)
!485 = !DILocation(line: 0, scope: !437, inlinedAt: !455)
!486 = !DILocation(line: 127, column: 35, scope: !417, inlinedAt: !455)
!487 = !DILocation(line: 127, column: 15, scope: !417, inlinedAt: !455)
!488 = !DILocation(line: 128, column: 15, scope: !417, inlinedAt: !455)
!489 = !DILocation(line: 130, column: 27, scope: !417, inlinedAt: !455)
!490 = !DILocation(line: 130, column: 35, scope: !417, inlinedAt: !455)
!491 = !DILocation(line: 130, column: 43, scope: !417, inlinedAt: !455)
!492 = !DILocation(line: 130, column: 38, scope: !417, inlinedAt: !455)
!493 = !DILocation(line: 130, column: 47, scope: !417, inlinedAt: !455)
!494 = !DILocation(line: 130, column: 31, scope: !417, inlinedAt: !455)
!495 = !DILocation(line: 130, column: 21, scope: !417, inlinedAt: !455)
!496 = !DILocation(line: 132, column: 14, scope: !417, inlinedAt: !455)
!497 = !DILocation(line: 133, column: 31, scope: !417, inlinedAt: !455)
!498 = !DILocation(line: 133, column: 29, scope: !417, inlinedAt: !455)
!499 = !DILocation(line: 133, column: 47, scope: !417, inlinedAt: !455)
!500 = !DILocation(line: 133, column: 62, scope: !417, inlinedAt: !455)
!501 = !DILocation(line: 133, column: 53, scope: !417, inlinedAt: !455)
!502 = !DILocation(line: 133, column: 71, scope: !417, inlinedAt: !455)
!503 = !DILocation(line: 133, column: 67, scope: !417, inlinedAt: !455)
!504 = !DILocation(line: 133, column: 51, scope: !417, inlinedAt: !455)
!505 = !DILocation(line: 133, column: 41, scope: !417, inlinedAt: !455)
!506 = !DILocation(line: 133, column: 13, scope: !417, inlinedAt: !455)
!507 = !DILocation(line: 133, column: 17, scope: !417, inlinedAt: !455)
!508 = !DILocation(line: 134, column: 51, scope: !417, inlinedAt: !455)
!509 = !DILocation(line: 134, column: 38, scope: !417, inlinedAt: !455)
!510 = !DILocation(line: 134, column: 36, scope: !417, inlinedAt: !455)
!511 = !DILocation(line: 134, column: 17, scope: !417, inlinedAt: !455)
!512 = !DILocation(line: 136, column: 12, scope: !417, inlinedAt: !455)
!513 = !DILocation(line: 137, column: 3, scope: !418, inlinedAt: !455)
!514 = !DILocation(line: 140, column: 18, scope: !440, inlinedAt: !455)
!515 = !DILocation(line: 141, column: 5, scope: !440, inlinedAt: !455)
!516 = !DILocation(line: 151, column: 11, scope: !452, inlinedAt: !455)
!517 = !DILocation(line: 151, column: 8, scope: !440, inlinedAt: !455)
!518 = !DILocation(line: 152, column: 20, scope: !519, inlinedAt: !455)
!519 = distinct !DILexicalBlock(scope: !452, file: !2, line: 151, column: 36)
!520 = !DILocation(line: 152, column: 23, scope: !519, inlinedAt: !455)
!521 = !DILocation(line: 152, column: 17, scope: !519, inlinedAt: !455)
!522 = !DILocation(line: 152, column: 29, scope: !519, inlinedAt: !455)
!523 = !DILocation(line: 153, column: 24, scope: !519, inlinedAt: !455)
!524 = !DILocation(line: 153, column: 17, scope: !519, inlinedAt: !455)
!525 = !DILocation(line: 154, column: 5, scope: !519, inlinedAt: !455)
!526 = !DILocation(line: 156, column: 30, scope: !451, inlinedAt: !455)
!527 = !DILocation(line: 156, column: 33, scope: !451, inlinedAt: !455)
!528 = !DILocation(line: 156, column: 24, scope: !451, inlinedAt: !455)
!529 = !DILocation(line: 0, scope: !451, inlinedAt: !455)
!530 = !DILocation(line: 157, column: 26, scope: !451, inlinedAt: !455)
!531 = !DILocation(line: 158, column: 34, scope: !451, inlinedAt: !455)
!532 = !DILocation(line: 158, column: 29, scope: !451, inlinedAt: !455)
!533 = !DILocation(line: 158, column: 22, scope: !451, inlinedAt: !455)
!534 = !DILocation(line: 158, column: 50, scope: !451, inlinedAt: !455)
!535 = !DILocation(line: 158, column: 45, scope: !451, inlinedAt: !455)
!536 = !DILocation(line: 159, column: 20, scope: !451, inlinedAt: !455)
!537 = !DILocation(line: 159, column: 13, scope: !451, inlinedAt: !455)
!538 = !DILocation(line: 0, scope: !452, inlinedAt: !455)
!539 = !DILocation(line: 162, column: 42, scope: !440, inlinedAt: !455)
!540 = !DILocation(line: 162, column: 15, scope: !440, inlinedAt: !455)
!541 = !DILocation(line: 163, column: 15, scope: !440, inlinedAt: !455)
!542 = !DILocation(line: 165, column: 21, scope: !440, inlinedAt: !455)
!543 = !DILocation(line: 165, column: 29, scope: !440, inlinedAt: !455)
!544 = !DILocation(line: 165, column: 44, scope: !440, inlinedAt: !455)
!545 = !DILocation(line: 165, column: 32, scope: !440, inlinedAt: !455)
!546 = !DILocation(line: 165, column: 48, scope: !440, inlinedAt: !455)
!547 = !DILocation(line: 165, column: 25, scope: !440, inlinedAt: !455)
!548 = !DILocation(line: 167, column: 32, scope: !440, inlinedAt: !455)
!549 = !DILocation(line: 167, column: 34, scope: !440, inlinedAt: !455)
!550 = !DILocation(line: 167, column: 43, scope: !440, inlinedAt: !455)
!551 = !DILocation(line: 167, column: 14, scope: !440, inlinedAt: !455)
!552 = !DILocation(line: 168, column: 51, scope: !440, inlinedAt: !455)
!553 = !DILocation(line: 168, column: 38, scope: !440, inlinedAt: !455)
!554 = !DILocation(line: 168, column: 36, scope: !440, inlinedAt: !455)
!555 = !DILocation(line: 168, column: 58, scope: !440, inlinedAt: !455)
!556 = !DILocation(line: 168, column: 56, scope: !440, inlinedAt: !455)
!557 = !DILocation(line: 168, column: 13, scope: !440, inlinedAt: !455)
!558 = !DILocation(line: 169, column: 42, scope: !440, inlinedAt: !455)
!559 = !DILocation(line: 169, column: 17, scope: !440, inlinedAt: !455)
!560 = !DILocation(line: 171, column: 12, scope: !440, inlinedAt: !455)
!561 = !DILocation(line: 172, column: 3, scope: !418, inlinedAt: !455)
!562 = !DILocation(line: 296, column: 13, scope: !360)
!563 = !DILocation(line: 296, column: 11, scope: !361)
!564 = !DILocation(line: 299, column: 5, scope: !359)
!565 = !DILocation(line: 300, column: 19, scope: !359)
!566 = !DILocation(line: 301, column: 19, scope: !359)
!567 = !DILocation(line: 303, column: 24, scope: !359)
!568 = !DILocation(line: 302, column: 24, scope: !359)
!569 = !DILocation(line: 306, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !359, file: !2, line: 306, column: 5)
!571 = !DILocation(line: 307, column: 24, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 306, column: 30)
!573 = distinct !DILexicalBlock(scope: !570, file: !2, line: 306, column: 5)
!574 = !DILocation(line: 307, column: 23, scope: !572)
!575 = !DILocation(line: 307, column: 28, scope: !572)
!576 = !DILocation(line: 307, column: 18, scope: !572)
!577 = !DILocation(line: 307, column: 35, scope: !572)
!578 = !DILocation(line: 307, column: 48, scope: !572)
!579 = !DILocation(line: 307, column: 42, scope: !572)
!580 = !DILocation(line: 307, column: 65, scope: !572)
!581 = !DILocation(line: 307, column: 58, scope: !572)
!582 = !DILocation(line: 306, column: 26, scope: !573)
!583 = distinct !{!583, !569, !584, !585}
!584 = !DILocation(line: 310, column: 5, scope: !570)
!585 = !{!"llvm.loop.mustprogress"}
!586 = !DILocation(line: 311, column: 17, scope: !359)
!587 = !DILocation(line: 312, column: 37, scope: !359)
!588 = !DILocation(line: 312, column: 35, scope: !359)
!589 = !DILocation(line: 312, column: 41, scope: !359)
!590 = !DILocation(line: 312, column: 39, scope: !359)
!591 = !DILocation(line: 312, column: 13, scope: !359)
!592 = !DILocation(line: 312, column: 17, scope: !359)
!593 = !DILocation(line: 313, column: 12, scope: !359)
!594 = !DILocation(line: 314, column: 3, scope: !360)
!595 = !DILocalVariable(name: "ell", arg: 1, scope: !596, file: !2, line: 39, type: !38)
!596 = distinct !DISubprogram(name: "legendreQ_CF1_xgt1", scope: !2, file: !2, line: 39, type: !597, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !600)
!597 = !DISubroutineType(types: !598)
!598 = !{!38, !38, !88, !88, !88, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!600 = !{!595, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !621, !622}
!601 = !DILocalVariable(name: "a", arg: 2, scope: !596, file: !2, line: 39, type: !88)
!602 = !DILocalVariable(name: "b", arg: 3, scope: !596, file: !2, line: 39, type: !88)
!603 = !DILocalVariable(name: "x", arg: 4, scope: !596, file: !2, line: 39, type: !88)
!604 = !DILocalVariable(name: "result", arg: 5, scope: !596, file: !2, line: 39, type: !599)
!605 = !DILocalVariable(name: "RECUR_BIG", scope: !596, file: !2, line: 41, type: !87)
!606 = !DILocalVariable(name: "maxiter", scope: !596, file: !2, line: 42, type: !353)
!607 = !DILocalVariable(name: "n", scope: !596, file: !2, line: 43, type: !38)
!608 = !DILocalVariable(name: "Anm2", scope: !596, file: !2, line: 44, type: !88)
!609 = !DILocalVariable(name: "Bnm2", scope: !596, file: !2, line: 45, type: !88)
!610 = !DILocalVariable(name: "Anm1", scope: !596, file: !2, line: 46, type: !88)
!611 = !DILocalVariable(name: "Bnm1", scope: !596, file: !2, line: 47, type: !88)
!612 = !DILocalVariable(name: "a1", scope: !596, file: !2, line: 48, type: !88)
!613 = !DILocalVariable(name: "b1", scope: !596, file: !2, line: 49, type: !88)
!614 = !DILocalVariable(name: "An", scope: !596, file: !2, line: 50, type: !88)
!615 = !DILocalVariable(name: "Bn", scope: !596, file: !2, line: 51, type: !88)
!616 = !DILocalVariable(name: "an", scope: !596, file: !2, line: 52, type: !88)
!617 = !DILocalVariable(name: "bn", scope: !596, file: !2, line: 52, type: !88)
!618 = !DILocalVariable(name: "fn", scope: !596, file: !2, line: 53, type: !88)
!619 = !DILocalVariable(name: "old_fn", scope: !620, file: !2, line: 56, type: !88)
!620 = distinct !DILexicalBlock(scope: !596, file: !2, line: 55, column: 22)
!621 = !DILocalVariable(name: "del", scope: !620, file: !2, line: 57, type: !88)
!622 = !DILocalVariable(name: "lna", scope: !620, file: !2, line: 58, type: !88)
!623 = !DILocation(line: 0, scope: !596, inlinedAt: !624)
!624 = distinct !DILocation(line: 319, column: 21, scope: !373)
!625 = !DILocation(line: 48, column: 15, scope: !596, inlinedAt: !624)
!626 = !DILocation(line: 48, column: 19, scope: !596, inlinedAt: !624)
!627 = !DILocation(line: 49, column: 19, scope: !596, inlinedAt: !624)
!628 = !DILocation(line: 49, column: 32, scope: !596, inlinedAt: !624)
!629 = !DILocation(line: 49, column: 39, scope: !596, inlinedAt: !624)
!630 = !DILocation(line: 50, column: 17, scope: !596, inlinedAt: !624)
!631 = !DILocation(line: 50, column: 23, scope: !596, inlinedAt: !624)
!632 = !DILocation(line: 51, column: 27, scope: !596, inlinedAt: !624)
!633 = !DILocation(line: 51, column: 23, scope: !596, inlinedAt: !624)
!634 = !DILocation(line: 53, column: 17, scope: !596, inlinedAt: !624)
!635 = !DILocation(line: 55, column: 3, scope: !596, inlinedAt: !624)
!636 = !DILocation(line: 55, column: 11, scope: !596, inlinedAt: !624)
!637 = !DILocation(line: 59, column: 6, scope: !620, inlinedAt: !624)
!638 = !DILocation(line: 64, column: 15, scope: !620, inlinedAt: !624)
!639 = !DILocation(line: 64, column: 11, scope: !620, inlinedAt: !624)
!640 = !DILocation(line: 0, scope: !620, inlinedAt: !624)
!641 = !DILocation(line: 65, column: 19, scope: !620, inlinedAt: !624)
!642 = !DILocation(line: 65, column: 14, scope: !620, inlinedAt: !624)
!643 = !DILocation(line: 66, column: 14, scope: !620, inlinedAt: !624)
!644 = !DILocation(line: 66, column: 19, scope: !620, inlinedAt: !624)
!645 = !DILocation(line: 66, column: 26, scope: !620, inlinedAt: !624)
!646 = !DILocation(line: 67, column: 12, scope: !620, inlinedAt: !624)
!647 = !DILocation(line: 67, column: 22, scope: !620, inlinedAt: !624)
!648 = !DILocation(line: 67, column: 18, scope: !620, inlinedAt: !624)
!649 = !DILocation(line: 68, column: 12, scope: !620, inlinedAt: !624)
!650 = !DILocation(line: 68, column: 22, scope: !620, inlinedAt: !624)
!651 = !DILocation(line: 68, column: 18, scope: !620, inlinedAt: !624)
!652 = !DILocation(line: 70, column: 8, scope: !653, inlinedAt: !624)
!653 = distinct !DILexicalBlock(scope: !620, file: !2, line: 70, column: 8)
!654 = !DILocation(line: 70, column: 17, scope: !653, inlinedAt: !624)
!655 = !DILocation(line: 70, column: 29, scope: !653, inlinedAt: !624)
!656 = !DILocation(line: 71, column: 10, scope: !657, inlinedAt: !624)
!657 = distinct !DILexicalBlock(scope: !653, file: !2, line: 70, column: 54)
!658 = !DILocation(line: 72, column: 10, scope: !657, inlinedAt: !624)
!659 = !DILocation(line: 73, column: 12, scope: !657, inlinedAt: !624)
!660 = !DILocation(line: 74, column: 12, scope: !657, inlinedAt: !624)
!661 = !DILocation(line: 77, column: 5, scope: !657, inlinedAt: !624)
!662 = !DILocation(line: 80, column: 12, scope: !620, inlinedAt: !624)
!663 = !DILocation(line: 81, column: 17, scope: !620, inlinedAt: !624)
!664 = !DILocation(line: 83, column: 17, scope: !665, inlinedAt: !624)
!665 = distinct !DILexicalBlock(scope: !620, file: !2, line: 83, column: 8)
!666 = !DILocation(line: 83, column: 8, scope: !665, inlinedAt: !624)
!667 = !DILocation(line: 83, column: 24, scope: !665, inlinedAt: !624)
!668 = !DILocation(line: 0, scope: !373)
!669 = !DILocation(line: 88, column: 8, scope: !670, inlinedAt: !624)
!670 = distinct !DILexicalBlock(scope: !596, file: !2, line: 88, column: 6)
!671 = !DILocation(line: 88, column: 6, scope: !596, inlinedAt: !624)
!672 = !DILocation(line: 86, column: 11, scope: !596, inlinedAt: !624)
!673 = !DILocation(line: 89, column: 5, scope: !674, inlinedAt: !624)
!674 = distinct !DILexicalBlock(scope: !670, file: !2, line: 89, column: 5)
!675 = !DILocation(line: 0, scope: !670, inlinedAt: !624)
!676 = !DILocation(line: 321, column: 25, scope: !373)
!677 = !DILocation(line: 325, column: 19, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 325, column: 5)
!679 = distinct !DILexicalBlock(scope: !373, file: !2, line: 325, column: 5)
!680 = !DILocation(line: 325, column: 5, scope: !679)
!681 = !DILocation(line: 326, column: 26, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !2, line: 325, column: 30)
!683 = !DILocation(line: 326, column: 25, scope: !682)
!684 = !DILocation(line: 326, column: 30, scope: !682)
!685 = !DILocation(line: 326, column: 19, scope: !682)
!686 = !DILocation(line: 326, column: 37, scope: !682)
!687 = !DILocation(line: 326, column: 50, scope: !682)
!688 = !DILocation(line: 326, column: 56, scope: !682)
!689 = !DILocation(line: 326, column: 44, scope: !682)
!690 = !DILocation(line: 326, column: 66, scope: !682)
!691 = !DILocation(line: 325, column: 26, scope: !678)
!692 = distinct !{!692, !680, !693, !585}
!693 = !DILocation(line: 329, column: 5, scope: !679)
!694 = !DILocation(line: 331, column: 8, scope: !382)
!695 = !DILocation(line: 331, column: 21, scope: !382)
!696 = !DILocation(line: 331, column: 19, scope: !382)
!697 = !DILocation(line: 0, scope: !382)
!698 = !DILocation(line: 331, column: 8, scope: !373)
!699 = !DILocation(line: 332, column: 7, scope: !381)
!700 = !DILocation(line: 333, column: 16, scope: !381)
!701 = !DILocation(line: 334, column: 43, scope: !381)
!702 = !DILocation(line: 334, column: 38, scope: !381)
!703 = !DILocation(line: 334, column: 47, scope: !381)
!704 = !DILocation(line: 335, column: 43, scope: !381)
!705 = !DILocation(line: 336, column: 5, scope: !382)
!706 = !DILocation(line: 336, column: 5, scope: !381)
!707 = !DILocation(line: 338, column: 7, scope: !384)
!708 = !DILocation(line: 339, column: 16, scope: !384)
!709 = !DILocation(line: 340, column: 43, scope: !384)
!710 = !DILocation(line: 340, column: 38, scope: !384)
!711 = !DILocation(line: 340, column: 47, scope: !384)
!712 = !DILocation(line: 341, column: 43, scope: !384)
!713 = !DILocation(line: 342, column: 5, scope: !382)
!714 = !DILocation(line: 344, column: 12, scope: !373)
!715 = !DILocation(line: 0, scope: !364)
!716 = !DILocation(line: 346, column: 1, scope: !350)
!717 = distinct !DISubprogram(name: "gsl_sf_legendre_Q0", scope: !2, file: !2, line: 353, type: !718, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!88, !87}
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "x", arg: 1, scope: !717, file: !2, line: 353, type: !87)
!722 = !DILocalVariable(name: "result", scope: !717, file: !2, line: 355, type: !90)
!723 = !DILocalVariable(name: "status", scope: !717, file: !2, line: 355, type: !38)
!724 = distinct !DIAssignID()
!725 = !DILocation(line: 0, scope: !717)
!726 = !DILocation(line: 355, column: 3, scope: !717)
!727 = !DILocation(line: 355, column: 3, scope: !728)
!728 = distinct !DILexicalBlock(scope: !717, file: !2, line: 355, column: 3)
!729 = !DILocation(line: 355, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 355, column: 3)
!731 = distinct !DILexicalBlock(scope: !728, file: !2, line: 355, column: 3)
!732 = !DILocation(line: 356, column: 1, scope: !717)
!733 = distinct !DISubprogram(name: "gsl_sf_legendre_Q1", scope: !2, file: !2, line: 358, type: !718, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !734)
!734 = !{!735, !736, !737}
!735 = !DILocalVariable(name: "x", arg: 1, scope: !733, file: !2, line: 358, type: !87)
!736 = !DILocalVariable(name: "result", scope: !733, file: !2, line: 360, type: !90)
!737 = !DILocalVariable(name: "status", scope: !733, file: !2, line: 360, type: !38)
!738 = distinct !DIAssignID()
!739 = !DILocation(line: 0, scope: !733)
!740 = !DILocation(line: 360, column: 3, scope: !733)
!741 = !DILocation(line: 360, column: 3, scope: !742)
!742 = distinct !DILexicalBlock(scope: !733, file: !2, line: 360, column: 3)
!743 = !DILocation(line: 360, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 360, column: 3)
!745 = distinct !DILexicalBlock(scope: !742, file: !2, line: 360, column: 3)
!746 = !DILocation(line: 361, column: 1, scope: !733)
!747 = distinct !DISubprogram(name: "gsl_sf_legendre_Ql", scope: !2, file: !2, line: 363, type: !748, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!88, !353, !87}
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "l", arg: 1, scope: !747, file: !2, line: 363, type: !353)
!752 = !DILocalVariable(name: "x", arg: 2, scope: !747, file: !2, line: 363, type: !87)
!753 = !DILocalVariable(name: "result", scope: !747, file: !2, line: 365, type: !90)
!754 = !DILocalVariable(name: "status", scope: !747, file: !2, line: 365, type: !38)
!755 = distinct !DIAssignID()
!756 = !DILocation(line: 0, scope: !747)
!757 = !DILocation(line: 365, column: 3, scope: !747)
!758 = !DILocation(line: 365, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !747, file: !2, line: 365, column: 3)
!760 = !DILocation(line: 365, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !2, line: 365, column: 3)
!762 = distinct !DILexicalBlock(scope: !759, file: !2, line: 365, column: 3)
!763 = !DILocation(line: 366, column: 1, scope: !747)
!764 = !DISubprogram(name: "acos", scope: !222, file: !222, line: 53, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubprogram(name: "sqrt", scope: !222, file: !222, line: 143, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !767, file: !767, line: 79, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!768 = !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !767, file: !767, line: 88, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubprogram(name: "gsl_sf_multiply_e", scope: !770, file: !770, line: 46, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!771 = !DISubprogram(name: "acosh", scope: !222, file: !222, line: 85, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !767, file: !767, line: 218, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !767, file: !767, line: 228, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubprogram(name: "gsl_sf_exp_mult_e", scope: !775, file: !775, line: 60, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
