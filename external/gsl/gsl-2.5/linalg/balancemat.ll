; ModuleID = 'balancemat.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 19) #6, !dbg !136
  br label %95, !dbg !136

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !139
  tail call void @gsl_vector_set_all(ptr noundef nonnull %1, double noundef 1.000000e+00) #6, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %11 = icmp eq i64 %6, 0
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !121
  br i1 %11, label %94, label %19, !dbg !142

16:                                               ; preds = %87
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !107, metadata !DIExpression()), !dbg !121
  %17 = icmp eq i32 %88, 0, !dbg !144
  %18 = or i1 %17, %11, !dbg !144
  br i1 %18, label %94, label %91, !dbg !144

19:                                               ; preds = %10, %91
  %20 = phi i64 [ %92, %91 ], [ 0, %10 ]
  %21 = phi i32 [ %93, %91 ], [ 0, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !114, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !107, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 0, metadata !116, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !103, metadata !DIExpression()), !dbg !121
  br label %22, !dbg !145

22:                                               ; preds = %19, %42
  %23 = phi i64 [ 0, %19 ], [ %45, %42 ]
  %24 = phi double [ 0.000000e+00, %19 ], [ %44, %42 ]
  %25 = phi double [ 0.000000e+00, %19 ], [ %43, %42 ]
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !116, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %24, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %25, metadata !103, metadata !DIExpression()), !dbg !121
  %26 = icmp eq i64 %23, %20, !dbg !149
  br i1 %26, label %42, label %27, !dbg !153

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
  %35 = fadd double %24, %34, !dbg !175
  tail call void @llvm.dbg.value(metadata double %35, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !154, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !161, metadata !DIExpression()), !dbg !176
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !162, metadata !DIExpression()), !dbg !176
  %36 = mul i64 %29, %20, !dbg !178
  %37 = getelementptr double, ptr %28, i64 %36, !dbg !179
  %38 = getelementptr double, ptr %37, i64 %23, !dbg !179
  %39 = load double, ptr %38, align 8, !dbg !179, !tbaa !172
  %40 = call double @llvm.fabs.f64(double %39), !dbg !180
  %41 = fadd double %25, %40, !dbg !181
  tail call void @llvm.dbg.value(metadata double %41, metadata !103, metadata !DIExpression()), !dbg !121
  br label %42, !dbg !182

42:                                               ; preds = %22, %27
  %43 = phi double [ %41, %27 ], [ %25, %22 ], !dbg !183
  %44 = phi double [ %35, %27 ], [ %24, %22 ], !dbg !183
  tail call void @llvm.dbg.value(metadata double %44, metadata !106, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %43, metadata !103, metadata !DIExpression()), !dbg !121
  %45 = add nuw i64 %23, 1, !dbg !184
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !116, metadata !DIExpression()), !dbg !141
  %46 = icmp eq i64 %45, %6, !dbg !185
  br i1 %46, label %47, label %22, !dbg !145, !llvm.loop !186

47:                                               ; preds = %42
  %48 = fcmp oeq double %44, 0.000000e+00, !dbg !189
  %49 = fcmp oeq double %43, 0.000000e+00
  %50 = select i1 %48, i1 true, i1 %49, !dbg !191
  br i1 %50, label %87, label %51, !dbg !191

51:                                               ; preds = %47
  %52 = fmul double %43, 5.000000e-01, !dbg !192
  tail call void @llvm.dbg.value(metadata double %52, metadata !117, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !118, metadata !DIExpression()), !dbg !141
  %53 = fadd double %43, %44, !dbg !193
  tail call void @llvm.dbg.value(metadata double %53, metadata !119, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %44, metadata !106, metadata !DIExpression()), !dbg !121
  %54 = fcmp olt double %44, %52, !dbg !194
  br i1 %54, label %55, label %61, !dbg !195

55:                                               ; preds = %51, %55
  %56 = phi double [ %58, %55 ], [ 1.000000e+00, %51 ]
  %57 = phi double [ %59, %55 ], [ %44, %51 ]
  tail call void @llvm.dbg.value(metadata double %56, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %57, metadata !106, metadata !DIExpression()), !dbg !121
  %58 = fmul double %56, 2.000000e+00, !dbg !196
  tail call void @llvm.dbg.value(metadata double %58, metadata !118, metadata !DIExpression()), !dbg !141
  %59 = fmul double %57, 4.000000e+00, !dbg !198
  tail call void @llvm.dbg.value(metadata double %59, metadata !106, metadata !DIExpression()), !dbg !121
  %60 = fcmp olt double %59, %52, !dbg !194
  br i1 %60, label %55, label %61, !dbg !195, !llvm.loop !199

61:                                               ; preds = %55, %51
  %62 = phi double [ %44, %51 ], [ %59, %55 ], !dbg !183
  %63 = phi double [ 1.000000e+00, %51 ], [ %58, %55 ], !dbg !183
  %64 = fmul double %43, 2.000000e+00, !dbg !201
  tail call void @llvm.dbg.value(metadata double %64, metadata !117, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %63, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %62, metadata !106, metadata !DIExpression()), !dbg !121
  %65 = fcmp ogt double %62, %64, !dbg !202
  br i1 %65, label %66, label %72, !dbg !203

66:                                               ; preds = %61, %66
  %67 = phi double [ %69, %66 ], [ %63, %61 ]
  %68 = phi double [ %70, %66 ], [ %62, %61 ]
  tail call void @llvm.dbg.value(metadata double %67, metadata !118, metadata !DIExpression()), !dbg !141
  tail call void @llvm.dbg.value(metadata double %68, metadata !106, metadata !DIExpression()), !dbg !121
  %69 = fmul double %67, 5.000000e-01, !dbg !204
  tail call void @llvm.dbg.value(metadata double %69, metadata !118, metadata !DIExpression()), !dbg !141
  %70 = fmul double %68, 2.500000e-01, !dbg !206
  tail call void @llvm.dbg.value(metadata double %70, metadata !106, metadata !DIExpression()), !dbg !121
  %71 = fcmp ogt double %70, %64, !dbg !202
  br i1 %71, label %66, label %72, !dbg !203, !llvm.loop !207

72:                                               ; preds = %66, %61
  %73 = phi double [ %62, %61 ], [ %70, %66 ], !dbg !183
  %74 = phi double [ %63, %61 ], [ %69, %66 ], !dbg !183
  %75 = fadd double %43, %73, !dbg !209
  %76 = fmul double %53, 0x3FEE666666666666, !dbg !211
  %77 = fmul double %76, %74, !dbg !212
  %78 = fcmp olt double %75, %77, !dbg !213
  br i1 %78, label %79, label %87, !dbg !214

79:                                               ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1, metadata !107, metadata !DIExpression()), !dbg !121
  %80 = fdiv double 1.000000e+00, %74, !dbg !215
  tail call void @llvm.dbg.value(metadata double %80, metadata !117, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !217
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %20) #6, !dbg !217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !217, !tbaa.struct !218, !DIAssignID !222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !222, metadata ptr %3, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !217
  call void @gsl_blas_dscal(double noundef %80, ptr noundef nonnull %3) #6, !dbg !223
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !224
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %20) #6, !dbg !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !dbg !224, !tbaa.struct !218, !DIAssignID !225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !225, metadata ptr %3, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !224
  call void @gsl_blas_dscal(double noundef %74, ptr noundef nonnull %3) #6, !dbg !226
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !227, metadata !DIExpression()), !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !234, metadata !DIExpression()), !dbg !235
  %81 = load ptr, ptr %14, align 8, !dbg !237, !tbaa !238
  %82 = load i64, ptr %15, align 8, !dbg !239, !tbaa !240
  %83 = mul i64 %82, %20, !dbg !241
  %84 = getelementptr inbounds double, ptr %81, i64 %83, !dbg !242
  %85 = load double, ptr %84, align 8, !dbg !242, !tbaa !172
  %86 = fmul double %74, %85, !dbg !243
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !249, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %86, metadata !250, metadata !DIExpression()), !dbg !251
  store double %86, ptr %84, align 8, !dbg !253, !tbaa !172
  br label %87, !dbg !254

87:                                               ; preds = %72, %79, %47
  %88 = phi i32 [ %21, %47 ], [ 1, %79 ], [ %21, %72 ], !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !107, metadata !DIExpression()), !dbg !121
  %89 = add nuw i64 %20, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !114, metadata !DIExpression()), !dbg !141
  %90 = icmp eq i64 %89, %6, !dbg !256
  br i1 %90, label %16, label %91, !dbg !142

91:                                               ; preds = %87, %16
  %92 = phi i64 [ %89, %87 ], [ 0, %16 ]
  %93 = phi i32 [ %88, %87 ], [ 0, %16 ]
  br label %19, !dbg !141, !llvm.loop !257

94:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !259
  br label %95

95:                                               ; preds = %94, %9
  %96 = phi i32 [ 19, %9 ], [ 0, %94 ], !dbg !260
  ret i32 %96, !dbg !261
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !262 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !267 void @gsl_vector_set_all(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !270 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !273 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !277 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_balance_accum(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !278 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !287, metadata !DIExpression(), metadata !288, metadata ptr %3, metadata !DIExpression()), !dbg !289
  %4 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !280, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !281, metadata !DIExpression()), !dbg !290
  %5 = load i64, ptr %0, align 8, !dbg !291, !tbaa !124
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !282, metadata !DIExpression()), !dbg !290
  %6 = load i64, ptr %1, align 8, !dbg !292, !tbaa !132
  %7 = icmp eq i64 %5, %6, !dbg !293
  br i1 %7, label %9, label %8, !dbg !294

8:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef 19) #6, !dbg !295
  br label %24, !dbg !295

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !298
  tail call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !289
  %10 = icmp eq i64 %5, 0, !dbg !299
  br i1 %10, label %23, label %11, !dbg !302

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %14, !dbg !302

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %21, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !283, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !227, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !234, metadata !DIExpression()), !dbg !303
  %16 = load ptr, ptr %12, align 8, !dbg !306, !tbaa !238
  %17 = load i64, ptr %13, align 8, !dbg !307, !tbaa !240
  %18 = mul i64 %17, %15, !dbg !308
  %19 = getelementptr inbounds double, ptr %16, i64 %18, !dbg !309
  %20 = load double, ptr %19, align 8, !dbg !309, !tbaa !172
  tail call void @llvm.dbg.value(metadata double %20, metadata !286, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !310
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %15) #6, !dbg !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !310, !tbaa.struct !218, !DIAssignID !311
  call void @llvm.dbg.assign(metadata i1 undef, metadata !287, metadata !DIExpression(), metadata !311, metadata ptr %3, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !310
  call void @gsl_blas_dscal(double noundef %20, ptr noundef nonnull %3) #6, !dbg !312
  %21 = add nuw i64 %15, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !283, metadata !DIExpression()), !dbg !289
  %22 = icmp eq i64 %21, %5, !dbg !299
  br i1 %22, label %23, label %14, !dbg !302, !llvm.loop !314

23:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !316
  br label %24

24:                                               ; preds = %23, %8
  %25 = phi i32 [ 19, %8 ], [ 0, %23 ], !dbg !317
  ret i32 %25, !dbg !318
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!175 = !DILocation(line: 84, column: 32, scope: !165)
!176 = !DILocation(line: 0, scope: !155, inlinedAt: !177)
!177 = distinct !DILocation(line: 85, column: 40, scope: !165)
!178 = !DILocation(line: 285, column: 20, scope: !155, inlinedAt: !177)
!179 = !DILocation(line: 285, column: 10, scope: !155, inlinedAt: !177)
!180 = !DILocation(line: 85, column: 35, scope: !165)
!181 = !DILocation(line: 85, column: 32, scope: !165)
!182 = !DILocation(line: 86, column: 21, scope: !165)
!183 = !DILocation(line: 0, scope: !147)
!184 = !DILocation(line: 80, column: 34, scope: !152)
!185 = !DILocation(line: 80, column: 29, scope: !152)
!186 = distinct !{!186, !145, !187, !188}
!187 = !DILocation(line: 87, column: 17, scope: !146)
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 89, column: 29, scope: !190)
!190 = distinct !DILexicalBlock(scope: !147, file: !2, line: 89, column: 19)
!191 = !DILocation(line: 89, column: 37, scope: !190)
!192 = !DILocation(line: 94, column: 28, scope: !147)
!193 = !DILocation(line: 96, column: 28, scope: !147)
!194 = !DILocation(line: 102, column: 31, scope: !147)
!195 = !DILocation(line: 102, column: 15, scope: !147)
!196 = !DILocation(line: 104, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !147, file: !2, line: 103, column: 17)
!198 = !DILocation(line: 105, column: 28, scope: !197)
!199 = distinct !{!199, !195, !200, !188}
!200 = !DILocation(line: 106, column: 17, scope: !147)
!201 = !DILocation(line: 108, column: 28, scope: !147)
!202 = !DILocation(line: 110, column: 31, scope: !147)
!203 = !DILocation(line: 110, column: 15, scope: !147)
!204 = !DILocation(line: 112, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !147, file: !2, line: 111, column: 17)
!206 = !DILocation(line: 113, column: 28, scope: !205)
!207 = distinct !{!207, !203, !208, !188}
!208 = !DILocation(line: 114, column: 17, scope: !147)
!209 = !DILocation(line: 116, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !147, file: !2, line: 116, column: 19)
!211 = !DILocation(line: 116, column: 48, scope: !210)
!212 = !DILocation(line: 116, column: 52, scope: !210)
!213 = !DILocation(line: 116, column: 41, scope: !210)
!214 = !DILocation(line: 116, column: 19, scope: !147)
!215 = !DILocation(line: 120, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !2, line: 117, column: 17)
!217 = !DILocation(line: 128, column: 23, scope: !216)
!218 = !{i64 0, i64 8, !219, i64 8, i64 8, !219, i64 16, i64 8, !220, i64 24, i64 8, !220, i64 32, i64 4, !221}
!219 = !{!126, !126, i64 0}
!220 = !{!129, !129, i64 0}
!221 = !{!130, !130, i64 0}
!222 = distinct !DIAssignID()
!223 = !DILocation(line: 129, column: 19, scope: !216)
!224 = !DILocation(line: 132, column: 23, scope: !216)
!225 = distinct !DIAssignID()
!226 = !DILocation(line: 133, column: 19, scope: !216)
!227 = !DILocalVariable(name: "v", arg: 1, scope: !228, file: !90, line: 175, type: !231)
!228 = distinct !DISubprogram(name: "gsl_vector_get", scope: !90, file: !90, line: 175, type: !229, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !233)
!229 = !DISubroutineType(types: !230)
!230 = !{!78, !231, !102}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!233 = !{!227, !234}
!234 = !DILocalVariable(name: "i", arg: 2, scope: !228, file: !90, line: 175, type: !102)
!235 = !DILocation(line: 0, scope: !228, inlinedAt: !236)
!236 = distinct !DILocation(line: 136, column: 40, scope: !216)
!237 = !DILocation(line: 183, column: 13, scope: !228, inlinedAt: !236)
!238 = !{!133, !129, i64 16}
!239 = !DILocation(line: 183, column: 25, scope: !228, inlinedAt: !236)
!240 = !{!133, !126, i64 8}
!241 = !DILocation(line: 183, column: 20, scope: !228, inlinedAt: !236)
!242 = !DILocation(line: 183, column: 10, scope: !228, inlinedAt: !236)
!243 = !DILocation(line: 136, column: 61, scope: !216)
!244 = !DILocalVariable(name: "v", arg: 1, scope: !245, file: !90, line: 188, type: !88)
!245 = distinct !DISubprogram(name: "gsl_vector_set", scope: !90, file: !90, line: 188, type: !246, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !88, !102, !78}
!248 = !{!244, !249, !250}
!249 = !DILocalVariable(name: "i", arg: 2, scope: !245, file: !90, line: 188, type: !102)
!250 = !DILocalVariable(name: "x", arg: 3, scope: !245, file: !90, line: 188, type: !78)
!251 = !DILocation(line: 0, scope: !245, inlinedAt: !252)
!252 = distinct !DILocation(line: 136, column: 19, scope: !216)
!253 = !DILocation(line: 196, column: 26, scope: !245, inlinedAt: !252)
!254 = !DILocation(line: 137, column: 17, scope: !216)
!255 = !DILocation(line: 75, column: 30, scope: !148)
!256 = !DILocation(line: 75, column: 25, scope: !148)
!257 = distinct !{!257, !144, !258, !188}
!258 = !DILocation(line: 139, column: 9, scope: !104)
!259 = !DILocation(line: 142, column: 5, scope: !105)
!260 = !DILocation(line: 0, scope: !105)
!261 = !DILocation(line: 143, column: 1, scope: !62)
!262 = !DISubprogram(name: "gsl_error", scope: !15, file: !15, line: 77, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !265, !265, !16, !16}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!267 = !DISubprogram(name: "gsl_vector_set_all", scope: !90, file: !90, line: 127, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !88, !78}
!270 = !DISubprogram(name: "gsl_matrix_row", scope: !67, file: !67, line: 106, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!110, !65, !102}
!273 = !DISubprogram(name: "gsl_blas_dscal", scope: !274, file: !274, line: 173, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!275 = !DISubroutineType(types: !276)
!276 = !{null, !78, !88}
!277 = !DISubprogram(name: "gsl_matrix_column", scope: !67, file: !67, line: 109, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = distinct !DISubprogram(name: "gsl_linalg_balance_accum", scope: !2, file: !2, line: 162, type: !63, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !279)
!279 = !{!280, !281, !282, !283, !286, !287}
!280 = !DILocalVariable(name: "A", arg: 1, scope: !278, file: !2, line: 162, type: !65)
!281 = !DILocalVariable(name: "D", arg: 2, scope: !278, file: !2, line: 162, type: !88)
!282 = !DILocalVariable(name: "N", scope: !278, file: !2, line: 164, type: !102)
!283 = !DILocalVariable(name: "i", scope: !284, file: !2, line: 172, type: !71)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 171, column: 5)
!285 = distinct !DILexicalBlock(scope: !278, file: !2, line: 166, column: 7)
!286 = !DILocalVariable(name: "s", scope: !284, file: !2, line: 173, type: !78)
!287 = !DILocalVariable(name: "r", scope: !284, file: !2, line: 174, type: !109)
!288 = distinct !DIAssignID()
!289 = !DILocation(line: 0, scope: !284)
!290 = !DILocation(line: 0, scope: !278)
!291 = !DILocation(line: 164, column: 23, scope: !278)
!292 = !DILocation(line: 166, column: 15, scope: !285)
!293 = !DILocation(line: 166, column: 9, scope: !285)
!294 = !DILocation(line: 166, column: 7, scope: !278)
!295 = !DILocation(line: 168, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 168, column: 7)
!297 = distinct !DILexicalBlock(scope: !285, file: !2, line: 167, column: 5)
!298 = !DILocation(line: 174, column: 7, scope: !284)
!299 = !DILocation(line: 176, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 176, column: 7)
!301 = distinct !DILexicalBlock(scope: !284, file: !2, line: 176, column: 7)
!302 = !DILocation(line: 176, column: 7, scope: !301)
!303 = !DILocation(line: 0, scope: !228, inlinedAt: !304)
!304 = distinct !DILocation(line: 178, column: 15, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !2, line: 177, column: 9)
!306 = !DILocation(line: 183, column: 13, scope: !228, inlinedAt: !304)
!307 = !DILocation(line: 183, column: 25, scope: !228, inlinedAt: !304)
!308 = !DILocation(line: 183, column: 20, scope: !228, inlinedAt: !304)
!309 = !DILocation(line: 183, column: 10, scope: !228, inlinedAt: !304)
!310 = !DILocation(line: 179, column: 15, scope: !305)
!311 = distinct !DIAssignID()
!312 = !DILocation(line: 181, column: 11, scope: !305)
!313 = !DILocation(line: 176, column: 26, scope: !300)
!314 = distinct !{!314, !302, !315, !188}
!315 = !DILocation(line: 182, column: 9, scope: !301)
!316 = !DILocation(line: 185, column: 5, scope: !285)
!317 = !DILocation(line: 0, scope: !285)
!318 = !DILocation(line: 186, column: 1, scope: !278)
