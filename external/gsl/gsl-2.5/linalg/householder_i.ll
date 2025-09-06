; ModuleID = 'householder.ll'
source_filename = "householder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

; Function Attrs: nounwind uwtable
define dso_local double @gsl_linalg_householder_transform(ptr noundef %0) local_unnamed_addr #0 !dbg !50 {
  %2 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !93
  call void @llvm.dbg.assign(metadata i1 undef, metadata !84, metadata !DIExpression(), metadata !93, metadata ptr %2, metadata !DIExpression()), !dbg !94
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !76, metadata !DIExpression()), !dbg !95
  %3 = load i64, ptr %0, align 8, !dbg !96, !tbaa !97
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !77, metadata !DIExpression()), !dbg !95
  %4 = icmp eq i64 %3, 1, !dbg !104
  br i1 %4, label %30, label %5, !dbg !105

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7, !dbg !106
  %6 = add i64 %3, -1, !dbg !107
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %2, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %6) #7, !dbg !108
  %7 = call double @gsl_blas_dnrm2(ptr noundef nonnull %2) #7, !dbg !109
  tail call void @llvm.dbg.value(metadata double %7, metadata !90, metadata !DIExpression()), !dbg !94
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !110
  br i1 %8, label %28, label %9, !dbg !112

9:                                                ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i64 0, metadata !120, metadata !DIExpression()), !dbg !121
  %10 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !123
  %11 = load ptr, ptr %10, align 8, !dbg !123, !tbaa !124
  %12 = load double, ptr %11, align 8, !dbg !125, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %12, metadata !79, metadata !DIExpression()), !dbg !94
  %13 = fcmp oge double %12, 0.000000e+00, !dbg !128
  %14 = select i1 %13, double 1.000000e+00, double -1.000000e+00, !dbg !129
  %15 = fneg double %14, !dbg !130
  %16 = call double @hypot(double noundef %12, double noundef %7) #7, !dbg !131
  %17 = fmul double %16, %15, !dbg !132
  tail call void @llvm.dbg.value(metadata double %17, metadata !82, metadata !DIExpression()), !dbg !94
  %handler_result = call double @fSubHandlerDouble(double %17, double %12), !dbg !133
  %18 = fdiv double %handler_result, %17, !dbg !133
  tail call void @llvm.dbg.value(metadata double %18, metadata !83, metadata !DIExpression()), !dbg !94
  %handler_result1 = call double @fSubHandlerDouble(double %12, double %17), !dbg !134
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !91, metadata !DIExpression()), !dbg !136
  %19 = call double @llvm.fabs.f64(double %handler_result1), !dbg !134
  %20 = fcmp ogt double %19, 0x10000000000000, !dbg !137
  br i1 %20, label %21, label %23, !dbg !138

21:                                               ; preds = %9
  %22 = fdiv double 1.000000e+00, %handler_result1, !dbg !139
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !141, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !148
  tail call void @llvm.dbg.value(metadata double %17, metadata !147, metadata !DIExpression()), !dbg !148
  br label %25, !dbg !150

23:                                               ; preds = %9
  %24 = fdiv double 0x3CB0000000000000, %handler_result1, !dbg !151
  call void @gsl_blas_dscal(double noundef %24, ptr noundef nonnull %2) #7, !dbg !153
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !141, metadata !DIExpression()), !dbg !154
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !154
  tail call void @llvm.dbg.value(metadata double %17, metadata !147, metadata !DIExpression()), !dbg !154
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi double [ %22, %21 ], [ 0x4330000000000000, %23 ]
  call void @gsl_blas_dscal(double noundef %26, ptr noundef nonnull %2) #7, !dbg !156
  %27 = load ptr, ptr %10, align 8, !dbg !157, !tbaa !124
  store double %17, ptr %27, align 8, !dbg !158, !tbaa !126
  br label %28, !dbg !159

28:                                               ; preds = %25, %5
  %29 = phi double [ 0.000000e+00, %5 ], [ %18, %25 ], !dbg !94
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7, !dbg !159
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi double [ %29, %28 ], [ 0.000000e+00, %1 ], !dbg !160
  ret double %31, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !162 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !165 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !169 double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !173 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_hm(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 !dbg !176 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !191, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !192, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !193, metadata !DIExpression()), !dbg !208
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !209
  br i1 %4, label %115, label %5, !dbg !211

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 0, metadata !196, metadata !DIExpression()), !dbg !214
  %8 = icmp eq i64 %7, 0, !dbg !215
  br i1 %8, label %115, label %9, !dbg !216

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %2, align 8, !tbaa !218
  %14 = icmp ugt i64 %13, 1
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %17 = add i64 %13, -1, !dbg !216
  %18 = add i64 %13, -2, !dbg !216
  %19 = and i64 %17, 1
  %20 = icmp eq i64 %18, 0
  %21 = and i64 %17, -2
  %22 = icmp eq i64 %19, 0
  %23 = and i64 %17, 1
  %24 = icmp eq i64 %18, 0
  %25 = and i64 %17, -2
  %26 = icmp eq i64 %23, 0
  br label %27, !dbg !216

27:                                               ; preds = %112, %9
  %28 = phi i64 [ 0, %9 ], [ %113, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !196, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !228
  %29 = getelementptr double, ptr %11, i64 %28, !dbg !230
  %30 = load double, ptr %29, align 8, !dbg !230, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %30, metadata !197, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata i64 1, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 1, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %30, metadata !197, metadata !DIExpression()), !dbg !231
  br i1 %14, label %33, label %31, !dbg !232

31:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !236
  %32 = fmul double %30, %0, !dbg !237
  %handler_result = call double @fSubHandlerDouble(double %30, double %32), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !246, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !247, metadata !DIExpression()), !dbg !249
  store double %handler_result, ptr %29, align 8, !dbg !238, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !194, metadata !DIExpression()), !dbg !214
  br label %112, !dbg !250

33:                                               ; preds = %27
  %34 = load i64, ptr %12, align 8, !tbaa !251
  %35 = load ptr, ptr %15, align 8, !tbaa !124
  %36 = load i64, ptr %16, align 8, !tbaa !252
  br i1 %20, label %59, label %37, !dbg !232

37:                                               ; preds = %37, %33
  %38 = phi i64 [ %56, %37 ], [ 1, %33 ]
  %39 = phi double [ %handler_result2, %37 ], [ %30, %33 ]
  %40 = phi i64 [ %57, %37 ], [ 0, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %39, metadata !197, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !226, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !253
  %41 = mul i64 %34, %38, !dbg !257
  %42 = getelementptr double, ptr %29, i64 %41, !dbg !258
  %43 = load double, ptr %42, align 8, !dbg !258, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !120, metadata !DIExpression()), !dbg !259
  %44 = mul i64 %36, %38, !dbg !261
  %45 = getelementptr inbounds double, ptr %35, i64 %44, !dbg !262
  %46 = load double, ptr %45, align 8, !dbg !262, !tbaa !126
  %47 = fmul double %43, %46, !dbg !263
  %handler_result1 = call double @fAddHandlerDouble(double %39, double %47), !dbg !264
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !197, metadata !DIExpression()), !dbg !231
  %48 = add nuw i64 %38, 1, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !197, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !226, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !253
  %49 = mul i64 %34, %48, !dbg !257
  %50 = getelementptr double, ptr %29, i64 %49, !dbg !258
  %51 = load double, ptr %50, align 8, !dbg !258, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !120, metadata !DIExpression()), !dbg !259
  %52 = mul i64 %36, %48, !dbg !261
  %53 = getelementptr inbounds double, ptr %35, i64 %52, !dbg !262
  %54 = load double, ptr %53, align 8, !dbg !262, !tbaa !126
  %55 = fmul double %51, %54, !dbg !263
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %55), !dbg !264
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !197, metadata !DIExpression()), !dbg !231
  %56 = add nuw i64 %38, 2, !dbg !264
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !194, metadata !DIExpression()), !dbg !214
  %57 = add nuw i64 %40, 2, !dbg !232
  %58 = icmp eq i64 %57, %21, !dbg !232
  br i1 %58, label %59, label %37, !dbg !232, !llvm.loop !265

59:                                               ; preds = %37, %33
  %60 = phi double [ undef, %33 ], [ %handler_result2, %37 ]
  %61 = phi i64 [ 1, %33 ], [ %56, %37 ]
  %62 = phi double [ %30, %33 ], [ %handler_result2, %37 ]
  br i1 %22, label %71, label %63, !dbg !232

63:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %62, metadata !197, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !226, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !253
  %64 = mul i64 %34, %61, !dbg !257
  %65 = getelementptr double, ptr %29, i64 %64, !dbg !258
  %66 = load double, ptr %65, align 8, !dbg !258, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !120, metadata !DIExpression()), !dbg !259
  %67 = mul i64 %36, %61, !dbg !261
  %68 = getelementptr inbounds double, ptr %35, i64 %67, !dbg !262
  %69 = load double, ptr %68, align 8, !dbg !262, !tbaa !126
  %70 = fmul double %66, %69, !dbg !263
  %handler_result3 = call double @fAddHandlerDouble(double %62, double %70), !dbg !237
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !197, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !194, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !214
  br label %71, !dbg !237

71:                                               ; preds = %63, %59
  %72 = phi double [ %60, %59 ], [ %handler_result3, %63 ], !dbg !268
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %30, metadata !201, metadata !DIExpression()), !dbg !236
  %73 = fmul double %72, %0, !dbg !237
  %handler_result4 = call double @fSubHandlerDouble(double %30, double %73), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !246, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !247, metadata !DIExpression()), !dbg !249
  store double %handler_result4, ptr %29, align 8, !dbg !238, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !194, metadata !DIExpression()), !dbg !214
  br i1 %14, label %74, label %112, !dbg !250

74:                                               ; preds = %71
  %75 = load i64, ptr %12, align 8, !tbaa !251
  %76 = load ptr, ptr %15, align 8, !tbaa !124
  %77 = load i64, ptr %16, align 8, !tbaa !252
  br i1 %24, label %101, label %78, !dbg !250

78:                                               ; preds = %78, %74
  %79 = phi i64 [ %98, %78 ], [ 1, %74 ]
  %80 = phi i64 [ %99, %78 ], [ 0, %74 ]
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !226, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !269
  %81 = mul i64 %75, %79, !dbg !271
  %82 = getelementptr double, ptr %29, i64 %81, !dbg !272
  %83 = load double, ptr %82, align 8, !dbg !272, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %83, metadata !203, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !120, metadata !DIExpression()), !dbg !274
  %84 = mul i64 %77, %79, !dbg !276
  %85 = getelementptr inbounds double, ptr %76, i64 %84, !dbg !277
  %86 = load double, ptr %85, align 8, !dbg !277, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %86, metadata !207, metadata !DIExpression()), !dbg !273
  %87 = fmul double %86, %0, !dbg !278
  %88 = fmul double %72, %87, !dbg !279
  %handler_result5 = call double @fSubHandlerDouble(double %83, double %88), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !245, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !246, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !247, metadata !DIExpression()), !dbg !282
  store double %handler_result5, ptr %82, align 8, !dbg !280, !tbaa !126
  %89 = add nuw i64 %79, 1, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !226, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !269
  %90 = mul i64 %75, %89, !dbg !271
  %91 = getelementptr double, ptr %29, i64 %90, !dbg !272
  %92 = load double, ptr %91, align 8, !dbg !272, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %92, metadata !203, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !120, metadata !DIExpression()), !dbg !274
  %93 = mul i64 %77, %89, !dbg !276
  %94 = getelementptr inbounds double, ptr %76, i64 %93, !dbg !277
  %95 = load double, ptr %94, align 8, !dbg !277, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %95, metadata !207, metadata !DIExpression()), !dbg !273
  %96 = fmul double %95, %0, !dbg !278
  %97 = fmul double %72, %96, !dbg !279
  %handler_result6 = call double @fSubHandlerDouble(double %92, double %97), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !245, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !246, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !247, metadata !DIExpression()), !dbg !282
  store double %handler_result6, ptr %91, align 8, !dbg !280, !tbaa !126
  %98 = add nuw i64 %79, 2, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !194, metadata !DIExpression()), !dbg !214
  %99 = add nuw i64 %80, 2, !dbg !250
  %100 = icmp eq i64 %99, %25, !dbg !250
  br i1 %100, label %101, label %78, !dbg !250, !llvm.loop !284

101:                                              ; preds = %78, %74
  %102 = phi i64 [ 1, %74 ], [ %98, %78 ]
  br i1 %26, label %112, label %103, !dbg !250

103:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !194, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !226, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !269
  %104 = mul i64 %75, %102, !dbg !271
  %105 = getelementptr double, ptr %29, i64 %104, !dbg !272
  %106 = load double, ptr %105, align 8, !dbg !272, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %106, metadata !203, metadata !DIExpression()), !dbg !273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !120, metadata !DIExpression()), !dbg !274
  %107 = mul i64 %77, %102, !dbg !276
  %108 = getelementptr inbounds double, ptr %76, i64 %107, !dbg !277
  %109 = load double, ptr %108, align 8, !dbg !277, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %109, metadata !207, metadata !DIExpression()), !dbg !273
  %110 = fmul double %109, %0, !dbg !278
  %111 = fmul double %72, %110, !dbg !279
  %handler_result7 = call double @fSubHandlerDouble(double %106, double %111), !dbg !280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !245, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !246, metadata !DIExpression()), !dbg !282
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !247, metadata !DIExpression()), !dbg !282
  store double %handler_result7, ptr %105, align 8, !dbg !280, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !194, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !214
  br label %112, !dbg !286

112:                                              ; preds = %103, %101, %71, %31
  %113 = add nuw i64 %28, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !196, metadata !DIExpression()), !dbg !214
  %114 = icmp eq i64 %113, %7, !dbg !215
  br i1 %114, label %115, label %27, !dbg !216, !llvm.loop !287

115:                                              ; preds = %112, %5, %3
  ret i32 0, !dbg !289
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_mh(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 !dbg !290 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !292, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !293, metadata !DIExpression()), !dbg !309
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !294, metadata !DIExpression()), !dbg !309
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !310
  br i1 %4, label %126, label %5, !dbg !312

5:                                                ; preds = %3
  %6 = load i64, ptr %2, align 8, !tbaa !218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !295, metadata !DIExpression()), !dbg !313
  %7 = icmp eq i64 %6, 0, !dbg !314
  br i1 %7, label %126, label %8, !dbg !315

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !251
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !212
  %15 = icmp ugt i64 %14, 1
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %18 = add i64 %14, -1, !dbg !315
  %19 = add i64 %14, -2, !dbg !315
  %20 = and i64 %18, 3
  %21 = icmp ult i64 %19, 3
  %22 = and i64 %18, -4
  %23 = icmp eq i64 %20, 0
  %24 = and i64 %18, 1
  %25 = icmp eq i64 %19, 0
  %26 = and i64 %18, -2
  %27 = icmp eq i64 %24, 0
  br label %28, !dbg !315

28:                                               ; preds = %123, %8
  %29 = phi i64 [ 0, %8 ], [ %124, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !295, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !316
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !316
  %30 = mul i64 %12, %29, !dbg !318
  %31 = getelementptr double, ptr %10, i64 %30, !dbg !319
  %32 = load double, ptr %31, align 8, !dbg !319, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %32, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %32, metadata !298, metadata !DIExpression()), !dbg !320
  br i1 %15, label %35, label %33, !dbg !321

33:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata double %32, metadata !302, metadata !DIExpression()), !dbg !325
  %34 = fmul double %32, %0, !dbg !326
  %handler_result = call double @fSubHandlerDouble(double %32, double %34), !dbg !327
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !245, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !247, metadata !DIExpression()), !dbg !329
  store double %handler_result, ptr %31, align 8, !dbg !327, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !313
  br label %123, !dbg !330

35:                                               ; preds = %28
  %36 = load ptr, ptr %16, align 8, !tbaa !124
  %37 = load i64, ptr %17, align 8, !tbaa !252
  br i1 %21, label %72, label %38, !dbg !321

38:                                               ; preds = %38, %35
  %39 = phi i64 [ %69, %38 ], [ 1, %35 ]
  %40 = phi double [ %handler_result4, %38 ], [ %32, %35 ]
  %41 = phi i64 [ %70, %38 ], [ 0, %35 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %40, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !227, metadata !DIExpression()), !dbg !331
  %42 = getelementptr double, ptr %31, i64 %39, !dbg !335
  %43 = load double, ptr %42, align 8, !dbg !335, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !120, metadata !DIExpression()), !dbg !336
  %44 = mul i64 %37, %39, !dbg !338
  %45 = getelementptr inbounds double, ptr %36, i64 %44, !dbg !339
  %46 = load double, ptr %45, align 8, !dbg !339, !tbaa !126
  %47 = fmul double %43, %46, !dbg !340
  %handler_result1 = call double @fAddHandlerDouble(double %40, double %47), !dbg !341
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !298, metadata !DIExpression()), !dbg !320
  %48 = add nuw nsw i64 %39, 1, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !227, metadata !DIExpression()), !dbg !331
  %49 = getelementptr double, ptr %31, i64 %48, !dbg !335
  %50 = load double, ptr %49, align 8, !dbg !335, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !120, metadata !DIExpression()), !dbg !336
  %51 = mul i64 %37, %48, !dbg !338
  %52 = getelementptr inbounds double, ptr %36, i64 %51, !dbg !339
  %53 = load double, ptr %52, align 8, !dbg !339, !tbaa !126
  %54 = fmul double %50, %53, !dbg !340
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %54), !dbg !341
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !298, metadata !DIExpression()), !dbg !320
  %55 = add nuw nsw i64 %39, 2, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !227, metadata !DIExpression()), !dbg !331
  %56 = getelementptr double, ptr %31, i64 %55, !dbg !335
  %57 = load double, ptr %56, align 8, !dbg !335, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !120, metadata !DIExpression()), !dbg !336
  %58 = mul i64 %37, %55, !dbg !338
  %59 = getelementptr inbounds double, ptr %36, i64 %58, !dbg !339
  %60 = load double, ptr %59, align 8, !dbg !339, !tbaa !126
  %61 = fmul double %57, %60, !dbg !340
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %61), !dbg !341
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !298, metadata !DIExpression()), !dbg !320
  %62 = add nuw i64 %39, 3, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !227, metadata !DIExpression()), !dbg !331
  %63 = getelementptr double, ptr %31, i64 %62, !dbg !335
  %64 = load double, ptr %63, align 8, !dbg !335, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !120, metadata !DIExpression()), !dbg !336
  %65 = mul i64 %37, %62, !dbg !338
  %66 = getelementptr inbounds double, ptr %36, i64 %65, !dbg !339
  %67 = load double, ptr %66, align 8, !dbg !339, !tbaa !126
  %68 = fmul double %64, %67, !dbg !340
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %68), !dbg !341
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !298, metadata !DIExpression()), !dbg !320
  %69 = add nuw i64 %39, 4, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !297, metadata !DIExpression()), !dbg !313
  %70 = add i64 %41, 4, !dbg !321
  %71 = icmp eq i64 %70, %22, !dbg !321
  br i1 %71, label %72, label %38, !dbg !321, !llvm.loop !342

72:                                               ; preds = %38, %35
  %73 = phi double [ undef, %35 ], [ %handler_result4, %38 ]
  %74 = phi i64 [ 1, %35 ], [ %69, %38 ]
  %75 = phi double [ %32, %35 ], [ %handler_result4, %38 ]
  br i1 %23, label %89, label %76, !dbg !321

76:                                               ; preds = %76, %72
  %77 = phi i64 [ %86, %76 ], [ %74, %72 ]
  %78 = phi double [ %handler_result5, %76 ], [ %75, %72 ]
  %79 = phi i64 [ %87, %76 ], [ 0, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %78, metadata !298, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !227, metadata !DIExpression()), !dbg !331
  %80 = getelementptr double, ptr %31, i64 %77, !dbg !335
  %81 = load double, ptr %80, align 8, !dbg !335, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !120, metadata !DIExpression()), !dbg !336
  %82 = mul i64 %37, %77, !dbg !338
  %83 = getelementptr inbounds double, ptr %36, i64 %82, !dbg !339
  %84 = load double, ptr %83, align 8, !dbg !339, !tbaa !126
  %85 = fmul double %81, %84, !dbg !340
  %handler_result5 = call double @fAddHandlerDouble(double %78, double %85), !dbg !341
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !298, metadata !DIExpression()), !dbg !320
  %86 = add nuw i64 %77, 1, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !297, metadata !DIExpression()), !dbg !313
  %87 = add i64 %79, 1, !dbg !321
  %88 = icmp eq i64 %87, %20, !dbg !321
  br i1 %88, label %89, label %76, !dbg !321, !llvm.loop !344

89:                                               ; preds = %76, %72
  %90 = phi double [ %73, %72 ], [ %handler_result5, %76 ], !dbg !346
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata double %32, metadata !302, metadata !DIExpression()), !dbg !325
  %91 = fmul double %90, %0, !dbg !326
  %handler_result6 = call double @fSubHandlerDouble(double %32, double %91), !dbg !327
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !245, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !329
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !247, metadata !DIExpression()), !dbg !329
  store double %handler_result6, ptr %31, align 8, !dbg !327, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !313
  br i1 %15, label %92, label %123, !dbg !330

92:                                               ; preds = %89
  %93 = load ptr, ptr %16, align 8, !tbaa !124
  %94 = load i64, ptr %17, align 8, !tbaa !252
  br i1 %25, label %114, label %95, !dbg !330

95:                                               ; preds = %95, %92
  %96 = phi i64 [ %111, %95 ], [ 1, %92 ]
  %97 = phi i64 [ %112, %95 ], [ 0, %92 ]
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !120, metadata !DIExpression()), !dbg !347
  %98 = mul i64 %94, %96, !dbg !349
  %99 = getelementptr inbounds double, ptr %93, i64 %98, !dbg !350
  %100 = load double, ptr %99, align 8, !dbg !350, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %100, metadata !304, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !227, metadata !DIExpression()), !dbg !352
  %101 = getelementptr double, ptr %31, i64 %96, !dbg !354
  %102 = load double, ptr %101, align 8, !dbg !354, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %102, metadata !308, metadata !DIExpression()), !dbg !351
  %103 = fmul double %91, %100, !dbg !355
  %handler_result7 = call double @fSubHandlerDouble(double %102, double %103), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !245, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !246, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !247, metadata !DIExpression()), !dbg !358
  store double %handler_result7, ptr %101, align 8, !dbg !356, !tbaa !126
  %104 = add nuw i64 %96, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !120, metadata !DIExpression()), !dbg !347
  %105 = mul i64 %94, %104, !dbg !349
  %106 = getelementptr inbounds double, ptr %93, i64 %105, !dbg !350
  %107 = load double, ptr %106, align 8, !dbg !350, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %107, metadata !304, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !227, metadata !DIExpression()), !dbg !352
  %108 = getelementptr double, ptr %31, i64 %104, !dbg !354
  %109 = load double, ptr %108, align 8, !dbg !354, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %109, metadata !308, metadata !DIExpression()), !dbg !351
  %110 = fmul double %91, %107, !dbg !355
  %handler_result8 = call double @fSubHandlerDouble(double %109, double %110), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !245, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !246, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !247, metadata !DIExpression()), !dbg !358
  store double %handler_result8, ptr %108, align 8, !dbg !356, !tbaa !126
  %111 = add nuw i64 %96, 2, !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !297, metadata !DIExpression()), !dbg !313
  %112 = add nuw i64 %97, 2, !dbg !330
  %113 = icmp eq i64 %112, %26, !dbg !330
  br i1 %113, label %114, label %95, !dbg !330, !llvm.loop !360

114:                                              ; preds = %95, %92
  %115 = phi i64 [ 1, %92 ], [ %111, %95 ]
  br i1 %27, label %123, label %116, !dbg !330

116:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !120, metadata !DIExpression()), !dbg !347
  %117 = mul i64 %94, %115, !dbg !349
  %118 = getelementptr inbounds double, ptr %93, i64 %117, !dbg !350
  %119 = load double, ptr %118, align 8, !dbg !350, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %119, metadata !304, metadata !DIExpression()), !dbg !351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !219, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !226, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !227, metadata !DIExpression()), !dbg !352
  %120 = getelementptr double, ptr %31, i64 %115, !dbg !354
  %121 = load double, ptr %120, align 8, !dbg !354, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %121, metadata !308, metadata !DIExpression()), !dbg !351
  %122 = fmul double %91, %119, !dbg !355
  %handler_result9 = call double @fSubHandlerDouble(double %121, double %122), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !245, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !246, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !247, metadata !DIExpression()), !dbg !358
  store double %handler_result9, ptr %120, align 8, !dbg !356, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %115, metadata !297, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !313
  br label %123, !dbg !362

123:                                              ; preds = %116, %114, %89, %33
  %124 = add nuw i64 %29, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !295, metadata !DIExpression()), !dbg !313
  %125 = icmp eq i64 %124, %6, !dbg !314
  br i1 %125, label %126, label %28, !dbg !315, !llvm.loop !363

126:                                              ; preds = %123, %5, %3
  ret i32 0, !dbg !365
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_householder_hv(double noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !366 {
  %4 = alloca double, align 8, !DIAssignID !386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !376, metadata !DIExpression(), metadata !386, metadata ptr %4, metadata !DIExpression()), !dbg !387
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !378, metadata !DIExpression(), metadata !388, metadata ptr %5, metadata !DIExpression()), !dbg !387
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !385, metadata !DIExpression(), metadata !389, metadata ptr %6, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %0, metadata !370, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !371, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !373, metadata !DIExpression()), !dbg !390
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !391
  br i1 %7, label %21, label %8, !dbg !393

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8, !dbg !394, !tbaa !97
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !373, metadata !DIExpression()), !dbg !390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !113, metadata !DIExpression()), !dbg !395
  tail call void @llvm.dbg.value(metadata i64 0, metadata !120, metadata !DIExpression()), !dbg !395
  %10 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2, !dbg !397
  %11 = load ptr, ptr %10, align 8, !dbg !397, !tbaa !124
  %12 = load double, ptr %11, align 8, !dbg !398, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %12, metadata !374, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !399
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7, !dbg !400
  %13 = add i64 %9, -1, !dbg !401
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %1, i64 noundef 1, i64 noundef %13) #7, !dbg !402
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7, !dbg !403
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef %2, i64 noundef 1, i64 noundef %13) #7, !dbg !404
  %14 = call i32 @gsl_blas_ddot(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #7, !dbg !405
  %15 = load double, ptr %4, align 8, !dbg !406, !tbaa !126
  %handler_result = call double @fAddHandlerDouble(double %12, double %15), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !377, metadata !DIExpression()), !dbg !387
  %16 = fmul double %handler_result, %0, !dbg !407
  %handler_result1 = call double @fSubHandlerDouble(double %12, double %16), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !141, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !147, metadata !DIExpression()), !dbg !410
  %17 = load ptr, ptr %10, align 8, !dbg !408, !tbaa !124
  store double %handler_result1, ptr %17, align 8, !dbg !411, !tbaa !126
  %18 = fneg double %0, !dbg !412
  %19 = fmul double %handler_result, %18, !dbg !413
  %20 = call i32 @gsl_blas_daxpy(double noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7, !dbg !415
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7, !dbg !415
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !415
  br label %21, !dbg !416

21:                                               ; preds = %8, %3
  ret i32 0, !dbg !417
}

declare !dbg !418 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !421 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !424 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_hm1(double noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !dbg !425 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !429, metadata !DIExpression()), !dbg !455
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !455
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !456
  br i1 %3, label %26, label %4, !dbg !457

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 1, metadata !437, metadata !DIExpression()), !dbg !458
  %7 = icmp ugt i64 %6, 1, !dbg !459
  %8 = load i64, ptr %1, align 8, !tbaa !218
  br i1 %7, label %9, label %71, !dbg !460

9:                                                ; preds = %4
  %10 = icmp ugt i64 %8, 1
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %13 = fneg double %0
  %14 = load ptr, ptr %11, align 8, !tbaa !217
  %15 = fmul double %0, -0.000000e+00
  %16 = add i64 %8, -1, !dbg !460
  %17 = add i64 %8, -2, !dbg !460
  %18 = and i64 %16, 3
  %19 = icmp ult i64 %17, 3
  %20 = and i64 %16, -4
  %21 = icmp eq i64 %18, 0
  %22 = and i64 %16, 1
  %23 = icmp eq i64 %17, 0
  %24 = and i64 %16, -2
  %25 = icmp eq i64 %22, 0
  br label %65, !dbg !460

26:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !247, metadata !DIExpression()), !dbg !461
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3, !dbg !463
  %28 = load ptr, ptr %27, align 8, !dbg !463, !tbaa !217
  %29 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2, !dbg !464
  store double 1.000000e+00, ptr %28, align 8, !dbg !465, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !434, metadata !DIExpression()), !dbg !466
  %30 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 1, metadata !434, metadata !DIExpression()), !dbg !466
  %32 = icmp ugt i64 %31, 1, !dbg !467
  br i1 %32, label %33, label %37, !dbg !470

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %28, i64 8, !dbg !470
  %35 = shl i64 %31, 3, !dbg !470
  %36 = add i64 %35, -8, !dbg !470
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %36, i1 false), !dbg !471, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !434, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !246, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !474
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i64, ptr %1, align 8, !tbaa !218
  tail call void @llvm.dbg.value(metadata i64 1, metadata !431, metadata !DIExpression()), !dbg !466
  %39 = icmp ugt i64 %38, 1, !dbg !475
  br i1 %39, label %40, label %226, !dbg !478

40:                                               ; preds = %37
  %41 = load i64, ptr %29, align 8, !tbaa !251
  %42 = add i64 %38, -1, !dbg !478
  %43 = add i64 %38, -2, !dbg !478
  %44 = and i64 %42, 3, !dbg !478
  %45 = icmp ult i64 %43, 3, !dbg !478
  br i1 %45, label %215, label %46, !dbg !478

46:                                               ; preds = %40
  %47 = and i64 %42, -4, !dbg !478
  br label %48, !dbg !478

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 1, %46 ], [ %62, %48 ]
  %50 = phi i64 [ 0, %46 ], [ %63, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !245, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !479
  %51 = mul i64 %41, %49, !dbg !482
  %52 = getelementptr double, ptr %28, i64 %51, !dbg !483
  store double 0.000000e+00, ptr %52, align 8, !dbg !484, !tbaa !126
  %53 = add nuw nsw i64 %49, 1, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !245, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !479
  %54 = mul i64 %41, %53, !dbg !482
  %55 = getelementptr double, ptr %28, i64 %54, !dbg !483
  store double 0.000000e+00, ptr %55, align 8, !dbg !484, !tbaa !126
  %56 = add nuw nsw i64 %49, 2, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !245, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !479
  %57 = mul i64 %41, %56, !dbg !482
  %58 = getelementptr double, ptr %28, i64 %57, !dbg !483
  store double 0.000000e+00, ptr %58, align 8, !dbg !484, !tbaa !126
  %59 = add nuw i64 %49, 3, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !245, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !479
  %60 = mul i64 %41, %59, !dbg !482
  %61 = getelementptr double, ptr %28, i64 %60, !dbg !483
  store double 0.000000e+00, ptr %61, align 8, !dbg !484, !tbaa !126
  %62 = add nuw i64 %49, 4, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !431, metadata !DIExpression()), !dbg !466
  %63 = add nuw i64 %50, 4, !dbg !478
  %64 = icmp eq i64 %63, %47, !dbg !478
  br i1 %64, label %215, label %48, !dbg !478, !llvm.loop !486

65:                                               ; preds = %173, %9
  %66 = phi i64 [ 1, %9 ], [ %174, %173 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !437, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 1, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !438, metadata !DIExpression()), !dbg !488
  br i1 %10, label %69, label %67, !dbg !489

67:                                               ; preds = %65
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !246, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double %15, metadata !247, metadata !DIExpression()), !dbg !490
  %68 = getelementptr double, ptr %14, i64 %66, !dbg !492
  store double %15, ptr %68, align 8, !dbg !493, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !435, metadata !DIExpression()), !dbg !458
  br label %173, !dbg !494

69:                                               ; preds = %65
  %70 = load i64, ptr %12, align 8, !tbaa !251
  br i1 %19, label %119, label %85, !dbg !489

71:                                               ; preds = %173, %4
  tail call void @llvm.dbg.value(metadata i64 1, metadata !435, metadata !DIExpression()), !dbg !458
  %72 = icmp ugt i64 %8, 1, !dbg !495
  %73 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !217
  br i1 %72, label %75, label %214, !dbg !496

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !251
  %78 = fneg double %0
  %79 = add i64 %8, -1, !dbg !496
  %80 = add i64 %8, -2, !dbg !496
  %81 = and i64 %79, 3, !dbg !496
  %82 = icmp ult i64 %80, 3, !dbg !496
  br i1 %82, label %201, label %83, !dbg !496

83:                                               ; preds = %75
  %84 = and i64 %79, -4, !dbg !496
  br label %176, !dbg !496

85:                                               ; preds = %85, %69
  %86 = phi i64 [ %116, %85 ], [ 1, %69 ]
  %87 = phi double [ %handler_result3, %85 ], [ 0.000000e+00, %69 ]
  %88 = phi i64 [ %117, %85 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %87, metadata !438, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !226, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !497
  %89 = mul i64 %70, %86, !dbg !499
  %90 = getelementptr double, ptr %14, i64 %89, !dbg !500
  %91 = load double, ptr %90, align 8, !dbg !500, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %91, metadata !442, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !226, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !502
  %92 = getelementptr double, ptr %90, i64 %66, !dbg !504
  %93 = load double, ptr %92, align 8, !dbg !504, !tbaa !126
  %94 = fmul double %91, %93, !dbg !505
  %handler_result = call double @fAddHandlerDouble(double %87, double %94), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !438, metadata !DIExpression()), !dbg !488
  %95 = add nuw nsw i64 %86, 1, !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !438, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !226, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !497
  %96 = mul i64 %70, %95, !dbg !499
  %97 = getelementptr double, ptr %14, i64 %96, !dbg !500
  %98 = load double, ptr %97, align 8, !dbg !500, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %98, metadata !442, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !226, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !502
  %99 = getelementptr double, ptr %97, i64 %66, !dbg !504
  %100 = load double, ptr %99, align 8, !dbg !504, !tbaa !126
  %101 = fmul double %98, %100, !dbg !505
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %101), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !438, metadata !DIExpression()), !dbg !488
  %102 = add nuw nsw i64 %86, 2, !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !438, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !226, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !497
  %103 = mul i64 %70, %102, !dbg !499
  %104 = getelementptr double, ptr %14, i64 %103, !dbg !500
  %105 = load double, ptr %104, align 8, !dbg !500, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %105, metadata !442, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !226, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !502
  %106 = getelementptr double, ptr %104, i64 %66, !dbg !504
  %107 = load double, ptr %106, align 8, !dbg !504, !tbaa !126
  %108 = fmul double %105, %107, !dbg !505
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %108), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !438, metadata !DIExpression()), !dbg !488
  %109 = add nuw i64 %86, 3, !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !438, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !226, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !497
  %110 = mul i64 %70, %109, !dbg !499
  %111 = getelementptr double, ptr %14, i64 %110, !dbg !500
  %112 = load double, ptr %111, align 8, !dbg !500, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %112, metadata !442, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !226, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !502
  %113 = getelementptr double, ptr %111, i64 %66, !dbg !504
  %114 = load double, ptr %113, align 8, !dbg !504, !tbaa !126
  %115 = fmul double %112, %114, !dbg !505
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %115), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !438, metadata !DIExpression()), !dbg !488
  %116 = add nuw i64 %86, 4, !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !435, metadata !DIExpression()), !dbg !458
  %117 = add i64 %88, 4, !dbg !489
  %118 = icmp eq i64 %117, %20, !dbg !489
  br i1 %118, label %119, label %85, !dbg !489, !llvm.loop !507

119:                                              ; preds = %85, %69
  %120 = phi double [ undef, %69 ], [ %handler_result3, %85 ]
  %121 = phi i64 [ 1, %69 ], [ %116, %85 ]
  %122 = phi double [ 0.000000e+00, %69 ], [ %handler_result3, %85 ]
  br i1 %21, label %136, label %123, !dbg !489

123:                                              ; preds = %123, %119
  %124 = phi i64 [ %133, %123 ], [ %121, %119 ]
  %125 = phi double [ %handler_result4, %123 ], [ %122, %119 ]
  %126 = phi i64 [ %134, %123 ], [ 0, %119 ]
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata double %125, metadata !438, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !226, metadata !DIExpression()), !dbg !497
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !497
  %127 = mul i64 %70, %124, !dbg !499
  %128 = getelementptr double, ptr %14, i64 %127, !dbg !500
  %129 = load double, ptr %128, align 8, !dbg !500, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %129, metadata !442, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !226, metadata !DIExpression()), !dbg !502
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !502
  %130 = getelementptr double, ptr %128, i64 %66, !dbg !504
  %131 = load double, ptr %130, align 8, !dbg !504, !tbaa !126
  %132 = fmul double %129, %131, !dbg !505
  %handler_result4 = call double @fAddHandlerDouble(double %125, double %132), !dbg !506
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !438, metadata !DIExpression()), !dbg !488
  %133 = add nuw i64 %124, 1, !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !435, metadata !DIExpression()), !dbg !458
  %134 = add i64 %126, 1, !dbg !489
  %135 = icmp eq i64 %134, %18, !dbg !489
  br i1 %135, label %136, label %123, !dbg !489, !llvm.loop !509

136:                                              ; preds = %123, %119
  %137 = phi double [ %120, %119 ], [ %handler_result4, %123 ], !dbg !510
  %138 = fmul double %137, %13, !dbg !511
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !246, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double %138, metadata !247, metadata !DIExpression()), !dbg !490
  %139 = getelementptr double, ptr %14, i64 %66, !dbg !492
  store double %138, ptr %139, align 8, !dbg !493, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !435, metadata !DIExpression()), !dbg !458
  br i1 %10, label %140, label %173, !dbg !494

140:                                              ; preds = %136
  %141 = load i64, ptr %12, align 8, !tbaa !251
  br i1 %23, label %163, label %142, !dbg !494

142:                                              ; preds = %142, %140
  %143 = phi i64 [ %160, %142 ], [ 1, %140 ]
  %144 = phi i64 [ %161, %142 ], [ 0, %140 ]
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !226, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !512
  %145 = mul i64 %141, %143, !dbg !514
  %146 = getelementptr double, ptr %14, i64 %145, !dbg !515
  %147 = load double, ptr %146, align 8, !dbg !515, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %147, metadata !446, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !226, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !517
  %148 = getelementptr double, ptr %146, i64 %66, !dbg !519
  %149 = load double, ptr %148, align 8, !dbg !519, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %149, metadata !450, metadata !DIExpression()), !dbg !516
  %150 = fmul double %147, %0, !dbg !520
  %151 = fmul double %137, %150, !dbg !521
  %handler_result5 = call double @fSubHandlerDouble(double %149, double %151), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !245, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !246, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !247, metadata !DIExpression()), !dbg !524
  store double %handler_result5, ptr %148, align 8, !dbg !522, !tbaa !126
  %152 = add nuw i64 %143, 1, !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !226, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !512
  %153 = mul i64 %141, %152, !dbg !514
  %154 = getelementptr double, ptr %14, i64 %153, !dbg !515
  %155 = load double, ptr %154, align 8, !dbg !515, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %155, metadata !446, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !226, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !517
  %156 = getelementptr double, ptr %154, i64 %66, !dbg !519
  %157 = load double, ptr %156, align 8, !dbg !519, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %157, metadata !450, metadata !DIExpression()), !dbg !516
  %158 = fmul double %155, %0, !dbg !520
  %159 = fmul double %137, %158, !dbg !521
  %handler_result6 = call double @fSubHandlerDouble(double %157, double %159), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !245, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !246, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !247, metadata !DIExpression()), !dbg !524
  store double %handler_result6, ptr %156, align 8, !dbg !522, !tbaa !126
  %160 = add nuw i64 %143, 2, !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !435, metadata !DIExpression()), !dbg !458
  %161 = add nuw i64 %144, 2, !dbg !494
  %162 = icmp eq i64 %161, %24, !dbg !494
  br i1 %162, label %163, label %142, !dbg !494, !llvm.loop !526

163:                                              ; preds = %142, %140
  %164 = phi i64 [ 1, %140 ], [ %160, %142 ]
  br i1 %25, label %173, label %165, !dbg !494

165:                                              ; preds = %163
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !226, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !512
  %166 = mul i64 %141, %164, !dbg !514
  %167 = getelementptr double, ptr %14, i64 %166, !dbg !515
  %168 = load double, ptr %167, align 8, !dbg !515, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %168, metadata !446, metadata !DIExpression()), !dbg !516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !226, metadata !DIExpression()), !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !227, metadata !DIExpression()), !dbg !517
  %169 = getelementptr double, ptr %167, i64 %66, !dbg !519
  %170 = load double, ptr %169, align 8, !dbg !519, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %170, metadata !450, metadata !DIExpression()), !dbg !516
  %171 = fmul double %168, %0, !dbg !520
  %172 = fmul double %137, %171, !dbg !521
  %handler_result7 = call double @fSubHandlerDouble(double %170, double %172), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !245, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !246, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !247, metadata !DIExpression()), !dbg !524
  store double %handler_result7, ptr %169, align 8, !dbg !522, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !435, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !458
  br label %173, !dbg !528

173:                                              ; preds = %165, %163, %136, %67
  %174 = add nuw i64 %66, 1, !dbg !528
  tail call void @llvm.dbg.value(metadata i64 %174, metadata !437, metadata !DIExpression()), !dbg !458
  %175 = icmp eq i64 %174, %6, !dbg !459
  br i1 %175, label %71, label %65, !dbg !460, !llvm.loop !529

176:                                              ; preds = %176, %83
  %177 = phi i64 [ 1, %83 ], [ %198, %176 ]
  %178 = phi i64 [ 0, %83 ], [ %199, %176 ]
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !226, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !531
  %179 = mul i64 %77, %177, !dbg !533
  %180 = getelementptr double, ptr %74, i64 %179, !dbg !534
  %181 = load double, ptr %180, align 8, !dbg !534, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %181, metadata !451, metadata !DIExpression()), !dbg !535
  %182 = fmul double %181, %78, !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !245, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata double %182, metadata !247, metadata !DIExpression()), !dbg !537
  store double %182, ptr %180, align 8, !dbg !539, !tbaa !126
  %183 = add nuw nsw i64 %177, 1, !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !226, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !531
  %184 = mul i64 %77, %183, !dbg !533
  %185 = getelementptr double, ptr %74, i64 %184, !dbg !534
  %186 = load double, ptr %185, align 8, !dbg !534, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %186, metadata !451, metadata !DIExpression()), !dbg !535
  %187 = fmul double %186, %78, !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !245, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata double %187, metadata !247, metadata !DIExpression()), !dbg !537
  store double %187, ptr %185, align 8, !dbg !539, !tbaa !126
  %188 = add nuw nsw i64 %177, 2, !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !226, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !531
  %189 = mul i64 %77, %188, !dbg !533
  %190 = getelementptr double, ptr %74, i64 %189, !dbg !534
  %191 = load double, ptr %190, align 8, !dbg !534, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %191, metadata !451, metadata !DIExpression()), !dbg !535
  %192 = fmul double %191, %78, !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !245, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata double %192, metadata !247, metadata !DIExpression()), !dbg !537
  store double %192, ptr %190, align 8, !dbg !539, !tbaa !126
  %193 = add nuw i64 %177, 3, !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !226, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !531
  %194 = mul i64 %77, %193, !dbg !533
  %195 = getelementptr double, ptr %74, i64 %194, !dbg !534
  %196 = load double, ptr %195, align 8, !dbg !534, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %196, metadata !451, metadata !DIExpression()), !dbg !535
  %197 = fmul double %196, %78, !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !245, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata double %197, metadata !247, metadata !DIExpression()), !dbg !537
  store double %197, ptr %195, align 8, !dbg !539, !tbaa !126
  %198 = add nuw i64 %177, 4, !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !435, metadata !DIExpression()), !dbg !458
  %199 = add nuw i64 %178, 4, !dbg !496
  %200 = icmp eq i64 %199, %84, !dbg !496
  br i1 %200, label %201, label %176, !dbg !496, !llvm.loop !541

201:                                              ; preds = %176, %75
  %202 = phi i64 [ 1, %75 ], [ %198, %176 ]
  %203 = icmp eq i64 %81, 0, !dbg !496
  br i1 %203, label %214, label %204, !dbg !496

204:                                              ; preds = %204, %201
  %205 = phi i64 [ %211, %204 ], [ %202, %201 ]
  %206 = phi i64 [ %212, %204 ], [ 0, %201 ]
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !435, metadata !DIExpression()), !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !219, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !226, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !227, metadata !DIExpression()), !dbg !531
  %207 = mul i64 %77, %205, !dbg !533
  %208 = getelementptr double, ptr %74, i64 %207, !dbg !534
  %209 = load double, ptr %208, align 8, !dbg !534, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %209, metadata !451, metadata !DIExpression()), !dbg !535
  %210 = fmul double %209, %78, !dbg !536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !245, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !537
  tail call void @llvm.dbg.value(metadata double %210, metadata !247, metadata !DIExpression()), !dbg !537
  store double %210, ptr %208, align 8, !dbg !539, !tbaa !126
  %211 = add nuw i64 %205, 1, !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !435, metadata !DIExpression()), !dbg !458
  %212 = add i64 %206, 1, !dbg !496
  %213 = icmp eq i64 %212, %81, !dbg !496
  br i1 %213, label %214, label %204, !dbg !496, !llvm.loop !543

214:                                              ; preds = %204, %201, %71
  %handler_result8 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !544
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !247, metadata !DIExpression()), !dbg !546
  store double %handler_result8, ptr %74, align 8, !dbg !544, !tbaa !126
  br label %226, !dbg !547

215:                                              ; preds = %48, %40
  %216 = phi i64 [ 1, %40 ], [ %62, %48 ]
  %217 = icmp eq i64 %44, 0, !dbg !478
  br i1 %217, label %226, label %218, !dbg !478

218:                                              ; preds = %218, %215
  %219 = phi i64 [ %223, %218 ], [ %216, %215 ]
  %220 = phi i64 [ %224, %218 ], [ 0, %215 ]
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !431, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !244, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !245, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !247, metadata !DIExpression()), !dbg !479
  %221 = mul i64 %41, %219, !dbg !482
  %222 = getelementptr double, ptr %28, i64 %221, !dbg !483
  store double 0.000000e+00, ptr %222, align 8, !dbg !484, !tbaa !126
  %223 = add nuw i64 %219, 1, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !431, metadata !DIExpression()), !dbg !466
  %224 = add i64 %220, 1, !dbg !478
  %225 = icmp eq i64 %224, %44, !dbg !478
  br i1 %225, label %226, label %218, !dbg !478, !llvm.loop !548

226:                                              ; preds = %218, %215, %214, %37
  ret i32 0, !dbg !549
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "householder.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "66e3170cad8cf067a0bf260fa165fc7e")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!7 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!8 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!9 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!10 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!11 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!12 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!13 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!14 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!15 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!16 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!17 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!18 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!19 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!20 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!21 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!22 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!23 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!24 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!25 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!26 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!27 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!28 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!29 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!30 = !DIEnumerator(name: "GSL_ESING", value: 21)
!31 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!32 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!33 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!34 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!35 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!36 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!37 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!38 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!39 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!40 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!41 = !DIEnumerator(name: "GSL_EOF", value: 32)
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!49 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!50 = distinct !DISubprogram(name: "gsl_linalg_householder_transform", scope: !1, file: !1, line: 50, type: !51, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !54}
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !56, line: 50, baseType: !57)
!56 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 42, size: 320, elements: !58)
!58 = !{!59, !63, !64, !66, !74}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !57, file: !56, line: 44, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 18, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !57, file: !56, line: 45, baseType: !60, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !57, file: !56, line: 46, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !57, file: !56, line: 47, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !69, line: 44, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !69, line: 38, size: 128, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !69, line: 40, baseType: !60, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !70, file: !69, line: 41, baseType: !65, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !57, file: !56, line: 48, baseType: !5, size: 32, offset: 256)
!75 = !{!76, !77, !79, !82, !83, !84, !90, !91}
!76 = !DILocalVariable(name: "v", arg: 1, scope: !50, file: !1, line: 50, type: !54)
!77 = !DILocalVariable(name: "n", scope: !50, file: !1, line: 55, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!79 = !DILocalVariable(name: "alpha", scope: !80, file: !1, line: 63, type: !53)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 62, column: 5)
!81 = distinct !DILexicalBlock(scope: !50, file: !1, line: 57, column: 7)
!82 = !DILocalVariable(name: "beta", scope: !80, file: !1, line: 63, type: !53)
!83 = !DILocalVariable(name: "tau", scope: !80, file: !1, line: 63, type: !53)
!84 = !DILocalVariable(name: "x", scope: !80, file: !1, line: 65, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !56, line: 57, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !56, line: 55, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 52, size: 320, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !87, file: !56, line: 54, baseType: !55, size: 320)
!90 = !DILocalVariable(name: "xnorm", scope: !80, file: !1, line: 67, type: !53)
!91 = !DILocalVariable(name: "s", scope: !92, file: !1, line: 79, type: !53)
!92 = distinct !DILexicalBlock(scope: !80, file: !1, line: 78, column: 7)
!93 = distinct !DIAssignID()
!94 = !DILocation(line: 0, scope: !80)
!95 = !DILocation(line: 0, scope: !50)
!96 = !DILocation(line: 55, column: 23, scope: !50)
!97 = !{!98, !99, i64 0}
!98 = !{!"", !99, i64 0, !99, i64 8, !102, i64 16, !102, i64 24, !103, i64 32}
!99 = !{!"long", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!"any pointer", !100, i64 0}
!103 = !{!"int", !100, i64 0}
!104 = !DILocation(line: 57, column: 9, scope: !81)
!105 = !DILocation(line: 57, column: 7, scope: !50)
!106 = !DILocation(line: 65, column: 7, scope: !80)
!107 = !DILocation(line: 65, column: 57, scope: !80)
!108 = !DILocation(line: 65, column: 27, scope: !80)
!109 = !DILocation(line: 67, column: 22, scope: !80)
!110 = !DILocation(line: 69, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !80, file: !1, line: 69, column: 11)
!112 = !DILocation(line: 69, column: 11, scope: !80)
!113 = !DILocalVariable(name: "v", arg: 1, scope: !114, file: !56, line: 175, type: !117)
!114 = distinct !DISubprogram(name: "gsl_vector_get", scope: !56, file: !56, line: 175, type: !115, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!115 = !DISubroutineType(types: !116)
!116 = !{!53, !117, !78}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!119 = !{!113, !120}
!120 = !DILocalVariable(name: "i", arg: 2, scope: !114, file: !56, line: 175, type: !78)
!121 = !DILocation(line: 0, scope: !114, inlinedAt: !122)
!122 = distinct !DILocation(line: 74, column: 15, scope: !80)
!123 = !DILocation(line: 183, column: 13, scope: !114, inlinedAt: !122)
!124 = !{!98, !102, i64 16}
!125 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !122)
!126 = !{!127, !127, i64 0}
!127 = !{!"double", !100, i64 0}
!128 = !DILocation(line: 75, column: 23, scope: !80)
!129 = !DILocation(line: 75, column: 17, scope: !80)
!130 = !DILocation(line: 75, column: 14, scope: !80)
!131 = !DILocation(line: 75, column: 47, scope: !80)
!132 = !DILocation(line: 75, column: 45, scope: !80)
!133 = !DILocation(line: 76, column: 28, scope: !80)
!134 = !DILocation(line: 81, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !92, file: !1, line: 81, column: 13)
!136 = !DILocation(line: 0, scope: !92)
!137 = !DILocation(line: 81, column: 21, scope: !135)
!138 = !DILocation(line: 81, column: 13, scope: !92)
!139 = !DILocation(line: 83, column: 33, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 82, column: 11)
!141 = !DILocalVariable(name: "v", arg: 1, scope: !142, file: !56, line: 188, type: !54)
!142 = distinct !DISubprogram(name: "gsl_vector_set", scope: !56, file: !56, line: 188, type: !143, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !54, !78, !53}
!145 = !{!141, !146, !147}
!146 = !DILocalVariable(name: "i", arg: 2, scope: !142, file: !56, line: 188, type: !78)
!147 = !DILocalVariable(name: "x", arg: 3, scope: !142, file: !56, line: 188, type: !53)
!148 = !DILocation(line: 0, scope: !142, inlinedAt: !149)
!149 = distinct !DILocation(line: 84, column: 13, scope: !140)
!150 = !DILocation(line: 85, column: 11, scope: !140)
!151 = !DILocation(line: 88, column: 45, scope: !152)
!152 = distinct !DILexicalBlock(scope: !135, file: !1, line: 87, column: 11)
!153 = !DILocation(line: 88, column: 13, scope: !152)
!154 = !DILocation(line: 0, scope: !142, inlinedAt: !155)
!155 = distinct !DILocation(line: 90, column: 13, scope: !152)
!156 = !DILocation(line: 0, scope: !135)
!157 = !DILocation(line: 196, column: 6, scope: !142, inlinedAt: !156)
!158 = !DILocation(line: 196, column: 26, scope: !142, inlinedAt: !156)
!159 = !DILocation(line: 95, column: 5, scope: !81)
!160 = !DILocation(line: 0, scope: !81)
!161 = !DILocation(line: 96, column: 1, scope: !50)
!162 = !DISubprogram(name: "gsl_vector_subvector", scope: !56, file: !56, line: 103, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!86, !54, !60, !60}
!165 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !166, file: !166, line: 91, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!167 = !DISubroutineType(types: !168)
!168 = !{!53, !117}
!169 = !DISubprogram(name: "hypot", scope: !170, file: !170, line: 147, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!171 = !DISubroutineType(types: !172)
!172 = !{!53, !53, !53}
!173 = !DISubprogram(name: "gsl_blas_dscal", scope: !166, file: !166, line: 173, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !53, !54}
!176 = distinct !DISubprogram(name: "gsl_linalg_householder_hm", scope: !1, file: !1, line: 99, type: !177, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!177 = !DISubroutineType(types: !178)
!178 = !{!5, !53, !117, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !181, line: 50, baseType: !182)
!181 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 42, size: 384, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !182, file: !181, line: 44, baseType: !60, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !182, file: !181, line: 45, baseType: !60, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !182, file: !181, line: 46, baseType: !60, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !181, line: 47, baseType: !65, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !182, file: !181, line: 48, baseType: !67, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !182, file: !181, line: 49, baseType: !5, size: 32, offset: 320)
!190 = !{!191, !192, !193, !194, !196, !197, !201, !203, !207}
!191 = !DILocalVariable(name: "tau", arg: 1, scope: !176, file: !1, line: 99, type: !53)
!192 = !DILocalVariable(name: "v", arg: 2, scope: !176, file: !1, line: 99, type: !117)
!193 = !DILocalVariable(name: "A", arg: 3, scope: !176, file: !1, line: 99, type: !179)
!194 = !DILocalVariable(name: "i", scope: !195, file: !1, line: 131, type: !60)
!195 = distinct !DILexicalBlock(scope: !176, file: !1, line: 130, column: 3)
!196 = !DILocalVariable(name: "j", scope: !195, file: !1, line: 131, type: !60)
!197 = !DILocalVariable(name: "wj", scope: !198, file: !1, line: 137, type: !53)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 134, column: 7)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 133, column: 5)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 133, column: 5)
!201 = !DILocalVariable(name: "A0j", scope: !202, file: !1, line: 148, type: !53)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 147, column: 9)
!203 = !DILocalVariable(name: "Aij", scope: !204, file: !1, line: 156, type: !53)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 155, column: 11)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 154, column: 9)
!206 = distinct !DILexicalBlock(scope: !198, file: !1, line: 154, column: 9)
!207 = !DILocalVariable(name: "vi", scope: !204, file: !1, line: 157, type: !53)
!208 = !DILocation(line: 0, scope: !176)
!209 = !DILocation(line: 103, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !176, file: !1, line: 103, column: 7)
!211 = !DILocation(line: 103, column: 7, scope: !176)
!212 = !{!213, !99, i64 8}
!213 = !{!"", !99, i64 0, !99, i64 8, !99, i64 16, !102, i64 24, !102, i64 32, !103, i64 40}
!214 = !DILocation(line: 0, scope: !195)
!215 = !DILocation(line: 133, column: 19, scope: !199)
!216 = !DILocation(line: 133, column: 5, scope: !200)
!217 = !{!213, !102, i64 24}
!218 = !{!213, !99, i64 0}
!219 = !DILocalVariable(name: "m", arg: 1, scope: !220, file: !181, line: 270, type: !223)
!220 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !181, file: !181, line: 270, type: !221, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!221 = !DISubroutineType(types: !222)
!222 = !{!53, !223, !78, !78}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!225 = !{!219, !226, !227}
!226 = !DILocalVariable(name: "i", arg: 2, scope: !220, file: !181, line: 270, type: !78)
!227 = !DILocalVariable(name: "j", arg: 3, scope: !220, file: !181, line: 270, type: !78)
!228 = !DILocation(line: 0, scope: !220, inlinedAt: !229)
!229 = distinct !DILocation(line: 137, column: 21, scope: !198)
!230 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !229)
!231 = !DILocation(line: 0, scope: !198)
!232 = !DILocation(line: 139, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !198, file: !1, line: 139, column: 9)
!234 = !DILocation(line: 0, scope: !220, inlinedAt: !235)
!235 = distinct !DILocation(line: 148, column: 24, scope: !202)
!236 = !DILocation(line: 0, scope: !202)
!237 = !DILocation(line: 149, column: 46, scope: !202)
!238 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !248)
!239 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !181, file: !181, line: 290, type: !240, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !179, !78, !78, !242}
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!243 = !{!244, !245, !246, !247}
!244 = !DILocalVariable(name: "m", arg: 1, scope: !239, file: !181, line: 290, type: !179)
!245 = !DILocalVariable(name: "i", arg: 2, scope: !239, file: !181, line: 290, type: !78)
!246 = !DILocalVariable(name: "j", arg: 3, scope: !239, file: !181, line: 290, type: !78)
!247 = !DILocalVariable(name: "x", arg: 4, scope: !239, file: !181, line: 290, type: !242)
!248 = distinct !DILocation(line: 149, column: 11, scope: !202)
!249 = !DILocation(line: 0, scope: !239, inlinedAt: !248)
!250 = !DILocation(line: 154, column: 9, scope: !206)
!251 = !{!213, !99, i64 16}
!252 = !{!98, !99, i64 8}
!253 = !DILocation(line: 0, scope: !220, inlinedAt: !254)
!254 = distinct !DILocation(line: 141, column: 19, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 140, column: 11)
!256 = distinct !DILexicalBlock(scope: !233, file: !1, line: 139, column: 9)
!257 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !254)
!258 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !254)
!259 = !DILocation(line: 0, scope: !114, inlinedAt: !260)
!260 = distinct !DILocation(line: 141, column: 43, scope: !255)
!261 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !260)
!262 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !260)
!263 = !DILocation(line: 141, column: 41, scope: !255)
!264 = !DILocation(line: 139, column: 36, scope: !256)
!265 = distinct !{!265, !232, !266, !267}
!266 = !DILocation(line: 142, column: 11, scope: !233)
!267 = !{!"llvm.loop.mustprogress"}
!268 = !DILocation(line: 141, column: 16, scope: !255)
!269 = !DILocation(line: 0, scope: !220, inlinedAt: !270)
!270 = distinct !DILocation(line: 156, column: 26, scope: !204)
!271 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !270)
!272 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !270)
!273 = !DILocation(line: 0, scope: !204)
!274 = !DILocation(line: 0, scope: !114, inlinedAt: !275)
!275 = distinct !DILocation(line: 157, column: 25, scope: !204)
!276 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !275)
!277 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !275)
!278 = !DILocation(line: 158, column: 48, scope: !204)
!279 = !DILocation(line: 158, column: 53, scope: !204)
!280 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !281)
!281 = distinct !DILocation(line: 158, column: 13, scope: !204)
!282 = !DILocation(line: 0, scope: !239, inlinedAt: !281)
!283 = !DILocation(line: 154, column: 36, scope: !205)
!284 = distinct !{!284, !250, !285, !267}
!285 = !DILocation(line: 159, column: 11, scope: !206)
!286 = !DILocation(line: 133, column: 32, scope: !199)
!287 = distinct !{!287, !216, !288, !267}
!288 = !DILocation(line: 160, column: 7, scope: !200)
!289 = !DILocation(line: 165, column: 1, scope: !176)
!290 = distinct !DISubprogram(name: "gsl_linalg_householder_mh", scope: !1, file: !1, line: 168, type: !177, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!291 = !{!292, !293, !294, !295, !297, !298, !302, !304, !308}
!292 = !DILocalVariable(name: "tau", arg: 1, scope: !290, file: !1, line: 168, type: !53)
!293 = !DILocalVariable(name: "v", arg: 2, scope: !290, file: !1, line: 168, type: !117)
!294 = !DILocalVariable(name: "A", arg: 3, scope: !290, file: !1, line: 168, type: !179)
!295 = !DILocalVariable(name: "i", scope: !296, file: !1, line: 201, type: !60)
!296 = distinct !DILexicalBlock(scope: !290, file: !1, line: 200, column: 3)
!297 = !DILocalVariable(name: "j", scope: !296, file: !1, line: 201, type: !60)
!298 = !DILocalVariable(name: "wi", scope: !299, file: !1, line: 205, type: !53)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 204, column: 7)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 203, column: 5)
!301 = distinct !DILexicalBlock(scope: !296, file: !1, line: 203, column: 5)
!302 = !DILocalVariable(name: "Ai0", scope: !303, file: !1, line: 215, type: !53)
!303 = distinct !DILexicalBlock(scope: !299, file: !1, line: 214, column: 9)
!304 = !DILocalVariable(name: "vj", scope: !305, file: !1, line: 223, type: !53)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 222, column: 11)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 221, column: 9)
!307 = distinct !DILexicalBlock(scope: !299, file: !1, line: 221, column: 9)
!308 = !DILocalVariable(name: "Aij", scope: !305, file: !1, line: 224, type: !53)
!309 = !DILocation(line: 0, scope: !290)
!310 = !DILocation(line: 173, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !290, file: !1, line: 173, column: 7)
!312 = !DILocation(line: 173, column: 7, scope: !290)
!313 = !DILocation(line: 0, scope: !296)
!314 = !DILocation(line: 203, column: 19, scope: !300)
!315 = !DILocation(line: 203, column: 5, scope: !301)
!316 = !DILocation(line: 0, scope: !220, inlinedAt: !317)
!317 = distinct !DILocation(line: 205, column: 21, scope: !299)
!318 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !317)
!319 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !317)
!320 = !DILocation(line: 0, scope: !299)
!321 = !DILocation(line: 207, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !299, file: !1, line: 207, column: 9)
!323 = !DILocation(line: 0, scope: !220, inlinedAt: !324)
!324 = distinct !DILocation(line: 215, column: 24, scope: !303)
!325 = !DILocation(line: 0, scope: !303)
!326 = !DILocation(line: 216, column: 46, scope: !303)
!327 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !328)
!328 = distinct !DILocation(line: 216, column: 11, scope: !303)
!329 = !DILocation(line: 0, scope: !239, inlinedAt: !328)
!330 = !DILocation(line: 221, column: 9, scope: !307)
!331 = !DILocation(line: 0, scope: !220, inlinedAt: !332)
!332 = distinct !DILocation(line: 209, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 208, column: 11)
!334 = distinct !DILexicalBlock(scope: !322, file: !1, line: 207, column: 9)
!335 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !332)
!336 = !DILocation(line: 0, scope: !114, inlinedAt: !337)
!337 = distinct !DILocation(line: 209, column: 43, scope: !333)
!338 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !337)
!339 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !337)
!340 = !DILocation(line: 209, column: 41, scope: !333)
!341 = !DILocation(line: 207, column: 36, scope: !334)
!342 = distinct !{!342, !321, !343, !267}
!343 = !DILocation(line: 210, column: 11, scope: !322)
!344 = distinct !{!344, !345}
!345 = !{!"llvm.loop.unroll.disable"}
!346 = !DILocation(line: 209, column: 16, scope: !333)
!347 = !DILocation(line: 0, scope: !114, inlinedAt: !348)
!348 = distinct !DILocation(line: 223, column: 25, scope: !305)
!349 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !348)
!350 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !348)
!351 = !DILocation(line: 0, scope: !305)
!352 = !DILocation(line: 0, scope: !220, inlinedAt: !353)
!353 = distinct !DILocation(line: 224, column: 26, scope: !305)
!354 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !353)
!355 = !DILocation(line: 225, column: 53, scope: !305)
!356 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !357)
!357 = distinct !DILocation(line: 225, column: 13, scope: !305)
!358 = !DILocation(line: 0, scope: !239, inlinedAt: !357)
!359 = !DILocation(line: 221, column: 36, scope: !306)
!360 = distinct !{!360, !330, !361, !267}
!361 = !DILocation(line: 226, column: 11, scope: !307)
!362 = !DILocation(line: 203, column: 32, scope: !300)
!363 = distinct !{!363, !315, !364, !267}
!364 = !DILocation(line: 227, column: 7, scope: !301)
!365 = !DILocation(line: 232, column: 1, scope: !290)
!366 = distinct !DISubprogram(name: "gsl_linalg_householder_hv", scope: !1, file: !1, line: 235, type: !367, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!5, !53, !117, !54}
!369 = !{!370, !371, !372, !373, !374, !376, !377, !378, !385}
!370 = !DILocalVariable(name: "tau", arg: 1, scope: !366, file: !1, line: 235, type: !53)
!371 = !DILocalVariable(name: "v", arg: 2, scope: !366, file: !1, line: 235, type: !117)
!372 = !DILocalVariable(name: "w", arg: 3, scope: !366, file: !1, line: 235, type: !54)
!373 = !DILocalVariable(name: "N", scope: !366, file: !1, line: 238, type: !78)
!374 = !DILocalVariable(name: "w0", scope: !375, file: !1, line: 246, type: !53)
!375 = distinct !DILexicalBlock(scope: !366, file: !1, line: 243, column: 3)
!376 = !DILocalVariable(name: "d1", scope: !375, file: !1, line: 247, type: !53)
!377 = !DILocalVariable(name: "d", scope: !375, file: !1, line: 247, type: !53)
!378 = !DILocalVariable(name: "v1", scope: !375, file: !1, line: 249, type: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !56, line: 64, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !56, line: 62, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 59, size: 320, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !382, file: !56, line: 61, baseType: !55, size: 320)
!385 = !DILocalVariable(name: "w1", scope: !375, file: !1, line: 250, type: !85)
!386 = distinct !DIAssignID()
!387 = !DILocation(line: 0, scope: !375)
!388 = distinct !DIAssignID()
!389 = distinct !DIAssignID()
!390 = !DILocation(line: 0, scope: !366)
!391 = !DILocation(line: 240, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !366, file: !1, line: 240, column: 7)
!393 = !DILocation(line: 240, column: 7, scope: !366)
!394 = !DILocation(line: 238, column: 23, scope: !366)
!395 = !DILocation(line: 0, scope: !114, inlinedAt: !396)
!396 = distinct !DILocation(line: 246, column: 17, scope: !375)
!397 = !DILocation(line: 183, column: 13, scope: !114, inlinedAt: !396)
!398 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !396)
!399 = !DILocation(line: 247, column: 5, scope: !375)
!400 = !DILocation(line: 249, column: 5, scope: !375)
!401 = !DILocation(line: 249, column: 66, scope: !375)
!402 = !DILocation(line: 249, column: 32, scope: !375)
!403 = !DILocation(line: 250, column: 5, scope: !375)
!404 = !DILocation(line: 250, column: 26, scope: !375)
!405 = !DILocation(line: 253, column: 5, scope: !375)
!406 = !DILocation(line: 256, column: 14, scope: !375)
!407 = !DILocation(line: 260, column: 36, scope: !375)
!408 = !DILocation(line: 196, column: 6, scope: !142, inlinedAt: !409)
!409 = distinct !DILocation(line: 260, column: 5, scope: !375)
!410 = !DILocation(line: 0, scope: !142, inlinedAt: !409)
!411 = !DILocation(line: 196, column: 26, scope: !142, inlinedAt: !409)
!412 = !DILocation(line: 261, column: 21, scope: !375)
!413 = !DILocation(line: 261, column: 26, scope: !375)
!414 = !DILocation(line: 261, column: 5, scope: !375)
!415 = !DILocation(line: 262, column: 3, scope: !366)
!416 = !DILocation(line: 264, column: 3, scope: !366)
!417 = !DILocation(line: 265, column: 1, scope: !366)
!418 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !56, file: !56, line: 114, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!381, !117, !60, !60}
!421 = !DISubprogram(name: "gsl_blas_ddot", scope: !166, file: !166, line: 66, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!5, !117, !117, !65}
!424 = !DISubprogram(name: "gsl_blas_daxpy", scope: !166, file: !166, line: 121, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!425 = distinct !DISubprogram(name: "gsl_linalg_householder_hm1", scope: !1, file: !1, line: 269, type: !426, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!5, !53, !179}
!428 = !{!429, !430, !431, !434, !435, !437, !438, !442, !446, !450, !451}
!429 = !DILocalVariable(name: "tau", arg: 1, scope: !425, file: !1, line: 269, type: !53)
!430 = !DILocalVariable(name: "A", arg: 2, scope: !425, file: !1, line: 269, type: !179)
!431 = !DILocalVariable(name: "i", scope: !432, file: !1, line: 277, type: !60)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 276, column: 5)
!433 = distinct !DILexicalBlock(scope: !425, file: !1, line: 275, column: 7)
!434 = !DILocalVariable(name: "j", scope: !432, file: !1, line: 277, type: !60)
!435 = !DILocalVariable(name: "i", scope: !436, file: !1, line: 322, type: !60)
!436 = distinct !DILexicalBlock(scope: !425, file: !1, line: 321, column: 3)
!437 = !DILocalVariable(name: "j", scope: !436, file: !1, line: 322, type: !60)
!438 = !DILocalVariable(name: "wj", scope: !439, file: !1, line: 326, type: !53)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 325, column: 7)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 324, column: 5)
!441 = distinct !DILexicalBlock(scope: !436, file: !1, line: 324, column: 5)
!442 = !DILocalVariable(name: "vi", scope: !443, file: !1, line: 330, type: !53)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 329, column: 11)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 328, column: 9)
!445 = distinct !DILexicalBlock(scope: !439, file: !1, line: 328, column: 9)
!446 = !DILocalVariable(name: "vi", scope: !447, file: !1, line: 340, type: !53)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 339, column: 11)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 338, column: 9)
!449 = distinct !DILexicalBlock(scope: !439, file: !1, line: 338, column: 9)
!450 = !DILocalVariable(name: "Aij", scope: !447, file: !1, line: 341, type: !53)
!451 = !DILocalVariable(name: "vi", scope: !452, file: !1, line: 348, type: !53)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 347, column: 7)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 346, column: 5)
!454 = distinct !DILexicalBlock(scope: !436, file: !1, line: 346, column: 5)
!455 = !DILocation(line: 0, scope: !425)
!456 = !DILocation(line: 275, column: 11, scope: !433)
!457 = !DILocation(line: 275, column: 7, scope: !425)
!458 = !DILocation(line: 0, scope: !436)
!459 = !DILocation(line: 324, column: 19, scope: !440)
!460 = !DILocation(line: 324, column: 5, scope: !441)
!461 = !DILocation(line: 0, scope: !239, inlinedAt: !462)
!462 = distinct !DILocation(line: 279, column: 7, scope: !432)
!463 = !DILocation(line: 305, column: 6, scope: !239, inlinedAt: !462)
!464 = !DILocation(line: 305, column: 18, scope: !239, inlinedAt: !462)
!465 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !462)
!466 = !DILocation(line: 0, scope: !432)
!467 = !DILocation(line: 281, column: 21, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 281, column: 7)
!469 = distinct !DILexicalBlock(scope: !432, file: !1, line: 281, column: 7)
!470 = !DILocation(line: 281, column: 7, scope: !469)
!471 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !472)
!472 = distinct !DILocation(line: 283, column: 11, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !1, line: 282, column: 9)
!474 = !DILocation(line: 0, scope: !239, inlinedAt: !472)
!475 = !DILocation(line: 286, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 286, column: 7)
!477 = distinct !DILexicalBlock(scope: !432, file: !1, line: 286, column: 7)
!478 = !DILocation(line: 286, column: 7, scope: !477)
!479 = !DILocation(line: 0, scope: !239, inlinedAt: !480)
!480 = distinct !DILocation(line: 288, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 287, column: 9)
!482 = !DILocation(line: 305, column: 13, scope: !239, inlinedAt: !480)
!483 = !DILocation(line: 305, column: 3, scope: !239, inlinedAt: !480)
!484 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !480)
!485 = !DILocation(line: 286, column: 34, scope: !476)
!486 = distinct !{!486, !478, !487, !267}
!487 = !DILocation(line: 289, column: 9, scope: !477)
!488 = !DILocation(line: 0, scope: !439)
!489 = !DILocation(line: 328, column: 9, scope: !445)
!490 = !DILocation(line: 0, scope: !239, inlinedAt: !491)
!491 = distinct !DILocation(line: 336, column: 9, scope: !439)
!492 = !DILocation(line: 305, column: 3, scope: !239, inlinedAt: !491)
!493 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !491)
!494 = !DILocation(line: 338, column: 9, scope: !449)
!495 = !DILocation(line: 346, column: 19, scope: !453)
!496 = !DILocation(line: 346, column: 5, scope: !454)
!497 = !DILocation(line: 0, scope: !220, inlinedAt: !498)
!498 = distinct !DILocation(line: 330, column: 25, scope: !443)
!499 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !498)
!500 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !498)
!501 = !DILocation(line: 0, scope: !443)
!502 = !DILocation(line: 0, scope: !220, inlinedAt: !503)
!503 = distinct !DILocation(line: 331, column: 19, scope: !443)
!504 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !503)
!505 = !DILocation(line: 331, column: 41, scope: !443)
!506 = !DILocation(line: 328, column: 36, scope: !444)
!507 = distinct !{!507, !489, !508, !267}
!508 = !DILocation(line: 332, column: 11, scope: !445)
!509 = distinct !{!509, !345}
!510 = !DILocation(line: 331, column: 16, scope: !443)
!511 = !DILocation(line: 336, column: 40, scope: !439)
!512 = !DILocation(line: 0, scope: !220, inlinedAt: !513)
!513 = distinct !DILocation(line: 340, column: 25, scope: !447)
!514 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !513)
!515 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !513)
!516 = !DILocation(line: 0, scope: !447)
!517 = !DILocation(line: 0, scope: !220, inlinedAt: !518)
!518 = distinct !DILocation(line: 341, column: 26, scope: !447)
!519 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !518)
!520 = !DILocation(line: 342, column: 48, scope: !447)
!521 = !DILocation(line: 342, column: 53, scope: !447)
!522 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !523)
!523 = distinct !DILocation(line: 342, column: 13, scope: !447)
!524 = !DILocation(line: 0, scope: !239, inlinedAt: !523)
!525 = !DILocation(line: 338, column: 36, scope: !448)
!526 = distinct !{!526, !494, !527, !267}
!527 = !DILocation(line: 343, column: 11, scope: !449)
!528 = !DILocation(line: 324, column: 32, scope: !440)
!529 = distinct !{!529, !460, !530, !267}
!530 = !DILocation(line: 344, column: 7, scope: !441)
!531 = !DILocation(line: 0, scope: !220, inlinedAt: !532)
!532 = distinct !DILocation(line: 348, column: 21, scope: !452)
!533 = !DILocation(line: 285, column: 20, scope: !220, inlinedAt: !532)
!534 = !DILocation(line: 285, column: 10, scope: !220, inlinedAt: !532)
!535 = !DILocation(line: 0, scope: !452)
!536 = !DILocation(line: 349, column: 38, scope: !452)
!537 = !DILocation(line: 0, scope: !239, inlinedAt: !538)
!538 = distinct !DILocation(line: 349, column: 9, scope: !452)
!539 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !538)
!540 = !DILocation(line: 346, column: 32, scope: !453)
!541 = distinct !{!541, !496, !542, !267}
!542 = !DILocation(line: 350, column: 7, scope: !454)
!543 = distinct !{!543, !345}
!544 = !DILocation(line: 305, column: 27, scope: !239, inlinedAt: !545)
!545 = distinct !DILocation(line: 352, column: 5, scope: !436)
!546 = !DILocation(line: 0, scope: !239, inlinedAt: !545)
!547 = !DILocation(line: 356, column: 3, scope: !425)
!548 = distinct !{!548, !345}
!549 = !DILocation(line: 357, column: 1, scope: !425)
