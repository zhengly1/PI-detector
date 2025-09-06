; ModuleID = 'gamma_inc.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 1) #7, !dbg !138
  br label %63, !dbg !138

11:                                               ; preds = %3
  %12 = fcmp oeq double %1, 0.000000e+00, !dbg !140
  br i1 %12, label %13, label %15, !dbg !141

13:                                               ; preds = %11
  store double 1.000000e+00, ptr %2, align 8, !dbg !142, !tbaa !132
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !144
  store double 0.000000e+00, ptr %14, align 8, !dbg !145, !tbaa !137
  br label %63, !dbg !146

15:                                               ; preds = %11
  %16 = fcmp oeq double %0, 0.000000e+00, !dbg !147
  br i1 %16, label %17, label %18, !dbg !148

17:                                               ; preds = %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !149
  br label %63, !dbg !151

18:                                               ; preds = %15
  %19 = fmul double %0, 5.000000e-01, !dbg !152
  %20 = fcmp ult double %19, %1, !dbg !153
  br i1 %20, label %29, label %21, !dbg !154

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !155
  %22 = call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !113, metadata !DIExpression()), !dbg !123
  %23 = load double, ptr %4, align 8, !dbg !157, !tbaa !132
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !158
  store double %handler_result, ptr %2, align 8, !dbg !158, !tbaa !132
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !159
  %25 = load double, ptr %24, align 8, !dbg !159, !tbaa !137
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !160
  %27 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !161
  %28 = fmul double %27, 0x3CC0000000000000, !dbg !162
  %handler_result1 = call double @fAddHandlerDouble(double %25, double %28), !dbg !163
  store double %handler_result1, ptr %26, align 8, !dbg !163, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !164
  br label %63

29:                                               ; preds = %18
  %30 = fcmp ult double %0, 1.000000e+06, !dbg !165
  br i1 %30, label %36, label %31, !dbg !166

31:                                               ; preds = %29
  %handler_result2 = call double @fSubHandlerDouble(double %1, double %0), !dbg !167
  %32 = fmul double %handler_result2, %handler_result2, !dbg !167
  %33 = fcmp olt double %32, %0, !dbg !168
  br i1 %33, label %34, label %36, !dbg !169

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr noundef %2), !dbg !170
  br label %63, !dbg !172

36:                                               ; preds = %31, %29
  %37 = fcmp olt double %0, 2.000000e-01, !dbg !173
  %38 = fcmp olt double %1, 5.000000e+00
  %39 = and i1 %37, %38, !dbg !174
  br i1 %39, label %40, label %42, !dbg !174

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !175, !range !177
  br label %63, !dbg !178

42:                                               ; preds = %36
  %43 = fcmp ugt double %0, %1, !dbg !179
  br i1 %43, label %50, label %44, !dbg !180

44:                                               ; preds = %42
  %45 = fcmp ugt double %1, 1.000000e+06, !dbg !181
  br i1 %45, label %48, label %46, !dbg !184

46:                                               ; preds = %44
  %47 = tail call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !185
  br label %63, !dbg !187

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr noundef %2), !dbg !188, !range !177
  br label %63, !dbg !190

50:                                               ; preds = %42
  %51 = tail call double @sqrt(double noundef %0) #7, !dbg !191
  %handler_result3 = call double @fSubHandlerDouble(double %0, double %51), !dbg !192
  %52 = fcmp olt double %handler_result3, %1, !dbg !192
  br i1 %52, label %53, label %55, !dbg !193

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !194
  br label %63, !dbg !196

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !197
  %56 = call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !121, metadata !DIExpression()), !dbg !125
  %57 = load double, ptr %5, align 8, !dbg !199, !tbaa !132
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %57), !dbg !200
  store double %handler_result4, ptr %2, align 8, !dbg !200, !tbaa !132
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !201
  %59 = load double, ptr %58, align 8, !dbg !201, !tbaa !137
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !202
  %61 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !203
  %62 = fmul double %61, 0x3CC0000000000000, !dbg !204
  %handler_result5 = call double @fAddHandlerDouble(double %59, double %62), !dbg !205
  store double %handler_result5, ptr %60, align 8, !dbg !205, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !206
  br label %63

63:                                               ; preds = %55, %53, %48, %46, %40, %34, %21, %17, %13, %9
  %64 = phi i32 [ 1, %9 ], [ 0, %13 ], [ 0, %17 ], [ %22, %21 ], [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %49, %48 ], [ %54, %53 ], [ %56, %55 ], !dbg !207
  ret i32 %64, !dbg !208
}

declare !dbg !209 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !214 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !221, metadata !DIExpression(), metadata !235, metadata ptr %4, metadata !DIExpression()), !dbg !236
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !237
  call void @llvm.dbg.assign(metadata i1 undef, metadata !223, metadata !DIExpression(), metadata !237, metadata ptr %5, metadata !DIExpression()), !dbg !238
  tail call void @llvm.dbg.value(metadata double %0, metadata !216, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %1, metadata !217, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !218, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 10000, metadata !219, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !239
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !240
  tail call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !236
  %6 = fmul double %0, 0x3FEFD70A3D70A3D7, !dbg !241
  %7 = fcmp olt double %6, %1, !dbg !242
  %8 = fcmp ogt double %0, 1.000000e+05
  %9 = and i1 %8, %7, !dbg !243
  br i1 %9, label %10, label %24, !dbg !243

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !244
  %11 = call i32 @gsl_sf_exprel_n_CF_e(double noundef %0, double noundef %1, ptr noundef nonnull %5) #7, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !226, metadata !DIExpression()), !dbg !238
  %12 = load double, ptr %4, align 8, !dbg !246, !tbaa !132
  %13 = load double, ptr %5, align 8, !dbg !247, !tbaa !132
  %14 = fmul double %12, %13, !dbg !248
  store double %14, ptr %2, align 8, !dbg !249, !tbaa !132
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !250
  %16 = load double, ptr %15, align 8, !dbg !250, !tbaa !137
  %17 = fmul double %12, %16, !dbg !251
  %18 = call double @llvm.fabs.f64(double %17), !dbg !252
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !253
  %20 = load double, ptr %19, align 8, !dbg !253, !tbaa !137
  %21 = fmul double %13, %20, !dbg !254
  %22 = call double @llvm.fabs.f64(double %21), !dbg !255
  %handler_result = call double @fAddHandlerDouble(double %18, double %22), !dbg !256
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !256
  store double %handler_result, ptr %23, align 8, !dbg !257, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !258
  br label %128

24:                                               ; preds = %3
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+04), !dbg !259
  %25 = fcmp olt double %handler_result1, %1, !dbg !259
  br i1 %25, label %26, label %27, !dbg !261

26:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 11) #7, !dbg !262
  br label %128, !dbg !262

27:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !229, metadata !DIExpression()), !dbg !265
  %28 = fcmp ogt double %1, %0, !dbg !266
  %handler_result2 = call double @fSubHandlerDouble(double %1, double %0), !dbg !267
  %29 = select i1 %28, double %handler_result2, double 0.000000e+00, !dbg !267
  %30 = fptosi double %29 to i32, !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !232, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 1, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !229, metadata !DIExpression()), !dbg !265
  %31 = icmp sgt i32 %30, 1, !dbg !268
  br i1 %31, label %32, label %61, !dbg !271

32:                                               ; preds = %27
  %33 = add nsw i32 %30, -1, !dbg !271
  %34 = add nsw i32 %30, -2, !dbg !271
  %35 = and i32 %33, 3, !dbg !271
  %36 = icmp ult i32 %34, 3, !dbg !271
  br i1 %36, label %39, label %37, !dbg !271

37:                                               ; preds = %32
  %38 = and i32 %33, -4, !dbg !271
  br label %65, !dbg !271

39:                                               ; preds = %65, %32
  %40 = phi double [ undef, %32 ], [ %84, %65 ]
  %41 = phi double [ undef, %32 ], [ %handler_result12, %65 ]
  %42 = phi i32 [ 1, %32 ], [ %85, %65 ]
  %43 = phi double [ 1.000000e+00, %32 ], [ %handler_result12, %65 ]
  %44 = phi double [ 1.000000e+00, %32 ], [ %84, %65 ]
  %45 = icmp eq i32 %35, 0, !dbg !271
  br i1 %45, label %57, label %46, !dbg !271

46:                                               ; preds = %46, %39
  %47 = phi i32 [ %54, %46 ], [ %42, %39 ]
  %48 = phi double [ %handler_result4, %46 ], [ %43, %39 ]
  %49 = phi double [ %53, %46 ], [ %44, %39 ]
  %50 = phi i32 [ %55, %46 ], [ 0, %39 ]
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %48, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %49, metadata !229, metadata !DIExpression()), !dbg !265
  %51 = sitofp i32 %47 to double, !dbg !272
  %handler_result3 = call double @fAddHandlerDouble(double %51, double %0), !dbg !274
  %52 = fdiv double %1, %handler_result3, !dbg !274
  %53 = fmul double %49, %52, !dbg !275
  tail call void @llvm.dbg.value(metadata double %53, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result4 = call double @fAddHandlerDouble(double %48, double %53), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !227, metadata !DIExpression()), !dbg !265
  %54 = add nuw nsw i32 %47, 1, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !231, metadata !DIExpression()), !dbg !265
  %55 = add i32 %50, 1, !dbg !271
  %56 = icmp eq i32 %55, %35, !dbg !271
  br i1 %56, label %57, label %46, !dbg !271, !llvm.loop !277

57:                                               ; preds = %46, %39
  %58 = phi double [ %40, %39 ], [ %53, %46 ], !dbg !275
  %59 = phi double [ %41, %39 ], [ %handler_result4, %46 ], !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %59, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %58, metadata !229, metadata !DIExpression()), !dbg !265
  %60 = icmp ult i32 %30, 10000, !dbg !280
  br i1 %60, label %61, label %101, !dbg !283

61:                                               ; preds = %57, %27
  %62 = phi i32 [ 1, %27 ], [ %30, %57 ]
  %63 = phi double [ 1.000000e+00, %27 ], [ %59, %57 ]
  %64 = phi double [ 1.000000e+00, %27 ], [ %58, %57 ]
  br label %88, !dbg !283

65:                                               ; preds = %65, %37
  %66 = phi i32 [ 1, %37 ], [ %85, %65 ]
  %67 = phi double [ 1.000000e+00, %37 ], [ %handler_result12, %65 ]
  %68 = phi double [ 1.000000e+00, %37 ], [ %84, %65 ]
  %69 = phi i32 [ 0, %37 ], [ %86, %65 ]
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %67, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %68, metadata !229, metadata !DIExpression()), !dbg !265
  %70 = sitofp i32 %66 to double, !dbg !272
  %handler_result5 = call double @fAddHandlerDouble(double %70, double %0), !dbg !274
  %71 = fdiv double %1, %handler_result5, !dbg !274
  %72 = fmul double %68, %71, !dbg !275
  tail call void @llvm.dbg.value(metadata double %72, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result6 = call double @fAddHandlerDouble(double %67, double %72), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !227, metadata !DIExpression()), !dbg !265
  %73 = add nuw nsw i32 %66, 1, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %72, metadata !229, metadata !DIExpression()), !dbg !265
  %74 = sitofp i32 %73 to double, !dbg !272
  %handler_result7 = call double @fAddHandlerDouble(double %74, double %0), !dbg !274
  %75 = fdiv double %1, %handler_result7, !dbg !274
  %76 = fmul double %72, %75, !dbg !275
  tail call void @llvm.dbg.value(metadata double %76, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result6, double %76), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !227, metadata !DIExpression()), !dbg !265
  %77 = add nuw nsw i32 %66, 2, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %76, metadata !229, metadata !DIExpression()), !dbg !265
  %78 = sitofp i32 %77 to double, !dbg !272
  %handler_result9 = call double @fAddHandlerDouble(double %78, double %0), !dbg !274
  %79 = fdiv double %1, %handler_result9, !dbg !274
  %80 = fmul double %76, %79, !dbg !275
  tail call void @llvm.dbg.value(metadata double %80, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result8, double %80), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !265
  %81 = add nuw nsw i32 %66, 3, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %80, metadata !229, metadata !DIExpression()), !dbg !265
  %82 = sitofp i32 %81 to double, !dbg !272
  %handler_result11 = call double @fAddHandlerDouble(double %82, double %0), !dbg !274
  %83 = fdiv double %1, %handler_result11, !dbg !274
  %84 = fmul double %80, %83, !dbg !275
  tail call void @llvm.dbg.value(metadata double %84, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result10, double %84), !dbg !276
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !227, metadata !DIExpression()), !dbg !265
  %85 = add nuw nsw i32 %66, 4, !dbg !276
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !231, metadata !DIExpression()), !dbg !265
  %86 = add i32 %69, 4, !dbg !271
  %87 = icmp eq i32 %86, %38, !dbg !271
  br i1 %87, label %39, label %65, !dbg !271, !llvm.loop !284

88:                                               ; preds = %98, %61
  %89 = phi i32 [ %99, %98 ], [ %62, %61 ]
  %90 = phi double [ %handler_result14, %98 ], [ %63, %61 ]
  %91 = phi double [ %94, %98 ], [ %64, %61 ]
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %90, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %91, metadata !229, metadata !DIExpression()), !dbg !265
  %92 = sitofp i32 %89 to double, !dbg !287
  %handler_result13 = call double @fAddHandlerDouble(double %92, double %0), !dbg !289
  %93 = fdiv double %1, %handler_result13, !dbg !289
  %94 = fmul double %91, %93, !dbg !290
  tail call void @llvm.dbg.value(metadata double %94, metadata !229, metadata !DIExpression()), !dbg !265
  %handler_result14 = call double @fAddHandlerDouble(double %90, double %94), !dbg !291
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !265
  %95 = fdiv double %94, %handler_result14, !dbg !291
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !293
  %97 = fcmp olt double %96, 0x3CB0000000000000, !dbg !294
  br i1 %97, label %101, label %98, !dbg !295

98:                                               ; preds = %88
  %99 = add nuw i32 %89, 1, !dbg !296
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !231, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %94, metadata !229, metadata !DIExpression()), !dbg !265
  %100 = icmp eq i32 %99, 10000, !dbg !280
  br i1 %100, label %101, label %88, !dbg !283, !llvm.loop !297

101:                                              ; preds = %98, %88, %57
  %102 = phi i32 [ %30, %57 ], [ %89, %88 ], [ 10000, %98 ], !dbg !265
  %103 = phi double [ %58, %57 ], [ %94, %88 ], [ %94, %98 ], !dbg !265
  %104 = phi double [ %59, %57 ], [ %handler_result14, %88 ], [ %handler_result14, %98 ], !dbg !265
  tail call void @llvm.dbg.value(metadata double %104, metadata !227, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %103, metadata !229, metadata !DIExpression()), !dbg !265
  %105 = sitofp i32 %102 to double, !dbg !299
  %handler_result15 = call double @fAddHandlerDouble(double %105, double %0), !dbg !300
  %106 = fdiv double %1, %handler_result15, !dbg !300
  %107 = fmul double %106, %103, !dbg !301
  tail call void @llvm.dbg.value(metadata double %107, metadata !233, metadata !DIExpression()), !dbg !302
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 1.000000e+00), !dbg !303
  %108 = fdiv double %1, %handler_result16, !dbg !303
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %108), !dbg !304
  %109 = fdiv double %107, %handler_result17, !dbg !304
  tail call void @llvm.dbg.value(metadata double %109, metadata !230, metadata !DIExpression()), !dbg !265
  %110 = load double, ptr %4, align 8, !dbg !305, !tbaa !132
  %111 = fmul double %104, %110, !dbg !306
  store double %111, ptr %2, align 8, !dbg !307, !tbaa !132
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !308
  %113 = load double, ptr %112, align 8, !dbg !308, !tbaa !137
  %114 = tail call double @llvm.fabs.f64(double %104), !dbg !309
  %115 = fmul double %114, %113, !dbg !310
  %116 = fmul double %110, %109, !dbg !311
  %117 = tail call double @llvm.fabs.f64(double %116), !dbg !312
  %handler_result18 = call double @fAddHandlerDouble(double %117, double %115), !dbg !313
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !313
  %handler_result19 = call double @fAddHandlerDouble(double %105, double 1.000000e+00), !dbg !314
  %119 = fmul double %handler_result19, 0x3CB0000000000000, !dbg !314
  %120 = tail call double @llvm.fabs.f64(double %111), !dbg !315
  %121 = fmul double %119, %120, !dbg !316
  %handler_result20 = call double @fAddHandlerDouble(double %121, double %handler_result18), !dbg !317
  store double %handler_result20, ptr %118, align 8, !dbg !317, !tbaa !137
  %122 = icmp eq i32 %102, 10000, !dbg !318
  br i1 %122, label %123, label %128, !dbg !320

123:                                              ; preds = %101
  %124 = fdiv double %109, %104, !dbg !321
  %125 = tail call double @llvm.fabs.f64(double %124), !dbg !322
  %126 = fcmp ogt double %125, 0x3E50000000000000, !dbg !323
  br i1 %126, label %127, label %128, !dbg !324

127:                                              ; preds = %123
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 146, i32 noundef 11) #7, !dbg !325
  br label %128, !dbg !325

128:                                              ; preds = %127, %123, %101, %26, %10
  %129 = phi i32 [ %11, %10 ], [ 11, %26 ], [ 11, %127 ], [ 0, %123 ], [ 0, %101 ], !dbg !236
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !327
  ret i32 %129, !dbg !327
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !328 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !335, metadata !DIExpression(), metadata !346, metadata ptr %4, metadata !DIExpression()), !dbg !347
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !348, metadata ptr %5, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %0, metadata !330, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %1, metadata !331, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !347
  %6 = tail call double @sqrt(double noundef %0) #7, !dbg !349
  tail call void @llvm.dbg.value(metadata double %6, metadata !333, metadata !DIExpression()), !dbg !347
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !350
  %7 = fdiv double %handler_result, %0, !dbg !350
  tail call void @llvm.dbg.value(metadata double %7, metadata !334, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !351
  %8 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %7, ptr noundef nonnull %4) #7, !dbg !352
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !336, metadata !DIExpression()), !dbg !347
  %9 = fcmp oge double %7, 0.000000e+00, !dbg !353
  %10 = load double, ptr %4, align 8, !dbg !354, !tbaa !132
  %11 = fmul double %10, -2.000000e+00, !dbg !355
  %12 = call double @sqrt(double noundef %11) #7, !dbg !356
  %13 = fneg double %12, !dbg !357
  %14 = select i1 %9, double %12, double %13, !dbg !357
  tail call void @llvm.dbg.value(metadata double %14, metadata !337, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !358
  %15 = fmul double %6, %14, !dbg !359
  %16 = fdiv double %15, 0x3FF6A09E667F3BCD, !dbg !360
  %17 = call i32 @gsl_sf_erfc_e(double noundef %16, ptr noundef nonnull %5) #7, !dbg !361
  %18 = call double @llvm.fabs.f64(double %7), !dbg !362
  %19 = fcmp olt double %18, 0x3F48406003B2AE5A, !dbg !363
  br i1 %19, label %20, label %27, !dbg !364

20:                                               ; preds = %3
  %21 = fmul double %7, 5.890000e+02, !dbg !365
  %22 = fdiv double %21, 3.024000e+04, !dbg !367
  %handler_result1 = call double @fSubHandlerDouble(double 0x3F9BE4300A1D1398, double %22), !dbg !368
  %23 = fmul double %7, %handler_result1, !dbg !368
  %handler_result2 = call double @fSubHandlerDouble(double 0x3FA5CEB240795CEB, double %23), !dbg !369
  %24 = fmul double %7, %handler_result2, !dbg !369
  %handler_result3 = call double @fSubHandlerDouble(double 0x3FB5555555555555, double %24), !dbg !370
  %25 = fmul double %7, %handler_result3, !dbg !370
  %handler_result4 = call double @fAddHandlerDouble(double %25, double 0xBFD5555555555555), !dbg !371
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !340, metadata !DIExpression()), !dbg !347
  %26 = fdiv double %7, 2.880000e+02, !dbg !371
  %handler_result5 = call double @fSubHandlerDouble(double 0xBF5E573AC901E574, double %26), !dbg !372
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !341, metadata !DIExpression()), !dbg !347
  br label %52, !dbg !372

27:                                               ; preds = %3
  %28 = load double, ptr %4, align 8, !dbg !373, !tbaa !132
  %29 = fmul double %28, -2.000000e+00, !dbg !374
  %30 = fmul double %7, %7, !dbg !375
  %31 = fdiv double %29, %30, !dbg !376
  %32 = call double @sqrt(double noundef %31) #7, !dbg !377
  tail call void @llvm.dbg.value(metadata double %32, metadata !342, metadata !DIExpression()), !dbg !378
  %33 = fdiv double %1, %0, !dbg !379
  tail call void @llvm.dbg.value(metadata double %33, metadata !345, metadata !DIExpression()), !dbg !378
  %34 = fdiv double 1.000000e+00, %32, !dbg !380
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %34), !dbg !381
  %35 = fdiv double %handler_result6, %7, !dbg !381
  tail call void @llvm.dbg.value(metadata double %35, metadata !340, metadata !DIExpression()), !dbg !347
  %36 = fmul double %14, %14, !dbg !382
  %37 = fmul double %14, %36, !dbg !383
  %38 = fmul double %33, %33, !dbg !384
  %39 = fmul double %33, 1.000000e+01, !dbg !385
  %handler_result7 = call double @fAddHandlerDouble(double %38, double %39), !dbg !386
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double 1.000000e+00), !dbg !387
  %40 = fmul double %handler_result8, %37, !dbg !387
  %41 = fmul double %7, 1.200000e+01, !dbg !388
  %42 = fmul double %7, %41, !dbg !389
  %43 = fmul double %7, %42, !dbg !390
  %handler_result9 = call double @fSubHandlerDouble(double %40, double %43), !dbg !391
  %44 = fneg double %handler_result9, !dbg !391
  %45 = fmul double %14, 1.200000e+01, !dbg !392
  %46 = fmul double %14, %45, !dbg !393
  %47 = fmul double %14, %46, !dbg !394
  %48 = fmul double %7, %47, !dbg !395
  %49 = fmul double %7, %48, !dbg !396
  %50 = fmul double %7, %49, !dbg !397
  %51 = fdiv double %44, %50, !dbg !398
  tail call void @llvm.dbg.value(metadata double %51, metadata !341, metadata !DIExpression()), !dbg !347
  br label %52

52:                                               ; preds = %27, %20
  %53 = phi double [ %handler_result5, %20 ], [ %51, %27 ], !dbg !399
  %54 = phi double [ %handler_result4, %20 ], [ %35, %27 ], !dbg !399
  tail call void @llvm.dbg.value(metadata double %54, metadata !340, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata double %53, metadata !341, metadata !DIExpression()), !dbg !347
  %55 = fmul double %0, -5.000000e-01, !dbg !400
  %56 = fmul double %55, %14, !dbg !401
  %57 = fmul double %14, %56, !dbg !402
  %58 = call double @exp(double noundef %57) #7, !dbg !403
  %59 = fmul double %6, 0x40040D931FF62706, !dbg !404
  %60 = fdiv double %58, %59, !dbg !405
  %61 = fdiv double %53, %0, !dbg !406
  %handler_result10 = call double @fAddHandlerDouble(double %54, double %61), !dbg !407
  %62 = fmul double %handler_result10, %60, !dbg !407
  tail call void @llvm.dbg.value(metadata double %62, metadata !339, metadata !DIExpression()), !dbg !347
  %63 = load double, ptr %5, align 8, !dbg !408, !tbaa !132
  %64 = fmul double %63, 5.000000e-01, !dbg !409
  %handler_result11 = call double @fAddHandlerDouble(double %64, double %62), !dbg !410
  store double %handler_result11, ptr %2, align 8, !dbg !410, !tbaa !132
  %65 = fmul double %62, 5.000000e-01, !dbg !411
  %66 = fmul double %65, %0, !dbg !412
  %67 = fmul double %14, %66, !dbg !413
  %68 = fmul double %14, %67, !dbg !414
  %69 = call double @llvm.fabs.f64(double %68), !dbg !415
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !416
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !417
  %72 = load double, ptr %71, align 8, !dbg !417, !tbaa !137
  %73 = fmul double %72, 5.000000e-01, !dbg !418
  %handler_result12 = call double @fAddHandlerDouble(double %73, double %70), !dbg !419
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !419
  %75 = call double @llvm.fabs.f64(double %handler_result11), !dbg !420
  %76 = fmul double %75, 0x3CC0000000000000, !dbg !421
  %handler_result13 = call double @fAddHandlerDouble(double %76, double %handler_result12), !dbg !422
  store double %handler_result13, ptr %74, align 8, !dbg !422, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !423
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !423
  ret i32 %8, !dbg !424
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !425 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !427, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata double %1, metadata !428, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata double 0xC0033BA004F00621, metadata !434, metadata !DIExpression()), !dbg !453
  %handler_result71 = call double @callHandler(i32 12, double %1, double %1), !dbg !454
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !436, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !437, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !438, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !439, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !440, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !441, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !442, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !443, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !444, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !445, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !446, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !447, metadata !DIExpression()), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !430, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !448, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !431, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata i32 1, metadata !451, metadata !DIExpression()), !dbg !458
  %4 = fneg double %1, !dbg !454
  tail call void @llvm.dbg.value(metadata i32 1, metadata !451, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !450, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !431, metadata !DIExpression()), !dbg !452
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !459
  br label %5, !dbg !459

5:                                                ; preds = %17, %3
  %6 = phi i32 [ 1, %3 ], [ %18, %17 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %11, %17 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %handler_result4, %17 ]
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !451, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %7, metadata !450, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %8, metadata !431, metadata !DIExpression()), !dbg !452
  %9 = sitofp i32 %6 to double, !dbg !460
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !461
  %10 = fdiv double %4, %handler_result1, !dbg !461
  %11 = fmul double %7, %10, !dbg !462
  tail call void @llvm.dbg.value(metadata double %11, metadata !450, metadata !DIExpression()), !dbg !458
  %handler_result2 = call double @fAddHandlerDouble(double %9, double %0), !dbg !463
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 1.000000e+00), !dbg !464
  %12 = fdiv double %handler_result, %handler_result3, !dbg !464
  %13 = fmul double %12, %11, !dbg !465
  %handler_result4 = call double @fAddHandlerDouble(double %8, double %13), !dbg !466
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !431, metadata !DIExpression()), !dbg !452
  %14 = fdiv double %11, %handler_result4, !dbg !466
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !468
  %16 = fcmp olt double %15, 0x3CB0000000000000, !dbg !469
  br i1 %16, label %20, label %17, !dbg !470

17:                                               ; preds = %5
  %18 = add i32 %6, 1, !dbg !471
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !451, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %11, metadata !450, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !431, metadata !DIExpression()), !dbg !452
  %19 = icmp eq i32 %18, 5000, !dbg !472
  br i1 %19, label %23, label %5, !dbg !459, !llvm.loop !473

20:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !431, metadata !DIExpression()), !dbg !452
  %21 = icmp eq i32 %6, 5000, !dbg !475
  %22 = select i1 %21, i32 11, i32 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %22, %20 ], [ 11, %17 ]
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FE2788CFC6FB619), !dbg !477
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !437, metadata !DIExpression()), !dbg !453
  %25 = fmul double %handler_result5, 5.000000e-01, !dbg !477
  %26 = fmul double %handler_result5, %25, !dbg !478
  %handler_result6 = call double @fSubHandlerDouble(double 0x3FEA51A6625307D3, double %26), !dbg !479
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !439, metadata !DIExpression()), !dbg !453
  %27 = fmul double %handler_result5, %handler_result5, !dbg !479
  %28 = fdiv double %27, 6.000000e+00, !dbg !480
  %handler_result7 = call double @fSubHandlerDouble(double 0x3FEA51A6625307D3, double %28), !dbg !481
  %29 = fmul double %handler_result5, %handler_result7, !dbg !481
  %handler_result8 = call double @fAddHandlerDouble(double %29, double 0xBFD9A4D55BEAB2D7), !dbg !482
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !440, metadata !DIExpression()), !dbg !453
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFC21C3E15D140A), !dbg !483
  %30 = fmul double %handler_result9, 0x3FA5555555555555, !dbg !483
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFE876331663917C), !dbg !484
  %31 = fmul double %handler_result10, %30, !dbg !484
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FE72AD94DC1FEC8), !dbg !485
  %32 = fmul double %handler_result11, %31, !dbg !485
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result71, double 0x40106E22AFA35265), !dbg !486
  %33 = fmul double %handler_result12, %32, !dbg !486
  tail call void @llvm.dbg.value(metadata double %33, metadata !441, metadata !DIExpression()), !dbg !453
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result71, double 0xC000866B191B1B87), !dbg !487
  %34 = fmul double %handler_result13, 0x3F81111111111111, !dbg !487
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFF48DB7921405AE), !dbg !488
  %35 = fmul double %handler_result14, %34, !dbg !488
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFD1A74957F47DB1), !dbg !489
  %36 = fmul double %handler_result15, %35, !dbg !489
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FF5636CD550B41A), !dbg !490
  %37 = fmul double %handler_result16, %36, !dbg !490
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result71, double 0x4014B394EF037BD3), !dbg !491
  %38 = fmul double %handler_result17, %37, !dbg !491
  tail call void @llvm.dbg.value(metadata double %38, metadata !442, metadata !DIExpression()), !dbg !453
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result71, double 0xC0027713DE49B2E2), !dbg !492
  %39 = fmul double %handler_result18, 0x3F56C16C16C16C17, !dbg !492
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFA89133370E8F3), !dbg !493
  %40 = fmul double %handler_result19, %39, !dbg !493
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFEC67E19E67A72A), !dbg !494
  %41 = fmul double %handler_result20, %40, !dbg !494
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FC5D0ED937362B0), !dbg !495
  %42 = fmul double %handler_result21, %41, !dbg !495
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FFEBDE3AB85424E), !dbg !496
  %43 = fmul double %handler_result22, %42, !dbg !496
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result71, double 0x4018E73455A4E57C), !dbg !497
  %44 = fmul double %handler_result23, %43, !dbg !497
  tail call void @llvm.dbg.value(metadata double %44, metadata !443, metadata !DIExpression()), !dbg !453
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result71, double 0xC004101BF07AE56F), !dbg !498
  %45 = fmul double %handler_result24, 0x3F2A01A01A01A01A, !dbg !498
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFF2A8ECC402949), !dbg !499
  %46 = fmul double %handler_result25, %45, !dbg !499
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFF51C9AF95AA8B4), !dbg !500
  %47 = fmul double %handler_result26, %46, !dbg !500
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFE0E675A577048F), !dbg !501
  %48 = fmul double %handler_result27, %47, !dbg !501
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FE2EC9D13B75038), !dbg !502
  %49 = fmul double %handler_result28, %48, !dbg !502
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result71, double 0x4003E6C5CD1B1472), !dbg !503
  %50 = fmul double %handler_result29, %49, !dbg !503
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result71, double 0x401D0F2BF23052DE), !dbg !504
  %51 = fmul double %handler_result30, %50, !dbg !504
  tail call void @llvm.dbg.value(metadata double %51, metadata !444, metadata !DIExpression()), !dbg !453
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result71, double 0xC0056B320B3ED28A), !dbg !505
  %52 = fmul double %handler_result31, 0x3EFA01A01A01A01A, !dbg !505
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result71, double 0xC001766553058D6B), !dbg !506
  %53 = fmul double %handler_result32, %52, !dbg !506
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFA63BD2F3BA53B), !dbg !507
  %54 = fmul double %handler_result33, %53, !dbg !507
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFF039BFEC7504C8), !dbg !508
  %55 = fmul double %handler_result34, %54, !dbg !508
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFC87EB65F6D0FB5), !dbg !509
  %56 = fmul double %handler_result35, %55, !dbg !509
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FEFDA591B88C85D), !dbg !510
  %57 = fmul double %handler_result36, %56, !dbg !510
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result71, double 0x400854A14D3A92E3), !dbg !511
  %58 = fmul double %handler_result37, %57, !dbg !511
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result71, double 0x40209788EDB58B77), !dbg !512
  %59 = fmul double %handler_result38, %58, !dbg !512
  tail call void @llvm.dbg.value(metadata double %59, metadata !445, metadata !DIExpression()), !dbg !453
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result71, double 0xC00698442A97B713), !dbg !513
  %60 = fmul double %handler_result39, 0xBEC71DE3A556C736, !dbg !513
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result71, double 0xC00309EE7FC808CD), !dbg !514
  %61 = fmul double %handler_result40, %60, !dbg !514
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFEA13FC987F9E0), !dbg !515
  %62 = fmul double %handler_result41, %61, !dbg !515
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFF61A6E5DEAB171), !dbg !516
  %63 = fmul double %handler_result42, %62, !dbg !516
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFE757804515FA20), !dbg !517
  %64 = fmul double %handler_result43, %63, !dbg !517
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FC0A0D2B041D753), !dbg !518
  %65 = fmul double %handler_result44, %64, !dbg !518
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FF632846DC55ECC), !dbg !519
  %66 = fmul double %handler_result45, %65, !dbg !519
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result71, double 0x400CAF910DB83AA2), !dbg !520
  %67 = fmul double %handler_result46, %66, !dbg !520
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result71, double 0x4022A491A5EEB992), !dbg !521
  %68 = fmul double %handler_result47, %67, !dbg !521
  tail call void @llvm.dbg.value(metadata double %68, metadata !446, metadata !DIExpression()), !dbg !453
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result71, double 0xC007A1DC08ED251E), !dbg !522
  %69 = fmul double %handler_result48, 0x3E927E4FB7789F5E, !dbg !522
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result71, double 0xC00464A1C74169AE), !dbg !523
  %70 = fmul double %handler_result49, %69, !dbg !523
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result71, double 0xC0011420A97C81AC), !dbg !524
  %71 = fmul double %handler_result50, %70, !dbg !524
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFFAC979781A4EB6), !dbg !525
  %72 = fmul double %handler_result51, %71, !dbg !525
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFF21F1BE4FBA88A), !dbg !526
  %73 = fmul double %handler_result52, %72, !dbg !526
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result71, double 0xBFDD605011CC3E9E), !dbg !527
  %74 = fmul double %handler_result53, %73, !dbg !527
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FDC27E6621D6A75), !dbg !528
  %75 = fmul double %handler_result54, %74, !dbg !528
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FFC52D6092EFE4D), !dbg !529
  %76 = fmul double %handler_result55, %75, !dbg !529
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result71, double 0x40107E1C0EA50F2C), !dbg !530
  %77 = fmul double %handler_result56, %76, !dbg !530
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result71, double 0x4024AF6CECD86415), !dbg !531
  %78 = fmul double %handler_result57, %77, !dbg !531
  tail call void @llvm.dbg.value(metadata double %78, metadata !447, metadata !DIExpression()), !dbg !453
  %79 = fmul double %78, %0, !dbg !532
  %handler_result58 = call double @fSubHandlerDouble(double %68, double %79), !dbg !533
  %80 = fmul double %handler_result58, %0, !dbg !533
  %handler_result59 = call double @fSubHandlerDouble(double %80, double %59), !dbg !534
  %81 = fmul double %handler_result59, %0, !dbg !534
  %handler_result60 = call double @fSubHandlerDouble(double %81, double %51), !dbg !535
  %82 = fmul double %handler_result60, %0, !dbg !535
  %handler_result61 = call double @fSubHandlerDouble(double %82, double %44), !dbg !536
  %83 = fmul double %handler_result61, %0, !dbg !536
  %handler_result62 = call double @fSubHandlerDouble(double %83, double %38), !dbg !537
  %84 = fmul double %handler_result62, %0, !dbg !537
  %handler_result63 = call double @fSubHandlerDouble(double %84, double %33), !dbg !538
  %85 = fmul double %handler_result63, %0, !dbg !538
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result8, double %85), !dbg !539
  %86 = fmul double %handler_result64, %0, !dbg !539
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result6, double %86), !dbg !540
  %87 = fmul double %handler_result65, %0, !dbg !540
  %handler_result66 = call double @fSubHandlerDouble(double %87, double %handler_result5), !dbg !541
  %88 = fmul double %handler_result66, %0, !dbg !541
  tail call void @llvm.dbg.value(metadata double %88, metadata !430, metadata !DIExpression()), !dbg !452
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !432, metadata !DIExpression()), !dbg !452
  %handler_result67 = call double @fSubHandlerDouble(double 1.000000e+00, double %88), !dbg !542
  %89 = fmul double %handler_result67, %0, !dbg !542
  %90 = fdiv double %89, %handler_result, !dbg !543
  %91 = fmul double %90, %1, !dbg !544
  %92 = fmul double %91, %handler_result4, !dbg !545
  tail call void @llvm.dbg.value(metadata double %92, metadata !433, metadata !DIExpression()), !dbg !452
  %handler_result68 = call double @fAddHandlerDouble(double %88, double %92), !dbg !546
  store double %handler_result68, ptr %2, align 8, !dbg !546, !tbaa !132
  %93 = tail call double @llvm.fabs.f64(double %88), !dbg !547
  %94 = tail call double @llvm.fabs.f64(double %92), !dbg !548
  %95 = fmul double %94, 2.000000e+00, !dbg !549
  %handler_result69 = call double @fAddHandlerDouble(double %93, double %95), !dbg !550
  %96 = fmul double %handler_result69, 0x3CB0000000000000, !dbg !550
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !551
  %98 = tail call double @llvm.fabs.f64(double %handler_result68), !dbg !552
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !553
  %handler_result70 = call double @fAddHandlerDouble(double %99, double %96), !dbg !554
  store double %handler_result70, ptr %97, align 8, !dbg !554, !tbaa !137
  ret i32 %24, !dbg !555
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !556 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !561, metadata !DIExpression(), metadata !565, metadata ptr %4, metadata !DIExpression()), !dbg !566
  tail call void @llvm.dbg.value(metadata double %0, metadata !558, metadata !DIExpression()), !dbg !566
  tail call void @llvm.dbg.value(metadata double %1, metadata !559, metadata !DIExpression()), !dbg !566
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !560, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !567
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 0, metadata !563, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata double %0, metadata !569, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %1, metadata !572, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr undef, metadata !573, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 5000, metadata !574, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double 0x3630000000000000, metadata !575, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !576, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double 0x49B0000000000000, metadata !577, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !578, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 2, metadata !579, metadata !DIExpression()), !dbg !585
  br label %5, !dbg !587

5:                                                ; preds = %35, %3
  %6 = phi i32 [ 2, %3 ], [ %36, %35 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %30, %35 ]
  %8 = phi double [ 0x49B0000000000000, %3 ], [ %29, %35 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !579, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %7, metadata !578, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %8, metadata !577, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %9, metadata !576, metadata !DIExpression()), !dbg !585
  %10 = and i32 %6, 1, !dbg !588
  %11 = icmp eq i32 %10, 0, !dbg !588
  call void @llvm.dbg.value(metadata double poison, metadata !580, metadata !DIExpression()), !dbg !590
  br i1 %11, label %16, label %12, !dbg !591

12:                                               ; preds = %5
  %13 = add nsw i32 %6, -1, !dbg !592
  %14 = sitofp i32 %13 to double, !dbg !593
  %15 = fmul double %14, 5.000000e-01, !dbg !594
  br label %19, !dbg !595

16:                                               ; preds = %5
  %17 = sitofp i32 %6 to double, !dbg !596
  %18 = fmul double %17, 5.000000e-01, !dbg !597
  %handler_result = call double @fSubHandlerDouble(double %18, double %0)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi double [ %15, %12 ], [ %handler_result, %16 ]
  %21 = fdiv double %20, %1, !dbg !598
  call void @llvm.dbg.value(metadata double %21, metadata !580, metadata !DIExpression()), !dbg !590
  %22 = fmul double %7, %21, !dbg !599
  %handler_result1 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !600
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !578, metadata !DIExpression()), !dbg !585
  %23 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !600
  %24 = fcmp olt double %23, 0x3630000000000000, !dbg !602
  %25 = fdiv double 1.000000e+00, %handler_result1, !dbg !603
  call void @llvm.dbg.value(metadata double poison, metadata !578, metadata !DIExpression()), !dbg !585
  %26 = fdiv double %21, %8, !dbg !604
  %handler_result2 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !605
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !577, metadata !DIExpression()), !dbg !585
  %27 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !605
  %28 = fcmp olt double %27, 0x3630000000000000, !dbg !607
  %29 = select i1 %28, double 0x3630000000000000, double %handler_result2, !dbg !608
  call void @llvm.dbg.value(metadata double %29, metadata !577, metadata !DIExpression()), !dbg !585
  %30 = select i1 %24, double 0x49B0000000000000, double %25, !dbg !603
  call void @llvm.dbg.value(metadata double %30, metadata !578, metadata !DIExpression()), !dbg !585
  %31 = fmul double %29, %30, !dbg !609
  call void @llvm.dbg.value(metadata double %31, metadata !584, metadata !DIExpression()), !dbg !590
  %32 = fmul double %9, %31, !dbg !610
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !585
  %handler_result3 = call double @fAddHandlerDouble(double %31, double -1.000000e+00), !dbg !611
  %33 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !611
  %34 = fcmp olt double %33, 0x3CB0000000000000, !dbg !613
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = add nuw nsw i32 %6, 1, !dbg !614
  call void @llvm.dbg.value(metadata i32 %36, metadata !579, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %30, metadata !578, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %29, metadata !577, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !585
  %37 = icmp eq i32 %36, 5000, !dbg !615
  br i1 %37, label %40, label %5, !dbg !587, !llvm.loop !616

38:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !585
  tail call void @llvm.dbg.value(metadata double %32, metadata !562, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !566
  tail call void @llvm.dbg.value(metadata double poison, metadata !562, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !566
  %39 = icmp eq i32 %6, 5000, !dbg !618
  br i1 %39, label %40, label %41, !dbg !620

40:                                               ; preds = %38, %35
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 286, i32 noundef 11) #7, !dbg !621
  br label %41, !dbg !621

41:                                               ; preds = %40, %38
  %42 = phi i32 [ 5000, %40 ], [ %6, %38 ]
  %43 = phi i32 [ 11, %40 ], [ 0, %38 ], !dbg !623
  %44 = tail call double @llvm.fabs.f64(double %32), !dbg !624
  %45 = fmul double %44, 0x3CC0000000000000, !dbg !625
  %46 = sitofp i32 %42 to double, !dbg !626
  %47 = fmul double %46, 5.000000e-01, !dbg !627
  %handler_result4 = call double @fAddHandlerDouble(double %47, double 2.000000e+00), !dbg !628
  %48 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !628
  %49 = fmul double %44, %48, !dbg !629
  %handler_result5 = call double @fAddHandlerDouble(double %45, double %49), !dbg !630
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !562, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !564, metadata !DIExpression()), !dbg !566
  %50 = load double, ptr %4, align 8, !dbg !630, !tbaa !132
  %51 = fdiv double %0, %1, !dbg !631
  %52 = fmul double %51, %50, !dbg !632
  %53 = fmul double %32, %52, !dbg !633
  store double %53, ptr %2, align 8, !dbg !634, !tbaa !132
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !635
  %55 = load double, ptr %54, align 8, !dbg !635, !tbaa !137
  %56 = fmul double %51, %32, !dbg !636
  %57 = tail call double @llvm.fabs.f64(double %56), !dbg !637
  %58 = fmul double %57, %55, !dbg !638
  %59 = fmul double %50, %0, !dbg !639
  %60 = fdiv double %59, %1, !dbg !640
  %61 = fmul double %handler_result5, %60, !dbg !641
  %62 = tail call double @llvm.fabs.f64(double %61), !dbg !642
  %handler_result6 = call double @fAddHandlerDouble(double %58, double %62), !dbg !643
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !643
  store double %handler_result6, ptr %63, align 8, !dbg !644, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !645
  ret i32 %43, !dbg !646
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !647 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !653, metadata !DIExpression(), metadata !659, metadata ptr %4, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %0, metadata !649, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %1, metadata !650, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !651, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 5000, metadata !652, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !661
  call fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 0, metadata !654, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !655, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !656, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !657, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 1, metadata !658, metadata !DIExpression()), !dbg !660
  br label %5, !dbg !663

5:                                                ; preds = %19, %3
  %6 = phi i32 [ 1, %3 ], [ %20, %19 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %11, %19 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %handler_result1, %19 ]
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !658, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %7, metadata !657, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %8, metadata !655, metadata !DIExpression()), !dbg !660
  %9 = sitofp i32 %6 to double, !dbg !665
  %handler_result = call double @fSubHandlerDouble(double %0, double %9), !dbg !668
  %10 = fdiv double %handler_result, %1, !dbg !668
  %11 = fmul double %7, %10, !dbg !669
  tail call void @llvm.dbg.value(metadata double %11, metadata !656, metadata !DIExpression()), !dbg !660
  %12 = fdiv double %11, %7, !dbg !670
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !672
  %14 = fcmp ogt double %13, 1.000000e+00, !dbg !673
  br i1 %14, label %22, label %15, !dbg !674

15:                                               ; preds = %5
  %16 = fdiv double %11, %8, !dbg !675
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !677
  %18 = fcmp olt double %17, 0x3CB0000000000000, !dbg !678
  br i1 %18, label %22, label %19, !dbg !679

19:                                               ; preds = %15
  %handler_result1 = call double @fAddHandlerDouble(double %8, double %11), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !655, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %11, metadata !657, metadata !DIExpression()), !dbg !660
  %20 = add nuw nsw i32 %6, 1, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !658, metadata !DIExpression()), !dbg !660
  tail call void @llvm.dbg.value(metadata double %11, metadata !656, metadata !DIExpression()), !dbg !660
  %21 = icmp eq i32 %20, 5000, !dbg !681
  br i1 %21, label %22, label %5, !dbg !663, !llvm.loop !682

22:                                               ; preds = %19, %15, %5
  %23 = phi double [ %8, %15 ], [ %8, %5 ], [ %handler_result1, %19 ], !dbg !660
  %24 = phi i32 [ %6, %15 ], [ %6, %5 ], [ 5000, %19 ], !dbg !684
  %25 = load double, ptr %4, align 8, !dbg !685, !tbaa !132
  %26 = fdiv double %0, %1, !dbg !686
  %27 = fmul double %26, %25, !dbg !687
  %28 = fmul double %23, %27, !dbg !688
  store double %28, ptr %2, align 8, !dbg !689, !tbaa !132
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !690
  %30 = load double, ptr %29, align 8, !dbg !690, !tbaa !137
  %31 = fmul double %26, %23, !dbg !691
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !692
  %33 = fmul double %32, %30, !dbg !693
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !694
  %35 = tail call double @llvm.fabs.f64(double %28), !dbg !695
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !696
  %handler_result2 = call double @fAddHandlerDouble(double %33, double %36), !dbg !697
  store double %handler_result2, ptr %34, align 8, !dbg !697, !tbaa !137
  %37 = icmp eq i32 %24, 5000, !dbg !698
  br i1 %37, label %38, label %39, !dbg !700

38:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 11) #7, !dbg !701
  br label %39, !dbg !701

39:                                               ; preds = %38, %22
  %40 = phi i32 [ 11, %38 ], [ 0, %22 ], !dbg !703
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !704
  ret i32 %40, !dbg !704
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !705 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_inc_P_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !709 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !714, metadata !DIExpression(), metadata !730, metadata ptr %4, metadata !DIExpression()), !dbg !731
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !721, metadata !DIExpression(), metadata !732, metadata ptr %5, metadata !DIExpression()), !dbg !733
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !725, metadata !DIExpression(), metadata !734, metadata ptr %6, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata double %0, metadata !711, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata double %1, metadata !712, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !713, metadata !DIExpression()), !dbg !736
  %7 = fcmp ole double %0, 0.000000e+00, !dbg !737
  %8 = fcmp olt double %1, 0.000000e+00
  %9 = or i1 %7, %8, !dbg !738
  br i1 %9, label %10, label %12, !dbg !738

10:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !739, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !739
  store double 0x7FF8000000000000, ptr %11, align 8, !dbg !739, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 1) #7, !dbg !742
  br label %65, !dbg !742

12:                                               ; preds = %3
  %13 = fcmp oeq double %1, 0.000000e+00, !dbg !744
  br i1 %13, label %14, label %15, !dbg !745

14:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !746
  br label %65, !dbg !748

15:                                               ; preds = %12
  %16 = fcmp olt double %1, 2.000000e+01, !dbg !749
  %17 = fmul double %0, 5.000000e-01
  %18 = fcmp ogt double %17, %1
  %19 = or i1 %16, %18, !dbg !750
  br i1 %19, label %20, label %22, !dbg !750

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !751
  br label %65, !dbg !753

22:                                               ; preds = %15
  %23 = fcmp ogt double %0, 1.000000e+06, !dbg !754
  br i1 %23, label %24, label %35, !dbg !755

24:                                               ; preds = %22
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !756
  %25 = fmul double %handler_result, %handler_result, !dbg !756
  %26 = fcmp olt double %25, %0, !dbg !757
  br i1 %26, label %27, label %35, !dbg !758

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !759
  %28 = call fastcc i32 @gamma_inc_Q_asymp_unif(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !720, metadata !DIExpression()), !dbg !731
  %29 = load double, ptr %4, align 8, !dbg !761, !tbaa !132
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %29), !dbg !762
  store double %handler_result1, ptr %2, align 8, !dbg !762, !tbaa !132
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !763
  %31 = load double, ptr %30, align 8, !dbg !763, !tbaa !137
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !764
  %33 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !765
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !766
  %handler_result2 = call double @fAddHandlerDouble(double %31, double %34), !dbg !767
  store double %handler_result2, ptr %32, align 8, !dbg !767, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !768
  br label %65

35:                                               ; preds = %24, %22
  %36 = fcmp ugt double %0, %1, !dbg !769
  br i1 %36, label %52, label %37, !dbg !770

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !771
  %38 = fmul double %1, 2.000000e-01, !dbg !772
  %39 = fcmp olt double %38, %0, !dbg !774
  br i1 %39, label %40, label %42, !dbg !775

40:                                               ; preds = %37
  %41 = call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !724, metadata !DIExpression()), !dbg !733
  br label %44, !dbg !778

42:                                               ; preds = %37
  %43 = call fastcc i32 @gamma_inc_Q_large_x(double noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !779, !range !177
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !724, metadata !DIExpression()), !dbg !733
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ], !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !724, metadata !DIExpression()), !dbg !733
  %46 = load double, ptr %5, align 8, !dbg !782, !tbaa !132
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %46), !dbg !783
  store double %handler_result3, ptr %2, align 8, !dbg !783, !tbaa !132
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !784
  %48 = load double, ptr %47, align 8, !dbg !784, !tbaa !137
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !785
  %50 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !786
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !787
  %handler_result4 = call double @fAddHandlerDouble(double %48, double %51), !dbg !788
  store double %handler_result4, ptr %49, align 8, !dbg !788, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !789
  br label %65

52:                                               ; preds = %35
  %handler_result5 = call double @fSubHandlerDouble(double %1, double %0), !dbg !790
  %53 = fmul double %handler_result5, %handler_result5, !dbg !790
  %54 = fcmp olt double %53, %0, !dbg !791
  br i1 %54, label %55, label %63, !dbg !792

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !793
  %56 = call fastcc i32 @gamma_inc_Q_CF(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !729, metadata !DIExpression()), !dbg !735
  %57 = load double, ptr %6, align 8, !dbg !795, !tbaa !132
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %57), !dbg !796
  store double %handler_result6, ptr %2, align 8, !dbg !796, !tbaa !132
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !797
  %59 = load double, ptr %58, align 8, !dbg !797, !tbaa !137
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !798
  %61 = tail call double @llvm.fabs.f64(double %handler_result6), !dbg !799
  %62 = fmul double %61, 0x3CC0000000000000, !dbg !800
  %handler_result7 = call double @fAddHandlerDouble(double %59, double %62), !dbg !801
  store double %handler_result7, ptr %60, align 8, !dbg !801, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !802
  br label %65

63:                                               ; preds = %52
  %64 = tail call fastcc i32 @gamma_inc_P_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !803
  br label %65, !dbg !805

65:                                               ; preds = %63, %55, %44, %27, %20, %14, %10
  %66 = phi i32 [ 1, %10 ], [ 0, %14 ], [ %21, %20 ], [ %28, %27 ], [ %45, %44 ], [ %56, %55 ], [ %64, %63 ], !dbg !806
  ret i32 %66, !dbg !807
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_gamma_inc_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !808 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !828
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !829
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !822, metadata !DIExpression(), metadata !830, metadata ptr %6, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata double %0, metadata !810, metadata !DIExpression()), !dbg !832
  tail call void @llvm.dbg.value(metadata double %1, metadata !811, metadata !DIExpression()), !dbg !832
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !812, metadata !DIExpression()), !dbg !832
  %7 = fcmp olt double %1, 0.000000e+00, !dbg !833
  br i1 %7, label %8, label %10, !dbg !834

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !835, !tbaa !132
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !835
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !835, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 649, i32 noundef 1) #7, !dbg !838
  br label %71, !dbg !838

10:                                               ; preds = %3
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !840
  br i1 %11, label %12, label %14, !dbg !841

12:                                               ; preds = %10
  %13 = tail call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef %2) #7, !dbg !842
  br label %71, !dbg !844

14:                                               ; preds = %10
  %15 = fcmp oeq double %0, 0.000000e+00, !dbg !845
  br i1 %15, label %16, label %18, !dbg !846

16:                                               ; preds = %14
  %17 = tail call i32 @gsl_sf_expint_E1_e(double noundef %1, ptr noundef %2) #7, !dbg !847
  br label %71, !dbg !849

18:                                               ; preds = %14
  %19 = fcmp ogt double %0, 0.000000e+00, !dbg !850
  br i1 %19, label %20, label %39, !dbg !851

20:                                               ; preds = %18
  call void @llvm.dbg.assign(metadata i1 undef, metadata !852, metadata !DIExpression(), metadata !828, metadata ptr %4, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !860, metadata !DIExpression(), metadata !829, metadata ptr %5, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata double %0, metadata !857, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata double %1, metadata !858, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata ptr %2, metadata !859, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !866
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !867
  %21 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !868
  call void @llvm.dbg.value(metadata i32 %21, metadata !861, metadata !DIExpression()), !dbg !863
  %22 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #7, !dbg !869
  call void @llvm.dbg.value(metadata i32 %22, metadata !862, metadata !DIExpression()), !dbg !863
  %23 = load double, ptr %5, align 8, !dbg !870, !tbaa !132
  %24 = load double, ptr %4, align 8, !dbg !871, !tbaa !132
  %25 = fmul double %23, %24, !dbg !872
  store double %25, ptr %2, align 8, !dbg !873, !tbaa !132
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !874
  %27 = load double, ptr %26, align 8, !dbg !874, !tbaa !137
  %28 = fmul double %23, %27, !dbg !875
  %29 = call double @llvm.fabs.f64(double %28), !dbg !876
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !877
  %31 = load double, ptr %30, align 8, !dbg !877, !tbaa !137
  %32 = fmul double %24, %31, !dbg !878
  %33 = call double @llvm.fabs.f64(double %32), !dbg !879
  %handler_result = call double @fAddHandlerDouble(double %29, double %33), !dbg !880
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !880
  %35 = call double @llvm.fabs.f64(double %25), !dbg !881
  %36 = fmul double %35, 0x3CC0000000000000, !dbg !882
  %handler_result1 = call double @fAddHandlerDouble(double %36, double %handler_result), !dbg !883
  store double %handler_result1, ptr %34, align 8, !dbg !883, !tbaa !137
  %37 = icmp eq i32 %22, 0, !dbg !884
  %38 = select i1 %37, i32 %21, i32 %22, !dbg !884
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !885
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !885
  br label %71, !dbg !886

39:                                               ; preds = %18
  %40 = fcmp ogt double %1, 2.500000e-01, !dbg !887
  br i1 %40, label %41, label %43, !dbg !888

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @gamma_inc_CF(double noundef %0, double noundef %1, ptr noundef %2), !dbg !889
  br label %71, !dbg !891

43:                                               ; preds = %39
  %44 = tail call double @llvm.fabs.f64(double %0), !dbg !892
  %45 = fcmp olt double %44, 5.000000e-01, !dbg !893
  br i1 %45, label %46, label %48, !dbg !894

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @gamma_inc_series(double noundef %0, double noundef %1, ptr noundef %2), !dbg !895
  br label %71, !dbg !897

48:                                               ; preds = %43
  %49 = tail call double @llvm.floor.f64(double %0), !dbg !898
  tail call void @llvm.dbg.value(metadata double %49, metadata !813, metadata !DIExpression()), !dbg !831
  %handler_result2 = call double @fSubHandlerDouble(double %0, double %49), !dbg !899
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !821, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !899
  %50 = fcmp ogt double %handler_result2, 0.000000e+00, !dbg !900
  br i1 %50, label %51, label %53, !dbg !901

51:                                               ; preds = %48
  %52 = call fastcc i32 @gamma_inc_a_gt_0(double noundef %handler_result2, double noundef %1, ptr noundef nonnull %6), !dbg !902
  br label %55, !dbg !901

53:                                               ; preds = %48
  %54 = call i32 @gsl_sf_expint_E1_e(double noundef %1, ptr noundef nonnull %6) #7, !dbg !903
  br label %55, !dbg !901

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ], !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !823, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !824, metadata !DIExpression()), !dbg !831
  %57 = load double, ptr %6, align 8, !dbg !904, !tbaa !132
  tail call void @llvm.dbg.value(metadata double %57, metadata !825, metadata !DIExpression()), !dbg !831
  br label %58, !dbg !905

58:                                               ; preds = %58, %55
  %59 = phi double [ %handler_result2, %55 ], [ %handler_result3, %58 ], !dbg !831
  %60 = phi double [ %57, %55 ], [ %63, %58 ], !dbg !831
  tail call void @llvm.dbg.value(metadata double %60, metadata !825, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata double %59, metadata !824, metadata !DIExpression()), !dbg !831
  %handler_result3 = call double @fAddHandlerDouble(double %59, double -1.000000e+00), !dbg !906
  %handler_result7 = call double @callHandler(i32 12, double %1, double %1), !dbg !907
  %61 = fmul double %handler_result3, %handler_result7, !dbg !907
  %handler_result4 = call double @fSubHandlerDouble(double %61, double %1), !dbg !908
  %62 = call double @exp(double noundef %handler_result4) #7, !dbg !908
  tail call void @llvm.dbg.value(metadata double %62, metadata !826, metadata !DIExpression()), !dbg !909
  %handler_result5 = call double @fSubHandlerDouble(double %60, double %62), !dbg !910
  %63 = fdiv double %handler_result5, %handler_result3, !dbg !910
  tail call void @llvm.dbg.value(metadata double %63, metadata !825, metadata !DIExpression()), !dbg !831
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !824, metadata !DIExpression()), !dbg !831
  %64 = fcmp ogt double %handler_result3, %0, !dbg !911
  br i1 %64, label %58, label %65, !dbg !912, !llvm.loop !913

65:                                               ; preds = %58
  store double %63, ptr %2, align 8, !dbg !915, !tbaa !132
  %handler_result6 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !916
  %66 = fmul double %handler_result6, 2.000000e+00, !dbg !916
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !917
  %68 = call double @llvm.fabs.f64(double %63), !dbg !918
  %69 = fmul double %67, %68, !dbg !919
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !920
  store double %69, ptr %70, align 8, !dbg !921, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !922
  br label %71

71:                                               ; preds = %65, %46, %41, %20, %16, %12, %8
  %72 = phi i32 [ 1, %8 ], [ %13, %12 ], [ %17, %16 ], [ %38, %20 ], [ %42, %41 ], [ %47, %46 ], [ %56, %65 ], !dbg !923
  ret i32 %72, !dbg !924
}

declare !dbg !925 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !929 i32 @gsl_sf_expint_E1_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_a_gt_0(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !853 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !852, metadata !DIExpression(), metadata !931, metadata ptr %4, metadata !DIExpression()), !dbg !932
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !933
  call void @llvm.dbg.assign(metadata i1 undef, metadata !860, metadata !DIExpression(), metadata !933, metadata ptr %5, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata double %0, metadata !857, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata double %1, metadata !858, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !859, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !934
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !935
  %6 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !936
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !861, metadata !DIExpression()), !dbg !932
  %7 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #7, !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !862, metadata !DIExpression()), !dbg !932
  %8 = load double, ptr %5, align 8, !dbg !938, !tbaa !132
  %9 = load double, ptr %4, align 8, !dbg !939, !tbaa !132
  %10 = fmul double %8, %9, !dbg !940
  store double %10, ptr %2, align 8, !dbg !941, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !942
  %12 = load double, ptr %11, align 8, !dbg !942, !tbaa !137
  %13 = fmul double %8, %12, !dbg !943
  %14 = call double @llvm.fabs.f64(double %13), !dbg !944
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !945
  %16 = load double, ptr %15, align 8, !dbg !945, !tbaa !137
  %17 = fmul double %9, %16, !dbg !946
  %18 = call double @llvm.fabs.f64(double %17), !dbg !947
  %handler_result = call double @fAddHandlerDouble(double %14, double %18), !dbg !948
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !948
  %20 = call double @llvm.fabs.f64(double %10), !dbg !949
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !950
  %handler_result1 = call double @fAddHandlerDouble(double %21, double %handler_result), !dbg !951
  store double %handler_result1, ptr %19, align 8, !dbg !951, !tbaa !137
  %22 = icmp eq i32 %7, 0, !dbg !952
  %23 = select i1 %22, i32 %6, i32 %7, !dbg !952
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !953
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !953
  ret i32 %23, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_CF(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !955 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !961, metadata !DIExpression(), metadata !965, metadata ptr %4, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata double %0, metadata !957, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata double %1, metadata !958, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !967
  %handler_result10 = call double @callHandler(i32 12, double %1, double %1), !dbg !968
  tail call void @llvm.dbg.value(metadata double poison, metadata !962, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata double %0, metadata !569, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %1, metadata !572, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr undef, metadata !573, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 5000, metadata !574, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double 0x3630000000000000, metadata !575, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !576, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double 0x49B0000000000000, metadata !577, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !578, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !579, metadata !DIExpression()), !dbg !970
  br label %5, !dbg !968

5:                                                ; preds = %35, %3
  %6 = phi i32 [ 2, %3 ], [ %36, %35 ]
  %7 = phi double [ 1.000000e+00, %3 ], [ %30, %35 ]
  %8 = phi double [ 0x49B0000000000000, %3 ], [ %29, %35 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !579, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %7, metadata !578, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %8, metadata !577, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %9, metadata !576, metadata !DIExpression()), !dbg !970
  %10 = and i32 %6, 1, !dbg !971
  %11 = icmp eq i32 %10, 0, !dbg !971
  call void @llvm.dbg.value(metadata double poison, metadata !580, metadata !DIExpression()), !dbg !972
  br i1 %11, label %16, label %12, !dbg !973

12:                                               ; preds = %5
  %13 = add nsw i32 %6, -1, !dbg !974
  %14 = sitofp i32 %13 to double, !dbg !975
  %15 = fmul double %14, 5.000000e-01, !dbg !976
  br label %19, !dbg !977

16:                                               ; preds = %5
  %17 = sitofp i32 %6 to double, !dbg !978
  %18 = fmul double %17, 5.000000e-01, !dbg !979
  %handler_result = call double @fSubHandlerDouble(double %18, double %0)
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi double [ %15, %12 ], [ %handler_result, %16 ]
  %21 = fdiv double %20, %1, !dbg !980
  call void @llvm.dbg.value(metadata double %21, metadata !580, metadata !DIExpression()), !dbg !972
  %22 = fmul double %7, %21, !dbg !981
  %handler_result1 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !982
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !578, metadata !DIExpression()), !dbg !970
  %23 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !982
  %24 = fcmp olt double %23, 0x3630000000000000, !dbg !983
  %25 = fdiv double 1.000000e+00, %handler_result1, !dbg !984
  call void @llvm.dbg.value(metadata double poison, metadata !578, metadata !DIExpression()), !dbg !970
  %26 = fdiv double %21, %8, !dbg !985
  %handler_result2 = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !986
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !577, metadata !DIExpression()), !dbg !970
  %27 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !986
  %28 = fcmp olt double %27, 0x3630000000000000, !dbg !987
  %29 = select i1 %28, double 0x3630000000000000, double %handler_result2, !dbg !988
  call void @llvm.dbg.value(metadata double %29, metadata !577, metadata !DIExpression()), !dbg !970
  %30 = select i1 %24, double 0x49B0000000000000, double %25, !dbg !984
  call void @llvm.dbg.value(metadata double %30, metadata !578, metadata !DIExpression()), !dbg !970
  %31 = fmul double %29, %30, !dbg !989
  call void @llvm.dbg.value(metadata double %31, metadata !584, metadata !DIExpression()), !dbg !972
  %32 = fmul double %9, %31, !dbg !990
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !970
  %handler_result3 = call double @fAddHandlerDouble(double %31, double -1.000000e+00), !dbg !991
  %33 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !991
  %34 = fcmp olt double %33, 0x3CB0000000000000, !dbg !992
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = add nuw nsw i32 %6, 1, !dbg !993
  call void @llvm.dbg.value(metadata i32 %36, metadata !579, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %30, metadata !578, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %29, metadata !577, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !970
  %37 = icmp eq i32 %36, 5000, !dbg !994
  br i1 %37, label %40, label %5, !dbg !968, !llvm.loop !995

38:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %32, metadata !576, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata double %32, metadata !960, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !966
  tail call void @llvm.dbg.value(metadata double poison, metadata !960, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !966
  %39 = icmp eq i32 %6, 5000, !dbg !997
  br i1 %39, label %40, label %41, !dbg !998

40:                                               ; preds = %38, %35
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 286, i32 noundef 11) #7, !dbg !999
  br label %41, !dbg !999

41:                                               ; preds = %40, %38
  %42 = phi i1 [ true, %40 ], [ false, %38 ]
  %43 = phi i32 [ 5000, %40 ], [ %6, %38 ]
  %44 = phi i32 [ 11, %40 ], [ 0, %38 ], !dbg !1000
  %45 = tail call double @llvm.fabs.f64(double %32), !dbg !1001
  %46 = fmul double %45, 0x3CC0000000000000, !dbg !1002
  %47 = sitofp i32 %43 to double, !dbg !1003
  %48 = fmul double %47, 5.000000e-01, !dbg !1004
  %handler_result4 = call double @fAddHandlerDouble(double %48, double 2.000000e+00), !dbg !1005
  %49 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !1005
  %50 = fmul double %45, %49, !dbg !1006
  %handler_result5 = call double @fAddHandlerDouble(double %46, double %50), !dbg !1007
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !960, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !966
  %handler_result6 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !1008
  %51 = fmul double %handler_result6, %handler_result10, !dbg !1008
  tail call void @llvm.dbg.value(metadata double %51, metadata !962, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !963, metadata !DIExpression()), !dbg !966
  %handler_result7 = call double @fSubHandlerDouble(double %51, double %1), !dbg !1009
  %52 = tail call double @llvm.fabs.f64(double %51), !dbg !1009
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !1010
  %54 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result7, double noundef %53, ptr noundef nonnull %4) #7, !dbg !1011
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !964, metadata !DIExpression()), !dbg !966
  %55 = load double, ptr %4, align 8, !dbg !1012, !tbaa !132
  %56 = fmul double %32, %55, !dbg !1013
  store double %56, ptr %2, align 8, !dbg !1014, !tbaa !132
  %57 = fmul double %handler_result5, %55, !dbg !1015
  %58 = call double @llvm.fabs.f64(double %57), !dbg !1016
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1017
  %60 = load double, ptr %59, align 8, !dbg !1017, !tbaa !137
  %61 = fmul double %32, %60, !dbg !1018
  %62 = call double @llvm.fabs.f64(double %61), !dbg !1019
  %handler_result8 = call double @fAddHandlerDouble(double %58, double %62), !dbg !1020
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1020
  %64 = call double @llvm.fabs.f64(double %56), !dbg !1021
  %65 = fmul double %64, 0x3CC0000000000000, !dbg !1022
  %handler_result9 = call double @fAddHandlerDouble(double %65, double %handler_result8), !dbg !1023
  store double %handler_result9, ptr %63, align 8, !dbg !1023, !tbaa !137
  %66 = select i1 %42, i32 %44, i32 %54, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1025
  ret i32 %66, !dbg !1026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gamma_inc_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1027 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1036
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1032, metadata !DIExpression(), metadata !1036, metadata ptr %4, metadata !DIExpression()), !dbg !1037
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1033, metadata !DIExpression(), metadata !1038, metadata ptr %5, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata double %0, metadata !1029, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata double %1, metadata !1030, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1031, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1039
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1040
  %6 = call fastcc i32 @gamma_inc_Q_series(double noundef %0, double noundef %1, ptr noundef nonnull %4), !dbg !1041, !range !177
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1034, metadata !DIExpression()), !dbg !1037
  %7 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %5) #7, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1035, metadata !DIExpression()), !dbg !1037
  %8 = load double, ptr %4, align 8, !dbg !1043, !tbaa !132
  %9 = load double, ptr %5, align 8, !dbg !1044, !tbaa !132
  %10 = fmul double %8, %9, !dbg !1045
  store double %10, ptr %2, align 8, !dbg !1046, !tbaa !132
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1047
  %12 = load double, ptr %11, align 8, !dbg !1047, !tbaa !137
  %13 = fmul double %8, %12, !dbg !1048
  %14 = call double @llvm.fabs.f64(double %13), !dbg !1049
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1050
  %16 = load double, ptr %15, align 8, !dbg !1050, !tbaa !137
  %17 = fmul double %9, %16, !dbg !1051
  %18 = call double @llvm.fabs.f64(double %17), !dbg !1052
  %handler_result = call double @fAddHandlerDouble(double %14, double %18), !dbg !1053
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1053
  %20 = call double @llvm.fabs.f64(double %10), !dbg !1054
  %21 = fmul double %20, 0x3CC0000000000000, !dbg !1055
  %handler_result1 = call double @fAddHandlerDouble(double %21, double %handler_result), !dbg !1056
  store double %handler_result1, ptr %19, align 8, !dbg !1056, !tbaa !137
  %22 = icmp eq i32 %6, 0, !dbg !1057
  %23 = select i1 %22, i32 %7, i32 %6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1058
  ret i32 %23, !dbg !1059
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1060 double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1061 double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc_P(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1062 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1068, metadata !DIExpression(), metadata !1070, metadata ptr %3, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata double %0, metadata !1066, metadata !DIExpression()), !dbg !1071
  tail call void @llvm.dbg.value(metadata double %1, metadata !1067, metadata !DIExpression()), !dbg !1071
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1072
  %4 = call i32 @gsl_sf_gamma_inc_P_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1069, metadata !DIExpression()), !dbg !1071
  %5 = icmp eq i32 %4, 0, !dbg !1073
  br i1 %5, label %7, label %6, !dbg !1072

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 710, i32 noundef %4) #7, !dbg !1075
  br label %7, !dbg !1075

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1072, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1078
  ret double %8, !dbg !1078
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc_Q(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1079 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1083, metadata !DIExpression(), metadata !1085, metadata ptr %3, metadata !DIExpression()), !dbg !1086
  tail call void @llvm.dbg.value(metadata double %0, metadata !1081, metadata !DIExpression()), !dbg !1086
  tail call void @llvm.dbg.value(metadata double %1, metadata !1082, metadata !DIExpression()), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1087
  %4 = call i32 @gsl_sf_gamma_inc_Q_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1084, metadata !DIExpression()), !dbg !1086
  %5 = icmp eq i32 %4, 0, !dbg !1088
  br i1 %5, label %7, label %6, !dbg !1087

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 715, i32 noundef %4) #7, !dbg !1090
  br label %7, !dbg !1090

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1087, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1093
  ret double %8, !dbg !1093
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_gamma_inc(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1094 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1098, metadata !DIExpression(), metadata !1100, metadata ptr %3, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %0, metadata !1096, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %1, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1102
  %4 = call i32 @gsl_sf_gamma_inc_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1099, metadata !DIExpression()), !dbg !1101
  %5 = icmp eq i32 %4, 0, !dbg !1103
  br i1 %5, label %7, label %6, !dbg !1102

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 720, i32 noundef %4) #7, !dbg !1105
  br label %7, !dbg !1105

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1102, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1108
  ret double %8, !dbg !1108
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gamma_inc_D(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1109 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1129
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1118, metadata !DIExpression(), metadata !1129, metadata ptr %4, metadata !DIExpression()), !dbg !1130
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1119, metadata !DIExpression(), metadata !1131, metadata ptr %5, metadata !DIExpression()), !dbg !1132
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1121, metadata !DIExpression(), metadata !1133, metadata ptr %6, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata double %0, metadata !1112, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata double %1, metadata !1113, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1114, metadata !DIExpression()), !dbg !1134
  %7 = fcmp olt double %0, 1.000000e+01, !dbg !1135
  br i1 %7, label %8, label %18, !dbg !1136

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1137
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1138
  %9 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %4) #7, !dbg !1138
  %handler_result13 = call double @callHandler(i32 12, double %1, double %1), !dbg !1139
  %10 = fmul double %handler_result13, %0, !dbg !1139
  %handler_result1 = call double @fSubHandlerDouble(double %10, double %1), !dbg !1140
  %11 = load double, ptr %4, align 8, !dbg !1140, !tbaa !132
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %11), !dbg !1141
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1115, metadata !DIExpression()), !dbg !1130
  %12 = call double @exp(double noundef %handler_result2) #7, !dbg !1141
  store double %12, ptr %2, align 8, !dbg !1142, !tbaa !132
  %13 = call double @llvm.fabs.f64(double %handler_result2), !dbg !1143
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1144
  %14 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !1144
  %15 = call double @llvm.fabs.f64(double %12), !dbg !1145
  %16 = fmul double %15, %14, !dbg !1146
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1147
  store double %16, ptr %17, align 8, !dbg !1148, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1149
  br label %61

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1151
  %19 = fmul double %0, 5.000000e-01, !dbg !1152
  %20 = fcmp ogt double %19, %1, !dbg !1153
  br i1 %20, label %21, label %27, !dbg !1154

21:                                               ; preds = %18
  %22 = fdiv double %1, %0, !dbg !1155
  tail call void @llvm.dbg.value(metadata double %22, metadata !1123, metadata !DIExpression()), !dbg !1156
  %handler_result14 = call double @callHandler(i32 12, double %22, double %22), !dbg !1157
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1126, metadata !DIExpression()), !dbg !1156
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result14, double %22), !dbg !1157
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 1.000000e+00), !dbg !1158
  store double %handler_result5, ptr %6, align 8, !dbg !1158, !tbaa !132, !DIAssignID !1159
  call void @llvm.dbg.assign(metadata double %handler_result5, metadata !1121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1159, metadata ptr %6, metadata !DIExpression()), !dbg !1132
  %23 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !1160
  %24 = tail call double @llvm.fabs.f64(double %22), !dbg !1161
  %handler_result6 = call double @fAddHandlerDouble(double %24, double %23), !dbg !1162
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 1.000000e+00), !dbg !1163
  %25 = fmul double %handler_result7, 0x3CB0000000000000, !dbg !1163
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1164
  store double %25, ptr %26, align 8, !dbg !1165, !tbaa !137, !DIAssignID !1166
  call void @llvm.dbg.assign(metadata double %25, metadata !1121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1166, metadata ptr %26, metadata !DIExpression()), !dbg !1132
  br label %34, !dbg !1167

27:                                               ; preds = %18
  %handler_result8 = call double @fSubHandlerDouble(double %1, double %0), !dbg !1168
  %28 = fdiv double %handler_result8, %0, !dbg !1168
  tail call void @llvm.dbg.value(metadata double %28, metadata !1127, metadata !DIExpression()), !dbg !1169
  %29 = call i32 @gsl_sf_log_1plusx_mx_e(double noundef %28, ptr noundef nonnull %6) #7, !dbg !1170
  %30 = call double @llvm.fabs.f64(double %28), !dbg !1171
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !1172
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1173
  %33 = load double, ptr %32, align 8, !dbg !1174, !tbaa !137
  %handler_result9 = call double @fAddHandlerDouble(double %31, double %33), !dbg !1174
  store double %handler_result9, ptr %32, align 8, !dbg !1174, !tbaa !137, !DIAssignID !1175
  call void @llvm.dbg.assign(metadata double %handler_result9, metadata !1121, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1175, metadata ptr %32, metadata !DIExpression()), !dbg !1132
  br label %34

34:                                               ; preds = %27, %21
  %35 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %5) #7, !dbg !1176
  %36 = load double, ptr %6, align 8, !dbg !1177, !tbaa !132
  %37 = fmul double %36, %0, !dbg !1178
  %38 = call double @exp(double noundef %37) #7, !dbg !1179
  %39 = fmul double %0, 0x401921FB54442D18, !dbg !1180
  %40 = call double @sqrt(double noundef %39) #7, !dbg !1181
  %41 = fdiv double %38, %40, !dbg !1182
  tail call void @llvm.dbg.value(metadata double %41, metadata !1122, metadata !DIExpression()), !dbg !1132
  %42 = load double, ptr %5, align 8, !dbg !1183, !tbaa !132
  %43 = fdiv double %41, %42, !dbg !1184
  store double %43, ptr %2, align 8, !dbg !1185, !tbaa !132
  %44 = load double, ptr %6, align 8, !dbg !1186, !tbaa !132
  %45 = fmul double %44, %0, !dbg !1187
  %46 = call double @llvm.fabs.f64(double %45), !dbg !1188
  %handler_result10 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !1189
  %47 = fmul double %handler_result10, 0x3CC0000000000000, !dbg !1189
  %48 = call double @llvm.fabs.f64(double %43), !dbg !1190
  %49 = fmul double %48, %47, !dbg !1191
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1192
  %51 = call double @llvm.fabs.f64(double %0), !dbg !1193
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1194
  %53 = load double, ptr %52, align 8, !dbg !1194, !tbaa !137
  %54 = fmul double %51, %53, !dbg !1195
  %55 = fmul double %48, %54, !dbg !1196
  %handler_result11 = call double @fAddHandlerDouble(double %55, double %49), !dbg !1197
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1197
  %57 = load double, ptr %56, align 8, !dbg !1197, !tbaa !137
  %58 = call double @llvm.fabs.f64(double %42), !dbg !1198
  %59 = fdiv double %57, %58, !dbg !1199
  %60 = fmul double %48, %59, !dbg !1200
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %60), !dbg !1201
  store double %handler_result12, ptr %50, align 8, !dbg !1201, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1202
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1202
  br label %61

61:                                               ; preds = %34, %8
  ret void, !dbg !1203
}

declare !dbg !1204 i32 @gsl_sf_exprel_n_CF_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1206 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1209 i32 @gsl_sf_log_1plusx_mx_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1211 i32 @gsl_sf_gammastar_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1212 i32 @gsl_sf_erfc_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1214 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!158 = !DILocation(line: 522, column: 18, scope: !108)
!159 = !DILocation(line: 523, column: 22, scope: !108)
!160 = !DILocation(line: 523, column: 13, scope: !108)
!161 = !DILocation(line: 524, column: 44, scope: !108)
!162 = !DILocation(line: 524, column: 42, scope: !108)
!163 = !DILocation(line: 524, column: 17, scope: !108)
!164 = !DILocation(line: 526, column: 3, scope: !109)
!165 = !DILocation(line: 527, column: 13, scope: !120)
!166 = !DILocation(line: 527, column: 24, scope: !120)
!167 = !DILocation(line: 527, column: 32, scope: !120)
!168 = !DILocation(line: 527, column: 39, scope: !120)
!169 = !DILocation(line: 527, column: 11, scope: !109)
!170 = !DILocation(line: 531, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !120, file: !2, line: 527, column: 44)
!172 = !DILocation(line: 531, column: 5, scope: !171)
!173 = !DILocation(line: 533, column: 13, scope: !119)
!174 = !DILocation(line: 533, column: 19, scope: !119)
!175 = !DILocation(line: 539, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !119, file: !2, line: 533, column: 31)
!177 = !{i32 0, i32 12}
!178 = !DILocation(line: 539, column: 5, scope: !176)
!179 = !DILocation(line: 541, column: 13, scope: !118)
!180 = !DILocation(line: 541, column: 11, scope: !119)
!181 = !DILocation(line: 542, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !2, line: 542, column: 8)
!183 = distinct !DILexicalBlock(scope: !118, file: !2, line: 541, column: 19)
!184 = !DILocation(line: 542, column: 8, scope: !183)
!185 = !DILocation(line: 552, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 542, column: 22)
!187 = !DILocation(line: 552, column: 7, scope: !186)
!188 = !DILocation(line: 555, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !2, line: 554, column: 10)
!190 = !DILocation(line: 555, column: 7, scope: !189)
!191 = !DILocation(line: 559, column: 16, scope: !116)
!192 = !DILocation(line: 559, column: 10, scope: !116)
!193 = !DILocation(line: 559, column: 8, scope: !117)
!194 = !DILocation(line: 566, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !116, file: !2, line: 559, column: 25)
!196 = !DILocation(line: 566, column: 7, scope: !195)
!197 = !DILocation(line: 569, column: 7, scope: !115)
!198 = !DILocation(line: 570, column: 20, scope: !115)
!199 = !DILocation(line: 571, column: 30, scope: !115)
!200 = !DILocation(line: 571, column: 20, scope: !115)
!201 = !DILocation(line: 572, column: 24, scope: !115)
!202 = !DILocation(line: 572, column: 15, scope: !115)
!203 = !DILocation(line: 573, column: 46, scope: !115)
!204 = !DILocation(line: 573, column: 44, scope: !115)
!205 = !DILocation(line: 573, column: 19, scope: !115)
!206 = !DILocation(line: 575, column: 5, scope: !116)
!207 = !DILocation(line: 0, scope: !112)
!208 = !DILocation(line: 577, column: 1, scope: !91)
!209 = !DISubprogram(name: "gsl_error", scope: !44, file: !44, line: 77, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212, !212, !45, !45}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!214 = distinct !DISubprogram(name: "gamma_inc_P_series", scope: !2, file: !2, line: 83, type: !92, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !215)
!215 = !{!216, !217, !218, !219, !221, !222, !223, !226, !227, !229, !230, !231, !232, !233}
!216 = !DILocalVariable(name: "a", arg: 1, scope: !214, file: !2, line: 83, type: !94)
!217 = !DILocalVariable(name: "x", arg: 2, scope: !214, file: !2, line: 83, type: !94)
!218 = !DILocalVariable(name: "result", arg: 3, scope: !214, file: !2, line: 83, type: !96)
!219 = !DILocalVariable(name: "nmax", scope: !214, file: !2, line: 85, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!221 = !DILocalVariable(name: "D", scope: !214, file: !2, line: 87, type: !97)
!222 = !DILocalVariable(name: "stat_D", scope: !214, file: !2, line: 88, type: !45)
!223 = !DILocalVariable(name: "cf_res", scope: !224, file: !2, line: 97, type: !97)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 96, column: 33)
!225 = distinct !DILexicalBlock(scope: !214, file: !2, line: 96, column: 7)
!226 = !DILocalVariable(name: "status", scope: !224, file: !2, line: 98, type: !45)
!227 = !DILocalVariable(name: "sum", scope: !228, file: !2, line: 113, type: !95)
!228 = distinct !DILexicalBlock(scope: !214, file: !2, line: 112, column: 3)
!229 = !DILocalVariable(name: "term", scope: !228, file: !2, line: 114, type: !95)
!230 = !DILocalVariable(name: "remainder", scope: !228, file: !2, line: 115, type: !95)
!231 = !DILocalVariable(name: "n", scope: !228, file: !2, line: 116, type: !45)
!232 = !DILocalVariable(name: "nlow", scope: !228, file: !2, line: 120, type: !45)
!233 = !DILocalVariable(name: "tnp1", scope: !234, file: !2, line: 137, type: !95)
!234 = distinct !DILexicalBlock(scope: !228, file: !2, line: 136, column: 5)
!235 = distinct !DIAssignID()
!236 = !DILocation(line: 0, scope: !214)
!237 = distinct !DIAssignID()
!238 = !DILocation(line: 0, scope: !224)
!239 = !DILocation(line: 87, column: 3, scope: !214)
!240 = !DILocation(line: 88, column: 16, scope: !214)
!241 = !DILocation(line: 96, column: 17, scope: !225)
!242 = !DILocation(line: 96, column: 9, scope: !225)
!243 = !DILocation(line: 96, column: 21, scope: !225)
!244 = !DILocation(line: 97, column: 5, scope: !224)
!245 = !DILocation(line: 98, column: 19, scope: !224)
!246 = !DILocation(line: 99, column: 21, scope: !224)
!247 = !DILocation(line: 99, column: 34, scope: !224)
!248 = !DILocation(line: 99, column: 25, scope: !224)
!249 = !DILocation(line: 99, column: 17, scope: !224)
!250 = !DILocation(line: 100, column: 39, scope: !224)
!251 = !DILocation(line: 100, column: 30, scope: !224)
!252 = !DILocation(line: 100, column: 19, scope: !224)
!253 = !DILocation(line: 100, column: 53, scope: !224)
!254 = !DILocation(line: 100, column: 57, scope: !224)
!255 = !DILocation(line: 100, column: 46, scope: !224)
!256 = !DILocation(line: 100, column: 13, scope: !224)
!257 = !DILocation(line: 100, column: 17, scope: !224)
!258 = !DILocation(line: 102, column: 3, scope: !225)
!259 = !DILocation(line: 106, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !214, file: !2, line: 106, column: 7)
!261 = !DILocation(line: 106, column: 7, scope: !214)
!262 = !DILocation(line: 107, column: 5, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 107, column: 5)
!264 = distinct !DILexicalBlock(scope: !260, file: !2, line: 106, column: 23)
!265 = !DILocation(line: 0, scope: !228)
!266 = !DILocation(line: 120, column: 19, scope: !228)
!267 = !DILocation(line: 120, column: 16, scope: !228)
!268 = !DILocation(line: 122, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 122, column: 5)
!270 = distinct !DILexicalBlock(scope: !228, file: !2, line: 122, column: 5)
!271 = !DILocation(line: 122, column: 5, scope: !270)
!272 = !DILocation(line: 123, column: 20, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !2, line: 122, column: 29)
!274 = !DILocation(line: 123, column: 16, scope: !273)
!275 = !DILocation(line: 123, column: 12, scope: !273)
!276 = !DILocation(line: 122, column: 25, scope: !269)
!277 = distinct !{!277, !278}
!278 = !{!"llvm.loop.unroll.disable"}
!279 = !DILocation(line: 124, column: 12, scope: !273)
!280 = !DILocation(line: 129, column: 34, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 129, column: 5)
!282 = distinct !DILexicalBlock(scope: !228, file: !2, line: 129, column: 5)
!283 = !DILocation(line: 129, column: 5, scope: !282)
!284 = distinct !{!284, !271, !285, !286}
!285 = !DILocation(line: 125, column: 5, scope: !270)
!286 = !{!"llvm.loop.mustprogress"}
!287 = !DILocation(line: 130, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !2, line: 129, column: 47)
!289 = !DILocation(line: 130, column: 16, scope: !288)
!290 = !DILocation(line: 130, column: 12, scope: !288)
!291 = !DILocation(line: 132, column: 19, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 132, column: 10)
!293 = !DILocation(line: 132, column: 10, scope: !292)
!294 = !DILocation(line: 132, column: 25, scope: !292)
!295 = !DILocation(line: 132, column: 10, scope: !288)
!296 = !DILocation(line: 129, column: 42, scope: !281)
!297 = distinct !{!297, !283, !298, !286}
!298 = !DILocation(line: 133, column: 5, scope: !282)
!299 = !DILocation(line: 137, column: 27, scope: !234)
!300 = !DILocation(line: 137, column: 23, scope: !234)
!301 = !DILocation(line: 137, column: 31, scope: !234)
!302 = !DILocation(line: 0, scope: !234)
!303 = !DILocation(line: 138, column: 35, scope: !234)
!304 = !DILocation(line: 138, column: 25, scope: !234)
!305 = !DILocation(line: 141, column: 22, scope: !228)
!306 = !DILocation(line: 141, column: 26, scope: !228)
!307 = !DILocation(line: 141, column: 18, scope: !228)
!308 = !DILocation(line: 142, column: 22, scope: !228)
!309 = !DILocation(line: 142, column: 28, scope: !228)
!310 = !DILocation(line: 142, column: 26, scope: !228)
!311 = !DILocation(line: 142, column: 51, scope: !228)
!312 = !DILocation(line: 142, column: 40, scope: !228)
!313 = !DILocation(line: 142, column: 13, scope: !228)
!314 = !DILocation(line: 143, column: 30, scope: !228)
!315 = !DILocation(line: 143, column: 50, scope: !228)
!316 = !DILocation(line: 143, column: 48, scope: !228)
!317 = !DILocation(line: 143, column: 17, scope: !228)
!318 = !DILocation(line: 145, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !228, file: !2, line: 145, column: 8)
!320 = !DILocation(line: 145, column: 18, scope: !319)
!321 = !DILocation(line: 145, column: 35, scope: !319)
!322 = !DILocation(line: 145, column: 21, scope: !319)
!323 = !DILocation(line: 145, column: 41, scope: !319)
!324 = !DILocation(line: 145, column: 8, scope: !228)
!325 = !DILocation(line: 146, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !2, line: 146, column: 7)
!327 = !DILocation(line: 150, column: 1, scope: !214)
!328 = distinct !DISubprogram(name: "gamma_inc_Q_asymp_unif", scope: !2, file: !2, line: 192, type: !92, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !345}
!330 = !DILocalVariable(name: "a", arg: 1, scope: !328, file: !2, line: 192, type: !94)
!331 = !DILocalVariable(name: "x", arg: 2, scope: !328, file: !2, line: 192, type: !94)
!332 = !DILocalVariable(name: "result", arg: 3, scope: !328, file: !2, line: 192, type: !96)
!333 = !DILocalVariable(name: "rta", scope: !328, file: !2, line: 194, type: !94)
!334 = !DILocalVariable(name: "eps", scope: !328, file: !2, line: 195, type: !94)
!335 = !DILocalVariable(name: "ln_term", scope: !328, file: !2, line: 197, type: !97)
!336 = !DILocalVariable(name: "stat_ln", scope: !328, file: !2, line: 198, type: !220)
!337 = !DILocalVariable(name: "eta", scope: !328, file: !2, line: 199, type: !94)
!338 = !DILocalVariable(name: "erfc", scope: !328, file: !2, line: 201, type: !97)
!339 = !DILocalVariable(name: "R", scope: !328, file: !2, line: 203, type: !95)
!340 = !DILocalVariable(name: "c0", scope: !328, file: !2, line: 204, type: !95)
!341 = !DILocalVariable(name: "c1", scope: !328, file: !2, line: 204, type: !95)
!342 = !DILocalVariable(name: "rt_term", scope: !343, file: !2, line: 217, type: !94)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 216, column: 8)
!344 = distinct !DILexicalBlock(scope: !328, file: !2, line: 212, column: 6)
!345 = !DILocalVariable(name: "lam", scope: !343, file: !2, line: 218, type: !94)
!346 = distinct !DIAssignID()
!347 = !DILocation(line: 0, scope: !328)
!348 = distinct !DIAssignID()
!349 = !DILocation(line: 194, column: 22, scope: !328)
!350 = !DILocation(line: 195, column: 27, scope: !328)
!351 = !DILocation(line: 197, column: 3, scope: !328)
!352 = !DILocation(line: 198, column: 23, scope: !328)
!353 = !DILocation(line: 199, column: 23, scope: !328)
!354 = !DILocation(line: 199, column: 57, scope: !328)
!355 = !DILocation(line: 199, column: 48, scope: !328)
!356 = !DILocation(line: 199, column: 39, scope: !328)
!357 = !DILocation(line: 199, column: 37, scope: !328)
!358 = !DILocation(line: 201, column: 3, scope: !328)
!359 = !DILocation(line: 210, column: 20, scope: !328)
!360 = !DILocation(line: 210, column: 24, scope: !328)
!361 = !DILocation(line: 210, column: 3, scope: !328)
!362 = !DILocation(line: 212, column: 6, scope: !344)
!363 = !DILocation(line: 212, column: 16, scope: !344)
!364 = !DILocation(line: 212, column: 6, scope: !328)
!365 = !DILocation(line: 213, column: 79, scope: !366)
!366 = distinct !DILexicalBlock(scope: !344, file: !2, line: 212, column: 41)
!367 = !DILocation(line: 213, column: 85, scope: !366)
!368 = !DILocation(line: 213, column: 58, scope: !366)
!369 = !DILocation(line: 213, column: 40, scope: !366)
!370 = !DILocation(line: 213, column: 24, scope: !366)
!371 = !DILocation(line: 214, column: 26, scope: !366)
!372 = !DILocation(line: 215, column: 3, scope: !366)
!373 = !DILocation(line: 217, column: 48, scope: !343)
!374 = !DILocation(line: 217, column: 38, scope: !343)
!375 = !DILocation(line: 217, column: 56, scope: !343)
!376 = !DILocation(line: 217, column: 51, scope: !343)
!377 = !DILocation(line: 217, column: 28, scope: !343)
!378 = !DILocation(line: 0, scope: !343)
!379 = !DILocation(line: 218, column: 25, scope: !343)
!380 = !DILocation(line: 219, column: 20, scope: !343)
!381 = !DILocation(line: 219, column: 29, scope: !343)
!382 = !DILocation(line: 220, column: 15, scope: !343)
!383 = !DILocation(line: 220, column: 19, scope: !343)
!384 = !DILocation(line: 220, column: 30, scope: !343)
!385 = !DILocation(line: 220, column: 41, scope: !343)
!386 = !DILocation(line: 220, column: 46, scope: !343)
!387 = !DILocation(line: 220, column: 24, scope: !343)
!388 = !DILocation(line: 220, column: 60, scope: !343)
!389 = !DILocation(line: 220, column: 65, scope: !343)
!390 = !DILocation(line: 220, column: 69, scope: !343)
!391 = !DILocation(line: 220, column: 10, scope: !343)
!392 = !DILocation(line: 220, column: 83, scope: !343)
!393 = !DILocation(line: 220, column: 88, scope: !343)
!394 = !DILocation(line: 220, column: 92, scope: !343)
!395 = !DILocation(line: 220, column: 96, scope: !343)
!396 = !DILocation(line: 220, column: 100, scope: !343)
!397 = !DILocation(line: 220, column: 104, scope: !343)
!398 = !DILocation(line: 220, column: 75, scope: !343)
!399 = !DILocation(line: 0, scope: !344)
!400 = !DILocation(line: 223, column: 15, scope: !328)
!401 = !DILocation(line: 223, column: 17, scope: !328)
!402 = !DILocation(line: 223, column: 21, scope: !328)
!403 = !DILocation(line: 223, column: 7, scope: !328)
!404 = !DILocation(line: 223, column: 44, scope: !328)
!405 = !DILocation(line: 223, column: 26, scope: !328)
!406 = !DILocation(line: 223, column: 60, scope: !328)
!407 = !DILocation(line: 223, column: 50, scope: !328)
!408 = !DILocation(line: 225, column: 29, scope: !328)
!409 = !DILocation(line: 225, column: 22, scope: !328)
!410 = !DILocation(line: 225, column: 16, scope: !328)
!411 = !DILocation(line: 226, column: 43, scope: !328)
!412 = !DILocation(line: 226, column: 49, scope: !328)
!413 = !DILocation(line: 226, column: 52, scope: !328)
!414 = !DILocation(line: 226, column: 56, scope: !328)
!415 = !DILocation(line: 226, column: 36, scope: !328)
!416 = !DILocation(line: 226, column: 34, scope: !328)
!417 = !DILocation(line: 226, column: 75, scope: !328)
!418 = !DILocation(line: 226, column: 68, scope: !328)
!419 = !DILocation(line: 226, column: 11, scope: !328)
!420 = !DILocation(line: 227, column: 42, scope: !328)
!421 = !DILocation(line: 227, column: 40, scope: !328)
!422 = !DILocation(line: 227, column: 15, scope: !328)
!423 = !DILocation(line: 230, column: 1, scope: !328)
!424 = !DILocation(line: 229, column: 3, scope: !328)
!425 = distinct !DISubprogram(name: "gamma_inc_Q_series", scope: !2, file: !2, line: 339, type: !92, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !450, !451}
!427 = !DILocalVariable(name: "a", arg: 1, scope: !425, file: !2, line: 339, type: !94)
!428 = !DILocalVariable(name: "x", arg: 2, scope: !425, file: !2, line: 339, type: !94)
!429 = !DILocalVariable(name: "result", arg: 3, scope: !425, file: !2, line: 339, type: !96)
!430 = !DILocalVariable(name: "term1", scope: !425, file: !2, line: 341, type: !95)
!431 = !DILocalVariable(name: "sum", scope: !425, file: !2, line: 342, type: !95)
!432 = !DILocalVariable(name: "stat_sum", scope: !425, file: !2, line: 343, type: !45)
!433 = !DILocalVariable(name: "term2", scope: !425, file: !2, line: 344, type: !95)
!434 = !DILocalVariable(name: "pg21", scope: !435, file: !2, line: 349, type: !94)
!435 = distinct !DILexicalBlock(scope: !425, file: !2, line: 346, column: 3)
!436 = !DILocalVariable(name: "lnx", scope: !435, file: !2, line: 350, type: !94)
!437 = !DILocalVariable(name: "el", scope: !435, file: !2, line: 351, type: !94)
!438 = !DILocalVariable(name: "c1", scope: !435, file: !2, line: 352, type: !94)
!439 = !DILocalVariable(name: "c2", scope: !435, file: !2, line: 353, type: !94)
!440 = !DILocalVariable(name: "c3", scope: !435, file: !2, line: 354, type: !94)
!441 = !DILocalVariable(name: "c4", scope: !435, file: !2, line: 355, type: !94)
!442 = !DILocalVariable(name: "c5", scope: !435, file: !2, line: 360, type: !94)
!443 = !DILocalVariable(name: "c6", scope: !435, file: !2, line: 366, type: !94)
!444 = !DILocalVariable(name: "c7", scope: !435, file: !2, line: 373, type: !94)
!445 = !DILocalVariable(name: "c8", scope: !435, file: !2, line: 381, type: !94)
!446 = !DILocalVariable(name: "c9", scope: !435, file: !2, line: 390, type: !94)
!447 = !DILocalVariable(name: "c10", scope: !435, file: !2, line: 400, type: !94)
!448 = !DILocalVariable(name: "nmax", scope: !449, file: !2, line: 418, type: !220)
!449 = distinct !DILexicalBlock(scope: !425, file: !2, line: 415, column: 3)
!450 = !DILocalVariable(name: "t", scope: !449, file: !2, line: 419, type: !95)
!451 = !DILocalVariable(name: "n", scope: !449, file: !2, line: 420, type: !45)
!452 = !DILocation(line: 0, scope: !425)
!453 = !DILocation(line: 0, scope: !435)
!454 = !DILocation(line: 424, column: 12, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 423, column: 27)
!456 = distinct !DILexicalBlock(scope: !457, file: !2, line: 423, column: 5)
!457 = distinct !DILexicalBlock(scope: !449, file: !2, line: 423, column: 5)
!458 = !DILocation(line: 0, scope: !449)
!459 = !DILocation(line: 423, column: 5, scope: !457)
!460 = !DILocation(line: 424, column: 16, scope: !455)
!461 = !DILocation(line: 424, column: 14, scope: !455)
!462 = !DILocation(line: 424, column: 9, scope: !455)
!463 = !DILocation(line: 425, column: 26, scope: !455)
!464 = !DILocation(line: 425, column: 21, scope: !455)
!465 = !DILocation(line: 425, column: 31, scope: !455)
!466 = !DILocation(line: 426, column: 16, scope: !467)
!467 = distinct !DILexicalBlock(scope: !455, file: !2, line: 426, column: 10)
!468 = !DILocation(line: 426, column: 10, scope: !467)
!469 = !DILocation(line: 426, column: 22, scope: !467)
!470 = !DILocation(line: 426, column: 10, scope: !455)
!471 = !DILocation(line: 423, column: 23, scope: !456)
!472 = !DILocation(line: 423, column: 15, scope: !456)
!473 = distinct !{!473, !459, !474, !286}
!474 = !DILocation(line: 427, column: 5, scope: !457)
!475 = !DILocation(line: 429, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !449, file: !2, line: 429, column: 8)
!477 = !DILocation(line: 353, column: 43, scope: !435)
!478 = !DILocation(line: 353, column: 46, scope: !435)
!479 = !DILocation(line: 354, column: 46, scope: !435)
!480 = !DILocation(line: 354, column: 49, scope: !435)
!481 = !DILocation(line: 354, column: 25, scope: !435)
!482 = !DILocation(line: 356, column: 49, scope: !435)
!483 = !DILocation(line: 356, column: 24, scope: !435)
!484 = !DILocation(line: 357, column: 24, scope: !435)
!485 = !DILocation(line: 358, column: 24, scope: !435)
!486 = !DILocation(line: 359, column: 24, scope: !435)
!487 = !DILocation(line: 361, column: 24, scope: !435)
!488 = !DILocation(line: 362, column: 24, scope: !435)
!489 = !DILocation(line: 363, column: 24, scope: !435)
!490 = !DILocation(line: 364, column: 24, scope: !435)
!491 = !DILocation(line: 365, column: 24, scope: !435)
!492 = !DILocation(line: 367, column: 24, scope: !435)
!493 = !DILocation(line: 368, column: 24, scope: !435)
!494 = !DILocation(line: 369, column: 24, scope: !435)
!495 = !DILocation(line: 370, column: 24, scope: !435)
!496 = !DILocation(line: 371, column: 24, scope: !435)
!497 = !DILocation(line: 372, column: 24, scope: !435)
!498 = !DILocation(line: 374, column: 24, scope: !435)
!499 = !DILocation(line: 375, column: 24, scope: !435)
!500 = !DILocation(line: 376, column: 24, scope: !435)
!501 = !DILocation(line: 377, column: 24, scope: !435)
!502 = !DILocation(line: 378, column: 24, scope: !435)
!503 = !DILocation(line: 379, column: 24, scope: !435)
!504 = !DILocation(line: 380, column: 24, scope: !435)
!505 = !DILocation(line: 382, column: 24, scope: !435)
!506 = !DILocation(line: 383, column: 24, scope: !435)
!507 = !DILocation(line: 384, column: 24, scope: !435)
!508 = !DILocation(line: 385, column: 24, scope: !435)
!509 = !DILocation(line: 386, column: 24, scope: !435)
!510 = !DILocation(line: 387, column: 24, scope: !435)
!511 = !DILocation(line: 388, column: 24, scope: !435)
!512 = !DILocation(line: 389, column: 24, scope: !435)
!513 = !DILocation(line: 391, column: 24, scope: !435)
!514 = !DILocation(line: 392, column: 24, scope: !435)
!515 = !DILocation(line: 393, column: 24, scope: !435)
!516 = !DILocation(line: 394, column: 24, scope: !435)
!517 = !DILocation(line: 395, column: 24, scope: !435)
!518 = !DILocation(line: 396, column: 24, scope: !435)
!519 = !DILocation(line: 397, column: 24, scope: !435)
!520 = !DILocation(line: 398, column: 24, scope: !435)
!521 = !DILocation(line: 399, column: 24, scope: !435)
!522 = !DILocation(line: 401, column: 24, scope: !435)
!523 = !DILocation(line: 402, column: 24, scope: !435)
!524 = !DILocation(line: 403, column: 24, scope: !435)
!525 = !DILocation(line: 404, column: 24, scope: !435)
!526 = !DILocation(line: 405, column: 24, scope: !435)
!527 = !DILocation(line: 406, column: 24, scope: !435)
!528 = !DILocation(line: 407, column: 24, scope: !435)
!529 = !DILocation(line: 408, column: 24, scope: !435)
!530 = !DILocation(line: 409, column: 24, scope: !435)
!531 = !DILocation(line: 410, column: 24, scope: !435)
!532 = !DILocation(line: 412, column: 68, scope: !435)
!533 = !DILocation(line: 412, column: 62, scope: !435)
!534 = !DILocation(line: 412, column: 56, scope: !435)
!535 = !DILocation(line: 412, column: 50, scope: !435)
!536 = !DILocation(line: 412, column: 44, scope: !435)
!537 = !DILocation(line: 412, column: 38, scope: !435)
!538 = !DILocation(line: 412, column: 32, scope: !435)
!539 = !DILocation(line: 412, column: 26, scope: !435)
!540 = !DILocation(line: 412, column: 20, scope: !435)
!541 = !DILocation(line: 412, column: 14, scope: !435)
!542 = !DILocation(line: 435, column: 25, scope: !425)
!543 = !DILocation(line: 435, column: 28, scope: !425)
!544 = !DILocation(line: 435, column: 37, scope: !425)
!545 = !DILocation(line: 435, column: 41, scope: !425)
!546 = !DILocation(line: 436, column: 16, scope: !425)
!547 = !DILocation(line: 437, column: 37, scope: !425)
!548 = !DILocation(line: 437, column: 55, scope: !425)
!549 = !DILocation(line: 437, column: 54, scope: !425)
!550 = !DILocation(line: 437, column: 34, scope: !425)
!551 = !DILocation(line: 437, column: 11, scope: !425)
!552 = !DILocation(line: 438, column: 42, scope: !425)
!553 = !DILocation(line: 438, column: 40, scope: !425)
!554 = !DILocation(line: 438, column: 15, scope: !425)
!555 = !DILocation(line: 439, column: 3, scope: !425)
!556 = distinct !DISubprogram(name: "gamma_inc_Q_CF", scope: !2, file: !2, line: 321, type: !92, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564}
!558 = !DILocalVariable(name: "a", arg: 1, scope: !556, file: !2, line: 321, type: !94)
!559 = !DILocalVariable(name: "x", arg: 2, scope: !556, file: !2, line: 321, type: !94)
!560 = !DILocalVariable(name: "result", arg: 3, scope: !556, file: !2, line: 321, type: !96)
!561 = !DILocalVariable(name: "D", scope: !556, file: !2, line: 323, type: !97)
!562 = !DILocalVariable(name: "F", scope: !556, file: !2, line: 324, type: !97)
!563 = !DILocalVariable(name: "stat_D", scope: !556, file: !2, line: 325, type: !220)
!564 = !DILocalVariable(name: "stat_F", scope: !556, file: !2, line: 326, type: !220)
!565 = distinct !DIAssignID()
!566 = !DILocation(line: 0, scope: !556)
!567 = !DILocation(line: 323, column: 3, scope: !556)
!568 = !DILocation(line: 325, column: 22, scope: !556)
!569 = !DILocalVariable(name: "a", arg: 1, scope: !570, file: !2, line: 247, type: !94)
!570 = distinct !DISubprogram(name: "gamma_inc_F_CF", scope: !2, file: !2, line: 247, type: !92, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !571)
!571 = !{!569, !572, !573, !574, !575, !576, !577, !578, !579, !580, !584}
!572 = !DILocalVariable(name: "x", arg: 2, scope: !570, file: !2, line: 247, type: !94)
!573 = !DILocalVariable(name: "result", arg: 3, scope: !570, file: !2, line: 247, type: !96)
!574 = !DILocalVariable(name: "nmax", scope: !570, file: !2, line: 249, type: !220)
!575 = !DILocalVariable(name: "small", scope: !570, file: !2, line: 250, type: !94)
!576 = !DILocalVariable(name: "hn", scope: !570, file: !2, line: 252, type: !95)
!577 = !DILocalVariable(name: "Cn", scope: !570, file: !2, line: 253, type: !95)
!578 = !DILocalVariable(name: "Dn", scope: !570, file: !2, line: 254, type: !95)
!579 = !DILocalVariable(name: "n", scope: !570, file: !2, line: 255, type: !45)
!580 = !DILocalVariable(name: "an", scope: !581, file: !2, line: 261, type: !95)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 260, column: 3)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 259, column: 3)
!583 = distinct !DILexicalBlock(scope: !570, file: !2, line: 259, column: 3)
!584 = !DILocalVariable(name: "delta", scope: !581, file: !2, line: 262, type: !95)
!585 = !DILocation(line: 0, scope: !570, inlinedAt: !586)
!586 = distinct !DILocation(line: 326, column: 22, scope: !556)
!587 = !DILocation(line: 259, column: 3, scope: !583, inlinedAt: !586)
!588 = !DILocation(line: 264, column: 8, scope: !589, inlinedAt: !586)
!589 = distinct !DILexicalBlock(scope: !581, file: !2, line: 264, column: 8)
!590 = !DILocation(line: 0, scope: !581, inlinedAt: !586)
!591 = !DILocation(line: 264, column: 8, scope: !581, inlinedAt: !586)
!592 = !DILocation(line: 265, column: 18, scope: !589, inlinedAt: !586)
!593 = !DILocation(line: 265, column: 16, scope: !589, inlinedAt: !586)
!594 = !DILocation(line: 265, column: 15, scope: !589, inlinedAt: !586)
!595 = !DILocation(line: 265, column: 7, scope: !589, inlinedAt: !586)
!596 = !DILocation(line: 267, column: 17, scope: !589, inlinedAt: !586)
!597 = !DILocation(line: 267, column: 16, scope: !589, inlinedAt: !586)
!598 = !DILocation(line: 0, scope: !589, inlinedAt: !586)
!599 = !DILocation(line: 269, column: 19, scope: !581, inlinedAt: !586)
!600 = !DILocation(line: 270, column: 10, scope: !601, inlinedAt: !586)
!601 = distinct !DILexicalBlock(scope: !581, file: !2, line: 270, column: 10)
!602 = !DILocation(line: 270, column: 19, scope: !601, inlinedAt: !586)
!603 = !DILocation(line: 275, column: 14, scope: !581, inlinedAt: !586)
!604 = !DILocation(line: 272, column: 18, scope: !581, inlinedAt: !586)
!605 = !DILocation(line: 273, column: 10, scope: !606, inlinedAt: !586)
!606 = distinct !DILexicalBlock(scope: !581, file: !2, line: 273, column: 10)
!607 = !DILocation(line: 273, column: 19, scope: !606, inlinedAt: !586)
!608 = !DILocation(line: 273, column: 10, scope: !581, inlinedAt: !586)
!609 = !DILocation(line: 276, column: 16, scope: !581, inlinedAt: !586)
!610 = !DILocation(line: 277, column: 8, scope: !581, inlinedAt: !586)
!611 = !DILocation(line: 278, column: 8, scope: !612, inlinedAt: !586)
!612 = distinct !DILexicalBlock(scope: !581, file: !2, line: 278, column: 8)
!613 = !DILocation(line: 278, column: 24, scope: !612, inlinedAt: !586)
!614 = !DILocation(line: 259, column: 29, scope: !582, inlinedAt: !586)
!615 = !DILocation(line: 259, column: 19, scope: !582, inlinedAt: !586)
!616 = distinct !{!616, !587, !617, !286}
!617 = !DILocation(line: 279, column: 3, scope: !583, inlinedAt: !586)
!618 = !DILocation(line: 285, column: 8, scope: !619, inlinedAt: !586)
!619 = distinct !DILexicalBlock(scope: !570, file: !2, line: 285, column: 6)
!620 = !DILocation(line: 285, column: 6, scope: !570, inlinedAt: !586)
!621 = !DILocation(line: 286, column: 5, scope: !622, inlinedAt: !586)
!622 = distinct !DILexicalBlock(scope: !619, file: !2, line: 286, column: 5)
!623 = !DILocation(line: 0, scope: !619, inlinedAt: !586)
!624 = !DILocation(line: 282, column: 39, scope: !570, inlinedAt: !586)
!625 = !DILocation(line: 282, column: 37, scope: !570, inlinedAt: !586)
!626 = !DILocation(line: 283, column: 47, scope: !570, inlinedAt: !586)
!627 = !DILocation(line: 283, column: 46, scope: !570, inlinedAt: !586)
!628 = !DILocation(line: 283, column: 34, scope: !570, inlinedAt: !586)
!629 = !DILocation(line: 283, column: 50, scope: !570, inlinedAt: !586)
!630 = !DILocation(line: 328, column: 20, scope: !556)
!631 = !DILocation(line: 328, column: 28, scope: !556)
!632 = !DILocation(line: 328, column: 24, scope: !556)
!633 = !DILocation(line: 328, column: 32, scope: !556)
!634 = !DILocation(line: 328, column: 16, scope: !556)
!635 = !DILocation(line: 329, column: 20, scope: !556)
!636 = !DILocation(line: 329, column: 37, scope: !556)
!637 = !DILocation(line: 329, column: 26, scope: !556)
!638 = !DILocation(line: 329, column: 24, scope: !556)
!639 = !DILocation(line: 329, column: 59, scope: !556)
!640 = !DILocation(line: 329, column: 62, scope: !556)
!641 = !DILocation(line: 329, column: 65, scope: !556)
!642 = !DILocation(line: 329, column: 48, scope: !556)
!643 = !DILocation(line: 329, column: 11, scope: !556)
!644 = !DILocation(line: 329, column: 16, scope: !556)
!645 = !DILocation(line: 332, column: 1, scope: !556)
!646 = !DILocation(line: 331, column: 3, scope: !556)
!647 = distinct !DISubprogram(name: "gamma_inc_Q_large_x", scope: !2, file: !2, line: 157, type: !92, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!649 = !DILocalVariable(name: "a", arg: 1, scope: !647, file: !2, line: 157, type: !94)
!650 = !DILocalVariable(name: "x", arg: 2, scope: !647, file: !2, line: 157, type: !94)
!651 = !DILocalVariable(name: "result", arg: 3, scope: !647, file: !2, line: 157, type: !96)
!652 = !DILocalVariable(name: "nmax", scope: !647, file: !2, line: 159, type: !220)
!653 = !DILocalVariable(name: "D", scope: !647, file: !2, line: 161, type: !97)
!654 = !DILocalVariable(name: "stat_D", scope: !647, file: !2, line: 162, type: !220)
!655 = !DILocalVariable(name: "sum", scope: !647, file: !2, line: 164, type: !95)
!656 = !DILocalVariable(name: "term", scope: !647, file: !2, line: 165, type: !95)
!657 = !DILocalVariable(name: "last", scope: !647, file: !2, line: 166, type: !95)
!658 = !DILocalVariable(name: "n", scope: !647, file: !2, line: 167, type: !45)
!659 = distinct !DIAssignID()
!660 = !DILocation(line: 0, scope: !647)
!661 = !DILocation(line: 161, column: 3, scope: !647)
!662 = !DILocation(line: 162, column: 22, scope: !647)
!663 = !DILocation(line: 168, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !647, file: !2, line: 168, column: 3)
!665 = !DILocation(line: 169, column: 16, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 168, column: 25)
!667 = distinct !DILexicalBlock(scope: !664, file: !2, line: 168, column: 3)
!668 = !DILocation(line: 169, column: 18, scope: !666)
!669 = !DILocation(line: 169, column: 10, scope: !666)
!670 = !DILocation(line: 170, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !2, line: 170, column: 8)
!672 = !DILocation(line: 170, column: 8, scope: !671)
!673 = !DILocation(line: 170, column: 24, scope: !671)
!674 = !DILocation(line: 170, column: 8, scope: !666)
!675 = !DILocation(line: 171, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !666, file: !2, line: 171, column: 8)
!677 = !DILocation(line: 171, column: 8, scope: !676)
!678 = !DILocation(line: 171, column: 24, scope: !676)
!679 = !DILocation(line: 171, column: 8, scope: !666)
!680 = !DILocation(line: 168, column: 21, scope: !667)
!681 = !DILocation(line: 168, column: 13, scope: !667)
!682 = distinct !{!682, !663, !683, !286}
!683 = !DILocation(line: 174, column: 3, scope: !664)
!684 = !DILocation(line: 168, scope: !664)
!685 = !DILocation(line: 176, column: 20, scope: !647)
!686 = !DILocation(line: 176, column: 28, scope: !647)
!687 = !DILocation(line: 176, column: 24, scope: !647)
!688 = !DILocation(line: 176, column: 32, scope: !647)
!689 = !DILocation(line: 176, column: 16, scope: !647)
!690 = !DILocation(line: 177, column: 20, scope: !647)
!691 = !DILocation(line: 177, column: 37, scope: !647)
!692 = !DILocation(line: 177, column: 26, scope: !647)
!693 = !DILocation(line: 177, column: 24, scope: !647)
!694 = !DILocation(line: 177, column: 11, scope: !647)
!695 = !DILocation(line: 178, column: 42, scope: !647)
!696 = !DILocation(line: 178, column: 40, scope: !647)
!697 = !DILocation(line: 178, column: 15, scope: !647)
!698 = !DILocation(line: 180, column: 8, scope: !699)
!699 = distinct !DILexicalBlock(scope: !647, file: !2, line: 180, column: 6)
!700 = !DILocation(line: 180, column: 6, scope: !647)
!701 = !DILocation(line: 181, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !2, line: 181, column: 5)
!703 = !DILocation(line: 0, scope: !699)
!704 = !DILocation(line: 184, column: 1, scope: !647)
!705 = !DISubprogram(name: "sqrt", scope: !706, file: !706, line: 143, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!707 = !DISubroutineType(types: !708)
!708 = !{!95, !95}
!709 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_P_e", scope: !2, file: !2, line: 581, type: !92, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !710)
!710 = !{!711, !712, !713, !714, !720, !721, !724, !725, !729}
!711 = !DILocalVariable(name: "a", arg: 1, scope: !709, file: !2, line: 581, type: !94)
!712 = !DILocalVariable(name: "x", arg: 2, scope: !709, file: !2, line: 581, type: !94)
!713 = !DILocalVariable(name: "result", arg: 3, scope: !709, file: !2, line: 581, type: !96)
!714 = !DILocalVariable(name: "Q", scope: !715, file: !2, line: 601, type: !97)
!715 = distinct !DILexicalBlock(scope: !716, file: !2, line: 596, column: 43)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 596, column: 11)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 591, column: 11)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 586, column: 11)
!719 = distinct !DILexicalBlock(scope: !709, file: !2, line: 583, column: 6)
!720 = !DILocalVariable(name: "stat_Q", scope: !715, file: !2, line: 602, type: !45)
!721 = !DILocalVariable(name: "Q", scope: !722, file: !2, line: 612, type: !97)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 608, column: 19)
!723 = distinct !DILexicalBlock(scope: !716, file: !2, line: 608, column: 11)
!724 = !DILocalVariable(name: "stat_Q", scope: !722, file: !2, line: 613, type: !45)
!725 = !DILocalVariable(name: "Q", scope: !726, file: !2, line: 631, type: !97)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 626, column: 25)
!727 = distinct !DILexicalBlock(scope: !728, file: !2, line: 626, column: 8)
!728 = distinct !DILexicalBlock(scope: !723, file: !2, line: 625, column: 8)
!729 = !DILocalVariable(name: "stat_Q", scope: !726, file: !2, line: 632, type: !45)
!730 = distinct !DIAssignID()
!731 = !DILocation(line: 0, scope: !715)
!732 = distinct !DIAssignID()
!733 = !DILocation(line: 0, scope: !722)
!734 = distinct !DIAssignID()
!735 = !DILocation(line: 0, scope: !726)
!736 = !DILocation(line: 0, scope: !709)
!737 = !DILocation(line: 583, column: 8, scope: !719)
!738 = !DILocation(line: 583, column: 15, scope: !719)
!739 = !DILocation(line: 584, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 584, column: 5)
!741 = distinct !DILexicalBlock(scope: !719, file: !2, line: 583, column: 27)
!742 = !DILocation(line: 584, column: 5, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !2, line: 584, column: 5)
!744 = !DILocation(line: 586, column: 13, scope: !718)
!745 = !DILocation(line: 586, column: 11, scope: !719)
!746 = !DILocation(line: 588, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !718, file: !2, line: 586, column: 21)
!748 = !DILocation(line: 589, column: 5, scope: !747)
!749 = !DILocation(line: 591, column: 13, scope: !717)
!750 = !DILocation(line: 591, column: 20, scope: !717)
!751 = !DILocation(line: 594, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !717, file: !2, line: 591, column: 34)
!753 = !DILocation(line: 594, column: 5, scope: !752)
!754 = !DILocation(line: 596, column: 13, scope: !716)
!755 = !DILocation(line: 596, column: 23, scope: !716)
!756 = !DILocation(line: 596, column: 31, scope: !716)
!757 = !DILocation(line: 596, column: 38, scope: !716)
!758 = !DILocation(line: 596, column: 11, scope: !717)
!759 = !DILocation(line: 601, column: 5, scope: !715)
!760 = !DILocation(line: 602, column: 18, scope: !715)
!761 = !DILocation(line: 603, column: 28, scope: !715)
!762 = !DILocation(line: 603, column: 18, scope: !715)
!763 = !DILocation(line: 604, column: 22, scope: !715)
!764 = !DILocation(line: 604, column: 13, scope: !715)
!765 = !DILocation(line: 605, column: 44, scope: !715)
!766 = !DILocation(line: 605, column: 42, scope: !715)
!767 = !DILocation(line: 605, column: 17, scope: !715)
!768 = !DILocation(line: 607, column: 3, scope: !716)
!769 = !DILocation(line: 608, column: 13, scope: !723)
!770 = !DILocation(line: 608, column: 11, scope: !716)
!771 = !DILocation(line: 612, column: 5, scope: !722)
!772 = !DILocation(line: 614, column: 15, scope: !773)
!773 = distinct !DILexicalBlock(scope: !722, file: !2, line: 614, column: 8)
!774 = !DILocation(line: 614, column: 10, scope: !773)
!775 = !DILocation(line: 614, column: 8, scope: !722)
!776 = !DILocation(line: 615, column: 16, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 614, column: 19)
!778 = !DILocation(line: 616, column: 5, scope: !777)
!779 = !DILocation(line: 618, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 617, column: 10)
!781 = !DILocation(line: 0, scope: !773)
!782 = !DILocation(line: 620, column: 28, scope: !722)
!783 = !DILocation(line: 620, column: 18, scope: !722)
!784 = !DILocation(line: 621, column: 22, scope: !722)
!785 = !DILocation(line: 621, column: 13, scope: !722)
!786 = !DILocation(line: 622, column: 44, scope: !722)
!787 = !DILocation(line: 622, column: 42, scope: !722)
!788 = !DILocation(line: 622, column: 17, scope: !722)
!789 = !DILocation(line: 624, column: 3, scope: !723)
!790 = !DILocation(line: 626, column: 13, scope: !727)
!791 = !DILocation(line: 626, column: 20, scope: !727)
!792 = !DILocation(line: 626, column: 8, scope: !728)
!793 = !DILocation(line: 631, column: 7, scope: !726)
!794 = !DILocation(line: 632, column: 20, scope: !726)
!795 = !DILocation(line: 633, column: 30, scope: !726)
!796 = !DILocation(line: 633, column: 20, scope: !726)
!797 = !DILocation(line: 634, column: 24, scope: !726)
!798 = !DILocation(line: 634, column: 15, scope: !726)
!799 = !DILocation(line: 635, column: 46, scope: !726)
!800 = !DILocation(line: 635, column: 44, scope: !726)
!801 = !DILocation(line: 635, column: 19, scope: !726)
!802 = !DILocation(line: 637, column: 5, scope: !727)
!803 = !DILocation(line: 639, column: 14, scope: !804)
!804 = distinct !DILexicalBlock(scope: !727, file: !2, line: 638, column: 10)
!805 = !DILocation(line: 639, column: 7, scope: !804)
!806 = !DILocation(line: 0, scope: !719)
!807 = !DILocation(line: 642, column: 1, scope: !709)
!808 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_e", scope: !2, file: !2, line: 646, type: !92, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !809)
!809 = !{!810, !811, !812, !813, !821, !822, !823, !824, !825, !826}
!810 = !DILocalVariable(name: "a", arg: 1, scope: !808, file: !2, line: 646, type: !94)
!811 = !DILocalVariable(name: "x", arg: 2, scope: !808, file: !2, line: 646, type: !94)
!812 = !DILocalVariable(name: "result", arg: 3, scope: !808, file: !2, line: 646, type: !96)
!813 = !DILocalVariable(name: "fa", scope: !814, file: !2, line: 678, type: !94)
!814 = distinct !DILexicalBlock(scope: !815, file: !2, line: 676, column: 3)
!815 = distinct !DILexicalBlock(scope: !816, file: !2, line: 671, column: 11)
!816 = distinct !DILexicalBlock(scope: !817, file: !2, line: 662, column: 11)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 658, column: 11)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 654, column: 11)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 651, column: 11)
!820 = distinct !DILexicalBlock(scope: !808, file: !2, line: 648, column: 6)
!821 = !DILocalVariable(name: "da", scope: !814, file: !2, line: 679, type: !94)
!822 = !DILocalVariable(name: "g_da", scope: !814, file: !2, line: 681, type: !97)
!823 = !DILocalVariable(name: "stat_g_da", scope: !814, file: !2, line: 682, type: !220)
!824 = !DILocalVariable(name: "alpha", scope: !814, file: !2, line: 685, type: !95)
!825 = !DILocalVariable(name: "gax", scope: !814, file: !2, line: 686, type: !95)
!826 = !DILocalVariable(name: "shift", scope: !827, file: !2, line: 691, type: !94)
!827 = distinct !DILexicalBlock(scope: !814, file: !2, line: 690, column: 5)
!828 = distinct !DIAssignID()
!829 = distinct !DIAssignID()
!830 = distinct !DIAssignID()
!831 = !DILocation(line: 0, scope: !814)
!832 = !DILocation(line: 0, scope: !808)
!833 = !DILocation(line: 648, column: 8, scope: !820)
!834 = !DILocation(line: 648, column: 6, scope: !808)
!835 = !DILocation(line: 649, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !2, line: 649, column: 5)
!837 = distinct !DILexicalBlock(scope: !820, file: !2, line: 648, column: 15)
!838 = !DILocation(line: 649, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !2, line: 649, column: 5)
!840 = !DILocation(line: 651, column: 13, scope: !819)
!841 = !DILocation(line: 651, column: 11, scope: !820)
!842 = !DILocation(line: 652, column: 12, scope: !843)
!843 = distinct !DILexicalBlock(scope: !819, file: !2, line: 651, column: 21)
!844 = !DILocation(line: 652, column: 5, scope: !843)
!845 = !DILocation(line: 654, column: 13, scope: !818)
!846 = !DILocation(line: 654, column: 11, scope: !819)
!847 = !DILocation(line: 656, column: 12, scope: !848)
!848 = distinct !DILexicalBlock(scope: !818, file: !2, line: 655, column: 3)
!849 = !DILocation(line: 656, column: 5, scope: !848)
!850 = !DILocation(line: 658, column: 13, scope: !817)
!851 = !DILocation(line: 658, column: 11, scope: !818)
!852 = !DILocalVariable(name: "Q", scope: !853, file: !2, line: 463, type: !97)
!853 = distinct !DISubprogram(name: "gamma_inc_a_gt_0", scope: !2, file: !2, line: 460, type: !854, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!45, !95, !95, !96}
!856 = !{!857, !858, !859, !852, !860, !861, !862}
!857 = !DILocalVariable(name: "a", arg: 1, scope: !853, file: !2, line: 460, type: !95)
!858 = !DILocalVariable(name: "x", arg: 2, scope: !853, file: !2, line: 460, type: !95)
!859 = !DILocalVariable(name: "result", arg: 3, scope: !853, file: !2, line: 460, type: !96)
!860 = !DILocalVariable(name: "G", scope: !853, file: !2, line: 464, type: !97)
!861 = !DILocalVariable(name: "stat_Q", scope: !853, file: !2, line: 465, type: !220)
!862 = !DILocalVariable(name: "stat_G", scope: !853, file: !2, line: 466, type: !220)
!863 = !DILocation(line: 0, scope: !853, inlinedAt: !864)
!864 = distinct !DILocation(line: 660, column: 12, scope: !865)
!865 = distinct !DILexicalBlock(scope: !817, file: !2, line: 659, column: 3)
!866 = !DILocation(line: 463, column: 3, scope: !853, inlinedAt: !864)
!867 = !DILocation(line: 464, column: 3, scope: !853, inlinedAt: !864)
!868 = !DILocation(line: 465, column: 22, scope: !853, inlinedAt: !864)
!869 = !DILocation(line: 466, column: 22, scope: !853, inlinedAt: !864)
!870 = !DILocation(line: 468, column: 19, scope: !853, inlinedAt: !864)
!871 = !DILocation(line: 468, column: 27, scope: !853, inlinedAt: !864)
!872 = !DILocation(line: 468, column: 23, scope: !853, inlinedAt: !864)
!873 = !DILocation(line: 468, column: 15, scope: !853, inlinedAt: !864)
!874 = !DILocation(line: 469, column: 32, scope: !853, inlinedAt: !864)
!875 = !DILocation(line: 469, column: 28, scope: !853, inlinedAt: !864)
!876 = !DILocation(line: 469, column: 17, scope: !853, inlinedAt: !864)
!877 = !DILocation(line: 469, column: 46, scope: !853, inlinedAt: !864)
!878 = !DILocation(line: 469, column: 50, scope: !853, inlinedAt: !864)
!879 = !DILocation(line: 469, column: 39, scope: !853, inlinedAt: !864)
!880 = !DILocation(line: 469, column: 11, scope: !853, inlinedAt: !864)
!881 = !DILocation(line: 470, column: 40, scope: !853, inlinedAt: !864)
!882 = !DILocation(line: 470, column: 38, scope: !853, inlinedAt: !864)
!883 = !DILocation(line: 470, column: 15, scope: !853, inlinedAt: !864)
!884 = !DILocation(line: 472, column: 10, scope: !853, inlinedAt: !864)
!885 = !DILocation(line: 473, column: 1, scope: !853, inlinedAt: !864)
!886 = !DILocation(line: 660, column: 5, scope: !865)
!887 = !DILocation(line: 662, column: 13, scope: !816)
!888 = !DILocation(line: 662, column: 11, scope: !817)
!889 = !DILocation(line: 669, column: 12, scope: !890)
!890 = distinct !DILexicalBlock(scope: !816, file: !2, line: 663, column: 3)
!891 = !DILocation(line: 669, column: 5, scope: !890)
!892 = !DILocation(line: 671, column: 11, scope: !815)
!893 = !DILocation(line: 671, column: 19, scope: !815)
!894 = !DILocation(line: 671, column: 11, scope: !816)
!895 = !DILocation(line: 673, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !815, file: !2, line: 672, column: 3)
!897 = !DILocation(line: 673, column: 5, scope: !896)
!898 = !DILocation(line: 678, column: 23, scope: !814)
!899 = !DILocation(line: 681, column: 5, scope: !814)
!900 = !DILocation(line: 682, column: 32, scope: !814)
!901 = !DILocation(line: 682, column: 29, scope: !814)
!902 = !DILocation(line: 682, column: 40, scope: !814)
!903 = !DILocation(line: 683, column: 40, scope: !814)
!904 = !DILocation(line: 686, column: 23, scope: !814)
!905 = !DILocation(line: 689, column: 5, scope: !814)
!906 = !DILocation(line: 691, column: 49, scope: !827)
!907 = !DILocation(line: 691, column: 48, scope: !827)
!908 = !DILocation(line: 691, column: 28, scope: !827)
!909 = !DILocation(line: 0, scope: !827)
!910 = !DILocation(line: 692, column: 27, scope: !827)
!911 = !DILocation(line: 694, column: 19, scope: !814)
!912 = !DILocation(line: 694, column: 5, scope: !827)
!913 = distinct !{!913, !905, !914, !286}
!914 = !DILocation(line: 694, column: 22, scope: !814)
!915 = !DILocation(line: 696, column: 17, scope: !814)
!916 = !DILocation(line: 697, column: 22, scope: !814)
!917 = !DILocation(line: 697, column: 38, scope: !814)
!918 = !DILocation(line: 697, column: 55, scope: !814)
!919 = !DILocation(line: 697, column: 54, scope: !814)
!920 = !DILocation(line: 697, column: 13, scope: !814)
!921 = !DILocation(line: 697, column: 17, scope: !814)
!922 = !DILocation(line: 699, column: 3, scope: !815)
!923 = !DILocation(line: 0, scope: !820)
!924 = !DILocation(line: 701, column: 1, scope: !808)
!925 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !926, file: !926, line: 66, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!927 = !DISubroutineType(types: !928)
!928 = !{!45, !94, !96}
!929 = !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !930, file: !930, line: 46, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "../gsl/gsl_sf_expint.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fa6433b039d5ce651e3386bd71654e9c")
!931 = distinct !DIAssignID()
!932 = !DILocation(line: 0, scope: !853)
!933 = distinct !DIAssignID()
!934 = !DILocation(line: 463, column: 3, scope: !853)
!935 = !DILocation(line: 464, column: 3, scope: !853)
!936 = !DILocation(line: 465, column: 22, scope: !853)
!937 = !DILocation(line: 466, column: 22, scope: !853)
!938 = !DILocation(line: 468, column: 19, scope: !853)
!939 = !DILocation(line: 468, column: 27, scope: !853)
!940 = !DILocation(line: 468, column: 23, scope: !853)
!941 = !DILocation(line: 468, column: 15, scope: !853)
!942 = !DILocation(line: 469, column: 32, scope: !853)
!943 = !DILocation(line: 469, column: 28, scope: !853)
!944 = !DILocation(line: 469, column: 17, scope: !853)
!945 = !DILocation(line: 469, column: 46, scope: !853)
!946 = !DILocation(line: 469, column: 50, scope: !853)
!947 = !DILocation(line: 469, column: 39, scope: !853)
!948 = !DILocation(line: 469, column: 11, scope: !853)
!949 = !DILocation(line: 470, column: 40, scope: !853)
!950 = !DILocation(line: 470, column: 38, scope: !853)
!951 = !DILocation(line: 470, column: 15, scope: !853)
!952 = !DILocation(line: 472, column: 10, scope: !853)
!953 = !DILocation(line: 473, column: 1, scope: !853)
!954 = !DILocation(line: 472, column: 3, scope: !853)
!955 = distinct !DISubprogram(name: "gamma_inc_CF", scope: !2, file: !2, line: 477, type: !854, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964}
!957 = !DILocalVariable(name: "a", arg: 1, scope: !955, file: !2, line: 477, type: !95)
!958 = !DILocalVariable(name: "x", arg: 2, scope: !955, file: !2, line: 477, type: !95)
!959 = !DILocalVariable(name: "result", arg: 3, scope: !955, file: !2, line: 477, type: !96)
!960 = !DILocalVariable(name: "F", scope: !955, file: !2, line: 479, type: !97)
!961 = !DILocalVariable(name: "pre", scope: !955, file: !2, line: 480, type: !97)
!962 = !DILocalVariable(name: "am1lgx", scope: !955, file: !2, line: 481, type: !94)
!963 = !DILocalVariable(name: "stat_F", scope: !955, file: !2, line: 482, type: !220)
!964 = !DILocalVariable(name: "stat_E", scope: !955, file: !2, line: 483, type: !220)
!965 = distinct !DIAssignID()
!966 = !DILocation(line: 0, scope: !955)
!967 = !DILocation(line: 480, column: 3, scope: !955)
!968 = !DILocation(line: 259, column: 3, scope: !583, inlinedAt: !969)
!969 = distinct !DILocation(line: 482, column: 22, scope: !955)
!970 = !DILocation(line: 0, scope: !570, inlinedAt: !969)
!971 = !DILocation(line: 264, column: 8, scope: !589, inlinedAt: !969)
!972 = !DILocation(line: 0, scope: !581, inlinedAt: !969)
!973 = !DILocation(line: 264, column: 8, scope: !581, inlinedAt: !969)
!974 = !DILocation(line: 265, column: 18, scope: !589, inlinedAt: !969)
!975 = !DILocation(line: 265, column: 16, scope: !589, inlinedAt: !969)
!976 = !DILocation(line: 265, column: 15, scope: !589, inlinedAt: !969)
!977 = !DILocation(line: 265, column: 7, scope: !589, inlinedAt: !969)
!978 = !DILocation(line: 267, column: 17, scope: !589, inlinedAt: !969)
!979 = !DILocation(line: 267, column: 16, scope: !589, inlinedAt: !969)
!980 = !DILocation(line: 0, scope: !589, inlinedAt: !969)
!981 = !DILocation(line: 269, column: 19, scope: !581, inlinedAt: !969)
!982 = !DILocation(line: 270, column: 10, scope: !601, inlinedAt: !969)
!983 = !DILocation(line: 270, column: 19, scope: !601, inlinedAt: !969)
!984 = !DILocation(line: 275, column: 14, scope: !581, inlinedAt: !969)
!985 = !DILocation(line: 272, column: 18, scope: !581, inlinedAt: !969)
!986 = !DILocation(line: 273, column: 10, scope: !606, inlinedAt: !969)
!987 = !DILocation(line: 273, column: 19, scope: !606, inlinedAt: !969)
!988 = !DILocation(line: 273, column: 10, scope: !581, inlinedAt: !969)
!989 = !DILocation(line: 276, column: 16, scope: !581, inlinedAt: !969)
!990 = !DILocation(line: 277, column: 8, scope: !581, inlinedAt: !969)
!991 = !DILocation(line: 278, column: 8, scope: !612, inlinedAt: !969)
!992 = !DILocation(line: 278, column: 24, scope: !612, inlinedAt: !969)
!993 = !DILocation(line: 259, column: 29, scope: !582, inlinedAt: !969)
!994 = !DILocation(line: 259, column: 19, scope: !582, inlinedAt: !969)
!995 = distinct !{!995, !968, !996, !286}
!996 = !DILocation(line: 279, column: 3, scope: !583, inlinedAt: !969)
!997 = !DILocation(line: 285, column: 8, scope: !619, inlinedAt: !969)
!998 = !DILocation(line: 285, column: 6, scope: !570, inlinedAt: !969)
!999 = !DILocation(line: 286, column: 5, scope: !622, inlinedAt: !969)
!1000 = !DILocation(line: 0, scope: !619, inlinedAt: !969)
!1001 = !DILocation(line: 282, column: 39, scope: !570, inlinedAt: !969)
!1002 = !DILocation(line: 282, column: 37, scope: !570, inlinedAt: !969)
!1003 = !DILocation(line: 283, column: 47, scope: !570, inlinedAt: !969)
!1004 = !DILocation(line: 283, column: 46, scope: !570, inlinedAt: !969)
!1005 = !DILocation(line: 283, column: 34, scope: !570, inlinedAt: !969)
!1006 = !DILocation(line: 283, column: 50, scope: !570, inlinedAt: !969)
!1007 = !DILocation(line: 481, column: 27, scope: !955)
!1008 = !DILocation(line: 481, column: 32, scope: !955)
!1009 = !DILocation(line: 483, column: 67, scope: !955)
!1010 = !DILocation(line: 483, column: 66, scope: !955)
!1011 = !DILocation(line: 483, column: 22, scope: !955)
!1012 = !DILocation(line: 485, column: 29, scope: !955)
!1013 = !DILocation(line: 485, column: 23, scope: !955)
!1014 = !DILocation(line: 485, column: 15, scope: !955)
!1015 = !DILocation(line: 486, column: 28, scope: !955)
!1016 = !DILocation(line: 486, column: 17, scope: !955)
!1017 = !DILocation(line: 486, column: 58, scope: !955)
!1018 = !DILocation(line: 486, column: 52, scope: !955)
!1019 = !DILocation(line: 486, column: 41, scope: !955)
!1020 = !DILocation(line: 486, column: 11, scope: !955)
!1021 = !DILocation(line: 487, column: 42, scope: !955)
!1022 = !DILocation(line: 487, column: 40, scope: !955)
!1023 = !DILocation(line: 487, column: 15, scope: !955)
!1024 = !DILocation(line: 489, column: 10, scope: !955)
!1025 = !DILocation(line: 490, column: 1, scope: !955)
!1026 = !DILocation(line: 489, column: 3, scope: !955)
!1027 = distinct !DISubprogram(name: "gamma_inc_series", scope: !2, file: !2, line: 445, type: !854, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DILocalVariable(name: "a", arg: 1, scope: !1027, file: !2, line: 445, type: !95)
!1030 = !DILocalVariable(name: "x", arg: 2, scope: !1027, file: !2, line: 445, type: !95)
!1031 = !DILocalVariable(name: "result", arg: 3, scope: !1027, file: !2, line: 445, type: !96)
!1032 = !DILocalVariable(name: "Q", scope: !1027, file: !2, line: 447, type: !97)
!1033 = !DILocalVariable(name: "G", scope: !1027, file: !2, line: 448, type: !97)
!1034 = !DILocalVariable(name: "stat_Q", scope: !1027, file: !2, line: 449, type: !220)
!1035 = !DILocalVariable(name: "stat_G", scope: !1027, file: !2, line: 450, type: !220)
!1036 = distinct !DIAssignID()
!1037 = !DILocation(line: 0, scope: !1027)
!1038 = distinct !DIAssignID()
!1039 = !DILocation(line: 447, column: 3, scope: !1027)
!1040 = !DILocation(line: 448, column: 3, scope: !1027)
!1041 = !DILocation(line: 449, column: 22, scope: !1027)
!1042 = !DILocation(line: 450, column: 22, scope: !1027)
!1043 = !DILocation(line: 451, column: 19, scope: !1027)
!1044 = !DILocation(line: 451, column: 27, scope: !1027)
!1045 = !DILocation(line: 451, column: 23, scope: !1027)
!1046 = !DILocation(line: 451, column: 15, scope: !1027)
!1047 = !DILocation(line: 452, column: 32, scope: !1027)
!1048 = !DILocation(line: 452, column: 28, scope: !1027)
!1049 = !DILocation(line: 452, column: 17, scope: !1027)
!1050 = !DILocation(line: 452, column: 46, scope: !1027)
!1051 = !DILocation(line: 452, column: 50, scope: !1027)
!1052 = !DILocation(line: 452, column: 39, scope: !1027)
!1053 = !DILocation(line: 452, column: 11, scope: !1027)
!1054 = !DILocation(line: 453, column: 42, scope: !1027)
!1055 = !DILocation(line: 453, column: 40, scope: !1027)
!1056 = !DILocation(line: 453, column: 15, scope: !1027)
!1057 = !DILocation(line: 455, column: 10, scope: !1027)
!1058 = !DILocation(line: 456, column: 1, scope: !1027)
!1059 = !DILocation(line: 455, column: 3, scope: !1027)
!1060 = !DISubprogram(name: "exp", scope: !706, file: !706, line: 95, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DISubprogram(name: "log", scope: !706, file: !706, line: 104, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_P", scope: !2, file: !2, line: 708, type: !1063, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!95, !94, !94}
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DILocalVariable(name: "a", arg: 1, scope: !1062, file: !2, line: 708, type: !94)
!1067 = !DILocalVariable(name: "x", arg: 2, scope: !1062, file: !2, line: 708, type: !94)
!1068 = !DILocalVariable(name: "result", scope: !1062, file: !2, line: 710, type: !97)
!1069 = !DILocalVariable(name: "status", scope: !1062, file: !2, line: 710, type: !45)
!1070 = distinct !DIAssignID()
!1071 = !DILocation(line: 0, scope: !1062)
!1072 = !DILocation(line: 710, column: 3, scope: !1062)
!1073 = !DILocation(line: 710, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 710, column: 3)
!1075 = !DILocation(line: 710, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 710, column: 3)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 710, column: 3)
!1078 = !DILocation(line: 711, column: 1, scope: !1062)
!1079 = distinct !DISubprogram(name: "gsl_sf_gamma_inc_Q", scope: !2, file: !2, line: 713, type: !1063, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1080)
!1080 = !{!1081, !1082, !1083, !1084}
!1081 = !DILocalVariable(name: "a", arg: 1, scope: !1079, file: !2, line: 713, type: !94)
!1082 = !DILocalVariable(name: "x", arg: 2, scope: !1079, file: !2, line: 713, type: !94)
!1083 = !DILocalVariable(name: "result", scope: !1079, file: !2, line: 715, type: !97)
!1084 = !DILocalVariable(name: "status", scope: !1079, file: !2, line: 715, type: !45)
!1085 = distinct !DIAssignID()
!1086 = !DILocation(line: 0, scope: !1079)
!1087 = !DILocation(line: 715, column: 3, scope: !1079)
!1088 = !DILocation(line: 715, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 715, column: 3)
!1090 = !DILocation(line: 715, column: 3, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 715, column: 3)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 715, column: 3)
!1093 = !DILocation(line: 716, column: 1, scope: !1079)
!1094 = distinct !DISubprogram(name: "gsl_sf_gamma_inc", scope: !2, file: !2, line: 718, type: !1063, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DILocalVariable(name: "a", arg: 1, scope: !1094, file: !2, line: 718, type: !94)
!1097 = !DILocalVariable(name: "x", arg: 2, scope: !1094, file: !2, line: 718, type: !94)
!1098 = !DILocalVariable(name: "result", scope: !1094, file: !2, line: 720, type: !97)
!1099 = !DILocalVariable(name: "status", scope: !1094, file: !2, line: 720, type: !45)
!1100 = distinct !DIAssignID()
!1101 = !DILocation(line: 0, scope: !1094)
!1102 = !DILocation(line: 720, column: 4, scope: !1094)
!1103 = !DILocation(line: 720, column: 4, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 720, column: 4)
!1105 = !DILocation(line: 720, column: 4, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 720, column: 4)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 720, column: 4)
!1108 = !DILocation(line: 721, column: 1, scope: !1094)
!1109 = distinct !DISubprogram(name: "gamma_inc_D", scope: !2, file: !2, line: 39, type: !1110, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !1111)
!1110 = !DISubroutineType(cc: DW_CC_nocall, types: !93)
!1111 = !{!1112, !1113, !1114, !1115, !1118, !1119, !1121, !1122, !1123, !1126, !1127}
!1112 = !DILocalVariable(name: "a", arg: 1, scope: !1109, file: !2, line: 39, type: !94)
!1113 = !DILocalVariable(name: "x", arg: 2, scope: !1109, file: !2, line: 39, type: !94)
!1114 = !DILocalVariable(name: "result", arg: 3, scope: !1109, file: !2, line: 39, type: !96)
!1115 = !DILocalVariable(name: "lnr", scope: !1116, file: !2, line: 42, type: !95)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 41, column: 16)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 41, column: 6)
!1118 = !DILocalVariable(name: "lg", scope: !1116, file: !2, line: 43, type: !97)
!1119 = !DILocalVariable(name: "gstar", scope: !1120, file: !2, line: 51, type: !97)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 50, column: 8)
!1121 = !DILocalVariable(name: "ln_term", scope: !1120, file: !2, line: 52, type: !97)
!1122 = !DILocalVariable(name: "term1", scope: !1120, file: !2, line: 53, type: !95)
!1123 = !DILocalVariable(name: "u", scope: !1124, file: !2, line: 55, type: !95)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 54, column: 20)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 54, column: 9)
!1126 = !DILocalVariable(name: "ln_u", scope: !1124, file: !2, line: 56, type: !95)
!1127 = !DILocalVariable(name: "mu", scope: !1128, file: !2, line: 60, type: !95)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 59, column: 12)
!1129 = distinct !DIAssignID()
!1130 = !DILocation(line: 0, scope: !1116)
!1131 = distinct !DIAssignID()
!1132 = !DILocation(line: 0, scope: !1120)
!1133 = distinct !DIAssignID()
!1134 = !DILocation(line: 0, scope: !1109)
!1135 = !DILocation(line: 41, column: 8, scope: !1117)
!1136 = !DILocation(line: 41, column: 6, scope: !1109)
!1137 = !DILocation(line: 43, column: 5, scope: !1116)
!1138 = !DILocation(line: 44, column: 5, scope: !1116)
!1139 = !DILocation(line: 45, column: 13, scope: !1116)
!1140 = !DILocation(line: 45, column: 31, scope: !1116)
!1141 = !DILocation(line: 46, column: 19, scope: !1116)
!1142 = !DILocation(line: 46, column: 17, scope: !1116)
!1143 = !DILocation(line: 47, column: 44, scope: !1116)
!1144 = !DILocation(line: 47, column: 41, scope: !1116)
!1145 = !DILocation(line: 47, column: 63, scope: !1116)
!1146 = !DILocation(line: 47, column: 61, scope: !1116)
!1147 = !DILocation(line: 47, column: 13, scope: !1116)
!1148 = !DILocation(line: 47, column: 17, scope: !1116)
!1149 = !DILocation(line: 49, column: 3, scope: !1117)
!1150 = !DILocation(line: 51, column: 5, scope: !1120)
!1151 = !DILocation(line: 52, column: 5, scope: !1120)
!1152 = !DILocation(line: 54, column: 16, scope: !1125)
!1153 = !DILocation(line: 54, column: 11, scope: !1125)
!1154 = !DILocation(line: 54, column: 9, scope: !1120)
!1155 = !DILocation(line: 55, column: 19, scope: !1124)
!1156 = !DILocation(line: 0, scope: !1124)
!1157 = !DILocation(line: 57, column: 30, scope: !1124)
!1158 = !DILocation(line: 57, column: 19, scope: !1124)
!1159 = distinct !DIAssignID()
!1160 = !DILocation(line: 58, column: 22, scope: !1124)
!1161 = !DILocation(line: 58, column: 35, scope: !1124)
!1162 = !DILocation(line: 58, column: 43, scope: !1124)
!1163 = !DILocation(line: 58, column: 50, scope: !1124)
!1164 = !DILocation(line: 58, column: 15, scope: !1124)
!1165 = !DILocation(line: 58, column: 19, scope: !1124)
!1166 = distinct !DIAssignID()
!1167 = !DILocation(line: 59, column: 5, scope: !1124)
!1168 = !DILocation(line: 60, column: 24, scope: !1128)
!1169 = !DILocation(line: 0, scope: !1128)
!1170 = !DILocation(line: 61, column: 7, scope: !1128)
!1171 = !DILocation(line: 64, column: 40, scope: !1128)
!1172 = !DILocation(line: 64, column: 38, scope: !1128)
!1173 = !DILocation(line: 64, column: 15, scope: !1128)
!1174 = !DILocation(line: 64, column: 19, scope: !1128)
!1175 = distinct !DIAssignID()
!1176 = !DILocation(line: 66, column: 5, scope: !1120)
!1177 = !DILocation(line: 67, column: 27, scope: !1120)
!1178 = !DILocation(line: 67, column: 18, scope: !1120)
!1179 = !DILocation(line: 67, column: 13, scope: !1120)
!1180 = !DILocation(line: 67, column: 45, scope: !1120)
!1181 = !DILocation(line: 67, column: 32, scope: !1120)
!1182 = !DILocation(line: 67, column: 31, scope: !1120)
!1183 = !DILocation(line: 68, column: 32, scope: !1120)
!1184 = !DILocation(line: 68, column: 25, scope: !1120)
!1185 = !DILocation(line: 68, column: 18, scope: !1120)
!1186 = !DILocation(line: 69, column: 60, scope: !1120)
!1187 = !DILocation(line: 69, column: 51, scope: !1120)
!1188 = !DILocation(line: 69, column: 45, scope: !1120)
!1189 = !DILocation(line: 69, column: 42, scope: !1120)
!1190 = !DILocation(line: 69, column: 74, scope: !1120)
!1191 = !DILocation(line: 69, column: 72, scope: !1120)
!1192 = !DILocation(line: 69, column: 13, scope: !1120)
!1193 = !DILocation(line: 71, column: 20, scope: !1120)
!1194 = !DILocation(line: 71, column: 38, scope: !1120)
!1195 = !DILocation(line: 71, column: 28, scope: !1120)
!1196 = !DILocation(line: 71, column: 42, scope: !1120)
!1197 = !DILocation(line: 72, column: 26, scope: !1120)
!1198 = !DILocation(line: 72, column: 30, scope: !1120)
!1199 = !DILocation(line: 72, column: 29, scope: !1120)
!1200 = !DILocation(line: 72, column: 46, scope: !1120)
!1201 = !DILocation(line: 72, column: 17, scope: !1120)
!1202 = !DILocation(line: 74, column: 3, scope: !1117)
!1203 = !DILocation(line: 76, column: 1, scope: !1109)
!1204 = !DISubprogram(name: "gsl_sf_exprel_n_CF_e", scope: !1205, file: !1205, line: 105, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1206 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !926, file: !926, line: 47, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!45, !95, !96}
!1209 = !DISubprogram(name: "gsl_sf_log_1plusx_mx_e", scope: !1210, file: !1210, line: 77, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!1211 = !DISubprogram(name: "gsl_sf_gammastar_e", scope: !926, file: !926, line: 77, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubprogram(name: "gsl_sf_erfc_e", scope: !1213, file: !1213, line: 45, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DIFile(filename: "../gsl/gsl_sf_erf.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "cce330efcc426add009546150e943c76")
!1214 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1205, file: !1205, line: 110, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
