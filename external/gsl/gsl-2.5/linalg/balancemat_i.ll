; ModuleID = 'balancemat.ll'
source_filename = "balancemat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [30 x i8] c"vector must match matrix size\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"balancemat.c\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_balance_matrix(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !62 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !120, metadata ptr %3, metadata !DIExpression()), !dbg !121
  %4 = alloca %struct._gsl_vector_view, align 8
  %5 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !99, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !122
  %6 = load i64, ptr %0, align 8, !dbg !123, !tbaa !124
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !101, metadata !DIExpression()), !dbg !122
  %7 = load i64, ptr %1, align 8, !dbg !131, !tbaa !132
  %8 = icmp eq i64 %6, %7, !dbg !134
  br i1 %8, label %10, label %9, !dbg !135

9:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 19) #5, !dbg !136
  br label %91, !dbg !136

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5, !dbg !139
  tail call void @gsl_vector_set_all(ptr noundef nonnull %1, double noundef 1.000000e+00) #5, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %11 = icmp eq i64 %6, 0
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !121
  br i1 %11, label %90, label %19, !dbg !142

16:                                               ; preds = %83
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !107, metadata !DIExpression()), !dbg !121
  %17 = icmp eq i32 %84, 0, !dbg !144
  %18 = or i1 %17, %11, !dbg !144
  br i1 %18, label %90, label %87, !dbg !144

19:                                               ; preds = %87, %10
  %20 = phi i64 [ %88, %87 ], [ 0, %10 ]
  %21 = phi i32 [ %89, %87 ], [ 0, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !114, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !107, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 0, metadata !116, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !103, metadata !DIExpression()), !dbg !121
  br label %22, !dbg !145

22:                                               ; preds = %40, %19
  %23 = phi i64 [ 0, %19 ], [ %43, %40 ]
  %24 = phi double [ 0.000000e+00, %19 ], [ %42, %40 ]
  %25 = phi double [ 0.000000e+00, %19 ], [ %41, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !116, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %24, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %25, metadata !103, metadata !DIExpression()), !dbg !121
  %26 = icmp eq i64 %23, %20, !dbg !149
  br i1 %26, label %40, label %27, !dbg !153

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !154, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !161, metadata !DIExpression()), !dbg !163
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !162, metadata !DIExpression()), !dbg !163
  %28 = load ptr, ptr %12, align 8, !dbg !166, !tbaa !167
  %29 = load i64, ptr %13, align 8, !dbg !168, !tbaa !169
  %30 = mul i64 %29, %23, !dbg !170
  %31 = getelementptr double, ptr %28, i64 %30, !dbg !171
  %32 = getelementptr double, ptr %31, i64 %20, !dbg !171
  %33 = load double, ptr %32, align 8, !dbg !171, !tbaa !172
  %34 = call double @llvm.fabs.f64(double %33), !dbg !174
  %handler_result = call double @fAddHandlerDouble(double %24, double %34), !dbg !175
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !154, metadata !DIExpression()), !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !161, metadata !DIExpression()), !dbg !177
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !162, metadata !DIExpression()), !dbg !177
  %35 = mul i64 %29, %20, !dbg !175
  %36 = getelementptr double, ptr %28, i64 %35, !dbg !178
  %37 = getelementptr double, ptr %36, i64 %23, !dbg !178
  %38 = load double, ptr %37, align 8, !dbg !178, !tbaa !172
  %39 = call double @llvm.fabs.f64(double %38), !dbg !179
  %handler_result1 = call double @fAddHandlerDouble(double %25, double %39), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !103, metadata !DIExpression()), !dbg !121
  br label %40, !dbg !180

40:                                               ; preds = %27, %22
  %41 = phi double [ %handler_result1, %27 ], [ %25, %22 ], !dbg !181
  %42 = phi double [ %handler_result, %27 ], [ %24, %22 ], !dbg !181
  tail call void @llvm.dbg.value(metadata double %42, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %41, metadata !103, metadata !DIExpression()), !dbg !121
  %43 = add nuw i64 %23, 1, !dbg !182
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !116, metadata !DIExpression()), !dbg !141
  %44 = icmp eq i64 %43, %6, !dbg !183
  br i1 %44, label %45, label %22, !dbg !145, !llvm.loop !184

45:                                               ; preds = %40
  %46 = fcmp oeq double %42, 0.000000e+00, !dbg !187
  %47 = fcmp oeq double %41, 0.000000e+00
  %48 = select i1 %46, i1 true, i1 %47, !dbg !189
  br i1 %48, label %83, label %49, !dbg !189

49:                                               ; preds = %45
  %50 = fmul double %41, 5.000000e-01, !dbg !190
  tail call void @llvm.dbg.value(metadata double %50, metadata !117, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !118, metadata !DIExpression()), !dbg !141
  %handler_result2 = call double @fAddHandlerDouble(double %41, double %42), !dbg !191
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !119, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %42, metadata !106, metadata !DIExpression()), !dbg !121
  %51 = fcmp olt double %42, %50, !dbg !191
  br i1 %51, label %52, label %58, !dbg !192

52:                                               ; preds = %52, %49
  %53 = phi double [ %55, %52 ], [ 1.000000e+00, %49 ]
  %54 = phi double [ %56, %52 ], [ %42, %49 ]
  tail call void @llvm.dbg.value(metadata double %53, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %54, metadata !106, metadata !DIExpression()), !dbg !121
  %55 = fmul double %53, 2.000000e+00, !dbg !193
  tail call void @llvm.dbg.value(metadata double %55, metadata !118, metadata !DIExpression()), !dbg !141
  %56 = fmul double %54, 4.000000e+00, !dbg !195
  tail call void @llvm.dbg.value(metadata double %56, metadata !106, metadata !DIExpression()), !dbg !121
  %57 = fcmp olt double %56, %50, !dbg !191
  br i1 %57, label %52, label %58, !dbg !192, !llvm.loop !196

58:                                               ; preds = %52, %49
  %59 = phi double [ %42, %49 ], [ %56, %52 ], !dbg !181
  %60 = phi double [ 1.000000e+00, %49 ], [ %55, %52 ], !dbg !181
  %61 = fmul double %41, 2.000000e+00, !dbg !198
  tail call void @llvm.dbg.value(metadata double %61, metadata !117, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %60, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %59, metadata !106, metadata !DIExpression()), !dbg !121
  %62 = fcmp ogt double %59, %61, !dbg !199
  br i1 %62, label %63, label %69, !dbg !200

63:                                               ; preds = %63, %58
  %64 = phi double [ %66, %63 ], [ %60, %58 ]
  %65 = phi double [ %67, %63 ], [ %59, %58 ]
  tail call void @llvm.dbg.value(metadata double %64, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %65, metadata !106, metadata !DIExpression()), !dbg !121
  %66 = fmul double %64, 5.000000e-01, !dbg !201
  tail call void @llvm.dbg.value(metadata double %66, metadata !118, metadata !DIExpression()), !dbg !141
  %67 = fmul double %65, 2.500000e-01, !dbg !203
  tail call void @llvm.dbg.value(metadata double %67, metadata !106, metadata !DIExpression()), !dbg !121
  %68 = fcmp ogt double %67, %61, !dbg !199
  br i1 %68, label %63, label %69, !dbg !200, !llvm.loop !204

69:                                               ; preds = %63, %58
  %70 = phi double [ %59, %58 ], [ %67, %63 ], !dbg !181
  %71 = phi double [ %60, %58 ], [ %66, %63 ], !dbg !181
  %handler_result3 = call double @fAddHandlerDouble(double %41, double %70), !dbg !206
  %72 = fmul double %handler_result2, 0x3FEE666666666666, !dbg !206
  %73 = fmul double %72, %71, !dbg !208
  %74 = fcmp olt double %handler_result3, %73, !dbg !209
  br i1 %74, label %75, label %83, !dbg !210

75:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %76 = fdiv double 1.000000e+00, %71, !dbg !211
  tail call void @llvm.dbg.value(metadata double %76, metadata !117, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !213
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %20) #5, !dbg !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !213, !tbaa.struct !214, !DIAssignID !218
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !218, metadata ptr %3, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !213
  call void @gsl_blas_dscal(double noundef %76, ptr noundef nonnull %3) #5, !dbg !219
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !220
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %20) #5, !dbg !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !dbg !220, !tbaa.struct !214, !DIAssignID !221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !221, metadata ptr %3, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !220
  call void @gsl_blas_dscal(double noundef %71, ptr noundef nonnull %3) #5, !dbg !222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !230, metadata !DIExpression()), !dbg !231
  %77 = load ptr, ptr %14, align 8, !dbg !233, !tbaa !234
  %78 = load i64, ptr %15, align 8, !dbg !235, !tbaa !236
  %79 = mul i64 %78, %20, !dbg !237
  %80 = getelementptr inbounds double, ptr %77, i64 %79, !dbg !238
  %81 = load double, ptr %80, align 8, !dbg !238, !tbaa !172
  %82 = fmul double %71, %81, !dbg !239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %82, metadata !246, metadata !DIExpression()), !dbg !247
  store double %82, ptr %80, align 8, !dbg !249, !tbaa !172
  br label %83, !dbg !250

83:                                               ; preds = %75, %69, %45
  %84 = phi i32 [ %21, %45 ], [ 1, %75 ], [ %21, %69 ], !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !107, metadata !DIExpression()), !dbg !121
  %85 = add nuw i64 %20, 1, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !114, metadata !DIExpression()), !dbg !141
  %86 = icmp eq i64 %85, %6, !dbg !252
  br i1 %86, label %16, label %87, !dbg !142

87:                                               ; preds = %83, %16
  %88 = phi i64 [ %85, %83 ], [ 0, %16 ]
  %89 = phi i32 [ %84, %83 ], [ 0, %16 ]
  br label %19, !dbg !141, !llvm.loop !253

90:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5, !dbg !255
  br label %91

91:                                               ; preds = %90, %9
  %92 = phi i32 [ 19, %9 ], [ 0, %90 ], !dbg !256
  ret i32 %92, !dbg !257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !258 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !263 void @gsl_vector_set_all(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !266 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !269 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !273 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_balance_accum(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !274 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !283, metadata !DIExpression(), metadata !284, metadata ptr %3, metadata !DIExpression()), !dbg !285
  %4 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !276, metadata !DIExpression()), !dbg !286
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !277, metadata !DIExpression()), !dbg !286
  %5 = load i64, ptr %0, align 8, !dbg !287, !tbaa !124
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !278, metadata !DIExpression()), !dbg !286
  %6 = load i64, ptr %1, align 8, !dbg !288, !tbaa !132
  %7 = icmp eq i64 %5, %6, !dbg !289
  br i1 %7, label %9, label %8, !dbg !290

8:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef 19) #5, !dbg !291
  br label %24, !dbg !291

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5, !dbg !294
  tail call void @llvm.dbg.value(metadata i64 0, metadata !279, metadata !DIExpression()), !dbg !285
  %10 = icmp eq i64 %5, 0, !dbg !295
  br i1 %10, label %23, label %11, !dbg !298

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %14, !dbg !298

14:                                               ; preds = %14, %11
  %15 = phi i64 [ 0, %11 ], [ %21, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !279, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !230, metadata !DIExpression()), !dbg !299
  %16 = load ptr, ptr %12, align 8, !dbg !302, !tbaa !234
  %17 = load i64, ptr %13, align 8, !dbg !303, !tbaa !236
  %18 = mul i64 %17, %15, !dbg !304
  %19 = getelementptr inbounds double, ptr %16, i64 %18, !dbg !305
  %20 = load double, ptr %19, align 8, !dbg !305, !tbaa !172
  tail call void @llvm.dbg.value(metadata double %20, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !306
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %15) #5, !dbg !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !306, !tbaa.struct !214, !DIAssignID !307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !283, metadata !DIExpression(), metadata !307, metadata ptr %3, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !306
  call void @gsl_blas_dscal(double noundef %20, ptr noundef nonnull %3) #5, !dbg !308
  %21 = add nuw i64 %15, 1, !dbg !309
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !279, metadata !DIExpression()), !dbg !285
  %22 = icmp eq i64 %21, %5, !dbg !295
  br i1 %22, label %23, label %14, !dbg !298, !llvm.loop !310

23:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5, !dbg !312
  br label %24

24:                                               ; preds = %23, %8
  %25 = phi i32 [ 19, %8 ], [ 0, %23 ], !dbg !313
  ret i32 %25, !dbg !314
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "balancemat.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "0efe78fb8beec7ce1af445f016e26c0f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, globals: !53, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 39, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!18 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!19 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!20 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!21 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!22 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!23 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!24 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!25 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!26 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!27 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!28 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!29 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!30 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!31 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!32 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!33 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!34 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!35 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!36 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!37 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!38 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!39 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!40 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!41 = !DIEnumerator(name: "GSL_ESING", value: 21)
!42 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!43 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!44 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!45 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!46 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!47 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!48 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!49 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!50 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!51 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!52 = !DIEnumerator(name: "GSL_EOF", value: 32)
!53 = !{!0, !7}
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!61 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!62 = distinct !DISubprogram(name: "gsl_linalg_balance_matrix", scope: !2, file: !2, line: 48, type: !63, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !98)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !65, !88}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !67, line: 50, baseType: !68)
!67 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 42, size: 384, elements: !69)
!69 = !{!70, !74, !75, !76, !79, !87}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !68, file: !67, line: 44, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 18, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !68, file: !67, line: 45, baseType: !71, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !68, file: !67, line: 46, baseType: !71, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !67, line: 47, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !68, file: !67, line: 48, baseType: !80, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !82, line: 44, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !82, line: 38, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !82, line: 40, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !82, line: 41, baseType: !77, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !68, file: !67, line: 49, baseType: !16, size: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !90, line: 50, baseType: !91)
!90 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 42, size: 320, elements: !92)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !91, file: !90, line: 44, baseType: !71, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !91, file: !90, line: 45, baseType: !71, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !90, line: 46, baseType: !77, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !91, file: !90, line: 47, baseType: !80, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !91, file: !90, line: 48, baseType: !16, size: 32, offset: 256)
!98 = !{!99, !100, !101, !103, !106, !107, !108, !114, !116, !117, !118, !119}
!99 = !DILocalVariable(name: "A", arg: 1, scope: !62, file: !2, line: 48, type: !65)
!100 = !DILocalVariable(name: "D", arg: 2, scope: !62, file: !2, line: 48, type: !88)
!101 = !DILocalVariable(name: "N", scope: !62, file: !2, line: 50, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!103 = !DILocalVariable(name: "row_norm", scope: !104, file: !2, line: 58, type: !78)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 57, column: 5)
!105 = distinct !DILexicalBlock(scope: !62, file: !2, line: 52, column: 7)
!106 = !DILocalVariable(name: "col_norm", scope: !104, file: !2, line: 59, type: !78)
!107 = !DILocalVariable(name: "not_converged", scope: !104, file: !2, line: 60, type: !16)
!108 = !DILocalVariable(name: "v", scope: !104, file: !2, line: 61, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !90, line: 57, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !90, line: 55, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 52, size: 320, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !111, file: !90, line: 54, baseType: !89, size: 320)
!114 = !DILocalVariable(name: "i", scope: !115, file: !2, line: 70, type: !71)
!115 = distinct !DILexicalBlock(scope: !104, file: !2, line: 69, column: 9)
!116 = !DILocalVariable(name: "j", scope: !115, file: !2, line: 70, type: !71)
!117 = !DILocalVariable(name: "g", scope: !115, file: !2, line: 71, type: !78)
!118 = !DILocalVariable(name: "f", scope: !115, file: !2, line: 71, type: !78)
!119 = !DILocalVariable(name: "s", scope: !115, file: !2, line: 71, type: !78)
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !104)
!122 = !DILocation(line: 0, scope: !62)
!123 = !DILocation(line: 50, column: 23, scope: !62)
!124 = !{!125, !126, i64 0}
!125 = !{!"", !126, i64 0, !126, i64 8, !126, i64 16, !129, i64 24, !129, i64 32, !130, i64 40}
!126 = !{!"long", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !{!"any pointer", !127, i64 0}
!130 = !{!"int", !127, i64 0}
!131 = !DILocation(line: 52, column: 15, scope: !105)
!132 = !{!133, !126, i64 0}
!133 = !{!"", !126, i64 0, !126, i64 8, !129, i64 16, !129, i64 24, !130, i64 32}
!134 = !DILocation(line: 52, column: 9, scope: !105)
!135 = !DILocation(line: 52, column: 7, scope: !62)
!136 = !DILocation(line: 54, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 54, column: 7)
!138 = distinct !DILexicalBlock(scope: !105, file: !2, line: 53, column: 5)
!139 = !DILocation(line: 61, column: 7, scope: !104)
!140 = !DILocation(line: 64, column: 7, scope: !104)
!141 = !DILocation(line: 0, scope: !115)
!142 = !DILocation(line: 75, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !115, file: !2, line: 75, column: 11)
!144 = !DILocation(line: 68, column: 7, scope: !104)
!145 = !DILocation(line: 80, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 80, column: 15)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 76, column: 13)
!148 = distinct !DILexicalBlock(scope: !143, file: !2, line: 75, column: 11)
!149 = !DILocation(line: 82, column: 25, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 82, column: 23)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 81, column: 17)
!152 = distinct !DILexicalBlock(scope: !146, file: !2, line: 80, column: 15)
!153 = !DILocation(line: 82, column: 23, scope: !151)
!154 = !DILocalVariable(name: "m", arg: 1, scope: !155, file: !67, line: 270, type: !158)
!155 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !67, file: !67, line: 270, type: !156, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !160)
!156 = !DISubroutineType(types: !157)
!157 = !{!78, !158, !102, !102}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!160 = !{!154, !161, !162}
!161 = !DILocalVariable(name: "i", arg: 2, scope: !155, file: !67, line: 270, type: !102)
!162 = !DILocalVariable(name: "j", arg: 3, scope: !155, file: !67, line: 270, type: !102)
!163 = !DILocation(line: 0, scope: !155, inlinedAt: !164)
!164 = distinct !DILocation(line: 84, column: 40, scope: !165)
!165 = distinct !DILexicalBlock(scope: !150, file: !2, line: 83, column: 21)
!166 = !DILocation(line: 285, column: 13, scope: !155, inlinedAt: !164)
!167 = !{!125, !129, i64 24}
!168 = !DILocation(line: 285, column: 25, scope: !155, inlinedAt: !164)
!169 = !{!125, !126, i64 16}
!170 = !DILocation(line: 285, column: 20, scope: !155, inlinedAt: !164)
!171 = !DILocation(line: 285, column: 10, scope: !155, inlinedAt: !164)
!172 = !{!173, !173, i64 0}
!173 = !{!"double", !127, i64 0}
!174 = !DILocation(line: 84, column: 35, scope: !165)
!175 = !DILocation(line: 285, column: 20, scope: !155, inlinedAt: !176)
!176 = distinct !DILocation(line: 85, column: 40, scope: !165)
!177 = !DILocation(line: 0, scope: !155, inlinedAt: !176)
!178 = !DILocation(line: 285, column: 10, scope: !155, inlinedAt: !176)
!179 = !DILocation(line: 85, column: 35, scope: !165)
!180 = !DILocation(line: 86, column: 21, scope: !165)
!181 = !DILocation(line: 0, scope: !147)
!182 = !DILocation(line: 80, column: 34, scope: !152)
!183 = !DILocation(line: 80, column: 29, scope: !152)
!184 = distinct !{!184, !145, !185, !186}
!185 = !DILocation(line: 87, column: 17, scope: !146)
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 89, column: 29, scope: !188)
!188 = distinct !DILexicalBlock(scope: !147, file: !2, line: 89, column: 19)
!189 = !DILocation(line: 89, column: 37, scope: !188)
!190 = !DILocation(line: 94, column: 28, scope: !147)
!191 = !DILocation(line: 102, column: 31, scope: !147)
!192 = !DILocation(line: 102, column: 15, scope: !147)
!193 = !DILocation(line: 104, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !147, file: !2, line: 103, column: 17)
!195 = !DILocation(line: 105, column: 28, scope: !194)
!196 = distinct !{!196, !192, !197, !186}
!197 = !DILocation(line: 106, column: 17, scope: !147)
!198 = !DILocation(line: 108, column: 28, scope: !147)
!199 = !DILocation(line: 110, column: 31, scope: !147)
!200 = !DILocation(line: 110, column: 15, scope: !147)
!201 = !DILocation(line: 112, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !147, file: !2, line: 111, column: 17)
!203 = !DILocation(line: 113, column: 28, scope: !202)
!204 = distinct !{!204, !200, !205, !186}
!205 = !DILocation(line: 114, column: 17, scope: !147)
!206 = !DILocation(line: 116, column: 48, scope: !207)
!207 = distinct !DILexicalBlock(scope: !147, file: !2, line: 116, column: 19)
!208 = !DILocation(line: 116, column: 52, scope: !207)
!209 = !DILocation(line: 116, column: 41, scope: !207)
!210 = !DILocation(line: 116, column: 19, scope: !147)
!211 = !DILocation(line: 120, column: 27, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !2, line: 117, column: 17)
!213 = !DILocation(line: 128, column: 23, scope: !212)
!214 = !{i64 0, i64 8, !215, i64 8, i64 8, !215, i64 16, i64 8, !216, i64 24, i64 8, !216, i64 32, i64 4, !217}
!215 = !{!126, !126, i64 0}
!216 = !{!129, !129, i64 0}
!217 = !{!130, !130, i64 0}
!218 = distinct !DIAssignID()
!219 = !DILocation(line: 129, column: 19, scope: !212)
!220 = !DILocation(line: 132, column: 23, scope: !212)
!221 = distinct !DIAssignID()
!222 = !DILocation(line: 133, column: 19, scope: !212)
!223 = !DILocalVariable(name: "v", arg: 1, scope: !224, file: !90, line: 175, type: !227)
!224 = distinct !DISubprogram(name: "gsl_vector_get", scope: !90, file: !90, line: 175, type: !225, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !229)
!225 = !DISubroutineType(types: !226)
!226 = !{!78, !227, !102}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!229 = !{!223, !230}
!230 = !DILocalVariable(name: "i", arg: 2, scope: !224, file: !90, line: 175, type: !102)
!231 = !DILocation(line: 0, scope: !224, inlinedAt: !232)
!232 = distinct !DILocation(line: 136, column: 40, scope: !212)
!233 = !DILocation(line: 183, column: 13, scope: !224, inlinedAt: !232)
!234 = !{!133, !129, i64 16}
!235 = !DILocation(line: 183, column: 25, scope: !224, inlinedAt: !232)
!236 = !{!133, !126, i64 8}
!237 = !DILocation(line: 183, column: 20, scope: !224, inlinedAt: !232)
!238 = !DILocation(line: 183, column: 10, scope: !224, inlinedAt: !232)
!239 = !DILocation(line: 136, column: 61, scope: !212)
!240 = !DILocalVariable(name: "v", arg: 1, scope: !241, file: !90, line: 188, type: !88)
!241 = distinct !DISubprogram(name: "gsl_vector_set", scope: !90, file: !90, line: 188, type: !242, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !88, !102, !78}
!244 = !{!240, !245, !246}
!245 = !DILocalVariable(name: "i", arg: 2, scope: !241, file: !90, line: 188, type: !102)
!246 = !DILocalVariable(name: "x", arg: 3, scope: !241, file: !90, line: 188, type: !78)
!247 = !DILocation(line: 0, scope: !241, inlinedAt: !248)
!248 = distinct !DILocation(line: 136, column: 19, scope: !212)
!249 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !248)
!250 = !DILocation(line: 137, column: 17, scope: !212)
!251 = !DILocation(line: 75, column: 30, scope: !148)
!252 = !DILocation(line: 75, column: 25, scope: !148)
!253 = distinct !{!253, !144, !254, !186}
!254 = !DILocation(line: 139, column: 9, scope: !104)
!255 = !DILocation(line: 142, column: 5, scope: !105)
!256 = !DILocation(line: 0, scope: !105)
!257 = !DILocation(line: 143, column: 1, scope: !62)
!258 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261, !261, !16, !16}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!263 = !DISubprogram(name: "gsl_vector_set_all", scope: !90, file: !90, line: 127, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !88, !78}
!266 = !DISubprogram(name: "gsl_matrix_row", scope: !67, file: !67, line: 106, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!110, !65, !102}
!269 = !DISubprogram(name: "gsl_blas_dscal", scope: !270, file: !270, line: 173, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!271 = !DISubroutineType(types: !272)
!272 = !{null, !78, !88}
!273 = !DISubprogram(name: "gsl_matrix_column", scope: !67, file: !67, line: 109, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = distinct !DISubprogram(name: "gsl_linalg_balance_accum", scope: !2, file: !2, line: 162, type: !63, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !275)
!275 = !{!276, !277, !278, !279, !282, !283}
!276 = !DILocalVariable(name: "A", arg: 1, scope: !274, file: !2, line: 162, type: !65)
!277 = !DILocalVariable(name: "D", arg: 2, scope: !274, file: !2, line: 162, type: !88)
!278 = !DILocalVariable(name: "N", scope: !274, file: !2, line: 164, type: !102)
!279 = !DILocalVariable(name: "i", scope: !280, file: !2, line: 172, type: !71)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 171, column: 5)
!281 = distinct !DILexicalBlock(scope: !274, file: !2, line: 166, column: 7)
!282 = !DILocalVariable(name: "s", scope: !280, file: !2, line: 173, type: !78)
!283 = !DILocalVariable(name: "r", scope: !280, file: !2, line: 174, type: !109)
!284 = distinct !DIAssignID()
!285 = !DILocation(line: 0, scope: !280)
!286 = !DILocation(line: 0, scope: !274)
!287 = !DILocation(line: 164, column: 23, scope: !274)
!288 = !DILocation(line: 166, column: 15, scope: !281)
!289 = !DILocation(line: 166, column: 9, scope: !281)
!290 = !DILocation(line: 166, column: 7, scope: !274)
!291 = !DILocation(line: 168, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !2, line: 168, column: 7)
!293 = distinct !DILexicalBlock(scope: !281, file: !2, line: 167, column: 5)
!294 = !DILocation(line: 174, column: 7, scope: !280)
!295 = !DILocation(line: 176, column: 21, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 176, column: 7)
!297 = distinct !DILexicalBlock(scope: !280, file: !2, line: 176, column: 7)
!298 = !DILocation(line: 176, column: 7, scope: !297)
!299 = !DILocation(line: 0, scope: !224, inlinedAt: !300)
!300 = distinct !DILocation(line: 178, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !2, line: 177, column: 9)
!302 = !DILocation(line: 183, column: 13, scope: !224, inlinedAt: !300)
!303 = !DILocation(line: 183, column: 25, scope: !224, inlinedAt: !300)
!304 = !DILocation(line: 183, column: 20, scope: !224, inlinedAt: !300)
!305 = !DILocation(line: 183, column: 10, scope: !224, inlinedAt: !300)
!306 = !DILocation(line: 179, column: 15, scope: !301)
!307 = distinct !DIAssignID()
!308 = !DILocation(line: 181, column: 11, scope: !301)
!309 = !DILocation(line: 176, column: 26, scope: !296)
!310 = distinct !{!310, !298, !311, !186}
!311 = !DILocation(line: 182, column: 9, scope: !297)
!312 = !DILocation(line: 185, column: 5, scope: !281)
!313 = !DILocation(line: 0, scope: !281)
!314 = !DILocation(line: 186, column: 1, scope: !274)
