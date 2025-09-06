; ModuleID = 'legendre_H3d.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 1) #7, !dbg !124
  br label %54, !dbg !124

8:                                                ; preds = %3
  %9 = fcmp oeq double %1, 0.000000e+00, !dbg !126
  %10 = fcmp oeq double %0, 0.000000e+00
  %11 = or i1 %10, %9, !dbg !127
  br i1 %11, label %12, label %14, !dbg !127

12:                                               ; preds = %8
  store double 1.000000e+00, ptr %2, align 8, !dbg !128, !tbaa !118
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !130
  store double 0.000000e+00, ptr %13, align 8, !dbg !131, !tbaa !123
  br label %54, !dbg !132

14:                                               ; preds = %8
  %15 = fmul double %0, %1, !dbg !133
  tail call void @llvm.dbg.value(metadata double %15, metadata !100, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !134
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !135
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !136
  %18 = call i32 @gsl_sf_sin_err_e(double noundef %15, double noundef %17, ptr noundef nonnull %4) #7, !dbg !137
  %19 = fcmp ogt double %1, 0x403205966F2B4F12, !dbg !138
  br i1 %19, label %20, label %35, !dbg !139

20:                                               ; preds = %14
  %21 = fdiv double 2.000000e+00, %0, !dbg !140
  %22 = fneg double %1, !dbg !141
  %23 = call double @exp(double noundef %22) #7, !dbg !142
  %24 = fmul double %21, %23, !dbg !143
  tail call void @llvm.dbg.value(metadata double %24, metadata !105, metadata !DIExpression()), !dbg !144
  %25 = load double, ptr %4, align 8, !dbg !145, !tbaa !118
  %26 = fmul double %24, %25, !dbg !146
  store double %26, ptr %2, align 8, !dbg !147, !tbaa !118
  %27 = call double @llvm.fabs.f64(double %26), !dbg !148
  %28 = call double @llvm.fabs.f64(double %1), !dbg !149
  %handler_result = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !150
  %29 = fmul double %handler_result, %27, !dbg !150
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !151
  %31 = call double @llvm.fabs.f64(double %24), !dbg !152
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !153
  %33 = load double, ptr %32, align 8, !dbg !153, !tbaa !123
  %34 = fmul double %31, %33, !dbg !154
  br label %48, !dbg !155

35:                                               ; preds = %14
  %handler_result4 = call double @callHandler(i32 8, double %1, double %1), !dbg !156
  %36 = fmul double %handler_result4, %0, !dbg !156
  %37 = fdiv double 1.000000e+00, %36, !dbg !157
  tail call void @llvm.dbg.value(metadata double %37, metadata !108, metadata !DIExpression()), !dbg !158
  %38 = load double, ptr %4, align 8, !dbg !159, !tbaa !118
  %39 = fmul double %38, %37, !dbg !160
  store double %39, ptr %2, align 8, !dbg !161, !tbaa !118
  %40 = call double @llvm.fabs.f64(double %39), !dbg !162
  %41 = call double @llvm.fabs.f64(double %1), !dbg !163
  %handler_result1 = call double @fAddHandlerDouble(double %41, double 1.000000e+00), !dbg !164
  %42 = fmul double %handler_result1, %40, !dbg !164
  %43 = fmul double %42, 0x3CB0000000000000, !dbg !165
  %44 = call double @llvm.fabs.f64(double %37), !dbg !166
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !167
  %46 = load double, ptr %45, align 8, !dbg !167, !tbaa !123
  %47 = fmul double %44, %46, !dbg !168
  br label %48

48:                                               ; preds = %35, %20
  %49 = phi double [ %43, %35 ], [ %34, %20 ]
  %50 = phi double [ %47, %35 ], [ %30, %20 ]
  %51 = phi double [ %40, %35 ], [ %27, %20 ]
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !169
  %handler_result2 = call double @fAddHandlerDouble(double %50, double %49), !dbg !169
  %53 = fmul double %51, 0x3CC0000000000000, !dbg !169
  %handler_result3 = call double @fAddHandlerDouble(double %53, double %handler_result2), !dbg !169
  store double %handler_result3, ptr %52, align 8, !dbg !169, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !170
  br label %54

54:                                               ; preds = %48, %12, %6
  %55 = phi i32 [ 1, %6 ], [ 0, %12 ], [ 0, %48 ], !dbg !171
  ret i32 %55, !dbg !172
}

declare !dbg !173 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !178 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !180 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !184 double @sinh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_legendre_H3d_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !185 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !215, metadata !DIExpression(), metadata !219, metadata ptr %4, metadata !DIExpression()), !dbg !220
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !218, metadata !DIExpression(), metadata !221, metadata ptr %5, metadata !DIExpression()), !dbg !220
  tail call void @llvm.dbg.value(metadata double %0, metadata !187, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata double %1, metadata !188, metadata !DIExpression()), !dbg !222
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !189, metadata !DIExpression()), !dbg !222
  %6 = fmul double %0, %1, !dbg !223
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !224
  tail call void @llvm.dbg.value(metadata double %7, metadata !190, metadata !DIExpression()), !dbg !222
  %8 = fmul double %0, %0, !dbg !225
  tail call void @llvm.dbg.value(metadata double %8, metadata !191, metadata !DIExpression()), !dbg !222
  %handler_result = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !226
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !192, metadata !DIExpression()), !dbg !222
  %9 = fcmp olt double %1, 0.000000e+00, !dbg !226
  br i1 %9, label %10, label %12, !dbg !227

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !228, !tbaa !118
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !228
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !228, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 293, i32 noundef 1) #7, !dbg !231
  br label %107, !dbg !231

12:                                               ; preds = %3
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !233
  %14 = fcmp oeq double %0, 0.000000e+00
  %15 = or i1 %14, %13, !dbg !234
  br i1 %15, label %16, label %17, !dbg !234

16:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !235
  br label %107, !dbg !237

17:                                               ; preds = %12
  %18 = fcmp olt double %7, 0x3F48406003B2AE5A, !dbg !238
  %19 = fcmp olt double %1, 0x3F48406003B2AE5A
  %20 = and i1 %19, %18, !dbg !239
  br i1 %20, label %21, label %47, !dbg !239

21:                                               ; preds = %17
  %22 = fmul double %1, %1, !dbg !240
  tail call void @llvm.dbg.value(metadata double %22, metadata !193, metadata !DIExpression()), !dbg !241
  %23 = fmul double %6, %6, !dbg !242
  tail call void @llvm.dbg.value(metadata double %23, metadata !198, metadata !DIExpression()), !dbg !241
  %handler_result1 = call double @fAddHandlerDouble(double %22, double %23), !dbg !243
  %24 = fdiv double %handler_result1, 3.000000e+00, !dbg !243
  tail call void @llvm.dbg.value(metadata double %24, metadata !199, metadata !DIExpression()), !dbg !241
  %25 = fmul double %22, 2.000000e+00, !dbg !244
  %26 = fmul double %22, %25, !dbg !245
  %27 = fmul double %22, 5.000000e+00, !dbg !246
  %28 = fmul double %27, %23, !dbg !247
  %handler_result2 = call double @fAddHandlerDouble(double %26, double %28), !dbg !248
  %29 = fmul double %23, 3.000000e+00, !dbg !248
  %30 = fmul double %23, %29, !dbg !249
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %30), !dbg !250
  %31 = fdiv double %handler_result3, -9.000000e+01, !dbg !250
  tail call void @llvm.dbg.value(metadata double %31, metadata !200, metadata !DIExpression()), !dbg !241
  %32 = fdiv double %22, 6.000000e+00, !dbg !251
  %33 = fmul double %1, 0x3FBDDDDDDDDDDDDE, !dbg !252
  %34 = fmul double %33, %1, !dbg !253
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %34), !dbg !254
  %35 = fmul double %32, %handler_result4, !dbg !254
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %35), !dbg !255
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !201, metadata !DIExpression()), !dbg !241
  %36 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !255
  %37 = fdiv double %handler_result5, %36, !dbg !256
  %38 = fdiv double %37, %1, !dbg !257
  tail call void @llvm.dbg.value(metadata double %38, metadata !202, metadata !DIExpression()), !dbg !241
  %handler_result6 = call double @fAddHandlerDouble(double %24, double %31), !dbg !258
  %39 = fmul double %38, %handler_result6, !dbg !258
  store double %39, ptr %2, align 8, !dbg !259, !tbaa !118
  %40 = fmul double %38, 0x3CB0000000000000, !dbg !260
  %41 = tail call double @llvm.fabs.f64(double %24), !dbg !261
  %42 = tail call double @llvm.fabs.f64(double %31), !dbg !262
  %handler_result7 = call double @fAddHandlerDouble(double %41, double %42), !dbg !263
  %43 = fmul double %40, %handler_result7, !dbg !263
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !264
  %45 = tail call double @llvm.fabs.f64(double %39), !dbg !265
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !266
  %handler_result8 = call double @fAddHandlerDouble(double %43, double %46), !dbg !267
  store double %handler_result8, ptr %44, align 8, !dbg !267, !tbaa !123
  br label %107

47:                                               ; preds = %17
  br i1 %18, label %48, label %57, !dbg !268

48:                                               ; preds = %47
  %49 = fmul double %6, %6, !dbg !269
  %50 = fdiv double %49, 6.000000e+00, !dbg !271
  %51 = fdiv double %49, 2.000000e+01, !dbg !272
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %51), !dbg !273
  %52 = fmul double %50, %handler_result9, !dbg !273
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %52), !dbg !274
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !203, metadata !DIExpression()), !dbg !275
  %53 = fmul double %7, 5.000000e-01, !dbg !274
  %54 = fmul double %7, %53, !dbg !276
  %55 = fdiv double %49, 1.200000e+01, !dbg !277
  %handler_result11 = call double @fSubHandlerDouble(double 1.000000e+00, double %55), !dbg !278
  %56 = fmul double %54, %handler_result11, !dbg !278
  %handler_result12 = call double @fSubHandlerDouble(double 1.000000e+00, double %56), !dbg !279
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !205, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !208, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !209, metadata !DIExpression()), !dbg !275
  br label %68, !dbg !279

57:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !280
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !281
  %58 = call i32 @gsl_sf_sin_e(double noundef %7, ptr noundef nonnull %4) #7, !dbg !282
  %59 = call i32 @gsl_sf_cos_e(double noundef %7, ptr noundef nonnull %5) #7, !dbg !283
  %60 = load double, ptr %4, align 8, !dbg !284, !tbaa !118
  %61 = fdiv double %60, %7, !dbg !285
  tail call void @llvm.dbg.value(metadata double %61, metadata !203, metadata !DIExpression()), !dbg !275
  %62 = load double, ptr %5, align 8, !dbg !286, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %62, metadata !205, metadata !DIExpression()), !dbg !275
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !287
  %64 = load double, ptr %63, align 8, !dbg !287, !tbaa !123
  %65 = fdiv double %64, %7, !dbg !288
  tail call void @llvm.dbg.value(metadata double %65, metadata !208, metadata !DIExpression()), !dbg !275
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !289
  %67 = load double, ptr %66, align 8, !dbg !289, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %67, metadata !209, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !290
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !290
  br label %68

68:                                               ; preds = %57, %48
  %69 = phi double [ 0x3CB0000000000000, %48 ], [ %65, %57 ], !dbg !291
  %70 = phi double [ 0x3CB0000000000000, %48 ], [ %67, %57 ], !dbg !291
  %71 = phi double [ %handler_result12, %48 ], [ %62, %57 ], !dbg !291
  %72 = phi double [ %handler_result10, %48 ], [ %61, %57 ], !dbg !291
  tail call void @llvm.dbg.value(metadata double %72, metadata !203, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %71, metadata !205, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %70, metadata !209, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %69, metadata !208, metadata !DIExpression()), !dbg !275
  br i1 %19, label %73, label %82, !dbg !292

73:                                               ; preds = %68
  %74 = fmul double %1, %1, !dbg !293
  %75 = fdiv double %74, 3.000000e+00, !dbg !296
  %76 = fdiv double %74, 1.500000e+01, !dbg !297
  %handler_result13 = call double @fSubHandlerDouble(double 1.000000e+00, double %76), !dbg !298
  %77 = fmul double %75, %handler_result13, !dbg !298
  %handler_result14 = call double @fAddHandlerDouble(double %77, double 1.000000e+00), !dbg !299
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !206, metadata !DIExpression()), !dbg !275
  %78 = fdiv double %74, 6.000000e+00, !dbg !299
  %79 = fmul double %1, 0x3FBDDDDDDDDDDDDE, !dbg !300
  %80 = fmul double %79, %1, !dbg !301
  %handler_result15 = call double @fSubHandlerDouble(double 1.000000e+00, double %80), !dbg !302
  %81 = fmul double %78, %handler_result15, !dbg !302
  %handler_result16 = call double @fSubHandlerDouble(double 1.000000e+00, double %81), !dbg !303
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !207, metadata !DIExpression()), !dbg !275
  br label %86, !dbg !303

82:                                               ; preds = %68
  %83 = call double @tanh(double noundef %1) #7, !dbg !304
  %84 = fdiv double %1, %83, !dbg !306
  tail call void @llvm.dbg.value(metadata double %84, metadata !206, metadata !DIExpression()), !dbg !275
  %handler_result23 = call double @callHandler(i32 8, double %1, double %1), !dbg !307
  %85 = fdiv double %1, %handler_result23, !dbg !307
  tail call void @llvm.dbg.value(metadata double %85, metadata !207, metadata !DIExpression()), !dbg !275
  br label %86

86:                                               ; preds = %82, %73
  %87 = phi double [ %handler_result16, %73 ], [ %85, %82 ], !dbg !308
  %88 = phi double [ %handler_result14, %73 ], [ %84, %82 ], !dbg !308
  tail call void @llvm.dbg.value(metadata double %88, metadata !206, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %87, metadata !207, metadata !DIExpression()), !dbg !275
  %89 = call double @llvm.sqrt.f64(double %handler_result), !dbg !309
  %90 = fmul double %89, %1, !dbg !310
  tail call void @llvm.dbg.value(metadata double %90, metadata !210, metadata !DIExpression()), !dbg !275
  %91 = fdiv double %87, %90, !dbg !311
  tail call void @llvm.dbg.value(metadata double %91, metadata !211, metadata !DIExpression()), !dbg !275
  %92 = call double @llvm.fabs.f64(double %91), !dbg !312
  %93 = fmul double %92, 0x3CC0000000000000, !dbg !313
  tail call void @llvm.dbg.value(metadata double %93, metadata !212, metadata !DIExpression()), !dbg !275
  %94 = fmul double %72, %88, !dbg !314
  tail call void @llvm.dbg.value(metadata double %94, metadata !213, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %71, metadata !214, metadata !DIExpression()), !dbg !275
  %handler_result17 = call double @fSubHandlerDouble(double %94, double %71), !dbg !315
  %95 = fmul double %91, %handler_result17, !dbg !315
  store double %95, ptr %2, align 8, !dbg !316, !tbaa !118
  %96 = call double @llvm.fabs.f64(double %handler_result17), !dbg !317
  %97 = fmul double %93, %96, !dbg !318
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !319
  %99 = fmul double %69, %88, !dbg !320
  %handler_result18 = call double @fAddHandlerDouble(double %70, double %99), !dbg !321
  %100 = fmul double %91, %handler_result18, !dbg !321
  %handler_result19 = call double @fAddHandlerDouble(double %100, double %97), !dbg !322
  %101 = fmul double %91, %96, !dbg !322
  %102 = call double @llvm.fabs.f64(double %1), !dbg !323
  %handler_result20 = call double @fAddHandlerDouble(double %102, double 1.000000e+00), !dbg !324
  %103 = fmul double %handler_result20, %101, !dbg !324
  %104 = fmul double %103, 0x3CB0000000000000, !dbg !325
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result19, double %104), !dbg !326
  %105 = call double @llvm.fabs.f64(double %95), !dbg !326
  %106 = fmul double %105, 0x3CC0000000000000, !dbg !327
  %handler_result22 = call double @fAddHandlerDouble(double %106, double %handler_result21), !dbg !328
  store double %handler_result22, ptr %98, align 8, !dbg !328, !tbaa !123
  br label %107

107:                                              ; preds = %86, %21, %16, %10
  %108 = phi i32 [ 1, %10 ], [ 0, %16 ], [ 0, %21 ], [ 0, %86 ], !dbg !329
  ret i32 %108, !dbg !330
}

declare !dbg !331 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !334 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !335 double @tanh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !336 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !349, metadata !DIExpression(), metadata !402, metadata ptr %5, metadata !DIExpression()), !dbg !403
  %6 = alloca double, align 8, !DIAssignID !404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !358, metadata !DIExpression(), metadata !404, metadata ptr %6, metadata !DIExpression()), !dbg !403
  %7 = alloca double, align 8, !DIAssignID !405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !360, metadata !DIExpression(), metadata !405, metadata ptr %7, metadata !DIExpression()), !dbg !406
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !363, metadata !DIExpression(), metadata !407, metadata ptr %8, metadata !DIExpression()), !dbg !406
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !408
  call void @llvm.dbg.assign(metadata i1 undef, metadata !368, metadata !DIExpression(), metadata !408, metadata ptr %9, metadata !DIExpression()), !dbg !409
  %10 = alloca double, align 8, !DIAssignID !410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !371, metadata !DIExpression(), metadata !410, metadata ptr %10, metadata !DIExpression()), !dbg !409
  %11 = alloca double, align 8, !DIAssignID !411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !411, metadata ptr %11, metadata !DIExpression()), !dbg !412
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !376, metadata !DIExpression(), metadata !413, metadata ptr %12, metadata !DIExpression()), !dbg !412
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !384, metadata !DIExpression(), metadata !414, metadata ptr %13, metadata !DIExpression()), !dbg !415
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !416, metadata ptr %14, metadata !DIExpression()), !dbg !417
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !399, metadata !DIExpression(), metadata !418, metadata ptr %15, metadata !DIExpression()), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !341, metadata !DIExpression()), !dbg !420
  tail call void @llvm.dbg.value(metadata double %1, metadata !342, metadata !DIExpression()), !dbg !420
  tail call void @llvm.dbg.value(metadata double %2, metadata !343, metadata !DIExpression()), !dbg !420
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !344, metadata !DIExpression()), !dbg !420
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !421
  tail call void @llvm.dbg.value(metadata double %16, metadata !345, metadata !DIExpression()), !dbg !420
  %17 = fmul double %1, %1, !dbg !422
  tail call void @llvm.dbg.value(metadata double %17, metadata !346, metadata !DIExpression()), !dbg !420
  %18 = fmul double %16, %2, !dbg !423
  tail call void @llvm.dbg.value(metadata double %18, metadata !347, metadata !DIExpression()), !dbg !420
  %handler_result31 = call double @callHandler(i32 9, double %2, double %2), !dbg !424
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !348, metadata !DIExpression()), !dbg !420
  %19 = fcmp olt double %2, 0.000000e+00, !dbg !424
  br i1 %19, label %20, label %22, !dbg !425

20:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !426, !tbaa !118
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !426
  store double 0x7FF8000000000000, ptr %21, align 8, !dbg !426, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 375, i32 noundef 1) #7, !dbg !429
  br label %177, !dbg !429

22:                                               ; preds = %4
  %23 = fcmp ogt double %2, 0x40862E42FEFA39EF, !dbg !431
  br i1 %23, label %24, label %26, !dbg !432

24:                                               ; preds = %22
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !433, !tbaa !118
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !433
  store double 0x7FF0000000000000, ptr %25, align 8, !dbg !433, !tbaa !123
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 379, i32 noundef 16) #7, !dbg !436
  br label %177, !dbg !436

26:                                               ; preds = %22
  switch i32 %0, label %31 [
    i32 0, label %27
    i32 1, label %29
  ], !dbg !438

27:                                               ; preds = %26
  %28 = tail call i32 @gsl_sf_legendre_H3d_0_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !439, !range !441
  br label %177, !dbg !442

29:                                               ; preds = %26
  %30 = tail call i32 @gsl_sf_legendre_H3d_1_e(double noundef %1, double noundef %2, ptr noundef %3), !dbg !443, !range !441
  br label %177, !dbg !445

31:                                               ; preds = %26
  %32 = fcmp oeq double %2, 0.000000e+00, !dbg !446
  br i1 %32, label %33, label %34, !dbg !447

33:                                               ; preds = %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !448
  br label %177, !dbg !450

34:                                               ; preds = %31
  %35 = fcmp olt double %18, 1.000000e+00, !dbg !451
  br i1 %35, label %36, label %38, !dbg !452

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @legendre_H3d_series(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !453
  br label %177, !dbg !455

38:                                               ; preds = %34
  %39 = mul nsw i32 %0, %0, !dbg !456
  %40 = sitofp i32 %39 to double, !dbg !457
  %handler_result = call double @fAddHandlerDouble(double %17, double %40), !dbg !458
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !459
  %41 = tail call double @llvm.sqrt.f64(double %handler_result1), !dbg !459
  %42 = fdiv double %handler_result, %41, !dbg !460
  %43 = fmul double %handler_result31, %handler_result31, !dbg !461
  %44 = fdiv double %42, %43, !dbg !462
  %45 = fcmp olt double %44, 0x3EFFBF7E4E8CC9D1, !dbg !463
  br i1 %45, label %46, label %75, !dbg !464

46:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7, !dbg !466
  %47 = sub nsw i32 0, %0, !dbg !467
  %48 = sitofp i32 %47 to double, !dbg !467
  %handler_result2 = call double @fAddHandlerDouble(double %48, double -5.000000e-01), !dbg !468
  %49 = call i32 @gsl_sf_conicalP_large_x_e(double noundef %handler_result2, double noundef %1, double noundef %handler_result31, ptr noundef nonnull %5, ptr noundef nonnull %6) #7, !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !359, metadata !DIExpression()), !dbg !403
  %50 = load double, ptr %5, align 8, !dbg !469, !tbaa !118
  %51 = fcmp oeq double %50, 0.000000e+00, !dbg !470
  br i1 %51, label %52, label %53, !dbg !471

52:                                               ; preds = %46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !472
  br label %73, !dbg !474

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7, !dbg !475
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !476
  %54 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %8) #7, !dbg !477
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %7), !dbg !478
  %handler_result32 = call double @callHandler(i32 12, double %16, double %16), !dbg !479
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !364, metadata !DIExpression()), !dbg !406
  %55 = load double, ptr %7, align 8, !dbg !479, !tbaa !480
  %handler_result3 = call double @fAddHandlerDouble(double %55, double 0x3FF250D048E7A1BD), !dbg !481
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 0xBFE62E42FEFA39EF), !dbg !482
  %56 = load double, ptr %8, align 8, !dbg !482, !tbaa !118
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %56), !dbg !483
  %57 = fmul double %handler_result5, 5.000000e-01, !dbg !483
  %handler_result6 = call double @fSubHandlerDouble(double %57, double %handler_result32), !dbg !484
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !365, metadata !DIExpression()), !dbg !406
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !484
  %59 = load double, ptr %58, align 8, !dbg !484, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %59, metadata !366, metadata !DIExpression()), !dbg !406
  %60 = call double @llvm.fabs.f64(double %55), !dbg !485
  %handler_result7 = call double @fAddHandlerDouble(double %60, double 0x3FFD67F1C864BEB4), !dbg !486
  %61 = fmul double %handler_result7, 5.000000e-01, !dbg !486
  %62 = call double @llvm.fabs.f64(double %handler_result32), !dbg !487
  %handler_result8 = call double @fAddHandlerDouble(double %62, double %61), !dbg !488
  %63 = fmul double %handler_result8, 0x3CC0000000000000, !dbg !488
  %handler_result9 = call double @fAddHandlerDouble(double %59, double %63), !dbg !489
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !366, metadata !DIExpression()), !dbg !406
  %64 = call double @llvm.fabs.f64(double %handler_result6), !dbg !489
  %65 = fmul double %64, 0x3CC0000000000000, !dbg !490
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %65), !dbg !491
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !366, metadata !DIExpression()), !dbg !406
  %66 = load double, ptr %6, align 8, !dbg !491, !tbaa !480
  %handler_result11 = call double @fAddHandlerDouble(double %66, double %handler_result6), !dbg !492
  %67 = load double, ptr %5, align 8, !dbg !492, !tbaa !118
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !493
  %69 = load double, ptr %68, align 8, !dbg !493, !tbaa !123
  %70 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result11, double noundef %handler_result10, double noundef %67, double noundef %69, ptr noundef %3) #7, !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !367, metadata !DIExpression()), !dbg !406
  %71 = icmp eq i32 %70, 0, !dbg !495
  %72 = select i1 %71, i32 %49, i32 %70, !dbg !495
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !496
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7, !dbg !496
  br label %73

73:                                               ; preds = %53, %52
  %74 = phi i32 [ %49, %52 ], [ %72, %53 ], !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7, !dbg !498
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !498
  br label %177

75:                                               ; preds = %38
  %76 = sitofp i32 %0 to double, !dbg !499
  %77 = fmul double %76, 1.000000e+03, !dbg !500
  %78 = fmul double %77, %76, !dbg !501
  %79 = fcmp ogt double %16, %78, !dbg !502
  br i1 %79, label %80, label %107, !dbg !503

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7, !dbg !505
  %handler_result12 = call double @fAddHandlerDouble(double %76, double 5.000000e-01), !dbg !506
  %81 = call i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef %handler_result12, double noundef %1, double noundef %handler_result31, double noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10) #7, !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !372, metadata !DIExpression()), !dbg !409
  %82 = load double, ptr %9, align 8, !dbg !507, !tbaa !118
  %83 = fcmp oeq double %82, 0.000000e+00, !dbg !508
  br i1 %83, label %84, label %85, !dbg !509

84:                                               ; preds = %80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !510
  br label %105, !dbg !512

85:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7, !dbg !513
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7, !dbg !514
  %86 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %12) #7, !dbg !515
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %11), !dbg !516
  %handler_result33 = call double @callHandler(i32 12, double %16, double %16), !dbg !517
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !377, metadata !DIExpression()), !dbg !412
  %87 = load double, ptr %11, align 8, !dbg !517, !tbaa !480
  %handler_result13 = call double @fAddHandlerDouble(double %87, double 0x3FF250D048E7A1BD), !dbg !518
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0xBFE62E42FEFA39EF), !dbg !519
  %88 = load double, ptr %12, align 8, !dbg !519, !tbaa !118
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result14, double %88), !dbg !520
  %89 = fmul double %handler_result15, 5.000000e-01, !dbg !520
  %handler_result16 = call double @fSubHandlerDouble(double %89, double %handler_result33), !dbg !521
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !378, metadata !DIExpression()), !dbg !412
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %12, i64 0, i32 1, !dbg !521
  %91 = load double, ptr %90, align 8, !dbg !521, !tbaa !123
  tail call void @llvm.dbg.value(metadata double %91, metadata !379, metadata !DIExpression()), !dbg !412
  %92 = call double @llvm.fabs.f64(double %87), !dbg !522
  %handler_result17 = call double @fAddHandlerDouble(double %92, double 0x3FFD67F1C864BEB4), !dbg !523
  %93 = fmul double %handler_result17, 5.000000e-01, !dbg !523
  %94 = call double @llvm.fabs.f64(double %handler_result33), !dbg !524
  %handler_result18 = call double @fAddHandlerDouble(double %94, double %93), !dbg !525
  %95 = fmul double %handler_result18, 0x3CB0000000000000, !dbg !525
  %handler_result19 = call double @fAddHandlerDouble(double %91, double %95), !dbg !526
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !379, metadata !DIExpression()), !dbg !412
  %96 = call double @llvm.fabs.f64(double %handler_result16), !dbg !526
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !527
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %97), !dbg !528
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !379, metadata !DIExpression()), !dbg !412
  %98 = load double, ptr %10, align 8, !dbg !528, !tbaa !480
  %handler_result21 = call double @fAddHandlerDouble(double %98, double %handler_result16), !dbg !529
  %99 = load double, ptr %9, align 8, !dbg !529, !tbaa !118
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !530
  %101 = load double, ptr %100, align 8, !dbg !530, !tbaa !123
  %102 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result21, double noundef %handler_result20, double noundef %99, double noundef %101, ptr noundef %3) #7, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !380, metadata !DIExpression()), !dbg !412
  %103 = icmp eq i32 %102, 0, !dbg !532
  %104 = select i1 %103, i32 %81, i32 %102, !dbg !532
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7, !dbg !533
  br label %105

105:                                              ; preds = %85, %84
  %106 = phi i32 [ %81, %84 ], [ %104, %85 ], !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7, !dbg !535
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !535
  br label %177

107:                                              ; preds = %75
  %108 = tail call double @tanh(double noundef %2) #7, !dbg !536
  %109 = fdiv double 1.000000e+00, %108, !dbg !537
  tail call void @llvm.dbg.value(metadata double %109, metadata !381, metadata !DIExpression()), !dbg !415
  %110 = tail call double @llvm.fabs.f64(double %2), !dbg !538
  %handler_result22 = call double @fAddHandlerDouble(double %110, double 1.000000e+00), !dbg !539
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !383, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7, !dbg !539
  %111 = call fastcc i32 @legendre_H3d_CF1_ser(i32 noundef %0, double noundef %1, double noundef %109, ptr noundef nonnull %13), !dbg !540, !range !541
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !385, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !387, metadata !DIExpression()), !dbg !415
  %112 = load double, ptr %13, align 8, !dbg !542, !tbaa !118
  %113 = fmul double %112, 0x2000000000000000, !dbg !543
  tail call void @llvm.dbg.value(metadata double %113, metadata !388, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !389, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !387, metadata !DIExpression()), !dbg !415
  %114 = icmp sgt i32 %0, 0, !dbg !544
  br i1 %114, label %115, label %129, !dbg !545

115:                                              ; preds = %115, %107
  %116 = phi double [ %126, %115 ], [ 0x2000000000000000, %107 ]
  %117 = phi double [ %116, %115 ], [ %113, %107 ]
  %118 = phi i32 [ %127, %115 ], [ %0, %107 ]
  tail call void @llvm.dbg.value(metadata double %116, metadata !387, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %117, metadata !388, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !389, metadata !DIExpression()), !dbg !415
  %119 = sitofp i32 %118 to double, !dbg !546
  %120 = tail call double @hypot(double noundef %1, double noundef %119) #7, !dbg !547
  tail call void @llvm.dbg.value(metadata double %120, metadata !390, metadata !DIExpression()), !dbg !548
  %handler_result23 = call double @fAddHandlerDouble(double %119, double 1.000000e+00), !dbg !549
  %121 = tail call double @hypot(double noundef %1, double noundef %handler_result23) #7, !dbg !549
  tail call void @llvm.dbg.value(metadata double %121, metadata !394, metadata !DIExpression()), !dbg !548
  %122 = fmul double %119, 2.000000e+00, !dbg !550
  %handler_result24 = call double @fAddHandlerDouble(double %122, double 1.000000e+00), !dbg !551
  %123 = fmul double %109, %handler_result24, !dbg !551
  %124 = fmul double %116, %123, !dbg !552
  %125 = fmul double %117, %121, !dbg !553
  %handler_result25 = call double @fSubHandlerDouble(double %124, double %125), !dbg !554
  %126 = fdiv double %handler_result25, %120, !dbg !554
  tail call void @llvm.dbg.value(metadata double %126, metadata !386, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %116, metadata !388, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata double %126, metadata !387, metadata !DIExpression()), !dbg !415
  %127 = add nsw i32 %118, -1, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %127, metadata !389, metadata !DIExpression()), !dbg !415
  %128 = icmp ugt i32 %118, 1, !dbg !544
  br i1 %128, label %115, label %129, !dbg !545, !llvm.loop !556

129:                                              ; preds = %115, %107
  %130 = phi double [ %113, %107 ], [ %116, %115 ], !dbg !415
  %131 = phi double [ 0x2000000000000000, %107 ], [ %126, %115 ], !dbg !415
  %132 = tail call double @llvm.fabs.f64(double %131), !dbg !559
  %133 = tail call double @llvm.fabs.f64(double %130), !dbg !560
  %134 = fcmp ogt double %132, %133, !dbg !561
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !562
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !562
  %handler_result26 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !563
  br i1 %134, label %137, label %156, !dbg !563

137:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7, !dbg !564
  %138 = call i32 @gsl_sf_legendre_H3d_0_e(double noundef %1, double noundef %2, ptr noundef nonnull %14), !dbg !565, !range !441
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !398, metadata !DIExpression()), !dbg !417
  %139 = fdiv double 0x2000000000000000, %131, !dbg !566
  %140 = load double, ptr %14, align 8, !dbg !567, !tbaa !118
  %141 = fmul double %139, %140, !dbg !568
  store double %141, ptr %3, align 8, !dbg !569, !tbaa !118
  %142 = fdiv double 0x2000000000000000, %132, !dbg !570
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !571
  %144 = load double, ptr %143, align 8, !dbg !571, !tbaa !123
  %145 = fmul double %142, %144, !dbg !572
  %146 = load double, ptr %136, align 8, !dbg !573, !tbaa !123
  %147 = fdiv double %146, %112, !dbg !574
  %148 = tail call double @llvm.fabs.f64(double %147), !dbg !575
  %149 = fmul double %handler_result26, %148, !dbg !576
  %150 = fmul double %handler_result22, %149, !dbg !577
  %151 = tail call double @llvm.fabs.f64(double %141), !dbg !578
  %152 = fmul double %151, %150, !dbg !579
  %handler_result27 = call double @fAddHandlerDouble(double %145, double %152), !dbg !580
  %153 = fmul double %151, 0x3CC0000000000000, !dbg !580
  %handler_result28 = call double @fAddHandlerDouble(double %153, double %handler_result27), !dbg !581
  store double %handler_result28, ptr %135, align 8, !dbg !581, !tbaa !123
  %154 = icmp eq i32 %138, 0, !dbg !582
  %155 = select i1 %154, i32 %111, i32 1, !dbg !582
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7, !dbg !583
  br label %175

156:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7, !dbg !584
  %157 = call i32 @gsl_sf_legendre_H3d_1_e(double noundef %1, double noundef %2, ptr noundef nonnull %15), !dbg !585, !range !441
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !401, metadata !DIExpression()), !dbg !419
  %158 = fdiv double 0x2000000000000000, %130, !dbg !586
  %159 = load double, ptr %15, align 8, !dbg !587, !tbaa !118
  %160 = fmul double %158, %159, !dbg !588
  store double %160, ptr %3, align 8, !dbg !589, !tbaa !118
  %161 = fdiv double 0x2000000000000000, %133, !dbg !590
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !591
  %163 = load double, ptr %162, align 8, !dbg !591, !tbaa !123
  %164 = fmul double %161, %163, !dbg !592
  %165 = load double, ptr %136, align 8, !dbg !593, !tbaa !123
  %166 = fdiv double %165, %112, !dbg !594
  %167 = tail call double @llvm.fabs.f64(double %166), !dbg !595
  %168 = fmul double %handler_result26, %167, !dbg !596
  %169 = fmul double %handler_result22, %168, !dbg !597
  %170 = tail call double @llvm.fabs.f64(double %160), !dbg !598
  %171 = fmul double %170, %169, !dbg !599
  %handler_result29 = call double @fAddHandlerDouble(double %164, double %171), !dbg !600
  %172 = fmul double %170, 0x3CC0000000000000, !dbg !600
  %handler_result30 = call double @fAddHandlerDouble(double %172, double %handler_result29), !dbg !601
  store double %handler_result30, ptr %135, align 8, !dbg !601, !tbaa !123
  %173 = icmp eq i32 %157, 0, !dbg !602
  %174 = select i1 %173, i32 %111, i32 1, !dbg !602
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7, !dbg !603
  br label %175

175:                                              ; preds = %156, %137
  %176 = phi i32 [ %155, %137 ], [ %174, %156 ], !dbg !562
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7, !dbg !604
  br label %177

177:                                              ; preds = %175, %105, %73, %36, %33, %29, %27, %24, %20
  %178 = phi i32 [ 1, %20 ], [ 16, %24 ], [ %28, %27 ], [ %30, %29 ], [ 0, %33 ], [ %37, %36 ], [ %74, %73 ], [ %106, %105 ], [ %176, %175 ], !dbg !605
  ret i32 %178, !dbg !606
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !607 double @cosh(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @legendre_H3d_series(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !608 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !619, metadata !DIExpression(), metadata !634, metadata ptr %5, metadata !DIExpression()), !dbg !635
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !623, metadata !DIExpression(), metadata !636, metadata ptr %6, metadata !DIExpression()), !dbg !635
  %7 = alloca double, align 8, !DIAssignID !637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !624, metadata !DIExpression(), metadata !637, metadata ptr %7, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %1, metadata !611, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %2, metadata !612, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !613, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !614, metadata !DIExpression()), !dbg !635
  %8 = fmul double %2, 5.000000e-01, !dbg !638
  %handler_result25 = call double @callHandler(i32 8, double %8, double %8), !dbg !639
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !615, metadata !DIExpression()), !dbg !635
  %9 = fmul double %handler_result25, %handler_result25, !dbg !639
  %handler_result = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !640
  %handler_result26 = call double @callHandler(i32 12, double %handler_result, double %handler_result), !dbg !641
  tail call void @llvm.dbg.value(metadata double poison, metadata !616, metadata !DIExpression()), !dbg !635
  %handler_result27 = call double @callHandler(i32 12, double %handler_result25, double %handler_result25), !dbg !642
  tail call void @llvm.dbg.value(metadata double poison, metadata !617, metadata !DIExpression()), !dbg !635
  %10 = fneg double %handler_result25, !dbg !642
  %11 = fmul double %handler_result25, %10, !dbg !643
  tail call void @llvm.dbg.value(metadata double %11, metadata !618, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !644
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !620, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !621, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !622, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !645
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7, !dbg !646
  %12 = sitofp i32 %0 to double, !dbg !647
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 1.500000e+00), !dbg !648
  %13 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result1, ptr noundef nonnull %5) #7, !dbg !648
  %14 = call i32 @gsl_sf_lnsinh_e(double noundef %2, ptr noundef nonnull %6) #7, !dbg !649
  call fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr noundef nonnull %7), !dbg !650
  tail call void @llvm.dbg.value(metadata double poison, metadata !627, metadata !DIExpression()), !dbg !635
  %15 = load double, ptr %7, align 8, !dbg !651, !tbaa !480
  %16 = load double, ptr %6, align 8, !dbg !652, !tbaa !118
  %17 = load double, ptr %5, align 8, !dbg !653, !tbaa !118
  %18 = call double @llvm.fabs.f64(double %1), !dbg !654
  %handler_result28 = call double @callHandler(i32 12, double %18, double %18), !dbg !655
  tail call void @llvm.dbg.value(metadata double poison, metadata !625, metadata !DIExpression()), !dbg !635
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !655
  %20 = load double, ptr %19, align 8, !dbg !655, !tbaa !123
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !656
  %22 = load double, ptr %21, align 8, !dbg !656, !tbaa !123
  tail call void @llvm.dbg.value(metadata double poison, metadata !626, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double poison, metadata !626, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double poison, metadata !626, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 1, metadata !629, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !620, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !621, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !622, metadata !DIExpression()), !dbg !635
  %23 = fmul double %1, %1
  br label %24, !dbg !657

24:                                               ; preds = %42, %4
  %25 = phi double [ 1.000000e+00, %4 ], [ %36, %42 ]
  %26 = phi i32 [ 1, %4 ], [ %43, %42 ]
  %27 = phi double [ 1.000000e+00, %4 ], [ %handler_result5, %42 ]
  %28 = phi double [ 0.000000e+00, %4 ], [ %handler_result6, %42 ]
  tail call void @llvm.dbg.value(metadata double %25, metadata !620, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !629, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %27, metadata !621, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %28, metadata !622, metadata !DIExpression()), !dbg !635
  %29 = sitofp i32 %26 to double, !dbg !658
  %handler_result2 = call double @fAddHandlerDouble(double %29, double -5.000000e-01), !dbg !659
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !630, metadata !DIExpression()), !dbg !660
  %30 = fmul double %handler_result2, %handler_result2, !dbg !659
  %handler_result3 = call double @fAddHandlerDouble(double %23, double %30), !dbg !661
  %31 = fmul double %11, %handler_result3, !dbg !661
  %32 = add nsw i32 %26, %0, !dbg !662
  %33 = sitofp i32 %32 to double, !dbg !663
  %handler_result4 = call double @fAddHandlerDouble(double %33, double 5.000000e-01), !dbg !664
  %34 = fdiv double %31, %handler_result4, !dbg !664
  %35 = fdiv double %34, %29, !dbg !665
  %36 = fmul double %25, %35, !dbg !666
  tail call void @llvm.dbg.value(metadata double %36, metadata !620, metadata !DIExpression()), !dbg !635
  %handler_result5 = call double @fAddHandlerDouble(double %27, double %36), !dbg !667
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !621, metadata !DIExpression()), !dbg !635
  %37 = call double @llvm.fabs.f64(double %36), !dbg !667
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !668
  %handler_result6 = call double @fAddHandlerDouble(double %28, double %38), !dbg !669
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !622, metadata !DIExpression()), !dbg !635
  %39 = fdiv double %36, %handler_result5, !dbg !669
  %40 = call double @llvm.fabs.f64(double %39), !dbg !671
  %41 = fcmp olt double %40, 0x3CC0000000000000, !dbg !672
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = add nuw nsw i32 %26, 1, !dbg !673
  tail call void @llvm.dbg.value(metadata double %36, metadata !620, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !629, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !621, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !622, metadata !DIExpression()), !dbg !635
  %44 = icmp eq i32 %43, 5000, !dbg !674
  br i1 %44, label %45, label %24, !dbg !657, !llvm.loop !675

45:                                               ; preds = %42, %24
  %46 = phi i32 [ %26, %24 ], [ 5000, %42 ], !dbg !677
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %22), !dbg !678
  %handler_result8 = call double @fAddHandlerDouble(double %12, double 5.000000e-01), !dbg !679
  %47 = fmul double %handler_result8, 5.000000e-01, !dbg !679
  %48 = fmul double %handler_result27, 2.000000e+00, !dbg !680
  %handler_result9 = call double @fAddHandlerDouble(double %48, double 0x3FE62E42FEFA39EF), !dbg !681
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !617, metadata !DIExpression()), !dbg !635
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result26, double 0x3FE62E42FEFA39EF), !dbg !682
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !616, metadata !DIExpression()), !dbg !635
  %handler_result11 = call double @fSubHandlerDouble(double %handler_result9, double %handler_result10), !dbg !683
  %49 = fmul double %47, %handler_result11, !dbg !683
  tail call void @llvm.dbg.value(metadata double %49, metadata !627, metadata !DIExpression()), !dbg !635
  %handler_result12 = call double @fAddHandlerDouble(double %15, double 0x3FF250D048E7A1BD), !dbg !684
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0xBFE62E42FEFA39EF), !dbg !685
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result13, double %16), !dbg !686
  %50 = fmul double %handler_result14, 5.000000e-01, !dbg !686
  %handler_result15 = call double @fAddHandlerDouble(double %49, double %50), !dbg !687
  %handler_result16 = call double @fSubHandlerDouble(double %handler_result15, double %17), !dbg !688
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result16, double %handler_result28), !dbg !689
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !625, metadata !DIExpression()), !dbg !635
  %51 = call double @llvm.fabs.f64(double %handler_result17), !dbg !689
  %52 = fmul double %51, 0x3CB0000000000000, !dbg !690
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result7, double %52), !dbg !691
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !626, metadata !DIExpression()), !dbg !635
  %53 = call double @llvm.fabs.f64(double %15), !dbg !691
  %handler_result19 = call double @fAddHandlerDouble(double %53, double 0x3FF250D048E7A1BD), !dbg !692
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double 0x3FE62E42FEFA39EF), !dbg !693
  %54 = fmul double %handler_result20, 0x3CC0000000000000, !dbg !693
  %handler_result21 = call double @fAddHandlerDouble(double %54, double %handler_result18), !dbg !694
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !626, metadata !DIExpression()), !dbg !635
  %55 = call double @llvm.fabs.f64(double %handler_result9), !dbg !694
  %56 = call double @llvm.fabs.f64(double %handler_result10), !dbg !695
  %handler_result22 = call double @fAddHandlerDouble(double %56, double %55), !dbg !696
  %57 = fmul double %47, %handler_result22, !dbg !696
  %58 = fmul double %57, 0x3CC0000000000000, !dbg !697
  %handler_result23 = call double @fAddHandlerDouble(double %58, double %handler_result21), !dbg !698
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !626, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %36, metadata !620, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !621, metadata !DIExpression()), !dbg !635
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !622, metadata !DIExpression()), !dbg !635
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result6, double %37), !dbg !699
  %59 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result17, double noundef %handler_result23, double noundef %handler_result5, double noundef %handler_result24, ptr noundef %3) #7, !dbg !699
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !628, metadata !DIExpression()), !dbg !635
  %60 = icmp eq i32 %59, 0, !dbg !700
  %61 = freeze i32 %46, !dbg !700
  %62 = icmp eq i32 %61, 5000, !dbg !700
  %63 = select i1 %62, i32 11, i32 0, !dbg !700
  %64 = select i1 %60, i32 %63, i32 %59, !dbg !700
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7, !dbg !701
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !701
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !701
  ret i32 %64, !dbg !702
}

declare !dbg !703 i32 @gsl_sf_conicalP_large_x_e(double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !708 i32 @gsl_sf_lnsinh_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @legendre_H3d_lnnorm(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !711 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !726, metadata !DIExpression(), metadata !730, metadata ptr %4, metadata !DIExpression()), !dbg !731
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !732, metadata ptr %5, metadata !DIExpression()), !dbg !731
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !733
  call void @llvm.dbg.assign(metadata i1 undef, metadata !729, metadata !DIExpression(), metadata !733, metadata ptr %6, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !715, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata double %1, metadata !716, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !717, metadata !DIExpression()), !dbg !734
  %7 = tail call double @llvm.fabs.f64(double %1), !dbg !735
  tail call void @llvm.dbg.value(metadata double %7, metadata !718, metadata !DIExpression()), !dbg !734
  %8 = fcmp oeq double %1, 0.000000e+00, !dbg !736
  br i1 %8, label %9, label %10, !dbg !737

9:                                                ; preds = %3
  store double 0.000000e+00, ptr %2, align 8, !dbg !738, !tbaa !480
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 1) #7, !dbg !740
  br label %34, !dbg !740

10:                                               ; preds = %3
  %11 = sitofp i32 %0 to double, !dbg !742
  %handler_result = call double @fAddHandlerDouble(double %11, double 1.000000e+00), !dbg !743
  %12 = fdiv double %handler_result, 0x3ED965FEA53D6E41, !dbg !743
  %13 = fcmp olt double %12, %1, !dbg !744
  br i1 %13, label %14, label %27, !dbg !745

14:                                               ; preds = %10
  %15 = fdiv double %handler_result, %1, !dbg !746
  tail call void @llvm.dbg.value(metadata double %15, metadata !719, metadata !DIExpression()), !dbg !747
  %handler_result14 = call double @callHandler(i32 12, double %1, double %1), !dbg !748
  %16 = fmul double %handler_result14, 2.000000e+00, !dbg !748
  %17 = fmul double %15, %15, !dbg !749
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 1.000000e+00), !dbg !750
  %handler_result15 = call double @callHandler(i32 12, double %handler_result1, double %handler_result1), !dbg !751
  %handler_result2 = call double @fAddHandlerDouble(double %16, double %handler_result15), !dbg !751
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !723, metadata !DIExpression()), !dbg !747
  %18 = fmul double %handler_result, 2.000000e+00, !dbg !751
  %handler_result3 = call double @fSubHandlerDouble(double 0x3FF250D048E7A1BD, double %18), !dbg !752
  %handler_result4 = call double @fAddHandlerDouble(double %11, double 5.000000e-01), !dbg !753
  %19 = fmul double %handler_result4, %handler_result2, !dbg !753
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double %19), !dbg !754
  %20 = fmul double %1, 2.880000e+02, !dbg !754
  %21 = fmul double %20, %1, !dbg !755
  %22 = fdiv double 1.000000e+00, %21, !dbg !756
  %handler_result6 = call double @fAddHandlerDouble(double %22, double %handler_result5), !dbg !757
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !724, metadata !DIExpression()), !dbg !747
  %23 = fmul double %1, 2.000000e+00, !dbg !757
  %24 = fmul double %23, %15, !dbg !758
  %25 = fdiv double %17, 3.000000e+00, !dbg !759
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %25), !dbg !760
  %26 = fmul double %24, %handler_result7, !dbg !760
  tail call void @llvm.dbg.value(metadata double %26, metadata !725, metadata !DIExpression()), !dbg !747
  %handler_result16 = call double @callHandler(i32 12, double %7, double %7), !dbg !761
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result16, double %handler_result6), !dbg !761
  %handler_result9 = call double @fAddHandlerDouble(double %26, double %handler_result8), !dbg !762
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0xBFF250D048E7A1BD), !dbg !763
  store double %handler_result10, ptr %2, align 8, !dbg !763, !tbaa !480
  br label %34

27:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !764
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !765
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !766
  %28 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #7, !dbg !767
  %29 = fmul double %7, 0x400921FB54442D18, !dbg !768
  %30 = call i32 @gsl_sf_lnsinh_e(double noundef %29, ptr noundef nonnull %6) #7, !dbg !769
  %handler_result17 = call double @callHandler(i32 12, double %7, double %7), !dbg !770
  %31 = load double, ptr %6, align 8, !dbg !770, !tbaa !118
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result17, double %31), !dbg !771
  %32 = load double, ptr %4, align 8, !dbg !771, !tbaa !118
  %33 = fmul double %32, 2.000000e+00, !dbg !772
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %33), !dbg !773
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0xBFF250D048E7A1BD), !dbg !774
  store double %handler_result13, ptr %2, align 8, !dbg !774, !tbaa !480
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !775
  br label %34

34:                                               ; preds = %27, %14, %9
  ret void, !dbg !776
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !777 double @log(double noundef) local_unnamed_addr #4

declare !dbg !778 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !782 i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @legendre_H3d_CF1_ser(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !785 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !787, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %1, metadata !788, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %2, metadata !789, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !790, metadata !DIExpression()), !dbg !804
  %5 = sitofp i32 %0 to double, !dbg !805
  %handler_result = call double @fAddHandlerDouble(double %5, double 1.000000e+00), !dbg !806
  %6 = tail call double @hypot(double noundef %1, double noundef %handler_result) #7, !dbg !806
  %7 = fmul double %5, 2.000000e+00, !dbg !807
  %handler_result1 = call double @fAddHandlerDouble(double %7, double 3.000000e+00), !dbg !808
  %8 = fmul double %handler_result1, %2, !dbg !808
  %9 = fdiv double %6, %8, !dbg !809
  tail call void @llvm.dbg.value(metadata double %9, metadata !791, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 20000, metadata !792, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !793, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !794, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !795, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !796, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 1, metadata !797, metadata !DIExpression()), !dbg !804
  %handler_result2 = call double @fAddHandlerDouble(double %7, double 1.000000e+00)
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !793, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !794, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 1, metadata !797, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !796, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !795, metadata !DIExpression()), !dbg !804
  %10 = fmul double %1, %1
  br label %11, !dbg !810

11:                                               ; preds = %36, %4
  %12 = phi double [ 1.000000e+00, %4 ], [ %29, %36 ]
  %13 = phi double [ 1.000000e+00, %4 ], [ %handler_result9, %36 ]
  %14 = phi i32 [ 1, %4 ], [ %37, %36 ]
  %15 = phi double [ 0.000000e+00, %4 ], [ %handler_result10, %36 ]
  %16 = phi double [ 0.000000e+00, %4 ], [ %28, %36 ]
  tail call void @llvm.dbg.value(metadata double %12, metadata !793, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %13, metadata !794, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !797, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %15, metadata !796, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %16, metadata !795, metadata !DIExpression()), !dbg !804
  %17 = sitofp i32 %14 to double, !dbg !811
  %18 = fmul double %17, 2.000000e+00, !dbg !812
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %18), !dbg !813
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !798, metadata !DIExpression()), !dbg !814
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result, double %17), !dbg !815
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !802, metadata !DIExpression()), !dbg !814
  %19 = fmul double %handler_result4, %handler_result4, !dbg !815
  %handler_result5 = call double @fAddHandlerDouble(double %10, double %19), !dbg !816
  %20 = fneg double %handler_result5, !dbg !816
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result3, double 2.000000e+00), !dbg !817
  %21 = fmul double %handler_result3, %handler_result6, !dbg !817
  %22 = fmul double %21, %2, !dbg !818
  %23 = fmul double %22, %2, !dbg !819
  %24 = fdiv double %20, %23, !dbg !820
  tail call void @llvm.dbg.value(metadata double %24, metadata !803, metadata !DIExpression()), !dbg !814
  %25 = fneg double %24, !dbg !821
  %handler_result7 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !822
  %26 = fmul double %handler_result7, %25, !dbg !822
  %27 = fmul double %handler_result7, %24, !dbg !823
  %handler_result8 = call double @fAddHandlerDouble(double %27, double 1.000000e+00), !dbg !824
  %28 = fdiv double %26, %handler_result8, !dbg !824
  tail call void @llvm.dbg.value(metadata double %28, metadata !795, metadata !DIExpression()), !dbg !804
  %29 = fmul double %12, %28, !dbg !825
  tail call void @llvm.dbg.value(metadata double %29, metadata !793, metadata !DIExpression()), !dbg !804
  %handler_result9 = call double @fAddHandlerDouble(double %13, double %29), !dbg !826
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !794, metadata !DIExpression()), !dbg !804
  %30 = fmul double %17, 0x3CC0000000000000, !dbg !826
  %31 = tail call double @llvm.fabs.f64(double %29), !dbg !827
  %32 = fmul double %30, %31, !dbg !828
  %handler_result10 = call double @fAddHandlerDouble(double %15, double %32), !dbg !829
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !796, metadata !DIExpression()), !dbg !804
  %33 = fdiv double %29, %handler_result9, !dbg !829
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !831
  %35 = fcmp olt double %34, 0x3CB0000000000000, !dbg !832
  br i1 %35, label %39, label %36

36:                                               ; preds = %11
  %37 = add nuw nsw i32 %14, 1, !dbg !833
  tail call void @llvm.dbg.value(metadata double %29, metadata !793, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !794, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !797, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !796, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %28, metadata !795, metadata !DIExpression()), !dbg !804
  %38 = icmp eq i32 %37, 20000, !dbg !834
  br i1 %38, label %39, label %11, !dbg !810, !llvm.loop !835

39:                                               ; preds = %36, %11
  %40 = phi i32 [ %14, %11 ], [ 20000, %36 ], !dbg !837
  tail call void @llvm.dbg.value(metadata double %29, metadata !793, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !794, metadata !DIExpression()), !dbg !804
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !796, metadata !DIExpression()), !dbg !804
  %41 = fmul double %9, %handler_result9, !dbg !838
  store double %41, ptr %3, align 8, !dbg !839, !tbaa !118
  %42 = fmul double %9, %29, !dbg !840
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !841
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !842
  %45 = fmul double %9, %handler_result10, !dbg !843
  %46 = tail call double @llvm.fabs.f64(double %45), !dbg !844
  %handler_result11 = call double @fAddHandlerDouble(double %46, double %43), !dbg !845
  %47 = tail call double @llvm.fabs.f64(double %41), !dbg !845
  %48 = fmul double %47, 0x3CD0000000000000, !dbg !846
  %handler_result12 = call double @fAddHandlerDouble(double %48, double %handler_result11), !dbg !847
  store double %handler_result12, ptr %44, align 8, !dbg !847, !tbaa !123
  %49 = icmp ugt i32 %40, 19999, !dbg !848
  br i1 %49, label %50, label %51, !dbg !850

50:                                               ; preds = %39
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 11) #7, !dbg !851
  br label %51, !dbg !851

51:                                               ; preds = %50, %39
  %52 = phi i32 [ 11, %50 ], [ 0, %39 ], !dbg !853
  ret i32 %52, !dbg !854
}

; Function Attrs: nounwind
declare !dbg !855 double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_legendre_H3d_array(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !858 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !893
  call void @llvm.dbg.assign(metadata i1 undef, metadata !872, metadata !DIExpression(), metadata !893, metadata ptr %5, metadata !DIExpression()), !dbg !894
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !895
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !895, metadata ptr %6, metadata !DIExpression()), !dbg !896
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !878, metadata !DIExpression(), metadata !897, metadata ptr %7, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !862, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double %1, metadata !863, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double %2, metadata !864, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !865, metadata !DIExpression()), !dbg !898
  %8 = fcmp olt double %2, 0.000000e+00, !dbg !899
  %9 = icmp slt i32 %0, 0
  %10 = or i1 %9, %8, !dbg !900
  br i1 %10, label %11, label %17, !dbg !900

11:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !866, metadata !DIExpression()), !dbg !901
  br i1 %9, label %16, label %12, !dbg !902

12:                                               ; preds = %11
  %13 = add nuw i32 %0, 1, !dbg !902
  %14 = zext i32 %13 to i64, !dbg !902
  %15 = shl nuw nsw i64 %14, 3, !dbg !902
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %15, i1 false), !dbg !904, !tbaa !480
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !866, metadata !DIExpression()), !dbg !901
  br label %16, !dbg !906

16:                                               ; preds = %12, %11
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 1) #7, !dbg !906
  br label %69

17:                                               ; preds = %4
  %18 = fcmp ogt double %2, 0x40862E42FEFA39EF, !dbg !908
  br i1 %18, label %19, label %23, !dbg !909

19:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !869, metadata !DIExpression()), !dbg !910
  %20 = add nuw i32 %0, 1, !dbg !911
  %21 = zext i32 %20 to i64, !dbg !911
  %22 = shl nuw nsw i64 %21, 3, !dbg !911
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %22, i1 false), !dbg !913, !tbaa !480
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !869, metadata !DIExpression()), !dbg !910
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 16) #7, !dbg !915
  br label %69

23:                                               ; preds = %17
  %24 = icmp eq i32 %0, 0, !dbg !917
  br i1 %24, label %25, label %28, !dbg !918

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !919
  %26 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef 0, double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !875, metadata !DIExpression()), !dbg !894
  %27 = load double, ptr %5, align 8, !dbg !921, !tbaa !118
  store double %27, ptr %3, align 8, !dbg !922, !tbaa !480
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !923
  br label %69

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !924
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !925
  %29 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %6), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !879, metadata !DIExpression()), !dbg !896
  %30 = add nsw i32 %0, -1, !dbg !927
  %31 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %30, double noundef %1, double noundef %2, ptr noundef nonnull %7), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !880, metadata !DIExpression()), !dbg !896
  %32 = icmp eq i32 %29, 0, !dbg !929
  %33 = select i1 %32, i32 %31, i32 %29, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !881, metadata !DIExpression()), !dbg !896
  %34 = call double @tanh(double noundef %2) #7, !dbg !930
  %35 = fdiv double 1.000000e+00, %34, !dbg !931
  tail call void @llvm.dbg.value(metadata double %35, metadata !882, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 0, metadata !883, metadata !DIExpression()), !dbg !896
  %36 = load double, ptr %6, align 8, !dbg !932, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %36, metadata !884, metadata !DIExpression()), !dbg !896
  %37 = load double, ptr %7, align 8, !dbg !933, !tbaa !118
  tail call void @llvm.dbg.value(metadata double %37, metadata !885, metadata !DIExpression()), !dbg !896
  %38 = zext nneg i32 %0 to i64
  %39 = getelementptr inbounds double, ptr %3, i64 %38, !dbg !934
  store double %36, ptr %39, align 8, !dbg !935, !tbaa !480
  %40 = zext nneg i32 %30 to i64
  %41 = getelementptr inbounds double, ptr %3, i64 %40, !dbg !936
  store double %37, ptr %41, align 8, !dbg !937, !tbaa !480
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !887, metadata !DIExpression()), !dbg !896
  %42 = getelementptr double, ptr %3, i64 -1, !dbg !938
  %43 = icmp eq i32 %0, 1, !dbg !939
  br i1 %43, label %66, label %44, !dbg !940

44:                                               ; preds = %44, %28
  %45 = phi i64 [ %62, %44 ], [ %40, %28 ]
  %46 = phi double [ %58, %44 ], [ %37, %28 ]
  %47 = phi double [ %46, %44 ], [ %36, %28 ]
  %48 = phi i32 [ %61, %44 ], [ 0, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !887, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata double %46, metadata !885, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata double %47, metadata !884, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !883, metadata !DIExpression()), !dbg !896
  %49 = trunc i64 %45 to i32, !dbg !941
  %50 = sitofp i32 %49 to double, !dbg !941
  %51 = call double @hypot(double noundef %1, double noundef %50) #7, !dbg !942
  tail call void @llvm.dbg.value(metadata double %51, metadata !888, metadata !DIExpression()), !dbg !943
  %handler_result = call double @fAddHandlerDouble(double %50, double 1.000000e+00), !dbg !944
  %52 = call double @hypot(double noundef %1, double noundef %handler_result) #7, !dbg !944
  tail call void @llvm.dbg.value(metadata double %52, metadata !892, metadata !DIExpression()), !dbg !943
  %53 = fmul double %50, 2.000000e+00, !dbg !945
  %handler_result1 = call double @fAddHandlerDouble(double %53, double 1.000000e+00), !dbg !946
  %54 = fmul double %35, %handler_result1, !dbg !946
  %55 = fmul double %46, %54, !dbg !947
  %56 = fmul double %47, %52, !dbg !948
  %handler_result2 = call double @fSubHandlerDouble(double %55, double %56), !dbg !949
  %57 = fdiv double %handler_result2, %51, !dbg !949
  tail call void @llvm.dbg.value(metadata double %57, metadata !886, metadata !DIExpression()), !dbg !896
  %58 = freeze double %57, !dbg !950
  %59 = getelementptr double, ptr %42, i64 %45, !dbg !952
  store double %58, ptr %59, align 8, !dbg !953, !tbaa !480
  %60 = fcmp olt double %58, 0x7FEFFFFFFFFFFFFF, !dbg !950
  %61 = select i1 %60, i32 %48, i32 16, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !883, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata double %46, metadata !884, metadata !DIExpression()), !dbg !896
  tail call void @llvm.dbg.value(metadata double %57, metadata !885, metadata !DIExpression()), !dbg !896
  %62 = add nsw i64 %45, -1, !dbg !955
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !887, metadata !DIExpression()), !dbg !896
  %63 = icmp ugt i64 %45, 1, !dbg !939
  br i1 %63, label %44, label %64, !dbg !940, !llvm.loop !956

64:                                               ; preds = %44
  %65 = icmp eq i32 %61, 0, !dbg !958
  br i1 %65, label %66, label %67, !dbg !958

66:                                               ; preds = %64, %28
  br label %67, !dbg !958

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %33, %66 ], [ %61, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !959
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !959
  br label %69

69:                                               ; preds = %67, %25, %19, %16
  %70 = phi i32 [ 1, %16 ], [ 16, %19 ], [ %26, %25 ], [ %68, %67 ], !dbg !960
  ret i32 %70, !dbg !961
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !962 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !970
  call void @llvm.dbg.assign(metadata i1 undef, metadata !968, metadata !DIExpression(), metadata !970, metadata ptr %3, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata double %0, metadata !966, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata double %1, metadata !967, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !972
  %4 = call i32 @gsl_sf_legendre_H3d_0_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !972, !range !441
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !969, metadata !DIExpression()), !dbg !971
  %5 = icmp eq i32 %4, 0, !dbg !973
  br i1 %5, label %7, label %6, !dbg !972

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 557, i32 noundef 1) #7, !dbg !975
  br label %7, !dbg !975

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !972, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !978
  ret double %8, !dbg !978
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d_1(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !979 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !983, metadata !DIExpression(), metadata !985, metadata ptr %3, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %0, metadata !981, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata double %1, metadata !982, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !987
  %4 = call i32 @gsl_sf_legendre_H3d_1_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !987, !range !441
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !984, metadata !DIExpression()), !dbg !986
  %5 = icmp eq i32 %4, 0, !dbg !988
  br i1 %5, label %7, label %6, !dbg !987

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 562, i32 noundef 1) #7, !dbg !990
  br label %7, !dbg !990

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !987, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !993
  ret double %8, !dbg !993
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_legendre_H3d(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !994 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1001, metadata !DIExpression(), metadata !1003, metadata ptr %4, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !998, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %1, metadata !999, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %2, metadata !1000, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1005
  %5 = call i32 @gsl_sf_legendre_H3d_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1002, metadata !DIExpression()), !dbg !1004
  %6 = icmp eq i32 %5, 0, !dbg !1006
  br i1 %6, label %8, label %7, !dbg !1005

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 567, i32 noundef %5) #7, !dbg !1008
  br label %8, !dbg !1008

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !1005, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1011
  ret double %9, !dbg !1011
}

declare !dbg !1012 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1014 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!150 = !DILocation(line: 267, column: 38, scope: !106)
!151 = !DILocation(line: 267, column: 58, scope: !106)
!152 = !DILocation(line: 268, column: 22, scope: !106)
!153 = !DILocation(line: 268, column: 34, scope: !106)
!154 = !DILocation(line: 268, column: 30, scope: !106)
!155 = !DILocation(line: 270, column: 5, scope: !106)
!156 = !DILocation(line: 272, column: 29, scope: !109)
!157 = !DILocation(line: 272, column: 21, scope: !109)
!158 = !DILocation(line: 0, scope: !109)
!159 = !DILocation(line: 273, column: 28, scope: !109)
!160 = !DILocation(line: 273, column: 24, scope: !109)
!161 = !DILocation(line: 273, column: 20, scope: !109)
!162 = !DILocation(line: 274, column: 22, scope: !109)
!163 = !DILocation(line: 274, column: 41, scope: !109)
!164 = !DILocation(line: 274, column: 38, scope: !109)
!165 = !DILocation(line: 274, column: 58, scope: !109)
!166 = !DILocation(line: 275, column: 22, scope: !109)
!167 = !DILocation(line: 275, column: 34, scope: !109)
!168 = !DILocation(line: 275, column: 30, scope: !109)
!169 = !DILocation(line: 0, scope: !107)
!170 = !DILocation(line: 279, column: 3, scope: !102)
!171 = !DILocation(line: 0, scope: !103)
!172 = !DILocation(line: 280, column: 1, scope: !84)
!173 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176, !176, !38, !38}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!178 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !179, file: !179, line: 121, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!180 = !DISubprogram(name: "exp", scope: !181, file: !181, line: 95, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!182 = !DISubroutineType(types: !183)
!183 = !{!88, !88}
!184 = !DISubprogram(name: "sinh", scope: !181, file: !181, line: 73, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1_e", scope: !2, file: !2, line: 284, type: !85, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !198, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !218}
!187 = !DILocalVariable(name: "lambda", arg: 1, scope: !185, file: !2, line: 284, type: !87)
!188 = !DILocalVariable(name: "eta", arg: 2, scope: !185, file: !2, line: 284, type: !87)
!189 = !DILocalVariable(name: "result", arg: 3, scope: !185, file: !2, line: 284, type: !89)
!190 = !DILocalVariable(name: "xi", scope: !185, file: !2, line: 286, type: !87)
!191 = !DILocalVariable(name: "lsq", scope: !185, file: !2, line: 287, type: !87)
!192 = !DILocalVariable(name: "lsqp1", scope: !185, file: !2, line: 288, type: !87)
!193 = !DILocalVariable(name: "etasq", scope: !194, file: !2, line: 301, type: !88)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 300, column: 70)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 300, column: 11)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 295, column: 11)
!197 = distinct !DILexicalBlock(scope: !185, file: !2, line: 292, column: 6)
!198 = !DILocalVariable(name: "xisq", scope: !194, file: !2, line: 302, type: !88)
!199 = !DILocalVariable(name: "term1", scope: !194, file: !2, line: 303, type: !88)
!200 = !DILocalVariable(name: "term2", scope: !194, file: !2, line: 304, type: !88)
!201 = !DILocalVariable(name: "sinh_term", scope: !194, file: !2, line: 305, type: !88)
!202 = !DILocalVariable(name: "pre", scope: !194, file: !2, line: 306, type: !88)
!203 = !DILocalVariable(name: "sin_term", scope: !204, file: !2, line: 313, type: !88)
!204 = distinct !DILexicalBlock(scope: !195, file: !2, line: 312, column: 8)
!205 = !DILocalVariable(name: "cos_term", scope: !204, file: !2, line: 314, type: !88)
!206 = !DILocalVariable(name: "coth_term", scope: !204, file: !2, line: 315, type: !88)
!207 = !DILocalVariable(name: "sinh_term", scope: !204, file: !2, line: 316, type: !88)
!208 = !DILocalVariable(name: "sin_term_err", scope: !204, file: !2, line: 317, type: !88)
!209 = !DILocalVariable(name: "cos_term_err", scope: !204, file: !2, line: 318, type: !88)
!210 = !DILocalVariable(name: "t1", scope: !204, file: !2, line: 319, type: !88)
!211 = !DILocalVariable(name: "pre_val", scope: !204, file: !2, line: 320, type: !88)
!212 = !DILocalVariable(name: "pre_err", scope: !204, file: !2, line: 321, type: !88)
!213 = !DILocalVariable(name: "term1", scope: !204, file: !2, line: 322, type: !88)
!214 = !DILocalVariable(name: "term2", scope: !204, file: !2, line: 323, type: !88)
!215 = !DILocalVariable(name: "sin_xi_result", scope: !216, file: !2, line: 331, type: !90)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 330, column: 10)
!217 = distinct !DILexicalBlock(scope: !204, file: !2, line: 324, column: 8)
!218 = !DILocalVariable(name: "cos_xi_result", scope: !216, file: !2, line: 332, type: !90)
!219 = distinct !DIAssignID()
!220 = !DILocation(line: 0, scope: !216)
!221 = distinct !DIAssignID()
!222 = !DILocation(line: 0, scope: !185)
!223 = !DILocation(line: 286, column: 32, scope: !185)
!224 = !DILocation(line: 286, column: 24, scope: !185)
!225 = !DILocation(line: 287, column: 30, scope: !185)
!226 = !DILocation(line: 292, column: 10, scope: !197)
!227 = !DILocation(line: 292, column: 6, scope: !185)
!228 = !DILocation(line: 293, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 293, column: 5)
!230 = distinct !DILexicalBlock(scope: !197, file: !2, line: 292, column: 17)
!231 = !DILocation(line: 293, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 293, column: 5)
!233 = !DILocation(line: 295, column: 15, scope: !196)
!234 = !DILocation(line: 295, column: 22, scope: !196)
!235 = !DILocation(line: 297, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !196, file: !2, line: 295, column: 40)
!237 = !DILocation(line: 298, column: 5, scope: !236)
!238 = !DILocation(line: 300, column: 14, scope: !195)
!239 = !DILocation(line: 300, column: 38, scope: !195)
!240 = !DILocation(line: 301, column: 23, scope: !194)
!241 = !DILocation(line: 0, scope: !194)
!242 = !DILocation(line: 302, column: 22, scope: !194)
!243 = !DILocation(line: 303, column: 34, scope: !194)
!244 = !DILocation(line: 304, column: 25, scope: !194)
!245 = !DILocation(line: 304, column: 31, scope: !194)
!246 = !DILocation(line: 304, column: 43, scope: !194)
!247 = !DILocation(line: 304, column: 49, scope: !194)
!248 = !DILocation(line: 304, column: 60, scope: !194)
!249 = !DILocation(line: 304, column: 65, scope: !194)
!250 = !DILocation(line: 304, column: 71, scope: !194)
!251 = !DILocation(line: 305, column: 37, scope: !194)
!252 = !DILocation(line: 305, column: 59, scope: !194)
!253 = !DILocation(line: 305, column: 63, scope: !194)
!254 = !DILocation(line: 305, column: 42, scope: !194)
!255 = !DILocation(line: 306, column: 28, scope: !194)
!256 = !DILocation(line: 306, column: 27, scope: !194)
!257 = !DILocation(line: 306, column: 40, scope: !194)
!258 = !DILocation(line: 307, column: 24, scope: !194)
!259 = !DILocation(line: 307, column: 18, scope: !194)
!260 = !DILocation(line: 308, column: 24, scope: !194)
!261 = !DILocation(line: 308, column: 45, scope: !194)
!262 = !DILocation(line: 308, column: 59, scope: !194)
!263 = !DILocation(line: 308, column: 42, scope: !194)
!264 = !DILocation(line: 308, column: 13, scope: !194)
!265 = !DILocation(line: 309, column: 44, scope: !194)
!266 = !DILocation(line: 309, column: 42, scope: !194)
!267 = !DILocation(line: 309, column: 17, scope: !194)
!268 = !DILocation(line: 324, column: 8, scope: !204)
!269 = !DILocation(line: 325, column: 26, scope: !270)
!270 = distinct !DILexicalBlock(scope: !217, file: !2, line: 324, column: 36)
!271 = !DILocation(line: 325, column: 29, scope: !270)
!272 = !DILocation(line: 325, column: 48, scope: !270)
!273 = !DILocation(line: 325, column: 34, scope: !270)
!274 = !DILocation(line: 326, column: 27, scope: !270)
!275 = !DILocation(line: 0, scope: !204)
!276 = !DILocation(line: 326, column: 30, scope: !270)
!277 = !DILocation(line: 326, column: 48, scope: !270)
!278 = !DILocation(line: 326, column: 34, scope: !270)
!279 = !DILocation(line: 329, column: 5, scope: !270)
!280 = !DILocation(line: 331, column: 7, scope: !216)
!281 = !DILocation(line: 332, column: 7, scope: !216)
!282 = !DILocation(line: 333, column: 7, scope: !216)
!283 = !DILocation(line: 334, column: 7, scope: !216)
!284 = !DILocation(line: 335, column: 32, scope: !216)
!285 = !DILocation(line: 335, column: 35, scope: !216)
!286 = !DILocation(line: 336, column: 32, scope: !216)
!287 = !DILocation(line: 337, column: 36, scope: !216)
!288 = !DILocation(line: 337, column: 39, scope: !216)
!289 = !DILocation(line: 338, column: 36, scope: !216)
!290 = !DILocation(line: 339, column: 5, scope: !217)
!291 = !DILocation(line: 0, scope: !217)
!292 = !DILocation(line: 340, column: 8, scope: !204)
!293 = !DILocation(line: 341, column: 28, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !2, line: 340, column: 37)
!295 = distinct !DILexicalBlock(scope: !204, file: !2, line: 340, column: 8)
!296 = !DILocation(line: 341, column: 32, scope: !294)
!297 = !DILocation(line: 341, column: 53, scope: !294)
!298 = !DILocation(line: 341, column: 37, scope: !294)
!299 = !DILocation(line: 342, column: 32, scope: !294)
!300 = !DILocation(line: 342, column: 54, scope: !294)
!301 = !DILocation(line: 342, column: 58, scope: !294)
!302 = !DILocation(line: 342, column: 37, scope: !294)
!303 = !DILocation(line: 343, column: 5, scope: !294)
!304 = !DILocation(line: 345, column: 23, scope: !305)
!305 = distinct !DILexicalBlock(scope: !295, file: !2, line: 344, column: 10)
!306 = !DILocation(line: 345, column: 22, scope: !305)
!307 = !DILocation(line: 346, column: 22, scope: !305)
!308 = !DILocation(line: 0, scope: !295)
!309 = !DILocation(line: 348, column: 10, scope: !204)
!310 = !DILocation(line: 348, column: 22, scope: !204)
!311 = !DILocation(line: 349, column: 24, scope: !204)
!312 = !DILocation(line: 350, column: 39, scope: !204)
!313 = !DILocation(line: 350, column: 37, scope: !204)
!314 = !DILocation(line: 351, column: 21, scope: !204)
!315 = !DILocation(line: 353, column: 28, scope: !204)
!316 = !DILocation(line: 353, column: 18, scope: !204)
!317 = !DILocation(line: 354, column: 30, scope: !204)
!318 = !DILocation(line: 354, column: 28, scope: !204)
!319 = !DILocation(line: 354, column: 13, scope: !204)
!320 = !DILocation(line: 355, column: 44, scope: !204)
!321 = !DILocation(line: 355, column: 28, scope: !204)
!322 = !DILocation(line: 356, column: 28, scope: !204)
!323 = !DILocation(line: 356, column: 51, scope: !204)
!324 = !DILocation(line: 356, column: 48, scope: !204)
!325 = !DILocation(line: 356, column: 68, scope: !204)
!326 = !DILocation(line: 357, column: 44, scope: !204)
!327 = !DILocation(line: 357, column: 42, scope: !204)
!328 = !DILocation(line: 357, column: 17, scope: !204)
!329 = !DILocation(line: 0, scope: !197)
!330 = !DILocation(line: 360, column: 1, scope: !185)
!331 = !DISubprogram(name: "gsl_sf_sin_e", scope: !179, file: !179, line: 45, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DISubroutineType(types: !333)
!333 = !{!38, !88, !89}
!334 = !DISubprogram(name: "gsl_sf_cos_e", scope: !179, file: !179, line: 51, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubprogram(name: "tanh", scope: !181, file: !181, line: 75, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_e", scope: !2, file: !2, line: 364, type: !337, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !340)
!337 = !DISubroutineType(types: !338)
!338 = !{!38, !339, !87, !87, !89}
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !358, !359, !360, !363, !364, !365, !366, !367, !368, !371, !372, !373, !376, !377, !378, !379, !380, !381, !383, !384, !385, !386, !387, !388, !389, !390, !394, !395, !398, !399, !401}
!341 = !DILocalVariable(name: "ell", arg: 1, scope: !336, file: !2, line: 364, type: !339)
!342 = !DILocalVariable(name: "lambda", arg: 2, scope: !336, file: !2, line: 364, type: !87)
!343 = !DILocalVariable(name: "eta", arg: 3, scope: !336, file: !2, line: 364, type: !87)
!344 = !DILocalVariable(name: "result", arg: 4, scope: !336, file: !2, line: 365, type: !89)
!345 = !DILocalVariable(name: "abs_lam", scope: !336, file: !2, line: 367, type: !87)
!346 = !DILocalVariable(name: "lsq", scope: !336, file: !2, line: 368, type: !87)
!347 = !DILocalVariable(name: "xi", scope: !336, file: !2, line: 369, type: !87)
!348 = !DILocalVariable(name: "cosh_eta", scope: !336, file: !2, line: 370, type: !87)
!349 = !DILocalVariable(name: "P", scope: !350, file: !2, line: 398, type: !90)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 395, column: 88)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 395, column: 11)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 392, column: 11)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 387, column: 11)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 384, column: 11)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 381, column: 11)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 377, column: 11)
!357 = distinct !DILexicalBlock(scope: !336, file: !2, line: 374, column: 6)
!358 = !DILocalVariable(name: "lm", scope: !350, file: !2, line: 399, type: !88)
!359 = !DILocalVariable(name: "stat_P", scope: !350, file: !2, line: 400, type: !38)
!360 = !DILocalVariable(name: "lnN", scope: !361, file: !2, line: 407, type: !88)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 406, column: 10)
!362 = distinct !DILexicalBlock(scope: !350, file: !2, line: 401, column: 8)
!363 = !DILocalVariable(name: "lnsh", scope: !361, file: !2, line: 408, type: !90)
!364 = !DILocalVariable(name: "ln_abslam", scope: !361, file: !2, line: 409, type: !88)
!365 = !DILocalVariable(name: "lnpre_val", scope: !361, file: !2, line: 410, type: !88)
!366 = !DILocalVariable(name: "lnpre_err", scope: !361, file: !2, line: 410, type: !88)
!367 = !DILocalVariable(name: "stat_e", scope: !361, file: !2, line: 411, type: !38)
!368 = !DILocalVariable(name: "P", scope: !369, file: !2, line: 426, type: !90)
!369 = distinct !DILexicalBlock(scope: !370, file: !2, line: 423, column: 37)
!370 = distinct !DILexicalBlock(scope: !351, file: !2, line: 423, column: 11)
!371 = !DILocalVariable(name: "lm", scope: !369, file: !2, line: 427, type: !88)
!372 = !DILocalVariable(name: "stat_P", scope: !369, file: !2, line: 428, type: !38)
!373 = !DILocalVariable(name: "lnN", scope: !374, file: !2, line: 438, type: !88)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 437, column: 10)
!375 = distinct !DILexicalBlock(scope: !369, file: !2, line: 432, column: 8)
!376 = !DILocalVariable(name: "lnsh", scope: !374, file: !2, line: 439, type: !90)
!377 = !DILocalVariable(name: "ln_abslam", scope: !374, file: !2, line: 440, type: !88)
!378 = !DILocalVariable(name: "lnpre_val", scope: !374, file: !2, line: 441, type: !88)
!379 = !DILocalVariable(name: "lnpre_err", scope: !374, file: !2, line: 441, type: !88)
!380 = !DILocalVariable(name: "stat_e", scope: !374, file: !2, line: 442, type: !38)
!381 = !DILocalVariable(name: "coth_eta", scope: !382, file: !2, line: 457, type: !87)
!382 = distinct !DILexicalBlock(scope: !370, file: !2, line: 454, column: 8)
!383 = !DILocalVariable(name: "coth_err_mult", scope: !382, file: !2, line: 458, type: !87)
!384 = !DILocalVariable(name: "rH", scope: !382, file: !2, line: 459, type: !90)
!385 = !DILocalVariable(name: "stat_CF1", scope: !382, file: !2, line: 460, type: !38)
!386 = !DILocalVariable(name: "Hlm1", scope: !382, file: !2, line: 461, type: !88)
!387 = !DILocalVariable(name: "Hl", scope: !382, file: !2, line: 462, type: !88)
!388 = !DILocalVariable(name: "Hlp1", scope: !382, file: !2, line: 463, type: !88)
!389 = !DILocalVariable(name: "lp", scope: !382, file: !2, line: 464, type: !38)
!390 = !DILocalVariable(name: "root_term_0", scope: !391, file: !2, line: 466, type: !88)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 465, column: 29)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 465, column: 5)
!393 = distinct !DILexicalBlock(scope: !382, file: !2, line: 465, column: 5)
!394 = !DILocalVariable(name: "root_term_1", scope: !391, file: !2, line: 467, type: !88)
!395 = !DILocalVariable(name: "H0", scope: !396, file: !2, line: 474, type: !90)
!396 = distinct !DILexicalBlock(scope: !397, file: !2, line: 473, column: 31)
!397 = distinct !DILexicalBlock(scope: !382, file: !2, line: 473, column: 8)
!398 = !DILocalVariable(name: "stat_H0", scope: !396, file: !2, line: 475, type: !38)
!399 = !DILocalVariable(name: "H1", scope: !400, file: !2, line: 483, type: !90)
!400 = distinct !DILexicalBlock(scope: !397, file: !2, line: 482, column: 10)
!401 = !DILocalVariable(name: "stat_H1", scope: !400, file: !2, line: 484, type: !38)
!402 = distinct !DIAssignID()
!403 = !DILocation(line: 0, scope: !350)
!404 = distinct !DIAssignID()
!405 = distinct !DIAssignID()
!406 = !DILocation(line: 0, scope: !361)
!407 = distinct !DIAssignID()
!408 = distinct !DIAssignID()
!409 = !DILocation(line: 0, scope: !369)
!410 = distinct !DIAssignID()
!411 = distinct !DIAssignID()
!412 = !DILocation(line: 0, scope: !374)
!413 = distinct !DIAssignID()
!414 = distinct !DIAssignID()
!415 = !DILocation(line: 0, scope: !382)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 0, scope: !396)
!418 = distinct !DIAssignID()
!419 = !DILocation(line: 0, scope: !400)
!420 = !DILocation(line: 0, scope: !336)
!421 = !DILocation(line: 367, column: 26, scope: !336)
!422 = !DILocation(line: 368, column: 33, scope: !336)
!423 = !DILocation(line: 369, column: 34, scope: !336)
!424 = !DILocation(line: 374, column: 10, scope: !357)
!425 = !DILocation(line: 374, column: 6, scope: !336)
!426 = !DILocation(line: 375, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 375, column: 5)
!428 = distinct !DILexicalBlock(scope: !357, file: !2, line: 374, column: 17)
!429 = !DILocation(line: 375, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 375, column: 5)
!431 = !DILocation(line: 377, column: 15, scope: !356)
!432 = !DILocation(line: 377, column: 11, scope: !357)
!433 = !DILocation(line: 379, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 379, column: 5)
!435 = distinct !DILexicalBlock(scope: !356, file: !2, line: 377, column: 34)
!436 = !DILocation(line: 379, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !2, line: 379, column: 5)
!438 = !DILocation(line: 381, column: 11, scope: !356)
!439 = !DILocation(line: 382, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !355, file: !2, line: 381, column: 21)
!441 = !{i32 0, i32 2}
!442 = !DILocation(line: 382, column: 5, scope: !440)
!443 = !DILocation(line: 385, column: 12, scope: !444)
!444 = distinct !DILexicalBlock(scope: !354, file: !2, line: 384, column: 21)
!445 = !DILocation(line: 385, column: 5, scope: !444)
!446 = !DILocation(line: 387, column: 15, scope: !353)
!447 = !DILocation(line: 387, column: 11, scope: !354)
!448 = !DILocation(line: 389, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !353, file: !2, line: 387, column: 23)
!450 = !DILocation(line: 390, column: 5, scope: !449)
!451 = !DILocation(line: 392, column: 14, scope: !352)
!452 = !DILocation(line: 392, column: 11, scope: !353)
!453 = !DILocation(line: 393, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !352, file: !2, line: 392, column: 21)
!455 = !DILocation(line: 393, column: 5, scope: !454)
!456 = !DILocation(line: 395, column: 15, scope: !351)
!457 = !DILocation(line: 395, column: 12, scope: !351)
!458 = !DILocation(line: 395, column: 33, scope: !351)
!459 = !DILocation(line: 395, column: 25, scope: !351)
!460 = !DILocation(line: 395, column: 24, scope: !351)
!461 = !DILocation(line: 395, column: 48, scope: !351)
!462 = !DILocation(line: 395, column: 38, scope: !351)
!463 = !DILocation(line: 395, column: 59, scope: !351)
!464 = !DILocation(line: 395, column: 11, scope: !352)
!465 = !DILocation(line: 398, column: 5, scope: !350)
!466 = !DILocation(line: 399, column: 5, scope: !350)
!467 = !DILocation(line: 400, column: 44, scope: !350)
!468 = !DILocation(line: 400, column: 18, scope: !350)
!469 = !DILocation(line: 401, column: 10, scope: !362)
!470 = !DILocation(line: 401, column: 14, scope: !362)
!471 = !DILocation(line: 401, column: 8, scope: !350)
!472 = !DILocation(line: 403, column: 19, scope: !473)
!473 = distinct !DILexicalBlock(scope: !362, file: !2, line: 401, column: 22)
!474 = !DILocation(line: 404, column: 7, scope: !473)
!475 = !DILocation(line: 407, column: 7, scope: !361)
!476 = !DILocation(line: 408, column: 7, scope: !361)
!477 = !DILocation(line: 412, column: 7, scope: !361)
!478 = !DILocation(line: 413, column: 7, scope: !361)
!479 = !DILocation(line: 415, column: 34, scope: !361)
!480 = !{!120, !120, i64 0}
!481 = !DILocation(line: 415, column: 38, scope: !361)
!482 = !DILocation(line: 415, column: 53, scope: !361)
!483 = !DILocation(line: 415, column: 23, scope: !361)
!484 = !DILocation(line: 416, column: 25, scope: !361)
!485 = !DILocation(line: 417, column: 67, scope: !361)
!486 = !DILocation(line: 417, column: 48, scope: !361)
!487 = !DILocation(line: 417, column: 80, scope: !361)
!488 = !DILocation(line: 417, column: 42, scope: !361)
!489 = !DILocation(line: 418, column: 44, scope: !361)
!490 = !DILocation(line: 418, column: 42, scope: !361)
!491 = !DILocation(line: 419, column: 50, scope: !361)
!492 = !DILocation(line: 419, column: 67, scope: !361)
!493 = !DILocation(line: 419, column: 74, scope: !361)
!494 = !DILocation(line: 419, column: 16, scope: !361)
!495 = !DILocation(line: 420, column: 14, scope: !361)
!496 = !DILocation(line: 421, column: 5, scope: !362)
!497 = !DILocation(line: 0, scope: !362)
!498 = !DILocation(line: 422, column: 3, scope: !351)
!499 = !DILocation(line: 423, column: 28, scope: !370)
!500 = !DILocation(line: 423, column: 27, scope: !370)
!501 = !DILocation(line: 423, column: 31, scope: !370)
!502 = !DILocation(line: 423, column: 19, scope: !370)
!503 = !DILocation(line: 423, column: 11, scope: !351)
!504 = !DILocation(line: 426, column: 5, scope: !369)
!505 = !DILocation(line: 427, column: 5, scope: !369)
!506 = !DILocation(line: 428, column: 18, scope: !369)
!507 = !DILocation(line: 432, column: 10, scope: !375)
!508 = !DILocation(line: 432, column: 14, scope: !375)
!509 = !DILocation(line: 432, column: 8, scope: !369)
!510 = !DILocation(line: 434, column: 19, scope: !511)
!511 = distinct !DILexicalBlock(scope: !375, file: !2, line: 432, column: 22)
!512 = !DILocation(line: 435, column: 7, scope: !511)
!513 = !DILocation(line: 438, column: 7, scope: !374)
!514 = !DILocation(line: 439, column: 7, scope: !374)
!515 = !DILocation(line: 443, column: 7, scope: !374)
!516 = !DILocation(line: 444, column: 7, scope: !374)
!517 = !DILocation(line: 446, column: 34, scope: !374)
!518 = !DILocation(line: 446, column: 38, scope: !374)
!519 = !DILocation(line: 446, column: 53, scope: !374)
!520 = !DILocation(line: 446, column: 23, scope: !374)
!521 = !DILocation(line: 447, column: 25, scope: !374)
!522 = !DILocation(line: 448, column: 61, scope: !374)
!523 = !DILocation(line: 448, column: 42, scope: !374)
!524 = !DILocation(line: 448, column: 74, scope: !374)
!525 = !DILocation(line: 448, column: 36, scope: !374)
!526 = !DILocation(line: 449, column: 44, scope: !374)
!527 = !DILocation(line: 449, column: 42, scope: !374)
!528 = !DILocation(line: 450, column: 50, scope: !374)
!529 = !DILocation(line: 450, column: 67, scope: !374)
!530 = !DILocation(line: 450, column: 74, scope: !374)
!531 = !DILocation(line: 450, column: 16, scope: !374)
!532 = !DILocation(line: 451, column: 14, scope: !374)
!533 = !DILocation(line: 452, column: 5, scope: !375)
!534 = !DILocation(line: 0, scope: !375)
!535 = !DILocation(line: 453, column: 3, scope: !370)
!536 = !DILocation(line: 457, column: 33, scope: !382)
!537 = !DILocation(line: 457, column: 32, scope: !382)
!538 = !DILocation(line: 458, column: 34, scope: !382)
!539 = !DILocation(line: 459, column: 5, scope: !382)
!540 = !DILocation(line: 460, column: 20, scope: !382)
!541 = !{i32 0, i32 12}
!542 = !DILocation(line: 463, column: 23, scope: !382)
!543 = !DILocation(line: 463, column: 27, scope: !382)
!544 = !DILocation(line: 465, column: 19, scope: !392)
!545 = !DILocation(line: 465, column: 5, scope: !393)
!546 = !DILocation(line: 466, column: 41, scope: !391)
!547 = !DILocation(line: 466, column: 28, scope: !391)
!548 = !DILocation(line: 0, scope: !391)
!549 = !DILocation(line: 467, column: 28, scope: !391)
!550 = !DILocation(line: 468, column: 19, scope: !391)
!551 = !DILocation(line: 468, column: 29, scope: !391)
!552 = !DILocation(line: 468, column: 38, scope: !391)
!553 = !DILocation(line: 468, column: 56, scope: !391)
!554 = !DILocation(line: 468, column: 63, scope: !391)
!555 = !DILocation(line: 465, column: 25, scope: !392)
!556 = distinct !{!556, !545, !557, !558}
!557 = !DILocation(line: 471, column: 5, scope: !393)
!558 = !{!"llvm.loop.mustprogress"}
!559 = !DILocation(line: 473, column: 8, scope: !397)
!560 = !DILocation(line: 473, column: 19, scope: !397)
!561 = !DILocation(line: 473, column: 17, scope: !397)
!562 = !DILocation(line: 0, scope: !397)
!563 = !DILocation(line: 473, column: 8, scope: !382)
!564 = !DILocation(line: 474, column: 7, scope: !396)
!565 = !DILocation(line: 475, column: 21, scope: !396)
!566 = !DILocation(line: 476, column: 38, scope: !396)
!567 = !DILocation(line: 476, column: 47, scope: !396)
!568 = !DILocation(line: 476, column: 42, scope: !396)
!569 = !DILocation(line: 476, column: 20, scope: !396)
!570 = !DILocation(line: 477, column: 38, scope: !396)
!571 = !DILocation(line: 477, column: 53, scope: !396)
!572 = !DILocation(line: 477, column: 48, scope: !396)
!573 = !DILocation(line: 478, column: 30, scope: !396)
!574 = !DILocation(line: 478, column: 33, scope: !396)
!575 = !DILocation(line: 478, column: 22, scope: !396)
!576 = !DILocation(line: 478, column: 42, scope: !396)
!577 = !DILocation(line: 478, column: 54, scope: !396)
!578 = !DILocation(line: 478, column: 72, scope: !396)
!579 = !DILocation(line: 478, column: 70, scope: !396)
!580 = !DILocation(line: 479, column: 44, scope: !396)
!581 = !DILocation(line: 479, column: 19, scope: !396)
!582 = !DILocation(line: 480, column: 14, scope: !396)
!583 = !DILocation(line: 481, column: 5, scope: !397)
!584 = !DILocation(line: 483, column: 7, scope: !400)
!585 = !DILocation(line: 484, column: 21, scope: !400)
!586 = !DILocation(line: 485, column: 38, scope: !400)
!587 = !DILocation(line: 485, column: 49, scope: !400)
!588 = !DILocation(line: 485, column: 44, scope: !400)
!589 = !DILocation(line: 485, column: 20, scope: !400)
!590 = !DILocation(line: 486, column: 38, scope: !400)
!591 = !DILocation(line: 486, column: 55, scope: !400)
!592 = !DILocation(line: 486, column: 50, scope: !400)
!593 = !DILocation(line: 487, column: 30, scope: !400)
!594 = !DILocation(line: 487, column: 33, scope: !400)
!595 = !DILocation(line: 487, column: 22, scope: !400)
!596 = !DILocation(line: 487, column: 42, scope: !400)
!597 = !DILocation(line: 487, column: 54, scope: !400)
!598 = !DILocation(line: 487, column: 72, scope: !400)
!599 = !DILocation(line: 487, column: 70, scope: !400)
!600 = !DILocation(line: 488, column: 44, scope: !400)
!601 = !DILocation(line: 488, column: 19, scope: !400)
!602 = !DILocation(line: 489, column: 14, scope: !400)
!603 = !DILocation(line: 490, column: 5, scope: !397)
!604 = !DILocation(line: 491, column: 3, scope: !370)
!605 = !DILocation(line: 0, scope: !357)
!606 = !DILocation(line: 492, column: 1, scope: !336)
!607 = !DISubprogram(name: "cosh", scope: !181, file: !181, line: 71, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = distinct !DISubprogram(name: "legendre_H3d_series", scope: !2, file: !2, line: 97, type: !337, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!610 = !DILocalVariable(name: "ell", arg: 1, scope: !608, file: !2, line: 97, type: !339)
!611 = !DILocalVariable(name: "lambda", arg: 2, scope: !608, file: !2, line: 97, type: !87)
!612 = !DILocalVariable(name: "eta", arg: 3, scope: !608, file: !2, line: 97, type: !87)
!613 = !DILocalVariable(name: "result", arg: 4, scope: !608, file: !2, line: 98, type: !89)
!614 = !DILocalVariable(name: "nmax", scope: !608, file: !2, line: 100, type: !339)
!615 = !DILocalVariable(name: "shheta", scope: !608, file: !2, line: 101, type: !87)
!616 = !DILocalVariable(name: "ln_zp1", scope: !608, file: !2, line: 102, type: !87)
!617 = !DILocalVariable(name: "ln_zm1", scope: !608, file: !2, line: 103, type: !87)
!618 = !DILocalVariable(name: "zeta", scope: !608, file: !2, line: 104, type: !87)
!619 = !DILocalVariable(name: "lg_lp32", scope: !608, file: !2, line: 105, type: !90)
!620 = !DILocalVariable(name: "term", scope: !608, file: !2, line: 106, type: !88)
!621 = !DILocalVariable(name: "sum", scope: !608, file: !2, line: 107, type: !88)
!622 = !DILocalVariable(name: "sum_err", scope: !608, file: !2, line: 108, type: !88)
!623 = !DILocalVariable(name: "lnsheta", scope: !608, file: !2, line: 109, type: !90)
!624 = !DILocalVariable(name: "lnN", scope: !608, file: !2, line: 110, type: !88)
!625 = !DILocalVariable(name: "lnpre_val", scope: !608, file: !2, line: 111, type: !88)
!626 = !DILocalVariable(name: "lnpre_err", scope: !608, file: !2, line: 111, type: !88)
!627 = !DILocalVariable(name: "lnprepow", scope: !608, file: !2, line: 111, type: !88)
!628 = !DILocalVariable(name: "stat_e", scope: !608, file: !2, line: 112, type: !38)
!629 = !DILocalVariable(name: "n", scope: !608, file: !2, line: 113, type: !38)
!630 = !DILocalVariable(name: "aR", scope: !631, file: !2, line: 124, type: !88)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 123, column: 25)
!632 = distinct !DILexicalBlock(scope: !633, file: !2, line: 123, column: 3)
!633 = distinct !DILexicalBlock(scope: !608, file: !2, line: 123, column: 3)
!634 = distinct !DIAssignID()
!635 = !DILocation(line: 0, scope: !608)
!636 = distinct !DIAssignID()
!637 = distinct !DIAssignID()
!638 = !DILocation(line: 101, column: 33, scope: !608)
!639 = !DILocation(line: 102, column: 49, scope: !608)
!640 = !DILocation(line: 102, column: 33, scope: !608)
!641 = !DILocation(line: 103, column: 37, scope: !608)
!642 = !DILocation(line: 104, column: 23, scope: !608)
!643 = !DILocation(line: 104, column: 30, scope: !608)
!644 = !DILocation(line: 105, column: 3, scope: !608)
!645 = !DILocation(line: 109, column: 3, scope: !608)
!646 = !DILocation(line: 110, column: 3, scope: !608)
!647 = !DILocation(line: 115, column: 20, scope: !608)
!648 = !DILocation(line: 115, column: 3, scope: !608)
!649 = !DILocation(line: 116, column: 3, scope: !608)
!650 = !DILocation(line: 117, column: 3, scope: !608)
!651 = !DILocation(line: 119, column: 32, scope: !608)
!652 = !DILocation(line: 119, column: 63, scope: !608)
!653 = !DILocation(line: 119, column: 78, scope: !608)
!654 = !DILocation(line: 119, column: 88, scope: !608)
!655 = !DILocation(line: 120, column: 24, scope: !608)
!656 = !DILocation(line: 120, column: 38, scope: !608)
!657 = !DILocation(line: 123, column: 3, scope: !633)
!658 = !DILocation(line: 124, column: 17, scope: !631)
!659 = !DILocation(line: 125, column: 16, scope: !631)
!660 = !DILocation(line: 0, scope: !631)
!661 = !DILocation(line: 125, column: 36, scope: !631)
!662 = !DILocation(line: 125, column: 47, scope: !631)
!663 = !DILocation(line: 125, column: 43, scope: !631)
!664 = !DILocation(line: 125, column: 41, scope: !631)
!665 = !DILocation(line: 125, column: 57, scope: !631)
!666 = !DILocation(line: 125, column: 10, scope: !631)
!667 = !DILocation(line: 127, column: 36, scope: !631)
!668 = !DILocation(line: 127, column: 35, scope: !631)
!669 = !DILocation(line: 128, column: 17, scope: !670)
!670 = distinct !DILexicalBlock(scope: !631, file: !2, line: 128, column: 8)
!671 = !DILocation(line: 128, column: 8, scope: !670)
!672 = !DILocation(line: 128, column: 23, scope: !670)
!673 = !DILocation(line: 123, column: 21, scope: !632)
!674 = !DILocation(line: 123, column: 13, scope: !632)
!675 = distinct !{!675, !657, !676, !558}
!676 = !DILocation(line: 129, column: 3, scope: !633)
!677 = !DILocation(line: 123, scope: !633)
!678 = !DILocation(line: 118, column: 23, scope: !608)
!679 = !DILocation(line: 118, column: 17, scope: !608)
!680 = !DILocation(line: 103, column: 36, scope: !608)
!681 = !DILocation(line: 102, column: 31, scope: !608)
!682 = !DILocation(line: 118, column: 40, scope: !608)
!683 = !DILocation(line: 118, column: 30, scope: !608)
!684 = !DILocation(line: 119, column: 45, scope: !608)
!685 = !DILocation(line: 119, column: 53, scope: !608)
!686 = !DILocation(line: 119, column: 30, scope: !608)
!687 = !DILocation(line: 119, column: 68, scope: !608)
!688 = !DILocation(line: 119, column: 82, scope: !608)
!689 = !DILocation(line: 120, column: 62, scope: !608)
!690 = !DILocation(line: 120, column: 60, scope: !608)
!691 = !DILocation(line: 121, column: 39, scope: !608)
!692 = !DILocation(line: 121, column: 58, scope: !608)
!693 = !DILocation(line: 121, column: 36, scope: !608)
!694 = !DILocation(line: 122, column: 58, scope: !608)
!695 = !DILocation(line: 122, column: 73, scope: !608)
!696 = !DILocation(line: 122, column: 55, scope: !608)
!697 = !DILocation(line: 122, column: 36, scope: !608)
!698 = !DILocation(line: 131, column: 71, scope: !608)
!699 = !DILocation(line: 131, column: 12, scope: !608)
!700 = !DILocation(line: 132, column: 10, scope: !608)
!701 = !DILocation(line: 133, column: 1, scope: !608)
!702 = !DILocation(line: 132, column: 3, scope: !608)
!703 = !DISubprogram(name: "gsl_sf_conicalP_large_x_e", scope: !704, file: !704, line: 71, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DIFile(filename: "./legendre.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "e948494d49e247de2f897d51ea0e6f2b")
!705 = !DISubroutineType(types: !706)
!706 = !{!38, !87, !87, !87, !89, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!708 = !DISubprogram(name: "gsl_sf_lnsinh_e", scope: !179, file: !179, line: 94, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{!38, !87, !89}
!711 = distinct !DISubprogram(name: "legendre_H3d_lnnorm", scope: !2, file: !2, line: 46, type: !712, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !714)
!712 = !DISubroutineType(cc: DW_CC_nocall, types: !713)
!713 = !{!38, !339, !87, !707}
!714 = !{!715, !716, !717, !718, !719, !723, !724, !725, !726, !728, !729}
!715 = !DILocalVariable(name: "ell", arg: 1, scope: !711, file: !2, line: 46, type: !339)
!716 = !DILocalVariable(name: "lambda", arg: 2, scope: !711, file: !2, line: 46, type: !87)
!717 = !DILocalVariable(name: "result", arg: 3, scope: !711, file: !2, line: 46, type: !707)
!718 = !DILocalVariable(name: "abs_lam", scope: !711, file: !2, line: 48, type: !88)
!719 = !DILocalVariable(name: "rat", scope: !720, file: !2, line: 62, type: !88)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 54, column: 55)
!721 = distinct !DILexicalBlock(scope: !722, file: !2, line: 54, column: 11)
!722 = distinct !DILexicalBlock(scope: !711, file: !2, line: 50, column: 6)
!723 = !DILocalVariable(name: "ln_lam2ell2", scope: !720, file: !2, line: 63, type: !88)
!724 = !DILocalVariable(name: "lg_corrected", scope: !720, file: !2, line: 64, type: !88)
!725 = !DILocalVariable(name: "angle_terms", scope: !720, file: !2, line: 65, type: !88)
!726 = !DILocalVariable(name: "lg_r", scope: !727, file: !2, line: 70, type: !90)
!727 = distinct !DILexicalBlock(scope: !721, file: !2, line: 69, column: 8)
!728 = !DILocalVariable(name: "lg_theta", scope: !727, file: !2, line: 71, type: !90)
!729 = !DILocalVariable(name: "ln_sinh", scope: !727, file: !2, line: 72, type: !90)
!730 = distinct !DIAssignID()
!731 = !DILocation(line: 0, scope: !727)
!732 = distinct !DIAssignID()
!733 = distinct !DIAssignID()
!734 = !DILocation(line: 0, scope: !711)
!735 = !DILocation(line: 48, column: 20, scope: !711)
!736 = !DILocation(line: 50, column: 14, scope: !722)
!737 = !DILocation(line: 50, column: 6, scope: !711)
!738 = !DILocation(line: 51, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !722, file: !2, line: 50, column: 22)
!740 = !DILocation(line: 52, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !2, line: 52, column: 5)
!742 = !DILocation(line: 54, column: 21, scope: !721)
!743 = !DILocation(line: 54, column: 31, scope: !721)
!744 = !DILocation(line: 54, column: 18, scope: !721)
!745 = !DILocation(line: 54, column: 11, scope: !722)
!746 = !DILocation(line: 62, column: 27, scope: !720)
!747 = !DILocation(line: 0, scope: !720)
!748 = !DILocation(line: 63, column: 30, scope: !720)
!749 = !DILocation(line: 63, column: 58, scope: !720)
!750 = !DILocation(line: 63, column: 45, scope: !720)
!751 = !DILocation(line: 64, column: 31, scope: !720)
!752 = !DILocation(line: 64, column: 57, scope: !720)
!753 = !DILocation(line: 64, column: 62, scope: !720)
!754 = !DILocation(line: 64, column: 87, scope: !720)
!755 = !DILocation(line: 64, column: 94, scope: !720)
!756 = !DILocation(line: 64, column: 80, scope: !720)
!757 = !DILocation(line: 65, column: 34, scope: !720)
!758 = !DILocation(line: 65, column: 40, scope: !720)
!759 = !DILocation(line: 65, column: 62, scope: !720)
!760 = !DILocation(line: 65, column: 46, scope: !720)
!761 = !DILocation(line: 66, column: 43, scope: !720)
!762 = !DILocation(line: 66, column: 57, scope: !720)
!763 = !DILocation(line: 66, column: 13, scope: !720)
!764 = !DILocation(line: 70, column: 5, scope: !727)
!765 = !DILocation(line: 71, column: 5, scope: !727)
!766 = !DILocation(line: 72, column: 5, scope: !727)
!767 = !DILocation(line: 73, column: 5, scope: !727)
!768 = !DILocation(line: 74, column: 26, scope: !727)
!769 = !DILocation(line: 74, column: 5, scope: !727)
!770 = !DILocation(line: 75, column: 38, scope: !727)
!771 = !DILocation(line: 75, column: 53, scope: !727)
!772 = !DILocation(line: 75, column: 47, scope: !727)
!773 = !DILocation(line: 75, column: 57, scope: !727)
!774 = !DILocation(line: 75, column: 13, scope: !727)
!775 = !DILocation(line: 77, column: 3, scope: !721)
!776 = !DILocation(line: 78, column: 1, scope: !711)
!777 = !DISubprogram(name: "log", scope: !181, file: !181, line: 104, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !779, file: !779, line: 122, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!780 = !DISubroutineType(types: !781)
!781 = !{!38, !87, !87, !87, !87, !89}
!782 = !DISubprogram(name: "gsl_sf_conicalP_xgt1_neg_mu_largetau_e", scope: !704, file: !704, line: 43, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{!38, !87, !87, !87, !88, !89, !707}
!785 = distinct !DISubprogram(name: "legendre_H3d_CF1_ser", scope: !2, file: !2, line: 210, type: !337, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !802, !803}
!787 = !DILocalVariable(name: "ell", arg: 1, scope: !785, file: !2, line: 210, type: !339)
!788 = !DILocalVariable(name: "lambda", arg: 2, scope: !785, file: !2, line: 210, type: !87)
!789 = !DILocalVariable(name: "coth_eta", arg: 3, scope: !785, file: !2, line: 210, type: !87)
!790 = !DILocalVariable(name: "result", arg: 4, scope: !785, file: !2, line: 211, type: !89)
!791 = !DILocalVariable(name: "pre", scope: !785, file: !2, line: 213, type: !87)
!792 = !DILocalVariable(name: "maxk", scope: !785, file: !2, line: 214, type: !339)
!793 = !DILocalVariable(name: "tk", scope: !785, file: !2, line: 215, type: !88)
!794 = !DILocalVariable(name: "sum", scope: !785, file: !2, line: 216, type: !88)
!795 = !DILocalVariable(name: "rhok", scope: !785, file: !2, line: 217, type: !88)
!796 = !DILocalVariable(name: "sum_err", scope: !785, file: !2, line: 218, type: !88)
!797 = !DILocalVariable(name: "k", scope: !785, file: !2, line: 219, type: !38)
!798 = !DILocalVariable(name: "tlk", scope: !799, file: !2, line: 222, type: !88)
!799 = distinct !DILexicalBlock(scope: !800, file: !2, line: 221, column: 25)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 221, column: 3)
!801 = distinct !DILexicalBlock(scope: !785, file: !2, line: 221, column: 3)
!802 = !DILocalVariable(name: "l1k", scope: !799, file: !2, line: 223, type: !88)
!803 = !DILocalVariable(name: "ak", scope: !799, file: !2, line: 224, type: !88)
!804 = !DILocation(line: 0, scope: !785)
!805 = !DILocation(line: 213, column: 36, scope: !785)
!806 = !DILocation(line: 213, column: 22, scope: !785)
!807 = !DILocation(line: 213, column: 50, scope: !785)
!808 = !DILocation(line: 213, column: 57, scope: !785)
!809 = !DILocation(line: 213, column: 44, scope: !785)
!810 = !DILocation(line: 221, column: 3, scope: !801)
!811 = !DILocation(line: 222, column: 39, scope: !799)
!812 = !DILocation(line: 222, column: 38, scope: !799)
!813 = !DILocation(line: 223, column: 29, scope: !799)
!814 = !DILocation(line: 0, scope: !799)
!815 = !DILocation(line: 224, column: 38, scope: !799)
!816 = !DILocation(line: 224, column: 17, scope: !799)
!817 = !DILocation(line: 224, column: 48, scope: !799)
!818 = !DILocation(line: 224, column: 58, scope: !799)
!819 = !DILocation(line: 224, column: 67, scope: !799)
!820 = !DILocation(line: 224, column: 43, scope: !799)
!821 = !DILocation(line: 225, column: 12, scope: !799)
!822 = !DILocation(line: 225, column: 15, scope: !799)
!823 = !DILocation(line: 225, column: 38, scope: !799)
!824 = !DILocation(line: 225, column: 28, scope: !799)
!825 = !DILocation(line: 226, column: 9, scope: !799)
!826 = !DILocation(line: 228, column: 38, scope: !799)
!827 = !DILocation(line: 228, column: 44, scope: !799)
!828 = !DILocation(line: 228, column: 42, scope: !799)
!829 = !DILocation(line: 229, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !799, file: !2, line: 229, column: 8)
!831 = !DILocation(line: 229, column: 8, scope: !830)
!832 = !DILocation(line: 229, column: 21, scope: !830)
!833 = !DILocation(line: 221, column: 21, scope: !800)
!834 = !DILocation(line: 221, column: 13, scope: !800)
!835 = distinct !{!835, !810, !836, !558}
!836 = !DILocation(line: 230, column: 3, scope: !801)
!837 = !DILocation(line: 221, scope: !801)
!838 = !DILocation(line: 232, column: 22, scope: !785)
!839 = !DILocation(line: 232, column: 16, scope: !785)
!840 = !DILocation(line: 233, column: 27, scope: !785)
!841 = !DILocation(line: 233, column: 18, scope: !785)
!842 = !DILocation(line: 233, column: 11, scope: !785)
!843 = !DILocation(line: 234, column: 27, scope: !785)
!844 = !DILocation(line: 234, column: 18, scope: !785)
!845 = !DILocation(line: 235, column: 42, scope: !785)
!846 = !DILocation(line: 235, column: 40, scope: !785)
!847 = !DILocation(line: 235, column: 15, scope: !785)
!848 = !DILocation(line: 237, column: 8, scope: !849)
!849 = distinct !DILexicalBlock(scope: !785, file: !2, line: 237, column: 6)
!850 = !DILocation(line: 237, column: 6, scope: !785)
!851 = !DILocation(line: 238, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !2, line: 238, column: 5)
!853 = !DILocation(line: 0, scope: !849)
!854 = !DILocation(line: 241, column: 1, scope: !785)
!855 = !DISubprogram(name: "hypot", scope: !181, file: !181, line: 147, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DISubroutineType(types: !857)
!857 = !{!88, !88, !88}
!858 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_array", scope: !2, file: !2, line: 496, type: !859, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!38, !339, !87, !87, !707}
!861 = !{!862, !863, !864, !865, !866, !869, !872, !875, !876, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !892}
!862 = !DILocalVariable(name: "lmax", arg: 1, scope: !858, file: !2, line: 496, type: !339)
!863 = !DILocalVariable(name: "lambda", arg: 2, scope: !858, file: !2, line: 496, type: !87)
!864 = !DILocalVariable(name: "eta", arg: 3, scope: !858, file: !2, line: 496, type: !87)
!865 = !DILocalVariable(name: "result_array", arg: 4, scope: !858, file: !2, line: 496, type: !707)
!866 = !DILocalVariable(name: "ell", scope: !867, file: !2, line: 501, type: !38)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 500, column: 28)
!868 = distinct !DILexicalBlock(scope: !858, file: !2, line: 500, column: 5)
!869 = !DILocalVariable(name: "ell", scope: !870, file: !2, line: 507, type: !38)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 505, column: 34)
!871 = distinct !DILexicalBlock(scope: !868, file: !2, line: 505, column: 11)
!872 = !DILocalVariable(name: "H0", scope: !873, file: !2, line: 512, type: !90)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 511, column: 22)
!874 = distinct !DILexicalBlock(scope: !871, file: !2, line: 511, column: 11)
!875 = !DILocalVariable(name: "stat", scope: !873, file: !2, line: 513, type: !38)
!876 = !DILocalVariable(name: "r_Hlp1", scope: !877, file: !2, line: 520, type: !90)
!877 = distinct !DILexicalBlock(scope: !874, file: !2, line: 517, column: 8)
!878 = !DILocalVariable(name: "r_Hl", scope: !877, file: !2, line: 521, type: !90)
!879 = !DILocalVariable(name: "stat_lmax", scope: !877, file: !2, line: 522, type: !38)
!880 = !DILocalVariable(name: "stat_lmaxm1", scope: !877, file: !2, line: 523, type: !38)
!881 = !DILocalVariable(name: "stat_max", scope: !877, file: !2, line: 524, type: !38)
!882 = !DILocalVariable(name: "coth_eta", scope: !877, file: !2, line: 526, type: !87)
!883 = !DILocalVariable(name: "stat_recursion", scope: !877, file: !2, line: 527, type: !38)
!884 = !DILocalVariable(name: "Hlp1", scope: !877, file: !2, line: 528, type: !88)
!885 = !DILocalVariable(name: "Hl", scope: !877, file: !2, line: 529, type: !88)
!886 = !DILocalVariable(name: "Hlm1", scope: !877, file: !2, line: 530, type: !88)
!887 = !DILocalVariable(name: "ell", scope: !877, file: !2, line: 531, type: !38)
!888 = !DILocalVariable(name: "root_term_0", scope: !889, file: !2, line: 537, type: !88)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 536, column: 35)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 536, column: 5)
!891 = distinct !DILexicalBlock(scope: !877, file: !2, line: 536, column: 5)
!892 = !DILocalVariable(name: "root_term_1", scope: !889, file: !2, line: 538, type: !88)
!893 = distinct !DIAssignID()
!894 = !DILocation(line: 0, scope: !873)
!895 = distinct !DIAssignID()
!896 = !DILocation(line: 0, scope: !877)
!897 = distinct !DIAssignID()
!898 = !DILocation(line: 0, scope: !858)
!899 = !DILocation(line: 500, column: 9, scope: !868)
!900 = !DILocation(line: 500, column: 15, scope: !868)
!901 = !DILocation(line: 0, scope: !867)
!902 = !DILocation(line: 502, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !867, file: !2, line: 502, column: 5)
!904 = !DILocation(line: 502, column: 52, scope: !905)
!905 = distinct !DILexicalBlock(scope: !903, file: !2, line: 502, column: 5)
!906 = !DILocation(line: 503, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !867, file: !2, line: 503, column: 5)
!908 = !DILocation(line: 505, column: 15, scope: !871)
!909 = !DILocation(line: 505, column: 11, scope: !868)
!910 = !DILocation(line: 0, scope: !870)
!911 = !DILocation(line: 508, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !870, file: !2, line: 508, column: 5)
!913 = !DILocation(line: 508, column: 52, scope: !914)
!914 = distinct !DILexicalBlock(scope: !912, file: !2, line: 508, column: 5)
!915 = !DILocation(line: 509, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !870, file: !2, line: 509, column: 5)
!917 = !DILocation(line: 511, column: 16, scope: !874)
!918 = !DILocation(line: 511, column: 11, scope: !871)
!919 = !DILocation(line: 512, column: 5, scope: !873)
!920 = !DILocation(line: 513, column: 16, scope: !873)
!921 = !DILocation(line: 514, column: 26, scope: !873)
!922 = !DILocation(line: 514, column: 21, scope: !873)
!923 = !DILocation(line: 516, column: 3, scope: !874)
!924 = !DILocation(line: 520, column: 5, scope: !877)
!925 = !DILocation(line: 521, column: 5, scope: !877)
!926 = !DILocation(line: 522, column: 23, scope: !877)
!927 = !DILocation(line: 523, column: 49, scope: !877)
!928 = !DILocation(line: 523, column: 23, scope: !877)
!929 = !DILocation(line: 524, column: 20, scope: !877)
!930 = !DILocation(line: 526, column: 33, scope: !877)
!931 = !DILocation(line: 526, column: 32, scope: !877)
!932 = !DILocation(line: 528, column: 26, scope: !877)
!933 = !DILocation(line: 529, column: 24, scope: !877)
!934 = !DILocation(line: 533, column: 5, scope: !877)
!935 = !DILocation(line: 533, column: 26, scope: !877)
!936 = !DILocation(line: 534, column: 5, scope: !877)
!937 = !DILocation(line: 534, column: 26, scope: !877)
!938 = !DILocation(line: 536, column: 9, scope: !891)
!939 = !DILocation(line: 536, column: 24, scope: !890)
!940 = !DILocation(line: 536, column: 5, scope: !891)
!941 = !DILocation(line: 537, column: 41, scope: !889)
!942 = !DILocation(line: 537, column: 28, scope: !889)
!943 = !DILocation(line: 0, scope: !889)
!944 = !DILocation(line: 538, column: 28, scope: !889)
!945 = !DILocation(line: 539, column: 19, scope: !889)
!946 = !DILocation(line: 539, column: 30, scope: !889)
!947 = !DILocation(line: 539, column: 39, scope: !889)
!948 = !DILocation(line: 539, column: 57, scope: !889)
!949 = !DILocation(line: 539, column: 64, scope: !889)
!950 = !DILocation(line: 541, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !889, file: !2, line: 541, column: 10)
!952 = !DILocation(line: 540, column: 7, scope: !889)
!953 = !DILocation(line: 540, column: 27, scope: !889)
!954 = !DILocation(line: 541, column: 10, scope: !889)
!955 = !DILocation(line: 536, column: 31, scope: !890)
!956 = distinct !{!956, !940, !957, !558}
!957 = !DILocation(line: 544, column: 5, scope: !891)
!958 = !DILocation(line: 546, column: 12, scope: !877)
!959 = !DILocation(line: 547, column: 3, scope: !874)
!960 = !DILocation(line: 0, scope: !868)
!961 = !DILocation(line: 548, column: 1, scope: !858)
!962 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0", scope: !2, file: !2, line: 555, type: !963, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!88, !87, !87}
!965 = !{!966, !967, !968, !969}
!966 = !DILocalVariable(name: "lambda", arg: 1, scope: !962, file: !2, line: 555, type: !87)
!967 = !DILocalVariable(name: "eta", arg: 2, scope: !962, file: !2, line: 555, type: !87)
!968 = !DILocalVariable(name: "result", scope: !962, file: !2, line: 557, type: !90)
!969 = !DILocalVariable(name: "status", scope: !962, file: !2, line: 557, type: !38)
!970 = distinct !DIAssignID()
!971 = !DILocation(line: 0, scope: !962)
!972 = !DILocation(line: 557, column: 3, scope: !962)
!973 = !DILocation(line: 557, column: 3, scope: !974)
!974 = distinct !DILexicalBlock(scope: !962, file: !2, line: 557, column: 3)
!975 = !DILocation(line: 557, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 557, column: 3)
!977 = distinct !DILexicalBlock(scope: !974, file: !2, line: 557, column: 3)
!978 = !DILocation(line: 558, column: 1, scope: !962)
!979 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1", scope: !2, file: !2, line: 560, type: !963, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !980)
!980 = !{!981, !982, !983, !984}
!981 = !DILocalVariable(name: "lambda", arg: 1, scope: !979, file: !2, line: 560, type: !87)
!982 = !DILocalVariable(name: "eta", arg: 2, scope: !979, file: !2, line: 560, type: !87)
!983 = !DILocalVariable(name: "result", scope: !979, file: !2, line: 562, type: !90)
!984 = !DILocalVariable(name: "status", scope: !979, file: !2, line: 562, type: !38)
!985 = distinct !DIAssignID()
!986 = !DILocation(line: 0, scope: !979)
!987 = !DILocation(line: 562, column: 3, scope: !979)
!988 = !DILocation(line: 562, column: 3, scope: !989)
!989 = distinct !DILexicalBlock(scope: !979, file: !2, line: 562, column: 3)
!990 = !DILocation(line: 562, column: 3, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 562, column: 3)
!992 = distinct !DILexicalBlock(scope: !989, file: !2, line: 562, column: 3)
!993 = !DILocation(line: 563, column: 1, scope: !979)
!994 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d", scope: !2, file: !2, line: 565, type: !995, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!88, !339, !87, !87}
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "l", arg: 1, scope: !994, file: !2, line: 565, type: !339)
!999 = !DILocalVariable(name: "lambda", arg: 2, scope: !994, file: !2, line: 565, type: !87)
!1000 = !DILocalVariable(name: "eta", arg: 3, scope: !994, file: !2, line: 565, type: !87)
!1001 = !DILocalVariable(name: "result", scope: !994, file: !2, line: 567, type: !90)
!1002 = !DILocalVariable(name: "status", scope: !994, file: !2, line: 567, type: !38)
!1003 = distinct !DIAssignID()
!1004 = !DILocation(line: 0, scope: !994)
!1005 = !DILocation(line: 567, column: 3, scope: !994)
!1006 = !DILocation(line: 567, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !994, file: !2, line: 567, column: 3)
!1008 = !DILocation(line: 567, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 567, column: 3)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 567, column: 3)
!1011 = !DILocation(line: 568, column: 1, scope: !994)
!1012 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !1013, file: !1013, line: 47, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1014 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !1013, file: !1013, line: 103, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!38, !88, !88, !89, !89}
