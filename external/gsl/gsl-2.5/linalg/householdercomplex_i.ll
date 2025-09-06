; ModuleID = 'householdercomplex.ll'
source_filename = "householdercomplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_complex_view = type { %struct.gsl_vector_complex }
%struct.gsl_vector_complex = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_matrix_complex = type { i64, i64, i64, ptr, ptr, i32 }
%struct.gsl_complex = type { [2 x double] }
%struct._gsl_vector_complex_const_view = type { %struct.gsl_vector_complex }

; Function Attrs: nounwind uwtable
define dso_local { double, double } @gsl_linalg_complex_householder_transform(ptr noundef %0) local_unnamed_addr #0 !dbg !61 {
  %2 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !102, metadata !DIExpression(), metadata !119, metadata ptr %2, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !86, metadata !DIExpression()), !dbg !121
  %3 = load i64, ptr %0, align 8, !dbg !122, !tbaa !123
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !87, metadata !DIExpression()), !dbg !121
  %4 = icmp eq i64 %3, 1, !dbg !130
  br i1 %4, label %5, label %22, !dbg !131

5:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !140
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !140
  %6 = getelementptr inbounds %struct.gsl_vector_complex, ptr %0, i64 0, i32 2, !dbg !142
  %7 = load ptr, ptr %6, align 8, !dbg !142, !tbaa !143
  %8 = load double, ptr %7, align 8, !dbg !144, !tbaa.struct !145
  %9 = getelementptr inbounds i8, ptr %7, i64 8, !dbg !144
  %10 = load double, ptr %9, align 8, !dbg !144, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %8, metadata !89, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %10, metadata !89, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  %11 = tail call double @gsl_complex_abs(double %8, double %10) #5, !dbg !149
  tail call void @llvm.dbg.value(metadata double %11, metadata !92, metadata !DIExpression()), !dbg !148
  %12 = fcmp oge double %8, 0.000000e+00, !dbg !150
  %13 = fneg double %11, !dbg !151
  %14 = select i1 %12, double %13, double %11, !dbg !151
  tail call void @llvm.dbg.value(metadata double %14, metadata !93, metadata !DIExpression()), !dbg !148
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !152
  br i1 %15, label %53, label %16, !dbg !153

16:                                               ; preds = %5
  %handler_result = call double @fSubHandlerDouble(double %14, double %8), !dbg !154
  %17 = fdiv double %handler_result, %14, !dbg !154
  tail call void @llvm.dbg.value(metadata double %17, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  %18 = fneg double %10, !dbg !155
  %19 = fdiv double %18, %14, !dbg !156
  tail call void @llvm.dbg.value(metadata double %19, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %14, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !157
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !157
  tail call void @llvm.dbg.value(metadata double %14, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !165
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !165
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !163, metadata !DIExpression()), !dbg !165
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !165
  %20 = load ptr, ptr %6, align 8, !dbg !167, !tbaa !143
  store double %14, ptr %20, align 8, !dbg !168, !tbaa.struct !145
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !168
  store double 0.000000e+00, ptr %21, align 8, !dbg !168, !tbaa.struct !147
  br label %53

22:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5, !dbg !169
  %23 = add i64 %3, -1, !dbg !170
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %2, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %23) #5, !dbg !171
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !172
  %24 = getelementptr inbounds %struct.gsl_vector_complex, ptr %0, i64 0, i32 2, !dbg !174
  %25 = load ptr, ptr %24, align 8, !dbg !174, !tbaa !143
  %26 = load double, ptr %25, align 8, !dbg !175, !tbaa.struct !145
  %27 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !175
  %28 = load double, ptr %27, align 8, !dbg !175, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %26, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !120
  tail call void @llvm.dbg.value(metadata double %28, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !120
  %29 = call double @gsl_complex_abs(double %26, double %28) #5, !dbg !176
  tail call void @llvm.dbg.value(metadata double %29, metadata !109, metadata !DIExpression()), !dbg !120
  %30 = call double @gsl_blas_dznrm2(ptr noundef nonnull %2) #5, !dbg !177
  tail call void @llvm.dbg.value(metadata double %30, metadata !110, metadata !DIExpression()), !dbg !120
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !178
  %32 = fcmp oeq double %28, 0.000000e+00
  %33 = select i1 %31, i1 %32, i1 false, !dbg !179
  br i1 %33, label %50, label %34, !dbg !179

34:                                               ; preds = %22
  %35 = fcmp oge double %26, 0.000000e+00, !dbg !180
  %36 = call double @hypot(double noundef %29, double noundef %30) #5, !dbg !181
  %37 = fneg double %36, !dbg !182
  %38 = select i1 %35, double %37, double %36, !dbg !182
  tail call void @llvm.dbg.value(metadata double %38, metadata !101, metadata !DIExpression()), !dbg !120
  %handler_result1 = call double @fSubHandlerDouble(double %38, double %26), !dbg !183
  %39 = fdiv double %handler_result1, %38, !dbg !183
  tail call void @llvm.dbg.value(metadata double %39, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !120
  %40 = fneg double %28, !dbg !184
  %41 = fdiv double %40, %38, !dbg !185
  tail call void @llvm.dbg.value(metadata double %41, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !120
  %42 = call { double, double } @gsl_complex_sub_real(double %26, double %28, double noundef %38) #5, !dbg !186
  %43 = extractvalue { double, double } %42, 0, !dbg !186
  tail call void @llvm.dbg.value(metadata double %43, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !187
  %44 = extractvalue { double, double } %42, 1, !dbg !186
  tail call void @llvm.dbg.value(metadata double %44, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !187
  %45 = call { double, double } @gsl_complex_inverse(double %43, double %44) #5, !dbg !188
  %46 = extractvalue { double, double } %45, 0, !dbg !188
  tail call void @llvm.dbg.value(metadata double %46, metadata !116, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !187
  %47 = extractvalue { double, double } %45, 1, !dbg !188
  tail call void @llvm.dbg.value(metadata double %47, metadata !116, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !187
  call void @gsl_blas_zscal(double %46, double %47, ptr noundef nonnull %2) #5, !dbg !189
  tail call void @llvm.dbg.value(metadata double %38, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !190
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !190
  tail call void @llvm.dbg.value(metadata double %38, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !191
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !191
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !163, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !191
  %48 = load ptr, ptr %24, align 8, !dbg !193, !tbaa !143
  store double %38, ptr %48, align 8, !dbg !194, !tbaa.struct !145
  %49 = getelementptr inbounds i8, ptr %48, i64 8, !dbg !194
  store double 0.000000e+00, ptr %49, align 8, !dbg !194, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %39, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %41, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  br label %50, !dbg !195

50:                                               ; preds = %34, %22
  %51 = phi double [ %39, %34 ], [ 0.000000e+00, %22 ], !dbg !120
  %52 = phi double [ %41, %34 ], [ 0.000000e+00, %22 ], !dbg !120
  tail call void @llvm.dbg.value(metadata double %52, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %51, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5, !dbg !196
  br label %53

53:                                               ; preds = %50, %16, %5
  %54 = phi double [ %51, %50 ], [ %17, %16 ], [ 0.000000e+00, %5 ], !dbg !197
  %55 = phi double [ %52, %50 ], [ %19, %16 ], [ 0.000000e+00, %5 ], !dbg !197
  tail call void @llvm.dbg.value(metadata double %55, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %54, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  %56 = insertvalue { double, double } poison, double %54, 0, !dbg !198
  %57 = insertvalue { double, double } %56, double %55, 1, !dbg !198
  ret { double, double } %57, !dbg !198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !199 double @gsl_complex_abs(double, double) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !203 void @gsl_vector_complex_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !206 double @gsl_blas_dznrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !210 double @hypot(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !214 { double, double } @gsl_complex_sub_real(double, double, double noundef) local_unnamed_addr #2

declare !dbg !217 { double, double } @gsl_complex_inverse(double, double) local_unnamed_addr #2

declare !dbg !220 void @gsl_blas_zscal(double, double, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_hm(double %0, double %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !224 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !265
  tail call void @llvm.dbg.value(metadata double %1, metadata !239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !241, metadata !DIExpression()), !dbg !265
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !266
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !268
  br i1 %7, label %120, label %8, !dbg !268

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !265
  %10 = load i64, ptr %9, align 8, !dbg !269, !tbaa !270
  %11 = icmp eq i64 %10, 0, !dbg !272
  br i1 %11, label %120, label %12, !dbg !273

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %3, align 8, !dbg !274, !tbaa !275
  br label %18, !dbg !273

18:                                               ; preds = %115, %12
  %19 = phi i64 [ %17, %12 ], [ %116, %115 ], !dbg !274
  %20 = phi i64 [ 0, %12 ], [ %117, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !243, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !284, metadata !DIExpression()), !dbg !285
  %21 = load ptr, ptr %13, align 8, !dbg !287, !tbaa !288
  %22 = shl i64 %20, 1, !dbg !289
  %23 = getelementptr inbounds double, ptr %21, i64 %22, !dbg !290
  %24 = load double, ptr %23, align 8, !dbg !291, !tbaa.struct !145
  %25 = getelementptr inbounds i8, ptr %23, i64 8, !dbg !291
  %26 = load double, ptr %25, align 8, !dbg !291, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double poison, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata double poison, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata i64 1, metadata !242, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata double %26, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata double %24, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !292
  %27 = icmp ugt i64 %19, 1, !dbg !293
  br i1 %27, label %28, label %61, !dbg !294

28:                                               ; preds = %28, %18
  %29 = phi double [ %58, %28 ], [ %24, %18 ]
  %30 = phi double [ %57, %28 ], [ %26, %18 ]
  %31 = phi i64 [ %56, %28 ], [ 1, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !242, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !283, metadata !DIExpression()), !dbg !295
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !284, metadata !DIExpression()), !dbg !295
  %32 = load ptr, ptr %13, align 8, !dbg !297, !tbaa !288
  %33 = load i64, ptr %14, align 8, !dbg !298, !tbaa !299
  %34 = mul i64 %33, %31, !dbg !300
  %35 = add i64 %34, %20, !dbg !301
  %36 = shl i64 %35, 1, !dbg !302
  %37 = getelementptr inbounds double, ptr %32, i64 %36, !dbg !303
  %38 = load double, ptr %37, align 8, !dbg !304, !tbaa.struct !145
  %39 = getelementptr inbounds i8, ptr %37, i64 8, !dbg !304
  %40 = load double, ptr %39, align 8, !dbg !304, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %38, metadata !249, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !305
  tail call void @llvm.dbg.value(metadata double %40, metadata !249, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !305
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !306
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !139, metadata !DIExpression()), !dbg !306
  %41 = load ptr, ptr %15, align 8, !dbg !308, !tbaa !143
  %42 = shl i64 %31, 1, !dbg !308
  %43 = load i64, ptr %16, align 8, !dbg !308, !tbaa !309
  %44 = mul i64 %42, %43, !dbg !308
  %45 = getelementptr inbounds double, ptr %41, i64 %44, !dbg !308
  %46 = load double, ptr %45, align 8, !dbg !310, !tbaa.struct !145
  %47 = getelementptr inbounds i8, ptr %45, i64 8, !dbg !310
  %48 = load double, ptr %47, align 8, !dbg !310, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %46, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !305
  tail call void @llvm.dbg.value(metadata double %48, metadata !253, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !305
  %49 = tail call { double, double } @gsl_complex_conjugate(double %46, double %48) #5, !dbg !311
  %50 = extractvalue { double, double } %49, 0, !dbg !311
  %51 = extractvalue { double, double } %49, 1, !dbg !311
  %52 = tail call { double, double } @gsl_complex_mul(double %38, double %40, double %50, double %51) #5, !dbg !312
  %53 = extractvalue { double, double } %52, 0, !dbg !312
  tail call void @llvm.dbg.value(metadata double %53, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !305
  %54 = extractvalue { double, double } %52, 1, !dbg !312
  tail call void @llvm.dbg.value(metadata double %54, metadata !254, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !305
  %55 = tail call { double, double } @gsl_complex_add(double %29, double %30, double %53, double %54) #5, !dbg !313
  tail call void @llvm.dbg.value(metadata double poison, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata double poison, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !292
  %56 = add nuw i64 %31, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !242, metadata !DIExpression()), !dbg !265
  %57 = extractvalue { double, double } %55, 1, !dbg !292
  %58 = extractvalue { double, double } %55, 0, !dbg !292
  tail call void @llvm.dbg.value(metadata double %57, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata double %58, metadata !248, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !292
  %59 = load i64, ptr %3, align 8, !dbg !274, !tbaa !275
  %60 = icmp ult i64 %56, %59, !dbg !293
  br i1 %60, label %28, label %61, !dbg !294, !llvm.loop !315

61:                                               ; preds = %28, %18
  %62 = phi double [ %26, %18 ], [ %57, %28 ], !dbg !292
  %63 = phi double [ %24, %18 ], [ %58, %28 ], !dbg !292
  %64 = tail call { double, double } @gsl_complex_mul(double %0, double %1, double %63, double %62) #5, !dbg !318
  %65 = extractvalue { double, double } %64, 0, !dbg !318
  %66 = extractvalue { double, double } %64, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata double %65, metadata !244, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata double %66, metadata !244, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !292
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !319
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !284, metadata !DIExpression()), !dbg !319
  %67 = load ptr, ptr %13, align 8, !dbg !321, !tbaa !288
  %68 = getelementptr inbounds double, ptr %67, i64 %22, !dbg !322
  %69 = load double, ptr %68, align 8, !dbg !323, !tbaa.struct !145
  %70 = getelementptr inbounds i8, ptr %68, i64 8, !dbg !323
  %71 = load double, ptr %70, align 8, !dbg !323, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %69, metadata !255, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !324
  tail call void @llvm.dbg.value(metadata double %71, metadata !255, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !324
  %72 = tail call { double, double } @gsl_complex_sub(double %69, double %71, double %65, double %66) #5, !dbg !325
  %73 = extractvalue { double, double } %72, 0, !dbg !325
  tail call void @llvm.dbg.value(metadata double %73, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !324
  %74 = extractvalue { double, double } %72, 1, !dbg !325
  tail call void @llvm.dbg.value(metadata double %74, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !324
  tail call void @llvm.dbg.value(metadata double %73, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata double %74, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !331, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata i64 0, metadata !332, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !333, metadata !DIExpression()), !dbg !334
  %75 = load ptr, ptr %13, align 8, !dbg !336, !tbaa !288
  %76 = getelementptr inbounds double, ptr %75, i64 %22, !dbg !337
  store double %73, ptr %76, align 8, !dbg !338, !tbaa.struct !145
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !338
  store double %74, ptr %77, align 8, !dbg !338, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !242, metadata !DIExpression()), !dbg !265
  %78 = load i64, ptr %3, align 8, !dbg !339, !tbaa !275
  %79 = icmp ugt i64 %78, 1, !dbg !340
  br i1 %79, label %80, label %115, !dbg !341

80:                                               ; preds = %80, %61
  %81 = phi i64 [ %112, %80 ], [ 1, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !242, metadata !DIExpression()), !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !139, metadata !DIExpression()), !dbg !342
  %82 = load ptr, ptr %15, align 8, !dbg !344, !tbaa !143
  %83 = shl i64 %81, 1, !dbg !344
  %84 = load i64, ptr %16, align 8, !dbg !344, !tbaa !309
  %85 = mul i64 %83, %84, !dbg !344
  %86 = getelementptr inbounds double, ptr %82, i64 %85, !dbg !344
  %87 = load double, ptr %86, align 8, !dbg !345, !tbaa.struct !145
  %88 = getelementptr inbounds i8, ptr %86, i64 8, !dbg !345
  %89 = load double, ptr %88, align 8, !dbg !345, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %87, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %89, metadata !258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  %90 = tail call { double, double } @gsl_complex_mul(double %87, double %89, double %65, double %66) #5, !dbg !347
  %91 = extractvalue { double, double } %90, 0, !dbg !347
  tail call void @llvm.dbg.value(metadata double %91, metadata !262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  %92 = extractvalue { double, double } %90, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata double %92, metadata !262, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !283, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !284, metadata !DIExpression()), !dbg !348
  %93 = load ptr, ptr %13, align 8, !dbg !350, !tbaa !288
  %94 = load i64, ptr %14, align 8, !dbg !351, !tbaa !299
  %95 = mul i64 %94, %81, !dbg !352
  %96 = add i64 %95, %20, !dbg !353
  %97 = shl i64 %96, 1, !dbg !354
  %98 = getelementptr inbounds double, ptr %93, i64 %97, !dbg !355
  %99 = load double, ptr %98, align 8, !dbg !356, !tbaa.struct !145
  %100 = getelementptr inbounds i8, ptr %98, i64 8, !dbg !356
  %101 = load double, ptr %100, align 8, !dbg !356, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %99, metadata !263, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %101, metadata !263, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  %102 = tail call { double, double } @gsl_complex_sub(double %99, double %101, double %91, double %92) #5, !dbg !357
  %103 = extractvalue { double, double } %102, 0, !dbg !357
  tail call void @llvm.dbg.value(metadata double %103, metadata !264, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  %104 = extractvalue { double, double } %102, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata double %104, metadata !264, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %103, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !358
  tail call void @llvm.dbg.value(metadata double %104, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !358
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !331, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !332, metadata !DIExpression()), !dbg !358
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !333, metadata !DIExpression()), !dbg !358
  %105 = load ptr, ptr %13, align 8, !dbg !360, !tbaa !288
  %106 = load i64, ptr %14, align 8, !dbg !361, !tbaa !299
  %107 = mul i64 %106, %81, !dbg !362
  %108 = add i64 %107, %20, !dbg !363
  %109 = shl i64 %108, 1, !dbg !364
  %110 = getelementptr inbounds double, ptr %105, i64 %109, !dbg !365
  store double %103, ptr %110, align 8, !dbg !366, !tbaa.struct !145
  %111 = getelementptr inbounds i8, ptr %110, i64 8, !dbg !366
  store double %104, ptr %111, align 8, !dbg !366, !tbaa.struct !147
  %112 = add nuw i64 %81, 1, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !242, metadata !DIExpression()), !dbg !265
  %113 = load i64, ptr %3, align 8, !dbg !339, !tbaa !275
  %114 = icmp ult i64 %112, %113, !dbg !340
  br i1 %114, label %80, label %115, !dbg !341, !llvm.loop !368

115:                                              ; preds = %80, %61
  %116 = phi i64 [ %78, %61 ], [ %113, %80 ]
  %117 = add nuw i64 %20, 1, !dbg !370
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !243, metadata !DIExpression()), !dbg !265
  %118 = load i64, ptr %9, align 8, !dbg !269, !tbaa !270
  %119 = icmp ult i64 %117, %118, !dbg !272
  br i1 %119, label %18, label %120, !dbg !273, !llvm.loop !371

120:                                              ; preds = %115, %8, %4
  ret i32 0, !dbg !373
}

declare !dbg !374 { double, double } @gsl_complex_mul(double, double, double, double) local_unnamed_addr #2

declare !dbg !377 { double, double } @gsl_complex_conjugate(double, double) local_unnamed_addr #2

declare !dbg !378 { double, double } @gsl_complex_add(double, double, double, double) local_unnamed_addr #2

declare !dbg !379 { double, double } @gsl_complex_sub(double, double, double, double) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_mh(double %0, double %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !380 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !408
  tail call void @llvm.dbg.value(metadata double %1, metadata !382, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !384, metadata !DIExpression()), !dbg !408
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !409
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !411
  br i1 %7, label %119, label %8, !dbg !411

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 0, metadata !385, metadata !DIExpression()), !dbg !408
  %9 = load i64, ptr %3, align 8, !dbg !412, !tbaa !275
  %10 = icmp eq i64 %9, 0, !dbg !413
  br i1 %10, label %119, label %11, !dbg !414

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %14, align 8, !dbg !415, !tbaa !270
  br label %18, !dbg !414

18:                                               ; preds = %114, %11
  %19 = phi i64 [ %17, %11 ], [ %115, %114 ], !dbg !415
  %20 = phi i64 [ 0, %11 ], [ %116, %114 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !385, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !283, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 0, metadata !284, metadata !DIExpression()), !dbg !416
  %21 = load ptr, ptr %12, align 8, !dbg !418, !tbaa !288
  %22 = load i64, ptr %13, align 8, !dbg !419, !tbaa !299
  %23 = shl i64 %20, 1, !dbg !420
  %24 = mul i64 %23, %22, !dbg !421
  %25 = getelementptr inbounds double, ptr %21, i64 %24, !dbg !422
  %26 = load double, ptr %25, align 8, !dbg !423, !tbaa.struct !145
  %27 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !423
  %28 = load double, ptr %27, align 8, !dbg !423, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %26, metadata !391, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %28, metadata !391, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %26, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %28, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 1, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata i64 1, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %28, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %26, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  %29 = icmp ugt i64 %19, 1, !dbg !425
  br i1 %29, label %30, label %60, !dbg !426

30:                                               ; preds = %30, %18
  %31 = phi i64 [ %57, %30 ], [ 1, %18 ]
  %32 = phi double [ %56, %30 ], [ %28, %18 ]
  %33 = phi double [ %55, %30 ], [ %26, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %32, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %33, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !283, metadata !DIExpression()), !dbg !427
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !284, metadata !DIExpression()), !dbg !427
  %34 = load ptr, ptr %12, align 8, !dbg !429, !tbaa !288
  %35 = load i64, ptr %13, align 8, !dbg !430, !tbaa !299
  %36 = mul i64 %35, %20, !dbg !431
  %37 = add i64 %36, %31, !dbg !432
  %38 = shl i64 %37, 1, !dbg !433
  %39 = getelementptr inbounds double, ptr %34, i64 %38, !dbg !434
  %40 = load double, ptr %39, align 8, !dbg !435, !tbaa.struct !145
  %41 = getelementptr inbounds i8, ptr %39, i64 8, !dbg !435
  %42 = load double, ptr %41, align 8, !dbg !435, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %40, metadata !393, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !436
  tail call void @llvm.dbg.value(metadata double %42, metadata !393, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !139, metadata !DIExpression()), !dbg !437
  %43 = load ptr, ptr %15, align 8, !dbg !439, !tbaa !143
  %44 = shl i64 %31, 1, !dbg !439
  %45 = load i64, ptr %16, align 8, !dbg !439, !tbaa !309
  %46 = mul i64 %44, %45, !dbg !439
  %47 = getelementptr inbounds double, ptr %43, i64 %46, !dbg !439
  %48 = load double, ptr %47, align 8, !dbg !440, !tbaa.struct !145
  %49 = getelementptr inbounds i8, ptr %47, i64 8, !dbg !440
  %50 = load double, ptr %49, align 8, !dbg !440, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %48, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !436
  tail call void @llvm.dbg.value(metadata double %50, metadata !397, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !436
  %51 = tail call { double, double } @gsl_complex_mul(double %40, double %42, double %48, double %50) #5, !dbg !441
  %52 = extractvalue { double, double } %51, 0, !dbg !441
  tail call void @llvm.dbg.value(metadata double %52, metadata !398, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !436
  %53 = extractvalue { double, double } %51, 1, !dbg !441
  tail call void @llvm.dbg.value(metadata double %53, metadata !398, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !436
  %54 = tail call { double, double } @gsl_complex_add(double %33, double %32, double %52, double %53) #5, !dbg !442
  %55 = extractvalue { double, double } %54, 0, !dbg !442
  %56 = extractvalue { double, double } %54, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata double %55, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %56, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  %57 = add nuw i64 %31, 1, !dbg !443
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata double %55, metadata !392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  %58 = load i64, ptr %14, align 8, !dbg !415, !tbaa !270
  %59 = icmp ult i64 %57, %58, !dbg !425
  br i1 %59, label %30, label %60, !dbg !426, !llvm.loop !444

60:                                               ; preds = %30, %18
  %61 = phi double [ %26, %18 ], [ %55, %30 ], !dbg !424
  %62 = phi double [ %28, %18 ], [ %56, %30 ], !dbg !424
  %63 = tail call { double, double } @gsl_complex_mul(double %0, double %1, double %61, double %62) #5, !dbg !446
  %64 = extractvalue { double, double } %63, 0, !dbg !446
  %65 = extractvalue { double, double } %63, 1, !dbg !446
  tail call void @llvm.dbg.value(metadata double %64, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  tail call void @llvm.dbg.value(metadata double %65, metadata !387, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  %66 = tail call { double, double } @gsl_complex_sub(double %26, double %28, double %64, double %65) #5, !dbg !447
  %67 = extractvalue { double, double } %66, 0, !dbg !447
  tail call void @llvm.dbg.value(metadata double %67, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !448
  %68 = extractvalue { double, double } %66, 1, !dbg !447
  tail call void @llvm.dbg.value(metadata double %68, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !448
  tail call void @llvm.dbg.value(metadata double %67, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !449
  tail call void @llvm.dbg.value(metadata double %68, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !449
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !331, metadata !DIExpression()), !dbg !449
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !332, metadata !DIExpression()), !dbg !449
  tail call void @llvm.dbg.value(metadata i64 0, metadata !333, metadata !DIExpression()), !dbg !449
  %69 = load ptr, ptr %12, align 8, !dbg !451, !tbaa !288
  %70 = load i64, ptr %13, align 8, !dbg !452, !tbaa !299
  %71 = mul i64 %23, %70, !dbg !453
  %72 = getelementptr inbounds double, ptr %69, i64 %71, !dbg !454
  store double %67, ptr %72, align 8, !dbg !455, !tbaa.struct !145
  %73 = getelementptr inbounds i8, ptr %72, i64 8, !dbg !455
  store double %68, ptr %73, align 8, !dbg !455, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !386, metadata !DIExpression()), !dbg !408
  %74 = load i64, ptr %14, align 8, !dbg !456, !tbaa !270
  %75 = icmp ugt i64 %74, 1, !dbg !457
  br i1 %75, label %76, label %114, !dbg !458

76:                                               ; preds = %76, %60
  %77 = phi i64 [ %111, %76 ], [ 1, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !386, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !139, metadata !DIExpression()), !dbg !459
  %78 = load ptr, ptr %15, align 8, !dbg !461, !tbaa !143
  %79 = shl i64 %77, 1, !dbg !461
  %80 = load i64, ptr %16, align 8, !dbg !461, !tbaa !309
  %81 = mul i64 %79, %80, !dbg !461
  %82 = getelementptr inbounds double, ptr %78, i64 %81, !dbg !461
  %83 = load double, ptr %82, align 8, !dbg !462, !tbaa.struct !145
  %84 = getelementptr inbounds i8, ptr %82, i64 8, !dbg !462
  %85 = load double, ptr %84, align 8, !dbg !462, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %83, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !463
  tail call void @llvm.dbg.value(metadata double %85, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !463
  %86 = tail call { double, double } @gsl_complex_conjugate(double %83, double %85) #5, !dbg !464
  %87 = extractvalue { double, double } %86, 0, !dbg !464
  %88 = extractvalue { double, double } %86, 1, !dbg !464
  %89 = tail call { double, double } @gsl_complex_mul(double %87, double %88, double %64, double %65) #5, !dbg !465
  %90 = extractvalue { double, double } %89, 0, !dbg !465
  tail call void @llvm.dbg.value(metadata double %90, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !463
  %91 = extractvalue { double, double } %89, 1, !dbg !465
  tail call void @llvm.dbg.value(metadata double %91, metadata !405, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !283, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !284, metadata !DIExpression()), !dbg !466
  %92 = load ptr, ptr %12, align 8, !dbg !468, !tbaa !288
  %93 = load i64, ptr %13, align 8, !dbg !469, !tbaa !299
  %94 = mul i64 %93, %20, !dbg !470
  %95 = add i64 %94, %77, !dbg !471
  %96 = shl i64 %95, 1, !dbg !472
  %97 = getelementptr inbounds double, ptr %92, i64 %96, !dbg !473
  %98 = load double, ptr %97, align 8, !dbg !474, !tbaa.struct !145
  %99 = getelementptr inbounds i8, ptr %97, i64 8, !dbg !474
  %100 = load double, ptr %99, align 8, !dbg !474, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %98, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !463
  tail call void @llvm.dbg.value(metadata double %100, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !463
  %101 = tail call { double, double } @gsl_complex_sub(double %98, double %100, double %90, double %91) #5, !dbg !475
  %102 = extractvalue { double, double } %101, 0, !dbg !475
  tail call void @llvm.dbg.value(metadata double %102, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !463
  %103 = extractvalue { double, double } %101, 1, !dbg !475
  tail call void @llvm.dbg.value(metadata double %103, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !463
  tail call void @llvm.dbg.value(metadata double %102, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !476
  tail call void @llvm.dbg.value(metadata double %103, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !476
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !331, metadata !DIExpression()), !dbg !476
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !332, metadata !DIExpression()), !dbg !476
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !333, metadata !DIExpression()), !dbg !476
  %104 = load ptr, ptr %12, align 8, !dbg !478, !tbaa !288
  %105 = load i64, ptr %13, align 8, !dbg !479, !tbaa !299
  %106 = mul i64 %105, %20, !dbg !480
  %107 = add i64 %106, %77, !dbg !481
  %108 = shl i64 %107, 1, !dbg !482
  %109 = getelementptr inbounds double, ptr %104, i64 %108, !dbg !483
  store double %102, ptr %109, align 8, !dbg !484, !tbaa.struct !145
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !484
  store double %103, ptr %110, align 8, !dbg !484, !tbaa.struct !147
  %111 = add nuw i64 %77, 1, !dbg !485
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !386, metadata !DIExpression()), !dbg !408
  %112 = load i64, ptr %14, align 8, !dbg !456, !tbaa !270
  %113 = icmp ult i64 %111, %112, !dbg !457
  br i1 %113, label %76, label %114, !dbg !458, !llvm.loop !486

114:                                              ; preds = %76, %60
  %115 = phi i64 [ %74, %60 ], [ %112, %76 ]
  %116 = add nuw i64 %20, 1, !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !385, metadata !DIExpression()), !dbg !408
  %117 = load i64, ptr %3, align 8, !dbg !412, !tbaa !275
  %118 = icmp ult i64 %116, %117, !dbg !413
  br i1 %118, label %18, label %119, !dbg !414, !llvm.loop !489

119:                                              ; preds = %114, %8, %4
  ret i32 0, !dbg !491
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_hv(double %0, double %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !492 {
  %5 = alloca %struct.gsl_complex, align 8, !DIAssignID !517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !502, metadata !DIExpression(), metadata !517, metadata ptr %5, metadata !DIExpression()), !dbg !518
  %6 = alloca %struct._gsl_vector_complex_const_view, align 8, !DIAssignID !519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !506, metadata !DIExpression(), metadata !519, metadata ptr %6, metadata !DIExpression()), !dbg !518
  %7 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !513, metadata !DIExpression(), metadata !520, metadata ptr %7, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata double %0, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !521
  tail call void @llvm.dbg.value(metadata double %1, metadata !496, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !521
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !497, metadata !DIExpression()), !dbg !521
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !498, metadata !DIExpression()), !dbg !521
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !499, metadata !DIExpression()), !dbg !521
  %8 = fcmp oeq double %0, 0.000000e+00, !dbg !522
  %9 = fcmp oeq double %1, 0.000000e+00
  %10 = select i1 %8, i1 %9, i1 false, !dbg !524
  br i1 %10, label %42, label %11, !dbg !524

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !dbg !525, !tbaa !123
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !499, metadata !DIExpression()), !dbg !521
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !132, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !526
  %13 = getelementptr inbounds %struct.gsl_vector_complex, ptr %3, i64 0, i32 2, !dbg !528
  %14 = load ptr, ptr %13, align 8, !dbg !528, !tbaa !143
  %15 = load double, ptr %14, align 8, !dbg !529, !tbaa.struct !145
  %16 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !529
  %17 = load double, ptr %16, align 8, !dbg !529, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %15, metadata !500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double %17, metadata !500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !530
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !531
  %18 = add i64 %12, -1, !dbg !532
  call void @gsl_vector_complex_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_const_view) align 8 %6, ptr noundef nonnull %2, i64 noundef 1, i64 noundef %18) #5, !dbg !533
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !534
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %7, ptr noundef %3, i64 noundef 1, i64 noundef %18) #5, !dbg !535
  %19 = call i32 @gsl_blas_zdotc(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5, !dbg !536
  %20 = load double, ptr %5, align 8, !dbg !537
  %21 = getelementptr inbounds { double, double }, ptr %5, i64 0, i32 1, !dbg !537
  %22 = load double, ptr %21, align 8, !dbg !537
  %23 = call { double, double } @gsl_complex_add(double %15, double %17, double %20, double %22) #5, !dbg !537
  %24 = extractvalue { double, double } %23, 0, !dbg !537
  %25 = extractvalue { double, double } %23, 1, !dbg !537
  tail call void @llvm.dbg.value(metadata double %24, metadata !503, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double %25, metadata !503, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  %26 = call { double, double } @gsl_complex_mul(double %0, double %1, double %24, double %25) #5, !dbg !538
  %27 = extractvalue { double, double } %26, 0, !dbg !538
  %28 = extractvalue { double, double } %26, 1, !dbg !538
  tail call void @llvm.dbg.value(metadata double %27, metadata !504, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double %28, metadata !504, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  %29 = call { double, double } @gsl_complex_negative(double %27, double %28) #5, !dbg !539
  %30 = extractvalue { double, double } %29, 0, !dbg !539
  %31 = extractvalue { double, double } %29, 1, !dbg !539
  tail call void @llvm.dbg.value(metadata double %30, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata double %31, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !518
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !132, metadata !DIExpression()), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !540
  %32 = load ptr, ptr %13, align 8, !dbg !542, !tbaa !143
  %33 = load double, ptr %32, align 8, !dbg !543, !tbaa.struct !145
  %34 = getelementptr inbounds i8, ptr %32, i64 8, !dbg !543
  %35 = load double, ptr %34, align 8, !dbg !543, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %33, metadata !514, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !544
  tail call void @llvm.dbg.value(metadata double %35, metadata !514, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !544
  %36 = call { double, double } @gsl_complex_add(double %33, double %35, double %30, double %31) #5, !dbg !545
  %37 = extractvalue { double, double } %36, 0, !dbg !545
  tail call void @llvm.dbg.value(metadata double %37, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !544
  %38 = extractvalue { double, double } %36, 1, !dbg !545
  tail call void @llvm.dbg.value(metadata double %38, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !544
  tail call void @llvm.dbg.value(metadata double %37, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !546
  tail call void @llvm.dbg.value(metadata double %38, metadata !158, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !546
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !163, metadata !DIExpression()), !dbg !546
  tail call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !546
  %39 = load ptr, ptr %13, align 8, !dbg !548, !tbaa !143
  store double %37, ptr %39, align 8, !dbg !549, !tbaa.struct !145
  %40 = getelementptr inbounds i8, ptr %39, i64 8, !dbg !549
  store double %38, ptr %40, align 8, !dbg !549, !tbaa.struct !147
  %41 = call i32 @gsl_blas_zaxpy(double %30, double %31, ptr noundef nonnull %6, ptr noundef nonnull %7) #5, !dbg !550
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !551
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !551
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !551
  br label %42, !dbg !552

42:                                               ; preds = %11, %4
  ret i32 0, !dbg !553
}

declare !dbg !554 void @gsl_vector_complex_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !557 i32 @gsl_blas_zdotc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !560 { double, double } @gsl_complex_negative(double, double) local_unnamed_addr #2

declare !dbg !561 i32 @gsl_blas_zaxpy(double, double, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "householdercomplex.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "c95d0a7beb3d4e0e63dcd4b354265dd3")
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
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_complex", file: !45, line: 80, baseType: !46)
!45 = !DIFile(filename: "../gsl/gsl_complex.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "fa1ab7587b167751c5c7adf6bb027f7f")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 76, size: 128, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !46, file: !45, line: 78, baseType: !49, size: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !51)
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !{!52}
!52 = !DISubrange(count: 2)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 8, !"PIC Level", i32 2}
!57 = !{i32 7, !"PIE Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 2}
!59 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!60 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!61 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_transform", scope: !1, file: !1, line: 49, type: !62, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!62 = !DISubroutineType(types: !63)
!63 = !{!44, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex", file: !66, line: 51, baseType: !67)
!66 = !DIFile(filename: "../gsl/gsl_vector_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1e0953f8884a405bde80afbe279edfff")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 44, size: 320, elements: !68)
!68 = !{!69, !73, !74, !76, !84}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !67, file: !66, line: 46, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 18, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !67, file: !66, line: 47, baseType: !70, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !67, file: !66, line: 48, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !67, file: !66, line: 49, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block_complex", file: !79, line: 44, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_block_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1fd1b05ef0a630a91e3e8898de6b93f8")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_complex_struct", file: !79, line: 38, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !80, file: !79, line: 40, baseType: !70, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !79, line: 41, baseType: !75, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !67, file: !66, line: 50, baseType: !5, size: 32, offset: 256)
!85 = !{!86, !87, !89, !92, !93, !94, !95, !99, !101, !102, !108, !109, !110, !111, !114, !116, !117}
!86 = !DILocalVariable(name: "v", arg: 1, scope: !61, file: !1, line: 49, type: !64)
!87 = !DILocalVariable(name: "n", scope: !61, file: !1, line: 54, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!89 = !DILocalVariable(name: "alpha", scope: !90, file: !1, line: 58, type: !44)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 57, column: 5)
!91 = distinct !DILexicalBlock(scope: !61, file: !1, line: 56, column: 7)
!92 = !DILocalVariable(name: "absa", scope: !90, file: !1, line: 59, type: !50)
!93 = !DILocalVariable(name: "beta_r", scope: !90, file: !1, line: 60, type: !50)
!94 = !DILocalVariable(name: "tau", scope: !90, file: !1, line: 62, type: !44)
!95 = !DILocalVariable(name: "beta", scope: !96, file: !1, line: 75, type: !44)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 74, column: 11)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 70, column: 9)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 64, column: 11)
!99 = !DILocalVariable(name: "tau", scope: !100, file: !1, line: 84, type: !44)
!100 = distinct !DILexicalBlock(scope: !91, file: !1, line: 83, column: 5)
!101 = !DILocalVariable(name: "beta_r", scope: !100, file: !1, line: 85, type: !50)
!102 = !DILocalVariable(name: "x", scope: !100, file: !1, line: 87, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex_view", file: !66, line: 58, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_complex_view", file: !66, line: 56, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 53, size: 320, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !105, file: !66, line: 55, baseType: !65, size: 320)
!108 = !DILocalVariable(name: "alpha", scope: !100, file: !1, line: 88, type: !44)
!109 = !DILocalVariable(name: "absa", scope: !100, file: !1, line: 89, type: !50)
!110 = !DILocalVariable(name: "xnorm", scope: !100, file: !1, line: 90, type: !50)
!111 = !DILocalVariable(name: "zero", scope: !112, file: !1, line: 94, type: !44)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 93, column: 9)
!113 = distinct !DILexicalBlock(scope: !100, file: !1, line: 92, column: 11)
!114 = !DILocalVariable(name: "amb", scope: !115, file: !1, line: 104, type: !44)
!115 = distinct !DILexicalBlock(scope: !100, file: !1, line: 103, column: 7)
!116 = !DILocalVariable(name: "s", scope: !115, file: !1, line: 105, type: !44)
!117 = !DILocalVariable(name: "beta", scope: !118, file: !1, line: 110, type: !44)
!118 = distinct !DILexicalBlock(scope: !100, file: !1, line: 109, column: 7)
!119 = distinct !DIAssignID()
!120 = !DILocation(line: 0, scope: !100)
!121 = !DILocation(line: 0, scope: !61)
!122 = !DILocation(line: 54, column: 23, scope: !61)
!123 = !{!124, !125, i64 0}
!124 = !{!"", !125, i64 0, !125, i64 8, !128, i64 16, !128, i64 24, !129, i64 32}
!125 = !{!"long", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !{!"any pointer", !126, i64 0}
!129 = !{!"int", !126, i64 0}
!130 = !DILocation(line: 56, column: 9, scope: !91)
!131 = !DILocation(line: 56, column: 7, scope: !61)
!132 = !DILocalVariable(name: "v", arg: 1, scope: !133, file: !66, line: 191, type: !136)
!133 = distinct !DISubprogram(name: "gsl_vector_complex_get", scope: !66, file: !66, line: 191, type: !134, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!134 = !DISubroutineType(types: !135)
!135 = !{!44, !136, !88}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!138 = !{!132, !139}
!139 = !DILocalVariable(name: "i", arg: 2, scope: !133, file: !66, line: 192, type: !88)
!140 = !DILocation(line: 0, scope: !133, inlinedAt: !141)
!141 = distinct !DILocation(line: 58, column: 27, scope: !90)
!142 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !141)
!143 = !{!124, !128, i64 16}
!144 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !141)
!145 = !{i64 0, i64 16, !146}
!146 = !{!126, !126, i64 0}
!147 = !{i64 0, i64 8, !146}
!148 = !DILocation(line: 0, scope: !90)
!149 = !DILocation(line: 59, column: 21, scope: !90)
!150 = !DILocation(line: 60, column: 42, scope: !90)
!151 = !DILocation(line: 60, column: 58, scope: !90)
!152 = !DILocation(line: 64, column: 18, scope: !98)
!153 = !DILocation(line: 64, column: 11, scope: !90)
!154 = !DILocation(line: 71, column: 54, scope: !97)
!155 = !DILocation(line: 72, column: 27, scope: !97)
!156 = !DILocation(line: 72, column: 45, scope: !97)
!157 = !DILocation(line: 0, scope: !96)
!158 = !DILocalVariable(name: "z", arg: 3, scope: !159, file: !66, line: 207, type: !44)
!159 = distinct !DISubprogram(name: "gsl_vector_complex_set", scope: !66, file: !66, line: 206, type: !160, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !64, !88, !44}
!162 = !{!163, !164, !158}
!163 = !DILocalVariable(name: "v", arg: 1, scope: !159, file: !66, line: 206, type: !64)
!164 = !DILocalVariable(name: "i", arg: 2, scope: !159, file: !66, line: 207, type: !88)
!165 = !DILocation(line: 0, scope: !159, inlinedAt: !166)
!166 = distinct !DILocation(line: 76, column: 13, scope: !96)
!167 = !DILocation(line: 215, column: 4, scope: !159, inlinedAt: !166)
!168 = !DILocation(line: 215, column: 28, scope: !159, inlinedAt: !166)
!169 = !DILocation(line: 87, column: 7, scope: !100)
!170 = !DILocation(line: 87, column: 73, scope: !100)
!171 = !DILocation(line: 87, column: 35, scope: !100)
!172 = !DILocation(line: 0, scope: !133, inlinedAt: !173)
!173 = distinct !DILocation(line: 88, column: 27, scope: !100)
!174 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !173)
!175 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !173)
!176 = !DILocation(line: 89, column: 21, scope: !100)
!177 = !DILocation(line: 90, column: 22, scope: !100)
!178 = !DILocation(line: 92, column: 17, scope: !113)
!179 = !DILocation(line: 92, column: 22, scope: !113)
!180 = !DILocation(line: 98, column: 35, scope: !100)
!181 = !DILocation(line: 98, column: 53, scope: !100)
!182 = !DILocation(line: 98, column: 51, scope: !100)
!183 = !DILocation(line: 100, column: 50, scope: !100)
!184 = !DILocation(line: 101, column: 23, scope: !100)
!185 = !DILocation(line: 101, column: 41, scope: !100)
!186 = !DILocation(line: 104, column: 27, scope: !115)
!187 = !DILocation(line: 0, scope: !115)
!188 = !DILocation(line: 105, column: 25, scope: !115)
!189 = !DILocation(line: 106, column: 9, scope: !115)
!190 = !DILocation(line: 0, scope: !118)
!191 = !DILocation(line: 0, scope: !159, inlinedAt: !192)
!192 = distinct !DILocation(line: 111, column: 9, scope: !118)
!193 = !DILocation(line: 215, column: 4, scope: !159, inlinedAt: !192)
!194 = !DILocation(line: 215, column: 28, scope: !159, inlinedAt: !192)
!195 = !DILocation(line: 114, column: 7, scope: !100)
!196 = !DILocation(line: 115, column: 5, scope: !91)
!197 = !DILocation(line: 0, scope: !91)
!198 = !DILocation(line: 116, column: 1, scope: !61)
!199 = !DISubprogram(name: "gsl_complex_abs", scope: !200, file: !200, line: 60, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIFile(filename: "../gsl/gsl_complex_math.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3bebe2d988d25a9edadbea9b4bb7ae01")
!201 = !DISubroutineType(types: !202)
!202 = !{!50, !44}
!203 = !DISubprogram(name: "gsl_vector_complex_subvector", scope: !66, file: !66, line: 107, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DISubroutineType(types: !205)
!205 = !{!104, !64, !70, !70}
!206 = !DISubprogram(name: "gsl_blas_dznrm2", scope: !207, file: !207, line: 95, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!208 = !DISubroutineType(types: !209)
!209 = !{!50, !136}
!210 = !DISubprogram(name: "hypot", scope: !211, file: !211, line: 147, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!212 = !DISubroutineType(types: !213)
!213 = !{!50, !50, !50}
!214 = !DISubprogram(name: "gsl_complex_sub_real", scope: !200, file: !200, line: 72, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{!44, !44, !50}
!217 = !DISubprogram(name: "gsl_complex_inverse", scope: !200, file: !200, line: 82, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!44, !44}
!220 = !DISubprogram(name: "gsl_blas_zscal", scope: !207, file: !207, line: 175, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !64}
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!224 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_hm", scope: !1, file: !1, line: 119, type: !225, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!225 = !DISubroutineType(types: !226)
!226 = !{!5, !44, !136, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_complex", file: !229, line: 50, baseType: !230)
!229 = !DIFile(filename: "../gsl/gsl_matrix_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "c485e5a850396d8a68a20b26e12adce5")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !229, line: 42, size: 384, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !230, file: !229, line: 44, baseType: !70, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !230, file: !229, line: 45, baseType: !70, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !230, file: !229, line: 46, baseType: !70, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !229, line: 47, baseType: !75, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !230, file: !229, line: 48, baseType: !77, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !230, file: !229, line: 49, baseType: !5, size: 32, offset: 320)
!238 = !{!239, !240, !241, !242, !243, !244, !248, !249, !253, !254, !255, !257, !258, !262, !263, !264}
!239 = !DILocalVariable(name: "tau", arg: 1, scope: !224, file: !1, line: 119, type: !44)
!240 = !DILocalVariable(name: "v", arg: 2, scope: !224, file: !1, line: 119, type: !136)
!241 = !DILocalVariable(name: "A", arg: 3, scope: !224, file: !1, line: 119, type: !227)
!242 = !DILocalVariable(name: "i", scope: !224, file: !1, line: 123, type: !70)
!243 = !DILocalVariable(name: "j", scope: !224, file: !1, line: 123, type: !70)
!244 = !DILocalVariable(name: "tauwj", scope: !245, file: !1, line: 134, type: !44)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 133, column: 5)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 132, column: 3)
!247 = distinct !DILexicalBlock(scope: !224, file: !1, line: 132, column: 3)
!248 = !DILocalVariable(name: "wj", scope: !245, file: !1, line: 135, type: !44)
!249 = !DILocalVariable(name: "Aij", scope: !250, file: !1, line: 139, type: !44)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 138, column: 9)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 137, column: 7)
!252 = distinct !DILexicalBlock(scope: !245, file: !1, line: 137, column: 7)
!253 = !DILocalVariable(name: "vi", scope: !250, file: !1, line: 140, type: !44)
!254 = !DILocalVariable(name: "Av", scope: !250, file: !1, line: 141, type: !44)
!255 = !DILocalVariable(name: "A0j", scope: !256, file: !1, line: 150, type: !44)
!256 = distinct !DILexicalBlock(scope: !245, file: !1, line: 149, column: 7)
!257 = !DILocalVariable(name: "Atw", scope: !256, file: !1, line: 151, type: !44)
!258 = !DILocalVariable(name: "vi", scope: !259, file: !1, line: 158, type: !44)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 157, column: 9)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 156, column: 7)
!261 = distinct !DILexicalBlock(scope: !245, file: !1, line: 156, column: 7)
!262 = !DILocalVariable(name: "tauvw", scope: !259, file: !1, line: 159, type: !44)
!263 = !DILocalVariable(name: "Aij", scope: !259, file: !1, line: 160, type: !44)
!264 = !DILocalVariable(name: "Atwv", scope: !259, file: !1, line: 161, type: !44)
!265 = !DILocation(line: 0, scope: !224)
!266 = !DILocation(line: 125, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !224, file: !1, line: 125, column: 7)
!268 = !DILocation(line: 125, column: 28, scope: !267)
!269 = !DILocation(line: 132, column: 22, scope: !246)
!270 = !{!271, !125, i64 8}
!271 = !{!"", !125, i64 0, !125, i64 8, !125, i64 16, !128, i64 24, !128, i64 32, !129, i64 40}
!272 = !DILocation(line: 132, column: 17, scope: !246)
!273 = !DILocation(line: 132, column: 3, scope: !247)
!274 = !DILocation(line: 137, column: 26, scope: !251)
!275 = !{!271, !125, i64 0}
!276 = !DILocalVariable(name: "m", arg: 1, scope: !277, file: !229, line: 265, type: !280)
!277 = distinct !DISubprogram(name: "gsl_matrix_complex_get", scope: !229, file: !229, line: 265, type: !278, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !282)
!278 = !DISubroutineType(types: !279)
!279 = !{!44, !280, !88, !88}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!282 = !{!276, !283, !284}
!283 = !DILocalVariable(name: "i", arg: 2, scope: !277, file: !229, line: 266, type: !88)
!284 = !DILocalVariable(name: "j", arg: 3, scope: !277, file: !229, line: 266, type: !88)
!285 = !DILocation(line: 0, scope: !277, inlinedAt: !286)
!286 = distinct !DILocation(line: 135, column: 24, scope: !245)
!287 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !286)
!288 = !{!271, !128, i64 24}
!289 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !286)
!290 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !286)
!291 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !286)
!292 = !DILocation(line: 0, scope: !245)
!293 = !DILocation(line: 137, column: 21, scope: !251)
!294 = !DILocation(line: 137, column: 7, scope: !252)
!295 = !DILocation(line: 0, scope: !277, inlinedAt: !296)
!296 = distinct !DILocation(line: 139, column: 29, scope: !250)
!297 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !296)
!298 = !DILocation(line: 283, column: 47, scope: !277, inlinedAt: !296)
!299 = !{!271, !125, i64 16}
!300 = !DILocation(line: 283, column: 42, scope: !277, inlinedAt: !296)
!301 = !DILocation(line: 283, column: 51, scope: !277, inlinedAt: !296)
!302 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !296)
!303 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !296)
!304 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !296)
!305 = !DILocation(line: 0, scope: !250)
!306 = !DILocation(line: 0, scope: !133, inlinedAt: !307)
!307 = distinct !DILocation(line: 140, column: 28, scope: !250)
!308 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !307)
!309 = !{!124, !125, i64 8}
!310 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !307)
!311 = !DILocation(line: 141, column: 50, scope: !250)
!312 = !DILocation(line: 141, column: 28, scope: !250)
!313 = !DILocation(line: 142, column: 16, scope: !250)
!314 = !DILocation(line: 137, column: 34, scope: !251)
!315 = distinct !{!315, !294, !316, !317}
!316 = !DILocation(line: 143, column: 9, scope: !252)
!317 = !{!"llvm.loop.mustprogress"}
!318 = !DILocation(line: 145, column: 15, scope: !245)
!319 = !DILocation(line: 0, scope: !277, inlinedAt: !320)
!320 = distinct !DILocation(line: 150, column: 27, scope: !256)
!321 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !320)
!322 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !320)
!323 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !320)
!324 = !DILocation(line: 0, scope: !256)
!325 = !DILocation(line: 151, column: 27, scope: !256)
!326 = !DILocalVariable(name: "x", arg: 4, scope: !327, file: !229, line: 289, type: !223)
!327 = distinct !DISubprogram(name: "gsl_matrix_complex_set", scope: !229, file: !229, line: 288, type: !328, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !227, !88, !88, !223}
!330 = !{!331, !332, !333, !326}
!331 = !DILocalVariable(name: "m", arg: 1, scope: !327, file: !229, line: 288, type: !227)
!332 = !DILocalVariable(name: "i", arg: 2, scope: !327, file: !229, line: 289, type: !88)
!333 = !DILocalVariable(name: "j", arg: 3, scope: !327, file: !229, line: 289, type: !88)
!334 = !DILocation(line: 0, scope: !327, inlinedAt: !335)
!335 = distinct !DILocation(line: 153, column: 9, scope: !256)
!336 = !DILocation(line: 304, column: 23, scope: !327, inlinedAt: !335)
!337 = !DILocation(line: 304, column: 28, scope: !327, inlinedAt: !335)
!338 = !DILocation(line: 304, column: 52, scope: !327, inlinedAt: !335)
!339 = !DILocation(line: 156, column: 26, scope: !260)
!340 = !DILocation(line: 156, column: 21, scope: !260)
!341 = !DILocation(line: 156, column: 7, scope: !261)
!342 = !DILocation(line: 0, scope: !133, inlinedAt: !343)
!343 = distinct !DILocation(line: 158, column: 28, scope: !259)
!344 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !343)
!345 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !343)
!346 = !DILocation(line: 0, scope: !259)
!347 = !DILocation(line: 159, column: 31, scope: !259)
!348 = !DILocation(line: 0, scope: !277, inlinedAt: !349)
!349 = distinct !DILocation(line: 160, column: 29, scope: !259)
!350 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !349)
!351 = !DILocation(line: 283, column: 47, scope: !277, inlinedAt: !349)
!352 = !DILocation(line: 283, column: 42, scope: !277, inlinedAt: !349)
!353 = !DILocation(line: 283, column: 51, scope: !277, inlinedAt: !349)
!354 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !349)
!355 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !349)
!356 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !349)
!357 = !DILocation(line: 161, column: 30, scope: !259)
!358 = !DILocation(line: 0, scope: !327, inlinedAt: !359)
!359 = distinct !DILocation(line: 163, column: 11, scope: !259)
!360 = !DILocation(line: 304, column: 23, scope: !327, inlinedAt: !359)
!361 = !DILocation(line: 304, column: 40, scope: !327, inlinedAt: !359)
!362 = !DILocation(line: 304, column: 35, scope: !327, inlinedAt: !359)
!363 = !DILocation(line: 304, column: 44, scope: !327, inlinedAt: !359)
!364 = !DILocation(line: 304, column: 31, scope: !327, inlinedAt: !359)
!365 = !DILocation(line: 304, column: 28, scope: !327, inlinedAt: !359)
!366 = !DILocation(line: 304, column: 52, scope: !327, inlinedAt: !359)
!367 = !DILocation(line: 156, column: 34, scope: !260)
!368 = distinct !{!368, !341, !369, !317}
!369 = !DILocation(line: 164, column: 9, scope: !261)
!370 = !DILocation(line: 132, column: 30, scope: !246)
!371 = distinct !{!371, !273, !372, !317}
!372 = !DILocation(line: 165, column: 5, scope: !247)
!373 = !DILocation(line: 168, column: 1, scope: !224)
!374 = !DISubprogram(name: "gsl_complex_mul", scope: !200, file: !200, line: 68, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!44, !44, !44}
!377 = !DISubprogram(name: "gsl_complex_conjugate", scope: !200, file: !200, line: 81, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubprogram(name: "gsl_complex_add", scope: !200, file: !200, line: 66, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubprogram(name: "gsl_complex_sub", scope: !200, file: !200, line: 67, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_mh", scope: !1, file: !1, line: 171, type: !225, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !391, !392, !393, !397, !398, !399, !401, !405, !406, !407}
!382 = !DILocalVariable(name: "tau", arg: 1, scope: !380, file: !1, line: 171, type: !44)
!383 = !DILocalVariable(name: "v", arg: 2, scope: !380, file: !1, line: 171, type: !136)
!384 = !DILocalVariable(name: "A", arg: 3, scope: !380, file: !1, line: 171, type: !227)
!385 = !DILocalVariable(name: "i", scope: !380, file: !1, line: 175, type: !70)
!386 = !DILocalVariable(name: "j", scope: !380, file: !1, line: 175, type: !70)
!387 = !DILocalVariable(name: "tauwi", scope: !388, file: !1, line: 186, type: !44)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 185, column: 5)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 184, column: 3)
!390 = distinct !DILexicalBlock(scope: !380, file: !1, line: 184, column: 3)
!391 = !DILocalVariable(name: "Ai0", scope: !388, file: !1, line: 187, type: !44)
!392 = !DILocalVariable(name: "wi", scope: !388, file: !1, line: 188, type: !44)
!393 = !DILocalVariable(name: "Aij", scope: !394, file: !1, line: 193, type: !44)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 192, column: 9)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 191, column: 7)
!396 = distinct !DILexicalBlock(scope: !388, file: !1, line: 191, column: 7)
!397 = !DILocalVariable(name: "vj", scope: !394, file: !1, line: 194, type: !44)
!398 = !DILocalVariable(name: "Av", scope: !394, file: !1, line: 195, type: !44)
!399 = !DILocalVariable(name: "Atw", scope: !400, file: !1, line: 204, type: !44)
!400 = distinct !DILexicalBlock(scope: !388, file: !1, line: 203, column: 7)
!401 = !DILocalVariable(name: "vj", scope: !402, file: !1, line: 211, type: !44)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 210, column: 9)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 209, column: 7)
!404 = distinct !DILexicalBlock(scope: !388, file: !1, line: 209, column: 7)
!405 = !DILocalVariable(name: "tauwv", scope: !402, file: !1, line: 212, type: !44)
!406 = !DILocalVariable(name: "Aij", scope: !402, file: !1, line: 213, type: !44)
!407 = !DILocalVariable(name: "Atwv", scope: !402, file: !1, line: 214, type: !44)
!408 = !DILocation(line: 0, scope: !380)
!409 = !DILocation(line: 177, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !380, file: !1, line: 177, column: 7)
!411 = !DILocation(line: 177, column: 28, scope: !410)
!412 = !DILocation(line: 184, column: 22, scope: !389)
!413 = !DILocation(line: 184, column: 17, scope: !389)
!414 = !DILocation(line: 184, column: 3, scope: !390)
!415 = !DILocation(line: 191, column: 26, scope: !395)
!416 = !DILocation(line: 0, scope: !277, inlinedAt: !417)
!417 = distinct !DILocation(line: 187, column: 25, scope: !388)
!418 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !417)
!419 = !DILocation(line: 283, column: 47, scope: !277, inlinedAt: !417)
!420 = !DILocation(line: 283, column: 42, scope: !277, inlinedAt: !417)
!421 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !417)
!422 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !417)
!423 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !417)
!424 = !DILocation(line: 0, scope: !388)
!425 = !DILocation(line: 191, column: 21, scope: !395)
!426 = !DILocation(line: 191, column: 7, scope: !396)
!427 = !DILocation(line: 0, scope: !277, inlinedAt: !428)
!428 = distinct !DILocation(line: 193, column: 29, scope: !394)
!429 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !428)
!430 = !DILocation(line: 283, column: 47, scope: !277, inlinedAt: !428)
!431 = !DILocation(line: 283, column: 42, scope: !277, inlinedAt: !428)
!432 = !DILocation(line: 283, column: 51, scope: !277, inlinedAt: !428)
!433 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !428)
!434 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !428)
!435 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !428)
!436 = !DILocation(line: 0, scope: !394)
!437 = !DILocation(line: 0, scope: !133, inlinedAt: !438)
!438 = distinct !DILocation(line: 194, column: 28, scope: !394)
!439 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !438)
!440 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !438)
!441 = !DILocation(line: 195, column: 28, scope: !394)
!442 = !DILocation(line: 196, column: 16, scope: !394)
!443 = !DILocation(line: 191, column: 34, scope: !395)
!444 = distinct !{!444, !426, !445, !317}
!445 = !DILocation(line: 197, column: 9, scope: !396)
!446 = !DILocation(line: 199, column: 15, scope: !388)
!447 = !DILocation(line: 204, column: 27, scope: !400)
!448 = !DILocation(line: 0, scope: !400)
!449 = !DILocation(line: 0, scope: !327, inlinedAt: !450)
!450 = distinct !DILocation(line: 206, column: 9, scope: !400)
!451 = !DILocation(line: 304, column: 23, scope: !327, inlinedAt: !450)
!452 = !DILocation(line: 304, column: 40, scope: !327, inlinedAt: !450)
!453 = !DILocation(line: 304, column: 31, scope: !327, inlinedAt: !450)
!454 = !DILocation(line: 304, column: 28, scope: !327, inlinedAt: !450)
!455 = !DILocation(line: 304, column: 52, scope: !327, inlinedAt: !450)
!456 = !DILocation(line: 209, column: 26, scope: !403)
!457 = !DILocation(line: 209, column: 21, scope: !403)
!458 = !DILocation(line: 209, column: 7, scope: !404)
!459 = !DILocation(line: 0, scope: !133, inlinedAt: !460)
!460 = distinct !DILocation(line: 211, column: 28, scope: !402)
!461 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !460)
!462 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !460)
!463 = !DILocation(line: 0, scope: !402)
!464 = !DILocation(line: 212, column: 47, scope: !402)
!465 = !DILocation(line: 212, column: 31, scope: !402)
!466 = !DILocation(line: 0, scope: !277, inlinedAt: !467)
!467 = distinct !DILocation(line: 213, column: 29, scope: !402)
!468 = !DILocation(line: 283, column: 30, scope: !277, inlinedAt: !467)
!469 = !DILocation(line: 283, column: 47, scope: !277, inlinedAt: !467)
!470 = !DILocation(line: 283, column: 42, scope: !277, inlinedAt: !467)
!471 = !DILocation(line: 283, column: 51, scope: !277, inlinedAt: !467)
!472 = !DILocation(line: 283, column: 38, scope: !277, inlinedAt: !467)
!473 = !DILocation(line: 283, column: 35, scope: !277, inlinedAt: !467)
!474 = !DILocation(line: 283, column: 10, scope: !277, inlinedAt: !467)
!475 = !DILocation(line: 214, column: 30, scope: !402)
!476 = !DILocation(line: 0, scope: !327, inlinedAt: !477)
!477 = distinct !DILocation(line: 216, column: 11, scope: !402)
!478 = !DILocation(line: 304, column: 23, scope: !327, inlinedAt: !477)
!479 = !DILocation(line: 304, column: 40, scope: !327, inlinedAt: !477)
!480 = !DILocation(line: 304, column: 35, scope: !327, inlinedAt: !477)
!481 = !DILocation(line: 304, column: 44, scope: !327, inlinedAt: !477)
!482 = !DILocation(line: 304, column: 31, scope: !327, inlinedAt: !477)
!483 = !DILocation(line: 304, column: 28, scope: !327, inlinedAt: !477)
!484 = !DILocation(line: 304, column: 52, scope: !327, inlinedAt: !477)
!485 = !DILocation(line: 209, column: 34, scope: !403)
!486 = distinct !{!486, !458, !487, !317}
!487 = !DILocation(line: 217, column: 9, scope: !404)
!488 = !DILocation(line: 184, column: 30, scope: !389)
!489 = distinct !{!489, !414, !490, !317}
!490 = !DILocation(line: 218, column: 5, scope: !390)
!491 = !DILocation(line: 221, column: 1, scope: !380)
!492 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_hv", scope: !1, file: !1, line: 224, type: !493, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!5, !44, !136, !64}
!495 = !{!496, !497, !498, !499, !500, !502, !503, !504, !505, !506, !513, !514, !516}
!496 = !DILocalVariable(name: "tau", arg: 1, scope: !492, file: !1, line: 224, type: !44)
!497 = !DILocalVariable(name: "v", arg: 2, scope: !492, file: !1, line: 224, type: !136)
!498 = !DILocalVariable(name: "w", arg: 3, scope: !492, file: !1, line: 224, type: !64)
!499 = !DILocalVariable(name: "N", scope: !492, file: !1, line: 226, type: !88)
!500 = !DILocalVariable(name: "z0", scope: !501, file: !1, line: 234, type: !44)
!501 = distinct !DILexicalBlock(scope: !492, file: !1, line: 231, column: 3)
!502 = !DILocalVariable(name: "z1", scope: !501, file: !1, line: 235, type: !44)
!503 = !DILocalVariable(name: "z", scope: !501, file: !1, line: 235, type: !44)
!504 = !DILocalVariable(name: "tz", scope: !501, file: !1, line: 236, type: !44)
!505 = !DILocalVariable(name: "ntz", scope: !501, file: !1, line: 236, type: !44)
!506 = !DILocalVariable(name: "v1", scope: !501, file: !1, line: 238, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex_const_view", file: !66, line: 65, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_complex_const_view", file: !66, line: 63, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 60, size: 320, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !510, file: !66, line: 62, baseType: !65, size: 320)
!513 = !DILocalVariable(name: "w1", scope: !501, file: !1, line: 239, type: !103)
!514 = !DILocalVariable(name: "w0", scope: !515, file: !1, line: 251, type: !44)
!515 = distinct !DILexicalBlock(scope: !501, file: !1, line: 250, column: 5)
!516 = !DILocalVariable(name: "w0ntz", scope: !515, file: !1, line: 252, type: !44)
!517 = distinct !DIAssignID()
!518 = !DILocation(line: 0, scope: !501)
!519 = distinct !DIAssignID()
!520 = distinct !DIAssignID()
!521 = !DILocation(line: 0, scope: !492)
!522 = !DILocation(line: 228, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !492, file: !1, line: 228, column: 7)
!524 = !DILocation(line: 228, column: 28, scope: !523)
!525 = !DILocation(line: 226, column: 23, scope: !492)
!526 = !DILocation(line: 0, scope: !133, inlinedAt: !527)
!527 = distinct !DILocation(line: 234, column: 22, scope: !501)
!528 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !527)
!529 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !527)
!530 = !DILocation(line: 235, column: 5, scope: !501)
!531 = !DILocation(line: 238, column: 5, scope: !501)
!532 = !DILocation(line: 238, column: 82, scope: !501)
!533 = !DILocation(line: 238, column: 40, scope: !501)
!534 = !DILocation(line: 239, column: 5, scope: !501)
!535 = !DILocation(line: 239, column: 34, scope: !501)
!536 = !DILocation(line: 241, column: 5, scope: !501)
!537 = !DILocation(line: 243, column: 9, scope: !501)
!538 = !DILocation(line: 245, column: 10, scope: !501)
!539 = !DILocation(line: 246, column: 11, scope: !501)
!540 = !DILocation(line: 0, scope: !133, inlinedAt: !541)
!541 = distinct !DILocation(line: 251, column: 24, scope: !515)
!542 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !541)
!543 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !541)
!544 = !DILocation(line: 0, scope: !515)
!545 = !DILocation(line: 252, column: 27, scope: !515)
!546 = !DILocation(line: 0, scope: !159, inlinedAt: !547)
!547 = distinct !DILocation(line: 253, column: 7, scope: !515)
!548 = !DILocation(line: 215, column: 4, scope: !159, inlinedAt: !547)
!549 = !DILocation(line: 215, column: 28, scope: !159, inlinedAt: !547)
!550 = !DILocation(line: 256, column: 5, scope: !501)
!551 = !DILocation(line: 257, column: 3, scope: !492)
!552 = !DILocation(line: 259, column: 3, scope: !492)
!553 = !DILocation(line: 260, column: 1, scope: !492)
!554 = !DISubprogram(name: "gsl_vector_complex_const_subvector", scope: !66, file: !66, line: 119, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DISubroutineType(types: !556)
!556 = !{!509, !136, !70, !70}
!557 = !DISubprogram(name: "gsl_blas_zdotc", scope: !207, file: !207, line: 84, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{!5, !136, !136, !43}
!560 = !DISubprogram(name: "gsl_complex_negative", scope: !200, file: !200, line: 83, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubprogram(name: "gsl_blas_zaxpy", scope: !207, file: !207, line: 141, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!5, !223, !136, !64}
