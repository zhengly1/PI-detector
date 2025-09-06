; ModuleID = 'householder.c'
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
  br i1 %4, label %32, label %5, !dbg !105

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8, !dbg !106
  %6 = add i64 %3, -1, !dbg !107
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %2, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %6) #8, !dbg !108
  %7 = call double @gsl_blas_dnrm2(ptr noundef nonnull %2) #8, !dbg !109
  tail call void @llvm.dbg.value(metadata double %7, metadata !90, metadata !DIExpression()), !dbg !94
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !110
  br i1 %8, label %30, label %9, !dbg !112

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
  %16 = call double @hypot(double noundef %12, double noundef %7) #8, !dbg !131
  %17 = fmul double %16, %15, !dbg !132
  tail call void @llvm.dbg.value(metadata double %17, metadata !82, metadata !DIExpression()), !dbg !94
  %18 = fsub double %17, %12, !dbg !133
  %19 = fdiv double %18, %17, !dbg !134
  tail call void @llvm.dbg.value(metadata double %19, metadata !83, metadata !DIExpression()), !dbg !94
  %20 = fsub double %12, %17, !dbg !135
  tail call void @llvm.dbg.value(metadata double %20, metadata !91, metadata !DIExpression()), !dbg !136
  %21 = call double @llvm.fabs.f64(double %20), !dbg !137
  %22 = fcmp ogt double %21, 0x10000000000000, !dbg !139
  br i1 %22, label %23, label %25, !dbg !140

23:                                               ; preds = %9
  %24 = fdiv double 1.000000e+00, %20, !dbg !141
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !150
  tail call void @llvm.dbg.value(metadata double %17, metadata !149, metadata !DIExpression()), !dbg !150
  br label %27, !dbg !152

25:                                               ; preds = %9
  %26 = fdiv double 0x3CB0000000000000, %20, !dbg !153
  call void @gsl_blas_dscal(double noundef %26, ptr noundef nonnull %2) #8, !dbg !155
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !156
  tail call void @llvm.dbg.value(metadata double %17, metadata !149, metadata !DIExpression()), !dbg !156
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi double [ %24, %23 ], [ 0x4330000000000000, %25 ]
  call void @gsl_blas_dscal(double noundef %28, ptr noundef nonnull %2) #8, !dbg !158
  %29 = load ptr, ptr %10, align 8, !dbg !159, !tbaa !124
  store double %17, ptr %29, align 8, !dbg !160, !tbaa !126
  br label %30, !dbg !161

30:                                               ; preds = %27, %5
  %31 = phi double [ 0.000000e+00, %5 ], [ %19, %27 ], !dbg !94
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8, !dbg !161
  br label %32

32:                                               ; preds = %1, %30
  %33 = phi double [ %31, %30 ], [ 0.000000e+00, %1 ], !dbg !162
  ret double %33, !dbg !163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !164 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !167 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !171 double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !175 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_hm(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 !dbg !178 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !193, metadata !DIExpression()), !dbg !210
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !194, metadata !DIExpression()), !dbg !210
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !195, metadata !DIExpression()), !dbg !210
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !211
  br i1 %4, label %123, label %5, !dbg !213

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !214
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !216
  %8 = icmp eq i64 %7, 0, !dbg !217
  br i1 %8, label %123, label %9, !dbg !218

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %2, align 8, !tbaa !220
  %14 = icmp ugt i64 %13, 1
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %17 = add i64 %13, -1, !dbg !218
  %18 = add i64 %13, -2, !dbg !218
  %19 = and i64 %17, 1
  %20 = icmp eq i64 %18, 0
  %21 = and i64 %17, -2
  %22 = icmp eq i64 %19, 0
  %23 = and i64 %17, 1
  %24 = icmp eq i64 %18, 0
  %25 = and i64 %17, -2
  %26 = icmp eq i64 %23, 0
  br label %27, !dbg !218

27:                                               ; preds = %9, %120
  %28 = phi i64 [ 0, %9 ], [ %121, %120 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !198, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata i64 0, metadata !228, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !230
  %29 = getelementptr double, ptr %11, i64 %28, !dbg !232
  %30 = load double, ptr %29, align 8, !dbg !232, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %30, metadata !199, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %30, metadata !199, metadata !DIExpression()), !dbg !233
  br i1 %14, label %34, label %31, !dbg !234

31:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 0, metadata !228, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %30, metadata !203, metadata !DIExpression()), !dbg !238
  %32 = fmul double %30, %0, !dbg !239
  %33 = fsub double %30, %32, !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !248, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata double %33, metadata !249, metadata !DIExpression()), !dbg !250
  store double %33, ptr %29, align 8, !dbg !252, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !216
  br label %120, !dbg !253

34:                                               ; preds = %27
  %35 = load i64, ptr %12, align 8, !tbaa !254
  %36 = load ptr, ptr %15, align 8, !tbaa !124
  %37 = load i64, ptr %16, align 8, !tbaa !255
  br i1 %20, label %62, label %38, !dbg !234

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %59, %38 ], [ 1, %34 ]
  %40 = phi double [ %58, %38 ], [ %30, %34 ]
  %41 = phi i64 [ %60, %38 ], [ 0, %34 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %40, metadata !199, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !228, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !256
  %42 = mul i64 %35, %39, !dbg !260
  %43 = getelementptr double, ptr %29, i64 %42, !dbg !261
  %44 = load double, ptr %43, align 8, !dbg !261, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !120, metadata !DIExpression()), !dbg !262
  %45 = mul i64 %37, %39, !dbg !264
  %46 = getelementptr inbounds double, ptr %36, i64 %45, !dbg !265
  %47 = load double, ptr %46, align 8, !dbg !265, !tbaa !126
  %48 = fmul double %44, %47, !dbg !266
  %49 = fadd double %40, %48, !dbg !267
  tail call void @llvm.dbg.value(metadata double %49, metadata !199, metadata !DIExpression()), !dbg !233
  %50 = add nuw i64 %39, 1, !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %49, metadata !199, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !228, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !256
  %51 = mul i64 %35, %50, !dbg !260
  %52 = getelementptr double, ptr %29, i64 %51, !dbg !261
  %53 = load double, ptr %52, align 8, !dbg !261, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !120, metadata !DIExpression()), !dbg !262
  %54 = mul i64 %37, %50, !dbg !264
  %55 = getelementptr inbounds double, ptr %36, i64 %54, !dbg !265
  %56 = load double, ptr %55, align 8, !dbg !265, !tbaa !126
  %57 = fmul double %53, %56, !dbg !266
  %58 = fadd double %49, %57, !dbg !267
  tail call void @llvm.dbg.value(metadata double %58, metadata !199, metadata !DIExpression()), !dbg !233
  %59 = add nuw i64 %39, 2, !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !196, metadata !DIExpression()), !dbg !216
  %60 = add nuw i64 %41, 2, !dbg !234
  %61 = icmp eq i64 %60, %21, !dbg !234
  br i1 %61, label %62, label %38, !dbg !234, !llvm.loop !269

62:                                               ; preds = %38, %34
  %63 = phi double [ undef, %34 ], [ %58, %38 ]
  %64 = phi i64 [ 1, %34 ], [ %59, %38 ]
  %65 = phi double [ %30, %34 ], [ %58, %38 ]
  br i1 %22, label %75, label %66, !dbg !234

66:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %65, metadata !199, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !228, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !256
  %67 = mul i64 %35, %64, !dbg !260
  %68 = getelementptr double, ptr %29, i64 %67, !dbg !261
  %69 = load double, ptr %68, align 8, !dbg !261, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !120, metadata !DIExpression()), !dbg !262
  %70 = mul i64 %37, %64, !dbg !264
  %71 = getelementptr inbounds double, ptr %36, i64 %70, !dbg !265
  %72 = load double, ptr %71, align 8, !dbg !265, !tbaa !126
  %73 = fmul double %69, %72, !dbg !266
  %74 = fadd double %65, %73, !dbg !267
  tail call void @llvm.dbg.value(metadata double %74, metadata !199, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !196, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !216
  br label %75, !dbg !239

75:                                               ; preds = %62, %66
  %76 = phi double [ %63, %62 ], [ %74, %66 ], !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 0, metadata !228, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double %30, metadata !203, metadata !DIExpression()), !dbg !238
  %77 = fmul double %76, %0, !dbg !239
  %78 = fsub double %30, %77, !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !248, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata double %78, metadata !249, metadata !DIExpression()), !dbg !250
  store double %78, ptr %29, align 8, !dbg !252, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !196, metadata !DIExpression()), !dbg !216
  br i1 %14, label %79, label %120, !dbg !253

79:                                               ; preds = %75
  %80 = load i64, ptr %12, align 8, !tbaa !254
  %81 = load ptr, ptr %15, align 8, !tbaa !124
  %82 = load i64, ptr %16, align 8, !tbaa !255
  br i1 %24, label %108, label %83, !dbg !253

83:                                               ; preds = %79, %83
  %84 = phi i64 [ %105, %83 ], [ 1, %79 ]
  %85 = phi i64 [ %106, %83 ], [ 0, %79 ]
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !228, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !272
  %86 = mul i64 %80, %84, !dbg !274
  %87 = getelementptr double, ptr %29, i64 %86, !dbg !275
  %88 = load double, ptr %87, align 8, !dbg !275, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %88, metadata !205, metadata !DIExpression()), !dbg !276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !120, metadata !DIExpression()), !dbg !277
  %89 = mul i64 %82, %84, !dbg !279
  %90 = getelementptr inbounds double, ptr %81, i64 %89, !dbg !280
  %91 = load double, ptr %90, align 8, !dbg !280, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %91, metadata !209, metadata !DIExpression()), !dbg !276
  %92 = fmul double %91, %0, !dbg !281
  %93 = fmul double %76, %92, !dbg !282
  %94 = fsub double %88, %93, !dbg !283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !247, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !248, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %94, metadata !249, metadata !DIExpression()), !dbg !284
  store double %94, ptr %87, align 8, !dbg !286, !tbaa !126
  %95 = add nuw i64 %84, 1, !dbg !287
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !228, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !272
  %96 = mul i64 %80, %95, !dbg !274
  %97 = getelementptr double, ptr %29, i64 %96, !dbg !275
  %98 = load double, ptr %97, align 8, !dbg !275, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %98, metadata !205, metadata !DIExpression()), !dbg !276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !120, metadata !DIExpression()), !dbg !277
  %99 = mul i64 %82, %95, !dbg !279
  %100 = getelementptr inbounds double, ptr %81, i64 %99, !dbg !280
  %101 = load double, ptr %100, align 8, !dbg !280, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %101, metadata !209, metadata !DIExpression()), !dbg !276
  %102 = fmul double %101, %0, !dbg !281
  %103 = fmul double %76, %102, !dbg !282
  %104 = fsub double %98, %103, !dbg !283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !247, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !248, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %104, metadata !249, metadata !DIExpression()), !dbg !284
  store double %104, ptr %97, align 8, !dbg !286, !tbaa !126
  %105 = add nuw i64 %84, 2, !dbg !287
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !196, metadata !DIExpression()), !dbg !216
  %106 = add nuw i64 %85, 2, !dbg !253
  %107 = icmp eq i64 %106, %25, !dbg !253
  br i1 %107, label %108, label %83, !dbg !253, !llvm.loop !288

108:                                              ; preds = %83, %79
  %109 = phi i64 [ 1, %79 ], [ %105, %83 ]
  br i1 %26, label %120, label %110, !dbg !253

110:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !196, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !228, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !229, metadata !DIExpression()), !dbg !272
  %111 = mul i64 %80, %109, !dbg !274
  %112 = getelementptr double, ptr %29, i64 %111, !dbg !275
  %113 = load double, ptr %112, align 8, !dbg !275, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %113, metadata !205, metadata !DIExpression()), !dbg !276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !120, metadata !DIExpression()), !dbg !277
  %114 = mul i64 %82, %109, !dbg !279
  %115 = getelementptr inbounds double, ptr %81, i64 %114, !dbg !280
  %116 = load double, ptr %115, align 8, !dbg !280, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %116, metadata !209, metadata !DIExpression()), !dbg !276
  %117 = fmul double %116, %0, !dbg !281
  %118 = fmul double %76, %117, !dbg !282
  %119 = fsub double %113, %118, !dbg !283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !247, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !248, metadata !DIExpression()), !dbg !284
  tail call void @llvm.dbg.value(metadata double %119, metadata !249, metadata !DIExpression()), !dbg !284
  store double %119, ptr %112, align 8, !dbg !286, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !196, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !216
  br label %120, !dbg !290

120:                                              ; preds = %110, %108, %31, %75
  %121 = add nuw i64 %28, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !198, metadata !DIExpression()), !dbg !216
  %122 = icmp eq i64 %121, %7, !dbg !217
  br i1 %122, label %123, label %27, !dbg !218, !llvm.loop !291

123:                                              ; preds = %120, %5, %3
  ret i32 0, !dbg !293
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_mh(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 !dbg !294 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !296, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !297, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !298, metadata !DIExpression()), !dbg !313
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !314
  br i1 %4, label %136, label %5, !dbg !316

5:                                                ; preds = %3
  %6 = load i64, ptr %2, align 8, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 0, metadata !299, metadata !DIExpression()), !dbg !317
  %7 = icmp eq i64 %6, 0, !dbg !318
  br i1 %7, label %136, label %8, !dbg !319

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !219
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !254
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !214
  %15 = icmp ugt i64 %14, 1
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %18 = add i64 %14, -1, !dbg !319
  %19 = add i64 %14, -2, !dbg !319
  %20 = and i64 %18, 3
  %21 = icmp ult i64 %19, 3
  %22 = and i64 %18, -4
  %23 = icmp eq i64 %20, 0
  %24 = and i64 %18, 1
  %25 = icmp eq i64 %19, 0
  %26 = and i64 %18, -2
  %27 = icmp eq i64 %24, 0
  br label %28, !dbg !319

28:                                               ; preds = %8, %133
  %29 = phi i64 [ 0, %8 ], [ %134, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !299, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !320
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !320
  %30 = mul i64 %12, %29, !dbg !322
  %31 = getelementptr double, ptr %10, i64 %30, !dbg !323
  %32 = load double, ptr %31, align 8, !dbg !323, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %32, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata i64 1, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 1, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %32, metadata !302, metadata !DIExpression()), !dbg !324
  br i1 %15, label %36, label %33, !dbg !325

33:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %32, metadata !306, metadata !DIExpression()), !dbg !329
  %34 = fmul double %32, %0, !dbg !330
  %35 = fsub double %32, %34, !dbg !331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata double %35, metadata !249, metadata !DIExpression()), !dbg !332
  store double %35, ptr %31, align 8, !dbg !334, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !301, metadata !DIExpression()), !dbg !317
  br label %133, !dbg !335

36:                                               ; preds = %28
  %37 = load ptr, ptr %16, align 8, !tbaa !124
  %38 = load i64, ptr %17, align 8, !tbaa !255
  br i1 %21, label %77, label %39, !dbg !325

39:                                               ; preds = %36, %39
  %40 = phi i64 [ %74, %39 ], [ 1, %36 ]
  %41 = phi double [ %73, %39 ], [ %32, %36 ]
  %42 = phi i64 [ %75, %39 ], [ 0, %36 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %41, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !229, metadata !DIExpression()), !dbg !336
  %43 = getelementptr double, ptr %31, i64 %40, !dbg !340
  %44 = load double, ptr %43, align 8, !dbg !340, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !120, metadata !DIExpression()), !dbg !341
  %45 = mul i64 %38, %40, !dbg !343
  %46 = getelementptr inbounds double, ptr %37, i64 %45, !dbg !344
  %47 = load double, ptr %46, align 8, !dbg !344, !tbaa !126
  %48 = fmul double %44, %47, !dbg !345
  %49 = fadd double %41, %48, !dbg !346
  tail call void @llvm.dbg.value(metadata double %49, metadata !302, metadata !DIExpression()), !dbg !324
  %50 = add nuw nsw i64 %40, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %49, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !229, metadata !DIExpression()), !dbg !336
  %51 = getelementptr double, ptr %31, i64 %50, !dbg !340
  %52 = load double, ptr %51, align 8, !dbg !340, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !120, metadata !DIExpression()), !dbg !341
  %53 = mul i64 %38, %50, !dbg !343
  %54 = getelementptr inbounds double, ptr %37, i64 %53, !dbg !344
  %55 = load double, ptr %54, align 8, !dbg !344, !tbaa !126
  %56 = fmul double %52, %55, !dbg !345
  %57 = fadd double %49, %56, !dbg !346
  tail call void @llvm.dbg.value(metadata double %57, metadata !302, metadata !DIExpression()), !dbg !324
  %58 = add nuw nsw i64 %40, 2, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %57, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !229, metadata !DIExpression()), !dbg !336
  %59 = getelementptr double, ptr %31, i64 %58, !dbg !340
  %60 = load double, ptr %59, align 8, !dbg !340, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !120, metadata !DIExpression()), !dbg !341
  %61 = mul i64 %38, %58, !dbg !343
  %62 = getelementptr inbounds double, ptr %37, i64 %61, !dbg !344
  %63 = load double, ptr %62, align 8, !dbg !344, !tbaa !126
  %64 = fmul double %60, %63, !dbg !345
  %65 = fadd double %57, %64, !dbg !346
  tail call void @llvm.dbg.value(metadata double %65, metadata !302, metadata !DIExpression()), !dbg !324
  %66 = add nuw i64 %40, 3, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %65, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !336
  %67 = getelementptr double, ptr %31, i64 %66, !dbg !340
  %68 = load double, ptr %67, align 8, !dbg !340, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !120, metadata !DIExpression()), !dbg !341
  %69 = mul i64 %38, %66, !dbg !343
  %70 = getelementptr inbounds double, ptr %37, i64 %69, !dbg !344
  %71 = load double, ptr %70, align 8, !dbg !344, !tbaa !126
  %72 = fmul double %68, %71, !dbg !345
  %73 = fadd double %65, %72, !dbg !346
  tail call void @llvm.dbg.value(metadata double %73, metadata !302, metadata !DIExpression()), !dbg !324
  %74 = add nuw i64 %40, 4, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !301, metadata !DIExpression()), !dbg !317
  %75 = add i64 %42, 4, !dbg !325
  %76 = icmp eq i64 %75, %22, !dbg !325
  br i1 %76, label %77, label %39, !dbg !325, !llvm.loop !348

77:                                               ; preds = %39, %36
  %78 = phi double [ undef, %36 ], [ %73, %39 ]
  %79 = phi i64 [ 1, %36 ], [ %74, %39 ]
  %80 = phi double [ %32, %36 ], [ %73, %39 ]
  br i1 %23, label %95, label %81, !dbg !325

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %92, %81 ], [ %79, %77 ]
  %83 = phi double [ %91, %81 ], [ %80, %77 ]
  %84 = phi i64 [ %93, %81 ], [ 0, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata double %83, metadata !302, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !229, metadata !DIExpression()), !dbg !336
  %85 = getelementptr double, ptr %31, i64 %82, !dbg !340
  %86 = load double, ptr %85, align 8, !dbg !340, !tbaa !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !120, metadata !DIExpression()), !dbg !341
  %87 = mul i64 %38, %82, !dbg !343
  %88 = getelementptr inbounds double, ptr %37, i64 %87, !dbg !344
  %89 = load double, ptr %88, align 8, !dbg !344, !tbaa !126
  %90 = fmul double %86, %89, !dbg !345
  %91 = fadd double %83, %90, !dbg !346
  tail call void @llvm.dbg.value(metadata double %91, metadata !302, metadata !DIExpression()), !dbg !324
  %92 = add nuw i64 %82, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !301, metadata !DIExpression()), !dbg !317
  %93 = add i64 %84, 1, !dbg !325
  %94 = icmp eq i64 %93, %20, !dbg !325
  br i1 %94, label %95, label %81, !dbg !325, !llvm.loop !350

95:                                               ; preds = %81, %77
  %96 = phi double [ %78, %77 ], [ %91, %81 ], !dbg !346
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !327
  tail call void @llvm.dbg.value(metadata double %32, metadata !306, metadata !DIExpression()), !dbg !329
  %97 = fmul double %96, %0, !dbg !330
  %98 = fsub double %32, %97, !dbg !331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !332
  tail call void @llvm.dbg.value(metadata double %98, metadata !249, metadata !DIExpression()), !dbg !332
  store double %98, ptr %31, align 8, !dbg !334, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !301, metadata !DIExpression()), !dbg !317
  br i1 %15, label %99, label %133, !dbg !335

99:                                               ; preds = %95
  %100 = load ptr, ptr %16, align 8, !tbaa !124
  %101 = load i64, ptr %17, align 8, !tbaa !255
  br i1 %25, label %123, label %102, !dbg !335

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %120, %102 ], [ 1, %99 ]
  %104 = phi i64 [ %121, %102 ], [ 0, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !120, metadata !DIExpression()), !dbg !352
  %105 = mul i64 %101, %103, !dbg !354
  %106 = getelementptr inbounds double, ptr %100, i64 %105, !dbg !355
  %107 = load double, ptr %106, align 8, !dbg !355, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %107, metadata !308, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !229, metadata !DIExpression()), !dbg !357
  %108 = getelementptr double, ptr %31, i64 %103, !dbg !359
  %109 = load double, ptr %108, align 8, !dbg !359, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %109, metadata !312, metadata !DIExpression()), !dbg !356
  %110 = fmul double %97, %107, !dbg !360
  %111 = fsub double %109, %110, !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !248, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata double %111, metadata !249, metadata !DIExpression()), !dbg !362
  store double %111, ptr %108, align 8, !dbg !364, !tbaa !126
  %112 = add nuw i64 %103, 1, !dbg !365
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !120, metadata !DIExpression()), !dbg !352
  %113 = mul i64 %101, %112, !dbg !354
  %114 = getelementptr inbounds double, ptr %100, i64 %113, !dbg !355
  %115 = load double, ptr %114, align 8, !dbg !355, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %115, metadata !308, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !229, metadata !DIExpression()), !dbg !357
  %116 = getelementptr double, ptr %31, i64 %112, !dbg !359
  %117 = load double, ptr %116, align 8, !dbg !359, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %117, metadata !312, metadata !DIExpression()), !dbg !356
  %118 = fmul double %97, %115, !dbg !360
  %119 = fsub double %117, %118, !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !248, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata double %119, metadata !249, metadata !DIExpression()), !dbg !362
  store double %119, ptr %116, align 8, !dbg !364, !tbaa !126
  %120 = add nuw i64 %103, 2, !dbg !365
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !301, metadata !DIExpression()), !dbg !317
  %121 = add nuw i64 %104, 2, !dbg !335
  %122 = icmp eq i64 %121, %26, !dbg !335
  br i1 %122, label %123, label %102, !dbg !335, !llvm.loop !366

123:                                              ; preds = %102, %99
  %124 = phi i64 [ 1, %99 ], [ %120, %102 ]
  br i1 %27, label %133, label %125, !dbg !335

125:                                              ; preds = %123
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !301, metadata !DIExpression()), !dbg !317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !113, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !120, metadata !DIExpression()), !dbg !352
  %126 = mul i64 %101, %124, !dbg !354
  %127 = getelementptr inbounds double, ptr %100, i64 %126, !dbg !355
  %128 = load double, ptr %127, align 8, !dbg !355, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %128, metadata !308, metadata !DIExpression()), !dbg !356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !221, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !228, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !229, metadata !DIExpression()), !dbg !357
  %129 = getelementptr double, ptr %31, i64 %124, !dbg !359
  %130 = load double, ptr %129, align 8, !dbg !359, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %130, metadata !312, metadata !DIExpression()), !dbg !356
  %131 = fmul double %97, %128, !dbg !360
  %132 = fsub double %130, %131, !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !248, metadata !DIExpression()), !dbg !362
  tail call void @llvm.dbg.value(metadata double %132, metadata !249, metadata !DIExpression()), !dbg !362
  store double %132, ptr %129, align 8, !dbg !364, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !301, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !317
  br label %133, !dbg !368

133:                                              ; preds = %125, %123, %33, %95
  %134 = add nuw i64 %29, 1, !dbg !368
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !299, metadata !DIExpression()), !dbg !317
  %135 = icmp eq i64 %134, %6, !dbg !318
  br i1 %135, label %136, label %28, !dbg !319, !llvm.loop !369

136:                                              ; preds = %133, %5, %3
  ret i32 0, !dbg !371
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_householder_hv(double noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !372 {
  %4 = alloca double, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !392, metadata ptr %4, metadata !DIExpression()), !dbg !393
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !384, metadata !DIExpression(), metadata !394, metadata ptr %5, metadata !DIExpression()), !dbg !393
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !391, metadata !DIExpression(), metadata !395, metadata ptr %6, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %0, metadata !376, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !377, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !379, metadata !DIExpression()), !dbg !396
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !397
  br i1 %7, label %23, label %8, !dbg !399

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8, !dbg !400, !tbaa !97
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !379, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !113, metadata !DIExpression()), !dbg !401
  tail call void @llvm.dbg.value(metadata i64 0, metadata !120, metadata !DIExpression()), !dbg !401
  %10 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2, !dbg !403
  %11 = load ptr, ptr %10, align 8, !dbg !403, !tbaa !124
  %12 = load double, ptr %11, align 8, !dbg !404, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %12, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !405
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8, !dbg !406
  %13 = add i64 %9, -1, !dbg !407
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %1, i64 noundef 1, i64 noundef %13) #8, !dbg !408
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #8, !dbg !409
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef %2, i64 noundef 1, i64 noundef %13) #8, !dbg !410
  %14 = call i32 @gsl_blas_ddot(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #8, !dbg !411
  %15 = load double, ptr %4, align 8, !dbg !412, !tbaa !126
  %16 = fadd double %12, %15, !dbg !413
  tail call void @llvm.dbg.value(metadata double %16, metadata !383, metadata !DIExpression()), !dbg !393
  %17 = fmul double %16, %0, !dbg !414
  %18 = fsub double %12, %17, !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !143, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %18, metadata !149, metadata !DIExpression()), !dbg !416
  %19 = load ptr, ptr %10, align 8, !dbg !418, !tbaa !124
  store double %18, ptr %19, align 8, !dbg !419, !tbaa !126
  %20 = fneg double %0, !dbg !420
  %21 = fmul double %16, %20, !dbg !421
  %22 = call i32 @gsl_blas_daxpy(double noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6) #8, !dbg !422
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #8, !dbg !423
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !423
  br label %23, !dbg !424

23:                                               ; preds = %3, %8
  ret i32 0, !dbg !425
}

declare !dbg !426 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !429 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !432 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_householder_hm1(double noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !dbg !433 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !437, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !438, metadata !DIExpression()), !dbg !463
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !464
  br i1 %3, label %26, label %4, !dbg !465

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !214
  tail call void @llvm.dbg.value(metadata i64 1, metadata !445, metadata !DIExpression()), !dbg !466
  %7 = icmp ugt i64 %6, 1, !dbg !467
  %8 = load i64, ptr %1, align 8, !tbaa !220
  br i1 %7, label %9, label %71, !dbg !468

9:                                                ; preds = %4
  %10 = icmp ugt i64 %8, 1
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %13 = fneg double %0
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = fmul double %0, -0.000000e+00
  %16 = add i64 %8, -1, !dbg !468
  %17 = add i64 %8, -2, !dbg !468
  %18 = and i64 %16, 3
  %19 = icmp ult i64 %17, 3
  %20 = and i64 %16, -4
  %21 = icmp eq i64 %18, 0
  %22 = and i64 %16, 1
  %23 = icmp eq i64 %17, 0
  %24 = and i64 %16, -2
  %25 = icmp eq i64 %22, 0
  br label %65, !dbg !468

26:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !249, metadata !DIExpression()), !dbg !469
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3, !dbg !471
  %28 = load ptr, ptr %27, align 8, !dbg !471, !tbaa !219
  %29 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2, !dbg !472
  store double 1.000000e+00, ptr %28, align 8, !dbg !473, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !474
  %30 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !214
  tail call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !474
  %32 = icmp ugt i64 %31, 1, !dbg !475
  br i1 %32, label %33, label %37, !dbg !478

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %28, i64 8, !dbg !478
  %35 = shl i64 %31, 3, !dbg !478
  %36 = add i64 %35, -8, !dbg !478
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %36, i1 false), !dbg !479, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !442, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !248, metadata !DIExpression()), !dbg !482
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !482
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i64, ptr %1, align 8, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 1, metadata !439, metadata !DIExpression()), !dbg !474
  %39 = icmp ugt i64 %38, 1, !dbg !483
  br i1 %39, label %40, label %235, !dbg !486

40:                                               ; preds = %37
  %41 = load i64, ptr %29, align 8, !tbaa !254
  %42 = add i64 %38, -1, !dbg !486
  %43 = add i64 %38, -2, !dbg !486
  %44 = and i64 %42, 3, !dbg !486
  %45 = icmp ult i64 %43, 3, !dbg !486
  br i1 %45, label %224, label %46, !dbg !486

46:                                               ; preds = %40
  %47 = and i64 %42, -4, !dbg !486
  br label %48, !dbg !486

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 1, %46 ], [ %62, %48 ]
  %50 = phi i64 [ 0, %46 ], [ %63, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !247, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !487
  %51 = mul i64 %41, %49, !dbg !490
  %52 = getelementptr double, ptr %28, i64 %51, !dbg !491
  store double 0.000000e+00, ptr %52, align 8, !dbg !492, !tbaa !126
  %53 = add nuw nsw i64 %49, 1, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !247, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !487
  %54 = mul i64 %41, %53, !dbg !490
  %55 = getelementptr double, ptr %28, i64 %54, !dbg !491
  store double 0.000000e+00, ptr %55, align 8, !dbg !492, !tbaa !126
  %56 = add nuw nsw i64 %49, 2, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !247, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !487
  %57 = mul i64 %41, %56, !dbg !490
  %58 = getelementptr double, ptr %28, i64 %57, !dbg !491
  store double 0.000000e+00, ptr %58, align 8, !dbg !492, !tbaa !126
  %59 = add nuw i64 %49, 3, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !247, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !487
  %60 = mul i64 %41, %59, !dbg !490
  %61 = getelementptr double, ptr %28, i64 %60, !dbg !491
  store double 0.000000e+00, ptr %61, align 8, !dbg !492, !tbaa !126
  %62 = add nuw i64 %49, 4, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !439, metadata !DIExpression()), !dbg !474
  %63 = add nuw i64 %50, 4, !dbg !486
  %64 = icmp eq i64 %63, %47, !dbg !486
  br i1 %64, label %224, label %48, !dbg !486, !llvm.loop !494

65:                                               ; preds = %9, %181
  %66 = phi i64 [ 1, %9 ], [ %182, %181 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !445, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !446, metadata !DIExpression()), !dbg !496
  br i1 %10, label %69, label %67, !dbg !497

67:                                               ; preds = %65
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !248, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata double %15, metadata !249, metadata !DIExpression()), !dbg !498
  %68 = getelementptr double, ptr %14, i64 %66, !dbg !500
  store double %15, ptr %68, align 8, !dbg !501, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !466
  br label %181, !dbg !502

69:                                               ; preds = %65
  %70 = load i64, ptr %12, align 8, !tbaa !254
  br i1 %19, label %123, label %85, !dbg !497

71:                                               ; preds = %181, %4
  tail call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !466
  %72 = icmp ugt i64 %8, 1, !dbg !503
  %73 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !219
  br i1 %72, label %75, label %222, !dbg !504

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !254
  %78 = fneg double %0
  %79 = add i64 %8, -1, !dbg !504
  %80 = add i64 %8, -2, !dbg !504
  %81 = and i64 %79, 3, !dbg !504
  %82 = icmp ult i64 %80, 3, !dbg !504
  br i1 %82, label %209, label %83, !dbg !504

83:                                               ; preds = %75
  %84 = and i64 %79, -4, !dbg !504
  br label %184, !dbg !504

85:                                               ; preds = %69, %85
  %86 = phi i64 [ %120, %85 ], [ 1, %69 ]
  %87 = phi double [ %119, %85 ], [ 0.000000e+00, %69 ]
  %88 = phi i64 [ %121, %85 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %87, metadata !446, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !228, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !505
  %89 = mul i64 %70, %86, !dbg !507
  %90 = getelementptr double, ptr %14, i64 %89, !dbg !508
  %91 = load double, ptr %90, align 8, !dbg !508, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %91, metadata !450, metadata !DIExpression()), !dbg !509
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !228, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !510
  %92 = getelementptr double, ptr %90, i64 %66, !dbg !512
  %93 = load double, ptr %92, align 8, !dbg !512, !tbaa !126
  %94 = fmul double %91, %93, !dbg !513
  %95 = fadd double %87, %94, !dbg !514
  tail call void @llvm.dbg.value(metadata double %95, metadata !446, metadata !DIExpression()), !dbg !496
  %96 = add nuw nsw i64 %86, 1, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %95, metadata !446, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !228, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !505
  %97 = mul i64 %70, %96, !dbg !507
  %98 = getelementptr double, ptr %14, i64 %97, !dbg !508
  %99 = load double, ptr %98, align 8, !dbg !508, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %99, metadata !450, metadata !DIExpression()), !dbg !509
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !228, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !510
  %100 = getelementptr double, ptr %98, i64 %66, !dbg !512
  %101 = load double, ptr %100, align 8, !dbg !512, !tbaa !126
  %102 = fmul double %99, %101, !dbg !513
  %103 = fadd double %95, %102, !dbg !514
  tail call void @llvm.dbg.value(metadata double %103, metadata !446, metadata !DIExpression()), !dbg !496
  %104 = add nuw nsw i64 %86, 2, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %103, metadata !446, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !228, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !505
  %105 = mul i64 %70, %104, !dbg !507
  %106 = getelementptr double, ptr %14, i64 %105, !dbg !508
  %107 = load double, ptr %106, align 8, !dbg !508, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %107, metadata !450, metadata !DIExpression()), !dbg !509
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !228, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !510
  %108 = getelementptr double, ptr %106, i64 %66, !dbg !512
  %109 = load double, ptr %108, align 8, !dbg !512, !tbaa !126
  %110 = fmul double %107, %109, !dbg !513
  %111 = fadd double %103, %110, !dbg !514
  tail call void @llvm.dbg.value(metadata double %111, metadata !446, metadata !DIExpression()), !dbg !496
  %112 = add nuw i64 %86, 3, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %111, metadata !446, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !228, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !505
  %113 = mul i64 %70, %112, !dbg !507
  %114 = getelementptr double, ptr %14, i64 %113, !dbg !508
  %115 = load double, ptr %114, align 8, !dbg !508, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %115, metadata !450, metadata !DIExpression()), !dbg !509
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !228, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !510
  %116 = getelementptr double, ptr %114, i64 %66, !dbg !512
  %117 = load double, ptr %116, align 8, !dbg !512, !tbaa !126
  %118 = fmul double %115, %117, !dbg !513
  %119 = fadd double %111, %118, !dbg !514
  tail call void @llvm.dbg.value(metadata double %119, metadata !446, metadata !DIExpression()), !dbg !496
  %120 = add nuw i64 %86, 4, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !443, metadata !DIExpression()), !dbg !466
  %121 = add i64 %88, 4, !dbg !497
  %122 = icmp eq i64 %121, %20, !dbg !497
  br i1 %122, label %123, label %85, !dbg !497, !llvm.loop !516

123:                                              ; preds = %85, %69
  %124 = phi double [ undef, %69 ], [ %119, %85 ]
  %125 = phi i64 [ 1, %69 ], [ %120, %85 ]
  %126 = phi double [ 0.000000e+00, %69 ], [ %119, %85 ]
  br i1 %21, label %141, label %127, !dbg !497

127:                                              ; preds = %123, %127
  %128 = phi i64 [ %138, %127 ], [ %125, %123 ]
  %129 = phi double [ %137, %127 ], [ %126, %123 ]
  %130 = phi i64 [ %139, %127 ], [ 0, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata double %129, metadata !446, metadata !DIExpression()), !dbg !496
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !228, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !505
  %131 = mul i64 %70, %128, !dbg !507
  %132 = getelementptr double, ptr %14, i64 %131, !dbg !508
  %133 = load double, ptr %132, align 8, !dbg !508, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %133, metadata !450, metadata !DIExpression()), !dbg !509
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !228, metadata !DIExpression()), !dbg !510
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !510
  %134 = getelementptr double, ptr %132, i64 %66, !dbg !512
  %135 = load double, ptr %134, align 8, !dbg !512, !tbaa !126
  %136 = fmul double %133, %135, !dbg !513
  %137 = fadd double %129, %136, !dbg !514
  tail call void @llvm.dbg.value(metadata double %137, metadata !446, metadata !DIExpression()), !dbg !496
  %138 = add nuw i64 %128, 1, !dbg !515
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !443, metadata !DIExpression()), !dbg !466
  %139 = add i64 %130, 1, !dbg !497
  %140 = icmp eq i64 %139, %18, !dbg !497
  br i1 %140, label %141, label %127, !dbg !497, !llvm.loop !518

141:                                              ; preds = %127, %123
  %142 = phi double [ %124, %123 ], [ %137, %127 ], !dbg !514
  %143 = fmul double %142, %13, !dbg !519
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !248, metadata !DIExpression()), !dbg !498
  tail call void @llvm.dbg.value(metadata double %143, metadata !249, metadata !DIExpression()), !dbg !498
  %144 = getelementptr double, ptr %14, i64 %66, !dbg !500
  store double %143, ptr %144, align 8, !dbg !501, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !466
  br i1 %10, label %145, label %181, !dbg !502

145:                                              ; preds = %141
  %146 = load i64, ptr %12, align 8, !tbaa !254
  br i1 %23, label %170, label %147, !dbg !502

147:                                              ; preds = %145, %147
  %148 = phi i64 [ %167, %147 ], [ 1, %145 ]
  %149 = phi i64 [ %168, %147 ], [ 0, %145 ]
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !228, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !520
  %150 = mul i64 %146, %148, !dbg !522
  %151 = getelementptr double, ptr %14, i64 %150, !dbg !523
  %152 = load double, ptr %151, align 8, !dbg !523, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %152, metadata !454, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !228, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !525
  %153 = getelementptr double, ptr %151, i64 %66, !dbg !527
  %154 = load double, ptr %153, align 8, !dbg !527, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %154, metadata !458, metadata !DIExpression()), !dbg !524
  %155 = fmul double %152, %0, !dbg !528
  %156 = fmul double %142, %155, !dbg !529
  %157 = fsub double %154, %156, !dbg !530
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !247, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !248, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata double %157, metadata !249, metadata !DIExpression()), !dbg !531
  store double %157, ptr %153, align 8, !dbg !533, !tbaa !126
  %158 = add nuw i64 %148, 1, !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !228, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !520
  %159 = mul i64 %146, %158, !dbg !522
  %160 = getelementptr double, ptr %14, i64 %159, !dbg !523
  %161 = load double, ptr %160, align 8, !dbg !523, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %161, metadata !454, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !228, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !525
  %162 = getelementptr double, ptr %160, i64 %66, !dbg !527
  %163 = load double, ptr %162, align 8, !dbg !527, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %163, metadata !458, metadata !DIExpression()), !dbg !524
  %164 = fmul double %161, %0, !dbg !528
  %165 = fmul double %142, %164, !dbg !529
  %166 = fsub double %163, %165, !dbg !530
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !247, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !248, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata double %166, metadata !249, metadata !DIExpression()), !dbg !531
  store double %166, ptr %162, align 8, !dbg !533, !tbaa !126
  %167 = add nuw i64 %148, 2, !dbg !534
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !443, metadata !DIExpression()), !dbg !466
  %168 = add nuw i64 %149, 2, !dbg !502
  %169 = icmp eq i64 %168, %24, !dbg !502
  br i1 %169, label %170, label %147, !dbg !502, !llvm.loop !535

170:                                              ; preds = %147, %145
  %171 = phi i64 [ 1, %145 ], [ %167, %147 ]
  br i1 %25, label %181, label %172, !dbg !502

172:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !228, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !520
  %173 = mul i64 %146, %171, !dbg !522
  %174 = getelementptr double, ptr %14, i64 %173, !dbg !523
  %175 = load double, ptr %174, align 8, !dbg !523, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %175, metadata !454, metadata !DIExpression()), !dbg !524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !228, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !229, metadata !DIExpression()), !dbg !525
  %176 = getelementptr double, ptr %174, i64 %66, !dbg !527
  %177 = load double, ptr %176, align 8, !dbg !527, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %177, metadata !458, metadata !DIExpression()), !dbg !524
  %178 = fmul double %175, %0, !dbg !528
  %179 = fmul double %142, %178, !dbg !529
  %180 = fsub double %177, %179, !dbg !530
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !247, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !248, metadata !DIExpression()), !dbg !531
  tail call void @llvm.dbg.value(metadata double %180, metadata !249, metadata !DIExpression()), !dbg !531
  store double %180, ptr %176, align 8, !dbg !533, !tbaa !126
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !443, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !466
  br label %181, !dbg !537

181:                                              ; preds = %172, %170, %67, %141
  %182 = add nuw i64 %66, 1, !dbg !537
  tail call void @llvm.dbg.value(metadata i64 %182, metadata !445, metadata !DIExpression()), !dbg !466
  %183 = icmp eq i64 %182, %6, !dbg !467
  br i1 %183, label %71, label %65, !dbg !468, !llvm.loop !538

184:                                              ; preds = %184, %83
  %185 = phi i64 [ 1, %83 ], [ %206, %184 ]
  %186 = phi i64 [ 0, %83 ], [ %207, %184 ]
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !228, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !540
  %187 = mul i64 %77, %185, !dbg !542
  %188 = getelementptr double, ptr %74, i64 %187, !dbg !543
  %189 = load double, ptr %188, align 8, !dbg !543, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %189, metadata !459, metadata !DIExpression()), !dbg !544
  %190 = fmul double %189, %78, !dbg !545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !247, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %190, metadata !249, metadata !DIExpression()), !dbg !546
  store double %190, ptr %188, align 8, !dbg !548, !tbaa !126
  %191 = add nuw nsw i64 %185, 1, !dbg !549
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !228, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !540
  %192 = mul i64 %77, %191, !dbg !542
  %193 = getelementptr double, ptr %74, i64 %192, !dbg !543
  %194 = load double, ptr %193, align 8, !dbg !543, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %194, metadata !459, metadata !DIExpression()), !dbg !544
  %195 = fmul double %194, %78, !dbg !545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !247, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %195, metadata !249, metadata !DIExpression()), !dbg !546
  store double %195, ptr %193, align 8, !dbg !548, !tbaa !126
  %196 = add nuw nsw i64 %185, 2, !dbg !549
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !228, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !540
  %197 = mul i64 %77, %196, !dbg !542
  %198 = getelementptr double, ptr %74, i64 %197, !dbg !543
  %199 = load double, ptr %198, align 8, !dbg !543, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %199, metadata !459, metadata !DIExpression()), !dbg !544
  %200 = fmul double %199, %78, !dbg !545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !247, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %200, metadata !249, metadata !DIExpression()), !dbg !546
  store double %200, ptr %198, align 8, !dbg !548, !tbaa !126
  %201 = add nuw i64 %185, 3, !dbg !549
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !228, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !540
  %202 = mul i64 %77, %201, !dbg !542
  %203 = getelementptr double, ptr %74, i64 %202, !dbg !543
  %204 = load double, ptr %203, align 8, !dbg !543, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %204, metadata !459, metadata !DIExpression()), !dbg !544
  %205 = fmul double %204, %78, !dbg !545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !247, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %205, metadata !249, metadata !DIExpression()), !dbg !546
  store double %205, ptr %203, align 8, !dbg !548, !tbaa !126
  %206 = add nuw i64 %185, 4, !dbg !549
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !443, metadata !DIExpression()), !dbg !466
  %207 = add nuw i64 %186, 4, !dbg !504
  %208 = icmp eq i64 %207, %84, !dbg !504
  br i1 %208, label %209, label %184, !dbg !504, !llvm.loop !550

209:                                              ; preds = %184, %75
  %210 = phi i64 [ 1, %75 ], [ %206, %184 ]
  %211 = icmp eq i64 %81, 0, !dbg !504
  br i1 %211, label %222, label %212, !dbg !504

212:                                              ; preds = %209, %212
  %213 = phi i64 [ %219, %212 ], [ %210, %209 ]
  %214 = phi i64 [ %220, %212 ], [ 0, %209 ]
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !443, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !221, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !228, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !540
  %215 = mul i64 %77, %213, !dbg !542
  %216 = getelementptr double, ptr %74, i64 %215, !dbg !543
  %217 = load double, ptr %216, align 8, !dbg !543, !tbaa !126
  tail call void @llvm.dbg.value(metadata double %217, metadata !459, metadata !DIExpression()), !dbg !544
  %218 = fmul double %217, %78, !dbg !545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !247, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata double %218, metadata !249, metadata !DIExpression()), !dbg !546
  store double %218, ptr %216, align 8, !dbg !548, !tbaa !126
  %219 = add nuw i64 %213, 1, !dbg !549
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !443, metadata !DIExpression()), !dbg !466
  %220 = add i64 %214, 1, !dbg !504
  %221 = icmp eq i64 %220, %81, !dbg !504
  br i1 %221, label %222, label %212, !dbg !504, !llvm.loop !552

222:                                              ; preds = %209, %212, %71
  %223 = fsub double 1.000000e+00, %0, !dbg !553
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata double %223, metadata !249, metadata !DIExpression()), !dbg !554
  store double %223, ptr %74, align 8, !dbg !556, !tbaa !126
  br label %235, !dbg !557

224:                                              ; preds = %48, %40
  %225 = phi i64 [ 1, %40 ], [ %62, %48 ]
  %226 = icmp eq i64 %44, 0, !dbg !486
  br i1 %226, label %235, label %227, !dbg !486

227:                                              ; preds = %224, %227
  %228 = phi i64 [ %232, %227 ], [ %225, %224 ]
  %229 = phi i64 [ %233, %227 ], [ 0, %224 ]
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !439, metadata !DIExpression()), !dbg !474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !241, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !247, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !487
  %230 = mul i64 %41, %228, !dbg !490
  %231 = getelementptr double, ptr %28, i64 %230, !dbg !491
  store double 0.000000e+00, ptr %231, align 8, !dbg !492, !tbaa !126
  %232 = add nuw i64 %228, 1, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %232, metadata !439, metadata !DIExpression()), !dbg !474
  %233 = add i64 %229, 1, !dbg !486
  %234 = icmp eq i64 %233, %44, !dbg !486
  br i1 %234, label %235, label %227, !dbg !486, !llvm.loop !558

235:                                              ; preds = %224, %227, %37, %222
  ret i32 0, !dbg !559
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!133 = !DILocation(line: 76, column: 19, scope: !80)
!134 = !DILocation(line: 76, column: 28, scope: !80)
!135 = !DILocation(line: 79, column: 27, scope: !92)
!136 = !DILocation(line: 0, scope: !92)
!137 = !DILocation(line: 81, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !92, file: !1, line: 81, column: 13)
!139 = !DILocation(line: 81, column: 21, scope: !138)
!140 = !DILocation(line: 81, column: 13, scope: !92)
!141 = !DILocation(line: 83, column: 33, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 82, column: 11)
!143 = !DILocalVariable(name: "v", arg: 1, scope: !144, file: !56, line: 188, type: !54)
!144 = distinct !DISubprogram(name: "gsl_vector_set", scope: !56, file: !56, line: 188, type: !145, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !54, !78, !53}
!147 = !{!143, !148, !149}
!148 = !DILocalVariable(name: "i", arg: 2, scope: !144, file: !56, line: 188, type: !78)
!149 = !DILocalVariable(name: "x", arg: 3, scope: !144, file: !56, line: 188, type: !53)
!150 = !DILocation(line: 0, scope: !144, inlinedAt: !151)
!151 = distinct !DILocation(line: 84, column: 13, scope: !142)
!152 = !DILocation(line: 85, column: 11, scope: !142)
!153 = !DILocation(line: 88, column: 45, scope: !154)
!154 = distinct !DILexicalBlock(scope: !138, file: !1, line: 87, column: 11)
!155 = !DILocation(line: 88, column: 13, scope: !154)
!156 = !DILocation(line: 0, scope: !144, inlinedAt: !157)
!157 = distinct !DILocation(line: 90, column: 13, scope: !154)
!158 = !DILocation(line: 0, scope: !138)
!159 = !DILocation(line: 196, column: 6, scope: !144, inlinedAt: !158)
!160 = !DILocation(line: 196, column: 26, scope: !144, inlinedAt: !158)
!161 = !DILocation(line: 95, column: 5, scope: !81)
!162 = !DILocation(line: 0, scope: !81)
!163 = !DILocation(line: 96, column: 1, scope: !50)
!164 = !DISubprogram(name: "gsl_vector_subvector", scope: !56, file: !56, line: 103, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{!86, !54, !60, !60}
!167 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !168, file: !168, line: 91, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!169 = !DISubroutineType(types: !170)
!170 = !{!53, !117}
!171 = !DISubprogram(name: "hypot", scope: !172, file: !172, line: 147, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!173 = !DISubroutineType(types: !174)
!174 = !{!53, !53, !53}
!175 = !DISubprogram(name: "gsl_blas_dscal", scope: !168, file: !168, line: 173, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !53, !54}
!178 = distinct !DISubprogram(name: "gsl_linalg_householder_hm", scope: !1, file: !1, line: 99, type: !179, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!179 = !DISubroutineType(types: !180)
!180 = !{!5, !53, !117, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !183, line: 50, baseType: !184)
!183 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 42, size: 384, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !184, file: !183, line: 44, baseType: !60, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !184, file: !183, line: 45, baseType: !60, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !184, file: !183, line: 46, baseType: !60, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !184, file: !183, line: 47, baseType: !65, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !184, file: !183, line: 48, baseType: !67, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !184, file: !183, line: 49, baseType: !5, size: 32, offset: 320)
!192 = !{!193, !194, !195, !196, !198, !199, !203, !205, !209}
!193 = !DILocalVariable(name: "tau", arg: 1, scope: !178, file: !1, line: 99, type: !53)
!194 = !DILocalVariable(name: "v", arg: 2, scope: !178, file: !1, line: 99, type: !117)
!195 = !DILocalVariable(name: "A", arg: 3, scope: !178, file: !1, line: 99, type: !181)
!196 = !DILocalVariable(name: "i", scope: !197, file: !1, line: 131, type: !60)
!197 = distinct !DILexicalBlock(scope: !178, file: !1, line: 130, column: 3)
!198 = !DILocalVariable(name: "j", scope: !197, file: !1, line: 131, type: !60)
!199 = !DILocalVariable(name: "wj", scope: !200, file: !1, line: 137, type: !53)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 134, column: 7)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 133, column: 5)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 133, column: 5)
!203 = !DILocalVariable(name: "A0j", scope: !204, file: !1, line: 148, type: !53)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 147, column: 9)
!205 = !DILocalVariable(name: "Aij", scope: !206, file: !1, line: 156, type: !53)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 155, column: 11)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 154, column: 9)
!208 = distinct !DILexicalBlock(scope: !200, file: !1, line: 154, column: 9)
!209 = !DILocalVariable(name: "vi", scope: !206, file: !1, line: 157, type: !53)
!210 = !DILocation(line: 0, scope: !178)
!211 = !DILocation(line: 103, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !178, file: !1, line: 103, column: 7)
!213 = !DILocation(line: 103, column: 7, scope: !178)
!214 = !{!215, !99, i64 8}
!215 = !{!"", !99, i64 0, !99, i64 8, !99, i64 16, !102, i64 24, !102, i64 32, !103, i64 40}
!216 = !DILocation(line: 0, scope: !197)
!217 = !DILocation(line: 133, column: 19, scope: !201)
!218 = !DILocation(line: 133, column: 5, scope: !202)
!219 = !{!215, !102, i64 24}
!220 = !{!215, !99, i64 0}
!221 = !DILocalVariable(name: "m", arg: 1, scope: !222, file: !183, line: 270, type: !225)
!222 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !183, file: !183, line: 270, type: !223, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!223 = !DISubroutineType(types: !224)
!224 = !{!53, !225, !78, !78}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!227 = !{!221, !228, !229}
!228 = !DILocalVariable(name: "i", arg: 2, scope: !222, file: !183, line: 270, type: !78)
!229 = !DILocalVariable(name: "j", arg: 3, scope: !222, file: !183, line: 270, type: !78)
!230 = !DILocation(line: 0, scope: !222, inlinedAt: !231)
!231 = distinct !DILocation(line: 137, column: 21, scope: !200)
!232 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !231)
!233 = !DILocation(line: 0, scope: !200)
!234 = !DILocation(line: 139, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !200, file: !1, line: 139, column: 9)
!236 = !DILocation(line: 0, scope: !222, inlinedAt: !237)
!237 = distinct !DILocation(line: 148, column: 24, scope: !204)
!238 = !DILocation(line: 0, scope: !204)
!239 = !DILocation(line: 149, column: 46, scope: !204)
!240 = !DILocation(line: 149, column: 40, scope: !204)
!241 = !DILocalVariable(name: "m", arg: 1, scope: !242, file: !183, line: 290, type: !181)
!242 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !183, file: !183, line: 290, type: !243, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !246)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !181, !78, !78, !245}
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!246 = !{!241, !247, !248, !249}
!247 = !DILocalVariable(name: "i", arg: 2, scope: !242, file: !183, line: 290, type: !78)
!248 = !DILocalVariable(name: "j", arg: 3, scope: !242, file: !183, line: 290, type: !78)
!249 = !DILocalVariable(name: "x", arg: 4, scope: !242, file: !183, line: 290, type: !245)
!250 = !DILocation(line: 0, scope: !242, inlinedAt: !251)
!251 = distinct !DILocation(line: 149, column: 11, scope: !204)
!252 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !251)
!253 = !DILocation(line: 154, column: 9, scope: !208)
!254 = !{!215, !99, i64 16}
!255 = !{!98, !99, i64 8}
!256 = !DILocation(line: 0, scope: !222, inlinedAt: !257)
!257 = distinct !DILocation(line: 141, column: 19, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 140, column: 11)
!259 = distinct !DILexicalBlock(scope: !235, file: !1, line: 139, column: 9)
!260 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !257)
!261 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !257)
!262 = !DILocation(line: 0, scope: !114, inlinedAt: !263)
!263 = distinct !DILocation(line: 141, column: 43, scope: !258)
!264 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !263)
!265 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !263)
!266 = !DILocation(line: 141, column: 41, scope: !258)
!267 = !DILocation(line: 141, column: 16, scope: !258)
!268 = !DILocation(line: 139, column: 36, scope: !259)
!269 = distinct !{!269, !234, !270, !271}
!270 = !DILocation(line: 142, column: 11, scope: !235)
!271 = !{!"llvm.loop.mustprogress"}
!272 = !DILocation(line: 0, scope: !222, inlinedAt: !273)
!273 = distinct !DILocation(line: 156, column: 26, scope: !206)
!274 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !273)
!275 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !273)
!276 = !DILocation(line: 0, scope: !206)
!277 = !DILocation(line: 0, scope: !114, inlinedAt: !278)
!278 = distinct !DILocation(line: 157, column: 25, scope: !206)
!279 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !278)
!280 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !278)
!281 = !DILocation(line: 158, column: 48, scope: !206)
!282 = !DILocation(line: 158, column: 53, scope: !206)
!283 = !DILocation(line: 158, column: 42, scope: !206)
!284 = !DILocation(line: 0, scope: !242, inlinedAt: !285)
!285 = distinct !DILocation(line: 158, column: 13, scope: !206)
!286 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !285)
!287 = !DILocation(line: 154, column: 36, scope: !207)
!288 = distinct !{!288, !253, !289, !271}
!289 = !DILocation(line: 159, column: 11, scope: !208)
!290 = !DILocation(line: 133, column: 32, scope: !201)
!291 = distinct !{!291, !218, !292, !271}
!292 = !DILocation(line: 160, column: 7, scope: !202)
!293 = !DILocation(line: 165, column: 1, scope: !178)
!294 = distinct !DISubprogram(name: "gsl_linalg_householder_mh", scope: !1, file: !1, line: 168, type: !179, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!295 = !{!296, !297, !298, !299, !301, !302, !306, !308, !312}
!296 = !DILocalVariable(name: "tau", arg: 1, scope: !294, file: !1, line: 168, type: !53)
!297 = !DILocalVariable(name: "v", arg: 2, scope: !294, file: !1, line: 168, type: !117)
!298 = !DILocalVariable(name: "A", arg: 3, scope: !294, file: !1, line: 168, type: !181)
!299 = !DILocalVariable(name: "i", scope: !300, file: !1, line: 201, type: !60)
!300 = distinct !DILexicalBlock(scope: !294, file: !1, line: 200, column: 3)
!301 = !DILocalVariable(name: "j", scope: !300, file: !1, line: 201, type: !60)
!302 = !DILocalVariable(name: "wi", scope: !303, file: !1, line: 205, type: !53)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 204, column: 7)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 203, column: 5)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 203, column: 5)
!306 = !DILocalVariable(name: "Ai0", scope: !307, file: !1, line: 215, type: !53)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 214, column: 9)
!308 = !DILocalVariable(name: "vj", scope: !309, file: !1, line: 223, type: !53)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 222, column: 11)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 221, column: 9)
!311 = distinct !DILexicalBlock(scope: !303, file: !1, line: 221, column: 9)
!312 = !DILocalVariable(name: "Aij", scope: !309, file: !1, line: 224, type: !53)
!313 = !DILocation(line: 0, scope: !294)
!314 = !DILocation(line: 173, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !294, file: !1, line: 173, column: 7)
!316 = !DILocation(line: 173, column: 7, scope: !294)
!317 = !DILocation(line: 0, scope: !300)
!318 = !DILocation(line: 203, column: 19, scope: !304)
!319 = !DILocation(line: 203, column: 5, scope: !305)
!320 = !DILocation(line: 0, scope: !222, inlinedAt: !321)
!321 = distinct !DILocation(line: 205, column: 21, scope: !303)
!322 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !321)
!323 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !321)
!324 = !DILocation(line: 0, scope: !303)
!325 = !DILocation(line: 207, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !303, file: !1, line: 207, column: 9)
!327 = !DILocation(line: 0, scope: !222, inlinedAt: !328)
!328 = distinct !DILocation(line: 215, column: 24, scope: !307)
!329 = !DILocation(line: 0, scope: !307)
!330 = !DILocation(line: 216, column: 46, scope: !307)
!331 = !DILocation(line: 216, column: 40, scope: !307)
!332 = !DILocation(line: 0, scope: !242, inlinedAt: !333)
!333 = distinct !DILocation(line: 216, column: 11, scope: !307)
!334 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !333)
!335 = !DILocation(line: 221, column: 9, scope: !311)
!336 = !DILocation(line: 0, scope: !222, inlinedAt: !337)
!337 = distinct !DILocation(line: 209, column: 19, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 208, column: 11)
!339 = distinct !DILexicalBlock(scope: !326, file: !1, line: 207, column: 9)
!340 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !337)
!341 = !DILocation(line: 0, scope: !114, inlinedAt: !342)
!342 = distinct !DILocation(line: 209, column: 43, scope: !338)
!343 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !342)
!344 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !342)
!345 = !DILocation(line: 209, column: 41, scope: !338)
!346 = !DILocation(line: 209, column: 16, scope: !338)
!347 = !DILocation(line: 207, column: 36, scope: !339)
!348 = distinct !{!348, !325, !349, !271}
!349 = !DILocation(line: 210, column: 11, scope: !326)
!350 = distinct !{!350, !351}
!351 = !{!"llvm.loop.unroll.disable"}
!352 = !DILocation(line: 0, scope: !114, inlinedAt: !353)
!353 = distinct !DILocation(line: 223, column: 25, scope: !309)
!354 = !DILocation(line: 183, column: 20, scope: !114, inlinedAt: !353)
!355 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !353)
!356 = !DILocation(line: 0, scope: !309)
!357 = !DILocation(line: 0, scope: !222, inlinedAt: !358)
!358 = distinct !DILocation(line: 224, column: 26, scope: !309)
!359 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !358)
!360 = !DILocation(line: 225, column: 53, scope: !309)
!361 = !DILocation(line: 225, column: 42, scope: !309)
!362 = !DILocation(line: 0, scope: !242, inlinedAt: !363)
!363 = distinct !DILocation(line: 225, column: 13, scope: !309)
!364 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !363)
!365 = !DILocation(line: 221, column: 36, scope: !310)
!366 = distinct !{!366, !335, !367, !271}
!367 = !DILocation(line: 226, column: 11, scope: !311)
!368 = !DILocation(line: 203, column: 32, scope: !304)
!369 = distinct !{!369, !319, !370, !271}
!370 = !DILocation(line: 227, column: 7, scope: !305)
!371 = !DILocation(line: 232, column: 1, scope: !294)
!372 = distinct !DISubprogram(name: "gsl_linalg_householder_hv", scope: !1, file: !1, line: 235, type: !373, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!5, !53, !117, !54}
!375 = !{!376, !377, !378, !379, !380, !382, !383, !384, !391}
!376 = !DILocalVariable(name: "tau", arg: 1, scope: !372, file: !1, line: 235, type: !53)
!377 = !DILocalVariable(name: "v", arg: 2, scope: !372, file: !1, line: 235, type: !117)
!378 = !DILocalVariable(name: "w", arg: 3, scope: !372, file: !1, line: 235, type: !54)
!379 = !DILocalVariable(name: "N", scope: !372, file: !1, line: 238, type: !78)
!380 = !DILocalVariable(name: "w0", scope: !381, file: !1, line: 246, type: !53)
!381 = distinct !DILexicalBlock(scope: !372, file: !1, line: 243, column: 3)
!382 = !DILocalVariable(name: "d1", scope: !381, file: !1, line: 247, type: !53)
!383 = !DILocalVariable(name: "d", scope: !381, file: !1, line: 247, type: !53)
!384 = !DILocalVariable(name: "v1", scope: !381, file: !1, line: 249, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !56, line: 64, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !56, line: 62, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 59, size: 320, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !388, file: !56, line: 61, baseType: !55, size: 320)
!391 = !DILocalVariable(name: "w1", scope: !381, file: !1, line: 250, type: !85)
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !381)
!394 = distinct !DIAssignID()
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !372)
!397 = !DILocation(line: 240, column: 11, scope: !398)
!398 = distinct !DILexicalBlock(scope: !372, file: !1, line: 240, column: 7)
!399 = !DILocation(line: 240, column: 7, scope: !372)
!400 = !DILocation(line: 238, column: 23, scope: !372)
!401 = !DILocation(line: 0, scope: !114, inlinedAt: !402)
!402 = distinct !DILocation(line: 246, column: 17, scope: !381)
!403 = !DILocation(line: 183, column: 13, scope: !114, inlinedAt: !402)
!404 = !DILocation(line: 183, column: 10, scope: !114, inlinedAt: !402)
!405 = !DILocation(line: 247, column: 5, scope: !381)
!406 = !DILocation(line: 249, column: 5, scope: !381)
!407 = !DILocation(line: 249, column: 66, scope: !381)
!408 = !DILocation(line: 249, column: 32, scope: !381)
!409 = !DILocation(line: 250, column: 5, scope: !381)
!410 = !DILocation(line: 250, column: 26, scope: !381)
!411 = !DILocation(line: 253, column: 5, scope: !381)
!412 = !DILocation(line: 256, column: 14, scope: !381)
!413 = !DILocation(line: 256, column: 12, scope: !381)
!414 = !DILocation(line: 260, column: 36, scope: !381)
!415 = !DILocation(line: 260, column: 30, scope: !381)
!416 = !DILocation(line: 0, scope: !144, inlinedAt: !417)
!417 = distinct !DILocation(line: 260, column: 5, scope: !381)
!418 = !DILocation(line: 196, column: 6, scope: !144, inlinedAt: !417)
!419 = !DILocation(line: 196, column: 26, scope: !144, inlinedAt: !417)
!420 = !DILocation(line: 261, column: 21, scope: !381)
!421 = !DILocation(line: 261, column: 26, scope: !381)
!422 = !DILocation(line: 261, column: 5, scope: !381)
!423 = !DILocation(line: 262, column: 3, scope: !372)
!424 = !DILocation(line: 264, column: 3, scope: !372)
!425 = !DILocation(line: 265, column: 1, scope: !372)
!426 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !56, file: !56, line: 114, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!387, !117, !60, !60}
!429 = !DISubprogram(name: "gsl_blas_ddot", scope: !168, file: !168, line: 66, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DISubroutineType(types: !431)
!431 = !{!5, !117, !117, !65}
!432 = !DISubprogram(name: "gsl_blas_daxpy", scope: !168, file: !168, line: 121, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = distinct !DISubprogram(name: "gsl_linalg_householder_hm1", scope: !1, file: !1, line: 269, type: !434, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!5, !53, !181}
!436 = !{!437, !438, !439, !442, !443, !445, !446, !450, !454, !458, !459}
!437 = !DILocalVariable(name: "tau", arg: 1, scope: !433, file: !1, line: 269, type: !53)
!438 = !DILocalVariable(name: "A", arg: 2, scope: !433, file: !1, line: 269, type: !181)
!439 = !DILocalVariable(name: "i", scope: !440, file: !1, line: 277, type: !60)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 276, column: 5)
!441 = distinct !DILexicalBlock(scope: !433, file: !1, line: 275, column: 7)
!442 = !DILocalVariable(name: "j", scope: !440, file: !1, line: 277, type: !60)
!443 = !DILocalVariable(name: "i", scope: !444, file: !1, line: 322, type: !60)
!444 = distinct !DILexicalBlock(scope: !433, file: !1, line: 321, column: 3)
!445 = !DILocalVariable(name: "j", scope: !444, file: !1, line: 322, type: !60)
!446 = !DILocalVariable(name: "wj", scope: !447, file: !1, line: 326, type: !53)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 325, column: 7)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 324, column: 5)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 324, column: 5)
!450 = !DILocalVariable(name: "vi", scope: !451, file: !1, line: 330, type: !53)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 329, column: 11)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 328, column: 9)
!453 = distinct !DILexicalBlock(scope: !447, file: !1, line: 328, column: 9)
!454 = !DILocalVariable(name: "vi", scope: !455, file: !1, line: 340, type: !53)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 339, column: 11)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 338, column: 9)
!457 = distinct !DILexicalBlock(scope: !447, file: !1, line: 338, column: 9)
!458 = !DILocalVariable(name: "Aij", scope: !455, file: !1, line: 341, type: !53)
!459 = !DILocalVariable(name: "vi", scope: !460, file: !1, line: 348, type: !53)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 347, column: 7)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 346, column: 5)
!462 = distinct !DILexicalBlock(scope: !444, file: !1, line: 346, column: 5)
!463 = !DILocation(line: 0, scope: !433)
!464 = !DILocation(line: 275, column: 11, scope: !441)
!465 = !DILocation(line: 275, column: 7, scope: !433)
!466 = !DILocation(line: 0, scope: !444)
!467 = !DILocation(line: 324, column: 19, scope: !448)
!468 = !DILocation(line: 324, column: 5, scope: !449)
!469 = !DILocation(line: 0, scope: !242, inlinedAt: !470)
!470 = distinct !DILocation(line: 279, column: 7, scope: !440)
!471 = !DILocation(line: 305, column: 6, scope: !242, inlinedAt: !470)
!472 = !DILocation(line: 305, column: 18, scope: !242, inlinedAt: !470)
!473 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !470)
!474 = !DILocation(line: 0, scope: !440)
!475 = !DILocation(line: 281, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 281, column: 7)
!477 = distinct !DILexicalBlock(scope: !440, file: !1, line: 281, column: 7)
!478 = !DILocation(line: 281, column: 7, scope: !477)
!479 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !480)
!480 = distinct !DILocation(line: 283, column: 11, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 282, column: 9)
!482 = !DILocation(line: 0, scope: !242, inlinedAt: !480)
!483 = !DILocation(line: 286, column: 21, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 286, column: 7)
!485 = distinct !DILexicalBlock(scope: !440, file: !1, line: 286, column: 7)
!486 = !DILocation(line: 286, column: 7, scope: !485)
!487 = !DILocation(line: 0, scope: !242, inlinedAt: !488)
!488 = distinct !DILocation(line: 288, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !1, line: 287, column: 9)
!490 = !DILocation(line: 305, column: 13, scope: !242, inlinedAt: !488)
!491 = !DILocation(line: 305, column: 3, scope: !242, inlinedAt: !488)
!492 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !488)
!493 = !DILocation(line: 286, column: 34, scope: !484)
!494 = distinct !{!494, !486, !495, !271}
!495 = !DILocation(line: 289, column: 9, scope: !485)
!496 = !DILocation(line: 0, scope: !447)
!497 = !DILocation(line: 328, column: 9, scope: !453)
!498 = !DILocation(line: 0, scope: !242, inlinedAt: !499)
!499 = distinct !DILocation(line: 336, column: 9, scope: !447)
!500 = !DILocation(line: 305, column: 3, scope: !242, inlinedAt: !499)
!501 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !499)
!502 = !DILocation(line: 338, column: 9, scope: !457)
!503 = !DILocation(line: 346, column: 19, scope: !461)
!504 = !DILocation(line: 346, column: 5, scope: !462)
!505 = !DILocation(line: 0, scope: !222, inlinedAt: !506)
!506 = distinct !DILocation(line: 330, column: 25, scope: !451)
!507 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !506)
!508 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !506)
!509 = !DILocation(line: 0, scope: !451)
!510 = !DILocation(line: 0, scope: !222, inlinedAt: !511)
!511 = distinct !DILocation(line: 331, column: 19, scope: !451)
!512 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !511)
!513 = !DILocation(line: 331, column: 41, scope: !451)
!514 = !DILocation(line: 331, column: 16, scope: !451)
!515 = !DILocation(line: 328, column: 36, scope: !452)
!516 = distinct !{!516, !497, !517, !271}
!517 = !DILocation(line: 332, column: 11, scope: !453)
!518 = distinct !{!518, !351}
!519 = !DILocation(line: 336, column: 40, scope: !447)
!520 = !DILocation(line: 0, scope: !222, inlinedAt: !521)
!521 = distinct !DILocation(line: 340, column: 25, scope: !455)
!522 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !521)
!523 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !521)
!524 = !DILocation(line: 0, scope: !455)
!525 = !DILocation(line: 0, scope: !222, inlinedAt: !526)
!526 = distinct !DILocation(line: 341, column: 26, scope: !455)
!527 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !526)
!528 = !DILocation(line: 342, column: 48, scope: !455)
!529 = !DILocation(line: 342, column: 53, scope: !455)
!530 = !DILocation(line: 342, column: 42, scope: !455)
!531 = !DILocation(line: 0, scope: !242, inlinedAt: !532)
!532 = distinct !DILocation(line: 342, column: 13, scope: !455)
!533 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !532)
!534 = !DILocation(line: 338, column: 36, scope: !456)
!535 = distinct !{!535, !502, !536, !271}
!536 = !DILocation(line: 343, column: 11, scope: !457)
!537 = !DILocation(line: 324, column: 32, scope: !448)
!538 = distinct !{!538, !468, !539, !271}
!539 = !DILocation(line: 344, column: 7, scope: !449)
!540 = !DILocation(line: 0, scope: !222, inlinedAt: !541)
!541 = distinct !DILocation(line: 348, column: 21, scope: !460)
!542 = !DILocation(line: 285, column: 20, scope: !222, inlinedAt: !541)
!543 = !DILocation(line: 285, column: 10, scope: !222, inlinedAt: !541)
!544 = !DILocation(line: 0, scope: !460)
!545 = !DILocation(line: 349, column: 38, scope: !460)
!546 = !DILocation(line: 0, scope: !242, inlinedAt: !547)
!547 = distinct !DILocation(line: 349, column: 9, scope: !460)
!548 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !547)
!549 = !DILocation(line: 346, column: 32, scope: !461)
!550 = distinct !{!550, !504, !551, !271}
!551 = !DILocation(line: 350, column: 7, scope: !462)
!552 = distinct !{!552, !351}
!553 = !DILocation(line: 352, column: 34, scope: !444)
!554 = !DILocation(line: 0, scope: !242, inlinedAt: !555)
!555 = distinct !DILocation(line: 352, column: 5, scope: !444)
!556 = !DILocation(line: 305, column: 27, scope: !242, inlinedAt: !555)
!557 = !DILocation(line: 356, column: 3, scope: !433)
!558 = distinct !{!558, !351}
!559 = !DILocation(line: 357, column: 1, scope: !433)
