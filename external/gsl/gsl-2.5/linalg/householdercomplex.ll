; ModuleID = 'householdercomplex.c'
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
  br i1 %4, label %5, label %23, !dbg !131

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
  %11 = tail call double @gsl_complex_abs(double %8, double %10) #6, !dbg !149
  tail call void @llvm.dbg.value(metadata double %11, metadata !92, metadata !DIExpression()), !dbg !148
  %12 = fcmp oge double %8, 0.000000e+00, !dbg !150
  %13 = fneg double %11, !dbg !151
  %14 = select i1 %12, double %13, double %11, !dbg !151
  tail call void @llvm.dbg.value(metadata double %14, metadata !93, metadata !DIExpression()), !dbg !148
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !152
  br i1 %15, label %55, label %16, !dbg !153

16:                                               ; preds = %5
  %17 = fsub double %14, %8, !dbg !154
  %18 = fdiv double %17, %14, !dbg !155
  tail call void @llvm.dbg.value(metadata double %18, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  %19 = fneg double %10, !dbg !156
  %20 = fdiv double %19, %14, !dbg !157
  tail call void @llvm.dbg.value(metadata double %20, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %14, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !158
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !95, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !158
  tail call void @llvm.dbg.value(metadata double %14, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !166
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !166
  %21 = load ptr, ptr %6, align 8, !dbg !168, !tbaa !143
  store double %14, ptr %21, align 8, !dbg !169, !tbaa.struct !145
  %22 = getelementptr inbounds i8, ptr %21, i64 8, !dbg !169
  store double 0.000000e+00, ptr %22, align 8, !dbg !169, !tbaa.struct !147
  br label %55

23:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6, !dbg !170
  %24 = add i64 %3, -1, !dbg !171
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %2, ptr noundef nonnull %0, i64 noundef 1, i64 noundef %24) #6, !dbg !172
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !173
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !173
  %25 = getelementptr inbounds %struct.gsl_vector_complex, ptr %0, i64 0, i32 2, !dbg !175
  %26 = load ptr, ptr %25, align 8, !dbg !175, !tbaa !143
  %27 = load double, ptr %26, align 8, !dbg !176, !tbaa.struct !145
  %28 = getelementptr inbounds i8, ptr %26, i64 8, !dbg !176
  %29 = load double, ptr %28, align 8, !dbg !176, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %27, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !120
  tail call void @llvm.dbg.value(metadata double %29, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !120
  %30 = call double @gsl_complex_abs(double %27, double %29) #6, !dbg !177
  tail call void @llvm.dbg.value(metadata double %30, metadata !109, metadata !DIExpression()), !dbg !120
  %31 = call double @gsl_blas_dznrm2(ptr noundef nonnull %2) #6, !dbg !178
  tail call void @llvm.dbg.value(metadata double %31, metadata !110, metadata !DIExpression()), !dbg !120
  %32 = fcmp oeq double %31, 0.000000e+00, !dbg !179
  %33 = fcmp oeq double %29, 0.000000e+00
  %34 = select i1 %32, i1 %33, i1 false, !dbg !180
  br i1 %34, label %52, label %35, !dbg !180

35:                                               ; preds = %23
  %36 = fcmp oge double %27, 0.000000e+00, !dbg !181
  %37 = call double @hypot(double noundef %30, double noundef %31) #6, !dbg !182
  %38 = fneg double %37, !dbg !183
  %39 = select i1 %36, double %38, double %37, !dbg !183
  tail call void @llvm.dbg.value(metadata double %39, metadata !101, metadata !DIExpression()), !dbg !120
  %40 = fsub double %39, %27, !dbg !184
  %41 = fdiv double %40, %39, !dbg !185
  tail call void @llvm.dbg.value(metadata double %41, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !120
  %42 = fneg double %29, !dbg !186
  %43 = fdiv double %42, %39, !dbg !187
  tail call void @llvm.dbg.value(metadata double %43, metadata !99, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !120
  %44 = call { double, double } @gsl_complex_sub_real(double %27, double %29, double noundef %39) #6, !dbg !188
  %45 = extractvalue { double, double } %44, 0, !dbg !188
  tail call void @llvm.dbg.value(metadata double %45, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !189
  %46 = extractvalue { double, double } %44, 1, !dbg !188
  tail call void @llvm.dbg.value(metadata double %46, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !189
  %47 = call { double, double } @gsl_complex_inverse(double %45, double %46) #6, !dbg !190
  %48 = extractvalue { double, double } %47, 0, !dbg !190
  tail call void @llvm.dbg.value(metadata double %48, metadata !116, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !189
  %49 = extractvalue { double, double } %47, 1, !dbg !190
  tail call void @llvm.dbg.value(metadata double %49, metadata !116, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !189
  call void @gsl_blas_zscal(double %48, double %49, ptr noundef nonnull %2) #6, !dbg !191
  tail call void @llvm.dbg.value(metadata double %39, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !192
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !117, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !192
  tail call void @llvm.dbg.value(metadata double %39, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !193
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !193
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !193
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !193
  %50 = load ptr, ptr %25, align 8, !dbg !195, !tbaa !143
  store double %39, ptr %50, align 8, !dbg !196, !tbaa.struct !145
  %51 = getelementptr inbounds i8, ptr %50, i64 8, !dbg !196
  store double 0.000000e+00, ptr %51, align 8, !dbg !196, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %41, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %43, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  br label %52, !dbg !197

52:                                               ; preds = %23, %35
  %53 = phi double [ %41, %35 ], [ 0.000000e+00, %23 ], !dbg !120
  %54 = phi double [ %43, %35 ], [ 0.000000e+00, %23 ], !dbg !120
  tail call void @llvm.dbg.value(metadata double %54, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %53, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6, !dbg !198
  br label %55

55:                                               ; preds = %16, %5, %52
  %56 = phi double [ %53, %52 ], [ %18, %16 ], [ 0.000000e+00, %5 ], !dbg !199
  %57 = phi double [ %54, %52 ], [ %20, %16 ], [ 0.000000e+00, %5 ], !dbg !199
  tail call void @llvm.dbg.value(metadata double %57, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  tail call void @llvm.dbg.value(metadata double %56, metadata !94, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  %58 = insertvalue { double, double } poison, double %56, 0, !dbg !200
  %59 = insertvalue { double, double } %58, double %57, 1, !dbg !200
  ret { double, double } %59, !dbg !200
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !201 double @gsl_complex_abs(double, double) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !205 void @gsl_vector_complex_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !208 double @gsl_blas_dznrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !212 double @hypot(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !216 { double, double } @gsl_complex_sub_real(double, double, double noundef) local_unnamed_addr #2

declare !dbg !219 { double, double } @gsl_complex_inverse(double, double) local_unnamed_addr #2

declare !dbg !222 void @gsl_blas_zscal(double, double, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_hm(double %0, double %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !226 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !267
  tail call void @llvm.dbg.value(metadata double %1, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !242, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !243, metadata !DIExpression()), !dbg !267
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !268
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !270
  br i1 %7, label %120, label %8, !dbg !270

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !267
  %10 = load i64, ptr %9, align 8, !dbg !271, !tbaa !272
  %11 = icmp eq i64 %10, 0, !dbg !274
  br i1 %11, label %120, label %12, !dbg !275

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %3, align 8, !dbg !276, !tbaa !277
  br label %18, !dbg !275

18:                                               ; preds = %12, %115
  %19 = phi i64 [ %17, %12 ], [ %116, %115 ], !dbg !276
  %20 = phi i64 [ 0, %12 ], [ %117, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !245, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata i64 0, metadata !285, metadata !DIExpression()), !dbg !287
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !286, metadata !DIExpression()), !dbg !287
  %21 = load ptr, ptr %13, align 8, !dbg !289, !tbaa !290
  %22 = shl i64 %20, 1, !dbg !291
  %23 = getelementptr inbounds double, ptr %21, i64 %22, !dbg !292
  %24 = load double, ptr %23, align 8, !dbg !293, !tbaa.struct !145
  %25 = getelementptr inbounds i8, ptr %23, i64 8, !dbg !293
  %26 = load double, ptr %25, align 8, !dbg !293, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double poison, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata double poison, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata i64 1, metadata !244, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata double %26, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata double %24, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  %27 = icmp ugt i64 %19, 1, !dbg !295
  br i1 %27, label %28, label %61, !dbg !296

28:                                               ; preds = %18, %28
  %29 = phi double [ %58, %28 ], [ %24, %18 ]
  %30 = phi double [ %57, %28 ], [ %26, %18 ]
  %31 = phi i64 [ %56, %28 ], [ 1, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !244, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !285, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !286, metadata !DIExpression()), !dbg !297
  %32 = load ptr, ptr %13, align 8, !dbg !299, !tbaa !290
  %33 = load i64, ptr %14, align 8, !dbg !300, !tbaa !301
  %34 = mul i64 %33, %31, !dbg !302
  %35 = add i64 %34, %20, !dbg !303
  %36 = shl i64 %35, 1, !dbg !304
  %37 = getelementptr inbounds double, ptr %32, i64 %36, !dbg !305
  %38 = load double, ptr %37, align 8, !dbg !306, !tbaa.struct !145
  %39 = getelementptr inbounds i8, ptr %37, i64 8, !dbg !306
  %40 = load double, ptr %39, align 8, !dbg !306, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %38, metadata !251, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !307
  tail call void @llvm.dbg.value(metadata double %40, metadata !251, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !307
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !139, metadata !DIExpression()), !dbg !308
  %41 = load ptr, ptr %15, align 8, !dbg !310, !tbaa !143
  %42 = shl i64 %31, 1, !dbg !310
  %43 = load i64, ptr %16, align 8, !dbg !310, !tbaa !311
  %44 = mul i64 %42, %43, !dbg !310
  %45 = getelementptr inbounds double, ptr %41, i64 %44, !dbg !310
  %46 = load double, ptr %45, align 8, !dbg !312, !tbaa.struct !145
  %47 = getelementptr inbounds i8, ptr %45, i64 8, !dbg !312
  %48 = load double, ptr %47, align 8, !dbg !312, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %46, metadata !255, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !307
  tail call void @llvm.dbg.value(metadata double %48, metadata !255, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !307
  %49 = tail call { double, double } @gsl_complex_conjugate(double %46, double %48) #6, !dbg !313
  %50 = extractvalue { double, double } %49, 0, !dbg !313
  %51 = extractvalue { double, double } %49, 1, !dbg !313
  %52 = tail call { double, double } @gsl_complex_mul(double %38, double %40, double %50, double %51) #6, !dbg !314
  %53 = extractvalue { double, double } %52, 0, !dbg !314
  tail call void @llvm.dbg.value(metadata double %53, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !307
  %54 = extractvalue { double, double } %52, 1, !dbg !314
  tail call void @llvm.dbg.value(metadata double %54, metadata !256, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !307
  %55 = tail call { double, double } @gsl_complex_add(double %29, double %30, double %53, double %54) #6, !dbg !315
  tail call void @llvm.dbg.value(metadata double poison, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata double poison, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  %56 = add nuw i64 %31, 1, !dbg !316
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !244, metadata !DIExpression()), !dbg !267
  %57 = extractvalue { double, double } %55, 1, !dbg !294
  %58 = extractvalue { double, double } %55, 0, !dbg !294
  tail call void @llvm.dbg.value(metadata double %57, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata double %58, metadata !250, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  %59 = load i64, ptr %3, align 8, !dbg !276, !tbaa !277
  %60 = icmp ult i64 %56, %59, !dbg !295
  br i1 %60, label %28, label %61, !dbg !296, !llvm.loop !317

61:                                               ; preds = %28, %18
  %62 = phi double [ %26, %18 ], [ %57, %28 ], !dbg !294
  %63 = phi double [ %24, %18 ], [ %58, %28 ], !dbg !294
  %64 = tail call { double, double } @gsl_complex_mul(double %0, double %1, double %63, double %62) #6, !dbg !320
  %65 = extractvalue { double, double } %64, 0, !dbg !320
  %66 = extractvalue { double, double } %64, 1, !dbg !320
  tail call void @llvm.dbg.value(metadata double %65, metadata !246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata double %66, metadata !246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !294
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 0, metadata !285, metadata !DIExpression()), !dbg !321
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !286, metadata !DIExpression()), !dbg !321
  %67 = load ptr, ptr %13, align 8, !dbg !323, !tbaa !290
  %68 = getelementptr inbounds double, ptr %67, i64 %22, !dbg !324
  %69 = load double, ptr %68, align 8, !dbg !325, !tbaa.struct !145
  %70 = getelementptr inbounds i8, ptr %68, i64 8, !dbg !325
  %71 = load double, ptr %70, align 8, !dbg !325, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %69, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !326
  tail call void @llvm.dbg.value(metadata double %71, metadata !257, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !326
  %72 = tail call { double, double } @gsl_complex_sub(double %69, double %71, double %65, double %66) #6, !dbg !327
  %73 = extractvalue { double, double } %72, 0, !dbg !327
  tail call void @llvm.dbg.value(metadata double %73, metadata !259, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !326
  %74 = extractvalue { double, double } %72, 1, !dbg !327
  tail call void @llvm.dbg.value(metadata double %74, metadata !259, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !326
  tail call void @llvm.dbg.value(metadata double %73, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !336
  tail call void @llvm.dbg.value(metadata double %74, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !336
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 0, metadata !334, metadata !DIExpression()), !dbg !336
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !335, metadata !DIExpression()), !dbg !336
  %75 = load ptr, ptr %13, align 8, !dbg !338, !tbaa !290
  %76 = getelementptr inbounds double, ptr %75, i64 %22, !dbg !339
  store double %73, ptr %76, align 8, !dbg !340, !tbaa.struct !145
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !340
  store double %74, ptr %77, align 8, !dbg !340, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !244, metadata !DIExpression()), !dbg !267
  %78 = load i64, ptr %3, align 8, !dbg !341, !tbaa !277
  %79 = icmp ugt i64 %78, 1, !dbg !342
  br i1 %79, label %80, label %115, !dbg !343

80:                                               ; preds = %61, %80
  %81 = phi i64 [ %112, %80 ], [ 1, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !244, metadata !DIExpression()), !dbg !267
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !139, metadata !DIExpression()), !dbg !344
  %82 = load ptr, ptr %15, align 8, !dbg !346, !tbaa !143
  %83 = shl i64 %81, 1, !dbg !346
  %84 = load i64, ptr %16, align 8, !dbg !346, !tbaa !311
  %85 = mul i64 %83, %84, !dbg !346
  %86 = getelementptr inbounds double, ptr %82, i64 %85, !dbg !346
  %87 = load double, ptr %86, align 8, !dbg !347, !tbaa.struct !145
  %88 = getelementptr inbounds i8, ptr %86, i64 8, !dbg !347
  %89 = load double, ptr %88, align 8, !dbg !347, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %87, metadata !260, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  tail call void @llvm.dbg.value(metadata double %89, metadata !260, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  %90 = tail call { double, double } @gsl_complex_mul(double %87, double %89, double %65, double %66) #6, !dbg !349
  %91 = extractvalue { double, double } %90, 0, !dbg !349
  tail call void @llvm.dbg.value(metadata double %91, metadata !264, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  %92 = extractvalue { double, double } %90, 1, !dbg !349
  tail call void @llvm.dbg.value(metadata double %92, metadata !264, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !285, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !286, metadata !DIExpression()), !dbg !350
  %93 = load ptr, ptr %13, align 8, !dbg !352, !tbaa !290
  %94 = load i64, ptr %14, align 8, !dbg !353, !tbaa !301
  %95 = mul i64 %94, %81, !dbg !354
  %96 = add i64 %95, %20, !dbg !355
  %97 = shl i64 %96, 1, !dbg !356
  %98 = getelementptr inbounds double, ptr %93, i64 %97, !dbg !357
  %99 = load double, ptr %98, align 8, !dbg !358, !tbaa.struct !145
  %100 = getelementptr inbounds i8, ptr %98, i64 8, !dbg !358
  %101 = load double, ptr %100, align 8, !dbg !358, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %99, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  tail call void @llvm.dbg.value(metadata double %101, metadata !265, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  %102 = tail call { double, double } @gsl_complex_sub(double %99, double %101, double %91, double %92) #6, !dbg !359
  %103 = extractvalue { double, double } %102, 0, !dbg !359
  tail call void @llvm.dbg.value(metadata double %103, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !348
  %104 = extractvalue { double, double } %102, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata double %104, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !348
  tail call void @llvm.dbg.value(metadata double %103, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !360
  tail call void @llvm.dbg.value(metadata double %104, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !360
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !334, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !335, metadata !DIExpression()), !dbg !360
  %105 = load ptr, ptr %13, align 8, !dbg !362, !tbaa !290
  %106 = load i64, ptr %14, align 8, !dbg !363, !tbaa !301
  %107 = mul i64 %106, %81, !dbg !364
  %108 = add i64 %107, %20, !dbg !365
  %109 = shl i64 %108, 1, !dbg !366
  %110 = getelementptr inbounds double, ptr %105, i64 %109, !dbg !367
  store double %103, ptr %110, align 8, !dbg !368, !tbaa.struct !145
  %111 = getelementptr inbounds i8, ptr %110, i64 8, !dbg !368
  store double %104, ptr %111, align 8, !dbg !368, !tbaa.struct !147
  %112 = add nuw i64 %81, 1, !dbg !369
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !244, metadata !DIExpression()), !dbg !267
  %113 = load i64, ptr %3, align 8, !dbg !341, !tbaa !277
  %114 = icmp ult i64 %112, %113, !dbg !342
  br i1 %114, label %80, label %115, !dbg !343, !llvm.loop !370

115:                                              ; preds = %80, %61
  %116 = phi i64 [ %78, %61 ], [ %113, %80 ]
  %117 = add nuw i64 %20, 1, !dbg !372
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !245, metadata !DIExpression()), !dbg !267
  %118 = load i64, ptr %9, align 8, !dbg !271, !tbaa !272
  %119 = icmp ult i64 %117, %118, !dbg !274
  br i1 %119, label %18, label %120, !dbg !275, !llvm.loop !373

120:                                              ; preds = %115, %8, %4
  ret i32 0, !dbg !375
}

declare !dbg !376 { double, double } @gsl_complex_mul(double, double, double, double) local_unnamed_addr #2

declare !dbg !379 { double, double } @gsl_complex_conjugate(double, double) local_unnamed_addr #2

declare !dbg !380 { double, double } @gsl_complex_add(double, double, double, double) local_unnamed_addr #2

declare !dbg !381 { double, double } @gsl_complex_sub(double, double, double, double) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_mh(double %0, double %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !382 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !384, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %1, metadata !384, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !385, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !386, metadata !DIExpression()), !dbg !410
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !411
  %6 = fcmp oeq double %1, 0.000000e+00
  %7 = select i1 %5, i1 %6, i1 false, !dbg !413
  br i1 %7, label %119, label %8, !dbg !413

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !410
  %9 = load i64, ptr %3, align 8, !dbg !414, !tbaa !277
  %10 = icmp eq i64 %9, 0, !dbg !415
  br i1 %10, label %119, label %11, !dbg !416

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector_complex, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %14, align 8, !dbg !417, !tbaa !272
  br label %18, !dbg !416

18:                                               ; preds = %11, %114
  %19 = phi i64 [ %17, %11 ], [ %115, %114 ], !dbg !417
  %20 = phi i64 [ 0, %11 ], [ %116, %114 ]
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !387, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !285, metadata !DIExpression()), !dbg !418
  tail call void @llvm.dbg.value(metadata i64 0, metadata !286, metadata !DIExpression()), !dbg !418
  %21 = load ptr, ptr %12, align 8, !dbg !420, !tbaa !290
  %22 = load i64, ptr %13, align 8, !dbg !421, !tbaa !301
  %23 = shl i64 %20, 1, !dbg !422
  %24 = mul i64 %23, %22, !dbg !423
  %25 = getelementptr inbounds double, ptr %21, i64 %24, !dbg !424
  %26 = load double, ptr %25, align 8, !dbg !425, !tbaa.struct !145
  %27 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !425
  %28 = load double, ptr %27, align 8, !dbg !425, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %26, metadata !393, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %28, metadata !393, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %26, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %28, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 1, metadata !388, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata i64 1, metadata !388, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %28, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %26, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  %29 = icmp ugt i64 %19, 1, !dbg !427
  br i1 %29, label %30, label %60, !dbg !428

30:                                               ; preds = %18, %30
  %31 = phi i64 [ %57, %30 ], [ 1, %18 ]
  %32 = phi double [ %56, %30 ], [ %28, %18 ]
  %33 = phi double [ %55, %30 ], [ %26, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !388, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %32, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %33, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !285, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !286, metadata !DIExpression()), !dbg !429
  %34 = load ptr, ptr %12, align 8, !dbg !431, !tbaa !290
  %35 = load i64, ptr %13, align 8, !dbg !432, !tbaa !301
  %36 = mul i64 %35, %20, !dbg !433
  %37 = add i64 %36, %31, !dbg !434
  %38 = shl i64 %37, 1, !dbg !435
  %39 = getelementptr inbounds double, ptr %34, i64 %38, !dbg !436
  %40 = load double, ptr %39, align 8, !dbg !437, !tbaa.struct !145
  %41 = getelementptr inbounds i8, ptr %39, i64 8, !dbg !437
  %42 = load double, ptr %41, align 8, !dbg !437, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %40, metadata !395, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !438
  tail call void @llvm.dbg.value(metadata double %42, metadata !395, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !438
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !439
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !139, metadata !DIExpression()), !dbg !439
  %43 = load ptr, ptr %15, align 8, !dbg !441, !tbaa !143
  %44 = shl i64 %31, 1, !dbg !441
  %45 = load i64, ptr %16, align 8, !dbg !441, !tbaa !311
  %46 = mul i64 %44, %45, !dbg !441
  %47 = getelementptr inbounds double, ptr %43, i64 %46, !dbg !441
  %48 = load double, ptr %47, align 8, !dbg !442, !tbaa.struct !145
  %49 = getelementptr inbounds i8, ptr %47, i64 8, !dbg !442
  %50 = load double, ptr %49, align 8, !dbg !442, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %48, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !438
  tail call void @llvm.dbg.value(metadata double %50, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !438
  %51 = tail call { double, double } @gsl_complex_mul(double %40, double %42, double %48, double %50) #6, !dbg !443
  %52 = extractvalue { double, double } %51, 0, !dbg !443
  tail call void @llvm.dbg.value(metadata double %52, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !438
  %53 = extractvalue { double, double } %51, 1, !dbg !443
  tail call void @llvm.dbg.value(metadata double %53, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !438
  %54 = tail call { double, double } @gsl_complex_add(double %33, double %32, double %52, double %53) #6, !dbg !444
  %55 = extractvalue { double, double } %54, 0, !dbg !444
  %56 = extractvalue { double, double } %54, 1, !dbg !444
  tail call void @llvm.dbg.value(metadata double %55, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %56, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  %57 = add nuw i64 %31, 1, !dbg !445
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !388, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata double %55, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  %58 = load i64, ptr %14, align 8, !dbg !417, !tbaa !272
  %59 = icmp ult i64 %57, %58, !dbg !427
  br i1 %59, label %30, label %60, !dbg !428, !llvm.loop !446

60:                                               ; preds = %30, %18
  %61 = phi double [ %26, %18 ], [ %55, %30 ], !dbg !426
  %62 = phi double [ %28, %18 ], [ %56, %30 ], !dbg !426
  %63 = tail call { double, double } @gsl_complex_mul(double %0, double %1, double %61, double %62) #6, !dbg !448
  %64 = extractvalue { double, double } %63, 0, !dbg !448
  %65 = extractvalue { double, double } %63, 1, !dbg !448
  tail call void @llvm.dbg.value(metadata double %64, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  tail call void @llvm.dbg.value(metadata double %65, metadata !389, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  %66 = tail call { double, double } @gsl_complex_sub(double %26, double %28, double %64, double %65) #6, !dbg !449
  %67 = extractvalue { double, double } %66, 0, !dbg !449
  tail call void @llvm.dbg.value(metadata double %67, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !450
  %68 = extractvalue { double, double } %66, 1, !dbg !449
  tail call void @llvm.dbg.value(metadata double %68, metadata !401, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !450
  tail call void @llvm.dbg.value(metadata double %67, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %68, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !451
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !334, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 0, metadata !335, metadata !DIExpression()), !dbg !451
  %69 = load ptr, ptr %12, align 8, !dbg !453, !tbaa !290
  %70 = load i64, ptr %13, align 8, !dbg !454, !tbaa !301
  %71 = mul i64 %23, %70, !dbg !455
  %72 = getelementptr inbounds double, ptr %69, i64 %71, !dbg !456
  store double %67, ptr %72, align 8, !dbg !457, !tbaa.struct !145
  %73 = getelementptr inbounds i8, ptr %72, i64 8, !dbg !457
  store double %68, ptr %73, align 8, !dbg !457, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata i64 1, metadata !388, metadata !DIExpression()), !dbg !410
  %74 = load i64, ptr %14, align 8, !dbg !458, !tbaa !272
  %75 = icmp ugt i64 %74, 1, !dbg !459
  br i1 %75, label %76, label %114, !dbg !460

76:                                               ; preds = %60, %76
  %77 = phi i64 [ %111, %76 ], [ 1, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !388, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !139, metadata !DIExpression()), !dbg !461
  %78 = load ptr, ptr %15, align 8, !dbg !463, !tbaa !143
  %79 = shl i64 %77, 1, !dbg !463
  %80 = load i64, ptr %16, align 8, !dbg !463, !tbaa !311
  %81 = mul i64 %79, %80, !dbg !463
  %82 = getelementptr inbounds double, ptr %78, i64 %81, !dbg !463
  %83 = load double, ptr %82, align 8, !dbg !464, !tbaa.struct !145
  %84 = getelementptr inbounds i8, ptr %82, i64 8, !dbg !464
  %85 = load double, ptr %84, align 8, !dbg !464, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %83, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !465
  tail call void @llvm.dbg.value(metadata double %85, metadata !403, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !465
  %86 = tail call { double, double } @gsl_complex_conjugate(double %83, double %85) #6, !dbg !466
  %87 = extractvalue { double, double } %86, 0, !dbg !466
  %88 = extractvalue { double, double } %86, 1, !dbg !466
  %89 = tail call { double, double } @gsl_complex_mul(double %87, double %88, double %64, double %65) #6, !dbg !467
  %90 = extractvalue { double, double } %89, 0, !dbg !467
  tail call void @llvm.dbg.value(metadata double %90, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !465
  %91 = extractvalue { double, double } %89, 1, !dbg !467
  tail call void @llvm.dbg.value(metadata double %91, metadata !407, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !465
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !285, metadata !DIExpression()), !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !286, metadata !DIExpression()), !dbg !468
  %92 = load ptr, ptr %12, align 8, !dbg !470, !tbaa !290
  %93 = load i64, ptr %13, align 8, !dbg !471, !tbaa !301
  %94 = mul i64 %93, %20, !dbg !472
  %95 = add i64 %94, %77, !dbg !473
  %96 = shl i64 %95, 1, !dbg !474
  %97 = getelementptr inbounds double, ptr %92, i64 %96, !dbg !475
  %98 = load double, ptr %97, align 8, !dbg !476, !tbaa.struct !145
  %99 = getelementptr inbounds i8, ptr %97, i64 8, !dbg !476
  %100 = load double, ptr %99, align 8, !dbg !476, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %98, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !465
  tail call void @llvm.dbg.value(metadata double %100, metadata !408, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !465
  %101 = tail call { double, double } @gsl_complex_sub(double %98, double %100, double %90, double %91) #6, !dbg !477
  %102 = extractvalue { double, double } %101, 0, !dbg !477
  tail call void @llvm.dbg.value(metadata double %102, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !465
  %103 = extractvalue { double, double } %101, 1, !dbg !477
  tail call void @llvm.dbg.value(metadata double %103, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !465
  tail call void @llvm.dbg.value(metadata double %102, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !478
  tail call void @llvm.dbg.value(metadata double %103, metadata !328, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !333, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !334, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !335, metadata !DIExpression()), !dbg !478
  %104 = load ptr, ptr %12, align 8, !dbg !480, !tbaa !290
  %105 = load i64, ptr %13, align 8, !dbg !481, !tbaa !301
  %106 = mul i64 %105, %20, !dbg !482
  %107 = add i64 %106, %77, !dbg !483
  %108 = shl i64 %107, 1, !dbg !484
  %109 = getelementptr inbounds double, ptr %104, i64 %108, !dbg !485
  store double %102, ptr %109, align 8, !dbg !486, !tbaa.struct !145
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !486
  store double %103, ptr %110, align 8, !dbg !486, !tbaa.struct !147
  %111 = add nuw i64 %77, 1, !dbg !487
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !388, metadata !DIExpression()), !dbg !410
  %112 = load i64, ptr %14, align 8, !dbg !458, !tbaa !272
  %113 = icmp ult i64 %111, %112, !dbg !459
  br i1 %113, label %76, label %114, !dbg !460, !llvm.loop !488

114:                                              ; preds = %76, %60
  %115 = phi i64 [ %74, %60 ], [ %112, %76 ]
  %116 = add nuw i64 %20, 1, !dbg !490
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !387, metadata !DIExpression()), !dbg !410
  %117 = load i64, ptr %3, align 8, !dbg !414, !tbaa !277
  %118 = icmp ult i64 %116, %117, !dbg !415
  br i1 %118, label %18, label %119, !dbg !416, !llvm.loop !491

119:                                              ; preds = %114, %8, %4
  ret i32 0, !dbg !493
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_complex_householder_hv(double %0, double %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !494 {
  %5 = alloca %struct.gsl_complex, align 8, !DIAssignID !519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !504, metadata !DIExpression(), metadata !519, metadata ptr %5, metadata !DIExpression()), !dbg !520
  %6 = alloca %struct._gsl_vector_complex_const_view, align 8, !DIAssignID !521
  call void @llvm.dbg.assign(metadata i1 undef, metadata !508, metadata !DIExpression(), metadata !521, metadata ptr %6, metadata !DIExpression()), !dbg !520
  %7 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !515, metadata !DIExpression(), metadata !522, metadata ptr %7, metadata !DIExpression()), !dbg !520
  tail call void @llvm.dbg.value(metadata double %0, metadata !498, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !523
  tail call void @llvm.dbg.value(metadata double %1, metadata !498, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !500, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !501, metadata !DIExpression()), !dbg !523
  %8 = fcmp oeq double %0, 0.000000e+00, !dbg !524
  %9 = fcmp oeq double %1, 0.000000e+00
  %10 = select i1 %8, i1 %9, i1 false, !dbg !526
  br i1 %10, label %42, label %11, !dbg !526

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !dbg !527, !tbaa !123
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !501, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !132, metadata !DIExpression()), !dbg !528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !528
  %13 = getelementptr inbounds %struct.gsl_vector_complex, ptr %3, i64 0, i32 2, !dbg !530
  %14 = load ptr, ptr %13, align 8, !dbg !530, !tbaa !143
  %15 = load double, ptr %14, align 8, !dbg !531, !tbaa.struct !145
  %16 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !531
  %17 = load double, ptr %16, align 8, !dbg !531, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %15, metadata !502, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !520
  tail call void @llvm.dbg.value(metadata double %17, metadata !502, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !520
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !532
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !533
  %18 = add i64 %12, -1, !dbg !534
  call void @gsl_vector_complex_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_const_view) align 8 %6, ptr noundef nonnull %2, i64 noundef 1, i64 noundef %18) #6, !dbg !535
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !536
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %7, ptr noundef %3, i64 noundef 1, i64 noundef %18) #6, !dbg !537
  %19 = call i32 @gsl_blas_zdotc(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #6, !dbg !538
  %20 = load double, ptr %5, align 8, !dbg !539
  %21 = getelementptr inbounds { double, double }, ptr %5, i64 0, i32 1, !dbg !539
  %22 = load double, ptr %21, align 8, !dbg !539
  %23 = call { double, double } @gsl_complex_add(double %15, double %17, double %20, double %22) #6, !dbg !539
  %24 = extractvalue { double, double } %23, 0, !dbg !539
  %25 = extractvalue { double, double } %23, 1, !dbg !539
  tail call void @llvm.dbg.value(metadata double %24, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !520
  tail call void @llvm.dbg.value(metadata double %25, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !520
  %26 = call { double, double } @gsl_complex_mul(double %0, double %1, double %24, double %25) #6, !dbg !540
  %27 = extractvalue { double, double } %26, 0, !dbg !540
  %28 = extractvalue { double, double } %26, 1, !dbg !540
  tail call void @llvm.dbg.value(metadata double %27, metadata !506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !520
  tail call void @llvm.dbg.value(metadata double %28, metadata !506, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !520
  %29 = call { double, double } @gsl_complex_negative(double %27, double %28) #6, !dbg !541
  %30 = extractvalue { double, double } %29, 0, !dbg !541
  %31 = extractvalue { double, double } %29, 1, !dbg !541
  tail call void @llvm.dbg.value(metadata double %30, metadata !507, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !520
  tail call void @llvm.dbg.value(metadata double %31, metadata !507, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !520
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !132, metadata !DIExpression()), !dbg !542
  tail call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression()), !dbg !542
  %32 = load ptr, ptr %13, align 8, !dbg !544, !tbaa !143
  %33 = load double, ptr %32, align 8, !dbg !545, !tbaa.struct !145
  %34 = getelementptr inbounds i8, ptr %32, i64 8, !dbg !545
  %35 = load double, ptr %34, align 8, !dbg !545, !tbaa.struct !147
  tail call void @llvm.dbg.value(metadata double %33, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !546
  tail call void @llvm.dbg.value(metadata double %35, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !546
  %36 = call { double, double } @gsl_complex_add(double %33, double %35, double %30, double %31) #6, !dbg !547
  %37 = extractvalue { double, double } %36, 0, !dbg !547
  tail call void @llvm.dbg.value(metadata double %37, metadata !518, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !546
  %38 = extractvalue { double, double } %36, 1, !dbg !547
  tail call void @llvm.dbg.value(metadata double %38, metadata !518, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !546
  tail call void @llvm.dbg.value(metadata double %37, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !548
  tail call void @llvm.dbg.value(metadata double %38, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !548
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !164, metadata !DIExpression()), !dbg !548
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !548
  %39 = load ptr, ptr %13, align 8, !dbg !550, !tbaa !143
  store double %37, ptr %39, align 8, !dbg !551, !tbaa.struct !145
  %40 = getelementptr inbounds i8, ptr %39, i64 8, !dbg !551
  store double %38, ptr %40, align 8, !dbg !551, !tbaa.struct !147
  %41 = call i32 @gsl_blas_zaxpy(double %30, double %31, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !552
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !553
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !553
  br label %42, !dbg !554

42:                                               ; preds = %4, %11
  ret i32 0, !dbg !555
}

declare !dbg !556 void @gsl_vector_complex_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !559 i32 @gsl_blas_zdotc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !562 { double, double } @gsl_complex_negative(double, double) local_unnamed_addr #2

declare !dbg !563 i32 @gsl_blas_zaxpy(double, double, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!154 = !DILocation(line: 71, column: 35, scope: !97)
!155 = !DILocation(line: 71, column: 54, scope: !97)
!156 = !DILocation(line: 72, column: 27, scope: !97)
!157 = !DILocation(line: 72, column: 45, scope: !97)
!158 = !DILocation(line: 0, scope: !96)
!159 = !DILocalVariable(name: "z", arg: 3, scope: !160, file: !66, line: 207, type: !44)
!160 = distinct !DISubprogram(name: "gsl_vector_complex_set", scope: !66, file: !66, line: 206, type: !161, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !64, !88, !44}
!163 = !{!164, !165, !159}
!164 = !DILocalVariable(name: "v", arg: 1, scope: !160, file: !66, line: 206, type: !64)
!165 = !DILocalVariable(name: "i", arg: 2, scope: !160, file: !66, line: 207, type: !88)
!166 = !DILocation(line: 0, scope: !160, inlinedAt: !167)
!167 = distinct !DILocation(line: 76, column: 13, scope: !96)
!168 = !DILocation(line: 215, column: 4, scope: !160, inlinedAt: !167)
!169 = !DILocation(line: 215, column: 28, scope: !160, inlinedAt: !167)
!170 = !DILocation(line: 87, column: 7, scope: !100)
!171 = !DILocation(line: 87, column: 73, scope: !100)
!172 = !DILocation(line: 87, column: 35, scope: !100)
!173 = !DILocation(line: 0, scope: !133, inlinedAt: !174)
!174 = distinct !DILocation(line: 88, column: 27, scope: !100)
!175 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !174)
!176 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !174)
!177 = !DILocation(line: 89, column: 21, scope: !100)
!178 = !DILocation(line: 90, column: 22, scope: !100)
!179 = !DILocation(line: 92, column: 17, scope: !113)
!180 = !DILocation(line: 92, column: 22, scope: !113)
!181 = !DILocation(line: 98, column: 35, scope: !100)
!182 = !DILocation(line: 98, column: 53, scope: !100)
!183 = !DILocation(line: 98, column: 51, scope: !100)
!184 = !DILocation(line: 100, column: 31, scope: !100)
!185 = !DILocation(line: 100, column: 50, scope: !100)
!186 = !DILocation(line: 101, column: 23, scope: !100)
!187 = !DILocation(line: 101, column: 41, scope: !100)
!188 = !DILocation(line: 104, column: 27, scope: !115)
!189 = !DILocation(line: 0, scope: !115)
!190 = !DILocation(line: 105, column: 25, scope: !115)
!191 = !DILocation(line: 106, column: 9, scope: !115)
!192 = !DILocation(line: 0, scope: !118)
!193 = !DILocation(line: 0, scope: !160, inlinedAt: !194)
!194 = distinct !DILocation(line: 111, column: 9, scope: !118)
!195 = !DILocation(line: 215, column: 4, scope: !160, inlinedAt: !194)
!196 = !DILocation(line: 215, column: 28, scope: !160, inlinedAt: !194)
!197 = !DILocation(line: 114, column: 7, scope: !100)
!198 = !DILocation(line: 115, column: 5, scope: !91)
!199 = !DILocation(line: 0, scope: !91)
!200 = !DILocation(line: 116, column: 1, scope: !61)
!201 = !DISubprogram(name: "gsl_complex_abs", scope: !202, file: !202, line: 60, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DIFile(filename: "../gsl/gsl_complex_math.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3bebe2d988d25a9edadbea9b4bb7ae01")
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !44}
!205 = !DISubprogram(name: "gsl_vector_complex_subvector", scope: !66, file: !66, line: 107, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!104, !64, !70, !70}
!208 = !DISubprogram(name: "gsl_blas_dznrm2", scope: !209, file: !209, line: 95, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!210 = !DISubroutineType(types: !211)
!211 = !{!50, !136}
!212 = !DISubprogram(name: "hypot", scope: !213, file: !213, line: 147, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!214 = !DISubroutineType(types: !215)
!215 = !{!50, !50, !50}
!216 = !DISubprogram(name: "gsl_complex_sub_real", scope: !202, file: !202, line: 72, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{!44, !44, !50}
!219 = !DISubprogram(name: "gsl_complex_inverse", scope: !202, file: !202, line: 82, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{!44, !44}
!222 = !DISubprogram(name: "gsl_blas_zscal", scope: !209, file: !209, line: 175, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225, !64}
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!226 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_hm", scope: !1, file: !1, line: 119, type: !227, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!227 = !DISubroutineType(types: !228)
!228 = !{!5, !44, !136, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_complex", file: !231, line: 50, baseType: !232)
!231 = !DIFile(filename: "../gsl/gsl_matrix_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "c485e5a850396d8a68a20b26e12adce5")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 42, size: 384, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !232, file: !231, line: 44, baseType: !70, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !232, file: !231, line: 45, baseType: !70, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !232, file: !231, line: 46, baseType: !70, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !232, file: !231, line: 47, baseType: !75, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !232, file: !231, line: 48, baseType: !77, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !232, file: !231, line: 49, baseType: !5, size: 32, offset: 320)
!240 = !{!241, !242, !243, !244, !245, !246, !250, !251, !255, !256, !257, !259, !260, !264, !265, !266}
!241 = !DILocalVariable(name: "tau", arg: 1, scope: !226, file: !1, line: 119, type: !44)
!242 = !DILocalVariable(name: "v", arg: 2, scope: !226, file: !1, line: 119, type: !136)
!243 = !DILocalVariable(name: "A", arg: 3, scope: !226, file: !1, line: 119, type: !229)
!244 = !DILocalVariable(name: "i", scope: !226, file: !1, line: 123, type: !70)
!245 = !DILocalVariable(name: "j", scope: !226, file: !1, line: 123, type: !70)
!246 = !DILocalVariable(name: "tauwj", scope: !247, file: !1, line: 134, type: !44)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 133, column: 5)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 132, column: 3)
!249 = distinct !DILexicalBlock(scope: !226, file: !1, line: 132, column: 3)
!250 = !DILocalVariable(name: "wj", scope: !247, file: !1, line: 135, type: !44)
!251 = !DILocalVariable(name: "Aij", scope: !252, file: !1, line: 139, type: !44)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 138, column: 9)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 137, column: 7)
!254 = distinct !DILexicalBlock(scope: !247, file: !1, line: 137, column: 7)
!255 = !DILocalVariable(name: "vi", scope: !252, file: !1, line: 140, type: !44)
!256 = !DILocalVariable(name: "Av", scope: !252, file: !1, line: 141, type: !44)
!257 = !DILocalVariable(name: "A0j", scope: !258, file: !1, line: 150, type: !44)
!258 = distinct !DILexicalBlock(scope: !247, file: !1, line: 149, column: 7)
!259 = !DILocalVariable(name: "Atw", scope: !258, file: !1, line: 151, type: !44)
!260 = !DILocalVariable(name: "vi", scope: !261, file: !1, line: 158, type: !44)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 157, column: 9)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 156, column: 7)
!263 = distinct !DILexicalBlock(scope: !247, file: !1, line: 156, column: 7)
!264 = !DILocalVariable(name: "tauvw", scope: !261, file: !1, line: 159, type: !44)
!265 = !DILocalVariable(name: "Aij", scope: !261, file: !1, line: 160, type: !44)
!266 = !DILocalVariable(name: "Atwv", scope: !261, file: !1, line: 161, type: !44)
!267 = !DILocation(line: 0, scope: !226)
!268 = !DILocation(line: 125, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !226, file: !1, line: 125, column: 7)
!270 = !DILocation(line: 125, column: 28, scope: !269)
!271 = !DILocation(line: 132, column: 22, scope: !248)
!272 = !{!273, !125, i64 8}
!273 = !{!"", !125, i64 0, !125, i64 8, !125, i64 16, !128, i64 24, !128, i64 32, !129, i64 40}
!274 = !DILocation(line: 132, column: 17, scope: !248)
!275 = !DILocation(line: 132, column: 3, scope: !249)
!276 = !DILocation(line: 137, column: 26, scope: !253)
!277 = !{!273, !125, i64 0}
!278 = !DILocalVariable(name: "m", arg: 1, scope: !279, file: !231, line: 265, type: !282)
!279 = distinct !DISubprogram(name: "gsl_matrix_complex_get", scope: !231, file: !231, line: 265, type: !280, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!280 = !DISubroutineType(types: !281)
!281 = !{!44, !282, !88, !88}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!284 = !{!278, !285, !286}
!285 = !DILocalVariable(name: "i", arg: 2, scope: !279, file: !231, line: 266, type: !88)
!286 = !DILocalVariable(name: "j", arg: 3, scope: !279, file: !231, line: 266, type: !88)
!287 = !DILocation(line: 0, scope: !279, inlinedAt: !288)
!288 = distinct !DILocation(line: 135, column: 24, scope: !247)
!289 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !288)
!290 = !{!273, !128, i64 24}
!291 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !288)
!292 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !288)
!293 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !288)
!294 = !DILocation(line: 0, scope: !247)
!295 = !DILocation(line: 137, column: 21, scope: !253)
!296 = !DILocation(line: 137, column: 7, scope: !254)
!297 = !DILocation(line: 0, scope: !279, inlinedAt: !298)
!298 = distinct !DILocation(line: 139, column: 29, scope: !252)
!299 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !298)
!300 = !DILocation(line: 283, column: 47, scope: !279, inlinedAt: !298)
!301 = !{!273, !125, i64 16}
!302 = !DILocation(line: 283, column: 42, scope: !279, inlinedAt: !298)
!303 = !DILocation(line: 283, column: 51, scope: !279, inlinedAt: !298)
!304 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !298)
!305 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !298)
!306 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !298)
!307 = !DILocation(line: 0, scope: !252)
!308 = !DILocation(line: 0, scope: !133, inlinedAt: !309)
!309 = distinct !DILocation(line: 140, column: 28, scope: !252)
!310 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !309)
!311 = !{!124, !125, i64 8}
!312 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !309)
!313 = !DILocation(line: 141, column: 50, scope: !252)
!314 = !DILocation(line: 141, column: 28, scope: !252)
!315 = !DILocation(line: 142, column: 16, scope: !252)
!316 = !DILocation(line: 137, column: 34, scope: !253)
!317 = distinct !{!317, !296, !318, !319}
!318 = !DILocation(line: 143, column: 9, scope: !254)
!319 = !{!"llvm.loop.mustprogress"}
!320 = !DILocation(line: 145, column: 15, scope: !247)
!321 = !DILocation(line: 0, scope: !279, inlinedAt: !322)
!322 = distinct !DILocation(line: 150, column: 27, scope: !258)
!323 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !322)
!324 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !322)
!325 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !322)
!326 = !DILocation(line: 0, scope: !258)
!327 = !DILocation(line: 151, column: 27, scope: !258)
!328 = !DILocalVariable(name: "x", arg: 4, scope: !329, file: !231, line: 289, type: !225)
!329 = distinct !DISubprogram(name: "gsl_matrix_complex_set", scope: !231, file: !231, line: 288, type: !330, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !229, !88, !88, !225}
!332 = !{!333, !334, !335, !328}
!333 = !DILocalVariable(name: "m", arg: 1, scope: !329, file: !231, line: 288, type: !229)
!334 = !DILocalVariable(name: "i", arg: 2, scope: !329, file: !231, line: 289, type: !88)
!335 = !DILocalVariable(name: "j", arg: 3, scope: !329, file: !231, line: 289, type: !88)
!336 = !DILocation(line: 0, scope: !329, inlinedAt: !337)
!337 = distinct !DILocation(line: 153, column: 9, scope: !258)
!338 = !DILocation(line: 304, column: 23, scope: !329, inlinedAt: !337)
!339 = !DILocation(line: 304, column: 28, scope: !329, inlinedAt: !337)
!340 = !DILocation(line: 304, column: 52, scope: !329, inlinedAt: !337)
!341 = !DILocation(line: 156, column: 26, scope: !262)
!342 = !DILocation(line: 156, column: 21, scope: !262)
!343 = !DILocation(line: 156, column: 7, scope: !263)
!344 = !DILocation(line: 0, scope: !133, inlinedAt: !345)
!345 = distinct !DILocation(line: 158, column: 28, scope: !261)
!346 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !345)
!347 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !345)
!348 = !DILocation(line: 0, scope: !261)
!349 = !DILocation(line: 159, column: 31, scope: !261)
!350 = !DILocation(line: 0, scope: !279, inlinedAt: !351)
!351 = distinct !DILocation(line: 160, column: 29, scope: !261)
!352 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !351)
!353 = !DILocation(line: 283, column: 47, scope: !279, inlinedAt: !351)
!354 = !DILocation(line: 283, column: 42, scope: !279, inlinedAt: !351)
!355 = !DILocation(line: 283, column: 51, scope: !279, inlinedAt: !351)
!356 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !351)
!357 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !351)
!358 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !351)
!359 = !DILocation(line: 161, column: 30, scope: !261)
!360 = !DILocation(line: 0, scope: !329, inlinedAt: !361)
!361 = distinct !DILocation(line: 163, column: 11, scope: !261)
!362 = !DILocation(line: 304, column: 23, scope: !329, inlinedAt: !361)
!363 = !DILocation(line: 304, column: 40, scope: !329, inlinedAt: !361)
!364 = !DILocation(line: 304, column: 35, scope: !329, inlinedAt: !361)
!365 = !DILocation(line: 304, column: 44, scope: !329, inlinedAt: !361)
!366 = !DILocation(line: 304, column: 31, scope: !329, inlinedAt: !361)
!367 = !DILocation(line: 304, column: 28, scope: !329, inlinedAt: !361)
!368 = !DILocation(line: 304, column: 52, scope: !329, inlinedAt: !361)
!369 = !DILocation(line: 156, column: 34, scope: !262)
!370 = distinct !{!370, !343, !371, !319}
!371 = !DILocation(line: 164, column: 9, scope: !263)
!372 = !DILocation(line: 132, column: 30, scope: !248)
!373 = distinct !{!373, !275, !374, !319}
!374 = !DILocation(line: 165, column: 5, scope: !249)
!375 = !DILocation(line: 168, column: 1, scope: !226)
!376 = !DISubprogram(name: "gsl_complex_mul", scope: !202, file: !202, line: 68, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!44, !44, !44}
!379 = !DISubprogram(name: "gsl_complex_conjugate", scope: !202, file: !202, line: 81, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubprogram(name: "gsl_complex_add", scope: !202, file: !202, line: 66, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubprogram(name: "gsl_complex_sub", scope: !202, file: !202, line: 67, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_mh", scope: !1, file: !1, line: 171, type: !227, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !393, !394, !395, !399, !400, !401, !403, !407, !408, !409}
!384 = !DILocalVariable(name: "tau", arg: 1, scope: !382, file: !1, line: 171, type: !44)
!385 = !DILocalVariable(name: "v", arg: 2, scope: !382, file: !1, line: 171, type: !136)
!386 = !DILocalVariable(name: "A", arg: 3, scope: !382, file: !1, line: 171, type: !229)
!387 = !DILocalVariable(name: "i", scope: !382, file: !1, line: 175, type: !70)
!388 = !DILocalVariable(name: "j", scope: !382, file: !1, line: 175, type: !70)
!389 = !DILocalVariable(name: "tauwi", scope: !390, file: !1, line: 186, type: !44)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 185, column: 5)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 184, column: 3)
!392 = distinct !DILexicalBlock(scope: !382, file: !1, line: 184, column: 3)
!393 = !DILocalVariable(name: "Ai0", scope: !390, file: !1, line: 187, type: !44)
!394 = !DILocalVariable(name: "wi", scope: !390, file: !1, line: 188, type: !44)
!395 = !DILocalVariable(name: "Aij", scope: !396, file: !1, line: 193, type: !44)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 192, column: 9)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 191, column: 7)
!398 = distinct !DILexicalBlock(scope: !390, file: !1, line: 191, column: 7)
!399 = !DILocalVariable(name: "vj", scope: !396, file: !1, line: 194, type: !44)
!400 = !DILocalVariable(name: "Av", scope: !396, file: !1, line: 195, type: !44)
!401 = !DILocalVariable(name: "Atw", scope: !402, file: !1, line: 204, type: !44)
!402 = distinct !DILexicalBlock(scope: !390, file: !1, line: 203, column: 7)
!403 = !DILocalVariable(name: "vj", scope: !404, file: !1, line: 211, type: !44)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 210, column: 9)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 209, column: 7)
!406 = distinct !DILexicalBlock(scope: !390, file: !1, line: 209, column: 7)
!407 = !DILocalVariable(name: "tauwv", scope: !404, file: !1, line: 212, type: !44)
!408 = !DILocalVariable(name: "Aij", scope: !404, file: !1, line: 213, type: !44)
!409 = !DILocalVariable(name: "Atwv", scope: !404, file: !1, line: 214, type: !44)
!410 = !DILocation(line: 0, scope: !382)
!411 = !DILocation(line: 177, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !382, file: !1, line: 177, column: 7)
!413 = !DILocation(line: 177, column: 28, scope: !412)
!414 = !DILocation(line: 184, column: 22, scope: !391)
!415 = !DILocation(line: 184, column: 17, scope: !391)
!416 = !DILocation(line: 184, column: 3, scope: !392)
!417 = !DILocation(line: 191, column: 26, scope: !397)
!418 = !DILocation(line: 0, scope: !279, inlinedAt: !419)
!419 = distinct !DILocation(line: 187, column: 25, scope: !390)
!420 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !419)
!421 = !DILocation(line: 283, column: 47, scope: !279, inlinedAt: !419)
!422 = !DILocation(line: 283, column: 42, scope: !279, inlinedAt: !419)
!423 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !419)
!424 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !419)
!425 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !419)
!426 = !DILocation(line: 0, scope: !390)
!427 = !DILocation(line: 191, column: 21, scope: !397)
!428 = !DILocation(line: 191, column: 7, scope: !398)
!429 = !DILocation(line: 0, scope: !279, inlinedAt: !430)
!430 = distinct !DILocation(line: 193, column: 29, scope: !396)
!431 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !430)
!432 = !DILocation(line: 283, column: 47, scope: !279, inlinedAt: !430)
!433 = !DILocation(line: 283, column: 42, scope: !279, inlinedAt: !430)
!434 = !DILocation(line: 283, column: 51, scope: !279, inlinedAt: !430)
!435 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !430)
!436 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !430)
!437 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !430)
!438 = !DILocation(line: 0, scope: !396)
!439 = !DILocation(line: 0, scope: !133, inlinedAt: !440)
!440 = distinct !DILocation(line: 194, column: 28, scope: !396)
!441 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !440)
!442 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !440)
!443 = !DILocation(line: 195, column: 28, scope: !396)
!444 = !DILocation(line: 196, column: 16, scope: !396)
!445 = !DILocation(line: 191, column: 34, scope: !397)
!446 = distinct !{!446, !428, !447, !319}
!447 = !DILocation(line: 197, column: 9, scope: !398)
!448 = !DILocation(line: 199, column: 15, scope: !390)
!449 = !DILocation(line: 204, column: 27, scope: !402)
!450 = !DILocation(line: 0, scope: !402)
!451 = !DILocation(line: 0, scope: !329, inlinedAt: !452)
!452 = distinct !DILocation(line: 206, column: 9, scope: !402)
!453 = !DILocation(line: 304, column: 23, scope: !329, inlinedAt: !452)
!454 = !DILocation(line: 304, column: 40, scope: !329, inlinedAt: !452)
!455 = !DILocation(line: 304, column: 31, scope: !329, inlinedAt: !452)
!456 = !DILocation(line: 304, column: 28, scope: !329, inlinedAt: !452)
!457 = !DILocation(line: 304, column: 52, scope: !329, inlinedAt: !452)
!458 = !DILocation(line: 209, column: 26, scope: !405)
!459 = !DILocation(line: 209, column: 21, scope: !405)
!460 = !DILocation(line: 209, column: 7, scope: !406)
!461 = !DILocation(line: 0, scope: !133, inlinedAt: !462)
!462 = distinct !DILocation(line: 211, column: 28, scope: !404)
!463 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !462)
!464 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !462)
!465 = !DILocation(line: 0, scope: !404)
!466 = !DILocation(line: 212, column: 47, scope: !404)
!467 = !DILocation(line: 212, column: 31, scope: !404)
!468 = !DILocation(line: 0, scope: !279, inlinedAt: !469)
!469 = distinct !DILocation(line: 213, column: 29, scope: !404)
!470 = !DILocation(line: 283, column: 30, scope: !279, inlinedAt: !469)
!471 = !DILocation(line: 283, column: 47, scope: !279, inlinedAt: !469)
!472 = !DILocation(line: 283, column: 42, scope: !279, inlinedAt: !469)
!473 = !DILocation(line: 283, column: 51, scope: !279, inlinedAt: !469)
!474 = !DILocation(line: 283, column: 38, scope: !279, inlinedAt: !469)
!475 = !DILocation(line: 283, column: 35, scope: !279, inlinedAt: !469)
!476 = !DILocation(line: 283, column: 10, scope: !279, inlinedAt: !469)
!477 = !DILocation(line: 214, column: 30, scope: !404)
!478 = !DILocation(line: 0, scope: !329, inlinedAt: !479)
!479 = distinct !DILocation(line: 216, column: 11, scope: !404)
!480 = !DILocation(line: 304, column: 23, scope: !329, inlinedAt: !479)
!481 = !DILocation(line: 304, column: 40, scope: !329, inlinedAt: !479)
!482 = !DILocation(line: 304, column: 35, scope: !329, inlinedAt: !479)
!483 = !DILocation(line: 304, column: 44, scope: !329, inlinedAt: !479)
!484 = !DILocation(line: 304, column: 31, scope: !329, inlinedAt: !479)
!485 = !DILocation(line: 304, column: 28, scope: !329, inlinedAt: !479)
!486 = !DILocation(line: 304, column: 52, scope: !329, inlinedAt: !479)
!487 = !DILocation(line: 209, column: 34, scope: !405)
!488 = distinct !{!488, !460, !489, !319}
!489 = !DILocation(line: 217, column: 9, scope: !406)
!490 = !DILocation(line: 184, column: 30, scope: !391)
!491 = distinct !{!491, !416, !492, !319}
!492 = !DILocation(line: 218, column: 5, scope: !392)
!493 = !DILocation(line: 221, column: 1, scope: !382)
!494 = distinct !DISubprogram(name: "gsl_linalg_complex_householder_hv", scope: !1, file: !1, line: 224, type: !495, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!5, !44, !136, !64}
!497 = !{!498, !499, !500, !501, !502, !504, !505, !506, !507, !508, !515, !516, !518}
!498 = !DILocalVariable(name: "tau", arg: 1, scope: !494, file: !1, line: 224, type: !44)
!499 = !DILocalVariable(name: "v", arg: 2, scope: !494, file: !1, line: 224, type: !136)
!500 = !DILocalVariable(name: "w", arg: 3, scope: !494, file: !1, line: 224, type: !64)
!501 = !DILocalVariable(name: "N", scope: !494, file: !1, line: 226, type: !88)
!502 = !DILocalVariable(name: "z0", scope: !503, file: !1, line: 234, type: !44)
!503 = distinct !DILexicalBlock(scope: !494, file: !1, line: 231, column: 3)
!504 = !DILocalVariable(name: "z1", scope: !503, file: !1, line: 235, type: !44)
!505 = !DILocalVariable(name: "z", scope: !503, file: !1, line: 235, type: !44)
!506 = !DILocalVariable(name: "tz", scope: !503, file: !1, line: 236, type: !44)
!507 = !DILocalVariable(name: "ntz", scope: !503, file: !1, line: 236, type: !44)
!508 = !DILocalVariable(name: "v1", scope: !503, file: !1, line: 238, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex_const_view", file: !66, line: 65, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_complex_const_view", file: !66, line: 63, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 60, size: 320, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !512, file: !66, line: 62, baseType: !65, size: 320)
!515 = !DILocalVariable(name: "w1", scope: !503, file: !1, line: 239, type: !103)
!516 = !DILocalVariable(name: "w0", scope: !517, file: !1, line: 251, type: !44)
!517 = distinct !DILexicalBlock(scope: !503, file: !1, line: 250, column: 5)
!518 = !DILocalVariable(name: "w0ntz", scope: !517, file: !1, line: 252, type: !44)
!519 = distinct !DIAssignID()
!520 = !DILocation(line: 0, scope: !503)
!521 = distinct !DIAssignID()
!522 = distinct !DIAssignID()
!523 = !DILocation(line: 0, scope: !494)
!524 = !DILocation(line: 228, column: 21, scope: !525)
!525 = distinct !DILexicalBlock(scope: !494, file: !1, line: 228, column: 7)
!526 = !DILocation(line: 228, column: 28, scope: !525)
!527 = !DILocation(line: 226, column: 23, scope: !494)
!528 = !DILocation(line: 0, scope: !133, inlinedAt: !529)
!529 = distinct !DILocation(line: 234, column: 22, scope: !503)
!530 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !529)
!531 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !529)
!532 = !DILocation(line: 235, column: 5, scope: !503)
!533 = !DILocation(line: 238, column: 5, scope: !503)
!534 = !DILocation(line: 238, column: 82, scope: !503)
!535 = !DILocation(line: 238, column: 40, scope: !503)
!536 = !DILocation(line: 239, column: 5, scope: !503)
!537 = !DILocation(line: 239, column: 34, scope: !503)
!538 = !DILocation(line: 241, column: 5, scope: !503)
!539 = !DILocation(line: 243, column: 9, scope: !503)
!540 = !DILocation(line: 245, column: 10, scope: !503)
!541 = !DILocation(line: 246, column: 11, scope: !503)
!542 = !DILocation(line: 0, scope: !133, inlinedAt: !543)
!543 = distinct !DILocation(line: 251, column: 24, scope: !517)
!544 = !DILocation(line: 201, column: 11, scope: !133, inlinedAt: !543)
!545 = !DILocation(line: 201, column: 10, scope: !133, inlinedAt: !543)
!546 = !DILocation(line: 0, scope: !517)
!547 = !DILocation(line: 252, column: 27, scope: !517)
!548 = !DILocation(line: 0, scope: !160, inlinedAt: !549)
!549 = distinct !DILocation(line: 253, column: 7, scope: !517)
!550 = !DILocation(line: 215, column: 4, scope: !160, inlinedAt: !549)
!551 = !DILocation(line: 215, column: 28, scope: !160, inlinedAt: !549)
!552 = !DILocation(line: 256, column: 5, scope: !503)
!553 = !DILocation(line: 257, column: 3, scope: !494)
!554 = !DILocation(line: 259, column: 3, scope: !494)
!555 = !DILocation(line: 260, column: 1, scope: !494)
!556 = !DISubprogram(name: "gsl_vector_complex_const_subvector", scope: !66, file: !66, line: 119, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!511, !136, !70, !70}
!559 = !DISubprogram(name: "gsl_blas_zdotc", scope: !209, file: !209, line: 84, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubroutineType(types: !561)
!561 = !{!5, !136, !136, !43}
!562 = !DISubprogram(name: "gsl_complex_negative", scope: !202, file: !202, line: 83, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubprogram(name: "gsl_blas_zaxpy", scope: !209, file: !209, line: 141, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubroutineType(types: !565)
!565 = !{!5, !225, !136, !64}
