; ModuleID = 'gamma_inc.c'
source_filename = "gamma_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"gamma_inc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_gamma_inc_P_e(a, x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_gamma_inc_Q_e(a, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_gamma_inc_e(a, x, &result)\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [38 x i8] c"gamma_inc_P_series x>>a exceeds range\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [38 x i8] c"gamma_inc_P_series failed to converge\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [23 x i8] c"error in CF for F(a,x)\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [28 x i8] c"error in large x asymptotic\00", align 1, !dbg !36

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !91 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !107, metadata !DIExpression(), metadata !122, metadata ptr %4, metadata !DIExpression()), !dbg !123
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !114, metadata !DIExpression(), metadata !124, metadata ptr %5, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !104, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double %1, metadata !105, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !106, metadata !DIExpression()), !dbg !126
  %6 = fcmp olt double %0, 0.000000e+00, !dbg !127
  %7 = fcmp olt double %1, 0.000000e+00
  %8 = or i1 %6, %7, !dbg !128
  br i1 %8, label %9, label %11, !dbg !128

9:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !129, !tbaa !132
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !129
  store double 0x7FF8000000000000, ptr %10, align 8, !dbg !129, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 1) #8, !dbg !138
  br label %69, !dbg !138

11:                                               ; preds = %3
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !140
  br i1 %12, label %13, label %15, !dbg !141

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !142, !tbaa !132
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !144
  store double 0.000000e+00, ptr %14, align 8, !dbg !145, !tbaa !137
  br label %69, !dbg !146

15:                                               ; preds = %11
  %16 = fcmp oeq double %0, 0.000000e+00, !dbg !147
  br i1 %16, label %17, label %18, !dbg !148

17:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !149
  br label %69, !dbg !151

18:                                               ; preds = %15
  %19 = fmul double %0, 5.000000e-01, !dbg !152
  %20 = fcmp ult double %19, %1, !dbg !153
  br i1 %20, label %31, label %21, !dbg !154

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !155
  %22 = call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !113, metadata !DIExpression()), !dbg !123
  %23 = load double, ptr %4, align 8, !dbg !157, !tbaa !132
  %24 = fsub double 1.000000e+00, %23, !dbg !158
  store double %24, ptr %2, align 8, !dbg !159, !tbaa !132
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !160
  %26 = load double, ptr %25, align 8, !dbg !160, !tbaa !137
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !161
  %28 = tail call double @llvm.fabs.f64(double %24), !dbg !162
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !163
  %30 = fadd double %26, %29, !dbg !164
  store double %30, ptr %27, align 8, !dbg !164, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !165
  br label %69

31:                                               ; preds = %18
  %32 = fcmp ult double %0, 1.000000e+06, !dbg !166
  br i1 %32, label %39, label %33, !dbg !167

33:                                               ; preds = %31
  %34 = fsub double %1, %0, !dbg !168
  %35 = fmul double %34, %34, !dbg !169
  %36 = fcmp olt double %35, %0, !dbg !170
  br i1 %36, label %37, label %39, !dbg !171

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr noundef %2), !dbg !172
  br label %69, !dbg !174

39:                                               ; preds = %33, %31
  %40 = fcmp olt double %0, 2.000000e-01, !dbg !175
  %41 = fcmp olt double %1, 5.000000e+00
  %42 = and i1 %40, %41, !dbg !176
  br i1 %42, label %43, label %45, !dbg !176

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !177, !range !179
  br label %69, !dbg !180

45:                                               ; preds = %39
  %46 = fcmp ugt double %0, %1, !dbg !181
  br i1 %46, label %53, label %47, !dbg !182

47:                                               ; preds = %45
  %48 = fcmp ugt double %1, 1.000000e+06, !dbg !183
  br i1 %48, label %51, label %49, !dbg !186

49:                                               ; preds = %47
  %50 = tail call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !187
  br label %69, !dbg !189

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr noundef %2), !dbg !190, !range !179
  br label %69, !dbg !192

53:                                               ; preds = %45
  %54 = tail call double @sqrt(double noundef %0) #8, !dbg !193
  %55 = fsub double %0, %54, !dbg !194
  %56 = fcmp olt double %55, %1, !dbg !195
  br i1 %56, label %57, label %59, !dbg !196

57:                                               ; preds = %53
  %58 = tail call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !197
  br label %69, !dbg !199

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !200
  %60 = call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !121, metadata !DIExpression()), !dbg !125
  %61 = load double, ptr %5, align 8, !dbg !202, !tbaa !132
  %62 = fsub double 1.000000e+00, %61, !dbg !203
  store double %62, ptr %2, align 8, !dbg !204, !tbaa !132
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !205
  %64 = load double, ptr %63, align 8, !dbg !205, !tbaa !137
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !206
  %66 = tail call double @llvm.fabs.f64(double %62), !dbg !207
  %67 = fmul double %66, 0x3CC0000000000000, !dbg !208
  %68 = fadd double %64, %67, !dbg !209
  store double %68, ptr %65, align 8, !dbg !209, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !210
  br label %69

69:                                               ; preds = %9, %13, %17, %21, %37, %43, %49, %51, %57, %59
  %70 = phi i32 [ 1, %9 ], [ 0, %13 ], [ 0, %17 ], [ %22, %21 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %52, %51 ], [ %58, %57 ], [ %60, %59 ], !dbg !211
  ret i32 %70, !dbg !212
}

declare !dbg !213 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !218 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !225, metadata !DIExpression(), metadata !239, metadata ptr %4, metadata !DIExpression()), !dbg !240
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !227, metadata !DIExpression(), metadata !241, metadata ptr %5, metadata !DIExpression()), !dbg !242
  tail call void @llvm.dbg.value(metadata double %0, metadata !220, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %1, metadata !221, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !222, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !223, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !243
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !244
  tail call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !240
  %6 = fmul double %0, 0x3FEFD70A3D70A3D7, !dbg !245
  %7 = fcmp olt double %6, %1, !dbg !246
  %8 = fcmp ogt double %0, 1.000000e+05
  %9 = and i1 %8, %7, !dbg !247
  br i1 %9, label %10, label %25, !dbg !247

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !248
  %11 = call i32 @gsl_sf_exprel_n_CF_e(double noundef %0, double noundef %1, ptr noundef nonnull %5) #8, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !230, metadata !DIExpression()), !dbg !242
  %12 = load double, ptr %4, align 8, !dbg !250, !tbaa !132
  %13 = load double, ptr %5, align 8, !dbg !251, !tbaa !132
  %14 = fmul double %12, %13, !dbg !252
  store double %14, ptr %2, align 8, !dbg !253, !tbaa !132
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !254
  %16 = load double, ptr %15, align 8, !dbg !254, !tbaa !137
  %17 = fmul double %12, %16, !dbg !255
  %18 = call double @llvm.fabs.f64(double %17), !dbg !256
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !257
  %20 = load double, ptr %19, align 8, !dbg !257, !tbaa !137
  %21 = fmul double %13, %20, !dbg !258
  %22 = call double @llvm.fabs.f64(double %21), !dbg !259
  %23 = fadd double %18, %22, !dbg !260
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !261
  store double %23, ptr %24, align 8, !dbg !262, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !263
  br label %149

25:                                               ; preds = %3
  %26 = fadd double %0, 1.000000e+04, !dbg !264
  %27 = fcmp olt double %26, %1, !dbg !266
  br i1 %27, label %28, label %29, !dbg !267

28:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 11) #8, !dbg !268
  br label %149, !dbg !268

29:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !233, metadata !DIExpression()), !dbg !271
  %30 = fcmp ogt double %1, %0, !dbg !272
  %31 = fsub double %1, %0, !dbg !273
  %32 = select i1 %30, double %31, double 0.000000e+00, !dbg !273
  %33 = fptosi double %32 to i32, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !236, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 1, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !233, metadata !DIExpression()), !dbg !271
  %34 = icmp sgt i32 %33, 1, !dbg !274
  br i1 %34, label %35, label %66, !dbg !277

35:                                               ; preds = %29
  %36 = add nsw i32 %33, -1, !dbg !277
  %37 = add nsw i32 %33, -2, !dbg !277
  %38 = and i32 %36, 3, !dbg !277
  %39 = icmp ult i32 %37, 3, !dbg !277
  br i1 %39, label %42, label %40, !dbg !277

40:                                               ; preds = %35
  %41 = and i32 %36, -4, !dbg !277
  br label %70, !dbg !277

42:                                               ; preds = %70, %35
  %43 = phi double [ undef, %35 ], [ %96, %70 ]
  %44 = phi double [ undef, %35 ], [ %97, %70 ]
  %45 = phi i32 [ 1, %35 ], [ %98, %70 ]
  %46 = phi double [ 1.000000e+00, %35 ], [ %97, %70 ]
  %47 = phi double [ 1.000000e+00, %35 ], [ %96, %70 ]
  %48 = icmp eq i32 %38, 0, !dbg !277
  br i1 %48, label %62, label %49, !dbg !277

49:                                               ; preds = %42, %49
  %50 = phi i32 [ %59, %49 ], [ %45, %42 ]
  %51 = phi double [ %58, %49 ], [ %46, %42 ]
  %52 = phi double [ %57, %49 ], [ %47, %42 ]
  %53 = phi i32 [ %60, %49 ], [ 0, %42 ]
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %51, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %52, metadata !233, metadata !DIExpression()), !dbg !271
  %54 = sitofp i32 %50 to double, !dbg !278
  %55 = fadd double %54, %0, !dbg !280
  %56 = fdiv double %1, %55, !dbg !281
  %57 = fmul double %52, %56, !dbg !282
  tail call void @llvm.dbg.value(metadata double %57, metadata !233, metadata !DIExpression()), !dbg !271
  %58 = fadd double %51, %57, !dbg !283
  tail call void @llvm.dbg.value(metadata double %58, metadata !231, metadata !DIExpression()), !dbg !271
  %59 = add nuw nsw i32 %50, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !235, metadata !DIExpression()), !dbg !271
  %60 = add i32 %53, 1, !dbg !277
  %61 = icmp eq i32 %60, %38, !dbg !277
  br i1 %61, label %62, label %49, !dbg !277, !llvm.loop !285

62:                                               ; preds = %49, %42
  %63 = phi double [ %43, %42 ], [ %57, %49 ], !dbg !282
  %64 = phi double [ %44, %42 ], [ %58, %49 ], !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %64, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %63, metadata !233, metadata !DIExpression()), !dbg !271
  %65 = icmp ult i32 %33, 10000, !dbg !287
  br i1 %65, label %66, label %116, !dbg !290

66:                                               ; preds = %29, %62
  %67 = phi i32 [ 1, %29 ], [ %33, %62 ]
  %68 = phi double [ 1.000000e+00, %29 ], [ %64, %62 ]
  %69 = phi double [ 1.000000e+00, %29 ], [ %63, %62 ]
  br label %101, !dbg !290

70:                                               ; preds = %70, %40
  %71 = phi i32 [ 1, %40 ], [ %98, %70 ]
  %72 = phi double [ 1.000000e+00, %40 ], [ %97, %70 ]
  %73 = phi double [ 1.000000e+00, %40 ], [ %96, %70 ]
  %74 = phi i32 [ 0, %40 ], [ %99, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %72, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %73, metadata !233, metadata !DIExpression()), !dbg !271
  %75 = sitofp i32 %71 to double, !dbg !278
  %76 = fadd double %75, %0, !dbg !280
  %77 = fdiv double %1, %76, !dbg !281
  %78 = fmul double %73, %77, !dbg !282
  tail call void @llvm.dbg.value(metadata double %78, metadata !233, metadata !DIExpression()), !dbg !271
  %79 = fadd double %72, %78, !dbg !283
  tail call void @llvm.dbg.value(metadata double %79, metadata !231, metadata !DIExpression()), !dbg !271
  %80 = add nuw nsw i32 %71, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %79, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %78, metadata !233, metadata !DIExpression()), !dbg !271
  %81 = sitofp i32 %80 to double, !dbg !278
  %82 = fadd double %81, %0, !dbg !280
  %83 = fdiv double %1, %82, !dbg !281
  %84 = fmul double %78, %83, !dbg !282
  tail call void @llvm.dbg.value(metadata double %84, metadata !233, metadata !DIExpression()), !dbg !271
  %85 = fadd double %79, %84, !dbg !283
  tail call void @llvm.dbg.value(metadata double %85, metadata !231, metadata !DIExpression()), !dbg !271
  %86 = add nuw nsw i32 %71, 2, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %85, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %84, metadata !233, metadata !DIExpression()), !dbg !271
  %87 = sitofp i32 %86 to double, !dbg !278
  %88 = fadd double %87, %0, !dbg !280
  %89 = fdiv double %1, %88, !dbg !281
  %90 = fmul double %84, %89, !dbg !282
  tail call void @llvm.dbg.value(metadata double %90, metadata !233, metadata !DIExpression()), !dbg !271
  %91 = fadd double %85, %90, !dbg !283
  tail call void @llvm.dbg.value(metadata double %91, metadata !231, metadata !DIExpression()), !dbg !271
  %92 = add nuw nsw i32 %71, 3, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %92, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %91, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %90, metadata !233, metadata !DIExpression()), !dbg !271
  %93 = sitofp i32 %92 to double, !dbg !278
  %94 = fadd double %93, %0, !dbg !280
  %95 = fdiv double %1, %94, !dbg !281
  %96 = fmul double %90, %95, !dbg !282
  tail call void @llvm.dbg.value(metadata double %96, metadata !233, metadata !DIExpression()), !dbg !271
  %97 = fadd double %91, %96, !dbg !283
  tail call void @llvm.dbg.value(metadata double %97, metadata !231, metadata !DIExpression()), !dbg !271
  %98 = add nuw nsw i32 %71, 4, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !235, metadata !DIExpression()), !dbg !271
  %99 = add i32 %74, 4, !dbg !277
  %100 = icmp eq i32 %99, %41, !dbg !277
  br i1 %100, label %42, label %70, !dbg !277, !llvm.loop !291

101:                                              ; preds = %66, %113
  %102 = phi i32 [ %114, %113 ], [ %67, %66 ]
  %103 = phi double [ %109, %113 ], [ %68, %66 ]
  %104 = phi double [ %108, %113 ], [ %69, %66 ]
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %103, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %104, metadata !233, metadata !DIExpression()), !dbg !271
  %105 = sitofp i32 %102 to double, !dbg !294
  %106 = fadd double %105, %0, !dbg !296
  %107 = fdiv double %1, %106, !dbg !297
  %108 = fmul double %104, %107, !dbg !298
  tail call void @llvm.dbg.value(metadata double %108, metadata !233, metadata !DIExpression()), !dbg !271
  %109 = fadd double %103, %108, !dbg !299
  tail call void @llvm.dbg.value(metadata double %109, metadata !231, metadata !DIExpression()), !dbg !271
  %110 = fdiv double %108, %109, !dbg !300
  %111 = tail call double @llvm.fabs.f64(double %110), !dbg !302
  %112 = fcmp olt double %111, 0x3CB0000000000000, !dbg !303
  br i1 %112, label %116, label %113, !dbg !304

113:                                              ; preds = %101
  %114 = add nuw i32 %102, 1, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !235, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %109, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %108, metadata !233, metadata !DIExpression()), !dbg !271
  %115 = icmp eq i32 %114, 10000, !dbg !287
  br i1 %115, label %116, label %101, !dbg !290, !llvm.loop !306

116:                                              ; preds = %113, %101, %62
  %117 = phi i32 [ %33, %62 ], [ %102, %101 ], [ 10000, %113 ], !dbg !271
  %118 = phi double [ %63, %62 ], [ %108, %101 ], [ %108, %113 ], !dbg !271
  %119 = phi double [ %64, %62 ], [ %109, %101 ], [ %109, %113 ], !dbg !271
  tail call void @llvm.dbg.value(metadata double %119, metadata !231, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double %118, metadata !233, metadata !DIExpression()), !dbg !271
  %120 = sitofp i32 %117 to double, !dbg !308
  %121 = fadd double %120, %0, !dbg !309
  %122 = fdiv double %1, %121, !dbg !310
  %123 = fmul double %122, %118, !dbg !311
  tail call void @llvm.dbg.value(metadata double %123, metadata !237, metadata !DIExpression()), !dbg !312
  %124 = fadd double %121, 1.000000e+00, !dbg !313
  %125 = fdiv double %1, %124, !dbg !314
  %126 = fsub double 1.000000e+00, %125, !dbg !315
  %127 = fdiv double %123, %126, !dbg !316
  tail call void @llvm.dbg.value(metadata double %127, metadata !234, metadata !DIExpression()), !dbg !271
  %128 = load double, ptr %4, align 8, !dbg !317, !tbaa !132
  %129 = fmul double %119, %128, !dbg !318
  store double %129, ptr %2, align 8, !dbg !319, !tbaa !132
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !320
  %131 = load double, ptr %130, align 8, !dbg !320, !tbaa !137
  %132 = tail call double @llvm.fabs.f64(double %119), !dbg !321
  %133 = fmul double %132, %131, !dbg !322
  %134 = fmul double %128, %127, !dbg !323
  %135 = tail call double @llvm.fabs.f64(double %134), !dbg !324
  %136 = fadd double %135, %133, !dbg !325
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !326
  %138 = fadd double %120, 1.000000e+00, !dbg !327
  %139 = fmul double %138, 0x3CB0000000000000, !dbg !328
  %140 = tail call double @llvm.fabs.f64(double %129), !dbg !329
  %141 = fmul double %139, %140, !dbg !330
  %142 = fadd double %141, %136, !dbg !331
  store double %142, ptr %137, align 8, !dbg !331, !tbaa !137
  %143 = icmp eq i32 %117, 10000, !dbg !332
  br i1 %143, label %144, label %149, !dbg !334

144:                                              ; preds = %116
  %145 = fdiv double %127, %119, !dbg !335
  %146 = tail call double @llvm.fabs.f64(double %145), !dbg !336
  %147 = fcmp ogt double %146, 0x3E50000000000000, !dbg !337
  br i1 %147, label %148, label %149, !dbg !338

148:                                              ; preds = %144
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 146, i32 noundef 11) #8, !dbg !339
  br label %149, !dbg !339

149:                                              ; preds = %148, %144, %116, %28, %10
  %150 = phi i32 [ %11, %10 ], [ 11, %28 ], [ 11, %148 ], [ 0, %144 ], [ 0, %116 ], !dbg !240
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !341
  ret i32 %150, !dbg !341
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !342 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !360
  call void @llvm.dbg.assign(metadata i1 undef, metadata !349, metadata !DIExpression(), metadata !360, metadata ptr %4, metadata !DIExpression()), !dbg !361
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !362
  call void @llvm.dbg.assign(metadata i1 undef, metadata !352, metadata !DIExpression(), metadata !362, metadata ptr %5, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %0, metadata !344, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %1, metadata !345, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !361
  %6 = tail call double @sqrt(double noundef %0) #8, !dbg !363
  tail call void @llvm.dbg.value(metadata double %6, metadata !347, metadata !DIExpression()), !dbg !361
  %7 = fsub double %1, %0, !dbg !364
  %8 = fdiv double %7, %0, !dbg !365
  tail call void @llvm.dbg.value(metadata double %8, metadata !348, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !366
  %9 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %8, ptr noundef nonnull %4) #8, !dbg !367
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !350, metadata !DIExpression()), !dbg !361
  %10 = fcmp oge double %8, 0.000000e+00, !dbg !368
  %11 = load double, ptr %4, align 8, !dbg !369, !tbaa !132
  %12 = fmul double %11, -2.000000e+00, !dbg !370
  %13 = call double @sqrt(double noundef %12) #8, !dbg !371
  %14 = fneg double %13, !dbg !372
  %15 = select i1 %10, double %13, double %14, !dbg !372
  tail call void @llvm.dbg.value(metadata double %15, metadata !351, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !373
  %16 = fmul double %6, %15, !dbg !374
  %17 = fdiv double %16, 0x3FF6A09E667F3BCD, !dbg !375
  %18 = call i32 @gsl_sf_erfc_e(double noundef %17, ptr noundef nonnull %5) #8, !dbg !376
  %19 = call double @llvm.fabs.f64(double %8), !dbg !377
  %20 = fcmp olt double %19, 0x3F48406003B2AE5A, !dbg !378
  br i1 %20, label %21, label %33, !dbg !379

21:                                               ; preds = %3
  %22 = fmul double %8, 5.890000e+02, !dbg !380
  %23 = fdiv double %22, 3.024000e+04, !dbg !382
  %24 = fsub double 0x3F9BE4300A1D1398, %23, !dbg !383
  %25 = fmul double %8, %24, !dbg !384
  %26 = fsub double 0x3FA5CEB240795CEB, %25, !dbg !385
  %27 = fmul double %8, %26, !dbg !386
  %28 = fsub double 0x3FB5555555555555, %27, !dbg !387
  %29 = fmul double %8, %28, !dbg !388
  %30 = fadd double %29, 0xBFD5555555555555, !dbg !389
  tail call void @llvm.dbg.value(metadata double %30, metadata !354, metadata !DIExpression()), !dbg !361
  %31 = fdiv double %8, 2.880000e+02, !dbg !390
  %32 = fsub double 0xBF5E573AC901E574, %31, !dbg !391
  tail call void @llvm.dbg.value(metadata double %32, metadata !355, metadata !DIExpression()), !dbg !361
  br label %62, !dbg !392

33:                                               ; preds = %3
  %34 = load double, ptr %4, align 8, !dbg !393, !tbaa !132
  %35 = fmul double %34, -2.000000e+00, !dbg !394
  %36 = fmul double %8, %8, !dbg !395
  %37 = fdiv double %35, %36, !dbg !396
  %38 = call double @sqrt(double noundef %37) #8, !dbg !397
  tail call void @llvm.dbg.value(metadata double %38, metadata !356, metadata !DIExpression()), !dbg !398
  %39 = fdiv double %1, %0, !dbg !399
  tail call void @llvm.dbg.value(metadata double %39, metadata !359, metadata !DIExpression()), !dbg !398
  %40 = fdiv double 1.000000e+00, %38, !dbg !400
  %41 = fsub double 1.000000e+00, %40, !dbg !401
  %42 = fdiv double %41, %8, !dbg !402
  tail call void @llvm.dbg.value(metadata double %42, metadata !354, metadata !DIExpression()), !dbg !361
  %43 = fmul double %15, %15, !dbg !403
  %44 = fmul double %15, %43, !dbg !404
  %45 = fmul double %39, %39, !dbg !405
  %46 = fmul double %39, 1.000000e+01, !dbg !406
  %47 = fadd double %45, %46, !dbg !407
  %48 = fadd double %47, 1.000000e+00, !dbg !408
  %49 = fmul double %48, %44, !dbg !409
  %50 = fmul double %8, 1.200000e+01, !dbg !410
  %51 = fmul double %8, %50, !dbg !411
  %52 = fmul double %8, %51, !dbg !412
  %53 = fsub double %49, %52, !dbg !413
  %54 = fneg double %53, !dbg !414
  %55 = fmul double %15, 1.200000e+01, !dbg !415
  %56 = fmul double %15, %55, !dbg !416
  %57 = fmul double %15, %56, !dbg !417
  %58 = fmul double %8, %57, !dbg !418
  %59 = fmul double %8, %58, !dbg !419
  %60 = fmul double %8, %59, !dbg !420
  %61 = fdiv double %54, %60, !dbg !421
  tail call void @llvm.dbg.value(metadata double %61, metadata !355, metadata !DIExpression()), !dbg !361
  br label %62

62:                                               ; preds = %33, %21
  %63 = phi double [ %32, %21 ], [ %61, %33 ], !dbg !422
  %64 = phi double [ %30, %21 ], [ %42, %33 ], !dbg !422
  tail call void @llvm.dbg.value(metadata double %64, metadata !354, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata double %63, metadata !355, metadata !DIExpression()), !dbg !361
  %65 = fmul double %0, -5.000000e-01, !dbg !423
  %66 = fmul double %65, %15, !dbg !424
  %67 = fmul double %15, %66, !dbg !425
  %68 = call double @exp(double noundef %67) #8, !dbg !426
  %69 = fmul double %6, 0x40040D931FF62706, !dbg !427
  %70 = fdiv double %68, %69, !dbg !428
  %71 = fdiv double %63, %0, !dbg !429
  %72 = fadd double %64, %71, !dbg !430
  %73 = fmul double %72, %70, !dbg !431
  tail call void @llvm.dbg.value(metadata double %73, metadata !353, metadata !DIExpression()), !dbg !361
  %74 = load double, ptr %5, align 8, !dbg !432, !tbaa !132
  %75 = fmul double %74, 5.000000e-01, !dbg !433
  %76 = fadd double %75, %73, !dbg !434
  store double %76, ptr %2, align 8, !dbg !435, !tbaa !132
  %77 = fmul double %73, 5.000000e-01, !dbg !436
  %78 = fmul double %77, %0, !dbg !437
  %79 = fmul double %15, %78, !dbg !438
  %80 = fmul double %15, %79, !dbg !439
  %81 = call double @llvm.fabs.f64(double %80), !dbg !440
  %82 = fmul double %81, 0x3CB0000000000000, !dbg !441
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !442
  %84 = load double, ptr %83, align 8, !dbg !442, !tbaa !137
  %85 = fmul double %84, 5.000000e-01, !dbg !443
  %86 = fadd double %85, %82, !dbg !444
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !445
  %88 = call double @llvm.fabs.f64(double %76), !dbg !446
  %89 = fmul double %88, 0x3CC0000000000000, !dbg !447
  %90 = fadd double %89, %86, !dbg !448
  store double %90, ptr %87, align 8, !dbg !448, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !449
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !449
  ret i32 %9, !dbg !450
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !451 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !453, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata double %1, metadata !454, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !455, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata double 0xC0033BA004F00621, metadata !460, metadata !DIExpression()), !dbg !479
  %4 = tail call double @log(double noundef %1) #8, !dbg !480
  tail call void @llvm.dbg.value(metadata double %4, metadata !462, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !463, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !464, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !465, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !466, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !467, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !468, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !469, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !470, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !471, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !472, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !473, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double poison, metadata !456, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !474, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !476, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !457, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata i32 1, metadata !477, metadata !DIExpression()), !dbg !481
  %5 = fneg double %1, !dbg !482
  tail call void @llvm.dbg.value(metadata i32 1, metadata !477, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !476, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !457, metadata !DIExpression()), !dbg !478
  %6 = fadd double %0, 1.000000e+00
  br label %7, !dbg !486

7:                                                ; preds = %3, %23
  %8 = phi i32 [ 1, %3 ], [ %24, %23 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %14, %23 ]
  %10 = phi double [ 1.000000e+00, %3 ], [ %19, %23 ]
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !477, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %9, metadata !476, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %10, metadata !457, metadata !DIExpression()), !dbg !478
  %11 = sitofp i32 %8 to double, !dbg !487
  %12 = fadd double %11, 1.000000e+00, !dbg !488
  %13 = fdiv double %5, %12, !dbg !489
  %14 = fmul double %9, %13, !dbg !490
  tail call void @llvm.dbg.value(metadata double %14, metadata !476, metadata !DIExpression()), !dbg !481
  %15 = fadd double %11, %0, !dbg !491
  %16 = fadd double %15, 1.000000e+00, !dbg !492
  %17 = fdiv double %6, %16, !dbg !493
  %18 = fmul double %17, %14, !dbg !494
  %19 = fadd double %10, %18, !dbg !495
  tail call void @llvm.dbg.value(metadata double %19, metadata !457, metadata !DIExpression()), !dbg !478
  %20 = fdiv double %14, %19, !dbg !496
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !498
  %22 = fcmp olt double %21, 0x3CB0000000000000, !dbg !499
  br i1 %22, label %26, label %23, !dbg !500

23:                                               ; preds = %7
  %24 = add i32 %8, 1, !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !477, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %14, metadata !476, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %19, metadata !457, metadata !DIExpression()), !dbg !478
  %25 = icmp eq i32 %24, 5000, !dbg !502
  br i1 %25, label %29, label %7, !dbg !486, !llvm.loop !503

26:                                               ; preds = %7
  tail call void @llvm.dbg.value(metadata double %19, metadata !457, metadata !DIExpression()), !dbg !478
  %27 = icmp eq i32 %8, 5000, !dbg !505
  %28 = select i1 %27, i32 11, i32 0
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi i32 [ %28, %26 ], [ 11, %23 ]
  %31 = fadd double %4, 0x3FE2788CFC6FB619, !dbg !507
  tail call void @llvm.dbg.value(metadata double %31, metadata !463, metadata !DIExpression()), !dbg !479
  %32 = fmul double %31, 5.000000e-01, !dbg !508
  %33 = fmul double %31, %32, !dbg !509
  %34 = fsub double 0x3FEA51A6625307D3, %33, !dbg !510
  tail call void @llvm.dbg.value(metadata double %34, metadata !465, metadata !DIExpression()), !dbg !479
  %35 = fmul double %31, %31, !dbg !511
  %36 = fdiv double %35, 6.000000e+00, !dbg !512
  %37 = fsub double 0x3FEA51A6625307D3, %36, !dbg !513
  %38 = fmul double %31, %37, !dbg !514
  %39 = fadd double %38, 0xBFD9A4D55BEAB2D7, !dbg !515
  tail call void @llvm.dbg.value(metadata double %39, metadata !466, metadata !DIExpression()), !dbg !479
  %40 = fadd double %4, 0xBFFC21C3E15D140A, !dbg !516
  %41 = fmul double %40, 0x3FA5555555555555, !dbg !517
  %42 = fadd double %4, 0xBFE876331663917C, !dbg !518
  %43 = fmul double %42, %41, !dbg !519
  %44 = fadd double %4, 0x3FE72AD94DC1FEC8, !dbg !520
  %45 = fmul double %44, %43, !dbg !521
  %46 = fadd double %4, 0x40106E22AFA35265, !dbg !522
  %47 = fmul double %46, %45, !dbg !523
  tail call void @llvm.dbg.value(metadata double %47, metadata !467, metadata !DIExpression()), !dbg !479
  %48 = fadd double %4, 0xC000866B191B1B87, !dbg !524
  %49 = fmul double %48, 0x3F81111111111111, !dbg !525
  %50 = fadd double %4, 0xBFF48DB7921405AE, !dbg !526
  %51 = fmul double %50, %49, !dbg !527
  %52 = fadd double %4, 0xBFD1A74957F47DB1, !dbg !528
  %53 = fmul double %52, %51, !dbg !529
  %54 = fadd double %4, 0x3FF5636CD550B41A, !dbg !530
  %55 = fmul double %54, %53, !dbg !531
  %56 = fadd double %4, 0x4014B394EF037BD3, !dbg !532
  %57 = fmul double %56, %55, !dbg !533
  tail call void @llvm.dbg.value(metadata double %57, metadata !468, metadata !DIExpression()), !dbg !479
  %58 = fadd double %4, 0xC0027713DE49B2E2, !dbg !534
  %59 = fmul double %58, 0x3F56C16C16C16C17, !dbg !535
  %60 = fadd double %4, 0xBFFA89133370E8F3, !dbg !536
  %61 = fmul double %60, %59, !dbg !537
  %62 = fadd double %4, 0xBFEC67E19E67A72A, !dbg !538
  %63 = fmul double %62, %61, !dbg !539
  %64 = fadd double %4, 0x3FC5D0ED937362B0, !dbg !540
  %65 = fmul double %64, %63, !dbg !541
  %66 = fadd double %4, 0x3FFEBDE3AB85424E, !dbg !542
  %67 = fmul double %66, %65, !dbg !543
  %68 = fadd double %4, 0x4018E73455A4E57C, !dbg !544
  %69 = fmul double %68, %67, !dbg !545
  tail call void @llvm.dbg.value(metadata double %69, metadata !469, metadata !DIExpression()), !dbg !479
  %70 = fadd double %4, 0xC004101BF07AE56F, !dbg !546
  %71 = fmul double %70, 0x3F2A01A01A01A01A, !dbg !547
  %72 = fadd double %4, 0xBFFF2A8ECC402949, !dbg !548
  %73 = fmul double %72, %71, !dbg !549
  %74 = fadd double %4, 0xBFF51C9AF95AA8B4, !dbg !550
  %75 = fmul double %74, %73, !dbg !551
  %76 = fadd double %4, 0xBFE0E675A577048F, !dbg !552
  %77 = fmul double %76, %75, !dbg !553
  %78 = fadd double %4, 0x3FE2EC9D13B75038, !dbg !554
  %79 = fmul double %78, %77, !dbg !555
  %80 = fadd double %4, 0x4003E6C5CD1B1472, !dbg !556
  %81 = fmul double %80, %79, !dbg !557
  %82 = fadd double %4, 0x401D0F2BF23052DE, !dbg !558
  %83 = fmul double %82, %81, !dbg !559
  tail call void @llvm.dbg.value(metadata double %83, metadata !470, metadata !DIExpression()), !dbg !479
  %84 = fadd double %4, 0xC0056B320B3ED28A, !dbg !560
  %85 = fmul double %84, 0x3EFA01A01A01A01A, !dbg !561
  %86 = fadd double %4, 0xC001766553058D6B, !dbg !562
  %87 = fmul double %86, %85, !dbg !563
  %88 = fadd double %4, 0xBFFA63BD2F3BA53B, !dbg !564
  %89 = fmul double %88, %87, !dbg !565
  %90 = fadd double %4, 0xBFF039BFEC7504C8, !dbg !566
  %91 = fmul double %90, %89, !dbg !567
  %92 = fadd double %4, 0xBFC87EB65F6D0FB5, !dbg !568
  %93 = fmul double %92, %91, !dbg !569
  %94 = fadd double %4, 0x3FEFDA591B88C85D, !dbg !570
  %95 = fmul double %94, %93, !dbg !571
  %96 = fadd double %4, 0x400854A14D3A92E3, !dbg !572
  %97 = fmul double %96, %95, !dbg !573
  %98 = fadd double %4, 0x40209788EDB58B77, !dbg !574
  %99 = fmul double %98, %97, !dbg !575
  tail call void @llvm.dbg.value(metadata double %99, metadata !471, metadata !DIExpression()), !dbg !479
  %100 = fadd double %4, 0xC00698442A97B713, !dbg !576
  %101 = fmul double %100, 0xBEC71DE3A556C736, !dbg !577
  %102 = fadd double %4, 0xC00309EE7FC808CD, !dbg !578
  %103 = fmul double %102, %101, !dbg !579
  %104 = fadd double %4, 0xBFFEA13FC987F9E0, !dbg !580
  %105 = fmul double %104, %103, !dbg !581
  %106 = fadd double %4, 0xBFF61A6E5DEAB171, !dbg !582
  %107 = fmul double %106, %105, !dbg !583
  %108 = fadd double %4, 0xBFE757804515FA20, !dbg !584
  %109 = fmul double %108, %107, !dbg !585
  %110 = fadd double %4, 0x3FC0A0D2B041D753, !dbg !586
  %111 = fmul double %110, %109, !dbg !587
  %112 = fadd double %4, 0x3FF632846DC55ECC, !dbg !588
  %113 = fmul double %112, %111, !dbg !589
  %114 = fadd double %4, 0x400CAF910DB83AA2, !dbg !590
  %115 = fmul double %114, %113, !dbg !591
  %116 = fadd double %4, 0x4022A491A5EEB992, !dbg !592
  %117 = fmul double %116, %115, !dbg !593
  tail call void @llvm.dbg.value(metadata double %117, metadata !472, metadata !DIExpression()), !dbg !479
  %118 = fadd double %4, 0xC007A1DC08ED251E, !dbg !594
  %119 = fmul double %118, 0x3E927E4FB7789F5E, !dbg !595
  %120 = fadd double %4, 0xC00464A1C74169AE, !dbg !596
  %121 = fmul double %120, %119, !dbg !597
  %122 = fadd double %4, 0xC0011420A97C81AC, !dbg !598
  %123 = fmul double %122, %121, !dbg !599
  %124 = fadd double %4, 0xBFFAC979781A4EB6, !dbg !600
  %125 = fmul double %124, %123, !dbg !601
  %126 = fadd double %4, 0xBFF21F1BE4FBA88A, !dbg !602
  %127 = fmul double %126, %125, !dbg !603
  %128 = fadd double %4, 0xBFDD605011CC3E9E, !dbg !604
  %129 = fmul double %128, %127, !dbg !605
  %130 = fadd double %4, 0x3FDC27E6621D6A75, !dbg !606
  %131 = fmul double %130, %129, !dbg !607
  %132 = fadd double %4, 0x3FFC52D6092EFE4D, !dbg !608
  %133 = fmul double %132, %131, !dbg !609
  %134 = fadd double %4, 0x40107E1C0EA50F2C, !dbg !610
  %135 = fmul double %134, %133, !dbg !611
  %136 = fadd double %4, 0x4024AF6CECD86415, !dbg !612
  %137 = fmul double %136, %135, !dbg !613
  tail call void @llvm.dbg.value(metadata double %137, metadata !473, metadata !DIExpression()), !dbg !479
  %138 = fmul double %137, %0, !dbg !614
  %139 = fsub double %117, %138, !dbg !615
  %140 = fmul double %139, %0, !dbg !616
  %141 = fsub double %140, %99, !dbg !617
  %142 = fmul double %141, %0, !dbg !618
  %143 = fsub double %142, %83, !dbg !619
  %144 = fmul double %143, %0, !dbg !620
  %145 = fsub double %144, %69, !dbg !621
  %146 = fmul double %145, %0, !dbg !622
  %147 = fsub double %146, %57, !dbg !623
  %148 = fmul double %147, %0, !dbg !624
  %149 = fsub double %148, %47, !dbg !625
  %150 = fmul double %149, %0, !dbg !626
  %151 = fadd double %39, %150, !dbg !627
  %152 = fmul double %151, %0, !dbg !628
  %153 = fadd double %34, %152, !dbg !629
  %154 = fmul double %153, %0, !dbg !630
  %155 = fsub double %154, %31, !dbg !631
  %156 = fmul double %155, %0, !dbg !632
  tail call void @llvm.dbg.value(metadata double %156, metadata !456, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !458, metadata !DIExpression()), !dbg !478
  %157 = fsub double 1.000000e+00, %156, !dbg !633
  %158 = fmul double %157, %0, !dbg !634
  %159 = fdiv double %158, %6, !dbg !635
  %160 = fmul double %159, %1, !dbg !636
  %161 = fmul double %160, %19, !dbg !637
  tail call void @llvm.dbg.value(metadata double %161, metadata !459, metadata !DIExpression()), !dbg !478
  %162 = fadd double %156, %161, !dbg !638
  store double %162, ptr %2, align 8, !dbg !639, !tbaa !132
  %163 = tail call double @llvm.fabs.f64(double %156), !dbg !640
  %164 = tail call double @llvm.fabs.f64(double %161), !dbg !641
  %165 = fmul double %164, 2.000000e+00, !dbg !642
  %166 = fadd double %163, %165, !dbg !643
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !644
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !645
  %169 = tail call double @llvm.fabs.f64(double %162), !dbg !646
  %170 = fmul double %169, 0x3CC0000000000000, !dbg !647
  %171 = fadd double %170, %167, !dbg !648
  store double %171, ptr %168, align 8, !dbg !648, !tbaa !137
  ret i32 %30, !dbg !649
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !650 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !655, metadata !DIExpression(), metadata !659, metadata ptr %4, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %0, metadata !652, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %1, metadata !653, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !654, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !661
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata double %0, metadata !663, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %1, metadata !666, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata ptr undef, metadata !667, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32 5000, metadata !668, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double 0x3630000000000000, metadata !669, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !670, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double 0x49B0000000000000, metadata !671, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !672, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32 2, metadata !673, metadata !DIExpression()), !dbg !679
  br label %5, !dbg !681

5:                                                ; preds = %39, %3
  %6 = phi i32 [ 2, %3 ], [ %40, %39 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %33, %39 ]
  %8 = phi double [ 0x49B0000000000000, %3 ], [ %32, %39 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %35, %39 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !673, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %7, metadata !672, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %8, metadata !671, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %9, metadata !670, metadata !DIExpression()), !dbg !679
  %10 = and i32 %6, 1, !dbg !682
  %11 = icmp eq i32 %10, 0, !dbg !682
  call void @llvm.dbg.value(metadata double poison, metadata !674, metadata !DIExpression()), !dbg !684
  br i1 %11, label %16, label %12, !dbg !685

12:                                               ; preds = %5
  %13 = add nsw i32 %6, -1, !dbg !686
  %14 = sitofp i32 %13 to double, !dbg !687
  %15 = fmul double %14, 5.000000e-01, !dbg !688
  br label %20, !dbg !689

16:                                               ; preds = %5
  %17 = sitofp i32 %6 to double, !dbg !690
  %18 = fmul double %17, 5.000000e-01, !dbg !691
  %19 = fsub double %18, %0, !dbg !692
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi double [ %15, %12 ], [ %19, %16 ]
  %22 = fdiv double %21, %1, !dbg !693
  call void @llvm.dbg.value(metadata double %22, metadata !674, metadata !DIExpression()), !dbg !684
  %23 = fmul double %7, %22, !dbg !694
  %24 = fadd double %23, 1.000000e+00, !dbg !695
  call void @llvm.dbg.value(metadata double %24, metadata !672, metadata !DIExpression()), !dbg !679
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !696
  %26 = fcmp olt double %25, 0x3630000000000000, !dbg !698
  %27 = fdiv double 1.000000e+00, %24, !dbg !699
  call void @llvm.dbg.value(metadata double poison, metadata !672, metadata !DIExpression()), !dbg !679
  %28 = fdiv double %22, %8, !dbg !700
  %29 = fadd double %28, 1.000000e+00, !dbg !701
  call void @llvm.dbg.value(metadata double %29, metadata !671, metadata !DIExpression()), !dbg !679
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !702
  %31 = fcmp olt double %30, 0x3630000000000000, !dbg !704
  %32 = select i1 %31, double 0x3630000000000000, double %29, !dbg !705
  call void @llvm.dbg.value(metadata double %32, metadata !671, metadata !DIExpression()), !dbg !679
  %33 = select i1 %26, double 0x49B0000000000000, double %27, !dbg !699
  call void @llvm.dbg.value(metadata double %33, metadata !672, metadata !DIExpression()), !dbg !679
  %34 = fmul double %32, %33, !dbg !706
  call void @llvm.dbg.value(metadata double %34, metadata !678, metadata !DIExpression()), !dbg !684
  %35 = fmul double %9, %34, !dbg !707
  call void @llvm.dbg.value(metadata double %35, metadata !670, metadata !DIExpression()), !dbg !679
  %36 = fadd double %34, -1.000000e+00, !dbg !708
  %37 = tail call double @llvm.fabs.f64(double %36), !dbg !710
  %38 = fcmp olt double %37, 0x3CB0000000000000, !dbg !711
  br i1 %38, label %42, label %39

39:                                               ; preds = %20
  %40 = add nuw nsw i32 %6, 1, !dbg !712
  call void @llvm.dbg.value(metadata i32 %40, metadata !673, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %33, metadata !672, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %32, metadata !671, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata double %35, metadata !670, metadata !DIExpression()), !dbg !679
  %41 = icmp eq i32 %40, 5000, !dbg !713
  br i1 %41, label %44, label %5, !dbg !681, !llvm.loop !714

42:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %35, metadata !670, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata double %35, metadata !656, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !660
  tail call void @llvm.dbg.value(metadata double poison, metadata !656, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !660
  %43 = icmp eq i32 %6, 5000, !dbg !716
  br i1 %43, label %44, label %45, !dbg !718

44:                                               ; preds = %39, %42
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 286, i32 noundef 11) #8, !dbg !719
  br label %45, !dbg !719

45:                                               ; preds = %42, %44
  %46 = phi i32 [ 5000, %44 ], [ %6, %42 ]
  %47 = phi i32 [ 11, %44 ], [ 0, %42 ], !dbg !721
  %48 = tail call double @llvm.fabs.f64(double %35), !dbg !722
  %49 = fmul double %48, 0x3CC0000000000000, !dbg !723
  %50 = sitofp i32 %46 to double, !dbg !724
  %51 = fmul double %50, 5.000000e-01, !dbg !725
  %52 = fadd double %51, 2.000000e+00, !dbg !726
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !727
  %54 = fmul double %48, %53, !dbg !728
  %55 = fadd double %49, %54, !dbg !729
  tail call void @llvm.dbg.value(metadata double %55, metadata !656, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !658, metadata !DIExpression()), !dbg !660
  %56 = load double, ptr %4, align 8, !dbg !730, !tbaa !132
  %57 = fdiv double %0, %1, !dbg !731
  %58 = fmul double %57, %56, !dbg !732
  %59 = fmul double %35, %58, !dbg !733
  store double %59, ptr %2, align 8, !dbg !734, !tbaa !132
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !735
  %61 = load double, ptr %60, align 8, !dbg !735, !tbaa !137
  %62 = fmul double %57, %35, !dbg !736
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !737
  %64 = fmul double %63, %61, !dbg !738
  %65 = fmul double %56, %0, !dbg !739
  %66 = fdiv double %65, %1, !dbg !740
  %67 = fmul double %55, %66, !dbg !741
  %68 = tail call double @llvm.fabs.f64(double %67), !dbg !742
  %69 = fadd double %64, %68, !dbg !743
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !744
  store double %69, ptr %70, align 8, !dbg !745, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !746
  ret i32 %47, !dbg !747
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !748 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !760
  call void @llvm.dbg.assign(metadata i1 undef, metadata !754, metadata !DIExpression(), metadata !760, metadata ptr %4, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %0, metadata !750, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %1, metadata !751, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !752, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !753, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !762
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 0, metadata !755, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !756, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !757, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !758, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 1, metadata !759, metadata !DIExpression()), !dbg !761
  br label %5, !dbg !764

5:                                                ; preds = %3, %20
  %6 = phi i32 [ 1, %3 ], [ %22, %20 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %12, %20 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %21, %20 ]
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !759, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %7, metadata !758, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %8, metadata !756, metadata !DIExpression()), !dbg !761
  %9 = sitofp i32 %6 to double, !dbg !766
  %10 = fsub double %0, %9, !dbg !769
  %11 = fdiv double %10, %1, !dbg !770
  %12 = fmul double %7, %11, !dbg !771
  tail call void @llvm.dbg.value(metadata double %12, metadata !757, metadata !DIExpression()), !dbg !761
  %13 = fdiv double %12, %7, !dbg !772
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !774
  %15 = fcmp ogt double %14, 1.000000e+00, !dbg !775
  br i1 %15, label %24, label %16, !dbg !776

16:                                               ; preds = %5
  %17 = fdiv double %12, %8, !dbg !777
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !779
  %19 = fcmp olt double %18, 0x3CB0000000000000, !dbg !780
  br i1 %19, label %24, label %20, !dbg !781

20:                                               ; preds = %16
  %21 = fadd double %8, %12, !dbg !782
  tail call void @llvm.dbg.value(metadata double %21, metadata !756, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %12, metadata !758, metadata !DIExpression()), !dbg !761
  %22 = add nuw nsw i32 %6, 1, !dbg !783
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !759, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double %12, metadata !757, metadata !DIExpression()), !dbg !761
  %23 = icmp eq i32 %22, 5000, !dbg !784
  br i1 %23, label %24, label %5, !dbg !764, !llvm.loop !785

24:                                               ; preds = %16, %5, %20
  %25 = phi double [ %8, %16 ], [ %8, %5 ], [ %21, %20 ], !dbg !761
  %26 = phi i32 [ %6, %16 ], [ %6, %5 ], [ 5000, %20 ], !dbg !787
  %27 = load double, ptr %4, align 8, !dbg !788, !tbaa !132
  %28 = fdiv double %0, %1, !dbg !789
  %29 = fmul double %28, %27, !dbg !790
  %30 = fmul double %25, %29, !dbg !791
  store double %30, ptr %2, align 8, !dbg !792, !tbaa !132
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !793
  %32 = load double, ptr %31, align 8, !dbg !793, !tbaa !137
  %33 = fmul double %28, %25, !dbg !794
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !795
  %35 = fmul double %34, %32, !dbg !796
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !797
  %37 = tail call double @llvm.fabs.f64(double %30), !dbg !798
  %38 = fmul double %37, 0x3CC0000000000000, !dbg !799
  %39 = fadd double %35, %38, !dbg !800
  store double %39, ptr %36, align 8, !dbg !800, !tbaa !137
  %40 = icmp eq i32 %26, 5000, !dbg !801
  br i1 %40, label %41, label %42, !dbg !803

41:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 11) #8, !dbg !804
  br label %42, !dbg !804

42:                                               ; preds = %24, %41
  %43 = phi i32 [ 11, %41 ], [ 0, %24 ], !dbg !806
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !807
  ret i32 %43, !dbg !807
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !808 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_inc_P_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !812 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !833
  call void @llvm.dbg.assign(metadata i1 undef, metadata !817, metadata !DIExpression(), metadata !833, metadata ptr %4, metadata !DIExpression()), !dbg !834
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !824, metadata !DIExpression(), metadata !835, metadata ptr %5, metadata !DIExpression()), !dbg !836
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !828, metadata !DIExpression(), metadata !837, metadata ptr %6, metadata !DIExpression()), !dbg !838
  tail call void @llvm.dbg.value(metadata double %0, metadata !814, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata double %1, metadata !815, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !816, metadata !DIExpression()), !dbg !839
  %7 = fcmp ole double %0, 0.000000e+00, !dbg !840
  %8 = fcmp olt double %1, 0.000000e+00
  %9 = or i1 %7, %8, !dbg !841
  br i1 %9, label %10, label %12, !dbg !841

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !842, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !842
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !842, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 1) #8, !dbg !845
  br label %73, !dbg !845

12:                                               ; preds = %3
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !847
  br i1 %13, label %14, label %15, !dbg !848

14:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !849
  br label %73, !dbg !851

15:                                               ; preds = %12
  %16 = fcmp olt double %1, 2.000000e+01, !dbg !852
  %17 = fmul double %0, 5.000000e-01
  %18 = fcmp ogt double %17, %1
  %19 = or i1 %16, %18, !dbg !853
  br i1 %19, label %20, label %22, !dbg !853

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !854
  br label %73, !dbg !856

22:                                               ; preds = %15
  %23 = fcmp ogt double %0, 1.000000e+06, !dbg !857
  br i1 %23, label %24, label %38, !dbg !858

24:                                               ; preds = %22
  %25 = fsub double %1, %0, !dbg !859
  %26 = fmul double %25, %25, !dbg !860
  %27 = fcmp olt double %26, %0, !dbg !861
  br i1 %27, label %28, label %38, !dbg !862

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !863
  %29 = call fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !823, metadata !DIExpression()), !dbg !834
  %30 = load double, ptr %4, align 8, !dbg !865, !tbaa !132
  %31 = fsub double 1.000000e+00, %30, !dbg !866
  store double %31, ptr %2, align 8, !dbg !867, !tbaa !132
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !868
  %33 = load double, ptr %32, align 8, !dbg !868, !tbaa !137
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !869
  %35 = tail call double @llvm.fabs.f64(double %31), !dbg !870
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !871
  %37 = fadd double %33, %36, !dbg !872
  store double %37, ptr %34, align 8, !dbg !872, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !873
  br label %73

38:                                               ; preds = %24, %22
  %39 = fcmp ugt double %0, %1, !dbg !874
  br i1 %39, label %57, label %40, !dbg !875

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !876
  %41 = fmul double %1, 2.000000e-01, !dbg !877
  %42 = fcmp olt double %41, %0, !dbg !879
  br i1 %42, label %43, label %45, !dbg !880

43:                                               ; preds = %40
  %44 = call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !827, metadata !DIExpression()), !dbg !836
  br label %47, !dbg !883

45:                                               ; preds = %40
  %46 = call fastcc i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !884, !range !179
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !827, metadata !DIExpression()), !dbg !836
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ], !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !827, metadata !DIExpression()), !dbg !836
  %49 = load double, ptr %5, align 8, !dbg !887, !tbaa !132
  %50 = fsub double 1.000000e+00, %49, !dbg !888
  store double %50, ptr %2, align 8, !dbg !889, !tbaa !132
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !890
  %52 = load double, ptr %51, align 8, !dbg !890, !tbaa !137
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !891
  %54 = tail call double @llvm.fabs.f64(double %50), !dbg !892
  %55 = fmul double %54, 0x3CC0000000000000, !dbg !893
  %56 = fadd double %52, %55, !dbg !894
  store double %56, ptr %53, align 8, !dbg !894, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !895
  br label %73

57:                                               ; preds = %38
  %58 = fsub double %1, %0, !dbg !896
  %59 = fmul double %58, %58, !dbg !897
  %60 = fcmp olt double %59, %0, !dbg !898
  br i1 %60, label %61, label %71, !dbg !899

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !900
  %62 = call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !832, metadata !DIExpression()), !dbg !838
  %63 = load double, ptr %6, align 8, !dbg !902, !tbaa !132
  %64 = fsub double 1.000000e+00, %63, !dbg !903
  store double %64, ptr %2, align 8, !dbg !904, !tbaa !132
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !905
  %66 = load double, ptr %65, align 8, !dbg !905, !tbaa !137
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !906
  %68 = tail call double @llvm.fabs.f64(double %64), !dbg !907
  %69 = fmul double %68, 0x3CC0000000000000, !dbg !908
  %70 = fadd double %66, %69, !dbg !909
  store double %70, ptr %67, align 8, !dbg !909, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !910
  br label %73

71:                                               ; preds = %57
  %72 = tail call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !911
  br label %73, !dbg !913

73:                                               ; preds = %10, %14, %20, %28, %47, %61, %71
  %74 = phi i32 [ 1, %10 ], [ 0, %14 ], [ %21, %20 ], [ %29, %28 ], [ %48, %47 ], [ %62, %61 ], [ %72, %71 ], !dbg !914
  ret i32 %74, !dbg !915
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_inc_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !916 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !936
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !937
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !930, metadata !DIExpression(), metadata !938, metadata ptr %6, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata double %0, metadata !918, metadata !DIExpression()), !dbg !940
  tail call void @llvm.dbg.value(metadata double %1, metadata !919, metadata !DIExpression()), !dbg !940
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !920, metadata !DIExpression()), !dbg !940
  %7 = fcmp olt double %1, 0.000000e+00, !dbg !941
  br i1 %7, label %8, label %10, !dbg !942

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !943, !tbaa !132
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !943
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !943, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 649, i32 noundef 1) #8, !dbg !946
  br label %79, !dbg !946

10:                                               ; preds = %3
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !948
  br i1 %11, label %12, label %14, !dbg !949

12:                                               ; preds = %10
  %13 = tail call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef %2) #8, !dbg !950
  br label %79, !dbg !952

14:                                               ; preds = %10
  %15 = fcmp oeq double %0, 0.000000e+00, !dbg !953
  br i1 %15, label %16, label %18, !dbg !954

16:                                               ; preds = %14
  %17 = tail call i32 @gsl_sf_expint_E1_e(double noundef %1, ptr noundef %2) #8, !dbg !955
  br label %79, !dbg !957

18:                                               ; preds = %14
  %19 = fcmp ogt double %0, 0.000000e+00, !dbg !958
  br i1 %19, label %20, label %41, !dbg !959

20:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i1 undef, metadata !960, metadata !DIExpression(), metadata !936, metadata ptr %4, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.assign(metadata i1 undef, metadata !968, metadata !DIExpression(), metadata !937, metadata ptr %5, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata double %0, metadata !965, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata double %1, metadata !966, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %2, metadata !967, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !974
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !975
  %21 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !976
  call void @llvm.dbg.value(metadata i32 %21, metadata !969, metadata !DIExpression()), !dbg !971
  %22 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #8, !dbg !977
  call void @llvm.dbg.value(metadata i32 %22, metadata !970, metadata !DIExpression()), !dbg !971
  %23 = load double, ptr %5, align 8, !dbg !978, !tbaa !132
  %24 = load double, ptr %4, align 8, !dbg !979, !tbaa !132
  %25 = fmul double %23, %24, !dbg !980
  store double %25, ptr %2, align 8, !dbg !981, !tbaa !132
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !982
  %27 = load double, ptr %26, align 8, !dbg !982, !tbaa !137
  %28 = fmul double %23, %27, !dbg !983
  %29 = call double @llvm.fabs.f64(double %28), !dbg !984
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !985
  %31 = load double, ptr %30, align 8, !dbg !985, !tbaa !137
  %32 = fmul double %24, %31, !dbg !986
  %33 = call double @llvm.fabs.f64(double %32), !dbg !987
  %34 = fadd double %29, %33, !dbg !988
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !989
  %36 = call double @llvm.fabs.f64(double %25), !dbg !990
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !991
  %38 = fadd double %37, %34, !dbg !992
  store double %38, ptr %35, align 8, !dbg !992, !tbaa !137
  %39 = icmp eq i32 %22, 0, !dbg !993
  %40 = select i1 %39, i32 %21, i32 %22, !dbg !993
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !994
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !994
  br label %79, !dbg !995

41:                                               ; preds = %18
  %42 = fcmp ogt double %1, 2.500000e-01, !dbg !996
  br i1 %42, label %43, label %45, !dbg !997

43:                                               ; preds = %41
  %44 = tail call fastcc i32 @gamma_inc_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !998
  br label %79, !dbg !1000

45:                                               ; preds = %41
  %46 = tail call double @llvm.fabs.f64(double %0), !dbg !1001
  %47 = fcmp olt double %46, 5.000000e-01, !dbg !1002
  br i1 %47, label %48, label %50, !dbg !1003

48:                                               ; preds = %45
  %49 = tail call fastcc i32 @gamma_inc_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !1004
  br label %79, !dbg !1006

50:                                               ; preds = %45
  %51 = tail call double @llvm.floor.f64(double %0), !dbg !1007
  tail call void @llvm.dbg.value(metadata double %51, metadata !921, metadata !DIExpression()), !dbg !939
  %52 = fsub double %0, %51, !dbg !1008
  tail call void @llvm.dbg.value(metadata double %52, metadata !929, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1009
  %53 = fcmp ogt double %52, 0.000000e+00, !dbg !1010
  br i1 %53, label %54, label %56, !dbg !1011

54:                                               ; preds = %50
  %55 = call fastcc i32 @gamma_inc_a_gt_0(double noundef %52, double noundef %1, ptr noundef nonnull %6), !dbg !1012
  br label %58, !dbg !1011

56:                                               ; preds = %50
  %57 = call i32 @gsl_sf_expint_E1_e(double noundef %1, ptr noundef nonnull %6) #8, !dbg !1013
  br label %58, !dbg !1011

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ], !dbg !1011
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !931, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata double %52, metadata !932, metadata !DIExpression()), !dbg !939
  %60 = load double, ptr %6, align 8, !dbg !1014, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %60, metadata !933, metadata !DIExpression()), !dbg !939
  br label %61, !dbg !1015

61:                                               ; preds = %61, %58
  %62 = phi double [ %52, %58 ], [ %64, %61 ], !dbg !939
  %63 = phi double [ %60, %58 ], [ %70, %61 ], !dbg !939
  tail call void @llvm.dbg.value(metadata double %63, metadata !933, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata double %62, metadata !932, metadata !DIExpression()), !dbg !939
  %64 = fadd double %62, -1.000000e+00, !dbg !1016
  %65 = call double @log(double noundef %1) #8, !dbg !1017
  %66 = fmul double %64, %65, !dbg !1018
  %67 = fsub double %66, %1, !dbg !1019
  %68 = call double @exp(double noundef %67) #8, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %68, metadata !934, metadata !DIExpression()), !dbg !1021
  %69 = fsub double %63, %68, !dbg !1022
  %70 = fdiv double %69, %64, !dbg !1023
  tail call void @llvm.dbg.value(metadata double %70, metadata !933, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata double %64, metadata !932, metadata !DIExpression()), !dbg !939
  %71 = fcmp ogt double %64, %0, !dbg !1024
  br i1 %71, label %61, label %72, !dbg !1025, !llvm.loop !1026

72:                                               ; preds = %61
  store double %70, ptr %2, align 8, !dbg !1028, !tbaa !132
  %73 = fadd double %46, 1.000000e+00, !dbg !1029
  %74 = fmul double %73, 2.000000e+00, !dbg !1030
  %75 = fmul double %74, 0x3CB0000000000000, !dbg !1031
  %76 = call double @llvm.fabs.f64(double %70), !dbg !1032
  %77 = fmul double %75, %76, !dbg !1033
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1034
  store double %77, ptr %78, align 8, !dbg !1035, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1036
  br label %79

79:                                               ; preds = %8, %12, %16, %20, %43, %48, %72
  %80 = phi i32 [ 1, %8 ], [ %13, %12 ], [ %17, %16 ], [ %40, %20 ], [ %44, %43 ], [ %49, %48 ], [ %59, %72 ], !dbg !1037
  ret i32 %80, !dbg !1038
}

declare !dbg !1039 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1043 i32 @gsl_sf_expint_E1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_a_gt_0(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !961 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1045
  call void @llvm.dbg.assign(metadata i1 undef, metadata !960, metadata !DIExpression(), metadata !1045, metadata ptr %4, metadata !DIExpression()), !dbg !1046
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1047
  call void @llvm.dbg.assign(metadata i1 undef, metadata !968, metadata !DIExpression(), metadata !1047, metadata ptr %5, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata double %0, metadata !965, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata double %1, metadata !966, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !967, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1048
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1049
  %6 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !969, metadata !DIExpression()), !dbg !1046
  %7 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #8, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !970, metadata !DIExpression()), !dbg !1046
  %8 = load double, ptr %5, align 8, !dbg !1052, !tbaa !132
  %9 = load double, ptr %4, align 8, !dbg !1053, !tbaa !132
  %10 = fmul double %8, %9, !dbg !1054
  store double %10, ptr %2, align 8, !dbg !1055, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1056
  %12 = load double, ptr %11, align 8, !dbg !1056, !tbaa !137
  %13 = fmul double %8, %12, !dbg !1057
  %14 = call double @llvm.fabs.f64(double %13), !dbg !1058
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1059
  %16 = load double, ptr %15, align 8, !dbg !1059, !tbaa !137
  %17 = fmul double %9, %16, !dbg !1060
  %18 = call double @llvm.fabs.f64(double %17), !dbg !1061
  %19 = fadd double %14, %18, !dbg !1062
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1063
  %21 = call double @llvm.fabs.f64(double %10), !dbg !1064
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !1065
  %23 = fadd double %22, %19, !dbg !1066
  store double %23, ptr %20, align 8, !dbg !1066, !tbaa !137
  %24 = icmp eq i32 %7, 0, !dbg !1067
  %25 = select i1 %24, i32 %6, i32 %7, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1068
  ret i32 %25, !dbg !1069
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1070 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1080
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1076, metadata !DIExpression(), metadata !1080, metadata ptr %4, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata double %0, metadata !1072, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata double %1, metadata !1073, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1074, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1082
  %5 = tail call double @log(double noundef %1) #8, !dbg !1083
  tail call void @llvm.dbg.value(metadata double poison, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata double %0, metadata !663, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %1, metadata !666, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata ptr undef, metadata !667, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 5000, metadata !668, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x3630000000000000, metadata !669, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !670, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 0x49B0000000000000, metadata !671, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !672, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 2, metadata !673, metadata !DIExpression()), !dbg !1084
  br label %6, !dbg !1086

6:                                                ; preds = %40, %3
  %7 = phi i32 [ 2, %3 ], [ %41, %40 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %34, %40 ]
  %9 = phi double [ 0x49B0000000000000, %3 ], [ %33, %40 ]
  %10 = phi double [ 1.000000e+00, %3 ], [ %36, %40 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !673, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %8, metadata !672, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %9, metadata !671, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %10, metadata !670, metadata !DIExpression()), !dbg !1084
  %11 = and i32 %7, 1, !dbg !1087
  %12 = icmp eq i32 %11, 0, !dbg !1087
  call void @llvm.dbg.value(metadata double poison, metadata !674, metadata !DIExpression()), !dbg !1088
  br i1 %12, label %17, label %13, !dbg !1089

13:                                               ; preds = %6
  %14 = add nsw i32 %7, -1, !dbg !1090
  %15 = sitofp i32 %14 to double, !dbg !1091
  %16 = fmul double %15, 5.000000e-01, !dbg !1092
  br label %21, !dbg !1093

17:                                               ; preds = %6
  %18 = sitofp i32 %7 to double, !dbg !1094
  %19 = fmul double %18, 5.000000e-01, !dbg !1095
  %20 = fsub double %19, %0, !dbg !1096
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi double [ %16, %13 ], [ %20, %17 ]
  %23 = fdiv double %22, %1, !dbg !1097
  call void @llvm.dbg.value(metadata double %23, metadata !674, metadata !DIExpression()), !dbg !1088
  %24 = fmul double %8, %23, !dbg !1098
  %25 = fadd double %24, 1.000000e+00, !dbg !1099
  call void @llvm.dbg.value(metadata double %25, metadata !672, metadata !DIExpression()), !dbg !1084
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !1100
  %27 = fcmp olt double %26, 0x3630000000000000, !dbg !1101
  %28 = fdiv double 1.000000e+00, %25, !dbg !1102
  call void @llvm.dbg.value(metadata double poison, metadata !672, metadata !DIExpression()), !dbg !1084
  %29 = fdiv double %23, %9, !dbg !1103
  %30 = fadd double %29, 1.000000e+00, !dbg !1104
  call void @llvm.dbg.value(metadata double %30, metadata !671, metadata !DIExpression()), !dbg !1084
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !1105
  %32 = fcmp olt double %31, 0x3630000000000000, !dbg !1106
  %33 = select i1 %32, double 0x3630000000000000, double %30, !dbg !1107
  call void @llvm.dbg.value(metadata double %33, metadata !671, metadata !DIExpression()), !dbg !1084
  %34 = select i1 %27, double 0x49B0000000000000, double %28, !dbg !1102
  call void @llvm.dbg.value(metadata double %34, metadata !672, metadata !DIExpression()), !dbg !1084
  %35 = fmul double %33, %34, !dbg !1108
  call void @llvm.dbg.value(metadata double %35, metadata !678, metadata !DIExpression()), !dbg !1088
  %36 = fmul double %10, %35, !dbg !1109
  call void @llvm.dbg.value(metadata double %36, metadata !670, metadata !DIExpression()), !dbg !1084
  %37 = fadd double %35, -1.000000e+00, !dbg !1110
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !1111
  %39 = fcmp olt double %38, 0x3CB0000000000000, !dbg !1112
  br i1 %39, label %43, label %40

40:                                               ; preds = %21
  %41 = add nuw nsw i32 %7, 1, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %41, metadata !673, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %34, metadata !672, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %33, metadata !671, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %36, metadata !670, metadata !DIExpression()), !dbg !1084
  %42 = icmp eq i32 %41, 5000, !dbg !1114
  br i1 %42, label %45, label %6, !dbg !1086, !llvm.loop !1115

43:                                               ; preds = %21
  call void @llvm.dbg.value(metadata double %36, metadata !670, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double %36, metadata !1075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1081
  tail call void @llvm.dbg.value(metadata double poison, metadata !1075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1081
  %44 = icmp eq i32 %7, 5000, !dbg !1117
  br i1 %44, label %45, label %46, !dbg !1118

45:                                               ; preds = %40, %43
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 286, i32 noundef 11) #8, !dbg !1119
  br label %46, !dbg !1119

46:                                               ; preds = %43, %45
  %47 = phi i1 [ true, %45 ], [ false, %43 ]
  %48 = phi i32 [ 5000, %45 ], [ %7, %43 ]
  %49 = phi i32 [ 11, %45 ], [ 0, %43 ], !dbg !1120
  %50 = tail call double @llvm.fabs.f64(double %36), !dbg !1121
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !1122
  %52 = sitofp i32 %48 to double, !dbg !1123
  %53 = fmul double %52, 5.000000e-01, !dbg !1124
  %54 = fadd double %53, 2.000000e+00, !dbg !1125
  %55 = fmul double %54, 0x3CB0000000000000, !dbg !1126
  %56 = fmul double %50, %55, !dbg !1127
  %57 = fadd double %51, %56, !dbg !1128
  tail call void @llvm.dbg.value(metadata double %57, metadata !1075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1081
  %58 = fadd double %0, -1.000000e+00, !dbg !1129
  %59 = fmul double %58, %5, !dbg !1130
  tail call void @llvm.dbg.value(metadata double %59, metadata !1077, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1078, metadata !DIExpression()), !dbg !1081
  %60 = fsub double %59, %1, !dbg !1131
  %61 = tail call double @llvm.fabs.f64(double %59), !dbg !1132
  %62 = fmul double %61, 0x3CB0000000000000, !dbg !1133
  %63 = call i32 @gsl_sf_exp_err_e(double noundef %60, double noundef %62, ptr noundef nonnull %4) #8, !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1079, metadata !DIExpression()), !dbg !1081
  %64 = load double, ptr %4, align 8, !dbg !1135, !tbaa !132
  %65 = fmul double %36, %64, !dbg !1136
  store double %65, ptr %2, align 8, !dbg !1137, !tbaa !132
  %66 = fmul double %57, %64, !dbg !1138
  %67 = call double @llvm.fabs.f64(double %66), !dbg !1139
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1140
  %69 = load double, ptr %68, align 8, !dbg !1140, !tbaa !137
  %70 = fmul double %36, %69, !dbg !1141
  %71 = call double @llvm.fabs.f64(double %70), !dbg !1142
  %72 = fadd double %67, %71, !dbg !1143
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1144
  %74 = call double @llvm.fabs.f64(double %65), !dbg !1145
  %75 = fmul double %74, 0x3CC0000000000000, !dbg !1146
  %76 = fadd double %75, %72, !dbg !1147
  store double %76, ptr %73, align 8, !dbg !1147, !tbaa !137
  %77 = select i1 %47, i32 %49, i32 %63, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1149
  ret i32 %77, !dbg !1150
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1151 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1156, metadata !DIExpression(), metadata !1160, metadata ptr %4, metadata !DIExpression()), !dbg !1161
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1162
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1157, metadata !DIExpression(), metadata !1162, metadata ptr %5, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %0, metadata !1153, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %1, metadata !1154, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1155, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1163
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1164
  %6 = call fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !1165, !range !179
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1158, metadata !DIExpression()), !dbg !1161
  %7 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #8, !dbg !1166
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1159, metadata !DIExpression()), !dbg !1161
  %8 = load double, ptr %4, align 8, !dbg !1167, !tbaa !132
  %9 = load double, ptr %5, align 8, !dbg !1168, !tbaa !132
  %10 = fmul double %8, %9, !dbg !1169
  store double %10, ptr %2, align 8, !dbg !1170, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1171
  %12 = load double, ptr %11, align 8, !dbg !1171, !tbaa !137
  %13 = fmul double %8, %12, !dbg !1172
  %14 = call double @llvm.fabs.f64(double %13), !dbg !1173
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1174
  %16 = load double, ptr %15, align 8, !dbg !1174, !tbaa !137
  %17 = fmul double %9, %16, !dbg !1175
  %18 = call double @llvm.fabs.f64(double %17), !dbg !1176
  %19 = fadd double %14, %18, !dbg !1177
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1178
  %21 = call double @llvm.fabs.f64(double %10), !dbg !1179
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !1180
  %23 = fadd double %22, %19, !dbg !1181
  store double %23, ptr %20, align 8, !dbg !1181, !tbaa !137
  %24 = icmp eq i32 %6, 0, !dbg !1182
  %25 = select i1 %24, i32 %7, i32 %6, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1183
  ret i32 %25, !dbg !1184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1185 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1186 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc_P(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1187 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1193, metadata !DIExpression(), metadata !1195, metadata ptr %3, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata double %0, metadata !1191, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata double %1, metadata !1192, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1197
  %4 = call i32 @gsl_sf_gamma_inc_P_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1197
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1194, metadata !DIExpression()), !dbg !1196
  %5 = icmp eq i32 %4, 0, !dbg !1198
  br i1 %5, label %7, label %6, !dbg !1197

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 710, i32 noundef %4) #8, !dbg !1200
  br label %7, !dbg !1200

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1197, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1203
  ret double %8, !dbg !1203
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc_Q(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1204 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1210
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1208, metadata !DIExpression(), metadata !1210, metadata ptr %3, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata double %0, metadata !1206, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata double %1, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1212
  %4 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1209, metadata !DIExpression()), !dbg !1211
  %5 = icmp eq i32 %4, 0, !dbg !1213
  br i1 %5, label %7, label %6, !dbg !1212

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 715, i32 noundef %4) #8, !dbg !1215
  br label %7, !dbg !1215

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1212, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1218
  ret double %8, !dbg !1218
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1219 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1223, metadata !DIExpression(), metadata !1225, metadata ptr %3, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata double %0, metadata !1221, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata double %1, metadata !1222, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1227
  %4 = call i32 @gsl_sf_gamma_inc_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1224, metadata !DIExpression()), !dbg !1226
  %5 = icmp eq i32 %4, 0, !dbg !1228
  br i1 %5, label %7, label %6, !dbg !1227

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 720, i32 noundef %4) #8, !dbg !1230
  br label %7, !dbg !1230

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1227, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1233
  ret double %8, !dbg !1233
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1234 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1243, metadata !DIExpression(), metadata !1254, metadata ptr %4, metadata !DIExpression()), !dbg !1255
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1244, metadata !DIExpression(), metadata !1256, metadata ptr %5, metadata !DIExpression()), !dbg !1257
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1258
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1246, metadata !DIExpression(), metadata !1258, metadata ptr %6, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata double %0, metadata !1237, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata double %1, metadata !1238, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1239, metadata !DIExpression()), !dbg !1259
  %7 = fcmp olt double %0, 1.000000e+01, !dbg !1260
  br i1 %7, label %8, label %23, !dbg !1261

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1262
  %9 = fadd double %0, 1.000000e+00, !dbg !1263
  %10 = call i32 @gsl_sf_lngamma_e(double noundef %9, ptr noundef nonnull %4) #8, !dbg !1264
  %11 = call double @log(double noundef %1) #8, !dbg !1265
  %12 = fmul double %11, %0, !dbg !1266
  %13 = fsub double %12, %1, !dbg !1267
  %14 = load double, ptr %4, align 8, !dbg !1268, !tbaa !132
  %15 = fsub double %13, %14, !dbg !1269
  tail call void @llvm.dbg.value(metadata double %15, metadata !1240, metadata !DIExpression()), !dbg !1255
  %16 = call double @exp(double noundef %15) #8, !dbg !1270
  store double %16, ptr %2, align 8, !dbg !1271, !tbaa !132
  %17 = call double @llvm.fabs.f64(double %15), !dbg !1272
  %18 = fadd double %17, 1.000000e+00, !dbg !1273
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !1274
  %20 = call double @llvm.fabs.f64(double %16), !dbg !1275
  %21 = fmul double %20, %19, !dbg !1276
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1277
  store double %21, ptr %22, align 8, !dbg !1278, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1279
  br label %76

23:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1280
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1281
  %24 = fmul double %0, 5.000000e-01, !dbg !1282
  %25 = fcmp ogt double %24, %1, !dbg !1283
  br i1 %25, label %26, label %37, !dbg !1284

26:                                               ; preds = %23
  %27 = fdiv double %1, %0, !dbg !1285
  tail call void @llvm.dbg.value(metadata double %27, metadata !1248, metadata !DIExpression()), !dbg !1286
  %28 = tail call double @log(double noundef %27) #8, !dbg !1287
  tail call void @llvm.dbg.value(metadata double %28, metadata !1251, metadata !DIExpression()), !dbg !1286
  %29 = fsub double %28, %27, !dbg !1288
  %30 = fadd double %29, 1.000000e+00, !dbg !1289
  store double %30, ptr %6, align 8, !dbg !1290, !tbaa !132, !DIAssignID !1291
  call void @llvm.dbg.assign(metadata double %30, metadata !1246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1291, metadata ptr %6, metadata !DIExpression()), !dbg !1257
  %31 = tail call double @llvm.fabs.f64(double %28), !dbg !1292
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !1293
  %33 = fadd double %32, %31, !dbg !1294
  %34 = fadd double %33, 1.000000e+00, !dbg !1295
  %35 = fmul double %34, 0x3CB0000000000000, !dbg !1296
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1297
  store double %35, ptr %36, align 8, !dbg !1298, !tbaa !137, !DIAssignID !1299
  call void @llvm.dbg.assign(metadata double %35, metadata !1246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1299, metadata ptr %36, metadata !DIExpression()), !dbg !1257
  br label %46, !dbg !1300

37:                                               ; preds = %23
  %38 = fsub double %1, %0, !dbg !1301
  %39 = fdiv double %38, %0, !dbg !1302
  tail call void @llvm.dbg.value(metadata double %39, metadata !1252, metadata !DIExpression()), !dbg !1303
  %40 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %39, ptr noundef nonnull %6) #8, !dbg !1304
  %41 = call double @llvm.fabs.f64(double %39), !dbg !1305
  %42 = fmul double %41, 0x3CB0000000000000, !dbg !1306
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1307
  %44 = load double, ptr %43, align 8, !dbg !1308, !tbaa !137
  %45 = fadd double %42, %44, !dbg !1308
  store double %45, ptr %43, align 8, !dbg !1308, !tbaa !137, !DIAssignID !1309
  call void @llvm.dbg.assign(metadata double %45, metadata !1246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1309, metadata ptr %43, metadata !DIExpression()), !dbg !1257
  br label %46

46:                                               ; preds = %37, %26
  %47 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %5) #8, !dbg !1310
  %48 = load double, ptr %6, align 8, !dbg !1311, !tbaa !132
  %49 = fmul double %48, %0, !dbg !1312
  %50 = call double @exp(double noundef %49) #8, !dbg !1313
  %51 = fmul double %0, 0x401921FB54442D18, !dbg !1314
  %52 = call double @sqrt(double noundef %51) #8, !dbg !1315
  %53 = fdiv double %50, %52, !dbg !1316
  tail call void @llvm.dbg.value(metadata double %53, metadata !1247, metadata !DIExpression()), !dbg !1257
  %54 = load double, ptr %5, align 8, !dbg !1317, !tbaa !132
  %55 = fdiv double %53, %54, !dbg !1318
  store double %55, ptr %2, align 8, !dbg !1319, !tbaa !132
  %56 = load double, ptr %6, align 8, !dbg !1320, !tbaa !132
  %57 = fmul double %56, %0, !dbg !1321
  %58 = call double @llvm.fabs.f64(double %57), !dbg !1322
  %59 = fadd double %58, 1.000000e+00, !dbg !1323
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !1324
  %61 = call double @llvm.fabs.f64(double %55), !dbg !1325
  %62 = fmul double %61, %60, !dbg !1326
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1327
  %64 = call double @llvm.fabs.f64(double %0), !dbg !1328
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1329
  %66 = load double, ptr %65, align 8, !dbg !1329, !tbaa !137
  %67 = fmul double %64, %66, !dbg !1330
  %68 = fmul double %61, %67, !dbg !1331
  %69 = fadd double %68, %62, !dbg !1332
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1333
  %71 = load double, ptr %70, align 8, !dbg !1333, !tbaa !137
  %72 = call double @llvm.fabs.f64(double %54), !dbg !1334
  %73 = fdiv double %71, %72, !dbg !1335
  %74 = fmul double %61, %73, !dbg !1336
  %75 = fadd double %69, %74, !dbg !1337
  store double %75, ptr %63, align 8, !dbg !1337, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1338
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1338
  br label %76

76:                                               ; preds = %46, %8
  ret void, !dbg !1339
}

declare !dbg !1340 i32 @gsl_sf_exprel_n_CF_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1342 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1345 i32 @gsl_sf_log_1plusx_mx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1347 i32 @gsl_sf_gammastar_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1348 i32 @gsl_sf_erfc_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1350 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "gamma_inc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "92b657c6ce19bf5758ce63128d3ba896")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 710, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 36)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 715, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 34)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 38)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !26, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 23)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 28)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !42, globals: !82, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43}
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 39, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!47 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!48 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!49 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!50 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!51 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!52 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!53 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!54 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!55 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!56 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!57 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!58 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!59 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!60 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!61 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!62 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!63 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!64 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!65 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!66 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!67 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!68 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!69 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!70 = !DIEnumerator(name: "GSL_ESING", value: 21)
!71 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!72 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!73 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!74 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!75 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!76 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!77 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!78 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!79 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!80 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!81 = !DIEnumerator(name: "GSL_EOF", value: 32)
!82 = !{!0, !7, !12, !17, !19, !24, !29, !31, !36}
!83 = !{i32 7, !"Dwarf Version", i32 5}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 4}
!86 = !{i32 8, !"PIC Level", i32 2}
!87 = !{i32 7, !"PIE Level", i32 2}
!88 = !{i32 7, !"uwtable", i32 2}
!89 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!90 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!91 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_Q_e", scope: !2, file: !2, line: 500, type: !92, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !103)
!92 = !DISubroutineType(types: !93)
!93 = !{!45, !94, !94, !96}
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !98, line: 41, baseType: !99)
!98 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !98, line: 37, size: 128, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !99, file: !98, line: 38, baseType: !95, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !99, file: !98, line: 39, baseType: !95, size: 64, offset: 64)
!103 = !{!104, !105, !106, !107, !113, !114, !121}
!104 = !DILocalVariable(name: "a", arg: 1, scope: !91, file: !2, line: 500, type: !94)
!105 = !DILocalVariable(name: "x", arg: 2, scope: !91, file: !2, line: 500, type: !94)
!106 = !DILocalVariable(name: "result", arg: 3, scope: !91, file: !2, line: 500, type: !96)
!107 = !DILocalVariable(name: "P", scope: !108, file: !2, line: 520, type: !97)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 516, column: 23)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 516, column: 11)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 510, column: 11)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 505, column: 11)
!112 = distinct !DILexicalBlock(scope: !91, file: !2, line: 502, column: 6)
!113 = !DILocalVariable(name: "stat_P", scope: !108, file: !2, line: 521, type: !45)
!114 = !DILocalVariable(name: "P", scope: !115, file: !2, line: 569, type: !97)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 568, column: 10)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 559, column: 8)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 558, column: 8)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 541, column: 11)
!119 = distinct !DILexicalBlock(scope: !120, file: !2, line: 533, column: 11)
!120 = distinct !DILexicalBlock(scope: !109, file: !2, line: 527, column: 11)
!121 = !DILocalVariable(name: "stat_P", scope: !115, file: !2, line: 570, type: !45)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !108)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !115)
!126 = !DILocation(line: 0, scope: !91)
!127 = !DILocation(line: 502, column: 8, scope: !112)
!128 = !DILocation(line: 502, column: 14, scope: !112)
!129 = !DILocation(line: 503, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 503, column: 5)
!131 = distinct !DILexicalBlock(scope: !112, file: !2, line: 502, column: 26)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!133, !134, i64 8}
!138 = !DILocation(line: 503, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 503, column: 5)
!140 = !DILocation(line: 505, column: 13, scope: !111)
!141 = !DILocation(line: 505, column: 11, scope: !112)
!142 = !DILocation(line: 506, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !111, file: !2, line: 505, column: 21)
!144 = !DILocation(line: 507, column: 13, scope: !143)
!145 = !DILocation(line: 507, column: 17, scope: !143)
!146 = !DILocation(line: 508, column: 5, scope: !143)
!147 = !DILocation(line: 510, column: 13, scope: !110)
!148 = !DILocation(line: 510, column: 11, scope: !111)
!149 = !DILocation(line: 513, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !110, file: !2, line: 511, column: 3)
!151 = !DILocation(line: 514, column: 5, scope: !150)
!152 = !DILocation(line: 516, column: 19, scope: !109)
!153 = !DILocation(line: 516, column: 13, scope: !109)
!154 = !DILocation(line: 516, column: 11, scope: !110)
!155 = !DILocation(line: 520, column: 5, scope: !108)
!156 = !DILocation(line: 521, column: 18, scope: !108)
!157 = !DILocation(line: 522, column: 28, scope: !108)
!158 = !DILocation(line: 522, column: 24, scope: !108)
!159 = !DILocation(line: 522, column: 18, scope: !108)
!160 = !DILocation(line: 523, column: 22, scope: !108)
!161 = !DILocation(line: 523, column: 13, scope: !108)
!162 = !DILocation(line: 524, column: 44, scope: !108)
!163 = !DILocation(line: 524, column: 42, scope: !108)
!164 = !DILocation(line: 524, column: 17, scope: !108)
!165 = !DILocation(line: 526, column: 3, scope: !109)
!166 = !DILocation(line: 527, column: 13, scope: !120)
!167 = !DILocation(line: 527, column: 24, scope: !120)
!168 = !DILocation(line: 527, column: 29, scope: !120)
!169 = !DILocation(line: 527, column: 32, scope: !120)
!170 = !DILocation(line: 527, column: 39, scope: !120)
!171 = !DILocation(line: 527, column: 11, scope: !109)
!172 = !DILocation(line: 531, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !120, file: !2, line: 527, column: 44)
!174 = !DILocation(line: 531, column: 5, scope: !173)
!175 = !DILocation(line: 533, column: 13, scope: !119)
!176 = !DILocation(line: 533, column: 19, scope: !119)
!177 = !DILocation(line: 539, column: 12, scope: !178)
!178 = distinct !DILexicalBlock(scope: !119, file: !2, line: 533, column: 31)
!179 = !{i32 0, i32 12}
!180 = !DILocation(line: 539, column: 5, scope: !178)
!181 = !DILocation(line: 541, column: 13, scope: !118)
!182 = !DILocation(line: 541, column: 11, scope: !119)
!183 = !DILocation(line: 542, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 542, column: 8)
!185 = distinct !DILexicalBlock(scope: !118, file: !2, line: 541, column: 19)
!186 = !DILocation(line: 542, column: 8, scope: !185)
!187 = !DILocation(line: 552, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !2, line: 542, column: 22)
!189 = !DILocation(line: 552, column: 7, scope: !188)
!190 = !DILocation(line: 555, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !2, line: 554, column: 10)
!192 = !DILocation(line: 555, column: 7, scope: !191)
!193 = !DILocation(line: 559, column: 16, scope: !116)
!194 = !DILocation(line: 559, column: 14, scope: !116)
!195 = !DILocation(line: 559, column: 10, scope: !116)
!196 = !DILocation(line: 559, column: 8, scope: !117)
!197 = !DILocation(line: 566, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !116, file: !2, line: 559, column: 25)
!199 = !DILocation(line: 566, column: 7, scope: !198)
!200 = !DILocation(line: 569, column: 7, scope: !115)
!201 = !DILocation(line: 570, column: 20, scope: !115)
!202 = !DILocation(line: 571, column: 30, scope: !115)
!203 = !DILocation(line: 571, column: 26, scope: !115)
!204 = !DILocation(line: 571, column: 20, scope: !115)
!205 = !DILocation(line: 572, column: 24, scope: !115)
!206 = !DILocation(line: 572, column: 15, scope: !115)
!207 = !DILocation(line: 573, column: 46, scope: !115)
!208 = !DILocation(line: 573, column: 44, scope: !115)
!209 = !DILocation(line: 573, column: 19, scope: !115)
!210 = !DILocation(line: 575, column: 5, scope: !116)
!211 = !DILocation(line: 0, scope: !112)
!212 = !DILocation(line: 577, column: 1, scope: !91)
!213 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216, !216, !45, !45}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!218 = distinct !DISubprogram(name: "gamma_inc_P_series", scope: !2, file: !2, line: 83, type: !92, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !219)
!219 = !{!220, !221, !222, !223, !225, !226, !227, !230, !231, !233, !234, !235, !236, !237}
!220 = !DILocalVariable(name: "a", arg: 1, scope: !218, file: !2, line: 83, type: !94)
!221 = !DILocalVariable(name: "x", arg: 2, scope: !218, file: !2, line: 83, type: !94)
!222 = !DILocalVariable(name: "result", arg: 3, scope: !218, file: !2, line: 83, type: !96)
!223 = !DILocalVariable(name: "nmax", scope: !218, file: !2, line: 85, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!225 = !DILocalVariable(name: "D", scope: !218, file: !2, line: 87, type: !97)
!226 = !DILocalVariable(name: "stat_D", scope: !218, file: !2, line: 88, type: !45)
!227 = !DILocalVariable(name: "cf_res", scope: !228, file: !2, line: 97, type: !97)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 96, column: 33)
!229 = distinct !DILexicalBlock(scope: !218, file: !2, line: 96, column: 7)
!230 = !DILocalVariable(name: "status", scope: !228, file: !2, line: 98, type: !45)
!231 = !DILocalVariable(name: "sum", scope: !232, file: !2, line: 113, type: !95)
!232 = distinct !DILexicalBlock(scope: !218, file: !2, line: 112, column: 3)
!233 = !DILocalVariable(name: "term", scope: !232, file: !2, line: 114, type: !95)
!234 = !DILocalVariable(name: "remainder", scope: !232, file: !2, line: 115, type: !95)
!235 = !DILocalVariable(name: "n", scope: !232, file: !2, line: 116, type: !45)
!236 = !DILocalVariable(name: "nlow", scope: !232, file: !2, line: 120, type: !45)
!237 = !DILocalVariable(name: "tnp1", scope: !238, file: !2, line: 137, type: !95)
!238 = distinct !DILexicalBlock(scope: !232, file: !2, line: 136, column: 5)
!239 = distinct !DIAssignID()
!240 = !DILocation(line: 0, scope: !218)
!241 = distinct !DIAssignID()
!242 = !DILocation(line: 0, scope: !228)
!243 = !DILocation(line: 87, column: 3, scope: !218)
!244 = !DILocation(line: 88, column: 16, scope: !218)
!245 = !DILocation(line: 96, column: 17, scope: !229)
!246 = !DILocation(line: 96, column: 9, scope: !229)
!247 = !DILocation(line: 96, column: 21, scope: !229)
!248 = !DILocation(line: 97, column: 5, scope: !228)
!249 = !DILocation(line: 98, column: 19, scope: !228)
!250 = !DILocation(line: 99, column: 21, scope: !228)
!251 = !DILocation(line: 99, column: 34, scope: !228)
!252 = !DILocation(line: 99, column: 25, scope: !228)
!253 = !DILocation(line: 99, column: 17, scope: !228)
!254 = !DILocation(line: 100, column: 39, scope: !228)
!255 = !DILocation(line: 100, column: 30, scope: !228)
!256 = !DILocation(line: 100, column: 19, scope: !228)
!257 = !DILocation(line: 100, column: 53, scope: !228)
!258 = !DILocation(line: 100, column: 57, scope: !228)
!259 = !DILocation(line: 100, column: 46, scope: !228)
!260 = !DILocation(line: 100, column: 44, scope: !228)
!261 = !DILocation(line: 100, column: 13, scope: !228)
!262 = !DILocation(line: 100, column: 17, scope: !228)
!263 = !DILocation(line: 102, column: 3, scope: !229)
!264 = !DILocation(line: 106, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !218, file: !2, line: 106, column: 7)
!266 = !DILocation(line: 106, column: 9, scope: !265)
!267 = !DILocation(line: 106, column: 7, scope: !218)
!268 = !DILocation(line: 107, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 107, column: 5)
!270 = distinct !DILexicalBlock(scope: !265, file: !2, line: 106, column: 23)
!271 = !DILocation(line: 0, scope: !232)
!272 = !DILocation(line: 120, column: 19, scope: !232)
!273 = !DILocation(line: 120, column: 16, scope: !232)
!274 = !DILocation(line: 122, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 122, column: 5)
!276 = distinct !DILexicalBlock(scope: !232, file: !2, line: 122, column: 5)
!277 = !DILocation(line: 122, column: 5, scope: !276)
!278 = !DILocation(line: 123, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !2, line: 122, column: 29)
!280 = !DILocation(line: 123, column: 19, scope: !279)
!281 = !DILocation(line: 123, column: 16, scope: !279)
!282 = !DILocation(line: 123, column: 12, scope: !279)
!283 = !DILocation(line: 124, column: 12, scope: !279)
!284 = !DILocation(line: 122, column: 25, scope: !275)
!285 = distinct !{!285, !286}
!286 = !{!"llvm.loop.unroll.disable"}
!287 = !DILocation(line: 129, column: 34, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 129, column: 5)
!289 = distinct !DILexicalBlock(scope: !232, file: !2, line: 129, column: 5)
!290 = !DILocation(line: 129, column: 5, scope: !289)
!291 = distinct !{!291, !277, !292, !293}
!292 = !DILocation(line: 125, column: 5, scope: !276)
!293 = !{!"llvm.loop.mustprogress"}
!294 = !DILocation(line: 130, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !2, line: 129, column: 47)
!296 = !DILocation(line: 130, column: 19, scope: !295)
!297 = !DILocation(line: 130, column: 16, scope: !295)
!298 = !DILocation(line: 130, column: 12, scope: !295)
!299 = !DILocation(line: 131, column: 12, scope: !295)
!300 = !DILocation(line: 132, column: 19, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !2, line: 132, column: 10)
!302 = !DILocation(line: 132, column: 10, scope: !301)
!303 = !DILocation(line: 132, column: 25, scope: !301)
!304 = !DILocation(line: 132, column: 10, scope: !295)
!305 = !DILocation(line: 129, column: 42, scope: !288)
!306 = distinct !{!306, !290, !307, !293}
!307 = !DILocation(line: 133, column: 5, scope: !289)
!308 = !DILocation(line: 137, column: 27, scope: !238)
!309 = !DILocation(line: 137, column: 26, scope: !238)
!310 = !DILocation(line: 137, column: 23, scope: !238)
!311 = !DILocation(line: 137, column: 31, scope: !238)
!312 = !DILocation(line: 0, scope: !238)
!313 = !DILocation(line: 138, column: 43, scope: !238)
!314 = !DILocation(line: 138, column: 35, scope: !238)
!315 = !DILocation(line: 138, column: 32, scope: !238)
!316 = !DILocation(line: 138, column: 25, scope: !238)
!317 = !DILocation(line: 141, column: 22, scope: !232)
!318 = !DILocation(line: 141, column: 26, scope: !232)
!319 = !DILocation(line: 141, column: 18, scope: !232)
!320 = !DILocation(line: 142, column: 22, scope: !232)
!321 = !DILocation(line: 142, column: 28, scope: !232)
!322 = !DILocation(line: 142, column: 26, scope: !232)
!323 = !DILocation(line: 142, column: 51, scope: !232)
!324 = !DILocation(line: 142, column: 40, scope: !232)
!325 = !DILocation(line: 142, column: 38, scope: !232)
!326 = !DILocation(line: 142, column: 13, scope: !232)
!327 = !DILocation(line: 143, column: 25, scope: !232)
!328 = !DILocation(line: 143, column: 30, scope: !232)
!329 = !DILocation(line: 143, column: 50, scope: !232)
!330 = !DILocation(line: 143, column: 48, scope: !232)
!331 = !DILocation(line: 143, column: 17, scope: !232)
!332 = !DILocation(line: 145, column: 10, scope: !333)
!333 = distinct !DILexicalBlock(scope: !232, file: !2, line: 145, column: 8)
!334 = !DILocation(line: 145, column: 18, scope: !333)
!335 = !DILocation(line: 145, column: 35, scope: !333)
!336 = !DILocation(line: 145, column: 21, scope: !333)
!337 = !DILocation(line: 145, column: 41, scope: !333)
!338 = !DILocation(line: 145, column: 8, scope: !232)
!339 = !DILocation(line: 146, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !2, line: 146, column: 7)
!341 = !DILocation(line: 150, column: 1, scope: !218)
!342 = distinct !DISubprogram(name: "gamma_inc_Q_asymp_unif", scope: !2, file: !2, line: 192, type: !92, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !359}
!344 = !DILocalVariable(name: "a", arg: 1, scope: !342, file: !2, line: 192, type: !94)
!345 = !DILocalVariable(name: "x", arg: 2, scope: !342, file: !2, line: 192, type: !94)
!346 = !DILocalVariable(name: "result", arg: 3, scope: !342, file: !2, line: 192, type: !96)
!347 = !DILocalVariable(name: "rta", scope: !342, file: !2, line: 194, type: !94)
!348 = !DILocalVariable(name: "eps", scope: !342, file: !2, line: 195, type: !94)
!349 = !DILocalVariable(name: "ln_term", scope: !342, file: !2, line: 197, type: !97)
!350 = !DILocalVariable(name: "stat_ln", scope: !342, file: !2, line: 198, type: !224)
!351 = !DILocalVariable(name: "eta", scope: !342, file: !2, line: 199, type: !94)
!352 = !DILocalVariable(name: "erfc", scope: !342, file: !2, line: 201, type: !97)
!353 = !DILocalVariable(name: "R", scope: !342, file: !2, line: 203, type: !95)
!354 = !DILocalVariable(name: "c0", scope: !342, file: !2, line: 204, type: !95)
!355 = !DILocalVariable(name: "c1", scope: !342, file: !2, line: 204, type: !95)
!356 = !DILocalVariable(name: "rt_term", scope: !357, file: !2, line: 217, type: !94)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 216, column: 8)
!358 = distinct !DILexicalBlock(scope: !342, file: !2, line: 212, column: 6)
!359 = !DILocalVariable(name: "lam", scope: !357, file: !2, line: 218, type: !94)
!360 = distinct !DIAssignID()
!361 = !DILocation(line: 0, scope: !342)
!362 = distinct !DIAssignID()
!363 = !DILocation(line: 194, column: 22, scope: !342)
!364 = !DILocation(line: 195, column: 24, scope: !342)
!365 = !DILocation(line: 195, column: 27, scope: !342)
!366 = !DILocation(line: 197, column: 3, scope: !342)
!367 = !DILocation(line: 198, column: 23, scope: !342)
!368 = !DILocation(line: 199, column: 23, scope: !342)
!369 = !DILocation(line: 199, column: 57, scope: !342)
!370 = !DILocation(line: 199, column: 48, scope: !342)
!371 = !DILocation(line: 199, column: 39, scope: !342)
!372 = !DILocation(line: 199, column: 37, scope: !342)
!373 = !DILocation(line: 201, column: 3, scope: !342)
!374 = !DILocation(line: 210, column: 20, scope: !342)
!375 = !DILocation(line: 210, column: 24, scope: !342)
!376 = !DILocation(line: 210, column: 3, scope: !342)
!377 = !DILocation(line: 212, column: 6, scope: !358)
!378 = !DILocation(line: 212, column: 16, scope: !358)
!379 = !DILocation(line: 212, column: 6, scope: !342)
!380 = !DILocation(line: 213, column: 79, scope: !381)
!381 = distinct !DILexicalBlock(scope: !358, file: !2, line: 212, column: 41)
!382 = !DILocation(line: 213, column: 85, scope: !381)
!383 = !DILocation(line: 213, column: 74, scope: !381)
!384 = !DILocation(line: 213, column: 58, scope: !381)
!385 = !DILocation(line: 213, column: 53, scope: !381)
!386 = !DILocation(line: 213, column: 40, scope: !381)
!387 = !DILocation(line: 213, column: 35, scope: !381)
!388 = !DILocation(line: 213, column: 24, scope: !381)
!389 = !DILocation(line: 213, column: 19, scope: !381)
!390 = !DILocation(line: 214, column: 26, scope: !381)
!391 = !DILocation(line: 214, column: 21, scope: !381)
!392 = !DILocation(line: 215, column: 3, scope: !381)
!393 = !DILocation(line: 217, column: 48, scope: !357)
!394 = !DILocation(line: 217, column: 38, scope: !357)
!395 = !DILocation(line: 217, column: 56, scope: !357)
!396 = !DILocation(line: 217, column: 51, scope: !357)
!397 = !DILocation(line: 217, column: 28, scope: !357)
!398 = !DILocation(line: 0, scope: !357)
!399 = !DILocation(line: 218, column: 25, scope: !357)
!400 = !DILocation(line: 219, column: 20, scope: !357)
!401 = !DILocation(line: 219, column: 15, scope: !357)
!402 = !DILocation(line: 219, column: 29, scope: !357)
!403 = !DILocation(line: 220, column: 15, scope: !357)
!404 = !DILocation(line: 220, column: 19, scope: !357)
!405 = !DILocation(line: 220, column: 30, scope: !357)
!406 = !DILocation(line: 220, column: 41, scope: !357)
!407 = !DILocation(line: 220, column: 35, scope: !357)
!408 = !DILocation(line: 220, column: 46, scope: !357)
!409 = !DILocation(line: 220, column: 24, scope: !357)
!410 = !DILocation(line: 220, column: 60, scope: !357)
!411 = !DILocation(line: 220, column: 65, scope: !357)
!412 = !DILocation(line: 220, column: 69, scope: !357)
!413 = !DILocation(line: 220, column: 53, scope: !357)
!414 = !DILocation(line: 220, column: 10, scope: !357)
!415 = !DILocation(line: 220, column: 83, scope: !357)
!416 = !DILocation(line: 220, column: 88, scope: !357)
!417 = !DILocation(line: 220, column: 92, scope: !357)
!418 = !DILocation(line: 220, column: 96, scope: !357)
!419 = !DILocation(line: 220, column: 100, scope: !357)
!420 = !DILocation(line: 220, column: 104, scope: !357)
!421 = !DILocation(line: 220, column: 75, scope: !357)
!422 = !DILocation(line: 0, scope: !358)
!423 = !DILocation(line: 223, column: 15, scope: !342)
!424 = !DILocation(line: 223, column: 17, scope: !342)
!425 = !DILocation(line: 223, column: 21, scope: !342)
!426 = !DILocation(line: 223, column: 7, scope: !342)
!427 = !DILocation(line: 223, column: 44, scope: !342)
!428 = !DILocation(line: 223, column: 26, scope: !342)
!429 = !DILocation(line: 223, column: 60, scope: !342)
!430 = !DILocation(line: 223, column: 56, scope: !342)
!431 = !DILocation(line: 223, column: 50, scope: !342)
!432 = !DILocation(line: 225, column: 29, scope: !342)
!433 = !DILocation(line: 225, column: 22, scope: !342)
!434 = !DILocation(line: 225, column: 33, scope: !342)
!435 = !DILocation(line: 225, column: 16, scope: !342)
!436 = !DILocation(line: 226, column: 43, scope: !342)
!437 = !DILocation(line: 226, column: 49, scope: !342)
!438 = !DILocation(line: 226, column: 52, scope: !342)
!439 = !DILocation(line: 226, column: 56, scope: !342)
!440 = !DILocation(line: 226, column: 36, scope: !342)
!441 = !DILocation(line: 226, column: 34, scope: !342)
!442 = !DILocation(line: 226, column: 75, scope: !342)
!443 = !DILocation(line: 226, column: 68, scope: !342)
!444 = !DILocation(line: 226, column: 62, scope: !342)
!445 = !DILocation(line: 226, column: 11, scope: !342)
!446 = !DILocation(line: 227, column: 42, scope: !342)
!447 = !DILocation(line: 227, column: 40, scope: !342)
!448 = !DILocation(line: 227, column: 15, scope: !342)
!449 = !DILocation(line: 230, column: 1, scope: !342)
!450 = !DILocation(line: 229, column: 3, scope: !342)
!451 = distinct !DISubprogram(name: "gamma_inc_Q_series", scope: !2, file: !2, line: 339, type: !92, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !476, !477}
!453 = !DILocalVariable(name: "a", arg: 1, scope: !451, file: !2, line: 339, type: !94)
!454 = !DILocalVariable(name: "x", arg: 2, scope: !451, file: !2, line: 339, type: !94)
!455 = !DILocalVariable(name: "result", arg: 3, scope: !451, file: !2, line: 339, type: !96)
!456 = !DILocalVariable(name: "term1", scope: !451, file: !2, line: 341, type: !95)
!457 = !DILocalVariable(name: "sum", scope: !451, file: !2, line: 342, type: !95)
!458 = !DILocalVariable(name: "stat_sum", scope: !451, file: !2, line: 343, type: !45)
!459 = !DILocalVariable(name: "term2", scope: !451, file: !2, line: 344, type: !95)
!460 = !DILocalVariable(name: "pg21", scope: !461, file: !2, line: 349, type: !94)
!461 = distinct !DILexicalBlock(scope: !451, file: !2, line: 346, column: 3)
!462 = !DILocalVariable(name: "lnx", scope: !461, file: !2, line: 350, type: !94)
!463 = !DILocalVariable(name: "el", scope: !461, file: !2, line: 351, type: !94)
!464 = !DILocalVariable(name: "c1", scope: !461, file: !2, line: 352, type: !94)
!465 = !DILocalVariable(name: "c2", scope: !461, file: !2, line: 353, type: !94)
!466 = !DILocalVariable(name: "c3", scope: !461, file: !2, line: 354, type: !94)
!467 = !DILocalVariable(name: "c4", scope: !461, file: !2, line: 355, type: !94)
!468 = !DILocalVariable(name: "c5", scope: !461, file: !2, line: 360, type: !94)
!469 = !DILocalVariable(name: "c6", scope: !461, file: !2, line: 366, type: !94)
!470 = !DILocalVariable(name: "c7", scope: !461, file: !2, line: 373, type: !94)
!471 = !DILocalVariable(name: "c8", scope: !461, file: !2, line: 381, type: !94)
!472 = !DILocalVariable(name: "c9", scope: !461, file: !2, line: 390, type: !94)
!473 = !DILocalVariable(name: "c10", scope: !461, file: !2, line: 400, type: !94)
!474 = !DILocalVariable(name: "nmax", scope: !475, file: !2, line: 418, type: !224)
!475 = distinct !DILexicalBlock(scope: !451, file: !2, line: 415, column: 3)
!476 = !DILocalVariable(name: "t", scope: !475, file: !2, line: 419, type: !95)
!477 = !DILocalVariable(name: "n", scope: !475, file: !2, line: 420, type: !45)
!478 = !DILocation(line: 0, scope: !451)
!479 = !DILocation(line: 0, scope: !461)
!480 = !DILocation(line: 350, column: 25, scope: !461)
!481 = !DILocation(line: 0, scope: !475)
!482 = !DILocation(line: 424, column: 12, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 423, column: 27)
!484 = distinct !DILexicalBlock(scope: !485, file: !2, line: 423, column: 5)
!485 = distinct !DILexicalBlock(scope: !475, file: !2, line: 423, column: 5)
!486 = !DILocation(line: 423, column: 5, scope: !485)
!487 = !DILocation(line: 424, column: 16, scope: !483)
!488 = !DILocation(line: 424, column: 17, scope: !483)
!489 = !DILocation(line: 424, column: 14, scope: !483)
!490 = !DILocation(line: 424, column: 9, scope: !483)
!491 = !DILocation(line: 425, column: 24, scope: !483)
!492 = !DILocation(line: 425, column: 26, scope: !483)
!493 = !DILocation(line: 425, column: 21, scope: !483)
!494 = !DILocation(line: 425, column: 31, scope: !483)
!495 = !DILocation(line: 425, column: 11, scope: !483)
!496 = !DILocation(line: 426, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !483, file: !2, line: 426, column: 10)
!498 = !DILocation(line: 426, column: 10, scope: !497)
!499 = !DILocation(line: 426, column: 22, scope: !497)
!500 = !DILocation(line: 426, column: 10, scope: !483)
!501 = !DILocation(line: 423, column: 23, scope: !484)
!502 = !DILocation(line: 423, column: 15, scope: !484)
!503 = distinct !{!503, !486, !504, !293}
!504 = !DILocation(line: 427, column: 5, scope: !485)
!505 = !DILocation(line: 429, column: 10, scope: !506)
!506 = distinct !DILexicalBlock(scope: !475, file: !2, line: 429, column: 8)
!507 = !DILocation(line: 351, column: 32, scope: !461)
!508 = !DILocation(line: 353, column: 43, scope: !461)
!509 = !DILocation(line: 353, column: 46, scope: !461)
!510 = !DILocation(line: 353, column: 38, scope: !461)
!511 = !DILocation(line: 354, column: 46, scope: !461)
!512 = !DILocation(line: 354, column: 49, scope: !461)
!513 = !DILocation(line: 354, column: 42, scope: !461)
!514 = !DILocation(line: 354, column: 25, scope: !461)
!515 = !DILocation(line: 354, column: 55, scope: !461)
!516 = !DILocation(line: 356, column: 49, scope: !461)
!517 = !DILocation(line: 356, column: 24, scope: !461)
!518 = !DILocation(line: 357, column: 49, scope: !461)
!519 = !DILocation(line: 357, column: 24, scope: !461)
!520 = !DILocation(line: 358, column: 49, scope: !461)
!521 = !DILocation(line: 358, column: 24, scope: !461)
!522 = !DILocation(line: 359, column: 49, scope: !461)
!523 = !DILocation(line: 359, column: 24, scope: !461)
!524 = !DILocation(line: 361, column: 48, scope: !461)
!525 = !DILocation(line: 361, column: 24, scope: !461)
!526 = !DILocation(line: 362, column: 48, scope: !461)
!527 = !DILocation(line: 362, column: 24, scope: !461)
!528 = !DILocation(line: 363, column: 48, scope: !461)
!529 = !DILocation(line: 363, column: 24, scope: !461)
!530 = !DILocation(line: 364, column: 48, scope: !461)
!531 = !DILocation(line: 364, column: 24, scope: !461)
!532 = !DILocation(line: 365, column: 48, scope: !461)
!533 = !DILocation(line: 365, column: 24, scope: !461)
!534 = !DILocation(line: 367, column: 48, scope: !461)
!535 = !DILocation(line: 367, column: 24, scope: !461)
!536 = !DILocation(line: 368, column: 48, scope: !461)
!537 = !DILocation(line: 368, column: 24, scope: !461)
!538 = !DILocation(line: 369, column: 48, scope: !461)
!539 = !DILocation(line: 369, column: 24, scope: !461)
!540 = !DILocation(line: 370, column: 48, scope: !461)
!541 = !DILocation(line: 370, column: 24, scope: !461)
!542 = !DILocation(line: 371, column: 48, scope: !461)
!543 = !DILocation(line: 371, column: 24, scope: !461)
!544 = !DILocation(line: 372, column: 48, scope: !461)
!545 = !DILocation(line: 372, column: 24, scope: !461)
!546 = !DILocation(line: 374, column: 47, scope: !461)
!547 = !DILocation(line: 374, column: 24, scope: !461)
!548 = !DILocation(line: 375, column: 47, scope: !461)
!549 = !DILocation(line: 375, column: 24, scope: !461)
!550 = !DILocation(line: 376, column: 47, scope: !461)
!551 = !DILocation(line: 376, column: 24, scope: !461)
!552 = !DILocation(line: 377, column: 47, scope: !461)
!553 = !DILocation(line: 377, column: 24, scope: !461)
!554 = !DILocation(line: 378, column: 47, scope: !461)
!555 = !DILocation(line: 378, column: 24, scope: !461)
!556 = !DILocation(line: 379, column: 47, scope: !461)
!557 = !DILocation(line: 379, column: 24, scope: !461)
!558 = !DILocation(line: 380, column: 47, scope: !461)
!559 = !DILocation(line: 380, column: 24, scope: !461)
!560 = !DILocation(line: 382, column: 46, scope: !461)
!561 = !DILocation(line: 382, column: 24, scope: !461)
!562 = !DILocation(line: 383, column: 46, scope: !461)
!563 = !DILocation(line: 383, column: 24, scope: !461)
!564 = !DILocation(line: 384, column: 46, scope: !461)
!565 = !DILocation(line: 384, column: 24, scope: !461)
!566 = !DILocation(line: 385, column: 46, scope: !461)
!567 = !DILocation(line: 385, column: 24, scope: !461)
!568 = !DILocation(line: 386, column: 46, scope: !461)
!569 = !DILocation(line: 386, column: 24, scope: !461)
!570 = !DILocation(line: 387, column: 46, scope: !461)
!571 = !DILocation(line: 387, column: 24, scope: !461)
!572 = !DILocation(line: 388, column: 46, scope: !461)
!573 = !DILocation(line: 388, column: 24, scope: !461)
!574 = !DILocation(line: 389, column: 46, scope: !461)
!575 = !DILocation(line: 389, column: 24, scope: !461)
!576 = !DILocation(line: 391, column: 47, scope: !461)
!577 = !DILocation(line: 391, column: 24, scope: !461)
!578 = !DILocation(line: 392, column: 47, scope: !461)
!579 = !DILocation(line: 392, column: 24, scope: !461)
!580 = !DILocation(line: 393, column: 47, scope: !461)
!581 = !DILocation(line: 393, column: 24, scope: !461)
!582 = !DILocation(line: 394, column: 47, scope: !461)
!583 = !DILocation(line: 394, column: 24, scope: !461)
!584 = !DILocation(line: 395, column: 47, scope: !461)
!585 = !DILocation(line: 395, column: 24, scope: !461)
!586 = !DILocation(line: 396, column: 47, scope: !461)
!587 = !DILocation(line: 396, column: 24, scope: !461)
!588 = !DILocation(line: 397, column: 47, scope: !461)
!589 = !DILocation(line: 397, column: 24, scope: !461)
!590 = !DILocation(line: 398, column: 47, scope: !461)
!591 = !DILocation(line: 398, column: 24, scope: !461)
!592 = !DILocation(line: 399, column: 47, scope: !461)
!593 = !DILocation(line: 399, column: 24, scope: !461)
!594 = !DILocation(line: 401, column: 47, scope: !461)
!595 = !DILocation(line: 401, column: 24, scope: !461)
!596 = !DILocation(line: 402, column: 47, scope: !461)
!597 = !DILocation(line: 402, column: 24, scope: !461)
!598 = !DILocation(line: 403, column: 47, scope: !461)
!599 = !DILocation(line: 403, column: 24, scope: !461)
!600 = !DILocation(line: 404, column: 47, scope: !461)
!601 = !DILocation(line: 404, column: 24, scope: !461)
!602 = !DILocation(line: 405, column: 47, scope: !461)
!603 = !DILocation(line: 405, column: 24, scope: !461)
!604 = !DILocation(line: 406, column: 47, scope: !461)
!605 = !DILocation(line: 406, column: 24, scope: !461)
!606 = !DILocation(line: 407, column: 47, scope: !461)
!607 = !DILocation(line: 407, column: 24, scope: !461)
!608 = !DILocation(line: 408, column: 47, scope: !461)
!609 = !DILocation(line: 408, column: 24, scope: !461)
!610 = !DILocation(line: 409, column: 47, scope: !461)
!611 = !DILocation(line: 409, column: 24, scope: !461)
!612 = !DILocation(line: 410, column: 47, scope: !461)
!613 = !DILocation(line: 410, column: 24, scope: !461)
!614 = !DILocation(line: 412, column: 68, scope: !461)
!615 = !DILocation(line: 412, column: 66, scope: !461)
!616 = !DILocation(line: 412, column: 62, scope: !461)
!617 = !DILocation(line: 412, column: 60, scope: !461)
!618 = !DILocation(line: 412, column: 56, scope: !461)
!619 = !DILocation(line: 412, column: 54, scope: !461)
!620 = !DILocation(line: 412, column: 50, scope: !461)
!621 = !DILocation(line: 412, column: 48, scope: !461)
!622 = !DILocation(line: 412, column: 44, scope: !461)
!623 = !DILocation(line: 412, column: 42, scope: !461)
!624 = !DILocation(line: 412, column: 38, scope: !461)
!625 = !DILocation(line: 412, column: 36, scope: !461)
!626 = !DILocation(line: 412, column: 32, scope: !461)
!627 = !DILocation(line: 412, column: 30, scope: !461)
!628 = !DILocation(line: 412, column: 26, scope: !461)
!629 = !DILocation(line: 412, column: 24, scope: !461)
!630 = !DILocation(line: 412, column: 20, scope: !461)
!631 = !DILocation(line: 412, column: 18, scope: !461)
!632 = !DILocation(line: 412, column: 14, scope: !461)
!633 = !DILocation(line: 435, column: 16, scope: !451)
!634 = !DILocation(line: 435, column: 25, scope: !451)
!635 = !DILocation(line: 435, column: 28, scope: !451)
!636 = !DILocation(line: 435, column: 37, scope: !451)
!637 = !DILocation(line: 435, column: 41, scope: !451)
!638 = !DILocation(line: 436, column: 24, scope: !451)
!639 = !DILocation(line: 436, column: 16, scope: !451)
!640 = !DILocation(line: 437, column: 37, scope: !451)
!641 = !DILocation(line: 437, column: 55, scope: !451)
!642 = !DILocation(line: 437, column: 54, scope: !451)
!643 = !DILocation(line: 437, column: 49, scope: !451)
!644 = !DILocation(line: 437, column: 34, scope: !451)
!645 = !DILocation(line: 437, column: 11, scope: !451)
!646 = !DILocation(line: 438, column: 42, scope: !451)
!647 = !DILocation(line: 438, column: 40, scope: !451)
!648 = !DILocation(line: 438, column: 15, scope: !451)
!649 = !DILocation(line: 439, column: 3, scope: !451)
!650 = distinct !DISubprogram(name: "gamma_inc_Q_CF", scope: !2, file: !2, line: 321, type: !92, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658}
!652 = !DILocalVariable(name: "a", arg: 1, scope: !650, file: !2, line: 321, type: !94)
!653 = !DILocalVariable(name: "x", arg: 2, scope: !650, file: !2, line: 321, type: !94)
!654 = !DILocalVariable(name: "result", arg: 3, scope: !650, file: !2, line: 321, type: !96)
!655 = !DILocalVariable(name: "D", scope: !650, file: !2, line: 323, type: !97)
!656 = !DILocalVariable(name: "F", scope: !650, file: !2, line: 324, type: !97)
!657 = !DILocalVariable(name: "stat_D", scope: !650, file: !2, line: 325, type: !224)
!658 = !DILocalVariable(name: "stat_F", scope: !650, file: !2, line: 326, type: !224)
!659 = distinct !DIAssignID()
!660 = !DILocation(line: 0, scope: !650)
!661 = !DILocation(line: 323, column: 3, scope: !650)
!662 = !DILocation(line: 325, column: 22, scope: !650)
!663 = !DILocalVariable(name: "a", arg: 1, scope: !664, file: !2, line: 247, type: !94)
!664 = distinct !DISubprogram(name: "gamma_inc_F_CF", scope: !2, file: !2, line: 247, type: !92, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !665)
!665 = !{!663, !666, !667, !668, !669, !670, !671, !672, !673, !674, !678}
!666 = !DILocalVariable(name: "x", arg: 2, scope: !664, file: !2, line: 247, type: !94)
!667 = !DILocalVariable(name: "result", arg: 3, scope: !664, file: !2, line: 247, type: !96)
!668 = !DILocalVariable(name: "nmax", scope: !664, file: !2, line: 249, type: !224)
!669 = !DILocalVariable(name: "small", scope: !664, file: !2, line: 250, type: !94)
!670 = !DILocalVariable(name: "hn", scope: !664, file: !2, line: 252, type: !95)
!671 = !DILocalVariable(name: "Cn", scope: !664, file: !2, line: 253, type: !95)
!672 = !DILocalVariable(name: "Dn", scope: !664, file: !2, line: 254, type: !95)
!673 = !DILocalVariable(name: "n", scope: !664, file: !2, line: 255, type: !45)
!674 = !DILocalVariable(name: "an", scope: !675, file: !2, line: 261, type: !95)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 260, column: 3)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 259, column: 3)
!677 = distinct !DILexicalBlock(scope: !664, file: !2, line: 259, column: 3)
!678 = !DILocalVariable(name: "delta", scope: !675, file: !2, line: 262, type: !95)
!679 = !DILocation(line: 0, scope: !664, inlinedAt: !680)
!680 = distinct !DILocation(line: 326, column: 22, scope: !650)
!681 = !DILocation(line: 259, column: 3, scope: !677, inlinedAt: !680)
!682 = !DILocation(line: 264, column: 8, scope: !683, inlinedAt: !680)
!683 = distinct !DILexicalBlock(scope: !675, file: !2, line: 264, column: 8)
!684 = !DILocation(line: 0, scope: !675, inlinedAt: !680)
!685 = !DILocation(line: 264, column: 8, scope: !675, inlinedAt: !680)
!686 = !DILocation(line: 265, column: 18, scope: !683, inlinedAt: !680)
!687 = !DILocation(line: 265, column: 16, scope: !683, inlinedAt: !680)
!688 = !DILocation(line: 265, column: 15, scope: !683, inlinedAt: !680)
!689 = !DILocation(line: 265, column: 7, scope: !683, inlinedAt: !680)
!690 = !DILocation(line: 267, column: 17, scope: !683, inlinedAt: !680)
!691 = !DILocation(line: 267, column: 16, scope: !683, inlinedAt: !680)
!692 = !DILocation(line: 267, column: 18, scope: !683, inlinedAt: !680)
!693 = !DILocation(line: 0, scope: !683, inlinedAt: !680)
!694 = !DILocation(line: 269, column: 19, scope: !675, inlinedAt: !680)
!695 = !DILocation(line: 269, column: 14, scope: !675, inlinedAt: !680)
!696 = !DILocation(line: 270, column: 10, scope: !697, inlinedAt: !680)
!697 = distinct !DILexicalBlock(scope: !675, file: !2, line: 270, column: 10)
!698 = !DILocation(line: 270, column: 19, scope: !697, inlinedAt: !680)
!699 = !DILocation(line: 275, column: 14, scope: !675, inlinedAt: !680)
!700 = !DILocation(line: 272, column: 18, scope: !675, inlinedAt: !680)
!701 = !DILocation(line: 272, column: 14, scope: !675, inlinedAt: !680)
!702 = !DILocation(line: 273, column: 10, scope: !703, inlinedAt: !680)
!703 = distinct !DILexicalBlock(scope: !675, file: !2, line: 273, column: 10)
!704 = !DILocation(line: 273, column: 19, scope: !703, inlinedAt: !680)
!705 = !DILocation(line: 273, column: 10, scope: !675, inlinedAt: !680)
!706 = !DILocation(line: 276, column: 16, scope: !675, inlinedAt: !680)
!707 = !DILocation(line: 277, column: 8, scope: !675, inlinedAt: !680)
!708 = !DILocation(line: 278, column: 18, scope: !709, inlinedAt: !680)
!709 = distinct !DILexicalBlock(scope: !675, file: !2, line: 278, column: 8)
!710 = !DILocation(line: 278, column: 8, scope: !709, inlinedAt: !680)
!711 = !DILocation(line: 278, column: 24, scope: !709, inlinedAt: !680)
!712 = !DILocation(line: 259, column: 29, scope: !676, inlinedAt: !680)
!713 = !DILocation(line: 259, column: 19, scope: !676, inlinedAt: !680)
!714 = distinct !{!714, !681, !715, !293}
!715 = !DILocation(line: 279, column: 3, scope: !677, inlinedAt: !680)
!716 = !DILocation(line: 285, column: 8, scope: !717, inlinedAt: !680)
!717 = distinct !DILexicalBlock(scope: !664, file: !2, line: 285, column: 6)
!718 = !DILocation(line: 285, column: 6, scope: !664, inlinedAt: !680)
!719 = !DILocation(line: 286, column: 5, scope: !720, inlinedAt: !680)
!720 = distinct !DILexicalBlock(scope: !717, file: !2, line: 286, column: 5)
!721 = !DILocation(line: 0, scope: !717, inlinedAt: !680)
!722 = !DILocation(line: 282, column: 39, scope: !664, inlinedAt: !680)
!723 = !DILocation(line: 282, column: 37, scope: !664, inlinedAt: !680)
!724 = !DILocation(line: 283, column: 47, scope: !664, inlinedAt: !680)
!725 = !DILocation(line: 283, column: 46, scope: !664, inlinedAt: !680)
!726 = !DILocation(line: 283, column: 41, scope: !664, inlinedAt: !680)
!727 = !DILocation(line: 283, column: 34, scope: !664, inlinedAt: !680)
!728 = !DILocation(line: 283, column: 50, scope: !664, inlinedAt: !680)
!729 = !DILocation(line: 283, column: 15, scope: !664, inlinedAt: !680)
!730 = !DILocation(line: 328, column: 20, scope: !650)
!731 = !DILocation(line: 328, column: 28, scope: !650)
!732 = !DILocation(line: 328, column: 24, scope: !650)
!733 = !DILocation(line: 328, column: 32, scope: !650)
!734 = !DILocation(line: 328, column: 16, scope: !650)
!735 = !DILocation(line: 329, column: 20, scope: !650)
!736 = !DILocation(line: 329, column: 37, scope: !650)
!737 = !DILocation(line: 329, column: 26, scope: !650)
!738 = !DILocation(line: 329, column: 24, scope: !650)
!739 = !DILocation(line: 329, column: 59, scope: !650)
!740 = !DILocation(line: 329, column: 62, scope: !650)
!741 = !DILocation(line: 329, column: 65, scope: !650)
!742 = !DILocation(line: 329, column: 48, scope: !650)
!743 = !DILocation(line: 329, column: 46, scope: !650)
!744 = !DILocation(line: 329, column: 11, scope: !650)
!745 = !DILocation(line: 329, column: 16, scope: !650)
!746 = !DILocation(line: 332, column: 1, scope: !650)
!747 = !DILocation(line: 331, column: 3, scope: !650)
!748 = distinct !DISubprogram(name: "gamma_inc_Q_large_x", scope: !2, file: !2, line: 157, type: !92, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!750 = !DILocalVariable(name: "a", arg: 1, scope: !748, file: !2, line: 157, type: !94)
!751 = !DILocalVariable(name: "x", arg: 2, scope: !748, file: !2, line: 157, type: !94)
!752 = !DILocalVariable(name: "result", arg: 3, scope: !748, file: !2, line: 157, type: !96)
!753 = !DILocalVariable(name: "nmax", scope: !748, file: !2, line: 159, type: !224)
!754 = !DILocalVariable(name: "D", scope: !748, file: !2, line: 161, type: !97)
!755 = !DILocalVariable(name: "stat_D", scope: !748, file: !2, line: 162, type: !224)
!756 = !DILocalVariable(name: "sum", scope: !748, file: !2, line: 164, type: !95)
!757 = !DILocalVariable(name: "term", scope: !748, file: !2, line: 165, type: !95)
!758 = !DILocalVariable(name: "last", scope: !748, file: !2, line: 166, type: !95)
!759 = !DILocalVariable(name: "n", scope: !748, file: !2, line: 167, type: !45)
!760 = distinct !DIAssignID()
!761 = !DILocation(line: 0, scope: !748)
!762 = !DILocation(line: 161, column: 3, scope: !748)
!763 = !DILocation(line: 162, column: 22, scope: !748)
!764 = !DILocation(line: 168, column: 3, scope: !765)
!765 = distinct !DILexicalBlock(scope: !748, file: !2, line: 168, column: 3)
!766 = !DILocation(line: 169, column: 16, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !2, line: 168, column: 25)
!768 = distinct !DILexicalBlock(scope: !765, file: !2, line: 168, column: 3)
!769 = !DILocation(line: 169, column: 15, scope: !767)
!770 = !DILocation(line: 169, column: 18, scope: !767)
!771 = !DILocation(line: 169, column: 10, scope: !767)
!772 = !DILocation(line: 170, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !2, line: 170, column: 8)
!774 = !DILocation(line: 170, column: 8, scope: !773)
!775 = !DILocation(line: 170, column: 24, scope: !773)
!776 = !DILocation(line: 170, column: 8, scope: !767)
!777 = !DILocation(line: 171, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !767, file: !2, line: 171, column: 8)
!779 = !DILocation(line: 171, column: 8, scope: !778)
!780 = !DILocation(line: 171, column: 24, scope: !778)
!781 = !DILocation(line: 171, column: 8, scope: !767)
!782 = !DILocation(line: 172, column: 10, scope: !767)
!783 = !DILocation(line: 168, column: 21, scope: !768)
!784 = !DILocation(line: 168, column: 13, scope: !768)
!785 = distinct !{!785, !764, !786, !293}
!786 = !DILocation(line: 174, column: 3, scope: !765)
!787 = !DILocation(line: 168, scope: !765)
!788 = !DILocation(line: 176, column: 20, scope: !748)
!789 = !DILocation(line: 176, column: 28, scope: !748)
!790 = !DILocation(line: 176, column: 24, scope: !748)
!791 = !DILocation(line: 176, column: 32, scope: !748)
!792 = !DILocation(line: 176, column: 16, scope: !748)
!793 = !DILocation(line: 177, column: 20, scope: !748)
!794 = !DILocation(line: 177, column: 37, scope: !748)
!795 = !DILocation(line: 177, column: 26, scope: !748)
!796 = !DILocation(line: 177, column: 24, scope: !748)
!797 = !DILocation(line: 177, column: 11, scope: !748)
!798 = !DILocation(line: 178, column: 42, scope: !748)
!799 = !DILocation(line: 178, column: 40, scope: !748)
!800 = !DILocation(line: 178, column: 15, scope: !748)
!801 = !DILocation(line: 180, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !748, file: !2, line: 180, column: 6)
!803 = !DILocation(line: 180, column: 6, scope: !748)
!804 = !DILocation(line: 181, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !2, line: 181, column: 5)
!806 = !DILocation(line: 0, scope: !802)
!807 = !DILocation(line: 184, column: 1, scope: !748)
!808 = !DISubprogram(name: "sqrt", scope: !809, file: !809, line: 143, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!810 = !DISubroutineType(types: !811)
!811 = !{!95, !95}
!812 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_P_e", scope: !2, file: !2, line: 581, type: !92, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !813)
!813 = !{!814, !815, !816, !817, !823, !824, !827, !828, !832}
!814 = !DILocalVariable(name: "a", arg: 1, scope: !812, file: !2, line: 581, type: !94)
!815 = !DILocalVariable(name: "x", arg: 2, scope: !812, file: !2, line: 581, type: !94)
!816 = !DILocalVariable(name: "result", arg: 3, scope: !812, file: !2, line: 581, type: !96)
!817 = !DILocalVariable(name: "Q", scope: !818, file: !2, line: 601, type: !97)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 596, column: 43)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 596, column: 11)
!820 = distinct !DILexicalBlock(scope: !821, file: !2, line: 591, column: 11)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 586, column: 11)
!822 = distinct !DILexicalBlock(scope: !812, file: !2, line: 583, column: 6)
!823 = !DILocalVariable(name: "stat_Q", scope: !818, file: !2, line: 602, type: !45)
!824 = !DILocalVariable(name: "Q", scope: !825, file: !2, line: 612, type: !97)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 608, column: 19)
!826 = distinct !DILexicalBlock(scope: !819, file: !2, line: 608, column: 11)
!827 = !DILocalVariable(name: "stat_Q", scope: !825, file: !2, line: 613, type: !45)
!828 = !DILocalVariable(name: "Q", scope: !829, file: !2, line: 631, type: !97)
!829 = distinct !DILexicalBlock(scope: !830, file: !2, line: 626, column: 25)
!830 = distinct !DILexicalBlock(scope: !831, file: !2, line: 626, column: 8)
!831 = distinct !DILexicalBlock(scope: !826, file: !2, line: 625, column: 8)
!832 = !DILocalVariable(name: "stat_Q", scope: !829, file: !2, line: 632, type: !45)
!833 = distinct !DIAssignID()
!834 = !DILocation(line: 0, scope: !818)
!835 = distinct !DIAssignID()
!836 = !DILocation(line: 0, scope: !825)
!837 = distinct !DIAssignID()
!838 = !DILocation(line: 0, scope: !829)
!839 = !DILocation(line: 0, scope: !812)
!840 = !DILocation(line: 583, column: 8, scope: !822)
!841 = !DILocation(line: 583, column: 15, scope: !822)
!842 = !DILocation(line: 584, column: 5, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !2, line: 584, column: 5)
!844 = distinct !DILexicalBlock(scope: !822, file: !2, line: 583, column: 27)
!845 = !DILocation(line: 584, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !2, line: 584, column: 5)
!847 = !DILocation(line: 586, column: 13, scope: !821)
!848 = !DILocation(line: 586, column: 11, scope: !822)
!849 = !DILocation(line: 588, column: 17, scope: !850)
!850 = distinct !DILexicalBlock(scope: !821, file: !2, line: 586, column: 21)
!851 = !DILocation(line: 589, column: 5, scope: !850)
!852 = !DILocation(line: 591, column: 13, scope: !820)
!853 = !DILocation(line: 591, column: 20, scope: !820)
!854 = !DILocation(line: 594, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !820, file: !2, line: 591, column: 34)
!856 = !DILocation(line: 594, column: 5, scope: !855)
!857 = !DILocation(line: 596, column: 13, scope: !819)
!858 = !DILocation(line: 596, column: 23, scope: !819)
!859 = !DILocation(line: 596, column: 28, scope: !819)
!860 = !DILocation(line: 596, column: 31, scope: !819)
!861 = !DILocation(line: 596, column: 38, scope: !819)
!862 = !DILocation(line: 596, column: 11, scope: !820)
!863 = !DILocation(line: 601, column: 5, scope: !818)
!864 = !DILocation(line: 602, column: 18, scope: !818)
!865 = !DILocation(line: 603, column: 28, scope: !818)
!866 = !DILocation(line: 603, column: 24, scope: !818)
!867 = !DILocation(line: 603, column: 18, scope: !818)
!868 = !DILocation(line: 604, column: 22, scope: !818)
!869 = !DILocation(line: 604, column: 13, scope: !818)
!870 = !DILocation(line: 605, column: 44, scope: !818)
!871 = !DILocation(line: 605, column: 42, scope: !818)
!872 = !DILocation(line: 605, column: 17, scope: !818)
!873 = !DILocation(line: 607, column: 3, scope: !819)
!874 = !DILocation(line: 608, column: 13, scope: !826)
!875 = !DILocation(line: 608, column: 11, scope: !819)
!876 = !DILocation(line: 612, column: 5, scope: !825)
!877 = !DILocation(line: 614, column: 15, scope: !878)
!878 = distinct !DILexicalBlock(scope: !825, file: !2, line: 614, column: 8)
!879 = !DILocation(line: 614, column: 10, scope: !878)
!880 = !DILocation(line: 614, column: 8, scope: !825)
!881 = !DILocation(line: 615, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !2, line: 614, column: 19)
!883 = !DILocation(line: 616, column: 5, scope: !882)
!884 = !DILocation(line: 618, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !2, line: 617, column: 10)
!886 = !DILocation(line: 0, scope: !878)
!887 = !DILocation(line: 620, column: 28, scope: !825)
!888 = !DILocation(line: 620, column: 24, scope: !825)
!889 = !DILocation(line: 620, column: 18, scope: !825)
!890 = !DILocation(line: 621, column: 22, scope: !825)
!891 = !DILocation(line: 621, column: 13, scope: !825)
!892 = !DILocation(line: 622, column: 44, scope: !825)
!893 = !DILocation(line: 622, column: 42, scope: !825)
!894 = !DILocation(line: 622, column: 17, scope: !825)
!895 = !DILocation(line: 624, column: 3, scope: !826)
!896 = !DILocation(line: 626, column: 10, scope: !830)
!897 = !DILocation(line: 626, column: 13, scope: !830)
!898 = !DILocation(line: 626, column: 20, scope: !830)
!899 = !DILocation(line: 626, column: 8, scope: !831)
!900 = !DILocation(line: 631, column: 7, scope: !829)
!901 = !DILocation(line: 632, column: 20, scope: !829)
!902 = !DILocation(line: 633, column: 30, scope: !829)
!903 = !DILocation(line: 633, column: 26, scope: !829)
!904 = !DILocation(line: 633, column: 20, scope: !829)
!905 = !DILocation(line: 634, column: 24, scope: !829)
!906 = !DILocation(line: 634, column: 15, scope: !829)
!907 = !DILocation(line: 635, column: 46, scope: !829)
!908 = !DILocation(line: 635, column: 44, scope: !829)
!909 = !DILocation(line: 635, column: 19, scope: !829)
!910 = !DILocation(line: 637, column: 5, scope: !830)
!911 = !DILocation(line: 639, column: 14, scope: !912)
!912 = distinct !DILexicalBlock(scope: !830, file: !2, line: 638, column: 10)
!913 = !DILocation(line: 639, column: 7, scope: !912)
!914 = !DILocation(line: 0, scope: !822)
!915 = !DILocation(line: 642, column: 1, scope: !812)
!916 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_e", scope: !2, file: !2, line: 646, type: !92, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !917)
!917 = !{!918, !919, !920, !921, !929, !930, !931, !932, !933, !934}
!918 = !DILocalVariable(name: "a", arg: 1, scope: !916, file: !2, line: 646, type: !94)
!919 = !DILocalVariable(name: "x", arg: 2, scope: !916, file: !2, line: 646, type: !94)
!920 = !DILocalVariable(name: "result", arg: 3, scope: !916, file: !2, line: 646, type: !96)
!921 = !DILocalVariable(name: "fa", scope: !922, file: !2, line: 678, type: !94)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 676, column: 3)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 671, column: 11)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 662, column: 11)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 658, column: 11)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 654, column: 11)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 651, column: 11)
!928 = distinct !DILexicalBlock(scope: !916, file: !2, line: 648, column: 6)
!929 = !DILocalVariable(name: "da", scope: !922, file: !2, line: 679, type: !94)
!930 = !DILocalVariable(name: "g_da", scope: !922, file: !2, line: 681, type: !97)
!931 = !DILocalVariable(name: "stat_g_da", scope: !922, file: !2, line: 682, type: !224)
!932 = !DILocalVariable(name: "alpha", scope: !922, file: !2, line: 685, type: !95)
!933 = !DILocalVariable(name: "gax", scope: !922, file: !2, line: 686, type: !95)
!934 = !DILocalVariable(name: "shift", scope: !935, file: !2, line: 691, type: !94)
!935 = distinct !DILexicalBlock(scope: !922, file: !2, line: 690, column: 5)
!936 = distinct !DIAssignID()
!937 = distinct !DIAssignID()
!938 = distinct !DIAssignID()
!939 = !DILocation(line: 0, scope: !922)
!940 = !DILocation(line: 0, scope: !916)
!941 = !DILocation(line: 648, column: 8, scope: !928)
!942 = !DILocation(line: 648, column: 6, scope: !916)
!943 = !DILocation(line: 649, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 649, column: 5)
!945 = distinct !DILexicalBlock(scope: !928, file: !2, line: 648, column: 15)
!946 = !DILocation(line: 649, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 649, column: 5)
!948 = !DILocation(line: 651, column: 13, scope: !927)
!949 = !DILocation(line: 651, column: 11, scope: !928)
!950 = !DILocation(line: 652, column: 12, scope: !951)
!951 = distinct !DILexicalBlock(scope: !927, file: !2, line: 651, column: 21)
!952 = !DILocation(line: 652, column: 5, scope: !951)
!953 = !DILocation(line: 654, column: 13, scope: !926)
!954 = !DILocation(line: 654, column: 11, scope: !927)
!955 = !DILocation(line: 656, column: 12, scope: !956)
!956 = distinct !DILexicalBlock(scope: !926, file: !2, line: 655, column: 3)
!957 = !DILocation(line: 656, column: 5, scope: !956)
!958 = !DILocation(line: 658, column: 13, scope: !925)
!959 = !DILocation(line: 658, column: 11, scope: !926)
!960 = !DILocalVariable(name: "Q", scope: !961, file: !2, line: 463, type: !97)
!961 = distinct !DISubprogram(name: "gamma_inc_a_gt_0", scope: !2, file: !2, line: 460, type: !962, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!45, !95, !95, !96}
!964 = !{!965, !966, !967, !960, !968, !969, !970}
!965 = !DILocalVariable(name: "a", arg: 1, scope: !961, file: !2, line: 460, type: !95)
!966 = !DILocalVariable(name: "x", arg: 2, scope: !961, file: !2, line: 460, type: !95)
!967 = !DILocalVariable(name: "result", arg: 3, scope: !961, file: !2, line: 460, type: !96)
!968 = !DILocalVariable(name: "G", scope: !961, file: !2, line: 464, type: !97)
!969 = !DILocalVariable(name: "stat_Q", scope: !961, file: !2, line: 465, type: !224)
!970 = !DILocalVariable(name: "stat_G", scope: !961, file: !2, line: 466, type: !224)
!971 = !DILocation(line: 0, scope: !961, inlinedAt: !972)
!972 = distinct !DILocation(line: 660, column: 12, scope: !973)
!973 = distinct !DILexicalBlock(scope: !925, file: !2, line: 659, column: 3)
!974 = !DILocation(line: 463, column: 3, scope: !961, inlinedAt: !972)
!975 = !DILocation(line: 464, column: 3, scope: !961, inlinedAt: !972)
!976 = !DILocation(line: 465, column: 22, scope: !961, inlinedAt: !972)
!977 = !DILocation(line: 466, column: 22, scope: !961, inlinedAt: !972)
!978 = !DILocation(line: 468, column: 19, scope: !961, inlinedAt: !972)
!979 = !DILocation(line: 468, column: 27, scope: !961, inlinedAt: !972)
!980 = !DILocation(line: 468, column: 23, scope: !961, inlinedAt: !972)
!981 = !DILocation(line: 468, column: 15, scope: !961, inlinedAt: !972)
!982 = !DILocation(line: 469, column: 32, scope: !961, inlinedAt: !972)
!983 = !DILocation(line: 469, column: 28, scope: !961, inlinedAt: !972)
!984 = !DILocation(line: 469, column: 17, scope: !961, inlinedAt: !972)
!985 = !DILocation(line: 469, column: 46, scope: !961, inlinedAt: !972)
!986 = !DILocation(line: 469, column: 50, scope: !961, inlinedAt: !972)
!987 = !DILocation(line: 469, column: 39, scope: !961, inlinedAt: !972)
!988 = !DILocation(line: 469, column: 37, scope: !961, inlinedAt: !972)
!989 = !DILocation(line: 469, column: 11, scope: !961, inlinedAt: !972)
!990 = !DILocation(line: 470, column: 40, scope: !961, inlinedAt: !972)
!991 = !DILocation(line: 470, column: 38, scope: !961, inlinedAt: !972)
!992 = !DILocation(line: 470, column: 15, scope: !961, inlinedAt: !972)
!993 = !DILocation(line: 472, column: 10, scope: !961, inlinedAt: !972)
!994 = !DILocation(line: 473, column: 1, scope: !961, inlinedAt: !972)
!995 = !DILocation(line: 660, column: 5, scope: !973)
!996 = !DILocation(line: 662, column: 13, scope: !924)
!997 = !DILocation(line: 662, column: 11, scope: !925)
!998 = !DILocation(line: 669, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !924, file: !2, line: 663, column: 3)
!1000 = !DILocation(line: 669, column: 5, scope: !999)
!1001 = !DILocation(line: 671, column: 11, scope: !923)
!1002 = !DILocation(line: 671, column: 19, scope: !923)
!1003 = !DILocation(line: 671, column: 11, scope: !924)
!1004 = !DILocation(line: 673, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !923, file: !2, line: 672, column: 3)
!1006 = !DILocation(line: 673, column: 5, scope: !1005)
!1007 = !DILocation(line: 678, column: 23, scope: !922)
!1008 = !DILocation(line: 679, column: 25, scope: !922)
!1009 = !DILocation(line: 681, column: 5, scope: !922)
!1010 = !DILocation(line: 682, column: 32, scope: !922)
!1011 = !DILocation(line: 682, column: 29, scope: !922)
!1012 = !DILocation(line: 682, column: 40, scope: !922)
!1013 = !DILocation(line: 683, column: 40, scope: !922)
!1014 = !DILocation(line: 686, column: 23, scope: !922)
!1015 = !DILocation(line: 689, column: 5, scope: !922)
!1016 = !DILocation(line: 691, column: 43, scope: !935)
!1017 = !DILocation(line: 691, column: 49, scope: !935)
!1018 = !DILocation(line: 691, column: 48, scope: !935)
!1019 = !DILocation(line: 691, column: 35, scope: !935)
!1020 = !DILocation(line: 691, column: 28, scope: !935)
!1021 = !DILocation(line: 0, scope: !935)
!1022 = !DILocation(line: 692, column: 18, scope: !935)
!1023 = !DILocation(line: 692, column: 27, scope: !935)
!1024 = !DILocation(line: 694, column: 19, scope: !922)
!1025 = !DILocation(line: 694, column: 5, scope: !935)
!1026 = distinct !{!1026, !1015, !1027, !293}
!1027 = !DILocation(line: 694, column: 22, scope: !922)
!1028 = !DILocation(line: 696, column: 17, scope: !922)
!1029 = !DILocation(line: 697, column: 28, scope: !922)
!1030 = !DILocation(line: 697, column: 22, scope: !922)
!1031 = !DILocation(line: 697, column: 38, scope: !922)
!1032 = !DILocation(line: 697, column: 55, scope: !922)
!1033 = !DILocation(line: 697, column: 54, scope: !922)
!1034 = !DILocation(line: 697, column: 13, scope: !922)
!1035 = !DILocation(line: 697, column: 17, scope: !922)
!1036 = !DILocation(line: 699, column: 3, scope: !923)
!1037 = !DILocation(line: 0, scope: !928)
!1038 = !DILocation(line: 701, column: 1, scope: !916)
!1039 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !1040, file: !1040, line: 66, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!45, !94, !96}
!1043 = !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !1044, file: !1044, line: 46, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "../gsl/gsl_sf_expint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa6433b039d5ce651e3386bd71654e9c")
!1045 = distinct !DIAssignID()
!1046 = !DILocation(line: 0, scope: !961)
!1047 = distinct !DIAssignID()
!1048 = !DILocation(line: 463, column: 3, scope: !961)
!1049 = !DILocation(line: 464, column: 3, scope: !961)
!1050 = !DILocation(line: 465, column: 22, scope: !961)
!1051 = !DILocation(line: 466, column: 22, scope: !961)
!1052 = !DILocation(line: 468, column: 19, scope: !961)
!1053 = !DILocation(line: 468, column: 27, scope: !961)
!1054 = !DILocation(line: 468, column: 23, scope: !961)
!1055 = !DILocation(line: 468, column: 15, scope: !961)
!1056 = !DILocation(line: 469, column: 32, scope: !961)
!1057 = !DILocation(line: 469, column: 28, scope: !961)
!1058 = !DILocation(line: 469, column: 17, scope: !961)
!1059 = !DILocation(line: 469, column: 46, scope: !961)
!1060 = !DILocation(line: 469, column: 50, scope: !961)
!1061 = !DILocation(line: 469, column: 39, scope: !961)
!1062 = !DILocation(line: 469, column: 37, scope: !961)
!1063 = !DILocation(line: 469, column: 11, scope: !961)
!1064 = !DILocation(line: 470, column: 40, scope: !961)
!1065 = !DILocation(line: 470, column: 38, scope: !961)
!1066 = !DILocation(line: 470, column: 15, scope: !961)
!1067 = !DILocation(line: 472, column: 10, scope: !961)
!1068 = !DILocation(line: 473, column: 1, scope: !961)
!1069 = !DILocation(line: 472, column: 3, scope: !961)
!1070 = distinct !DISubprogram(name: "gamma_inc_CF", scope: !2, file: !2, line: 477, type: !962, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1072 = !DILocalVariable(name: "a", arg: 1, scope: !1070, file: !2, line: 477, type: !95)
!1073 = !DILocalVariable(name: "x", arg: 2, scope: !1070, file: !2, line: 477, type: !95)
!1074 = !DILocalVariable(name: "result", arg: 3, scope: !1070, file: !2, line: 477, type: !96)
!1075 = !DILocalVariable(name: "F", scope: !1070, file: !2, line: 479, type: !97)
!1076 = !DILocalVariable(name: "pre", scope: !1070, file: !2, line: 480, type: !97)
!1077 = !DILocalVariable(name: "am1lgx", scope: !1070, file: !2, line: 481, type: !94)
!1078 = !DILocalVariable(name: "stat_F", scope: !1070, file: !2, line: 482, type: !224)
!1079 = !DILocalVariable(name: "stat_E", scope: !1070, file: !2, line: 483, type: !224)
!1080 = distinct !DIAssignID()
!1081 = !DILocation(line: 0, scope: !1070)
!1082 = !DILocation(line: 480, column: 3, scope: !1070)
!1083 = !DILocation(line: 481, column: 33, scope: !1070)
!1084 = !DILocation(line: 0, scope: !664, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 482, column: 22, scope: !1070)
!1086 = !DILocation(line: 259, column: 3, scope: !677, inlinedAt: !1085)
!1087 = !DILocation(line: 264, column: 8, scope: !683, inlinedAt: !1085)
!1088 = !DILocation(line: 0, scope: !675, inlinedAt: !1085)
!1089 = !DILocation(line: 264, column: 8, scope: !675, inlinedAt: !1085)
!1090 = !DILocation(line: 265, column: 18, scope: !683, inlinedAt: !1085)
!1091 = !DILocation(line: 265, column: 16, scope: !683, inlinedAt: !1085)
!1092 = !DILocation(line: 265, column: 15, scope: !683, inlinedAt: !1085)
!1093 = !DILocation(line: 265, column: 7, scope: !683, inlinedAt: !1085)
!1094 = !DILocation(line: 267, column: 17, scope: !683, inlinedAt: !1085)
!1095 = !DILocation(line: 267, column: 16, scope: !683, inlinedAt: !1085)
!1096 = !DILocation(line: 267, column: 18, scope: !683, inlinedAt: !1085)
!1097 = !DILocation(line: 0, scope: !683, inlinedAt: !1085)
!1098 = !DILocation(line: 269, column: 19, scope: !675, inlinedAt: !1085)
!1099 = !DILocation(line: 269, column: 14, scope: !675, inlinedAt: !1085)
!1100 = !DILocation(line: 270, column: 10, scope: !697, inlinedAt: !1085)
!1101 = !DILocation(line: 270, column: 19, scope: !697, inlinedAt: !1085)
!1102 = !DILocation(line: 275, column: 14, scope: !675, inlinedAt: !1085)
!1103 = !DILocation(line: 272, column: 18, scope: !675, inlinedAt: !1085)
!1104 = !DILocation(line: 272, column: 14, scope: !675, inlinedAt: !1085)
!1105 = !DILocation(line: 273, column: 10, scope: !703, inlinedAt: !1085)
!1106 = !DILocation(line: 273, column: 19, scope: !703, inlinedAt: !1085)
!1107 = !DILocation(line: 273, column: 10, scope: !675, inlinedAt: !1085)
!1108 = !DILocation(line: 276, column: 16, scope: !675, inlinedAt: !1085)
!1109 = !DILocation(line: 277, column: 8, scope: !675, inlinedAt: !1085)
!1110 = !DILocation(line: 278, column: 18, scope: !709, inlinedAt: !1085)
!1111 = !DILocation(line: 278, column: 8, scope: !709, inlinedAt: !1085)
!1112 = !DILocation(line: 278, column: 24, scope: !709, inlinedAt: !1085)
!1113 = !DILocation(line: 259, column: 29, scope: !676, inlinedAt: !1085)
!1114 = !DILocation(line: 259, column: 19, scope: !676, inlinedAt: !1085)
!1115 = distinct !{!1115, !1086, !1116, !293}
!1116 = !DILocation(line: 279, column: 3, scope: !677, inlinedAt: !1085)
!1117 = !DILocation(line: 285, column: 8, scope: !717, inlinedAt: !1085)
!1118 = !DILocation(line: 285, column: 6, scope: !664, inlinedAt: !1085)
!1119 = !DILocation(line: 286, column: 5, scope: !720, inlinedAt: !1085)
!1120 = !DILocation(line: 0, scope: !717, inlinedAt: !1085)
!1121 = !DILocation(line: 282, column: 39, scope: !664, inlinedAt: !1085)
!1122 = !DILocation(line: 282, column: 37, scope: !664, inlinedAt: !1085)
!1123 = !DILocation(line: 283, column: 47, scope: !664, inlinedAt: !1085)
!1124 = !DILocation(line: 283, column: 46, scope: !664, inlinedAt: !1085)
!1125 = !DILocation(line: 283, column: 41, scope: !664, inlinedAt: !1085)
!1126 = !DILocation(line: 283, column: 34, scope: !664, inlinedAt: !1085)
!1127 = !DILocation(line: 283, column: 50, scope: !664, inlinedAt: !1085)
!1128 = !DILocation(line: 283, column: 15, scope: !664, inlinedAt: !1085)
!1129 = !DILocation(line: 481, column: 27, scope: !1070)
!1130 = !DILocation(line: 481, column: 32, scope: !1070)
!1131 = !DILocation(line: 483, column: 46, scope: !1070)
!1132 = !DILocation(line: 483, column: 67, scope: !1070)
!1133 = !DILocation(line: 483, column: 66, scope: !1070)
!1134 = !DILocation(line: 483, column: 22, scope: !1070)
!1135 = !DILocation(line: 485, column: 29, scope: !1070)
!1136 = !DILocation(line: 485, column: 23, scope: !1070)
!1137 = !DILocation(line: 485, column: 15, scope: !1070)
!1138 = !DILocation(line: 486, column: 28, scope: !1070)
!1139 = !DILocation(line: 486, column: 17, scope: !1070)
!1140 = !DILocation(line: 486, column: 58, scope: !1070)
!1141 = !DILocation(line: 486, column: 52, scope: !1070)
!1142 = !DILocation(line: 486, column: 41, scope: !1070)
!1143 = !DILocation(line: 486, column: 39, scope: !1070)
!1144 = !DILocation(line: 486, column: 11, scope: !1070)
!1145 = !DILocation(line: 487, column: 42, scope: !1070)
!1146 = !DILocation(line: 487, column: 40, scope: !1070)
!1147 = !DILocation(line: 487, column: 15, scope: !1070)
!1148 = !DILocation(line: 489, column: 10, scope: !1070)
!1149 = !DILocation(line: 490, column: 1, scope: !1070)
!1150 = !DILocation(line: 489, column: 3, scope: !1070)
!1151 = distinct !DISubprogram(name: "gamma_inc_series", scope: !2, file: !2, line: 445, type: !962, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1153 = !DILocalVariable(name: "a", arg: 1, scope: !1151, file: !2, line: 445, type: !95)
!1154 = !DILocalVariable(name: "x", arg: 2, scope: !1151, file: !2, line: 445, type: !95)
!1155 = !DILocalVariable(name: "result", arg: 3, scope: !1151, file: !2, line: 445, type: !96)
!1156 = !DILocalVariable(name: "Q", scope: !1151, file: !2, line: 447, type: !97)
!1157 = !DILocalVariable(name: "G", scope: !1151, file: !2, line: 448, type: !97)
!1158 = !DILocalVariable(name: "stat_Q", scope: !1151, file: !2, line: 449, type: !224)
!1159 = !DILocalVariable(name: "stat_G", scope: !1151, file: !2, line: 450, type: !224)
!1160 = distinct !DIAssignID()
!1161 = !DILocation(line: 0, scope: !1151)
!1162 = distinct !DIAssignID()
!1163 = !DILocation(line: 447, column: 3, scope: !1151)
!1164 = !DILocation(line: 448, column: 3, scope: !1151)
!1165 = !DILocation(line: 449, column: 22, scope: !1151)
!1166 = !DILocation(line: 450, column: 22, scope: !1151)
!1167 = !DILocation(line: 451, column: 19, scope: !1151)
!1168 = !DILocation(line: 451, column: 27, scope: !1151)
!1169 = !DILocation(line: 451, column: 23, scope: !1151)
!1170 = !DILocation(line: 451, column: 15, scope: !1151)
!1171 = !DILocation(line: 452, column: 32, scope: !1151)
!1172 = !DILocation(line: 452, column: 28, scope: !1151)
!1173 = !DILocation(line: 452, column: 17, scope: !1151)
!1174 = !DILocation(line: 452, column: 46, scope: !1151)
!1175 = !DILocation(line: 452, column: 50, scope: !1151)
!1176 = !DILocation(line: 452, column: 39, scope: !1151)
!1177 = !DILocation(line: 452, column: 37, scope: !1151)
!1178 = !DILocation(line: 452, column: 11, scope: !1151)
!1179 = !DILocation(line: 453, column: 42, scope: !1151)
!1180 = !DILocation(line: 453, column: 40, scope: !1151)
!1181 = !DILocation(line: 453, column: 15, scope: !1151)
!1182 = !DILocation(line: 455, column: 10, scope: !1151)
!1183 = !DILocation(line: 456, column: 1, scope: !1151)
!1184 = !DILocation(line: 455, column: 3, scope: !1151)
!1185 = !DISubprogram(name: "exp", scope: !809, file: !809, line: 95, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubprogram(name: "log", scope: !809, file: !809, line: 104, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_P", scope: !2, file: !2, line: 708, type: !1188, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!95, !94, !94}
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DILocalVariable(name: "a", arg: 1, scope: !1187, file: !2, line: 708, type: !94)
!1192 = !DILocalVariable(name: "x", arg: 2, scope: !1187, file: !2, line: 708, type: !94)
!1193 = !DILocalVariable(name: "result", scope: !1187, file: !2, line: 710, type: !97)
!1194 = !DILocalVariable(name: "status", scope: !1187, file: !2, line: 710, type: !45)
!1195 = distinct !DIAssignID()
!1196 = !DILocation(line: 0, scope: !1187)
!1197 = !DILocation(line: 710, column: 3, scope: !1187)
!1198 = !DILocation(line: 710, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 710, column: 3)
!1200 = !DILocation(line: 710, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 710, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 710, column: 3)
!1203 = !DILocation(line: 711, column: 1, scope: !1187)
!1204 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_Q", scope: !2, file: !2, line: 713, type: !1188, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DILocalVariable(name: "a", arg: 1, scope: !1204, file: !2, line: 713, type: !94)
!1207 = !DILocalVariable(name: "x", arg: 2, scope: !1204, file: !2, line: 713, type: !94)
!1208 = !DILocalVariable(name: "result", scope: !1204, file: !2, line: 715, type: !97)
!1209 = !DILocalVariable(name: "status", scope: !1204, file: !2, line: 715, type: !45)
!1210 = distinct !DIAssignID()
!1211 = !DILocation(line: 0, scope: !1204)
!1212 = !DILocation(line: 715, column: 3, scope: !1204)
!1213 = !DILocation(line: 715, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 715, column: 3)
!1215 = !DILocation(line: 715, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 715, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 715, column: 3)
!1218 = !DILocation(line: 716, column: 1, scope: !1204)
!1219 = distinct !DISubprogram(name: "gsl_sf_gamma_inc", scope: !2, file: !2, line: 718, type: !1188, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1220)
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DILocalVariable(name: "a", arg: 1, scope: !1219, file: !2, line: 718, type: !94)
!1222 = !DILocalVariable(name: "x", arg: 2, scope: !1219, file: !2, line: 718, type: !94)
!1223 = !DILocalVariable(name: "result", scope: !1219, file: !2, line: 720, type: !97)
!1224 = !DILocalVariable(name: "status", scope: !1219, file: !2, line: 720, type: !45)
!1225 = distinct !DIAssignID()
!1226 = !DILocation(line: 0, scope: !1219)
!1227 = !DILocation(line: 720, column: 4, scope: !1219)
!1228 = !DILocation(line: 720, column: 4, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 720, column: 4)
!1230 = !DILocation(line: 720, column: 4, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 720, column: 4)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 720, column: 4)
!1233 = !DILocation(line: 721, column: 1, scope: !1219)
!1234 = distinct !DISubprogram(name: "gamma_inc_D", scope: !2, file: !2, line: 39, type: !1235, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1236)
!1235 = !DISubroutineType(cc: DW_CC_nocall, types: !93)
!1236 = !{!1237, !1238, !1239, !1240, !1243, !1244, !1246, !1247, !1248, !1251, !1252}
!1237 = !DILocalVariable(name: "a", arg: 1, scope: !1234, file: !2, line: 39, type: !94)
!1238 = !DILocalVariable(name: "x", arg: 2, scope: !1234, file: !2, line: 39, type: !94)
!1239 = !DILocalVariable(name: "result", arg: 3, scope: !1234, file: !2, line: 39, type: !96)
!1240 = !DILocalVariable(name: "lnr", scope: !1241, file: !2, line: 42, type: !95)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 41, column: 16)
!1242 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 41, column: 6)
!1243 = !DILocalVariable(name: "lg", scope: !1241, file: !2, line: 43, type: !97)
!1244 = !DILocalVariable(name: "gstar", scope: !1245, file: !2, line: 51, type: !97)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 50, column: 8)
!1246 = !DILocalVariable(name: "ln_term", scope: !1245, file: !2, line: 52, type: !97)
!1247 = !DILocalVariable(name: "term1", scope: !1245, file: !2, line: 53, type: !95)
!1248 = !DILocalVariable(name: "u", scope: !1249, file: !2, line: 55, type: !95)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 54, column: 20)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 54, column: 9)
!1251 = !DILocalVariable(name: "ln_u", scope: !1249, file: !2, line: 56, type: !95)
!1252 = !DILocalVariable(name: "mu", scope: !1253, file: !2, line: 60, type: !95)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 59, column: 12)
!1254 = distinct !DIAssignID()
!1255 = !DILocation(line: 0, scope: !1241)
!1256 = distinct !DIAssignID()
!1257 = !DILocation(line: 0, scope: !1245)
!1258 = distinct !DIAssignID()
!1259 = !DILocation(line: 0, scope: !1234)
!1260 = !DILocation(line: 41, column: 8, scope: !1242)
!1261 = !DILocation(line: 41, column: 6, scope: !1234)
!1262 = !DILocation(line: 43, column: 5, scope: !1241)
!1263 = !DILocation(line: 44, column: 23, scope: !1241)
!1264 = !DILocation(line: 44, column: 5, scope: !1241)
!1265 = !DILocation(line: 45, column: 15, scope: !1241)
!1266 = !DILocation(line: 45, column: 13, scope: !1241)
!1267 = !DILocation(line: 45, column: 22, scope: !1241)
!1268 = !DILocation(line: 45, column: 31, scope: !1241)
!1269 = !DILocation(line: 45, column: 26, scope: !1241)
!1270 = !DILocation(line: 46, column: 19, scope: !1241)
!1271 = !DILocation(line: 46, column: 17, scope: !1241)
!1272 = !DILocation(line: 47, column: 44, scope: !1241)
!1273 = !DILocation(line: 47, column: 54, scope: !1241)
!1274 = !DILocation(line: 47, column: 41, scope: !1241)
!1275 = !DILocation(line: 47, column: 63, scope: !1241)
!1276 = !DILocation(line: 47, column: 61, scope: !1241)
!1277 = !DILocation(line: 47, column: 13, scope: !1241)
!1278 = !DILocation(line: 47, column: 17, scope: !1241)
!1279 = !DILocation(line: 49, column: 3, scope: !1242)
!1280 = !DILocation(line: 51, column: 5, scope: !1245)
!1281 = !DILocation(line: 52, column: 5, scope: !1245)
!1282 = !DILocation(line: 54, column: 16, scope: !1250)
!1283 = !DILocation(line: 54, column: 11, scope: !1250)
!1284 = !DILocation(line: 54, column: 9, scope: !1245)
!1285 = !DILocation(line: 55, column: 19, scope: !1249)
!1286 = !DILocation(line: 0, scope: !1249)
!1287 = !DILocation(line: 56, column: 21, scope: !1249)
!1288 = !DILocation(line: 57, column: 26, scope: !1249)
!1289 = !DILocation(line: 57, column: 30, scope: !1249)
!1290 = !DILocation(line: 57, column: 19, scope: !1249)
!1291 = distinct !DIAssignID()
!1292 = !DILocation(line: 58, column: 22, scope: !1249)
!1293 = !DILocation(line: 58, column: 35, scope: !1249)
!1294 = !DILocation(line: 58, column: 33, scope: !1249)
!1295 = !DILocation(line: 58, column: 43, scope: !1249)
!1296 = !DILocation(line: 58, column: 50, scope: !1249)
!1297 = !DILocation(line: 58, column: 15, scope: !1249)
!1298 = !DILocation(line: 58, column: 19, scope: !1249)
!1299 = distinct !DIAssignID()
!1300 = !DILocation(line: 59, column: 5, scope: !1249)
!1301 = !DILocation(line: 60, column: 21, scope: !1253)
!1302 = !DILocation(line: 60, column: 24, scope: !1253)
!1303 = !DILocation(line: 0, scope: !1253)
!1304 = !DILocation(line: 61, column: 7, scope: !1253)
!1305 = !DILocation(line: 64, column: 40, scope: !1253)
!1306 = !DILocation(line: 64, column: 38, scope: !1253)
!1307 = !DILocation(line: 64, column: 15, scope: !1253)
!1308 = !DILocation(line: 64, column: 19, scope: !1253)
!1309 = distinct !DIAssignID()
!1310 = !DILocation(line: 66, column: 5, scope: !1245)
!1311 = !DILocation(line: 67, column: 27, scope: !1245)
!1312 = !DILocation(line: 67, column: 18, scope: !1245)
!1313 = !DILocation(line: 67, column: 13, scope: !1245)
!1314 = !DILocation(line: 67, column: 45, scope: !1245)
!1315 = !DILocation(line: 67, column: 32, scope: !1245)
!1316 = !DILocation(line: 67, column: 31, scope: !1245)
!1317 = !DILocation(line: 68, column: 32, scope: !1245)
!1318 = !DILocation(line: 68, column: 25, scope: !1245)
!1319 = !DILocation(line: 68, column: 18, scope: !1245)
!1320 = !DILocation(line: 69, column: 60, scope: !1245)
!1321 = !DILocation(line: 69, column: 51, scope: !1245)
!1322 = !DILocation(line: 69, column: 45, scope: !1245)
!1323 = !DILocation(line: 69, column: 65, scope: !1245)
!1324 = !DILocation(line: 69, column: 42, scope: !1245)
!1325 = !DILocation(line: 69, column: 74, scope: !1245)
!1326 = !DILocation(line: 69, column: 72, scope: !1245)
!1327 = !DILocation(line: 69, column: 13, scope: !1245)
!1328 = !DILocation(line: 71, column: 20, scope: !1245)
!1329 = !DILocation(line: 71, column: 38, scope: !1245)
!1330 = !DILocation(line: 71, column: 28, scope: !1245)
!1331 = !DILocation(line: 71, column: 42, scope: !1245)
!1332 = !DILocation(line: 71, column: 17, scope: !1245)
!1333 = !DILocation(line: 72, column: 26, scope: !1245)
!1334 = !DILocation(line: 72, column: 30, scope: !1245)
!1335 = !DILocation(line: 72, column: 29, scope: !1245)
!1336 = !DILocation(line: 72, column: 46, scope: !1245)
!1337 = !DILocation(line: 72, column: 17, scope: !1245)
!1338 = !DILocation(line: 74, column: 3, scope: !1242)
!1339 = !DILocation(line: 76, column: 1, scope: !1234)
!1340 = !DISubprogram(name: "gsl_sf_exprel_n_CF_e", scope: !1341, file: !1341, line: 105, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1342 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !1040, file: !1040, line: 47, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!45, !95, !96}
!1345 = !DISubprogram(name: "gsl_sf_log_1plusx_mx_e", scope: !1346, file: !1346, line: 77, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!1347 = !DISubprogram(name: "gsl_sf_gammastar_e", scope: !1040, file: !1040, line: 77, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubprogram(name: "gsl_sf_erfc_e", scope: !1349, file: !1349, line: 45, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DIFile(filename: "../gsl/gsl_sf_erf.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "cce330efcc426add009546150e943c76")
!1350 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1341, file: !1341, line: 110, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
