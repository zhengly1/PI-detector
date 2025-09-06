; ModuleID = 'legendre_H3d.c'
source_filename = "legendre_H3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"legendre_H3d.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_0_e(lambda, eta, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_1_e(lambda, eta, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [47 x i8] c"gsl_sf_legendre_H3d_e(l, lambda, eta, &result)\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_H3d_0_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !84 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !104, metadata !DIExpression(), metadata !110, metadata ptr %4, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata double %0, metadata !97, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata double %1, metadata !98, metadata !DIExpression()), !dbg !112
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !112
  %5 = fcmp olt double %1, 0.000000e+00, !dbg !113
  br i1 %5, label %6, label %8, !dbg !114

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !115, !tbaa !118
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !115
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !115, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 1) #8, !dbg !124
  br label %59, !dbg !124

8:                                                ; preds = %3
  %9 = fcmp oeq double %1, 0.000000e+00, !dbg !126
  %10 = fcmp oeq double %0, 0.000000e+00
  %11 = or i1 %10, %9, !dbg !127
  br i1 %11, label %12, label %14, !dbg !127

12:                                               ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !128, !tbaa !118
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !130
  store double 0.000000e+00, ptr %13, align 8, !dbg !131, !tbaa !123
  br label %59, !dbg !132

14:                                               ; preds = %8
  %15 = fmul double %0, %1, !dbg !133
  tail call void @llvm.dbg.value(metadata double %15, metadata !100, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !134
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !135
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !136
  %18 = call i32 @gsl_sf_sin_err_e(double noundef %15, double noundef %17, ptr noundef nonnull %4) #8, !dbg !137
  %19 = fcmp ogt double %1, 0x403205966F2B4F12, !dbg !138
  br i1 %19, label %20, label %36, !dbg !139

20:                                               ; preds = %14
  %21 = fdiv double 2.000000e+00, %0, !dbg !140
  %22 = fneg double %1, !dbg !141
  %23 = call double @exp(double noundef %22) #8, !dbg !142
  %24 = fmul double %21, %23, !dbg !143
  tail call void @llvm.dbg.value(metadata double %24, metadata !105, metadata !DIExpression()), !dbg !144
  %25 = load double, ptr %4, align 8, !dbg !145, !tbaa !118
  %26 = fmul double %24, %25, !dbg !146
  store double %26, ptr %2, align 8, !dbg !147, !tbaa !118
  %27 = call double @llvm.fabs.f64(double %26), !dbg !148
  %28 = call double @llvm.fabs.f64(double %1), !dbg !149
  %29 = fadd double %28, 1.000000e+00, !dbg !150
  %30 = fmul double %29, %27, !dbg !151
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !152
  %32 = call double @llvm.fabs.f64(double %24), !dbg !153
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !154
  %34 = load double, ptr %33, align 8, !dbg !154, !tbaa !123
  %35 = fmul double %32, %34, !dbg !155
  br label %51, !dbg !156

36:                                               ; preds = %14
  %37 = call double @sinh(double noundef %1) #8, !dbg !157
  %38 = fmul double %37, %0, !dbg !158
  %39 = fdiv double 1.000000e+00, %38, !dbg !159
  tail call void @llvm.dbg.value(metadata double %39, metadata !108, metadata !DIExpression()), !dbg !160
  %40 = load double, ptr %4, align 8, !dbg !161, !tbaa !118
  %41 = fmul double %40, %39, !dbg !162
  store double %41, ptr %2, align 8, !dbg !163, !tbaa !118
  %42 = call double @llvm.fabs.f64(double %41), !dbg !164
  %43 = call double @llvm.fabs.f64(double %1), !dbg !165
  %44 = fadd double %43, 1.000000e+00, !dbg !166
  %45 = fmul double %44, %42, !dbg !167
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !168
  %47 = call double @llvm.fabs.f64(double %39), !dbg !169
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !170
  %49 = load double, ptr %48, align 8, !dbg !170, !tbaa !123
  %50 = fmul double %47, %49, !dbg !171
  br label %51

51:                                               ; preds = %36, %20
  %52 = phi double [ %46, %36 ], [ %35, %20 ]
  %53 = phi double [ %50, %36 ], [ %31, %20 ]
  %54 = phi double [ %42, %36 ], [ %27, %20 ]
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !172
  %56 = fadd double %53, %52, !dbg !172
  %57 = fmul double %54, 0x3CC0000000000000, !dbg !172
  %58 = fadd double %57, %56, !dbg !172
  store double %58, ptr %55, align 8, !dbg !172, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !173
  br label %59

59:                                               ; preds = %6, %12, %51
  %60 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %51 ], !dbg !174
  ret i32 %60, !dbg !175
}

declare !dbg !176 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !181 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !183 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !187 double @sinh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_H3d_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !188 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !218, metadata !DIExpression(), metadata !222, metadata ptr %4, metadata !DIExpression()), !dbg !223
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !221, metadata !DIExpression(), metadata !224, metadata ptr %5, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata double %0, metadata !190, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata double %1, metadata !191, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !225
  %6 = fmul double %0, %1, !dbg !226
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !227
  tail call void @llvm.dbg.value(metadata double %7, metadata !193, metadata !DIExpression()), !dbg !225
  %8 = fmul double %0, %0, !dbg !228
  tail call void @llvm.dbg.value(metadata double %8, metadata !194, metadata !DIExpression()), !dbg !225
  %9 = fadd double %8, 1.000000e+00, !dbg !229
  tail call void @llvm.dbg.value(metadata double %9, metadata !195, metadata !DIExpression()), !dbg !225
  %10 = fcmp olt double %1, 0.000000e+00, !dbg !230
  br i1 %10, label %11, label %13, !dbg !231

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !232, !tbaa !118
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !232
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !232, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 293, i32 noundef 1) #8, !dbg !235
  br label %131, !dbg !235

13:                                               ; preds = %3
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !237
  %15 = fcmp oeq double %0, 0.000000e+00
  %16 = or i1 %15, %14, !dbg !238
  br i1 %16, label %17, label %18, !dbg !238

17:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !239
  br label %131, !dbg !241

18:                                               ; preds = %13
  %19 = fcmp olt double %7, 0x3F48406003B2AE5A, !dbg !242
  %20 = fcmp olt double %1, 0x3F48406003B2AE5A
  %21 = and i1 %20, %19, !dbg !243
  br i1 %21, label %22, label %56, !dbg !243

22:                                               ; preds = %18
  %23 = fmul double %1, %1, !dbg !244
  tail call void @llvm.dbg.value(metadata double %23, metadata !196, metadata !DIExpression()), !dbg !245
  %24 = fmul double %6, %6, !dbg !246
  tail call void @llvm.dbg.value(metadata double %24, metadata !201, metadata !DIExpression()), !dbg !245
  %25 = fadd double %23, %24, !dbg !247
  %26 = fdiv double %25, 3.000000e+00, !dbg !248
  tail call void @llvm.dbg.value(metadata double %26, metadata !202, metadata !DIExpression()), !dbg !245
  %27 = fmul double %23, 2.000000e+00, !dbg !249
  %28 = fmul double %23, %27, !dbg !250
  %29 = fmul double %23, 5.000000e+00, !dbg !251
  %30 = fmul double %29, %24, !dbg !252
  %31 = fadd double %28, %30, !dbg !253
  %32 = fmul double %24, 3.000000e+00, !dbg !254
  %33 = fmul double %24, %32, !dbg !255
  %34 = fadd double %31, %33, !dbg !256
  %35 = fdiv double %34, -9.000000e+01, !dbg !257
  tail call void @llvm.dbg.value(metadata double %35, metadata !203, metadata !DIExpression()), !dbg !245
  %36 = fdiv double %23, 6.000000e+00, !dbg !258
  %37 = fmul double %1, 0x3FBDDDDDDDDDDDDE, !dbg !259
  %38 = fmul double %37, %1, !dbg !260
  %39 = fsub double 1.000000e+00, %38, !dbg !261
  %40 = fmul double %36, %39, !dbg !262
  %41 = fsub double 1.000000e+00, %40, !dbg !263
  tail call void @llvm.dbg.value(metadata double %41, metadata !204, metadata !DIExpression()), !dbg !245
  %42 = tail call double @llvm.sqrt.f64(double %9), !dbg !264
  %43 = fdiv double %41, %42, !dbg !265
  %44 = fdiv double %43, %1, !dbg !266
  tail call void @llvm.dbg.value(metadata double %44, metadata !205, metadata !DIExpression()), !dbg !245
  %45 = fadd double %26, %35, !dbg !267
  %46 = fmul double %44, %45, !dbg !268
  store double %46, ptr %2, align 8, !dbg !269, !tbaa !118
  %47 = fmul double %44, 0x3CB0000000000000, !dbg !270
  %48 = tail call double @llvm.fabs.f64(double %26), !dbg !271
  %49 = tail call double @llvm.fabs.f64(double %35), !dbg !272
  %50 = fadd double %48, %49, !dbg !273
  %51 = fmul double %47, %50, !dbg !274
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !275
  %53 = tail call double @llvm.fabs.f64(double %46), !dbg !276
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !277
  %55 = fadd double %51, %54, !dbg !278
  store double %55, ptr %52, align 8, !dbg !278, !tbaa !123
  br label %131

56:                                               ; preds = %18
  br i1 %19, label %57, label %70, !dbg !279

57:                                               ; preds = %56
  %58 = fmul double %6, %6, !dbg !280
  %59 = fdiv double %58, 6.000000e+00, !dbg !282
  %60 = fdiv double %58, 2.000000e+01, !dbg !283
  %61 = fsub double 1.000000e+00, %60, !dbg !284
  %62 = fmul double %59, %61, !dbg !285
  %63 = fsub double 1.000000e+00, %62, !dbg !286
  tail call void @llvm.dbg.value(metadata double %63, metadata !206, metadata !DIExpression()), !dbg !287
  %64 = fmul double %7, 5.000000e-01, !dbg !288
  %65 = fmul double %7, %64, !dbg !289
  %66 = fdiv double %58, 1.200000e+01, !dbg !290
  %67 = fsub double 1.000000e+00, %66, !dbg !291
  %68 = fmul double %65, %67, !dbg !292
  %69 = fsub double 1.000000e+00, %68, !dbg !293
  tail call void @llvm.dbg.value(metadata double %69, metadata !208, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !211, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !212, metadata !DIExpression()), !dbg !287
  br label %81, !dbg !294

70:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !295
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !296
  %71 = call i32 @gsl_sf_sin_e(double noundef %7, ptr noundef nonnull %4) #8, !dbg !297
  %72 = call i32 @gsl_sf_cos_e(double noundef %7, ptr noundef nonnull %5) #8, !dbg !298
  %73 = load double, ptr %4, align 8, !dbg !299, !tbaa !118
  %74 = fdiv double %73, %7, !dbg !300
  tail call void @llvm.dbg.value(metadata double %74, metadata !206, metadata !DIExpression()), !dbg !287
  %75 = load double, ptr %5, align 8, !dbg !301, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %75, metadata !208, metadata !DIExpression()), !dbg !287
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !302
  %77 = load double, ptr %76, align 8, !dbg !302, !tbaa !123
  %78 = fdiv double %77, %7, !dbg !303
  tail call void @llvm.dbg.value(metadata double %78, metadata !211, metadata !DIExpression()), !dbg !287
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !304
  %80 = load double, ptr %79, align 8, !dbg !304, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %80, metadata !212, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !305
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !305
  br label %81

81:                                               ; preds = %70, %57
  %82 = phi double [ 0x3CB0000000000000, %57 ], [ %78, %70 ], !dbg !306
  %83 = phi double [ 0x3CB0000000000000, %57 ], [ %80, %70 ], !dbg !306
  %84 = phi double [ %69, %57 ], [ %75, %70 ], !dbg !306
  %85 = phi double [ %63, %57 ], [ %74, %70 ], !dbg !306
  tail call void @llvm.dbg.value(metadata double %85, metadata !206, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %84, metadata !208, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %83, metadata !212, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %82, metadata !211, metadata !DIExpression()), !dbg !287
  br i1 %20, label %86, label %99, !dbg !307

86:                                               ; preds = %81
  %87 = fmul double %1, %1, !dbg !308
  %88 = fdiv double %87, 3.000000e+00, !dbg !311
  %89 = fdiv double %87, 1.500000e+01, !dbg !312
  %90 = fsub double 1.000000e+00, %89, !dbg !313
  %91 = fmul double %88, %90, !dbg !314
  %92 = fadd double %91, 1.000000e+00, !dbg !315
  tail call void @llvm.dbg.value(metadata double %92, metadata !209, metadata !DIExpression()), !dbg !287
  %93 = fdiv double %87, 6.000000e+00, !dbg !316
  %94 = fmul double %1, 0x3FBDDDDDDDDDDDDE, !dbg !317
  %95 = fmul double %94, %1, !dbg !318
  %96 = fsub double 1.000000e+00, %95, !dbg !319
  %97 = fmul double %93, %96, !dbg !320
  %98 = fsub double 1.000000e+00, %97, !dbg !321
  tail call void @llvm.dbg.value(metadata double %98, metadata !210, metadata !DIExpression()), !dbg !287
  br label %104, !dbg !322

99:                                               ; preds = %81
  %100 = call double @tanh(double noundef %1) #8, !dbg !323
  %101 = fdiv double %1, %100, !dbg !325
  tail call void @llvm.dbg.value(metadata double %101, metadata !209, metadata !DIExpression()), !dbg !287
  %102 = call double @sinh(double noundef %1) #8, !dbg !326
  %103 = fdiv double %1, %102, !dbg !327
  tail call void @llvm.dbg.value(metadata double %103, metadata !210, metadata !DIExpression()), !dbg !287
  br label %104

104:                                              ; preds = %99, %86
  %105 = phi double [ %98, %86 ], [ %103, %99 ], !dbg !328
  %106 = phi double [ %92, %86 ], [ %101, %99 ], !dbg !328
  tail call void @llvm.dbg.value(metadata double %106, metadata !209, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %105, metadata !210, metadata !DIExpression()), !dbg !287
  %107 = call double @llvm.sqrt.f64(double %9), !dbg !329
  %108 = fmul double %107, %1, !dbg !330
  tail call void @llvm.dbg.value(metadata double %108, metadata !213, metadata !DIExpression()), !dbg !287
  %109 = fdiv double %105, %108, !dbg !331
  tail call void @llvm.dbg.value(metadata double %109, metadata !214, metadata !DIExpression()), !dbg !287
  %110 = call double @llvm.fabs.f64(double %109), !dbg !332
  %111 = fmul double %110, 0x3CC0000000000000, !dbg !333
  tail call void @llvm.dbg.value(metadata double %111, metadata !215, metadata !DIExpression()), !dbg !287
  %112 = fmul double %85, %106, !dbg !334
  tail call void @llvm.dbg.value(metadata double %112, metadata !216, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata double %84, metadata !217, metadata !DIExpression()), !dbg !287
  %113 = fsub double %112, %84, !dbg !335
  %114 = fmul double %109, %113, !dbg !336
  store double %114, ptr %2, align 8, !dbg !337, !tbaa !118
  %115 = call double @llvm.fabs.f64(double %113), !dbg !338
  %116 = fmul double %111, %115, !dbg !339
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !340
  %118 = fmul double %82, %106, !dbg !341
  %119 = fadd double %83, %118, !dbg !342
  %120 = fmul double %109, %119, !dbg !343
  %121 = fadd double %120, %116, !dbg !344
  %122 = fmul double %109, %115, !dbg !345
  %123 = call double @llvm.fabs.f64(double %1), !dbg !346
  %124 = fadd double %123, 1.000000e+00, !dbg !347
  %125 = fmul double %124, %122, !dbg !348
  %126 = fmul double %125, 0x3CB0000000000000, !dbg !349
  %127 = fadd double %121, %126, !dbg !350
  %128 = call double @llvm.fabs.f64(double %114), !dbg !351
  %129 = fmul double %128, 0x3CC0000000000000, !dbg !352
  %130 = fadd double %129, %127, !dbg !353
  store double %130, ptr %117, align 8, !dbg !353, !tbaa !123
  br label %131

131:                                              ; preds = %104, %22, %17, %11
  %132 = phi i32 [ 1, %11 ], [ 0, %17 ], [ 0, %22 ], [ 0, %104 ], !dbg !354
  ret i32 %132, !dbg !355
}

declare !dbg !356 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !359 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !360 double @tanh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !361 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !427
  call void @llvm.dbg.assign(metadata i1 undef, metadata !374, metadata !DIExpression(), metadata !427, metadata ptr %5, metadata !DIExpression()), !dbg !428
  %6 = alloca double, align 8, !DIAssignID !429
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !429, metadata ptr %6, metadata !DIExpression()), !dbg !428
  %7 = alloca double, align 8, !DIAssignID !430
  call void @llvm.dbg.assign(metadata i1 undef, metadata !385, metadata !DIExpression(), metadata !430, metadata ptr %7, metadata !DIExpression()), !dbg !431
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !432, metadata ptr %8, metadata !DIExpression()), !dbg !431
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !433, metadata ptr %9, metadata !DIExpression()), !dbg !434
  %10 = alloca double, align 8, !DIAssignID !435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !396, metadata !DIExpression(), metadata !435, metadata ptr %10, metadata !DIExpression()), !dbg !434
  %11 = alloca double, align 8, !DIAssignID !436
  call void @llvm.dbg.assign(metadata i1 undef, metadata !398, metadata !DIExpression(), metadata !436, metadata ptr %11, metadata !DIExpression()), !dbg !437
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !401, metadata !DIExpression(), metadata !438, metadata ptr %12, metadata !DIExpression()), !dbg !437
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !409, metadata !DIExpression(), metadata !439, metadata ptr %13, metadata !DIExpression()), !dbg !440
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !441, metadata ptr %14, metadata !DIExpression()), !dbg !442
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !424, metadata !DIExpression(), metadata !443, metadata ptr %15, metadata !DIExpression()), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !366, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata double %1, metadata !367, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata double %2, metadata !368, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !369, metadata !DIExpression()), !dbg !445
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !446
  tail call void @llvm.dbg.value(metadata double %16, metadata !370, metadata !DIExpression()), !dbg !445
  %17 = fmul double %1, %1, !dbg !447
  tail call void @llvm.dbg.value(metadata double %17, metadata !371, metadata !DIExpression()), !dbg !445
  %18 = fmul double %16, %2, !dbg !448
  tail call void @llvm.dbg.value(metadata double %18, metadata !372, metadata !DIExpression()), !dbg !445
  %19 = tail call double @cosh(double noundef %2) #8, !dbg !449
  tail call void @llvm.dbg.value(metadata double %19, metadata !373, metadata !DIExpression()), !dbg !445
  %20 = fcmp olt double %2, 0.000000e+00, !dbg !450
  br i1 %20, label %21, label %23, !dbg !451

21:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !452, !tbaa !118
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !452
  store double 0x7FF8000000000000, ptr %22, align 8, !dbg !452, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 375, i32 noundef 1) #8, !dbg !455
  br label %211, !dbg !455

23:                                               ; preds = %4
  %24 = fcmp ogt double %2, 0x40862E42FEFA39EF, !dbg !457
  br i1 %24, label %25, label %27, !dbg !458

25:                                               ; preds = %23
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !459, !tbaa !118
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !459
  store double 0x7FF0000000000000, ptr %26, align 8, !dbg !459, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 379, i32 noundef 16) #8, !dbg !462
  br label %211, !dbg !462

27:                                               ; preds = %23
  switch i32 %0, label %32 [
    i32 0, label %28
    i32 1, label %30
  ], !dbg !464

28:                                               ; preds = %27
  %29 = tail call i32 @gsl_sf_legendre_H3d_0_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !465, !range !467
  br label %211, !dbg !468

30:                                               ; preds = %27
  %31 = tail call i32 @gsl_sf_legendre_H3d_1_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !469, !range !467
  br label %211, !dbg !471

32:                                               ; preds = %27
  %33 = fcmp oeq double %2, 0.000000e+00, !dbg !472
  br i1 %33, label %34, label %35, !dbg !473

34:                                               ; preds = %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !474
  br label %211, !dbg !476

35:                                               ; preds = %32
  %36 = fcmp olt double %18, 1.000000e+00, !dbg !477
  br i1 %36, label %37, label %39, !dbg !478

37:                                               ; preds = %35
  %38 = tail call fastcc i32 @legendre_H3d_series(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !479
  br label %211, !dbg !481

39:                                               ; preds = %35
  %40 = mul nsw i32 %0, %0, !dbg !482
  %41 = sitofp i32 %40 to double, !dbg !483
  %42 = fadd double %17, %41, !dbg !484
  %43 = fadd double %17, 1.000000e+00, !dbg !485
  %44 = tail call double @llvm.sqrt.f64(double %43), !dbg !486
  %45 = fdiv double %42, %44, !dbg !487
  %46 = fmul double %19, %19, !dbg !488
  %47 = fdiv double %45, %46, !dbg !489
  %48 = fcmp olt double %47, 0x3EFFBF7E4E8CC9D1, !dbg !490
  br i1 %48, label %49, label %89, !dbg !491

49:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8, !dbg !493
  %50 = sub nsw i32 0, %0, !dbg !494
  %51 = sitofp i32 %50 to double, !dbg !494
  %52 = fadd double %51, -5.000000e-01, !dbg !495
  %53 = call i32 @gsl_sf_conicalP_large_x_e(double noundef %52, double noundef %1, double noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #8, !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !384, metadata !DIExpression()), !dbg !428
  %54 = load double, ptr %5, align 8, !dbg !497, !tbaa !118
  %55 = fcmp oeq double %54, 0.000000e+00, !dbg !498
  br i1 %55, label %56, label %57, !dbg !499

56:                                               ; preds = %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !500
  br label %87, !dbg !502

57:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !504
  %58 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %8) #8, !dbg !505
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %7), !dbg !506
  %59 = call double @log(double noundef %16) #8, !dbg !507
  tail call void @llvm.dbg.value(metadata double %59, metadata !389, metadata !DIExpression()), !dbg !431
  %60 = load double, ptr %7, align 8, !dbg !508, !tbaa !509
  %61 = fadd double %60, 0x3FF250D048E7A1BD, !dbg !510
  %62 = fadd double %61, 0xBFE62E42FEFA39EF, !dbg !511
  %63 = load double, ptr %8, align 8, !dbg !512, !tbaa !118
  %64 = fsub double %62, %63, !dbg !513
  %65 = fmul double %64, 5.000000e-01, !dbg !514
  %66 = fsub double %65, %59, !dbg !515
  tail call void @llvm.dbg.value(metadata double %66, metadata !390, metadata !DIExpression()), !dbg !431
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !516
  %68 = load double, ptr %67, align 8, !dbg !516, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %68, metadata !391, metadata !DIExpression()), !dbg !431
  %69 = call double @llvm.fabs.f64(double %60), !dbg !517
  %70 = fadd double %69, 0x3FFD67F1C864BEB4, !dbg !518
  %71 = fmul double %70, 5.000000e-01, !dbg !519
  %72 = call double @llvm.fabs.f64(double %59), !dbg !520
  %73 = fadd double %72, %71, !dbg !521
  %74 = fmul double %73, 0x3CC0000000000000, !dbg !522
  %75 = fadd double %68, %74, !dbg !523
  tail call void @llvm.dbg.value(metadata double %75, metadata !391, metadata !DIExpression()), !dbg !431
  %76 = call double @llvm.fabs.f64(double %66), !dbg !524
  %77 = fmul double %76, 0x3CC0000000000000, !dbg !525
  %78 = fadd double %75, %77, !dbg !526
  tail call void @llvm.dbg.value(metadata double %78, metadata !391, metadata !DIExpression()), !dbg !431
  %79 = load double, ptr %6, align 8, !dbg !527, !tbaa !509
  %80 = fadd double %79, %66, !dbg !528
  %81 = load double, ptr %5, align 8, !dbg !529, !tbaa !118
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !530
  %83 = load double, ptr %82, align 8, !dbg !530, !tbaa !123
  %84 = call i32 @gsl_sf_exp_mult_err_e(double noundef %80, double noundef %78, double noundef %81, double noundef %83, ptr noundef %3) #8, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !392, metadata !DIExpression()), !dbg !431
  %85 = icmp eq i32 %84, 0, !dbg !532
  %86 = select i1 %85, i32 %53, i32 %84, !dbg !532
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !533
  br label %87

87:                                               ; preds = %57, %56
  %88 = phi i32 [ %53, %56 ], [ %86, %57 ], !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8, !dbg !535
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !535
  br label %211

89:                                               ; preds = %39
  %90 = sitofp i32 %0 to double, !dbg !536
  %91 = fmul double %90, 1.000000e+03, !dbg !537
  %92 = fmul double %91, %90, !dbg !538
  %93 = fcmp ogt double %16, %92, !dbg !539
  br i1 %93, label %94, label %132, !dbg !540

94:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8, !dbg !542
  %95 = fadd double %90, 5.000000e-01, !dbg !543
  %96 = call i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef %95, double noundef %1, double noundef %19, double noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10) #8, !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %96, metadata !397, metadata !DIExpression()), !dbg !434
  %97 = load double, ptr %9, align 8, !dbg !545, !tbaa !118
  %98 = fcmp oeq double %97, 0.000000e+00, !dbg !546
  br i1 %98, label %99, label %100, !dbg !547

99:                                               ; preds = %94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !548
  br label %130, !dbg !550

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8, !dbg !551
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !552
  %101 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %12) #8, !dbg !553
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %11), !dbg !554
  %102 = call double @log(double noundef %16) #8, !dbg !555
  tail call void @llvm.dbg.value(metadata double %102, metadata !402, metadata !DIExpression()), !dbg !437
  %103 = load double, ptr %11, align 8, !dbg !556, !tbaa !509
  %104 = fadd double %103, 0x3FF250D048E7A1BD, !dbg !557
  %105 = fadd double %104, 0xBFE62E42FEFA39EF, !dbg !558
  %106 = load double, ptr %12, align 8, !dbg !559, !tbaa !118
  %107 = fsub double %105, %106, !dbg !560
  %108 = fmul double %107, 5.000000e-01, !dbg !561
  %109 = fsub double %108, %102, !dbg !562
  tail call void @llvm.dbg.value(metadata double %109, metadata !403, metadata !DIExpression()), !dbg !437
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !563
  %111 = load double, ptr %110, align 8, !dbg !563, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %111, metadata !404, metadata !DIExpression()), !dbg !437
  %112 = call double @llvm.fabs.f64(double %103), !dbg !564
  %113 = fadd double %112, 0x3FFD67F1C864BEB4, !dbg !565
  %114 = fmul double %113, 5.000000e-01, !dbg !566
  %115 = call double @llvm.fabs.f64(double %102), !dbg !567
  %116 = fadd double %115, %114, !dbg !568
  %117 = fmul double %116, 0x3CB0000000000000, !dbg !569
  %118 = fadd double %111, %117, !dbg !570
  tail call void @llvm.dbg.value(metadata double %118, metadata !404, metadata !DIExpression()), !dbg !437
  %119 = call double @llvm.fabs.f64(double %109), !dbg !571
  %120 = fmul double %119, 0x3CC0000000000000, !dbg !572
  %121 = fadd double %118, %120, !dbg !573
  tail call void @llvm.dbg.value(metadata double %121, metadata !404, metadata !DIExpression()), !dbg !437
  %122 = load double, ptr %10, align 8, !dbg !574, !tbaa !509
  %123 = fadd double %122, %109, !dbg !575
  %124 = load double, ptr %9, align 8, !dbg !576, !tbaa !118
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !577
  %126 = load double, ptr %125, align 8, !dbg !577, !tbaa !123
  %127 = call i32 @gsl_sf_exp_mult_err_e(double noundef %123, double noundef %121, double noundef %124, double noundef %126, ptr noundef %3) #8, !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !405, metadata !DIExpression()), !dbg !437
  %128 = icmp eq i32 %127, 0, !dbg !579
  %129 = select i1 %128, i32 %96, i32 %127, !dbg !579
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8, !dbg !580
  br label %130

130:                                              ; preds = %100, %99
  %131 = phi i32 [ %96, %99 ], [ %129, %100 ], !dbg !581
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8, !dbg !582
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !582
  br label %211

132:                                              ; preds = %89
  %133 = tail call double @tanh(double noundef %2) #8, !dbg !583
  %134 = fdiv double 1.000000e+00, %133, !dbg !584
  tail call void @llvm.dbg.value(metadata double %134, metadata !406, metadata !DIExpression()), !dbg !440
  %135 = tail call double @llvm.fabs.f64(double %2), !dbg !585
  %136 = fadd double %135, 1.000000e+00, !dbg !586
  tail call void @llvm.dbg.value(metadata double %136, metadata !408, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !587
  %137 = call fastcc i32 @legendre_H3d_CF1_ser(i32 noundef %0, double noundef %1, double noundef %134, ptr noundef nonnull %13), !dbg !588, !range !589
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !410, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !412, metadata !DIExpression()), !dbg !440
  %138 = load double, ptr %13, align 8, !dbg !590, !tbaa !118
  %139 = fmul double %138, 0x2000000000000000, !dbg !591
  tail call void @llvm.dbg.value(metadata double %139, metadata !413, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !414, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !412, metadata !DIExpression()), !dbg !440
  %140 = icmp sgt i32 %0, 0, !dbg !592
  br i1 %140, label %141, label %158, !dbg !593

141:                                              ; preds = %132, %141
  %142 = phi double [ %155, %141 ], [ 0x2000000000000000, %132 ]
  %143 = phi double [ %142, %141 ], [ %139, %132 ]
  %144 = phi i32 [ %156, %141 ], [ %0, %132 ]
  tail call void @llvm.dbg.value(metadata double %142, metadata !412, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double %143, metadata !413, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !414, metadata !DIExpression()), !dbg !440
  %145 = sitofp i32 %144 to double, !dbg !594
  %146 = tail call double @hypot(double noundef %1, double noundef %145) #8, !dbg !595
  tail call void @llvm.dbg.value(metadata double %146, metadata !415, metadata !DIExpression()), !dbg !596
  %147 = fadd double %145, 1.000000e+00, !dbg !597
  %148 = tail call double @hypot(double noundef %1, double noundef %147) #8, !dbg !598
  tail call void @llvm.dbg.value(metadata double %148, metadata !419, metadata !DIExpression()), !dbg !596
  %149 = fmul double %145, 2.000000e+00, !dbg !599
  %150 = fadd double %149, 1.000000e+00, !dbg !600
  %151 = fmul double %134, %150, !dbg !601
  %152 = fmul double %142, %151, !dbg !602
  %153 = fmul double %143, %148, !dbg !603
  %154 = fsub double %152, %153, !dbg !604
  %155 = fdiv double %154, %146, !dbg !605
  tail call void @llvm.dbg.value(metadata double %155, metadata !411, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double %142, metadata !413, metadata !DIExpression()), !dbg !440
  tail call void @llvm.dbg.value(metadata double %155, metadata !412, metadata !DIExpression()), !dbg !440
  %156 = add nsw i32 %144, -1, !dbg !606
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !414, metadata !DIExpression()), !dbg !440
  %157 = icmp ugt i32 %144, 1, !dbg !592
  br i1 %157, label %141, label %158, !dbg !593, !llvm.loop !607

158:                                              ; preds = %141, %132
  %159 = phi double [ %139, %132 ], [ %142, %141 ], !dbg !440
  %160 = phi double [ 0x2000000000000000, %132 ], [ %155, %141 ], !dbg !440
  %161 = tail call double @llvm.fabs.f64(double %160), !dbg !610
  %162 = tail call double @llvm.fabs.f64(double %159), !dbg !611
  %163 = fcmp ogt double %161, %162, !dbg !612
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !613
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !613
  %166 = fadd double %90, 1.000000e+00, !dbg !613
  br i1 %163, label %167, label %188, !dbg !614

167:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !615
  %168 = call i32 @gsl_sf_legendre_H3d_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %14), !dbg !616, !range !467
  tail call void @llvm.dbg.value(metadata i32 %168, metadata !423, metadata !DIExpression()), !dbg !442
  %169 = fdiv double 0x2000000000000000, %160, !dbg !617
  %170 = load double, ptr %14, align 8, !dbg !618, !tbaa !118
  %171 = fmul double %169, %170, !dbg !619
  store double %171, ptr %3, align 8, !dbg !620, !tbaa !118
  %172 = fdiv double 0x2000000000000000, %161, !dbg !621
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !622
  %174 = load double, ptr %173, align 8, !dbg !622, !tbaa !123
  %175 = fmul double %172, %174, !dbg !623
  %176 = load double, ptr %165, align 8, !dbg !624, !tbaa !123
  %177 = fdiv double %176, %138, !dbg !625
  %178 = tail call double @llvm.fabs.f64(double %177), !dbg !626
  %179 = fmul double %166, %178, !dbg !627
  %180 = fmul double %136, %179, !dbg !628
  %181 = tail call double @llvm.fabs.f64(double %171), !dbg !629
  %182 = fmul double %181, %180, !dbg !630
  %183 = fadd double %175, %182, !dbg !631
  %184 = fmul double %181, 0x3CC0000000000000, !dbg !632
  %185 = fadd double %184, %183, !dbg !633
  store double %185, ptr %164, align 8, !dbg !633, !tbaa !123
  %186 = icmp eq i32 %168, 0, !dbg !634
  %187 = select i1 %186, i32 %137, i32 1, !dbg !634
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !635
  br label %209

188:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !636
  %189 = call i32 @gsl_sf_legendre_H3d_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %15), !dbg !637, !range !467
  tail call void @llvm.dbg.value(metadata i32 %189, metadata !426, metadata !DIExpression()), !dbg !444
  %190 = fdiv double 0x2000000000000000, %159, !dbg !638
  %191 = load double, ptr %15, align 8, !dbg !639, !tbaa !118
  %192 = fmul double %190, %191, !dbg !640
  store double %192, ptr %3, align 8, !dbg !641, !tbaa !118
  %193 = fdiv double 0x2000000000000000, %162, !dbg !642
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !643
  %195 = load double, ptr %194, align 8, !dbg !643, !tbaa !123
  %196 = fmul double %193, %195, !dbg !644
  %197 = load double, ptr %165, align 8, !dbg !645, !tbaa !123
  %198 = fdiv double %197, %138, !dbg !646
  %199 = tail call double @llvm.fabs.f64(double %198), !dbg !647
  %200 = fmul double %166, %199, !dbg !648
  %201 = fmul double %136, %200, !dbg !649
  %202 = tail call double @llvm.fabs.f64(double %192), !dbg !650
  %203 = fmul double %202, %201, !dbg !651
  %204 = fadd double %196, %203, !dbg !652
  %205 = fmul double %202, 0x3CC0000000000000, !dbg !653
  %206 = fadd double %205, %204, !dbg !654
  store double %206, ptr %164, align 8, !dbg !654, !tbaa !123
  %207 = icmp eq i32 %189, 0, !dbg !655
  %208 = select i1 %207, i32 %137, i32 1, !dbg !655
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !656
  br label %209

209:                                              ; preds = %188, %167
  %210 = phi i32 [ %187, %167 ], [ %208, %188 ], !dbg !613
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !657
  br label %211

211:                                              ; preds = %209, %130, %87, %37, %34, %30, %28, %25, %21
  %212 = phi i32 [ 1, %21 ], [ 16, %25 ], [ %29, %28 ], [ %31, %30 ], [ 0, %34 ], [ %38, %37 ], [ %88, %87 ], [ %131, %130 ], [ %210, %209 ], !dbg !658
  ret i32 %212, !dbg !659
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !660 double @cosh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @legendre_H3d_series(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !661 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !672, metadata !DIExpression(), metadata !687, metadata ptr %5, metadata !DIExpression()), !dbg !688
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !676, metadata !DIExpression(), metadata !689, metadata ptr %6, metadata !DIExpression()), !dbg !688
  %7 = alloca double, align 8, !DIAssignID !690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !677, metadata !DIExpression(), metadata !690, metadata ptr %7, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !663, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %1, metadata !664, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %2, metadata !665, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !666, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !667, metadata !DIExpression()), !dbg !688
  %8 = fmul double %2, 5.000000e-01, !dbg !691
  %9 = tail call double @sinh(double noundef %8) #8, !dbg !692
  tail call void @llvm.dbg.value(metadata double %9, metadata !668, metadata !DIExpression()), !dbg !688
  %10 = fmul double %9, %9, !dbg !693
  %11 = fadd double %10, 1.000000e+00, !dbg !694
  %12 = tail call double @log(double noundef %11) #8, !dbg !695
  tail call void @llvm.dbg.value(metadata double poison, metadata !669, metadata !DIExpression()), !dbg !688
  %13 = tail call double @log(double noundef %9) #8, !dbg !696
  tail call void @llvm.dbg.value(metadata double poison, metadata !670, metadata !DIExpression()), !dbg !688
  %14 = fneg double %9, !dbg !697
  %15 = fmul double %9, %14, !dbg !698
  tail call void @llvm.dbg.value(metadata double %15, metadata !671, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !699
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !673, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !674, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !675, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8, !dbg !701
  %16 = sitofp i32 %0 to double, !dbg !702
  %17 = fadd double %16, 1.500000e+00, !dbg !703
  %18 = call i32 @gsl_sf_lngamma_e(double noundef %17, ptr noundef nonnull %5) #8, !dbg !704
  %19 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %6) #8, !dbg !705
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %7), !dbg !706
  tail call void @llvm.dbg.value(metadata double poison, metadata !680, metadata !DIExpression()), !dbg !688
  %20 = load double, ptr %7, align 8, !dbg !707, !tbaa !509
  %21 = load double, ptr %6, align 8, !dbg !708, !tbaa !118
  %22 = load double, ptr %5, align 8, !dbg !709, !tbaa !118
  %23 = call double @llvm.fabs.f64(double %1), !dbg !710
  %24 = call double @log(double noundef %23) #8, !dbg !711
  tail call void @llvm.dbg.value(metadata double poison, metadata !678, metadata !DIExpression()), !dbg !688
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !712
  %26 = load double, ptr %25, align 8, !dbg !712, !tbaa !123
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !713
  %28 = load double, ptr %27, align 8, !dbg !713, !tbaa !123
  tail call void @llvm.dbg.value(metadata double poison, metadata !679, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double poison, metadata !679, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double poison, metadata !679, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 1, metadata !682, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !673, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !674, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !675, metadata !DIExpression()), !dbg !688
  %29 = fmul double %1, %1
  br label %30, !dbg !714

30:                                               ; preds = %4, %53
  %31 = phi double [ 1.000000e+00, %4 ], [ %45, %53 ]
  %32 = phi i32 [ 1, %4 ], [ %54, %53 ]
  %33 = phi double [ 1.000000e+00, %4 ], [ %46, %53 ]
  %34 = phi double [ 0.000000e+00, %4 ], [ %49, %53 ]
  tail call void @llvm.dbg.value(metadata double %31, metadata !673, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !682, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %33, metadata !674, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %34, metadata !675, metadata !DIExpression()), !dbg !688
  %35 = sitofp i32 %32 to double, !dbg !715
  %36 = fadd double %35, -5.000000e-01, !dbg !716
  tail call void @llvm.dbg.value(metadata double %36, metadata !683, metadata !DIExpression()), !dbg !717
  %37 = fmul double %36, %36, !dbg !718
  %38 = fadd double %29, %37, !dbg !719
  %39 = fmul double %15, %38, !dbg !720
  %40 = add nsw i32 %32, %0, !dbg !721
  %41 = sitofp i32 %40 to double, !dbg !722
  %42 = fadd double %41, 5.000000e-01, !dbg !723
  %43 = fdiv double %39, %42, !dbg !724
  %44 = fdiv double %43, %35, !dbg !725
  %45 = fmul double %31, %44, !dbg !726
  tail call void @llvm.dbg.value(metadata double %45, metadata !673, metadata !DIExpression()), !dbg !688
  %46 = fadd double %33, %45, !dbg !727
  tail call void @llvm.dbg.value(metadata double %46, metadata !674, metadata !DIExpression()), !dbg !688
  %47 = call double @llvm.fabs.f64(double %45), !dbg !728
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !729
  %49 = fadd double %34, %48, !dbg !730
  tail call void @llvm.dbg.value(metadata double %49, metadata !675, metadata !DIExpression()), !dbg !688
  %50 = fdiv double %45, %46, !dbg !731
  %51 = call double @llvm.fabs.f64(double %50), !dbg !733
  %52 = fcmp olt double %51, 0x3CC0000000000000, !dbg !734
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = add nuw nsw i32 %32, 1, !dbg !735
  tail call void @llvm.dbg.value(metadata double %45, metadata !673, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !682, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %46, metadata !674, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %49, metadata !675, metadata !DIExpression()), !dbg !688
  %55 = icmp eq i32 %54, 5000, !dbg !736
  br i1 %55, label %56, label %30, !dbg !714, !llvm.loop !737

56:                                               ; preds = %30, %53
  %57 = phi i32 [ %32, %30 ], [ 5000, %53 ], !dbg !739
  %58 = fadd double %26, %28, !dbg !740
  %59 = fadd double %16, 5.000000e-01, !dbg !741
  %60 = fmul double %59, 5.000000e-01, !dbg !742
  %61 = fmul double %13, 2.000000e+00, !dbg !743
  %62 = fadd double %61, 0x3FE62E42FEFA39EF, !dbg !744
  tail call void @llvm.dbg.value(metadata double %62, metadata !670, metadata !DIExpression()), !dbg !688
  %63 = fadd double %12, 0x3FE62E42FEFA39EF, !dbg !745
  tail call void @llvm.dbg.value(metadata double %63, metadata !669, metadata !DIExpression()), !dbg !688
  %64 = fsub double %62, %63, !dbg !746
  %65 = fmul double %60, %64, !dbg !747
  tail call void @llvm.dbg.value(metadata double %65, metadata !680, metadata !DIExpression()), !dbg !688
  %66 = fadd double %20, 0x3FF250D048E7A1BD, !dbg !748
  %67 = fadd double %66, 0xBFE62E42FEFA39EF, !dbg !749
  %68 = fsub double %67, %21, !dbg !750
  %69 = fmul double %68, 5.000000e-01, !dbg !751
  %70 = fadd double %65, %69, !dbg !752
  %71 = fsub double %70, %22, !dbg !753
  %72 = fsub double %71, %24, !dbg !754
  tail call void @llvm.dbg.value(metadata double %72, metadata !678, metadata !DIExpression()), !dbg !688
  %73 = call double @llvm.fabs.f64(double %72), !dbg !755
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !756
  %75 = fadd double %58, %74, !dbg !757
  tail call void @llvm.dbg.value(metadata double %75, metadata !679, metadata !DIExpression()), !dbg !688
  %76 = call double @llvm.fabs.f64(double %20), !dbg !758
  %77 = fadd double %76, 0x3FF250D048E7A1BD, !dbg !759
  %78 = fadd double %77, 0x3FE62E42FEFA39EF, !dbg !760
  %79 = fmul double %78, 0x3CC0000000000000, !dbg !761
  %80 = fadd double %79, %75, !dbg !762
  tail call void @llvm.dbg.value(metadata double %80, metadata !679, metadata !DIExpression()), !dbg !688
  %81 = call double @llvm.fabs.f64(double %62), !dbg !763
  %82 = call double @llvm.fabs.f64(double %63), !dbg !764
  %83 = fadd double %82, %81, !dbg !765
  %84 = fmul double %60, %83, !dbg !766
  %85 = fmul double %84, 0x3CC0000000000000, !dbg !767
  %86 = fadd double %85, %80, !dbg !768
  tail call void @llvm.dbg.value(metadata double %86, metadata !679, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %45, metadata !673, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %46, metadata !674, metadata !DIExpression()), !dbg !688
  tail call void @llvm.dbg.value(metadata double %49, metadata !675, metadata !DIExpression()), !dbg !688
  %87 = fadd double %49, %47, !dbg !769
  %88 = call i32 @gsl_sf_exp_mult_err_e(double noundef %72, double noundef %86, double noundef %46, double noundef %87, ptr noundef %3) #8, !dbg !770
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !681, metadata !DIExpression()), !dbg !688
  %89 = icmp eq i32 %88, 0, !dbg !771
  %90 = freeze i32 %57, !dbg !771
  %91 = icmp eq i32 %90, 5000, !dbg !771
  %92 = select i1 %91, i32 11, i32 0, !dbg !771
  %93 = select i1 %89, i32 %92, i32 %88, !dbg !771
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8, !dbg !772
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !772
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !772
  ret i32 %93, !dbg !773
}

declare !dbg !774 i32 @gsl_sf_conicalP_large_x_e(double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !779 i32 @gsl_sf_lnsinh_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !782 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !797, metadata !DIExpression(), metadata !801, metadata ptr %4, metadata !DIExpression()), !dbg !802
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !799, metadata !DIExpression(), metadata !803, metadata ptr %5, metadata !DIExpression()), !dbg !802
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !800, metadata !DIExpression(), metadata !804, metadata ptr %6, metadata !DIExpression()), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !786, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %1, metadata !787, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !788, metadata !DIExpression()), !dbg !805
  %7 = tail call double @llvm.fabs.f64(double %1), !dbg !806
  tail call void @llvm.dbg.value(metadata double %7, metadata !789, metadata !DIExpression()), !dbg !805
  %8 = fcmp oeq double %1, 0.000000e+00, !dbg !807
  br i1 %8, label %9, label %10, !dbg !808

9:                                                ; preds = %3
  store double 0.000000e+00, ptr %2, align 8, !dbg !809, !tbaa !509
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #8, !dbg !811
  br label %52, !dbg !811

10:                                               ; preds = %3
  %11 = sitofp i32 %0 to double, !dbg !813
  %12 = fadd double %11, 1.000000e+00, !dbg !814
  %13 = fdiv double %12, 0x3ED965FEA53D6E41, !dbg !815
  %14 = fcmp olt double %13, %1, !dbg !816
  br i1 %14, label %15, label %41, !dbg !817

15:                                               ; preds = %10
  %16 = fdiv double %12, %1, !dbg !818
  tail call void @llvm.dbg.value(metadata double %16, metadata !790, metadata !DIExpression()), !dbg !819
  %17 = tail call double @log(double noundef %1) #8, !dbg !820
  %18 = fmul double %17, 2.000000e+00, !dbg !821
  %19 = fmul double %16, %16, !dbg !822
  %20 = fadd double %19, 1.000000e+00, !dbg !823
  %21 = tail call double @log(double noundef %20) #8, !dbg !824
  %22 = fadd double %18, %21, !dbg !825
  tail call void @llvm.dbg.value(metadata double %22, metadata !794, metadata !DIExpression()), !dbg !819
  %23 = fmul double %12, 2.000000e+00, !dbg !826
  %24 = fsub double 0x3FF250D048E7A1BD, %23, !dbg !827
  %25 = fadd double %11, 5.000000e-01, !dbg !828
  %26 = fmul double %25, %22, !dbg !829
  %27 = fadd double %24, %26, !dbg !830
  %28 = fmul double %1, 2.880000e+02, !dbg !831
  %29 = fmul double %28, %1, !dbg !832
  %30 = fdiv double 1.000000e+00, %29, !dbg !833
  %31 = fadd double %30, %27, !dbg !834
  tail call void @llvm.dbg.value(metadata double %31, metadata !795, metadata !DIExpression()), !dbg !819
  %32 = fmul double %1, 2.000000e+00, !dbg !835
  %33 = fmul double %32, %16, !dbg !836
  %34 = fdiv double %19, 3.000000e+00, !dbg !837
  %35 = fsub double 1.000000e+00, %34, !dbg !838
  %36 = fmul double %33, %35, !dbg !839
  tail call void @llvm.dbg.value(metadata double %36, metadata !796, metadata !DIExpression()), !dbg !819
  %37 = tail call double @log(double noundef %7) #8, !dbg !840
  %38 = fadd double %37, %31, !dbg !841
  %39 = fadd double %36, %38, !dbg !842
  %40 = fadd double %39, 0xBFF250D048E7A1BD, !dbg !843
  store double %40, ptr %2, align 8, !dbg !844, !tbaa !509
  br label %52

41:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !845
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !846
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !847
  %42 = call i32 @gsl_sf_lngamma_complex_e(double noundef %12, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8, !dbg !848
  %43 = fmul double %7, 0x400921FB54442D18, !dbg !849
  %44 = call i32 @gsl_sf_lnsinh_e(double noundef %43, ptr noundef nonnull %6) #8, !dbg !850
  %45 = call double @log(double noundef %7) #8, !dbg !851
  %46 = load double, ptr %6, align 8, !dbg !852, !tbaa !118
  %47 = fadd double %45, %46, !dbg !853
  %48 = load double, ptr %4, align 8, !dbg !854, !tbaa !118
  %49 = fmul double %48, 2.000000e+00, !dbg !855
  %50 = fadd double %47, %49, !dbg !856
  %51 = fadd double %50, 0xBFF250D048E7A1BD, !dbg !857
  store double %51, ptr %2, align 8, !dbg !858, !tbaa !509
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !859
  br label %52

52:                                               ; preds = %41, %15, %9
  ret void, !dbg !860
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !861 double @log(double noundef) local_unnamed_addr #4

declare !dbg !862 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !866 i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @legendre_H3d_CF1_ser(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !869 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !871, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %1, metadata !872, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %2, metadata !873, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !874, metadata !DIExpression()), !dbg !888
  %5 = sitofp i32 %0 to double, !dbg !889
  %6 = fadd double %5, 1.000000e+00, !dbg !890
  %7 = tail call double @hypot(double noundef %1, double noundef %6) #8, !dbg !891
  %8 = fmul double %5, 2.000000e+00, !dbg !892
  %9 = fadd double %8, 3.000000e+00, !dbg !893
  %10 = fmul double %9, %2, !dbg !894
  %11 = fdiv double %7, %10, !dbg !895
  tail call void @llvm.dbg.value(metadata double %11, metadata !875, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !876, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !877, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !878, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !879, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !880, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 1, metadata !881, metadata !DIExpression()), !dbg !888
  %12 = fadd double %8, 1.000000e+00, !dbg !896
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !877, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !878, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 1, metadata !881, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !880, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !879, metadata !DIExpression()), !dbg !888
  %13 = fmul double %1, %1
  br label %14, !dbg !897

14:                                               ; preds = %4, %47
  %15 = phi double [ 1.000000e+00, %4 ], [ %38, %47 ]
  %16 = phi double [ 1.000000e+00, %4 ], [ %39, %47 ]
  %17 = phi i32 [ 1, %4 ], [ %48, %47 ]
  %18 = phi double [ 0.000000e+00, %4 ], [ %43, %47 ]
  %19 = phi double [ 0.000000e+00, %4 ], [ %37, %47 ]
  tail call void @llvm.dbg.value(metadata double %15, metadata !877, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %16, metadata !878, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !881, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %18, metadata !880, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %19, metadata !879, metadata !DIExpression()), !dbg !888
  %20 = sitofp i32 %17 to double, !dbg !898
  %21 = fmul double %20, 2.000000e+00, !dbg !899
  %22 = fadd double %12, %21, !dbg !900
  tail call void @llvm.dbg.value(metadata double %22, metadata !882, metadata !DIExpression()), !dbg !901
  %23 = fadd double %6, %20, !dbg !902
  tail call void @llvm.dbg.value(metadata double %23, metadata !886, metadata !DIExpression()), !dbg !901
  %24 = fmul double %23, %23, !dbg !903
  %25 = fadd double %13, %24, !dbg !904
  %26 = fneg double %25, !dbg !905
  %27 = fadd double %22, 2.000000e+00, !dbg !906
  %28 = fmul double %22, %27, !dbg !907
  %29 = fmul double %28, %2, !dbg !908
  %30 = fmul double %29, %2, !dbg !909
  %31 = fdiv double %26, %30, !dbg !910
  tail call void @llvm.dbg.value(metadata double %31, metadata !887, metadata !DIExpression()), !dbg !901
  %32 = fneg double %31, !dbg !911
  %33 = fadd double %19, 1.000000e+00, !dbg !912
  %34 = fmul double %33, %32, !dbg !913
  %35 = fmul double %33, %31, !dbg !914
  %36 = fadd double %35, 1.000000e+00, !dbg !915
  %37 = fdiv double %34, %36, !dbg !916
  tail call void @llvm.dbg.value(metadata double %37, metadata !879, metadata !DIExpression()), !dbg !888
  %38 = fmul double %15, %37, !dbg !917
  tail call void @llvm.dbg.value(metadata double %38, metadata !877, metadata !DIExpression()), !dbg !888
  %39 = fadd double %16, %38, !dbg !918
  tail call void @llvm.dbg.value(metadata double %39, metadata !878, metadata !DIExpression()), !dbg !888
  %40 = fmul double %20, 0x3CC0000000000000, !dbg !919
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !920
  %42 = fmul double %40, %41, !dbg !921
  %43 = fadd double %18, %42, !dbg !922
  tail call void @llvm.dbg.value(metadata double %43, metadata !880, metadata !DIExpression()), !dbg !888
  %44 = fdiv double %38, %39, !dbg !923
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !925
  %46 = fcmp olt double %45, 0x3CB0000000000000, !dbg !926
  br i1 %46, label %50, label %47

47:                                               ; preds = %14
  %48 = add nuw nsw i32 %17, 1, !dbg !927
  tail call void @llvm.dbg.value(metadata double %38, metadata !877, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %39, metadata !878, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !881, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %43, metadata !880, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %37, metadata !879, metadata !DIExpression()), !dbg !888
  %49 = icmp eq i32 %48, 20000, !dbg !928
  br i1 %49, label %50, label %14, !dbg !897, !llvm.loop !929

50:                                               ; preds = %14, %47
  %51 = phi i32 [ %17, %14 ], [ 20000, %47 ], !dbg !931
  tail call void @llvm.dbg.value(metadata double %38, metadata !877, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %39, metadata !878, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %43, metadata !880, metadata !DIExpression()), !dbg !888
  %52 = fmul double %11, %39, !dbg !932
  store double %52, ptr %3, align 8, !dbg !933, !tbaa !118
  %53 = fmul double %11, %38, !dbg !934
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !935
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !936
  %56 = fmul double %11, %43, !dbg !937
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !938
  %58 = fadd double %57, %54, !dbg !939
  %59 = tail call double @llvm.fabs.f64(double %52), !dbg !940
  %60 = fmul double %59, 0x3CD0000000000000, !dbg !941
  %61 = fadd double %60, %58, !dbg !942
  store double %61, ptr %55, align 8, !dbg !942, !tbaa !123
  %62 = icmp ugt i32 %51, 19999, !dbg !943
  br i1 %62, label %63, label %64, !dbg !945

63:                                               ; preds = %50
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 11) #8, !dbg !946
  br label %64, !dbg !946

64:                                               ; preds = %50, %63
  %65 = phi i32 [ 11, %63 ], [ 0, %50 ], !dbg !948
  ret i32 %65, !dbg !949
}

; Function Attrs: nounwind
declare !dbg !950 double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_H3d_array(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !953 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !988
  call void @llvm.dbg.assign(metadata i1 undef, metadata !967, metadata !DIExpression(), metadata !988, metadata ptr %5, metadata !DIExpression()), !dbg !989
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !990
  call void @llvm.dbg.assign(metadata i1 undef, metadata !971, metadata !DIExpression(), metadata !990, metadata ptr %6, metadata !DIExpression()), !dbg !991
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !992
  call void @llvm.dbg.assign(metadata i1 undef, metadata !973, metadata !DIExpression(), metadata !992, metadata ptr %7, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !957, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata double %1, metadata !958, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata double %2, metadata !959, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !960, metadata !DIExpression()), !dbg !993
  %8 = fcmp olt double %2, 0.000000e+00, !dbg !994
  %9 = icmp slt i32 %0, 0
  %10 = or i1 %9, %8, !dbg !995
  br i1 %10, label %11, label %17, !dbg !995

11:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !961, metadata !DIExpression()), !dbg !996
  br i1 %9, label %16, label %12, !dbg !997

12:                                               ; preds = %11
  %13 = add nuw i32 %0, 1, !dbg !997
  %14 = zext i32 %13 to i64, !dbg !997
  %15 = shl nuw nsw i64 %14, 3, !dbg !997
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %15, i1 false), !dbg !999, !tbaa !509
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !961, metadata !DIExpression()), !dbg !996
  br label %16, !dbg !1001

16:                                               ; preds = %12, %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 1) #8, !dbg !1001
  br label %72

17:                                               ; preds = %4
  %18 = fcmp ogt double %2, 0x40862E42FEFA39EF, !dbg !1003
  br i1 %18, label %19, label %23, !dbg !1004

19:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !1005
  %20 = add nuw i32 %0, 1, !dbg !1006
  %21 = zext i32 %20 to i64, !dbg !1006
  %22 = shl nuw nsw i64 %21, 3, !dbg !1006
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %22, i1 false), !dbg !1008, !tbaa !509
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !964, metadata !DIExpression()), !dbg !1005
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 16) #8, !dbg !1010
  br label %72

23:                                               ; preds = %17
  %24 = icmp eq i32 %0, 0, !dbg !1012
  br i1 %24, label %25, label %28, !dbg !1013

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1014
  %26 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef 0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !970, metadata !DIExpression()), !dbg !989
  %27 = load double, ptr %5, align 8, !dbg !1016, !tbaa !118
  store double %27, ptr %3, align 8, !dbg !1017, !tbaa !509
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1018
  br label %72

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1019
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1020
  %29 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !974, metadata !DIExpression()), !dbg !991
  %30 = add nsw i32 %0, -1, !dbg !1022
  %31 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %30, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !975, metadata !DIExpression()), !dbg !991
  %32 = icmp eq i32 %29, 0, !dbg !1024
  %33 = select i1 %32, i32 %31, i32 %29, !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !976, metadata !DIExpression()), !dbg !991
  %34 = call double @tanh(double noundef %2) #8, !dbg !1025
  %35 = fdiv double 1.000000e+00, %34, !dbg !1026
  tail call void @llvm.dbg.value(metadata double %35, metadata !977, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 0, metadata !978, metadata !DIExpression()), !dbg !991
  %36 = load double, ptr %6, align 8, !dbg !1027, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %36, metadata !979, metadata !DIExpression()), !dbg !991
  %37 = load double, ptr %7, align 8, !dbg !1028, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %37, metadata !980, metadata !DIExpression()), !dbg !991
  %38 = zext nneg i32 %0 to i64
  %39 = getelementptr inbounds double, ptr %3, i64 %38, !dbg !1029
  store double %36, ptr %39, align 8, !dbg !1030, !tbaa !509
  %40 = zext nneg i32 %30 to i64
  %41 = getelementptr inbounds double, ptr %3, i64 %40, !dbg !1031
  store double %37, ptr %41, align 8, !dbg !1032, !tbaa !509
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !982, metadata !DIExpression()), !dbg !991
  %42 = getelementptr double, ptr %3, i64 -1, !dbg !1033
  %43 = icmp eq i32 %0, 1, !dbg !1034
  br i1 %43, label %69, label %44, !dbg !1035

44:                                               ; preds = %28, %44
  %45 = phi i64 [ %65, %44 ], [ %40, %28 ]
  %46 = phi double [ %61, %44 ], [ %37, %28 ]
  %47 = phi double [ %46, %44 ], [ %36, %28 ]
  %48 = phi i32 [ %64, %44 ], [ 0, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !982, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata double %46, metadata !980, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata double %47, metadata !979, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !978, metadata !DIExpression()), !dbg !991
  %49 = trunc i64 %45 to i32, !dbg !1036
  %50 = sitofp i32 %49 to double, !dbg !1036
  %51 = call double @hypot(double noundef %1, double noundef %50) #8, !dbg !1037
  tail call void @llvm.dbg.value(metadata double %51, metadata !983, metadata !DIExpression()), !dbg !1038
  %52 = fadd double %50, 1.000000e+00, !dbg !1039
  %53 = call double @hypot(double noundef %1, double noundef %52) #8, !dbg !1040
  tail call void @llvm.dbg.value(metadata double %53, metadata !987, metadata !DIExpression()), !dbg !1038
  %54 = fmul double %50, 2.000000e+00, !dbg !1041
  %55 = fadd double %54, 1.000000e+00, !dbg !1042
  %56 = fmul double %35, %55, !dbg !1043
  %57 = fmul double %46, %56, !dbg !1044
  %58 = fmul double %47, %53, !dbg !1045
  %59 = fsub double %57, %58, !dbg !1046
  %60 = fdiv double %59, %51, !dbg !1047
  tail call void @llvm.dbg.value(metadata double %60, metadata !981, metadata !DIExpression()), !dbg !991
  %61 = freeze double %60, !dbg !1048
  %62 = getelementptr double, ptr %42, i64 %45, !dbg !1050
  store double %61, ptr %62, align 8, !dbg !1051, !tbaa !509
  %63 = fcmp olt double %61, 0x7FEFFFFFFFFFFFFF, !dbg !1048
  %64 = select i1 %63, i32 %48, i32 16, !dbg !1052
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !978, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata double %46, metadata !979, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata double %60, metadata !980, metadata !DIExpression()), !dbg !991
  %65 = add nsw i64 %45, -1, !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !982, metadata !DIExpression()), !dbg !991
  %66 = icmp ugt i64 %45, 1, !dbg !1034
  br i1 %66, label %44, label %67, !dbg !1035, !llvm.loop !1054

67:                                               ; preds = %44
  %68 = icmp eq i32 %64, 0, !dbg !1056
  br i1 %68, label %69, label %70, !dbg !1056

69:                                               ; preds = %28, %67
  br label %70, !dbg !1056

70:                                               ; preds = %67, %69
  %71 = phi i32 [ %33, %69 ], [ %64, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1057
  br label %72

72:                                               ; preds = %19, %16, %25, %70
  %73 = phi i32 [ 1, %16 ], [ 16, %19 ], [ %26, %25 ], [ %71, %70 ], !dbg !1058
  ret i32 %73, !dbg !1059
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1060 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1068
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1066, metadata !DIExpression(), metadata !1068, metadata ptr %3, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata double %0, metadata !1064, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata double %1, metadata !1065, metadata !DIExpression()), !dbg !1069
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1070
  %4 = call i32 @gsl_sf_legendre_H3d_0_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1070, !range !467
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1067, metadata !DIExpression()), !dbg !1069
  %5 = icmp eq i32 %4, 0, !dbg !1071
  br i1 %5, label %7, label %6, !dbg !1070

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 557, i32 noundef 1) #8, !dbg !1073
  br label %7, !dbg !1073

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1070, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1076
  ret double %8, !dbg !1076
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d_1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1077 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1081, metadata !DIExpression(), metadata !1083, metadata ptr %3, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double %0, metadata !1079, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double %1, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1085
  %4 = call i32 @gsl_sf_legendre_H3d_1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1085, !range !467
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1082, metadata !DIExpression()), !dbg !1084
  %5 = icmp eq i32 %4, 0, !dbg !1086
  br i1 %5, label %7, label %6, !dbg !1085

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 562, i32 noundef 1) #8, !dbg !1088
  br label %7, !dbg !1088

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1085, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1091
  ret double %8, !dbg !1091
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !1092 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1101
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1099, metadata !DIExpression(), metadata !1101, metadata ptr %4, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1096, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata double %1, metadata !1097, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata double %2, metadata !1098, metadata !DIExpression()), !dbg !1102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1103
  %5 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1100, metadata !DIExpression()), !dbg !1102
  %6 = icmp eq i32 %5, 0, !dbg !1104
  br i1 %6, label %8, label %7, !dbg !1103

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 567, i32 noundef %5) #8, !dbg !1106
  br label %8, !dbg !1106

8:                                                ; preds = %3, %7
  %9 = load double, ptr %4, align 8, !dbg !1103, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1109
  ret double %9, !dbg !1109
}

declare !dbg !1110 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1112 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "legendre_H3d.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "d719e56544761e713912fd0c6943608f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 46)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 567, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 47)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !31, isLocal: true, isDefinition: true)
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
!84 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0_e", scope: !2, file: !2, line: 248, type: !85, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !96)
!85 = !DISubroutineType(types: !86)
!86 = !{!38, !87, !87, !89}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !91, line: 41, baseType: !92)
!91 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !91, line: 37, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !91, line: 38, baseType: !88, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !92, file: !91, line: 39, baseType: !88, size: 64, offset: 64)
!96 = !{!97, !98, !99, !100, !104, !105, !108}
!97 = !DILocalVariable(name: "lambda", arg: 1, scope: !84, file: !2, line: 248, type: !87)
!98 = !DILocalVariable(name: "eta", arg: 2, scope: !84, file: !2, line: 248, type: !87)
!99 = !DILocalVariable(name: "result", arg: 3, scope: !84, file: !2, line: 248, type: !89)
!100 = !DILocalVariable(name: "lam_eta", scope: !101, file: !2, line: 261, type: !87)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 260, column: 8)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 255, column: 11)
!103 = distinct !DILexicalBlock(scope: !84, file: !2, line: 252, column: 6)
!104 = !DILocalVariable(name: "s", scope: !101, file: !2, line: 262, type: !90)
!105 = !DILocalVariable(name: "f", scope: !106, file: !2, line: 265, type: !88)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 264, column: 40)
!107 = distinct !DILexicalBlock(scope: !101, file: !2, line: 264, column: 8)
!108 = !DILocalVariable(name: "f", scope: !109, file: !2, line: 272, type: !88)
!109 = distinct !DILexicalBlock(scope: !107, file: !2, line: 271, column: 10)
!110 = distinct !DIAssignID()
!111 = !DILocation(line: 0, scope: !101)
!112 = !DILocation(line: 0, scope: !84)
!113 = !DILocation(line: 252, column: 10, scope: !103)
!114 = !DILocation(line: 252, column: 6, scope: !84)
!115 = !DILocation(line: 253, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 253, column: 5)
!117 = distinct !DILexicalBlock(scope: !103, file: !2, line: 252, column: 17)
!118 = !{!119, !120, i64 0}
!119 = !{!"gsl_sf_result_struct", !120, i64 0, !120, i64 8}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!119, !120, i64 8}
!124 = !DILocation(line: 253, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !2, line: 253, column: 5)
!126 = !DILocation(line: 255, column: 15, scope: !102)
!127 = !DILocation(line: 255, column: 22, scope: !102)
!128 = !DILocation(line: 256, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !102, file: !2, line: 255, column: 40)
!130 = !DILocation(line: 257, column: 13, scope: !129)
!131 = !DILocation(line: 257, column: 17, scope: !129)
!132 = !DILocation(line: 258, column: 5, scope: !129)
!133 = !DILocation(line: 261, column: 35, scope: !101)
!134 = !DILocation(line: 262, column: 5, scope: !101)
!135 = !DILocation(line: 263, column: 53, scope: !101)
!136 = !DILocation(line: 263, column: 51, scope: !101)
!137 = !DILocation(line: 263, column: 5, scope: !101)
!138 = !DILocation(line: 264, column: 12, scope: !107)
!139 = !DILocation(line: 264, column: 8, scope: !101)
!140 = !DILocation(line: 265, column: 22, scope: !106)
!141 = !DILocation(line: 265, column: 37, scope: !106)
!142 = !DILocation(line: 265, column: 33, scope: !106)
!143 = !DILocation(line: 265, column: 31, scope: !106)
!144 = !DILocation(line: 0, scope: !106)
!145 = !DILocation(line: 266, column: 28, scope: !106)
!146 = !DILocation(line: 266, column: 24, scope: !106)
!147 = !DILocation(line: 266, column: 20, scope: !106)
!148 = !DILocation(line: 267, column: 22, scope: !106)
!149 = !DILocation(line: 267, column: 41, scope: !106)
!150 = !DILocation(line: 267, column: 51, scope: !106)
!151 = !DILocation(line: 267, column: 38, scope: !106)
!152 = !DILocation(line: 267, column: 58, scope: !106)
!153 = !DILocation(line: 268, column: 22, scope: !106)
!154 = !DILocation(line: 268, column: 34, scope: !106)
!155 = !DILocation(line: 268, column: 30, scope: !106)
!156 = !DILocation(line: 270, column: 5, scope: !106)
!157 = !DILocation(line: 272, column: 30, scope: !109)
!158 = !DILocation(line: 272, column: 29, scope: !109)
!159 = !DILocation(line: 272, column: 21, scope: !109)
!160 = !DILocation(line: 0, scope: !109)
!161 = !DILocation(line: 273, column: 28, scope: !109)
!162 = !DILocation(line: 273, column: 24, scope: !109)
!163 = !DILocation(line: 273, column: 20, scope: !109)
!164 = !DILocation(line: 274, column: 22, scope: !109)
!165 = !DILocation(line: 274, column: 41, scope: !109)
!166 = !DILocation(line: 274, column: 51, scope: !109)
!167 = !DILocation(line: 274, column: 38, scope: !109)
!168 = !DILocation(line: 274, column: 58, scope: !109)
!169 = !DILocation(line: 275, column: 22, scope: !109)
!170 = !DILocation(line: 275, column: 34, scope: !109)
!171 = !DILocation(line: 275, column: 30, scope: !109)
!172 = !DILocation(line: 0, scope: !107)
!173 = !DILocation(line: 279, column: 3, scope: !102)
!174 = !DILocation(line: 0, scope: !103)
!175 = !DILocation(line: 280, column: 1, scope: !84)
!176 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !179, !38, !38}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!181 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !182, file: !182, line: 121, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!183 = !DISubprogram(name: "exp", scope: !184, file: !184, line: 95, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!185 = !DISubroutineType(types: !186)
!186 = !{!88, !88}
!187 = !DISubprogram(name: "sinh", scope: !184, file: !184, line: 73, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1_e", scope: !2, file: !2, line: 284, type: !85, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !201, !202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !221}
!190 = !DILocalVariable(name: "lambda", arg: 1, scope: !188, file: !2, line: 284, type: !87)
!191 = !DILocalVariable(name: "eta", arg: 2, scope: !188, file: !2, line: 284, type: !87)
!192 = !DILocalVariable(name: "result", arg: 3, scope: !188, file: !2, line: 284, type: !89)
!193 = !DILocalVariable(name: "xi", scope: !188, file: !2, line: 286, type: !87)
!194 = !DILocalVariable(name: "lsq", scope: !188, file: !2, line: 287, type: !87)
!195 = !DILocalVariable(name: "lsqp1", scope: !188, file: !2, line: 288, type: !87)
!196 = !DILocalVariable(name: "etasq", scope: !197, file: !2, line: 301, type: !88)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 300, column: 70)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 300, column: 11)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 295, column: 11)
!200 = distinct !DILexicalBlock(scope: !188, file: !2, line: 292, column: 6)
!201 = !DILocalVariable(name: "xisq", scope: !197, file: !2, line: 302, type: !88)
!202 = !DILocalVariable(name: "term1", scope: !197, file: !2, line: 303, type: !88)
!203 = !DILocalVariable(name: "term2", scope: !197, file: !2, line: 304, type: !88)
!204 = !DILocalVariable(name: "sinh_term", scope: !197, file: !2, line: 305, type: !88)
!205 = !DILocalVariable(name: "pre", scope: !197, file: !2, line: 306, type: !88)
!206 = !DILocalVariable(name: "sin_term", scope: !207, file: !2, line: 313, type: !88)
!207 = distinct !DILexicalBlock(scope: !198, file: !2, line: 312, column: 8)
!208 = !DILocalVariable(name: "cos_term", scope: !207, file: !2, line: 314, type: !88)
!209 = !DILocalVariable(name: "coth_term", scope: !207, file: !2, line: 315, type: !88)
!210 = !DILocalVariable(name: "sinh_term", scope: !207, file: !2, line: 316, type: !88)
!211 = !DILocalVariable(name: "sin_term_err", scope: !207, file: !2, line: 317, type: !88)
!212 = !DILocalVariable(name: "cos_term_err", scope: !207, file: !2, line: 318, type: !88)
!213 = !DILocalVariable(name: "t1", scope: !207, file: !2, line: 319, type: !88)
!214 = !DILocalVariable(name: "pre_val", scope: !207, file: !2, line: 320, type: !88)
!215 = !DILocalVariable(name: "pre_err", scope: !207, file: !2, line: 321, type: !88)
!216 = !DILocalVariable(name: "term1", scope: !207, file: !2, line: 322, type: !88)
!217 = !DILocalVariable(name: "term2", scope: !207, file: !2, line: 323, type: !88)
!218 = !DILocalVariable(name: "sin_xi_result", scope: !219, file: !2, line: 331, type: !90)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 330, column: 10)
!220 = distinct !DILexicalBlock(scope: !207, file: !2, line: 324, column: 8)
!221 = !DILocalVariable(name: "cos_xi_result", scope: !219, file: !2, line: 332, type: !90)
!222 = distinct !DIAssignID()
!223 = !DILocation(line: 0, scope: !219)
!224 = distinct !DIAssignID()
!225 = !DILocation(line: 0, scope: !188)
!226 = !DILocation(line: 286, column: 32, scope: !188)
!227 = !DILocation(line: 286, column: 24, scope: !188)
!228 = !DILocation(line: 287, column: 30, scope: !188)
!229 = !DILocation(line: 288, column: 28, scope: !188)
!230 = !DILocation(line: 292, column: 10, scope: !200)
!231 = !DILocation(line: 292, column: 6, scope: !188)
!232 = !DILocation(line: 293, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 293, column: 5)
!234 = distinct !DILexicalBlock(scope: !200, file: !2, line: 292, column: 17)
!235 = !DILocation(line: 293, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 293, column: 5)
!237 = !DILocation(line: 295, column: 15, scope: !199)
!238 = !DILocation(line: 295, column: 22, scope: !199)
!239 = !DILocation(line: 297, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !199, file: !2, line: 295, column: 40)
!241 = !DILocation(line: 298, column: 5, scope: !240)
!242 = !DILocation(line: 300, column: 14, scope: !198)
!243 = !DILocation(line: 300, column: 38, scope: !198)
!244 = !DILocation(line: 301, column: 23, scope: !197)
!245 = !DILocation(line: 0, scope: !197)
!246 = !DILocation(line: 302, column: 22, scope: !197)
!247 = !DILocation(line: 303, column: 27, scope: !197)
!248 = !DILocation(line: 303, column: 34, scope: !197)
!249 = !DILocation(line: 304, column: 25, scope: !197)
!250 = !DILocation(line: 304, column: 31, scope: !197)
!251 = !DILocation(line: 304, column: 43, scope: !197)
!252 = !DILocation(line: 304, column: 49, scope: !197)
!253 = !DILocation(line: 304, column: 38, scope: !197)
!254 = !DILocation(line: 304, column: 60, scope: !197)
!255 = !DILocation(line: 304, column: 65, scope: !197)
!256 = !DILocation(line: 304, column: 55, scope: !197)
!257 = !DILocation(line: 304, column: 71, scope: !197)
!258 = !DILocation(line: 305, column: 37, scope: !197)
!259 = !DILocation(line: 305, column: 59, scope: !197)
!260 = !DILocation(line: 305, column: 63, scope: !197)
!261 = !DILocation(line: 305, column: 49, scope: !197)
!262 = !DILocation(line: 305, column: 42, scope: !197)
!263 = !DILocation(line: 305, column: 28, scope: !197)
!264 = !DILocation(line: 306, column: 28, scope: !197)
!265 = !DILocation(line: 306, column: 27, scope: !197)
!266 = !DILocation(line: 306, column: 40, scope: !197)
!267 = !DILocation(line: 307, column: 33, scope: !197)
!268 = !DILocation(line: 307, column: 24, scope: !197)
!269 = !DILocation(line: 307, column: 18, scope: !197)
!270 = !DILocation(line: 308, column: 24, scope: !197)
!271 = !DILocation(line: 308, column: 45, scope: !197)
!272 = !DILocation(line: 308, column: 59, scope: !197)
!273 = !DILocation(line: 308, column: 57, scope: !197)
!274 = !DILocation(line: 308, column: 42, scope: !197)
!275 = !DILocation(line: 308, column: 13, scope: !197)
!276 = !DILocation(line: 309, column: 44, scope: !197)
!277 = !DILocation(line: 309, column: 42, scope: !197)
!278 = !DILocation(line: 309, column: 17, scope: !197)
!279 = !DILocation(line: 324, column: 8, scope: !207)
!280 = !DILocation(line: 325, column: 26, scope: !281)
!281 = distinct !DILexicalBlock(scope: !220, file: !2, line: 324, column: 36)
!282 = !DILocation(line: 325, column: 29, scope: !281)
!283 = !DILocation(line: 325, column: 48, scope: !281)
!284 = !DILocation(line: 325, column: 41, scope: !281)
!285 = !DILocation(line: 325, column: 34, scope: !281)
!286 = !DILocation(line: 325, column: 22, scope: !281)
!287 = !DILocation(line: 0, scope: !207)
!288 = !DILocation(line: 326, column: 27, scope: !281)
!289 = !DILocation(line: 326, column: 30, scope: !281)
!290 = !DILocation(line: 326, column: 48, scope: !281)
!291 = !DILocation(line: 326, column: 41, scope: !281)
!292 = !DILocation(line: 326, column: 34, scope: !281)
!293 = !DILocation(line: 326, column: 22, scope: !281)
!294 = !DILocation(line: 329, column: 5, scope: !281)
!295 = !DILocation(line: 331, column: 7, scope: !219)
!296 = !DILocation(line: 332, column: 7, scope: !219)
!297 = !DILocation(line: 333, column: 7, scope: !219)
!298 = !DILocation(line: 334, column: 7, scope: !219)
!299 = !DILocation(line: 335, column: 32, scope: !219)
!300 = !DILocation(line: 335, column: 35, scope: !219)
!301 = !DILocation(line: 336, column: 32, scope: !219)
!302 = !DILocation(line: 337, column: 36, scope: !219)
!303 = !DILocation(line: 337, column: 39, scope: !219)
!304 = !DILocation(line: 338, column: 36, scope: !219)
!305 = !DILocation(line: 339, column: 5, scope: !220)
!306 = !DILocation(line: 0, scope: !220)
!307 = !DILocation(line: 340, column: 8, scope: !207)
!308 = !DILocation(line: 341, column: 28, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 340, column: 37)
!310 = distinct !DILexicalBlock(scope: !207, file: !2, line: 340, column: 8)
!311 = !DILocation(line: 341, column: 32, scope: !309)
!312 = !DILocation(line: 341, column: 53, scope: !309)
!313 = !DILocation(line: 341, column: 44, scope: !309)
!314 = !DILocation(line: 341, column: 37, scope: !309)
!315 = !DILocation(line: 341, column: 23, scope: !309)
!316 = !DILocation(line: 342, column: 32, scope: !309)
!317 = !DILocation(line: 342, column: 54, scope: !309)
!318 = !DILocation(line: 342, column: 58, scope: !309)
!319 = !DILocation(line: 342, column: 44, scope: !309)
!320 = !DILocation(line: 342, column: 37, scope: !309)
!321 = !DILocation(line: 342, column: 23, scope: !309)
!322 = !DILocation(line: 343, column: 5, scope: !309)
!323 = !DILocation(line: 345, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !310, file: !2, line: 344, column: 10)
!325 = !DILocation(line: 345, column: 22, scope: !324)
!326 = !DILocation(line: 346, column: 23, scope: !324)
!327 = !DILocation(line: 346, column: 22, scope: !324)
!328 = !DILocation(line: 0, scope: !310)
!329 = !DILocation(line: 348, column: 10, scope: !207)
!330 = !DILocation(line: 348, column: 22, scope: !207)
!331 = !DILocation(line: 349, column: 24, scope: !207)
!332 = !DILocation(line: 350, column: 39, scope: !207)
!333 = !DILocation(line: 350, column: 37, scope: !207)
!334 = !DILocation(line: 351, column: 21, scope: !207)
!335 = !DILocation(line: 353, column: 37, scope: !207)
!336 = !DILocation(line: 353, column: 28, scope: !207)
!337 = !DILocation(line: 353, column: 18, scope: !207)
!338 = !DILocation(line: 354, column: 30, scope: !207)
!339 = !DILocation(line: 354, column: 28, scope: !207)
!340 = !DILocation(line: 354, column: 13, scope: !207)
!341 = !DILocation(line: 355, column: 44, scope: !207)
!342 = !DILocation(line: 355, column: 56, scope: !207)
!343 = !DILocation(line: 355, column: 28, scope: !207)
!344 = !DILocation(line: 355, column: 17, scope: !207)
!345 = !DILocation(line: 356, column: 28, scope: !207)
!346 = !DILocation(line: 356, column: 51, scope: !207)
!347 = !DILocation(line: 356, column: 61, scope: !207)
!348 = !DILocation(line: 356, column: 48, scope: !207)
!349 = !DILocation(line: 356, column: 68, scope: !207)
!350 = !DILocation(line: 356, column: 17, scope: !207)
!351 = !DILocation(line: 357, column: 44, scope: !207)
!352 = !DILocation(line: 357, column: 42, scope: !207)
!353 = !DILocation(line: 357, column: 17, scope: !207)
!354 = !DILocation(line: 0, scope: !200)
!355 = !DILocation(line: 360, column: 1, scope: !188)
!356 = !DISubprogram(name: "gsl_sf_sin_e", scope: !182, file: !182, line: 45, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!38, !88, !89}
!359 = !DISubprogram(name: "gsl_sf_cos_e", scope: !182, file: !182, line: 51, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubprogram(name: "tanh", scope: !184, file: !184, line: 75, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_e", scope: !2, file: !2, line: 364, type: !362, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{!38, !364, !87, !87, !89}
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !383, !384, !385, !388, !389, !390, !391, !392, !393, !396, !397, !398, !401, !402, !403, !404, !405, !406, !408, !409, !410, !411, !412, !413, !414, !415, !419, !420, !423, !424, !426}
!366 = !DILocalVariable(name: "ell", arg: 1, scope: !361, file: !2, line: 364, type: !364)
!367 = !DILocalVariable(name: "lambda", arg: 2, scope: !361, file: !2, line: 364, type: !87)
!368 = !DILocalVariable(name: "eta", arg: 3, scope: !361, file: !2, line: 364, type: !87)
!369 = !DILocalVariable(name: "result", arg: 4, scope: !361, file: !2, line: 365, type: !89)
!370 = !DILocalVariable(name: "abs_lam", scope: !361, file: !2, line: 367, type: !87)
!371 = !DILocalVariable(name: "lsq", scope: !361, file: !2, line: 368, type: !87)
!372 = !DILocalVariable(name: "xi", scope: !361, file: !2, line: 369, type: !87)
!373 = !DILocalVariable(name: "cosh_eta", scope: !361, file: !2, line: 370, type: !87)
!374 = !DILocalVariable(name: "P", scope: !375, file: !2, line: 398, type: !90)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 395, column: 88)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 395, column: 11)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 392, column: 11)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 387, column: 11)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 384, column: 11)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 381, column: 11)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 377, column: 11)
!382 = distinct !DILexicalBlock(scope: !361, file: !2, line: 374, column: 6)
!383 = !DILocalVariable(name: "lm", scope: !375, file: !2, line: 399, type: !88)
!384 = !DILocalVariable(name: "stat_P", scope: !375, file: !2, line: 400, type: !38)
!385 = !DILocalVariable(name: "lnN", scope: !386, file: !2, line: 407, type: !88)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 406, column: 10)
!387 = distinct !DILexicalBlock(scope: !375, file: !2, line: 401, column: 8)
!388 = !DILocalVariable(name: "lnsh", scope: !386, file: !2, line: 408, type: !90)
!389 = !DILocalVariable(name: "ln_abslam", scope: !386, file: !2, line: 409, type: !88)
!390 = !DILocalVariable(name: "lnpre_val", scope: !386, file: !2, line: 410, type: !88)
!391 = !DILocalVariable(name: "lnpre_err", scope: !386, file: !2, line: 410, type: !88)
!392 = !DILocalVariable(name: "stat_e", scope: !386, file: !2, line: 411, type: !38)
!393 = !DILocalVariable(name: "P", scope: !394, file: !2, line: 426, type: !90)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 423, column: 37)
!395 = distinct !DILexicalBlock(scope: !376, file: !2, line: 423, column: 11)
!396 = !DILocalVariable(name: "lm", scope: !394, file: !2, line: 427, type: !88)
!397 = !DILocalVariable(name: "stat_P", scope: !394, file: !2, line: 428, type: !38)
!398 = !DILocalVariable(name: "lnN", scope: !399, file: !2, line: 438, type: !88)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 437, column: 10)
!400 = distinct !DILexicalBlock(scope: !394, file: !2, line: 432, column: 8)
!401 = !DILocalVariable(name: "lnsh", scope: !399, file: !2, line: 439, type: !90)
!402 = !DILocalVariable(name: "ln_abslam", scope: !399, file: !2, line: 440, type: !88)
!403 = !DILocalVariable(name: "lnpre_val", scope: !399, file: !2, line: 441, type: !88)
!404 = !DILocalVariable(name: "lnpre_err", scope: !399, file: !2, line: 441, type: !88)
!405 = !DILocalVariable(name: "stat_e", scope: !399, file: !2, line: 442, type: !38)
!406 = !DILocalVariable(name: "coth_eta", scope: !407, file: !2, line: 457, type: !87)
!407 = distinct !DILexicalBlock(scope: !395, file: !2, line: 454, column: 8)
!408 = !DILocalVariable(name: "coth_err_mult", scope: !407, file: !2, line: 458, type: !87)
!409 = !DILocalVariable(name: "rH", scope: !407, file: !2, line: 459, type: !90)
!410 = !DILocalVariable(name: "stat_CF1", scope: !407, file: !2, line: 460, type: !38)
!411 = !DILocalVariable(name: "Hlm1", scope: !407, file: !2, line: 461, type: !88)
!412 = !DILocalVariable(name: "Hl", scope: !407, file: !2, line: 462, type: !88)
!413 = !DILocalVariable(name: "Hlp1", scope: !407, file: !2, line: 463, type: !88)
!414 = !DILocalVariable(name: "lp", scope: !407, file: !2, line: 464, type: !38)
!415 = !DILocalVariable(name: "root_term_0", scope: !416, file: !2, line: 466, type: !88)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 465, column: 29)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 465, column: 5)
!418 = distinct !DILexicalBlock(scope: !407, file: !2, line: 465, column: 5)
!419 = !DILocalVariable(name: "root_term_1", scope: !416, file: !2, line: 467, type: !88)
!420 = !DILocalVariable(name: "H0", scope: !421, file: !2, line: 474, type: !90)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 473, column: 31)
!422 = distinct !DILexicalBlock(scope: !407, file: !2, line: 473, column: 8)
!423 = !DILocalVariable(name: "stat_H0", scope: !421, file: !2, line: 475, type: !38)
!424 = !DILocalVariable(name: "H1", scope: !425, file: !2, line: 483, type: !90)
!425 = distinct !DILexicalBlock(scope: !422, file: !2, line: 482, column: 10)
!426 = !DILocalVariable(name: "stat_H1", scope: !425, file: !2, line: 484, type: !38)
!427 = distinct !DIAssignID()
!428 = !DILocation(line: 0, scope: !375)
!429 = distinct !DIAssignID()
!430 = distinct !DIAssignID()
!431 = !DILocation(line: 0, scope: !386)
!432 = distinct !DIAssignID()
!433 = distinct !DIAssignID()
!434 = !DILocation(line: 0, scope: !394)
!435 = distinct !DIAssignID()
!436 = distinct !DIAssignID()
!437 = !DILocation(line: 0, scope: !399)
!438 = distinct !DIAssignID()
!439 = distinct !DIAssignID()
!440 = !DILocation(line: 0, scope: !407)
!441 = distinct !DIAssignID()
!442 = !DILocation(line: 0, scope: !421)
!443 = distinct !DIAssignID()
!444 = !DILocation(line: 0, scope: !425)
!445 = !DILocation(line: 0, scope: !361)
!446 = !DILocation(line: 367, column: 26, scope: !361)
!447 = !DILocation(line: 368, column: 33, scope: !361)
!448 = !DILocation(line: 369, column: 34, scope: !361)
!449 = !DILocation(line: 370, column: 27, scope: !361)
!450 = !DILocation(line: 374, column: 10, scope: !382)
!451 = !DILocation(line: 374, column: 6, scope: !361)
!452 = !DILocation(line: 375, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 375, column: 5)
!454 = distinct !DILexicalBlock(scope: !382, file: !2, line: 374, column: 17)
!455 = !DILocation(line: 375, column: 5, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !2, line: 375, column: 5)
!457 = !DILocation(line: 377, column: 15, scope: !381)
!458 = !DILocation(line: 377, column: 11, scope: !382)
!459 = !DILocation(line: 379, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 379, column: 5)
!461 = distinct !DILexicalBlock(scope: !381, file: !2, line: 377, column: 34)
!462 = !DILocation(line: 379, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !2, line: 379, column: 5)
!464 = !DILocation(line: 381, column: 11, scope: !381)
!465 = !DILocation(line: 382, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !380, file: !2, line: 381, column: 21)
!467 = !{i32 0, i32 2}
!468 = !DILocation(line: 382, column: 5, scope: !466)
!469 = !DILocation(line: 385, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !379, file: !2, line: 384, column: 21)
!471 = !DILocation(line: 385, column: 5, scope: !470)
!472 = !DILocation(line: 387, column: 15, scope: !378)
!473 = !DILocation(line: 387, column: 11, scope: !379)
!474 = !DILocation(line: 389, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !378, file: !2, line: 387, column: 23)
!476 = !DILocation(line: 390, column: 5, scope: !475)
!477 = !DILocation(line: 392, column: 14, scope: !377)
!478 = !DILocation(line: 392, column: 11, scope: !378)
!479 = !DILocation(line: 393, column: 12, scope: !480)
!480 = distinct !DILexicalBlock(scope: !377, file: !2, line: 392, column: 21)
!481 = !DILocation(line: 393, column: 5, scope: !480)
!482 = !DILocation(line: 395, column: 15, scope: !376)
!483 = !DILocation(line: 395, column: 12, scope: !376)
!484 = !DILocation(line: 395, column: 19, scope: !376)
!485 = !DILocation(line: 395, column: 33, scope: !376)
!486 = !DILocation(line: 395, column: 25, scope: !376)
!487 = !DILocation(line: 395, column: 24, scope: !376)
!488 = !DILocation(line: 395, column: 48, scope: !376)
!489 = !DILocation(line: 395, column: 38, scope: !376)
!490 = !DILocation(line: 395, column: 59, scope: !376)
!491 = !DILocation(line: 395, column: 11, scope: !377)
!492 = !DILocation(line: 398, column: 5, scope: !375)
!493 = !DILocation(line: 399, column: 5, scope: !375)
!494 = !DILocation(line: 400, column: 44, scope: !375)
!495 = !DILocation(line: 400, column: 48, scope: !375)
!496 = !DILocation(line: 400, column: 18, scope: !375)
!497 = !DILocation(line: 401, column: 10, scope: !387)
!498 = !DILocation(line: 401, column: 14, scope: !387)
!499 = !DILocation(line: 401, column: 8, scope: !375)
!500 = !DILocation(line: 403, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !387, file: !2, line: 401, column: 22)
!502 = !DILocation(line: 404, column: 7, scope: !501)
!503 = !DILocation(line: 407, column: 7, scope: !386)
!504 = !DILocation(line: 408, column: 7, scope: !386)
!505 = !DILocation(line: 412, column: 7, scope: !386)
!506 = !DILocation(line: 413, column: 7, scope: !386)
!507 = !DILocation(line: 414, column: 19, scope: !386)
!508 = !DILocation(line: 415, column: 34, scope: !386)
!509 = !{!120, !120, i64 0}
!510 = !DILocation(line: 415, column: 32, scope: !386)
!511 = !DILocation(line: 415, column: 38, scope: !386)
!512 = !DILocation(line: 415, column: 53, scope: !386)
!513 = !DILocation(line: 415, column: 46, scope: !386)
!514 = !DILocation(line: 415, column: 23, scope: !386)
!515 = !DILocation(line: 415, column: 58, scope: !386)
!516 = !DILocation(line: 416, column: 25, scope: !386)
!517 = !DILocation(line: 417, column: 67, scope: !386)
!518 = !DILocation(line: 417, column: 65, scope: !386)
!519 = !DILocation(line: 417, column: 48, scope: !386)
!520 = !DILocation(line: 417, column: 80, scope: !386)
!521 = !DILocation(line: 417, column: 78, scope: !386)
!522 = !DILocation(line: 417, column: 42, scope: !386)
!523 = !DILocation(line: 417, column: 17, scope: !386)
!524 = !DILocation(line: 418, column: 44, scope: !386)
!525 = !DILocation(line: 418, column: 42, scope: !386)
!526 = !DILocation(line: 418, column: 17, scope: !386)
!527 = !DILocation(line: 419, column: 50, scope: !386)
!528 = !DILocation(line: 419, column: 48, scope: !386)
!529 = !DILocation(line: 419, column: 67, scope: !386)
!530 = !DILocation(line: 419, column: 74, scope: !386)
!531 = !DILocation(line: 419, column: 16, scope: !386)
!532 = !DILocation(line: 420, column: 14, scope: !386)
!533 = !DILocation(line: 421, column: 5, scope: !387)
!534 = !DILocation(line: 0, scope: !387)
!535 = !DILocation(line: 422, column: 3, scope: !376)
!536 = !DILocation(line: 423, column: 28, scope: !395)
!537 = !DILocation(line: 423, column: 27, scope: !395)
!538 = !DILocation(line: 423, column: 31, scope: !395)
!539 = !DILocation(line: 423, column: 19, scope: !395)
!540 = !DILocation(line: 423, column: 11, scope: !376)
!541 = !DILocation(line: 426, column: 5, scope: !394)
!542 = !DILocation(line: 427, column: 5, scope: !394)
!543 = !DILocation(line: 428, column: 60, scope: !394)
!544 = !DILocation(line: 428, column: 18, scope: !394)
!545 = !DILocation(line: 432, column: 10, scope: !400)
!546 = !DILocation(line: 432, column: 14, scope: !400)
!547 = !DILocation(line: 432, column: 8, scope: !394)
!548 = !DILocation(line: 434, column: 19, scope: !549)
!549 = distinct !DILexicalBlock(scope: !400, file: !2, line: 432, column: 22)
!550 = !DILocation(line: 435, column: 7, scope: !549)
!551 = !DILocation(line: 438, column: 7, scope: !399)
!552 = !DILocation(line: 439, column: 7, scope: !399)
!553 = !DILocation(line: 443, column: 7, scope: !399)
!554 = !DILocation(line: 444, column: 7, scope: !399)
!555 = !DILocation(line: 445, column: 19, scope: !399)
!556 = !DILocation(line: 446, column: 34, scope: !399)
!557 = !DILocation(line: 446, column: 32, scope: !399)
!558 = !DILocation(line: 446, column: 38, scope: !399)
!559 = !DILocation(line: 446, column: 53, scope: !399)
!560 = !DILocation(line: 446, column: 46, scope: !399)
!561 = !DILocation(line: 446, column: 23, scope: !399)
!562 = !DILocation(line: 446, column: 58, scope: !399)
!563 = !DILocation(line: 447, column: 25, scope: !399)
!564 = !DILocation(line: 448, column: 61, scope: !399)
!565 = !DILocation(line: 448, column: 59, scope: !399)
!566 = !DILocation(line: 448, column: 42, scope: !399)
!567 = !DILocation(line: 448, column: 74, scope: !399)
!568 = !DILocation(line: 448, column: 72, scope: !399)
!569 = !DILocation(line: 448, column: 36, scope: !399)
!570 = !DILocation(line: 448, column: 17, scope: !399)
!571 = !DILocation(line: 449, column: 44, scope: !399)
!572 = !DILocation(line: 449, column: 42, scope: !399)
!573 = !DILocation(line: 449, column: 17, scope: !399)
!574 = !DILocation(line: 450, column: 50, scope: !399)
!575 = !DILocation(line: 450, column: 48, scope: !399)
!576 = !DILocation(line: 450, column: 67, scope: !399)
!577 = !DILocation(line: 450, column: 74, scope: !399)
!578 = !DILocation(line: 450, column: 16, scope: !399)
!579 = !DILocation(line: 451, column: 14, scope: !399)
!580 = !DILocation(line: 452, column: 5, scope: !400)
!581 = !DILocation(line: 0, scope: !400)
!582 = !DILocation(line: 453, column: 3, scope: !395)
!583 = !DILocation(line: 457, column: 33, scope: !407)
!584 = !DILocation(line: 457, column: 32, scope: !407)
!585 = !DILocation(line: 458, column: 34, scope: !407)
!586 = !DILocation(line: 458, column: 44, scope: !407)
!587 = !DILocation(line: 459, column: 5, scope: !407)
!588 = !DILocation(line: 460, column: 20, scope: !407)
!589 = !{i32 0, i32 12}
!590 = !DILocation(line: 463, column: 23, scope: !407)
!591 = !DILocation(line: 463, column: 27, scope: !407)
!592 = !DILocation(line: 465, column: 19, scope: !417)
!593 = !DILocation(line: 465, column: 5, scope: !418)
!594 = !DILocation(line: 466, column: 41, scope: !416)
!595 = !DILocation(line: 466, column: 28, scope: !416)
!596 = !DILocation(line: 0, scope: !416)
!597 = !DILocation(line: 467, column: 43, scope: !416)
!598 = !DILocation(line: 467, column: 28, scope: !416)
!599 = !DILocation(line: 468, column: 19, scope: !416)
!600 = !DILocation(line: 468, column: 23, scope: !416)
!601 = !DILocation(line: 468, column: 29, scope: !416)
!602 = !DILocation(line: 468, column: 38, scope: !416)
!603 = !DILocation(line: 468, column: 56, scope: !416)
!604 = !DILocation(line: 468, column: 42, scope: !416)
!605 = !DILocation(line: 468, column: 63, scope: !416)
!606 = !DILocation(line: 465, column: 25, scope: !417)
!607 = distinct !{!607, !593, !608, !609}
!608 = !DILocation(line: 471, column: 5, scope: !418)
!609 = !{!"llvm.loop.mustprogress"}
!610 = !DILocation(line: 473, column: 8, scope: !422)
!611 = !DILocation(line: 473, column: 19, scope: !422)
!612 = !DILocation(line: 473, column: 17, scope: !422)
!613 = !DILocation(line: 0, scope: !422)
!614 = !DILocation(line: 473, column: 8, scope: !407)
!615 = !DILocation(line: 474, column: 7, scope: !421)
!616 = !DILocation(line: 475, column: 21, scope: !421)
!617 = !DILocation(line: 476, column: 38, scope: !421)
!618 = !DILocation(line: 476, column: 47, scope: !421)
!619 = !DILocation(line: 476, column: 42, scope: !421)
!620 = !DILocation(line: 476, column: 20, scope: !421)
!621 = !DILocation(line: 477, column: 38, scope: !421)
!622 = !DILocation(line: 477, column: 53, scope: !421)
!623 = !DILocation(line: 477, column: 48, scope: !421)
!624 = !DILocation(line: 478, column: 30, scope: !421)
!625 = !DILocation(line: 478, column: 33, scope: !421)
!626 = !DILocation(line: 478, column: 22, scope: !421)
!627 = !DILocation(line: 478, column: 42, scope: !421)
!628 = !DILocation(line: 478, column: 54, scope: !421)
!629 = !DILocation(line: 478, column: 72, scope: !421)
!630 = !DILocation(line: 478, column: 70, scope: !421)
!631 = !DILocation(line: 478, column: 19, scope: !421)
!632 = !DILocation(line: 479, column: 44, scope: !421)
!633 = !DILocation(line: 479, column: 19, scope: !421)
!634 = !DILocation(line: 480, column: 14, scope: !421)
!635 = !DILocation(line: 481, column: 5, scope: !422)
!636 = !DILocation(line: 483, column: 7, scope: !425)
!637 = !DILocation(line: 484, column: 21, scope: !425)
!638 = !DILocation(line: 485, column: 38, scope: !425)
!639 = !DILocation(line: 485, column: 49, scope: !425)
!640 = !DILocation(line: 485, column: 44, scope: !425)
!641 = !DILocation(line: 485, column: 20, scope: !425)
!642 = !DILocation(line: 486, column: 38, scope: !425)
!643 = !DILocation(line: 486, column: 55, scope: !425)
!644 = !DILocation(line: 486, column: 50, scope: !425)
!645 = !DILocation(line: 487, column: 30, scope: !425)
!646 = !DILocation(line: 487, column: 33, scope: !425)
!647 = !DILocation(line: 487, column: 22, scope: !425)
!648 = !DILocation(line: 487, column: 42, scope: !425)
!649 = !DILocation(line: 487, column: 54, scope: !425)
!650 = !DILocation(line: 487, column: 72, scope: !425)
!651 = !DILocation(line: 487, column: 70, scope: !425)
!652 = !DILocation(line: 487, column: 19, scope: !425)
!653 = !DILocation(line: 488, column: 44, scope: !425)
!654 = !DILocation(line: 488, column: 19, scope: !425)
!655 = !DILocation(line: 489, column: 14, scope: !425)
!656 = !DILocation(line: 490, column: 5, scope: !422)
!657 = !DILocation(line: 491, column: 3, scope: !395)
!658 = !DILocation(line: 0, scope: !382)
!659 = !DILocation(line: 492, column: 1, scope: !361)
!660 = !DISubprogram(name: "cosh", scope: !184, file: !184, line: 71, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = distinct !DISubprogram(name: "legendre_H3d_series", scope: !2, file: !2, line: 97, type: !362, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!663 = !DILocalVariable(name: "ell", arg: 1, scope: !661, file: !2, line: 97, type: !364)
!664 = !DILocalVariable(name: "lambda", arg: 2, scope: !661, file: !2, line: 97, type: !87)
!665 = !DILocalVariable(name: "eta", arg: 3, scope: !661, file: !2, line: 97, type: !87)
!666 = !DILocalVariable(name: "result", arg: 4, scope: !661, file: !2, line: 98, type: !89)
!667 = !DILocalVariable(name: "nmax", scope: !661, file: !2, line: 100, type: !364)
!668 = !DILocalVariable(name: "shheta", scope: !661, file: !2, line: 101, type: !87)
!669 = !DILocalVariable(name: "ln_zp1", scope: !661, file: !2, line: 102, type: !87)
!670 = !DILocalVariable(name: "ln_zm1", scope: !661, file: !2, line: 103, type: !87)
!671 = !DILocalVariable(name: "zeta", scope: !661, file: !2, line: 104, type: !87)
!672 = !DILocalVariable(name: "lg_lp32", scope: !661, file: !2, line: 105, type: !90)
!673 = !DILocalVariable(name: "term", scope: !661, file: !2, line: 106, type: !88)
!674 = !DILocalVariable(name: "sum", scope: !661, file: !2, line: 107, type: !88)
!675 = !DILocalVariable(name: "sum_err", scope: !661, file: !2, line: 108, type: !88)
!676 = !DILocalVariable(name: "lnsheta", scope: !661, file: !2, line: 109, type: !90)
!677 = !DILocalVariable(name: "lnN", scope: !661, file: !2, line: 110, type: !88)
!678 = !DILocalVariable(name: "lnpre_val", scope: !661, file: !2, line: 111, type: !88)
!679 = !DILocalVariable(name: "lnpre_err", scope: !661, file: !2, line: 111, type: !88)
!680 = !DILocalVariable(name: "lnprepow", scope: !661, file: !2, line: 111, type: !88)
!681 = !DILocalVariable(name: "stat_e", scope: !661, file: !2, line: 112, type: !38)
!682 = !DILocalVariable(name: "n", scope: !661, file: !2, line: 113, type: !38)
!683 = !DILocalVariable(name: "aR", scope: !684, file: !2, line: 124, type: !88)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 123, column: 25)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 123, column: 3)
!686 = distinct !DILexicalBlock(scope: !661, file: !2, line: 123, column: 3)
!687 = distinct !DIAssignID()
!688 = !DILocation(line: 0, scope: !661)
!689 = distinct !DIAssignID()
!690 = distinct !DIAssignID()
!691 = !DILocation(line: 101, column: 33, scope: !661)
!692 = !DILocation(line: 101, column: 25, scope: !661)
!693 = !DILocation(line: 102, column: 49, scope: !661)
!694 = !DILocation(line: 102, column: 41, scope: !661)
!695 = !DILocation(line: 102, column: 33, scope: !661)
!696 = !DILocation(line: 103, column: 37, scope: !661)
!697 = !DILocation(line: 104, column: 23, scope: !661)
!698 = !DILocation(line: 104, column: 30, scope: !661)
!699 = !DILocation(line: 105, column: 3, scope: !661)
!700 = !DILocation(line: 109, column: 3, scope: !661)
!701 = !DILocation(line: 110, column: 3, scope: !661)
!702 = !DILocation(line: 115, column: 20, scope: !661)
!703 = !DILocation(line: 115, column: 24, scope: !661)
!704 = !DILocation(line: 115, column: 3, scope: !661)
!705 = !DILocation(line: 116, column: 3, scope: !661)
!706 = !DILocation(line: 117, column: 3, scope: !661)
!707 = !DILocation(line: 119, column: 32, scope: !661)
!708 = !DILocation(line: 119, column: 63, scope: !661)
!709 = !DILocation(line: 119, column: 78, scope: !661)
!710 = !DILocation(line: 119, column: 88, scope: !661)
!711 = !DILocation(line: 119, column: 84, scope: !661)
!712 = !DILocation(line: 120, column: 24, scope: !661)
!713 = !DILocation(line: 120, column: 38, scope: !661)
!714 = !DILocation(line: 123, column: 3, scope: !686)
!715 = !DILocation(line: 124, column: 17, scope: !684)
!716 = !DILocation(line: 124, column: 19, scope: !684)
!717 = !DILocation(line: 0, scope: !684)
!718 = !DILocation(line: 125, column: 16, scope: !684)
!719 = !DILocation(line: 125, column: 20, scope: !684)
!720 = !DILocation(line: 125, column: 36, scope: !684)
!721 = !DILocation(line: 125, column: 47, scope: !684)
!722 = !DILocation(line: 125, column: 43, scope: !684)
!723 = !DILocation(line: 125, column: 51, scope: !684)
!724 = !DILocation(line: 125, column: 41, scope: !684)
!725 = !DILocation(line: 125, column: 57, scope: !684)
!726 = !DILocation(line: 125, column: 10, scope: !684)
!727 = !DILocation(line: 126, column: 10, scope: !684)
!728 = !DILocation(line: 127, column: 36, scope: !684)
!729 = !DILocation(line: 127, column: 35, scope: !684)
!730 = !DILocation(line: 127, column: 13, scope: !684)
!731 = !DILocation(line: 128, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !684, file: !2, line: 128, column: 8)
!733 = !DILocation(line: 128, column: 8, scope: !732)
!734 = !DILocation(line: 128, column: 23, scope: !732)
!735 = !DILocation(line: 123, column: 21, scope: !685)
!736 = !DILocation(line: 123, column: 13, scope: !685)
!737 = distinct !{!737, !714, !738, !609}
!738 = !DILocation(line: 129, column: 3, scope: !686)
!739 = !DILocation(line: 123, scope: !686)
!740 = !DILocation(line: 120, column: 28, scope: !661)
!741 = !DILocation(line: 118, column: 23, scope: !661)
!742 = !DILocation(line: 118, column: 17, scope: !661)
!743 = !DILocation(line: 103, column: 36, scope: !661)
!744 = !DILocation(line: 103, column: 31, scope: !661)
!745 = !DILocation(line: 102, column: 31, scope: !661)
!746 = !DILocation(line: 118, column: 40, scope: !661)
!747 = !DILocation(line: 118, column: 30, scope: !661)
!748 = !DILocation(line: 119, column: 36, scope: !661)
!749 = !DILocation(line: 119, column: 45, scope: !661)
!750 = !DILocation(line: 119, column: 53, scope: !661)
!751 = !DILocation(line: 119, column: 30, scope: !661)
!752 = !DILocation(line: 119, column: 25, scope: !661)
!753 = !DILocation(line: 119, column: 68, scope: !661)
!754 = !DILocation(line: 119, column: 82, scope: !661)
!755 = !DILocation(line: 120, column: 62, scope: !661)
!756 = !DILocation(line: 120, column: 60, scope: !661)
!757 = !DILocation(line: 120, column: 42, scope: !661)
!758 = !DILocation(line: 121, column: 39, scope: !661)
!759 = !DILocation(line: 121, column: 49, scope: !661)
!760 = !DILocation(line: 121, column: 58, scope: !661)
!761 = !DILocation(line: 121, column: 36, scope: !661)
!762 = !DILocation(line: 121, column: 13, scope: !661)
!763 = !DILocation(line: 122, column: 58, scope: !661)
!764 = !DILocation(line: 122, column: 73, scope: !661)
!765 = !DILocation(line: 122, column: 71, scope: !661)
!766 = !DILocation(line: 122, column: 55, scope: !661)
!767 = !DILocation(line: 122, column: 36, scope: !661)
!768 = !DILocation(line: 122, column: 13, scope: !661)
!769 = !DILocation(line: 131, column: 71, scope: !661)
!770 = !DILocation(line: 131, column: 12, scope: !661)
!771 = !DILocation(line: 132, column: 10, scope: !661)
!772 = !DILocation(line: 133, column: 1, scope: !661)
!773 = !DILocation(line: 132, column: 3, scope: !661)
!774 = !DISubprogram(name: "gsl_sf_conicalP_large_x_e", scope: !775, file: !775, line: 71, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DIFile(filename: "./legendre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "e948494d49e247de2f897d51ea0e6f2b")
!776 = !DISubroutineType(types: !777)
!777 = !{!38, !87, !87, !87, !89, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!779 = !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !182, file: !182, line: 94, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{!38, !87, !89}
!782 = distinct !DISubprogram(name: "legendre_H3d_lnnorm", scope: !2, file: !2, line: 46, type: !783, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !785)
!783 = !DISubroutineType(cc: DW_CC_nocall, types: !784)
!784 = !{!38, !364, !87, !778}
!785 = !{!786, !787, !788, !789, !790, !794, !795, !796, !797, !799, !800}
!786 = !DILocalVariable(name: "ell", arg: 1, scope: !782, file: !2, line: 46, type: !364)
!787 = !DILocalVariable(name: "lambda", arg: 2, scope: !782, file: !2, line: 46, type: !87)
!788 = !DILocalVariable(name: "result", arg: 3, scope: !782, file: !2, line: 46, type: !778)
!789 = !DILocalVariable(name: "abs_lam", scope: !782, file: !2, line: 48, type: !88)
!790 = !DILocalVariable(name: "rat", scope: !791, file: !2, line: 62, type: !88)
!791 = distinct !DILexicalBlock(scope: !792, file: !2, line: 54, column: 55)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 54, column: 11)
!793 = distinct !DILexicalBlock(scope: !782, file: !2, line: 50, column: 6)
!794 = !DILocalVariable(name: "ln_lam2ell2", scope: !791, file: !2, line: 63, type: !88)
!795 = !DILocalVariable(name: "lg_corrected", scope: !791, file: !2, line: 64, type: !88)
!796 = !DILocalVariable(name: "angle_terms", scope: !791, file: !2, line: 65, type: !88)
!797 = !DILocalVariable(name: "lg_r", scope: !798, file: !2, line: 70, type: !90)
!798 = distinct !DILexicalBlock(scope: !792, file: !2, line: 69, column: 8)
!799 = !DILocalVariable(name: "lg_theta", scope: !798, file: !2, line: 71, type: !90)
!800 = !DILocalVariable(name: "ln_sinh", scope: !798, file: !2, line: 72, type: !90)
!801 = distinct !DIAssignID()
!802 = !DILocation(line: 0, scope: !798)
!803 = distinct !DIAssignID()
!804 = distinct !DIAssignID()
!805 = !DILocation(line: 0, scope: !782)
!806 = !DILocation(line: 48, column: 20, scope: !782)
!807 = !DILocation(line: 50, column: 14, scope: !793)
!808 = !DILocation(line: 50, column: 6, scope: !782)
!809 = !DILocation(line: 51, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !793, file: !2, line: 50, column: 22)
!811 = !DILocation(line: 52, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !2, line: 52, column: 5)
!813 = !DILocation(line: 54, column: 21, scope: !792)
!814 = !DILocation(line: 54, column: 25, scope: !792)
!815 = !DILocation(line: 54, column: 31, scope: !792)
!816 = !DILocation(line: 54, column: 18, scope: !792)
!817 = !DILocation(line: 54, column: 11, scope: !793)
!818 = !DILocation(line: 62, column: 27, scope: !791)
!819 = !DILocation(line: 0, scope: !791)
!820 = !DILocation(line: 63, column: 31, scope: !791)
!821 = !DILocation(line: 63, column: 30, scope: !791)
!822 = !DILocation(line: 63, column: 58, scope: !791)
!823 = !DILocation(line: 63, column: 53, scope: !791)
!824 = !DILocation(line: 63, column: 45, scope: !791)
!825 = !DILocation(line: 63, column: 43, scope: !791)
!826 = !DILocation(line: 64, column: 31, scope: !791)
!827 = !DILocation(line: 64, column: 42, scope: !791)
!828 = !DILocation(line: 64, column: 57, scope: !791)
!829 = !DILocation(line: 64, column: 62, scope: !791)
!830 = !DILocation(line: 64, column: 51, scope: !791)
!831 = !DILocation(line: 64, column: 87, scope: !791)
!832 = !DILocation(line: 64, column: 94, scope: !791)
!833 = !DILocation(line: 64, column: 80, scope: !791)
!834 = !DILocation(line: 64, column: 75, scope: !791)
!835 = !DILocation(line: 65, column: 34, scope: !791)
!836 = !DILocation(line: 65, column: 40, scope: !791)
!837 = !DILocation(line: 65, column: 62, scope: !791)
!838 = !DILocation(line: 65, column: 53, scope: !791)
!839 = !DILocation(line: 65, column: 46, scope: !791)
!840 = !DILocation(line: 66, column: 15, scope: !791)
!841 = !DILocation(line: 66, column: 28, scope: !791)
!842 = !DILocation(line: 66, column: 43, scope: !791)
!843 = !DILocation(line: 66, column: 57, scope: !791)
!844 = !DILocation(line: 66, column: 13, scope: !791)
!845 = !DILocation(line: 70, column: 5, scope: !798)
!846 = !DILocation(line: 71, column: 5, scope: !798)
!847 = !DILocation(line: 72, column: 5, scope: !798)
!848 = !DILocation(line: 73, column: 5, scope: !798)
!849 = !DILocation(line: 74, column: 26, scope: !798)
!850 = !DILocation(line: 74, column: 5, scope: !798)
!851 = !DILocation(line: 75, column: 15, scope: !798)
!852 = !DILocation(line: 75, column: 38, scope: !798)
!853 = !DILocation(line: 75, column: 28, scope: !798)
!854 = !DILocation(line: 75, column: 53, scope: !798)
!855 = !DILocation(line: 75, column: 47, scope: !798)
!856 = !DILocation(line: 75, column: 42, scope: !798)
!857 = !DILocation(line: 75, column: 57, scope: !798)
!858 = !DILocation(line: 75, column: 13, scope: !798)
!859 = !DILocation(line: 77, column: 3, scope: !792)
!860 = !DILocation(line: 78, column: 1, scope: !782)
!861 = !DISubprogram(name: "log", scope: !184, file: !184, line: 104, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !863, file: !863, line: 122, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!864 = !DISubroutineType(types: !865)
!865 = !{!38, !87, !87, !87, !87, !89}
!866 = !DISubprogram(name: "gsl_sf_conicalP_xgt1_neg_mu_largetau_e", scope: !775, file: !775, line: 43, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubroutineType(types: !868)
!868 = !{!38, !87, !87, !87, !88, !89, !778}
!869 = distinct !DISubprogram(name: "legendre_H3d_CF1_ser", scope: !2, file: !2, line: 210, type: !362, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !886, !887}
!871 = !DILocalVariable(name: "ell", arg: 1, scope: !869, file: !2, line: 210, type: !364)
!872 = !DILocalVariable(name: "lambda", arg: 2, scope: !869, file: !2, line: 210, type: !87)
!873 = !DILocalVariable(name: "coth_eta", arg: 3, scope: !869, file: !2, line: 210, type: !87)
!874 = !DILocalVariable(name: "result", arg: 4, scope: !869, file: !2, line: 211, type: !89)
!875 = !DILocalVariable(name: "pre", scope: !869, file: !2, line: 213, type: !87)
!876 = !DILocalVariable(name: "maxk", scope: !869, file: !2, line: 214, type: !364)
!877 = !DILocalVariable(name: "tk", scope: !869, file: !2, line: 215, type: !88)
!878 = !DILocalVariable(name: "sum", scope: !869, file: !2, line: 216, type: !88)
!879 = !DILocalVariable(name: "rhok", scope: !869, file: !2, line: 217, type: !88)
!880 = !DILocalVariable(name: "sum_err", scope: !869, file: !2, line: 218, type: !88)
!881 = !DILocalVariable(name: "k", scope: !869, file: !2, line: 219, type: !38)
!882 = !DILocalVariable(name: "tlk", scope: !883, file: !2, line: 222, type: !88)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 221, column: 25)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 221, column: 3)
!885 = distinct !DILexicalBlock(scope: !869, file: !2, line: 221, column: 3)
!886 = !DILocalVariable(name: "l1k", scope: !883, file: !2, line: 223, type: !88)
!887 = !DILocalVariable(name: "ak", scope: !883, file: !2, line: 224, type: !88)
!888 = !DILocation(line: 0, scope: !869)
!889 = !DILocation(line: 213, column: 36, scope: !869)
!890 = !DILocation(line: 213, column: 39, scope: !869)
!891 = !DILocation(line: 213, column: 22, scope: !869)
!892 = !DILocation(line: 213, column: 50, scope: !869)
!893 = !DILocation(line: 213, column: 54, scope: !869)
!894 = !DILocation(line: 213, column: 57, scope: !869)
!895 = !DILocation(line: 213, column: 44, scope: !869)
!896 = !DILocation(line: 222, column: 27, scope: !883)
!897 = !DILocation(line: 221, column: 3, scope: !885)
!898 = !DILocation(line: 222, column: 39, scope: !883)
!899 = !DILocation(line: 222, column: 38, scope: !883)
!900 = !DILocation(line: 222, column: 33, scope: !883)
!901 = !DILocation(line: 0, scope: !883)
!902 = !DILocation(line: 223, column: 29, scope: !883)
!903 = !DILocation(line: 224, column: 38, scope: !883)
!904 = !DILocation(line: 224, column: 33, scope: !883)
!905 = !DILocation(line: 224, column: 17, scope: !883)
!906 = !DILocation(line: 224, column: 53, scope: !883)
!907 = !DILocation(line: 224, column: 48, scope: !883)
!908 = !DILocation(line: 224, column: 58, scope: !883)
!909 = !DILocation(line: 224, column: 67, scope: !883)
!910 = !DILocation(line: 224, column: 43, scope: !883)
!911 = !DILocation(line: 225, column: 12, scope: !883)
!912 = !DILocation(line: 225, column: 21, scope: !883)
!913 = !DILocation(line: 225, column: 15, scope: !883)
!914 = !DILocation(line: 225, column: 38, scope: !883)
!915 = !DILocation(line: 225, column: 34, scope: !883)
!916 = !DILocation(line: 225, column: 28, scope: !883)
!917 = !DILocation(line: 226, column: 9, scope: !883)
!918 = !DILocation(line: 227, column: 9, scope: !883)
!919 = !DILocation(line: 228, column: 38, scope: !883)
!920 = !DILocation(line: 228, column: 44, scope: !883)
!921 = !DILocation(line: 228, column: 42, scope: !883)
!922 = !DILocation(line: 228, column: 13, scope: !883)
!923 = !DILocation(line: 229, column: 15, scope: !924)
!924 = distinct !DILexicalBlock(scope: !883, file: !2, line: 229, column: 8)
!925 = !DILocation(line: 229, column: 8, scope: !924)
!926 = !DILocation(line: 229, column: 21, scope: !924)
!927 = !DILocation(line: 221, column: 21, scope: !884)
!928 = !DILocation(line: 221, column: 13, scope: !884)
!929 = distinct !{!929, !897, !930, !609}
!930 = !DILocation(line: 230, column: 3, scope: !885)
!931 = !DILocation(line: 221, scope: !885)
!932 = !DILocation(line: 232, column: 22, scope: !869)
!933 = !DILocation(line: 232, column: 16, scope: !869)
!934 = !DILocation(line: 233, column: 27, scope: !869)
!935 = !DILocation(line: 233, column: 18, scope: !869)
!936 = !DILocation(line: 233, column: 11, scope: !869)
!937 = !DILocation(line: 234, column: 27, scope: !869)
!938 = !DILocation(line: 234, column: 18, scope: !869)
!939 = !DILocation(line: 234, column: 15, scope: !869)
!940 = !DILocation(line: 235, column: 42, scope: !869)
!941 = !DILocation(line: 235, column: 40, scope: !869)
!942 = !DILocation(line: 235, column: 15, scope: !869)
!943 = !DILocation(line: 237, column: 8, scope: !944)
!944 = distinct !DILexicalBlock(scope: !869, file: !2, line: 237, column: 6)
!945 = !DILocation(line: 237, column: 6, scope: !869)
!946 = !DILocation(line: 238, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 238, column: 5)
!948 = !DILocation(line: 0, scope: !944)
!949 = !DILocation(line: 241, column: 1, scope: !869)
!950 = !DISubprogram(name: "hypot", scope: !184, file: !184, line: 147, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!88, !88, !88}
!953 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_array", scope: !2, file: !2, line: 496, type: !954, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{!38, !364, !87, !87, !778}
!956 = !{!957, !958, !959, !960, !961, !964, !967, !970, !971, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !987}
!957 = !DILocalVariable(name: "lmax", arg: 1, scope: !953, file: !2, line: 496, type: !364)
!958 = !DILocalVariable(name: "lambda", arg: 2, scope: !953, file: !2, line: 496, type: !87)
!959 = !DILocalVariable(name: "eta", arg: 3, scope: !953, file: !2, line: 496, type: !87)
!960 = !DILocalVariable(name: "result_array", arg: 4, scope: !953, file: !2, line: 496, type: !778)
!961 = !DILocalVariable(name: "ell", scope: !962, file: !2, line: 501, type: !38)
!962 = distinct !DILexicalBlock(scope: !963, file: !2, line: 500, column: 28)
!963 = distinct !DILexicalBlock(scope: !953, file: !2, line: 500, column: 5)
!964 = !DILocalVariable(name: "ell", scope: !965, file: !2, line: 507, type: !38)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 505, column: 34)
!966 = distinct !DILexicalBlock(scope: !963, file: !2, line: 505, column: 11)
!967 = !DILocalVariable(name: "H0", scope: !968, file: !2, line: 512, type: !90)
!968 = distinct !DILexicalBlock(scope: !969, file: !2, line: 511, column: 22)
!969 = distinct !DILexicalBlock(scope: !966, file: !2, line: 511, column: 11)
!970 = !DILocalVariable(name: "stat", scope: !968, file: !2, line: 513, type: !38)
!971 = !DILocalVariable(name: "r_Hlp1", scope: !972, file: !2, line: 520, type: !90)
!972 = distinct !DILexicalBlock(scope: !969, file: !2, line: 517, column: 8)
!973 = !DILocalVariable(name: "r_Hl", scope: !972, file: !2, line: 521, type: !90)
!974 = !DILocalVariable(name: "stat_lmax", scope: !972, file: !2, line: 522, type: !38)
!975 = !DILocalVariable(name: "stat_lmaxm1", scope: !972, file: !2, line: 523, type: !38)
!976 = !DILocalVariable(name: "stat_max", scope: !972, file: !2, line: 524, type: !38)
!977 = !DILocalVariable(name: "coth_eta", scope: !972, file: !2, line: 526, type: !87)
!978 = !DILocalVariable(name: "stat_recursion", scope: !972, file: !2, line: 527, type: !38)
!979 = !DILocalVariable(name: "Hlp1", scope: !972, file: !2, line: 528, type: !88)
!980 = !DILocalVariable(name: "Hl", scope: !972, file: !2, line: 529, type: !88)
!981 = !DILocalVariable(name: "Hlm1", scope: !972, file: !2, line: 530, type: !88)
!982 = !DILocalVariable(name: "ell", scope: !972, file: !2, line: 531, type: !38)
!983 = !DILocalVariable(name: "root_term_0", scope: !984, file: !2, line: 537, type: !88)
!984 = distinct !DILexicalBlock(scope: !985, file: !2, line: 536, column: 35)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 536, column: 5)
!986 = distinct !DILexicalBlock(scope: !972, file: !2, line: 536, column: 5)
!987 = !DILocalVariable(name: "root_term_1", scope: !984, file: !2, line: 538, type: !88)
!988 = distinct !DIAssignID()
!989 = !DILocation(line: 0, scope: !968)
!990 = distinct !DIAssignID()
!991 = !DILocation(line: 0, scope: !972)
!992 = distinct !DIAssignID()
!993 = !DILocation(line: 0, scope: !953)
!994 = !DILocation(line: 500, column: 9, scope: !963)
!995 = !DILocation(line: 500, column: 15, scope: !963)
!996 = !DILocation(line: 0, scope: !962)
!997 = !DILocation(line: 502, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !962, file: !2, line: 502, column: 5)
!999 = !DILocation(line: 502, column: 52, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !998, file: !2, line: 502, column: 5)
!1001 = !DILocation(line: 503, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !962, file: !2, line: 503, column: 5)
!1003 = !DILocation(line: 505, column: 15, scope: !966)
!1004 = !DILocation(line: 505, column: 11, scope: !963)
!1005 = !DILocation(line: 0, scope: !965)
!1006 = !DILocation(line: 508, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !965, file: !2, line: 508, column: 5)
!1008 = !DILocation(line: 508, column: 52, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 508, column: 5)
!1010 = !DILocation(line: 509, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !965, file: !2, line: 509, column: 5)
!1012 = !DILocation(line: 511, column: 16, scope: !969)
!1013 = !DILocation(line: 511, column: 11, scope: !966)
!1014 = !DILocation(line: 512, column: 5, scope: !968)
!1015 = !DILocation(line: 513, column: 16, scope: !968)
!1016 = !DILocation(line: 514, column: 26, scope: !968)
!1017 = !DILocation(line: 514, column: 21, scope: !968)
!1018 = !DILocation(line: 516, column: 3, scope: !969)
!1019 = !DILocation(line: 520, column: 5, scope: !972)
!1020 = !DILocation(line: 521, column: 5, scope: !972)
!1021 = !DILocation(line: 522, column: 23, scope: !972)
!1022 = !DILocation(line: 523, column: 49, scope: !972)
!1023 = !DILocation(line: 523, column: 23, scope: !972)
!1024 = !DILocation(line: 524, column: 20, scope: !972)
!1025 = !DILocation(line: 526, column: 33, scope: !972)
!1026 = !DILocation(line: 526, column: 32, scope: !972)
!1027 = !DILocation(line: 528, column: 26, scope: !972)
!1028 = !DILocation(line: 529, column: 24, scope: !972)
!1029 = !DILocation(line: 533, column: 5, scope: !972)
!1030 = !DILocation(line: 533, column: 26, scope: !972)
!1031 = !DILocation(line: 534, column: 5, scope: !972)
!1032 = !DILocation(line: 534, column: 26, scope: !972)
!1033 = !DILocation(line: 536, column: 9, scope: !986)
!1034 = !DILocation(line: 536, column: 24, scope: !985)
!1035 = !DILocation(line: 536, column: 5, scope: !986)
!1036 = !DILocation(line: 537, column: 41, scope: !984)
!1037 = !DILocation(line: 537, column: 28, scope: !984)
!1038 = !DILocation(line: 0, scope: !984)
!1039 = !DILocation(line: 538, column: 44, scope: !984)
!1040 = !DILocation(line: 538, column: 28, scope: !984)
!1041 = !DILocation(line: 539, column: 19, scope: !984)
!1042 = !DILocation(line: 539, column: 24, scope: !984)
!1043 = !DILocation(line: 539, column: 30, scope: !984)
!1044 = !DILocation(line: 539, column: 39, scope: !984)
!1045 = !DILocation(line: 539, column: 57, scope: !984)
!1046 = !DILocation(line: 539, column: 43, scope: !984)
!1047 = !DILocation(line: 539, column: 64, scope: !984)
!1048 = !DILocation(line: 541, column: 17, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !984, file: !2, line: 541, column: 10)
!1050 = !DILocation(line: 540, column: 7, scope: !984)
!1051 = !DILocation(line: 540, column: 27, scope: !984)
!1052 = !DILocation(line: 541, column: 10, scope: !984)
!1053 = !DILocation(line: 536, column: 31, scope: !985)
!1054 = distinct !{!1054, !1035, !1055, !609}
!1055 = !DILocation(line: 544, column: 5, scope: !986)
!1056 = !DILocation(line: 546, column: 12, scope: !972)
!1057 = !DILocation(line: 547, column: 3, scope: !969)
!1058 = !DILocation(line: 0, scope: !963)
!1059 = !DILocation(line: 548, column: 1, scope: !953)
!1060 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0", scope: !2, file: !2, line: 555, type: !1061, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!88, !87, !87}
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DILocalVariable(name: "lambda", arg: 1, scope: !1060, file: !2, line: 555, type: !87)
!1065 = !DILocalVariable(name: "eta", arg: 2, scope: !1060, file: !2, line: 555, type: !87)
!1066 = !DILocalVariable(name: "result", scope: !1060, file: !2, line: 557, type: !90)
!1067 = !DILocalVariable(name: "status", scope: !1060, file: !2, line: 557, type: !38)
!1068 = distinct !DIAssignID()
!1069 = !DILocation(line: 0, scope: !1060)
!1070 = !DILocation(line: 557, column: 3, scope: !1060)
!1071 = !DILocation(line: 557, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 557, column: 3)
!1073 = !DILocation(line: 557, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 557, column: 3)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 557, column: 3)
!1076 = !DILocation(line: 558, column: 1, scope: !1060)
!1077 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1", scope: !2, file: !2, line: 560, type: !1061, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1078)
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DILocalVariable(name: "lambda", arg: 1, scope: !1077, file: !2, line: 560, type: !87)
!1080 = !DILocalVariable(name: "eta", arg: 2, scope: !1077, file: !2, line: 560, type: !87)
!1081 = !DILocalVariable(name: "result", scope: !1077, file: !2, line: 562, type: !90)
!1082 = !DILocalVariable(name: "status", scope: !1077, file: !2, line: 562, type: !38)
!1083 = distinct !DIAssignID()
!1084 = !DILocation(line: 0, scope: !1077)
!1085 = !DILocation(line: 562, column: 3, scope: !1077)
!1086 = !DILocation(line: 562, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 562, column: 3)
!1088 = !DILocation(line: 562, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 562, column: 3)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 562, column: 3)
!1091 = !DILocation(line: 563, column: 1, scope: !1077)
!1092 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d", scope: !2, file: !2, line: 565, type: !1093, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!88, !364, !87, !87}
!1095 = !{!1096, !1097, !1098, !1099, !1100}
!1096 = !DILocalVariable(name: "l", arg: 1, scope: !1092, file: !2, line: 565, type: !364)
!1097 = !DILocalVariable(name: "lambda", arg: 2, scope: !1092, file: !2, line: 565, type: !87)
!1098 = !DILocalVariable(name: "eta", arg: 3, scope: !1092, file: !2, line: 565, type: !87)
!1099 = !DILocalVariable(name: "result", scope: !1092, file: !2, line: 567, type: !90)
!1100 = !DILocalVariable(name: "status", scope: !1092, file: !2, line: 567, type: !38)
!1101 = distinct !DIAssignID()
!1102 = !DILocation(line: 0, scope: !1092)
!1103 = !DILocation(line: 567, column: 3, scope: !1092)
!1104 = !DILocation(line: 567, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 567, column: 3)
!1106 = !DILocation(line: 567, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 567, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 567, column: 3)
!1109 = !DILocation(line: 568, column: 1, scope: !1092)
!1110 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !1111, file: !1111, line: 47, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1112 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !1111, file: !1111, line: 103, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!38, !88, !88, !89, !89}
