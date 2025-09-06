; ModuleID = 'mathieu_angfunc.ll'
source_filename = "mathieu_angfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"Work space not large enough\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_angfunc.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_ce_e(order, qq, zz, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_se_e(order, qq, zz, &result)\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_ce_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !76 {
  %5 = alloca [100 x double], align 16, !DIAssignID !103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !95, metadata !DIExpression(), metadata !103, metadata ptr %5, metadata !DIExpression()), !dbg !104
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !102, metadata !DIExpression(), metadata !105, metadata ptr %6, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !88, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %1, metadata !89, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %2, metadata !90, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !91, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #6, !dbg !106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !107
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !104
  %7 = and i32 %0, 1, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !92, metadata !DIExpression()), !dbg !104
  %8 = fcmp oeq double %1, 0.000000e+00, !dbg !110
  br i1 %8, label %9, label %16, !dbg !112

9:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !99, metadata !DIExpression()), !dbg !104
  %10 = icmp eq i32 %0, 0, !dbg !113
  %11 = select i1 %10, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !116
  tail call void @llvm.dbg.value(metadata double %11, metadata !99, metadata !DIExpression()), !dbg !104
  %12 = sitofp i32 %0 to double, !dbg !117
  %13 = fmul double %12, %2, !dbg !118
  %handler_result10 = call double @callHandler(i32 2, double %13, double %13), !dbg !119
  %14 = fdiv double %handler_result10, %11, !dbg !119
  tail call void @llvm.dbg.value(metadata double %14, metadata !100, metadata !DIExpression()), !dbg !104
  store double %14, ptr %3, align 8, !dbg !120, !tbaa !121
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !126
  tail call void @llvm.dbg.value(metadata double %15, metadata !101, metadata !DIExpression()), !dbg !104
  br label %85, !dbg !127

16:                                               ; preds = %4
  %17 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !128
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !88, metadata !DIExpression()), !dbg !104
  %18 = call i32 @gsl_sf_mathieu_a_e(i32 noundef %17, double noundef %1, ptr noundef nonnull %6) #6, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !94, metadata !DIExpression()), !dbg !104
  %19 = icmp eq i32 %18, 0, !dbg !130
  br i1 %19, label %20, label %91, !dbg !132

20:                                               ; preds = %16
  %21 = load double, ptr %6, align 8, !dbg !133, !tbaa !121
  %22 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %17, double noundef %1, double noundef %21, ptr noundef nonnull %5) #6, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !94, metadata !DIExpression()), !dbg !104
  %23 = icmp eq i32 %22, 0, !dbg !135
  br i1 %23, label %24, label %91, !dbg !137

24:                                               ; preds = %20
  %25 = icmp eq i32 %7, 0, !dbg !138
  br i1 %25, label %26, label %54, !dbg !140

26:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !104
  %27 = load double, ptr %5, align 16, !dbg !141, !tbaa !143
  %28 = fmul double %27, %27, !dbg !144
  tail call void @llvm.dbg.value(metadata double %28, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !100, metadata !DIExpression()), !dbg !104
  br label %29, !dbg !145

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 0, %26 ], [ %52, %29 ]
  %31 = phi double [ 0.000000e+00, %26 ], [ %handler_result2, %29 ]
  %32 = phi double [ %28, %26 ], [ %handler_result3, %29 ]
  tail call void @llvm.dbg.value(metadata double %31, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %32, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !93, metadata !DIExpression()), !dbg !104
  %33 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %30, !dbg !147
  %34 = load double, ptr %33, align 16, !dbg !147, !tbaa !143
  %35 = trunc i64 %30 to i32, !dbg !150
  %36 = sitofp i32 %35 to double, !dbg !150
  %37 = fmul double %36, 2.000000e+00, !dbg !151
  %38 = fmul double %37, %2, !dbg !152
  %handler_result11 = call double @callHandler(i32 2, double %38, double %38), !dbg !153
  %39 = fmul double %34, %handler_result11, !dbg !153
  %handler_result = call double @fAddHandlerDouble(double %31, double %39), !dbg !154
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !100, metadata !DIExpression()), !dbg !104
  %40 = load double, ptr %33, align 16, !dbg !154, !tbaa !143
  %41 = fmul double %40, %40, !dbg !155
  %handler_result1 = call double @fAddHandlerDouble(double %32, double %41), !dbg !156
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !99, metadata !DIExpression()), !dbg !104
  %42 = or disjoint i64 %30, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !93, metadata !DIExpression()), !dbg !104
  %43 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %42, !dbg !147
  %44 = load double, ptr %43, align 8, !dbg !147, !tbaa !143
  %45 = trunc i64 %42 to i32, !dbg !150
  %46 = sitofp i32 %45 to double, !dbg !150
  %47 = fmul double %46, 2.000000e+00, !dbg !151
  %48 = fmul double %47, %2, !dbg !152
  %handler_result12 = call double @callHandler(i32 2, double %48, double %48), !dbg !153
  %49 = fmul double %44, %handler_result12, !dbg !153
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double %49), !dbg !154
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !100, metadata !DIExpression()), !dbg !104
  %50 = load double, ptr %43, align 8, !dbg !154, !tbaa !143
  %51 = fmul double %50, %50, !dbg !155
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %51), !dbg !156
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !99, metadata !DIExpression()), !dbg !104
  %52 = add nuw nsw i64 %30, 2, !dbg !156
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !93, metadata !DIExpression()), !dbg !104
  %53 = icmp eq i64 %52, 100, !dbg !157
  br i1 %53, label %79, label %29, !dbg !145, !llvm.loop !158

54:                                               ; preds = %54, %24
  %55 = phi i64 [ %77, %54 ], [ 0, %24 ]
  %56 = phi double [ %handler_result8, %54 ], [ 0.000000e+00, %24 ]
  %57 = phi double [ %handler_result9, %54 ], [ 0.000000e+00, %24 ]
  tail call void @llvm.dbg.value(metadata double %56, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %57, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !93, metadata !DIExpression()), !dbg !104
  %58 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %55, !dbg !161
  %59 = load double, ptr %58, align 16, !dbg !161, !tbaa !143
  %60 = trunc i64 %55 to i32, !dbg !166
  %61 = sitofp i32 %60 to double, !dbg !166
  %62 = fmul double %61, 2.000000e+00, !dbg !167
  %handler_result4 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !168
  %63 = fmul double %handler_result4, %2, !dbg !168
  %handler_result13 = call double @callHandler(i32 2, double %63, double %63), !dbg !169
  %64 = fmul double %59, %handler_result13, !dbg !169
  %handler_result5 = call double @fAddHandlerDouble(double %56, double %64), !dbg !170
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !100, metadata !DIExpression()), !dbg !104
  %65 = load double, ptr %58, align 16, !dbg !170, !tbaa !143
  %66 = fmul double %65, %65, !dbg !171
  %handler_result6 = call double @fAddHandlerDouble(double %57, double %66), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !99, metadata !DIExpression()), !dbg !104
  %67 = or disjoint i64 %55, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !93, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !99, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !93, metadata !DIExpression()), !dbg !104
  %68 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %67, !dbg !161
  %69 = load double, ptr %68, align 8, !dbg !161, !tbaa !143
  %70 = trunc i64 %67 to i32, !dbg !166
  %71 = sitofp i32 %70 to double, !dbg !166
  %72 = fmul double %71, 2.000000e+00, !dbg !167
  %handler_result7 = call double @fAddHandlerDouble(double %72, double 1.000000e+00), !dbg !168
  %73 = fmul double %handler_result7, %2, !dbg !168
  %handler_result14 = call double @callHandler(i32 2, double %73, double %73), !dbg !169
  %74 = fmul double %69, %handler_result14, !dbg !169
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result5, double %74), !dbg !170
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !100, metadata !DIExpression()), !dbg !104
  %75 = load double, ptr %68, align 8, !dbg !170, !tbaa !143
  %76 = fmul double %75, %75, !dbg !171
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result6, double %76), !dbg !172
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !99, metadata !DIExpression()), !dbg !104
  %77 = add nuw nsw i64 %55, 2, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !93, metadata !DIExpression()), !dbg !104
  %78 = icmp eq i64 %77, 100, !dbg !173
  br i1 %78, label %79, label %54, !dbg !174, !llvm.loop !175

79:                                               ; preds = %54, %29
  %80 = phi double [ %handler_result3, %29 ], [ %handler_result9, %54 ], !dbg !104
  %81 = phi double [ %handler_result2, %29 ], [ %handler_result8, %54 ], !dbg !177
  tail call void @llvm.dbg.value(metadata double %81, metadata !100, metadata !DIExpression()), !dbg !104
  tail call void @llvm.dbg.value(metadata double %80, metadata !99, metadata !DIExpression()), !dbg !104
  %82 = call double @sqrt(double noundef %80) #6, !dbg !178
  tail call void @llvm.dbg.value(metadata double %82, metadata !99, metadata !DIExpression()), !dbg !104
  %83 = fdiv double %81, %82, !dbg !179
  tail call void @llvm.dbg.value(metadata double %83, metadata !100, metadata !DIExpression()), !dbg !104
  store double %83, ptr %3, align 8, !dbg !180, !tbaa !121
  %84 = call double @llvm.fabs.f64(double %83), !dbg !181
  tail call void @llvm.dbg.value(metadata double %84, metadata !101, metadata !DIExpression()), !dbg !104
  br label %85, !dbg !182

85:                                               ; preds = %79, %9
  %86 = phi double [ %84, %79 ], [ %15, %9 ]
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !104
  %88 = fcmp ogt double %86, 1.000000e+00, !dbg !104
  %89 = fmul double %86, 0x3CC0000000000000, !dbg !104
  %90 = select i1 %88, double %89, double 0x3CC0000000000000, !dbg !104
  store double %90, ptr %87, align 8, !dbg !104, !tbaa !183
  br label %91, !dbg !184

91:                                               ; preds = %85, %20, %16
  %92 = phi i32 [ %18, %16 ], [ %22, %20 ], [ 0, %85 ], !dbg !104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #6, !dbg !184
  ret i32 %92, !dbg !184
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !185 double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !189 double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !190 i32 @gsl_sf_mathieu_a_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !194 i32 @gsl_sf_mathieu_a_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_se_e(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !198 {
  %5 = alloca [100 x double], align 16, !DIAssignID !212
  call void @llvm.dbg.assign(metadata i1 undef, metadata !207, metadata !DIExpression(), metadata !212, metadata ptr %5, metadata !DIExpression()), !dbg !213
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !214
  call void @llvm.dbg.assign(metadata i1 undef, metadata !211, metadata !DIExpression(), metadata !214, metadata ptr %6, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !200, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %1, metadata !201, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %2, metadata !202, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !203, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %5) #6, !dbg !215
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !216
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !204, metadata !DIExpression()), !dbg !213
  %7 = and i32 %0, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !204, metadata !DIExpression()), !dbg !213
  %8 = icmp eq i32 %0, 0, !dbg !219
  br i1 %8, label %9, label %10, !dbg !221

9:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !222
  br label %86, !dbg !224

10:                                               ; preds = %4
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !225
  br i1 %11, label %12, label %20, !dbg !227

12:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !208, metadata !DIExpression()), !dbg !213
  %13 = sitofp i32 %0 to double, !dbg !228
  %14 = fmul double %13, %2, !dbg !230
  %handler_result10 = call double @callHandler(i32 1, double %14, double %14), !dbg !231
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !209, metadata !DIExpression()), !dbg !213
  store double %handler_result10, ptr %3, align 8, !dbg !231, !tbaa !121
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !232
  %16 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !233
  tail call void @llvm.dbg.value(metadata double %16, metadata !210, metadata !DIExpression()), !dbg !213
  %17 = fcmp ogt double %16, 1.000000e+00, !dbg !234
  %18 = fmul double %16, 0x3CC0000000000000, !dbg !236
  %19 = select i1 %17, double %18, double 0x3CC0000000000000, !dbg !236
  store double %19, ptr %15, align 8, !dbg !237, !tbaa !183
  br label %86, !dbg !238

20:                                               ; preds = %10
  %21 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !200, metadata !DIExpression()), !dbg !213
  %22 = call i32 @gsl_sf_mathieu_b_e(i32 noundef %21, double noundef %1, ptr noundef nonnull %6) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !206, metadata !DIExpression()), !dbg !213
  %23 = icmp eq i32 %22, 0, !dbg !241
  br i1 %23, label %24, label %86, !dbg !243

24:                                               ; preds = %20
  %25 = load double, ptr %6, align 8, !dbg !244, !tbaa !121
  %26 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %21, double noundef %1, double noundef %25, ptr noundef nonnull %5) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !206, metadata !DIExpression()), !dbg !213
  %27 = icmp eq i32 %26, 0, !dbg !246
  br i1 %27, label %28, label %86, !dbg !248

28:                                               ; preds = %24
  %29 = icmp eq i32 %7, 0, !dbg !249
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !213
  br i1 %29, label %30, label %53, !dbg !251

30:                                               ; preds = %30, %28
  %31 = phi i64 [ %46, %30 ], [ 0, %28 ]
  %32 = phi double [ %handler_result3, %30 ], [ 0.000000e+00, %28 ]
  %33 = phi double [ %handler_result2, %30 ], [ 0.000000e+00, %28 ]
  tail call void @llvm.dbg.value(metadata double %32, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %33, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !205, metadata !DIExpression()), !dbg !213
  %34 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %31, !dbg !252
  %35 = load double, ptr %34, align 16, !dbg !252, !tbaa !143
  %36 = fmul double %35, %35, !dbg !257
  %handler_result = call double @fAddHandlerDouble(double %33, double %36), !dbg !258
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !208, metadata !DIExpression()), !dbg !213
  %37 = or disjoint i64 %31, 1, !dbg !258
  %38 = trunc i64 %37 to i32, !dbg !259
  %39 = sitofp i32 %38 to double, !dbg !259
  %40 = fmul double %39, 2.000000e+00, !dbg !260
  %41 = fmul double %40, %2, !dbg !261
  %handler_result11 = call double @callHandler(i32 1, double %41, double %41), !dbg !262
  %42 = fmul double %35, %handler_result11, !dbg !262
  %handler_result1 = call double @fAddHandlerDouble(double %32, double %42), !dbg !252
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !205, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !205, metadata !DIExpression()), !dbg !213
  %43 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %37, !dbg !252
  %44 = load double, ptr %43, align 8, !dbg !252, !tbaa !143
  %45 = fmul double %44, %44, !dbg !257
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double %45), !dbg !258
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !208, metadata !DIExpression()), !dbg !213
  %46 = add nuw nsw i64 %31, 2, !dbg !258
  %47 = trunc i64 %46 to i32, !dbg !259
  %48 = sitofp i32 %47 to double, !dbg !259
  %49 = fmul double %48, 2.000000e+00, !dbg !260
  %50 = fmul double %49, %2, !dbg !261
  %handler_result12 = call double @callHandler(i32 1, double %50, double %50), !dbg !262
  %51 = fmul double %44, %handler_result12, !dbg !262
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %51), !dbg !263
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !205, metadata !DIExpression()), !dbg !213
  %52 = icmp eq i64 %46, 100, !dbg !263
  br i1 %52, label %76, label %30, !dbg !264, !llvm.loop !265

53:                                               ; preds = %53, %28
  %54 = phi i64 [ %74, %53 ], [ 0, %28 ]
  %55 = phi double [ %handler_result9, %53 ], [ 0.000000e+00, %28 ]
  %56 = phi double [ %handler_result7, %53 ], [ 0.000000e+00, %28 ]
  tail call void @llvm.dbg.value(metadata double %55, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %56, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !205, metadata !DIExpression()), !dbg !213
  %57 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %54, !dbg !267
  %58 = load double, ptr %57, align 16, !dbg !267, !tbaa !143
  %59 = fmul double %58, %58, !dbg !272
  %handler_result4 = call double @fAddHandlerDouble(double %56, double %59), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !208, metadata !DIExpression()), !dbg !213
  %60 = trunc i64 %54 to i32, !dbg !273
  %61 = sitofp i32 %60 to double, !dbg !273
  %62 = fmul double %61, 2.000000e+00, !dbg !274
  %handler_result5 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !275
  %63 = fmul double %handler_result5, %2, !dbg !275
  %handler_result13 = call double @callHandler(i32 1, double %63, double %63), !dbg !276
  %64 = fmul double %58, %handler_result13, !dbg !276
  %handler_result6 = call double @fAddHandlerDouble(double %55, double %64), !dbg !277
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !209, metadata !DIExpression()), !dbg !213
  %65 = or disjoint i64 %54, 1, !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !205, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !208, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !205, metadata !DIExpression()), !dbg !213
  %66 = getelementptr inbounds [100 x double], ptr %5, i64 0, i64 %65, !dbg !267
  %67 = load double, ptr %66, align 8, !dbg !267, !tbaa !143
  %68 = fmul double %67, %67, !dbg !272
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result4, double %68), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !208, metadata !DIExpression()), !dbg !213
  %69 = trunc i64 %65 to i32, !dbg !273
  %70 = sitofp i32 %69 to double, !dbg !273
  %71 = fmul double %70, 2.000000e+00, !dbg !274
  %handler_result8 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !275
  %72 = fmul double %handler_result8, %2, !dbg !275
  %handler_result14 = call double @callHandler(i32 1, double %72, double %72), !dbg !276
  %73 = fmul double %67, %handler_result14, !dbg !276
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result6, double %73), !dbg !277
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !209, metadata !DIExpression()), !dbg !213
  %74 = add nuw nsw i64 %54, 2, !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !205, metadata !DIExpression()), !dbg !213
  %75 = icmp eq i64 %74, 100, !dbg !278
  br i1 %75, label %76, label %53, !dbg !279, !llvm.loop !280

76:                                               ; preds = %53, %30
  %77 = phi double [ %handler_result2, %30 ], [ %handler_result7, %53 ], !dbg !282
  %78 = phi double [ %handler_result3, %30 ], [ %handler_result9, %53 ], !dbg !283
  tail call void @llvm.dbg.value(metadata double %78, metadata !209, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %77, metadata !208, metadata !DIExpression()), !dbg !213
  %79 = call double @sqrt(double noundef %77) #6, !dbg !284
  tail call void @llvm.dbg.value(metadata double %79, metadata !208, metadata !DIExpression()), !dbg !213
  %80 = fdiv double %78, %79, !dbg !285
  tail call void @llvm.dbg.value(metadata double %80, metadata !209, metadata !DIExpression()), !dbg !213
  store double %80, ptr %3, align 8, !dbg !286, !tbaa !121
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !287
  %82 = call double @llvm.fabs.f64(double %80), !dbg !288
  tail call void @llvm.dbg.value(metadata double %82, metadata !210, metadata !DIExpression()), !dbg !213
  %83 = fcmp ogt double %82, 1.000000e+00, !dbg !289
  %84 = fmul double %82, 0x3CC0000000000000, !dbg !291
  %85 = select i1 %83, double %84, double 0x3CC0000000000000, !dbg !291
  store double %85, ptr %81, align 8, !dbg !213, !tbaa !183
  br label %86, !dbg !292

86:                                               ; preds = %76, %24, %20, %12, %9
  %87 = phi i32 [ 0, %9 ], [ 0, %12 ], [ 0, %76 ], [ %22, %20 ], [ %26, %24 ], !dbg !213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !293
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %5) #6, !dbg !293
  ret i32 %87, !dbg !293
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !294 double @sin(double noundef) local_unnamed_addr #2

declare !dbg !295 i32 @gsl_sf_mathieu_b_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !296 i32 @gsl_sf_mathieu_b_coeff(i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_ce_array(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !297 {
  %7 = alloca [100 x double], align 16, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !376, metadata ptr %7, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !362, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !363, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %2, metadata !364, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double %3, metadata !365, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !366, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !367, metadata !DIExpression()), !dbg !377
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #6, !dbg !378
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %4, i64 0, i32 6, !dbg !379
  %9 = load ptr, ptr %8, align 8, !dbg !379, !tbaa !380
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !374, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !377
  %10 = icmp slt i32 %1, %0, !dbg !385
  br i1 %10, label %16, label %11, !dbg !388

11:                                               ; preds = %6
  %12 = add i32 %1, 1, !dbg !388
  %13 = sub i32 %12, %0, !dbg !388
  %14 = zext i32 %13 to i64, !dbg !388
  %15 = shl nuw nsw i64 %14, 3, !dbg !388
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !dbg !389, !tbaa !143
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !370, metadata !DIExpression()), !dbg !377
  br label %16, !dbg !390

16:                                               ; preds = %11, %6
  %17 = load i64, ptr %4, align 8, !dbg !390, !tbaa !392
  %18 = zext i32 %1 to i64, !dbg !393
  %19 = icmp ult i64 %17, %18, !dbg !394
  br i1 %19, label %20, label %21, !dbg !395

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 4) #6, !dbg !396
  br label %98, !dbg !396

21:                                               ; preds = %16
  %22 = icmp slt i32 %0, 0, !dbg !399
  %23 = icmp slt i32 %1, %0
  %24 = or i1 %22, %23, !dbg !401
  br i1 %24, label %25, label %26, !dbg !401

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 1) #6, !dbg !402
  br label %98, !dbg !402

26:                                               ; preds = %21
  %27 = tail call i32 @gsl_sf_mathieu_a_array(i32 noundef 0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4, ptr noundef %9) #6, !dbg !405
  tail call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !369, metadata !DIExpression()), !dbg !377
  %28 = fcmp oeq double %2, 0.000000e+00
  %29 = zext nneg i32 %0 to i64, !dbg !406
  %30 = add i32 %1, 1, !dbg !406
  %31 = sub i32 %30, %0, !dbg !406
  %32 = zext i32 %31 to i64, !dbg !408
  br label %33, !dbg !406

33:                                               ; preds = %94, %26
  %34 = phi i64 [ %29, %26 ], [ %96, %94 ]
  %35 = phi i64 [ 0, %26 ], [ %95, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !370, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !369, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !368, metadata !DIExpression()), !dbg !377
  %36 = trunc i64 %34 to i32, !dbg !410
  %37 = and i32 %36, 1, !dbg !410
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !368, metadata !DIExpression()), !dbg !377
  br i1 %28, label %38, label %45, !dbg !413

38:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !375, metadata !DIExpression()), !dbg !377
  %39 = icmp eq i64 %34, 0, !dbg !414
  %40 = select i1 %39, double 0x3FF6A09E667F3BCD, double 1.000000e+00, !dbg !418
  tail call void @llvm.dbg.value(metadata double %40, metadata !375, metadata !DIExpression()), !dbg !377
  %41 = sitofp i32 %36 to double, !dbg !419
  %42 = fmul double %41, %3, !dbg !420
  %handler_result5 = call double @callHandler(i32 2, double %42, double %42), !dbg !421
  %43 = fdiv double %handler_result5, %40, !dbg !421
  %44 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !422
  store double %43, ptr %44, align 8, !dbg !423, !tbaa !143
  br label %94, !dbg !424

45:                                               ; preds = %33
  %46 = getelementptr inbounds double, ptr %9, i64 %34, !dbg !425
  %47 = load double, ptr %46, align 8, !dbg !425, !tbaa !143
  %48 = call i32 @gsl_sf_mathieu_a_coeff(i32 noundef %36, double noundef %2, double noundef %47, ptr noundef nonnull %7) #6, !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !372, metadata !DIExpression()), !dbg !377
  %49 = icmp eq i32 %48, 0, !dbg !427
  br i1 %49, label %50, label %98, !dbg !429

50:                                               ; preds = %45
  %51 = icmp eq i32 %37, 0, !dbg !430
  br i1 %51, label %54, label %52, !dbg !432

52:                                               ; preds = %50
  %53 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !377
  br label %73, !dbg !433

54:                                               ; preds = %50
  %55 = load double, ptr %7, align 16, !dbg !436, !tbaa !143
  %56 = fmul double %55, %55, !dbg !438
  tail call void @llvm.dbg.value(metadata double %56, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !377
  %57 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double %56, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, metadata !371, metadata !DIExpression()), !dbg !377
  br label %58, !dbg !439

58:                                               ; preds = %58, %54
  %59 = phi i64 [ 0, %54 ], [ %71, %58 ]
  %60 = phi double [ %56, %54 ], [ %handler_result1, %58 ]
  tail call void @llvm.dbg.value(metadata double %60, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !371, metadata !DIExpression()), !dbg !377
  %61 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %59, !dbg !441
  %62 = load double, ptr %61, align 8, !dbg !441, !tbaa !143
  %63 = trunc i64 %59 to i32, !dbg !444
  %64 = sitofp i32 %63 to double, !dbg !444
  %65 = fmul double %64, 2.000000e+00, !dbg !445
  %66 = fmul double %65, %3, !dbg !446
  %handler_result6 = call double @callHandler(i32 2, double %66, double %66), !dbg !447
  %67 = fmul double %62, %handler_result6, !dbg !447
  %68 = load double, ptr %57, align 8, !dbg !448, !tbaa !143
  %handler_result = call double @fAddHandlerDouble(double %68, double %67), !dbg !448
  store double %handler_result, ptr %57, align 8, !dbg !448, !tbaa !143
  %69 = load double, ptr %61, align 8, !dbg !449, !tbaa !143
  %70 = fmul double %69, %69, !dbg !450
  %handler_result1 = call double @fAddHandlerDouble(double %60, double %70), !dbg !451
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !375, metadata !DIExpression()), !dbg !377
  %71 = add nuw nsw i64 %59, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !371, metadata !DIExpression()), !dbg !377
  %72 = icmp eq i64 %71, 100, !dbg !452
  br i1 %72, label %88, label %58, !dbg !439, !llvm.loop !453

73:                                               ; preds = %73, %52
  %74 = phi i64 [ 0, %52 ], [ %86, %73 ]
  %75 = phi double [ 0.000000e+00, %52 ], [ %handler_result4, %73 ]
  tail call void @llvm.dbg.value(metadata double %75, metadata !375, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !371, metadata !DIExpression()), !dbg !377
  %76 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %74, !dbg !455
  %77 = load double, ptr %76, align 8, !dbg !455, !tbaa !143
  %78 = trunc i64 %74 to i32, !dbg !458
  %79 = sitofp i32 %78 to double, !dbg !458
  %80 = fmul double %79, 2.000000e+00, !dbg !459
  %handler_result2 = call double @fAddHandlerDouble(double %80, double 1.000000e+00), !dbg !460
  %81 = fmul double %handler_result2, %3, !dbg !460
  %handler_result7 = call double @callHandler(i32 2, double %81, double %81), !dbg !461
  %82 = fmul double %77, %handler_result7, !dbg !461
  %83 = load double, ptr %53, align 8, !dbg !462, !tbaa !143
  %handler_result3 = call double @fAddHandlerDouble(double %83, double %82), !dbg !462
  store double %handler_result3, ptr %53, align 8, !dbg !462, !tbaa !143
  %84 = load double, ptr %76, align 8, !dbg !463, !tbaa !143
  %85 = fmul double %84, %84, !dbg !464
  %handler_result4 = call double @fAddHandlerDouble(double %75, double %85), !dbg !465
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !375, metadata !DIExpression()), !dbg !377
  %86 = add nuw nsw i64 %74, 1, !dbg !465
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !371, metadata !DIExpression()), !dbg !377
  %87 = icmp eq i64 %86, 100, !dbg !466
  br i1 %87, label %88, label %73, !dbg !433, !llvm.loop !467

88:                                               ; preds = %73, %58
  %89 = phi double [ %handler_result1, %58 ], [ %handler_result4, %73 ], !dbg !469
  tail call void @llvm.dbg.value(metadata double %89, metadata !375, metadata !DIExpression()), !dbg !377
  %90 = call double @sqrt(double noundef %89) #6, !dbg !470
  tail call void @llvm.dbg.value(metadata double %90, metadata !375, metadata !DIExpression()), !dbg !377
  %91 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !471
  %92 = load double, ptr %91, align 8, !dbg !472, !tbaa !143
  %93 = fdiv double %92, %90, !dbg !472
  store double %93, ptr %91, align 8, !dbg !472, !tbaa !143
  br label %94, !dbg !473

94:                                               ; preds = %88, %38
  %95 = add nuw nsw i64 %35, 1, !dbg !474
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !370, metadata !DIExpression()), !dbg !377
  %96 = add nuw nsw i64 %34, 1, !dbg !475
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !369, metadata !DIExpression()), !dbg !377
  %97 = icmp eq i64 %95, %32, !dbg !408
  br i1 %97, label %98, label %33, !dbg !406, !llvm.loop !476

98:                                               ; preds = %94, %45, %25, %20
  %99 = phi i32 [ 4, %20 ], [ 1, %25 ], [ 0, %94 ], [ %48, %45 ], !dbg !377
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #6, !dbg !478
  ret i32 %99, !dbg !478
}

declare !dbg !479 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !484 i32 @gsl_sf_mathieu_a_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_mathieu_se_array(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 !dbg !487 {
  %7 = alloca [100 x double], align 16, !DIAssignID !503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !500, metadata !DIExpression(), metadata !503, metadata ptr %7, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !489, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !490, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double %2, metadata !491, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double %3, metadata !492, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !494, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %7) #6, !dbg !505
  %8 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, ptr %4, i64 0, i32 7, !dbg !506
  %9 = load ptr, ptr %8, align 8, !dbg !506, !tbaa !507
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !504
  %10 = icmp slt i32 %1, %0, !dbg !508
  br i1 %10, label %16, label %11, !dbg !511

11:                                               ; preds = %6
  %12 = add i32 %1, 1, !dbg !511
  %13 = sub i32 %12, %0, !dbg !511
  %14 = zext i32 %13 to i64, !dbg !511
  %15 = shl nuw nsw i64 %14, 3, !dbg !511
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !dbg !512, !tbaa !143
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !497, metadata !DIExpression()), !dbg !504
  br label %16, !dbg !513

16:                                               ; preds = %11, %6
  %17 = load i64, ptr %4, align 8, !dbg !513, !tbaa !392
  %18 = zext i32 %1 to i64, !dbg !515
  %19 = icmp ult i64 %17, %18, !dbg !516
  br i1 %19, label %20, label %21, !dbg !517

20:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 4) #6, !dbg !518
  br label %94, !dbg !518

21:                                               ; preds = %16
  %22 = icmp slt i32 %0, 0, !dbg !521
  %23 = icmp slt i32 %1, %0
  %24 = or i1 %22, %23, !dbg !523
  br i1 %24, label %25, label %26, !dbg !523

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 1) #6, !dbg !524
  br label %94, !dbg !524

26:                                               ; preds = %21
  %27 = tail call i32 @gsl_sf_mathieu_b_array(i32 noundef 0, i32 noundef %1, double noundef %2, ptr noundef nonnull %4, ptr noundef %9) #6, !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, metadata !497, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !496, metadata !DIExpression()), !dbg !504
  %28 = fcmp oeq double %2, 0.000000e+00
  %29 = zext nneg i32 %0 to i64, !dbg !528
  %30 = add i32 %1, 1, !dbg !528
  %31 = sub i32 %30, %0, !dbg !528
  %32 = zext i32 %31 to i64, !dbg !530
  br label %33, !dbg !528

33:                                               ; preds = %90, %26
  %34 = phi i64 [ %29, %26 ], [ %92, %90 ]
  %35 = phi i64 [ 0, %26 ], [ %91, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !497, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !496, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !504
  %36 = trunc i64 %34 to i32, !dbg !532
  %37 = and i32 %36, 1, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !495, metadata !DIExpression()), !dbg !504
  %38 = icmp eq i64 %34, 0, !dbg !535
  br i1 %38, label %39, label %41, !dbg !537

39:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !502, metadata !DIExpression()), !dbg !504
  %40 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !538
  store double 0.000000e+00, ptr %40, align 8, !dbg !540, !tbaa !143
  br label %90, !dbg !541

41:                                               ; preds = %33
  br i1 %28, label %42, label %46, !dbg !542

42:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !502, metadata !DIExpression()), !dbg !504
  %43 = sitofp i32 %36 to double, !dbg !543
  %44 = fmul double %43, %3, !dbg !546
  %handler_result5 = call double @callHandler(i32 1, double %44, double %44), !dbg !547
  %45 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !547
  store double %handler_result5, ptr %45, align 8, !dbg !548, !tbaa !143
  br label %90, !dbg !549

46:                                               ; preds = %41
  %47 = getelementptr inbounds double, ptr %9, i64 %34, !dbg !550
  %48 = load double, ptr %47, align 8, !dbg !550, !tbaa !143
  %49 = call i32 @gsl_sf_mathieu_b_coeff(i32 noundef %36, double noundef %2, double noundef %48, ptr noundef nonnull %7) #6, !dbg !551
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !499, metadata !DIExpression()), !dbg !504
  %50 = icmp eq i32 %49, 0, !dbg !552
  br i1 %50, label %51, label %94, !dbg !554

51:                                               ; preds = %46
  %52 = icmp eq i32 %37, 0, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !504
  %53 = getelementptr inbounds double, ptr %5, i64 %35
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !504
  br i1 %52, label %54, label %69, !dbg !557

54:                                               ; preds = %54, %51
  %55 = phi i64 [ %59, %54 ], [ 0, %51 ]
  %56 = phi double [ %handler_result1, %54 ], [ 0.000000e+00, %51 ]
  tail call void @llvm.dbg.value(metadata double %56, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !498, metadata !DIExpression()), !dbg !504
  %57 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %55, !dbg !558
  %58 = load double, ptr %57, align 8, !dbg !558, !tbaa !143
  %59 = add nuw nsw i64 %55, 1, !dbg !563
  %60 = trunc i64 %59 to i32, !dbg !564
  %61 = sitofp i32 %60 to double, !dbg !564
  %62 = fmul double %61, 2.000000e+00, !dbg !565
  %63 = fmul double %62, %3, !dbg !566
  %handler_result6 = call double @callHandler(i32 1, double %63, double %63), !dbg !567
  %64 = fmul double %58, %handler_result6, !dbg !567
  %65 = load double, ptr %53, align 8, !dbg !568, !tbaa !143
  %handler_result = call double @fAddHandlerDouble(double %65, double %64), !dbg !568
  store double %handler_result, ptr %53, align 8, !dbg !568, !tbaa !143
  %66 = load double, ptr %57, align 8, !dbg !569, !tbaa !143
  %67 = fmul double %66, %66, !dbg !570
  %handler_result1 = call double @fAddHandlerDouble(double %56, double %67), !dbg !571
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !498, metadata !DIExpression()), !dbg !504
  %68 = icmp eq i64 %59, 100, !dbg !571
  br i1 %68, label %84, label %54, !dbg !572, !llvm.loop !573

69:                                               ; preds = %69, %51
  %70 = phi i64 [ %82, %69 ], [ 0, %51 ]
  %71 = phi double [ %handler_result4, %69 ], [ 0.000000e+00, %51 ]
  tail call void @llvm.dbg.value(metadata double %71, metadata !502, metadata !DIExpression()), !dbg !504
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !498, metadata !DIExpression()), !dbg !504
  %72 = getelementptr inbounds [100 x double], ptr %7, i64 0, i64 %70, !dbg !575
  %73 = load double, ptr %72, align 8, !dbg !575, !tbaa !143
  %74 = trunc i64 %70 to i32, !dbg !580
  %75 = sitofp i32 %74 to double, !dbg !580
  %76 = fmul double %75, 2.000000e+00, !dbg !581
  %handler_result2 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !582
  %77 = fmul double %handler_result2, %3, !dbg !582
  %handler_result7 = call double @callHandler(i32 1, double %77, double %77), !dbg !583
  %78 = fmul double %73, %handler_result7, !dbg !583
  %79 = load double, ptr %53, align 8, !dbg !584, !tbaa !143
  %handler_result3 = call double @fAddHandlerDouble(double %79, double %78), !dbg !584
  store double %handler_result3, ptr %53, align 8, !dbg !584, !tbaa !143
  %80 = load double, ptr %72, align 8, !dbg !585, !tbaa !143
  %81 = fmul double %80, %80, !dbg !586
  %handler_result4 = call double @fAddHandlerDouble(double %71, double %81), !dbg !587
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !502, metadata !DIExpression()), !dbg !504
  %82 = add nuw nsw i64 %70, 1, !dbg !587
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !498, metadata !DIExpression()), !dbg !504
  %83 = icmp eq i64 %82, 100, !dbg !588
  br i1 %83, label %84, label %69, !dbg !589, !llvm.loop !590

84:                                               ; preds = %69, %54
  %85 = phi double [ %handler_result1, %54 ], [ %handler_result4, %69 ], !dbg !592
  tail call void @llvm.dbg.value(metadata double %85, metadata !502, metadata !DIExpression()), !dbg !504
  %86 = call double @sqrt(double noundef %85) #6, !dbg !593
  tail call void @llvm.dbg.value(metadata double %86, metadata !502, metadata !DIExpression()), !dbg !504
  %87 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !594
  %88 = load double, ptr %87, align 8, !dbg !595, !tbaa !143
  %89 = fdiv double %88, %86, !dbg !595
  store double %89, ptr %87, align 8, !dbg !595, !tbaa !143
  br label %90, !dbg !596

90:                                               ; preds = %84, %42, %39
  %91 = add nuw nsw i64 %35, 1, !dbg !597
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !497, metadata !DIExpression()), !dbg !504
  %92 = add nuw nsw i64 %34, 1, !dbg !598
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !496, metadata !DIExpression()), !dbg !504
  %93 = icmp eq i64 %91, %32, !dbg !530
  br i1 %93, label %94, label %33, !dbg !528, !llvm.loop !599

94:                                               ; preds = %90, %46, %25, %20
  %95 = phi i32 [ 4, %20 ], [ 1, %25 ], [ 0, %90 ], [ %49, %46 ], !dbg !504
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %7) #6, !dbg !601
  ret i32 %95, !dbg !601
}

declare !dbg !602 i32 @gsl_sf_mathieu_b_array(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_ce(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !603 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !612, metadata ptr %4, metadata !DIExpression()), !dbg !613
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !607, metadata !DIExpression()), !dbg !613
  tail call void @llvm.dbg.value(metadata double %1, metadata !608, metadata !DIExpression()), !dbg !613
  tail call void @llvm.dbg.value(metadata double %2, metadata !609, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !614
  %5 = call i32 @gsl_sf_mathieu_ce_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !614
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !611, metadata !DIExpression()), !dbg !613
  %6 = icmp eq i32 %5, 0, !dbg !615
  br i1 %6, label %8, label %7, !dbg !614

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 359, i32 noundef %5) #6, !dbg !617
  br label %8, !dbg !617

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !614, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !620
  ret double %9, !dbg !620
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_mathieu_se(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 !dbg !621 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !626, metadata !DIExpression(), metadata !628, metadata ptr %4, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !623, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata double %1, metadata !624, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata double %2, metadata !625, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !630
  %5 = call i32 @gsl_sf_mathieu_se_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !627, metadata !DIExpression()), !dbg !629
  %6 = icmp eq i32 %5, 0, !dbg !631
  br i1 %6, label %8, label %7, !dbg !630

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef %5) #6, !dbg !633
  br label %8, !dbg !633

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !630, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !636
  ret double %9, !dbg !636
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mathieu_angfunc.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "70960853f7e105117bb05f4025c27f54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 44)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !19, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !67, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!66}
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !{!0, !7, !12, !17, !22}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!75 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!76 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_e", scope: !2, file: !2, line: 30, type: !77, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!28, !28, !79, !79, !80}
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !79, size: 64, offset: 64)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !99, !100, !101, !102}
!88 = !DILocalVariable(name: "order", arg: 1, scope: !76, file: !2, line: 30, type: !28)
!89 = !DILocalVariable(name: "qq", arg: 2, scope: !76, file: !2, line: 30, type: !79)
!90 = !DILocalVariable(name: "zz", arg: 3, scope: !76, file: !2, line: 30, type: !79)
!91 = !DILocalVariable(name: "result", arg: 4, scope: !76, file: !2, line: 30, type: !80)
!92 = !DILocalVariable(name: "even_odd", scope: !76, file: !2, line: 32, type: !28)
!93 = !DILocalVariable(name: "ii", scope: !76, file: !2, line: 32, type: !28)
!94 = !DILocalVariable(name: "status", scope: !76, file: !2, line: 32, type: !28)
!95 = !DILocalVariable(name: "coeff", scope: !76, file: !2, line: 33, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 6400, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 100)
!99 = !DILocalVariable(name: "norm", scope: !76, file: !2, line: 33, type: !79)
!100 = !DILocalVariable(name: "fn", scope: !76, file: !2, line: 33, type: !79)
!101 = !DILocalVariable(name: "factor", scope: !76, file: !2, line: 33, type: !79)
!102 = !DILocalVariable(name: "aa", scope: !76, file: !2, line: 34, type: !81)
!103 = distinct !DIAssignID()
!104 = !DILocation(line: 0, scope: !76)
!105 = distinct !DIAssignID()
!106 = !DILocation(line: 33, column: 3, scope: !76)
!107 = !DILocation(line: 34, column: 3, scope: !76)
!108 = !DILocation(line: 39, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !76, file: !2, line: 39, column: 7)
!110 = !DILocation(line: 43, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !76, file: !2, line: 43, column: 7)
!112 = !DILocation(line: 43, column: 7, scope: !76)
!113 = !DILocation(line: 46, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 46, column: 11)
!115 = distinct !DILexicalBlock(scope: !111, file: !2, line: 44, column: 3)
!116 = !DILocation(line: 46, column: 11, scope: !115)
!117 = !DILocation(line: 49, column: 16, scope: !115)
!118 = !DILocation(line: 49, column: 21, scope: !115)
!119 = !DILocation(line: 49, column: 25, scope: !115)
!120 = !DILocation(line: 51, column: 19, scope: !115)
!121 = !{!122, !123, i64 0}
!122 = !{!"gsl_sf_result_struct", !123, i64 0, !123, i64 8}
!123 = !{!"double", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 53, column: 16, scope: !115)
!127 = !DILocation(line: 57, column: 7, scope: !115)
!128 = !DILocation(line: 62, column: 7, scope: !76)
!129 = !DILocation(line: 66, column: 12, scope: !76)
!130 = !DILocation(line: 67, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !76, file: !2, line: 67, column: 7)
!132 = !DILocation(line: 67, column: 7, scope: !76)
!133 = !DILocation(line: 73, column: 49, scope: !76)
!134 = !DILocation(line: 73, column: 12, scope: !76)
!135 = !DILocation(line: 74, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !76, file: !2, line: 74, column: 7)
!137 = !DILocation(line: 74, column: 7, scope: !76)
!138 = !DILocation(line: 79, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !76, file: !2, line: 79, column: 7)
!140 = !DILocation(line: 79, column: 7, scope: !76)
!141 = !DILocation(line: 82, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !2, line: 80, column: 3)
!143 = !{!123, !123, i64 0}
!144 = !DILocation(line: 82, column: 22, scope: !142)
!145 = !DILocation(line: 83, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !2, line: 83, column: 7)
!147 = !DILocation(line: 85, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 84, column: 7)
!149 = distinct !DILexicalBlock(scope: !146, file: !2, line: 83, column: 7)
!150 = !DILocation(line: 85, column: 35, scope: !148)
!151 = !DILocation(line: 85, column: 34, scope: !148)
!152 = !DILocation(line: 85, column: 37, scope: !148)
!153 = !DILocation(line: 85, column: 26, scope: !148)
!154 = !DILocation(line: 86, column: 19, scope: !148)
!155 = !DILocation(line: 86, column: 28, scope: !148)
!156 = !DILocation(line: 83, column: 45, scope: !149)
!157 = !DILocation(line: 83, column: 20, scope: !149)
!158 = distinct !{!158, !145, !159, !160}
!159 = !DILocation(line: 87, column: 7, scope: !146)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 94, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 93, column: 7)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 92, column: 7)
!164 = distinct !DILexicalBlock(scope: !165, file: !2, line: 92, column: 7)
!165 = distinct !DILexicalBlock(scope: !139, file: !2, line: 90, column: 3)
!166 = !DILocation(line: 94, column: 36, scope: !162)
!167 = !DILocation(line: 94, column: 35, scope: !162)
!168 = !DILocation(line: 94, column: 45, scope: !162)
!169 = !DILocation(line: 94, column: 26, scope: !162)
!170 = !DILocation(line: 95, column: 19, scope: !162)
!171 = !DILocation(line: 95, column: 28, scope: !162)
!172 = !DILocation(line: 92, column: 45, scope: !163)
!173 = !DILocation(line: 92, column: 20, scope: !163)
!174 = !DILocation(line: 92, column: 7, scope: !164)
!175 = distinct !{!175, !174, !176, !160}
!176 = !DILocation(line: 96, column: 7, scope: !164)
!177 = !DILocation(line: 0, scope: !139)
!178 = !DILocation(line: 99, column: 10, scope: !76)
!179 = !DILocation(line: 100, column: 6, scope: !76)
!180 = !DILocation(line: 102, column: 15, scope: !76)
!181 = !DILocation(line: 104, column: 12, scope: !76)
!182 = !DILocation(line: 108, column: 3, scope: !76)
!183 = !{!122, !123, i64 8}
!184 = !DILocation(line: 109, column: 1, scope: !76)
!185 = !DISubprogram(name: "sqrt", scope: !186, file: !186, line: 143, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!187 = !DISubroutineType(types: !188)
!188 = !{!79, !79}
!189 = !DISubprogram(name: "cos", scope: !186, file: !186, line: 62, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubprogram(name: "gsl_sf_mathieu_a_e", scope: !191, file: !191, line: 70, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "10fe5d8be88d41271759b0df36ba3d6c")
!192 = !DISubroutineType(types: !193)
!193 = !{!28, !28, !79, !80}
!194 = !DISubprogram(name: "gsl_sf_mathieu_a_coeff", scope: !191, file: !191, line: 76, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!28, !28, !79, !79, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!198 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_e", scope: !2, file: !2, line: 112, type: !77, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!200 = !DILocalVariable(name: "order", arg: 1, scope: !198, file: !2, line: 112, type: !28)
!201 = !DILocalVariable(name: "qq", arg: 2, scope: !198, file: !2, line: 112, type: !79)
!202 = !DILocalVariable(name: "zz", arg: 3, scope: !198, file: !2, line: 112, type: !79)
!203 = !DILocalVariable(name: "result", arg: 4, scope: !198, file: !2, line: 112, type: !80)
!204 = !DILocalVariable(name: "even_odd", scope: !198, file: !2, line: 114, type: !28)
!205 = !DILocalVariable(name: "ii", scope: !198, file: !2, line: 114, type: !28)
!206 = !DILocalVariable(name: "status", scope: !198, file: !2, line: 114, type: !28)
!207 = !DILocalVariable(name: "coeff", scope: !198, file: !2, line: 115, type: !96)
!208 = !DILocalVariable(name: "norm", scope: !198, file: !2, line: 115, type: !79)
!209 = !DILocalVariable(name: "fn", scope: !198, file: !2, line: 115, type: !79)
!210 = !DILocalVariable(name: "factor", scope: !198, file: !2, line: 115, type: !79)
!211 = !DILocalVariable(name: "aa", scope: !198, file: !2, line: 116, type: !81)
!212 = distinct !DIAssignID()
!213 = !DILocation(line: 0, scope: !198)
!214 = distinct !DIAssignID()
!215 = !DILocation(line: 115, column: 3, scope: !198)
!216 = !DILocation(line: 116, column: 3, scope: !198)
!217 = !DILocation(line: 121, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !198, file: !2, line: 121, column: 7)
!219 = !DILocation(line: 125, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !198, file: !2, line: 125, column: 7)
!221 = !DILocation(line: 125, column: 7, scope: !198)
!222 = !DILocation(line: 128, column: 19, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !2, line: 126, column: 3)
!224 = !DILocation(line: 129, column: 7, scope: !223)
!225 = !DILocation(line: 132, column: 10, scope: !226)
!226 = distinct !DILexicalBlock(scope: !198, file: !2, line: 132, column: 7)
!227 = !DILocation(line: 132, column: 7, scope: !198)
!228 = !DILocation(line: 135, column: 16, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !2, line: 133, column: 3)
!230 = !DILocation(line: 135, column: 21, scope: !229)
!231 = !DILocation(line: 137, column: 19, scope: !229)
!232 = !DILocation(line: 138, column: 15, scope: !229)
!233 = !DILocation(line: 139, column: 16, scope: !229)
!234 = !DILocation(line: 140, column: 18, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !2, line: 140, column: 11)
!236 = !DILocation(line: 140, column: 11, scope: !229)
!237 = !DILocation(line: 0, scope: !229)
!238 = !DILocation(line: 143, column: 7, scope: !229)
!239 = !DILocation(line: 148, column: 7, scope: !198)
!240 = !DILocation(line: 152, column: 12, scope: !198)
!241 = !DILocation(line: 153, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !198, file: !2, line: 153, column: 7)
!243 = !DILocation(line: 153, column: 7, scope: !198)
!244 = !DILocation(line: 159, column: 49, scope: !198)
!245 = !DILocation(line: 159, column: 12, scope: !198)
!246 = !DILocation(line: 160, column: 14, scope: !247)
!247 = distinct !DILexicalBlock(scope: !198, file: !2, line: 160, column: 7)
!248 = !DILocation(line: 160, column: 7, scope: !198)
!249 = !DILocation(line: 165, column: 16, scope: !250)
!250 = distinct !DILexicalBlock(scope: !198, file: !2, line: 165, column: 7)
!251 = !DILocation(line: 165, column: 7, scope: !198)
!252 = !DILocation(line: 170, column: 19, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 169, column: 7)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 168, column: 7)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 168, column: 7)
!256 = distinct !DILexicalBlock(scope: !250, file: !2, line: 166, column: 3)
!257 = !DILocation(line: 170, column: 28, scope: !253)
!258 = !DILocation(line: 171, column: 39, scope: !253)
!259 = !DILocation(line: 171, column: 35, scope: !253)
!260 = !DILocation(line: 171, column: 34, scope: !253)
!261 = !DILocation(line: 171, column: 43, scope: !253)
!262 = !DILocation(line: 171, column: 26, scope: !253)
!263 = !DILocation(line: 168, column: 20, scope: !254)
!264 = !DILocation(line: 168, column: 7, scope: !255)
!265 = distinct !{!265, !264, !266, !160}
!266 = !DILocation(line: 172, column: 7, scope: !255)
!267 = !DILocation(line: 179, column: 19, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 178, column: 7)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 177, column: 7)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 177, column: 7)
!271 = distinct !DILexicalBlock(scope: !250, file: !2, line: 175, column: 3)
!272 = !DILocation(line: 179, column: 28, scope: !268)
!273 = !DILocation(line: 180, column: 36, scope: !268)
!274 = !DILocation(line: 180, column: 35, scope: !268)
!275 = !DILocation(line: 180, column: 43, scope: !268)
!276 = !DILocation(line: 180, column: 26, scope: !268)
!277 = !DILocation(line: 177, column: 45, scope: !269)
!278 = !DILocation(line: 177, column: 20, scope: !269)
!279 = !DILocation(line: 177, column: 7, scope: !270)
!280 = distinct !{!280, !279, !281, !160}
!281 = !DILocation(line: 181, column: 7, scope: !270)
!282 = !DILocation(line: 119, column: 8, scope: !198)
!283 = !DILocation(line: 0, scope: !250)
!284 = !DILocation(line: 183, column: 10, scope: !198)
!285 = !DILocation(line: 184, column: 6, scope: !198)
!286 = !DILocation(line: 186, column: 15, scope: !198)
!287 = !DILocation(line: 187, column: 11, scope: !198)
!288 = !DILocation(line: 188, column: 12, scope: !198)
!289 = !DILocation(line: 189, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !198, file: !2, line: 189, column: 7)
!291 = !DILocation(line: 189, column: 7, scope: !198)
!292 = !DILocation(line: 192, column: 3, scope: !198)
!293 = !DILocation(line: 193, column: 1, scope: !198)
!294 = !DISubprogram(name: "sin", scope: !186, file: !186, line: 64, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubprogram(name: "gsl_sf_mathieu_b_e", scope: !191, file: !191, line: 72, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubprogram(name: "gsl_sf_mathieu_b_coeff", scope: !191, file: !191, line: 77, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_array", scope: !2, file: !2, line: 196, type: !298, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !361)
!298 = !DISubroutineType(types: !299)
!299 = !{!28, !28, !28, !79, !79, !300, !197}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !191, line: 60, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 42, size: 1024, elements: !303)
!303 = !{!304, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !338, !350}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !191, line: 44, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !306, line: 18, baseType: !307)
!306 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!307 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !302, file: !191, line: 45, baseType: !305, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !302, file: !191, line: 46, baseType: !305, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !302, file: !191, line: 47, baseType: !28, size: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !302, file: !191, line: 48, baseType: !79, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !302, file: !191, line: 49, baseType: !79, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !302, file: !191, line: 50, baseType: !197, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !302, file: !191, line: 51, baseType: !197, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !302, file: !191, line: 52, baseType: !197, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !302, file: !191, line: 53, baseType: !197, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !302, file: !191, line: 54, baseType: !197, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !302, file: !191, line: 55, baseType: !197, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !302, file: !191, line: 56, baseType: !197, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !302, file: !191, line: 57, baseType: !321, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !323, line: 50, baseType: !324)
!323 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 42, size: 320, elements: !325)
!325 = !{!326, !327, !328, !329, !337}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !323, line: 44, baseType: !305, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !324, file: !323, line: 45, baseType: !305, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !324, file: !323, line: 46, baseType: !197, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !324, file: !323, line: 47, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !332, line: 44, baseType: !333)
!332 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !332, line: 38, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !333, file: !332, line: 40, baseType: !305, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !333, file: !332, line: 41, baseType: !197, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !324, file: !323, line: 48, baseType: !28, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !302, file: !191, line: 58, baseType: !339, size: 64, offset: 896)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !341, line: 50, baseType: !342)
!341 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 42, size: 384, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !342, file: !341, line: 44, baseType: !305, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !342, file: !341, line: 45, baseType: !305, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !342, file: !341, line: 46, baseType: !305, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !342, file: !341, line: 47, baseType: !197, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !342, file: !341, line: 48, baseType: !330, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !342, file: !341, line: 49, baseType: !28, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !302, file: !191, line: 59, baseType: !351, size: 64, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !353, line: 54, baseType: !354)
!353 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "7d132116d57637a12af1800ec0e0c04b")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 48, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !354, file: !353, line: 49, baseType: !305, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !354, file: !353, line: 50, baseType: !197, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !354, file: !353, line: 51, baseType: !197, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !354, file: !353, line: 52, baseType: !197, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !354, file: !353, line: 53, baseType: !197, size: 64, offset: 256)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!362 = !DILocalVariable(name: "nmin", arg: 1, scope: !297, file: !2, line: 196, type: !28)
!363 = !DILocalVariable(name: "nmax", arg: 2, scope: !297, file: !2, line: 196, type: !28)
!364 = !DILocalVariable(name: "qq", arg: 3, scope: !297, file: !2, line: 196, type: !79)
!365 = !DILocalVariable(name: "zz", arg: 4, scope: !297, file: !2, line: 196, type: !79)
!366 = !DILocalVariable(name: "work", arg: 5, scope: !297, file: !2, line: 197, type: !300)
!367 = !DILocalVariable(name: "result_array", arg: 6, scope: !297, file: !2, line: 198, type: !197)
!368 = !DILocalVariable(name: "even_odd", scope: !297, file: !2, line: 200, type: !28)
!369 = !DILocalVariable(name: "order", scope: !297, file: !2, line: 200, type: !28)
!370 = !DILocalVariable(name: "ii", scope: !297, file: !2, line: 200, type: !28)
!371 = !DILocalVariable(name: "jj", scope: !297, file: !2, line: 200, type: !28)
!372 = !DILocalVariable(name: "status", scope: !297, file: !2, line: 200, type: !28)
!373 = !DILocalVariable(name: "coeff", scope: !297, file: !2, line: 201, type: !96)
!374 = !DILocalVariable(name: "aa", scope: !297, file: !2, line: 201, type: !197)
!375 = !DILocalVariable(name: "norm", scope: !297, file: !2, line: 201, type: !79)
!376 = distinct !DIAssignID()
!377 = !DILocation(line: 0, scope: !297)
!378 = !DILocation(line: 201, column: 3, scope: !297)
!379 = !DILocation(line: 201, column: 51, scope: !297)
!380 = !{!381, !384, i64 48}
!381 = !{!"", !382, i64 0, !382, i64 8, !382, i64 16, !383, i64 24, !123, i64 32, !123, i64 40, !384, i64 48, !384, i64 56, !384, i64 64, !384, i64 72, !384, i64 80, !384, i64 88, !384, i64 96, !384, i64 104, !384, i64 112, !384, i64 120}
!382 = !{!"long", !124, i64 0}
!383 = !{!"int", !124, i64 0}
!384 = !{!"any pointer", !124, i64 0}
!385 = !DILocation(line: 205, column: 16, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 205, column: 3)
!387 = distinct !DILexicalBlock(scope: !297, file: !2, line: 205, column: 3)
!388 = !DILocation(line: 205, column: 3, scope: !387)
!389 = !DILocation(line: 206, column: 24, scope: !386)
!390 = !DILocation(line: 209, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !297, file: !2, line: 209, column: 7)
!392 = !{!381, !382, i64 0}
!393 = !DILocation(line: 209, column: 20, scope: !391)
!394 = !DILocation(line: 209, column: 18, scope: !391)
!395 = !DILocation(line: 209, column: 7, scope: !297)
!396 = !DILocation(line: 211, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !2, line: 211, column: 7)
!398 = distinct !DILexicalBlock(scope: !391, file: !2, line: 210, column: 3)
!399 = !DILocation(line: 214, column: 12, scope: !400)
!400 = distinct !DILexicalBlock(scope: !297, file: !2, line: 214, column: 7)
!401 = !DILocation(line: 214, column: 16, scope: !400)
!402 = !DILocation(line: 216, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 216, column: 7)
!404 = distinct !DILexicalBlock(scope: !400, file: !2, line: 215, column: 3)
!405 = !DILocation(line: 220, column: 3, scope: !297)
!406 = !DILocation(line: 222, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !297, file: !2, line: 222, column: 3)
!408 = !DILocation(line: 222, column: 31, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !2, line: 222, column: 3)
!410 = !DILocation(line: 226, column: 17, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 226, column: 11)
!412 = distinct !DILexicalBlock(scope: !409, file: !2, line: 223, column: 3)
!413 = !DILocation(line: 230, column: 11, scope: !412)
!414 = !DILocation(line: 233, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 233, column: 15)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 231, column: 7)
!417 = distinct !DILexicalBlock(scope: !412, file: !2, line: 230, column: 11)
!418 = !DILocation(line: 233, column: 15, scope: !416)
!419 = !DILocation(line: 236, column: 34, scope: !416)
!420 = !DILocation(line: 236, column: 39, scope: !416)
!421 = !DILocation(line: 236, column: 43, scope: !416)
!422 = !DILocation(line: 236, column: 11, scope: !416)
!423 = !DILocation(line: 236, column: 28, scope: !416)
!424 = !DILocation(line: 238, column: 11, scope: !416)
!425 = !DILocation(line: 242, column: 50, scope: !412)
!426 = !DILocation(line: 242, column: 16, scope: !412)
!427 = !DILocation(line: 243, column: 18, scope: !428)
!428 = distinct !DILexicalBlock(scope: !412, file: !2, line: 243, column: 11)
!429 = !DILocation(line: 243, column: 11, scope: !412)
!430 = !DILocation(line: 246, column: 20, scope: !431)
!431 = distinct !DILexicalBlock(scope: !412, file: !2, line: 246, column: 11)
!432 = !DILocation(line: 246, column: 11, scope: !412)
!433 = !DILocation(line: 257, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !2, line: 257, column: 11)
!435 = distinct !DILexicalBlock(scope: !431, file: !2, line: 256, column: 7)
!436 = !DILocation(line: 248, column: 18, scope: !437)
!437 = distinct !DILexicalBlock(scope: !431, file: !2, line: 247, column: 7)
!438 = !DILocation(line: 248, column: 26, scope: !437)
!439 = !DILocation(line: 249, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !2, line: 249, column: 11)
!441 = !DILocation(line: 251, column: 35, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !2, line: 250, column: 11)
!443 = distinct !DILexicalBlock(scope: !440, file: !2, line: 249, column: 11)
!444 = !DILocation(line: 251, column: 53, scope: !442)
!445 = !DILocation(line: 251, column: 52, scope: !442)
!446 = !DILocation(line: 251, column: 55, scope: !442)
!447 = !DILocation(line: 251, column: 44, scope: !442)
!448 = !DILocation(line: 251, column: 32, scope: !442)
!449 = !DILocation(line: 252, column: 23, scope: !442)
!450 = !DILocation(line: 252, column: 32, scope: !442)
!451 = !DILocation(line: 249, column: 49, scope: !443)
!452 = !DILocation(line: 249, column: 24, scope: !443)
!453 = distinct !{!453, !439, !454, !160}
!454 = !DILocation(line: 253, column: 11, scope: !440)
!455 = !DILocation(line: 259, column: 35, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !2, line: 258, column: 11)
!457 = distinct !DILexicalBlock(scope: !434, file: !2, line: 257, column: 11)
!458 = !DILocation(line: 259, column: 54, scope: !456)
!459 = !DILocation(line: 259, column: 53, scope: !456)
!460 = !DILocation(line: 259, column: 63, scope: !456)
!461 = !DILocation(line: 259, column: 44, scope: !456)
!462 = !DILocation(line: 259, column: 32, scope: !456)
!463 = !DILocation(line: 260, column: 23, scope: !456)
!464 = !DILocation(line: 260, column: 32, scope: !456)
!465 = !DILocation(line: 257, column: 49, scope: !457)
!466 = !DILocation(line: 257, column: 24, scope: !457)
!467 = distinct !{!467, !433, !468, !160}
!468 = !DILocation(line: 261, column: 11, scope: !434)
!469 = !DILocation(line: 0, scope: !412)
!470 = !DILocation(line: 264, column: 14, scope: !412)
!471 = !DILocation(line: 265, column: 7, scope: !412)
!472 = !DILocation(line: 265, column: 24, scope: !412)
!473 = !DILocation(line: 266, column: 3, scope: !412)
!474 = !DILocation(line: 222, column: 41, scope: !409)
!475 = !DILocation(line: 222, column: 50, scope: !409)
!476 = distinct !{!476, !406, !477, !160}
!477 = !DILocation(line: 266, column: 3, scope: !407)
!478 = !DILocation(line: 269, column: 1, scope: !297)
!479 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482, !482, !28, !28}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!484 = !DISubprogram(name: "gsl_sf_mathieu_a_array", scope: !191, file: !191, line: 65, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubroutineType(types: !486)
!486 = !{!28, !28, !28, !79, !300, !197}
!487 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_array", scope: !2, file: !2, line: 272, type: !298, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DILocalVariable(name: "nmin", arg: 1, scope: !487, file: !2, line: 272, type: !28)
!490 = !DILocalVariable(name: "nmax", arg: 2, scope: !487, file: !2, line: 272, type: !28)
!491 = !DILocalVariable(name: "qq", arg: 3, scope: !487, file: !2, line: 272, type: !79)
!492 = !DILocalVariable(name: "zz", arg: 4, scope: !487, file: !2, line: 272, type: !79)
!493 = !DILocalVariable(name: "work", arg: 5, scope: !487, file: !2, line: 273, type: !300)
!494 = !DILocalVariable(name: "result_array", arg: 6, scope: !487, file: !2, line: 274, type: !197)
!495 = !DILocalVariable(name: "even_odd", scope: !487, file: !2, line: 276, type: !28)
!496 = !DILocalVariable(name: "order", scope: !487, file: !2, line: 276, type: !28)
!497 = !DILocalVariable(name: "ii", scope: !487, file: !2, line: 276, type: !28)
!498 = !DILocalVariable(name: "jj", scope: !487, file: !2, line: 276, type: !28)
!499 = !DILocalVariable(name: "status", scope: !487, file: !2, line: 276, type: !28)
!500 = !DILocalVariable(name: "coeff", scope: !487, file: !2, line: 277, type: !96)
!501 = !DILocalVariable(name: "bb", scope: !487, file: !2, line: 277, type: !197)
!502 = !DILocalVariable(name: "norm", scope: !487, file: !2, line: 277, type: !79)
!503 = distinct !DIAssignID()
!504 = !DILocation(line: 0, scope: !487)
!505 = !DILocation(line: 277, column: 3, scope: !487)
!506 = !DILocation(line: 277, column: 51, scope: !487)
!507 = !{!381, !384, i64 56}
!508 = !DILocation(line: 281, column: 16, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 281, column: 3)
!510 = distinct !DILexicalBlock(scope: !487, file: !2, line: 281, column: 3)
!511 = !DILocation(line: 281, column: 3, scope: !510)
!512 = !DILocation(line: 282, column: 24, scope: !509)
!513 = !DILocation(line: 285, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !487, file: !2, line: 285, column: 7)
!515 = !DILocation(line: 285, column: 20, scope: !514)
!516 = !DILocation(line: 285, column: 18, scope: !514)
!517 = !DILocation(line: 285, column: 7, scope: !487)
!518 = !DILocation(line: 287, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 287, column: 7)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 286, column: 3)
!521 = !DILocation(line: 290, column: 12, scope: !522)
!522 = distinct !DILexicalBlock(scope: !487, file: !2, line: 290, column: 7)
!523 = !DILocation(line: 290, column: 16, scope: !522)
!524 = !DILocation(line: 292, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !2, line: 292, column: 7)
!526 = distinct !DILexicalBlock(scope: !522, file: !2, line: 291, column: 3)
!527 = !DILocation(line: 296, column: 3, scope: !487)
!528 = !DILocation(line: 298, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !487, file: !2, line: 298, column: 3)
!530 = !DILocation(line: 298, column: 31, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !2, line: 298, column: 3)
!532 = !DILocation(line: 302, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 302, column: 11)
!534 = distinct !DILexicalBlock(scope: !531, file: !2, line: 299, column: 3)
!535 = !DILocation(line: 306, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !534, file: !2, line: 306, column: 11)
!537 = !DILocation(line: 306, column: 11, scope: !534)
!538 = !DILocation(line: 309, column: 11, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !2, line: 307, column: 7)
!540 = !DILocation(line: 309, column: 28, scope: !539)
!541 = !DILocation(line: 310, column: 11, scope: !539)
!542 = !DILocation(line: 313, column: 11, scope: !534)
!543 = !DILocation(line: 316, column: 34, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 314, column: 7)
!545 = distinct !DILexicalBlock(scope: !534, file: !2, line: 313, column: 11)
!546 = !DILocation(line: 316, column: 39, scope: !544)
!547 = !DILocation(line: 316, column: 11, scope: !544)
!548 = !DILocation(line: 316, column: 28, scope: !544)
!549 = !DILocation(line: 318, column: 11, scope: !544)
!550 = !DILocation(line: 322, column: 50, scope: !534)
!551 = !DILocation(line: 322, column: 16, scope: !534)
!552 = !DILocation(line: 323, column: 18, scope: !553)
!553 = distinct !DILexicalBlock(scope: !534, file: !2, line: 323, column: 11)
!554 = !DILocation(line: 323, column: 11, scope: !534)
!555 = !DILocation(line: 328, column: 20, scope: !556)
!556 = distinct !DILexicalBlock(scope: !534, file: !2, line: 328, column: 11)
!557 = !DILocation(line: 328, column: 11, scope: !534)
!558 = !DILocation(line: 332, column: 35, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 331, column: 11)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 330, column: 11)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 330, column: 11)
!562 = distinct !DILexicalBlock(scope: !556, file: !2, line: 329, column: 7)
!563 = !DILocation(line: 332, column: 57, scope: !559)
!564 = !DILocation(line: 332, column: 53, scope: !559)
!565 = !DILocation(line: 332, column: 52, scope: !559)
!566 = !DILocation(line: 332, column: 61, scope: !559)
!567 = !DILocation(line: 332, column: 44, scope: !559)
!568 = !DILocation(line: 332, column: 32, scope: !559)
!569 = !DILocation(line: 333, column: 23, scope: !559)
!570 = !DILocation(line: 333, column: 32, scope: !559)
!571 = !DILocation(line: 330, column: 24, scope: !560)
!572 = !DILocation(line: 330, column: 11, scope: !561)
!573 = distinct !{!573, !572, !574, !160}
!574 = !DILocation(line: 334, column: 11, scope: !561)
!575 = !DILocation(line: 340, column: 35, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 339, column: 11)
!577 = distinct !DILexicalBlock(scope: !578, file: !2, line: 338, column: 11)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 338, column: 11)
!579 = distinct !DILexicalBlock(scope: !556, file: !2, line: 337, column: 7)
!580 = !DILocation(line: 340, column: 54, scope: !576)
!581 = !DILocation(line: 340, column: 53, scope: !576)
!582 = !DILocation(line: 340, column: 63, scope: !576)
!583 = !DILocation(line: 340, column: 44, scope: !576)
!584 = !DILocation(line: 340, column: 32, scope: !576)
!585 = !DILocation(line: 341, column: 23, scope: !576)
!586 = !DILocation(line: 341, column: 32, scope: !576)
!587 = !DILocation(line: 338, column: 49, scope: !577)
!588 = !DILocation(line: 338, column: 24, scope: !577)
!589 = !DILocation(line: 338, column: 11, scope: !578)
!590 = distinct !{!590, !589, !591, !160}
!591 = !DILocation(line: 342, column: 11, scope: !578)
!592 = !DILocation(line: 300, column: 12, scope: !534)
!593 = !DILocation(line: 345, column: 14, scope: !534)
!594 = !DILocation(line: 346, column: 7, scope: !534)
!595 = !DILocation(line: 346, column: 24, scope: !534)
!596 = !DILocation(line: 347, column: 3, scope: !534)
!597 = !DILocation(line: 298, column: 41, scope: !531)
!598 = !DILocation(line: 298, column: 50, scope: !531)
!599 = distinct !{!599, !528, !600, !160}
!600 = !DILocation(line: 347, column: 3, scope: !529)
!601 = !DILocation(line: 350, column: 1, scope: !487)
!602 = !DISubprogram(name: "gsl_sf_mathieu_b_array", scope: !191, file: !191, line: 66, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce", scope: !2, file: !2, line: 357, type: !604, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!79, !28, !79, !79}
!606 = !{!607, !608, !609, !610, !611}
!607 = !DILocalVariable(name: "order", arg: 1, scope: !603, file: !2, line: 357, type: !28)
!608 = !DILocalVariable(name: "qq", arg: 2, scope: !603, file: !2, line: 357, type: !79)
!609 = !DILocalVariable(name: "zz", arg: 3, scope: !603, file: !2, line: 357, type: !79)
!610 = !DILocalVariable(name: "result", scope: !603, file: !2, line: 359, type: !81)
!611 = !DILocalVariable(name: "status", scope: !603, file: !2, line: 359, type: !28)
!612 = distinct !DIAssignID()
!613 = !DILocation(line: 0, scope: !603)
!614 = !DILocation(line: 359, column: 2, scope: !603)
!615 = !DILocation(line: 359, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !603, file: !2, line: 359, column: 2)
!617 = !DILocation(line: 359, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !2, line: 359, column: 2)
!619 = distinct !DILexicalBlock(scope: !616, file: !2, line: 359, column: 2)
!620 = !DILocation(line: 360, column: 1, scope: !603)
!621 = distinct !DISubprogram(name: "gsl_sf_mathieu_se", scope: !2, file: !2, line: 362, type: !604, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !622)
!622 = !{!623, !624, !625, !626, !627}
!623 = !DILocalVariable(name: "order", arg: 1, scope: !621, file: !2, line: 362, type: !28)
!624 = !DILocalVariable(name: "qq", arg: 2, scope: !621, file: !2, line: 362, type: !79)
!625 = !DILocalVariable(name: "zz", arg: 3, scope: !621, file: !2, line: 362, type: !79)
!626 = !DILocalVariable(name: "result", scope: !621, file: !2, line: 364, type: !81)
!627 = !DILocalVariable(name: "status", scope: !621, file: !2, line: 364, type: !28)
!628 = distinct !DIAssignID()
!629 = !DILocation(line: 0, scope: !621)
!630 = !DILocation(line: 364, column: 2, scope: !621)
!631 = !DILocation(line: 364, column: 2, scope: !632)
!632 = distinct !DILexicalBlock(scope: !621, file: !2, line: 364, column: 2)
!633 = !DILocation(line: 364, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 364, column: 2)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 364, column: 2)
!636 = !DILocation(line: 365, column: 1, scope: !621)
