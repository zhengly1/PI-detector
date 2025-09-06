; ModuleID = 'exponential.ll'
source_filename = "exponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.moler_vanloan_optimal_suggestion = type { i32, i32 }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [40 x i8] c"cannot exponentiate a non-square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"exponential.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [57 x i8] c"exponential of matrix must have same dimension as matrix\00", align 1, !dbg !12
@mvl_tab = internal unnamed_addr constant [3 x [6 x %struct.moler_vanloan_optimal_suggestion]] [[6 x %struct.moler_vanloan_optimal_suggestion] [%struct.moler_vanloan_optimal_suggestion { i32 5, i32 1 }, %struct.moler_vanloan_optimal_suggestion { i32 5, i32 4 }, %struct.moler_vanloan_optimal_suggestion { i32 7, i32 5 }, %struct.moler_vanloan_optimal_suggestion { i32 9, i32 7 }, %struct.moler_vanloan_optimal_suggestion { i32 10, i32 10 }, %struct.moler_vanloan_optimal_suggestion { i32 8, i32 14 }], [6 x %struct.moler_vanloan_optimal_suggestion] [%struct.moler_vanloan_optimal_suggestion { i32 2, i32 1 }, %struct.moler_vanloan_optimal_suggestion { i32 4, i32 0 }, %struct.moler_vanloan_optimal_suggestion { i32 7, i32 1 }, %struct.moler_vanloan_optimal_suggestion { i32 6, i32 5 }, %struct.moler_vanloan_optimal_suggestion { i32 5, i32 9 }, %struct.moler_vanloan_optimal_suggestion { i32 7, i32 11 }], [6 x %struct.moler_vanloan_optimal_suggestion] [%struct.moler_vanloan_optimal_suggestion { i32 1, i32 0 }, %struct.moler_vanloan_optimal_suggestion { i32 3, i32 0 }, %struct.moler_vanloan_optimal_suggestion { i32 5, i32 1 }, %struct.moler_vanloan_optimal_suggestion { i32 4, i32 5 }, %struct.moler_vanloan_optimal_suggestion { i32 4, i32 8 }, %struct.moler_vanloan_optimal_suggestion { i32 2, i32 11 }]], align 16, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_exponential_ss(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !86 {
  %4 = alloca double, align 8, !DIAssignID !129
  %5 = alloca double, align 8, !DIAssignID !130
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !117, metadata !DIExpression()), !dbg !131
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !118, metadata !DIExpression()), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !119, metadata !DIExpression()), !dbg !131
  %6 = load i64, ptr %0, align 8, !dbg !132, !tbaa !133
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !140
  %8 = load i64, ptr %7, align 8, !dbg !140, !tbaa !141
  %9 = icmp eq i64 %6, %8, !dbg !142
  br i1 %9, label %11, label %10, !dbg !143

10:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 20) #5, !dbg !144
  br label %121, !dbg !144

11:                                               ; preds = %3
  %12 = load i64, ptr %1, align 8, !dbg !147, !tbaa !133
  %13 = icmp eq i64 %6, %12, !dbg !148
  br i1 %13, label %14, label %18, !dbg !149

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !150
  %16 = load i64, ptr %15, align 8, !dbg !150, !tbaa !141
  %17 = icmp eq i64 %6, %16, !dbg !151
  br i1 %17, label %19, label %18, !dbg !152

18:                                               ; preds = %14, %11
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 158, i32 noundef 19) #5, !dbg !153
  br label %121, !dbg !153

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr %0, metadata !156, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %2, metadata !161, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %2, metadata !178, metadata !DIExpression()), !dbg !183
  %20 = and i32 %2, 7, !dbg !185
  call void @llvm.dbg.value(metadata i32 %20, metadata !162, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.assign(metadata i1 undef, metadata !186, metadata !DIExpression(), metadata !129, metadata ptr %4, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.assign(metadata i1 undef, metadata !192, metadata !DIExpression(), metadata !130, metadata ptr %5, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5, !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5, !dbg !195
  call void @gsl_matrix_minmax(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #5, !dbg !196
  %21 = load double, ptr %4, align 8, !dbg !197, !tbaa !198
  %22 = call double @llvm.fabs.f64(double %21), !dbg !200
  %23 = load double, ptr %5, align 8, !dbg !201, !tbaa !198
  %24 = call double @llvm.fabs.f64(double %23), !dbg !202
  call void @llvm.dbg.value(metadata double %22, metadata !203, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata double %24, metadata !209, metadata !DIExpression()), !dbg !210
  %25 = fcmp ogt double %22, %24, !dbg !212
  %26 = select i1 %25, double %22, double %24, !dbg !212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5, !dbg !213
  call void @llvm.dbg.value(metadata double %26, metadata !164, metadata !DIExpression()), !dbg !176
  %27 = fcmp olt double %26, 1.000000e-02, !dbg !214
  br i1 %27, label %28, label %33, !dbg !215

28:                                               ; preds = %19
  %29 = zext nneg i32 %20 to i64, !dbg !216
  %30 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %29, !dbg !216
  %31 = getelementptr inbounds i8, ptr %30, i64 4, !dbg !216
  %32 = load i32, ptr %31, align 4, !dbg !216, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %32, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !220

33:                                               ; preds = %19
  %34 = fcmp olt double %26, 1.000000e-01, !dbg !221
  br i1 %34, label %35, label %40, !dbg !222

35:                                               ; preds = %33
  %36 = zext nneg i32 %20 to i64, !dbg !223
  %37 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %36, i64 1, !dbg !223
  %38 = getelementptr inbounds i8, ptr %37, i64 4, !dbg !223
  %39 = load i32, ptr %38, align 4, !dbg !223, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %39, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !224

40:                                               ; preds = %33
  %41 = fcmp olt double %26, 1.000000e+00, !dbg !225
  br i1 %41, label %42, label %47, !dbg !226

42:                                               ; preds = %40
  %43 = zext nneg i32 %20 to i64, !dbg !227
  %44 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %43, i64 2, !dbg !227
  %45 = getelementptr inbounds i8, ptr %44, i64 4, !dbg !227
  %46 = load i32, ptr %45, align 4, !dbg !227, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %46, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !228

47:                                               ; preds = %40
  %48 = fcmp olt double %26, 1.000000e+01, !dbg !229
  br i1 %48, label %49, label %54, !dbg !230

49:                                               ; preds = %47
  %50 = zext nneg i32 %20 to i64, !dbg !231
  %51 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %50, i64 3, !dbg !231
  %52 = getelementptr inbounds i8, ptr %51, i64 4, !dbg !231
  %53 = load i32, ptr %52, align 4, !dbg !231, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %53, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !232

54:                                               ; preds = %47
  %55 = fcmp olt double %26, 1.000000e+02, !dbg !233
  br i1 %55, label %56, label %61, !dbg !234

56:                                               ; preds = %54
  %57 = zext nneg i32 %20 to i64, !dbg !235
  %58 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %57, i64 4, !dbg !235
  %59 = getelementptr inbounds i8, ptr %58, i64 4, !dbg !235
  %60 = load i32, ptr %59, align 4, !dbg !235, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %60, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !236

61:                                               ; preds = %54
  %62 = fcmp olt double %26, 1.000000e+03, !dbg !237
  br i1 %62, label %63, label %68, !dbg !238

63:                                               ; preds = %61
  %64 = zext nneg i32 %20 to i64, !dbg !239
  %65 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %64, i64 5, !dbg !239
  %66 = getelementptr inbounds i8, ptr %65, i64 4, !dbg !239
  %67 = load i32, ptr %66, align 4, !dbg !239, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %67, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79, !dbg !240

68:                                               ; preds = %61
  %69 = fmul double %26, 1.010000e+00, !dbg !241
  %70 = fdiv double %69, 1.000000e+03, !dbg !242
  %handler_result = call double @callHandler(i32 12, double %70, double %70), !dbg !243
  %71 = fdiv double %handler_result, 0x3FE62E42FEFA39EF, !dbg !243
  call void @llvm.dbg.value(metadata double %71, metadata !165, metadata !DIExpression()), !dbg !219
  %72 = call double @llvm.ceil.f64(double %71), !dbg !244
  %73 = fptoui double %72 to i32, !dbg !245
  call void @llvm.dbg.value(metadata i32 %73, metadata !173, metadata !DIExpression()), !dbg !219
  %74 = zext i32 %2 to i64, !dbg !246
  %75 = getelementptr inbounds [3 x [6 x %struct.moler_vanloan_optimal_suggestion]], ptr @mvl_tab, i64 0, i64 %74, i64 5, !dbg !246
  %76 = getelementptr inbounds i8, ptr %75, i64 4, !dbg !246
  %77 = load i32, ptr %76, align 4, !dbg !246, !tbaa.struct !217
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 %77, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  %78 = add nsw i32 %77, %73, !dbg !247
  call void @llvm.dbg.value(metadata i32 %78, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  br label %79

79:                                               ; preds = %68, %63, %56, %49, %42, %35, %28
  %80 = phi ptr [ %30, %28 ], [ %37, %35 ], [ %44, %42 ], [ %51, %49 ], [ %58, %56 ], [ %65, %63 ], [ %75, %68 ]
  %81 = phi i32 [ %32, %28 ], [ %39, %35 ], [ %46, %42 ], [ %53, %49 ], [ %60, %56 ], [ %67, %63 ], [ %78, %68 ], !dbg !248
  %82 = load i32, ptr %80, align 8, !dbg !248
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !219
  call void @llvm.dbg.value(metadata i32 poison, metadata !175, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !124, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !249
  %83 = sitofp i32 %81 to double, !dbg !250
  %84 = fmul double %83, 0x3FE62E42FEFA39EF, !dbg !251
  %85 = call double @exp(double noundef %84) #5, !dbg !252
  tail call void @llvm.dbg.value(metadata double %85, metadata !126, metadata !DIExpression()), !dbg !249
  %86 = load i64, ptr %0, align 8, !dbg !253, !tbaa !133
  %87 = load i64, ptr %7, align 8, !dbg !254, !tbaa !141
  %88 = call ptr @gsl_matrix_alloc(i64 noundef %86, i64 noundef %87) #5, !dbg !255
  tail call void @llvm.dbg.value(metadata ptr %88, metadata !128, metadata !DIExpression()), !dbg !249
  %89 = call i32 @gsl_matrix_memcpy(ptr noundef %88, ptr noundef nonnull %0) #5, !dbg !256
  %90 = fdiv double 1.000000e+00, %85, !dbg !257
  %91 = call i32 @gsl_matrix_scale(ptr noundef %88, double noundef %90) #5, !dbg !258
  call void @llvm.dbg.value(metadata ptr %88, metadata !259, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata ptr %1, metadata !264, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i32 %82, metadata !265, metadata !DIExpression()), !dbg !268
  %92 = load i64, ptr %88, align 8, !dbg !270, !tbaa !133
  %93 = getelementptr inbounds %struct.gsl_matrix, ptr %88, i64 0, i32 1, !dbg !271
  %94 = load i64, ptr %93, align 8, !dbg !271, !tbaa !141
  %95 = call ptr @gsl_matrix_calloc(i64 noundef %92, i64 noundef %94) #5, !dbg !272
  call void @llvm.dbg.value(metadata ptr %95, metadata !267, metadata !DIExpression()), !dbg !268
  %96 = call i32 @gsl_matrix_memcpy(ptr noundef nonnull %1, ptr noundef nonnull %88) #5, !dbg !273
  %97 = sitofp i32 %82 to double, !dbg !274
  %98 = fdiv double 1.000000e+00, %97, !dbg !275
  %99 = call i32 @gsl_matrix_scale(ptr noundef nonnull %1, double noundef %98) #5, !dbg !276
  %100 = call i32 @gsl_matrix_add_diagonal(ptr noundef nonnull %1, double noundef 1.000000e+00) #5, !dbg !277
  call void @llvm.dbg.value(metadata i32 %82, metadata !266, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !268
  %101 = icmp sgt i32 %82, 1, !dbg !278
  br i1 %101, label %102, label %112, !dbg !281

102:                                              ; preds = %102, %79
  %103 = phi i32 [ %104, %102 ], [ %82, %79 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !266, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !268
  %104 = add nsw i32 %103, -1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %104, metadata !266, metadata !DIExpression()), !dbg !268
  %105 = call i32 @gsl_blas_dgemm(i32 noundef 111, i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %88, ptr noundef nonnull %1, double noundef 0.000000e+00, ptr noundef %95) #5, !dbg !283
  %106 = sitofp i32 %104 to double, !dbg !285
  %107 = fdiv double 1.000000e+00, %106, !dbg !286
  %108 = call i32 @gsl_matrix_scale(ptr noundef %95, double noundef %107) #5, !dbg !287
  %109 = call i32 @gsl_matrix_add_diagonal(ptr noundef %95, double noundef 1.000000e+00) #5, !dbg !288
  %110 = call i32 @gsl_matrix_memcpy(ptr noundef nonnull %1, ptr noundef %95) #5, !dbg !289
  call void @llvm.dbg.value(metadata i32 %104, metadata !266, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !268
  %111 = icmp ugt i32 %103, 2, !dbg !278
  br i1 %111, label %102, label %112, !dbg !281, !llvm.loop !290

112:                                              ; preds = %102, %79
  call void @gsl_matrix_free(ptr noundef %95) #5, !dbg !293
  tail call void @llvm.dbg.value(metadata i32 0, metadata !120, metadata !DIExpression()), !dbg !249
  %113 = icmp sgt i32 %81, 0, !dbg !294
  br i1 %113, label %114, label %120, !dbg !297

114:                                              ; preds = %114, %112
  %115 = phi i32 [ %118, %114 ], [ 0, %112 ]
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !120, metadata !DIExpression()), !dbg !249
  %116 = call i32 @gsl_blas_dgemm(i32 noundef 111, i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef nonnull %1, double noundef 0.000000e+00, ptr noundef nonnull %88) #5, !dbg !298
  %117 = call i32 @gsl_matrix_memcpy(ptr noundef nonnull %1, ptr noundef nonnull %88) #5, !dbg !300
  %118 = add nuw nsw i32 %115, 1, !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !120, metadata !DIExpression()), !dbg !249
  %119 = icmp eq i32 %118, %81, !dbg !294
  br i1 %119, label %120, label %114, !dbg !297, !llvm.loop !302

120:                                              ; preds = %114, %112
  call void @gsl_matrix_free(ptr noundef nonnull %88) #5, !dbg !304
  br label %121

121:                                              ; preds = %120, %18, %10
  %122 = phi i32 [ 20, %10 ], [ 19, %18 ], [ 0, %120 ], !dbg !305
  ret i32 %122, !dbg !306
}

declare !dbg !307 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !312 double @exp(double noundef) local_unnamed_addr #3

declare !dbg !316 ptr @gsl_matrix_alloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !320 i32 @gsl_matrix_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !323 i32 @gsl_matrix_scale(ptr noundef, double noundef) local_unnamed_addr #1

declare !dbg !326 i32 @gsl_blas_dgemm(i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !332 void @gsl_matrix_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !335 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare !dbg !336 void @gsl_matrix_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !339 ptr @gsl_matrix_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !340 i32 @gsl_matrix_add_diagonal(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "exponential.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "60515b992facd8fccc14f44fadd4b514")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 40)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 57)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "mvl_tab", scope: !19, file: !2, line: 50, type: !69, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !67, globals: !68, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !60}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 39, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!25 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!26 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!27 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!28 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!29 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!30 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!31 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!32 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!33 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!34 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!35 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!36 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!37 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!38 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!39 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!40 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!41 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!42 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!43 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!44 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!45 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!46 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!47 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!48 = !DIEnumerator(name: "GSL_ESING", value: 21)
!49 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!50 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!51 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!52 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!53 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!54 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!55 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!56 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!57 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!58 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!59 = !DIEnumerator(name: "GSL_EOF", value: 32)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !61, line: 47, baseType: !62, size: 32, elements: !63)
!61 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!65 = !DIEnumerator(name: "CblasTrans", value: 112)
!66 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!67 = !{!62}
!68 = !{!0, !7, !12, !17}
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1152, elements: !75)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "mvl_suggestion_t", file: !2, line: 44, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moler_vanloan_optimal_suggestion", file: !2, line: 39, size: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !71, file: !2, line: 41, baseType: !23, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !71, file: !2, line: 42, baseType: !23, size: 32, offset: 32)
!75 = !{!76, !77}
!76 = !DISubrange(count: 3)
!77 = !DISubrange(count: 6)
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!85 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!86 = distinct !DISubprogram(name: "gsl_linalg_exponential_ss", scope: !2, file: !2, line: 146, type: !87, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !116)
!87 = !DISubroutineType(types: !88)
!88 = !{!23, !89, !113, !114}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !92, line: 50, baseType: !93)
!92 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 42, size: 384, elements: !94)
!94 = !{!95, !99, !100, !101, !104, !112}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !93, file: !92, line: 44, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 18, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !93, file: !92, line: 45, baseType: !96, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !93, file: !92, line: 46, baseType: !96, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !92, line: 47, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !93, file: !92, line: 48, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !107, line: 44, baseType: !108)
!107 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !107, line: 38, size: 128, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !108, file: !107, line: 40, baseType: !96, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !107, line: 41, baseType: !102, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !93, file: !92, line: 49, baseType: !23, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !115, line: 50, baseType: !62)
!115 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!116 = !{!117, !118, !119, !120, !124, !126, !128}
!117 = !DILocalVariable(name: "A", arg: 1, scope: !86, file: !2, line: 147, type: !89)
!118 = !DILocalVariable(name: "eA", arg: 2, scope: !86, file: !2, line: 148, type: !113)
!119 = !DILocalVariable(name: "mode", arg: 3, scope: !86, file: !2, line: 149, type: !114)
!120 = !DILocalVariable(name: "i", scope: !121, file: !2, line: 162, type: !23)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 161, column: 3)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 156, column: 11)
!123 = distinct !DILexicalBlock(scope: !86, file: !2, line: 152, column: 6)
!124 = !DILocalVariable(name: "sugg", scope: !121, file: !2, line: 163, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!126 = !DILocalVariable(name: "divisor", scope: !121, file: !2, line: 164, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!128 = !DILocalVariable(name: "reduced_A", scope: !121, file: !2, line: 166, type: !113)
!129 = distinct !DIAssignID()
!130 = distinct !DIAssignID()
!131 = !DILocation(line: 0, scope: !86)
!132 = !DILocation(line: 152, column: 9, scope: !123)
!133 = !{!134, !135, i64 0}
!134 = !{!"", !135, i64 0, !135, i64 8, !135, i64 16, !138, i64 24, !138, i64 32, !139, i64 40}
!135 = !{!"long", !136, i64 0}
!136 = !{!"omnipotent char", !137, i64 0}
!137 = !{!"Simple C/C++ TBAA"}
!138 = !{!"any pointer", !136, i64 0}
!139 = !{!"int", !136, i64 0}
!140 = !DILocation(line: 152, column: 21, scope: !123)
!141 = !{!134, !135, i64 8}
!142 = !DILocation(line: 152, column: 15, scope: !123)
!143 = !DILocation(line: 152, column: 6, scope: !86)
!144 = !DILocation(line: 154, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !2, line: 154, column: 5)
!146 = distinct !DILexicalBlock(scope: !123, file: !2, line: 153, column: 3)
!147 = !DILocation(line: 156, column: 27, scope: !122)
!148 = !DILocation(line: 156, column: 20, scope: !122)
!149 = !DILocation(line: 156, column: 33, scope: !122)
!150 = !DILocation(line: 156, column: 52, scope: !122)
!151 = !DILocation(line: 156, column: 45, scope: !122)
!152 = !DILocation(line: 156, column: 11, scope: !123)
!153 = !DILocation(line: 158, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 158, column: 5)
!155 = distinct !DILexicalBlock(scope: !122, file: !2, line: 157, column: 3)
!156 = !DILocalVariable(name: "A", arg: 1, scope: !157, file: !2, line: 81, type: !89)
!157 = distinct !DISubprogram(name: "obtain_suggestion", scope: !2, file: !2, line: 81, type: !158, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!70, !89, !114}
!160 = !{!156, !161, !162, !164, !165, !173, !175}
!161 = !DILocalVariable(name: "mode", arg: 2, scope: !157, file: !2, line: 81, type: !114)
!162 = !DILocalVariable(name: "mode_prec", scope: !157, file: !2, line: 83, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!164 = !DILocalVariable(name: "norm_A", scope: !157, file: !2, line: 84, type: !127)
!165 = !DILocalVariable(name: "extra", scope: !166, file: !2, line: 99, type: !127)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 92, column: 3)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 90, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 89, column: 11)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 88, column: 11)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 87, column: 11)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 86, column: 11)
!172 = distinct !DILexicalBlock(scope: !157, file: !2, line: 85, column: 6)
!173 = !DILocalVariable(name: "extra_i", scope: !166, file: !2, line: 100, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!175 = !DILocalVariable(name: "s", scope: !166, file: !2, line: 101, type: !70)
!176 = !DILocation(line: 0, scope: !157, inlinedAt: !177)
!177 = distinct !DILocation(line: 163, column: 35, scope: !121)
!178 = !DILocalVariable(name: "mt", arg: 1, scope: !179, file: !115, line: 74, type: !114)
!179 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !115, file: !115, line: 74, type: !180, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!62, !114}
!182 = !{!178}
!183 = !DILocation(line: 0, scope: !179, inlinedAt: !184)
!184 = distinct !DILocation(line: 83, column: 34, scope: !157, inlinedAt: !177)
!185 = !DILocation(line: 75, column: 15, scope: !179, inlinedAt: !184)
!186 = !DILocalVariable(name: "min", scope: !187, file: !2, line: 73, type: !103)
!187 = distinct !DISubprogram(name: "sup_norm", scope: !2, file: !2, line: 71, type: !188, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!103, !89}
!190 = !{!191, !186, !192}
!191 = !DILocalVariable(name: "A", arg: 1, scope: !187, file: !2, line: 71, type: !89)
!192 = !DILocalVariable(name: "max", scope: !187, file: !2, line: 73, type: !103)
!193 = !DILocation(line: 0, scope: !187, inlinedAt: !194)
!194 = distinct !DILocation(line: 84, column: 25, scope: !157, inlinedAt: !177)
!195 = !DILocation(line: 73, column: 3, scope: !187, inlinedAt: !194)
!196 = !DILocation(line: 74, column: 3, scope: !187, inlinedAt: !194)
!197 = !DILocation(line: 75, column: 27, scope: !187, inlinedAt: !194)
!198 = !{!199, !199, i64 0}
!199 = !{!"double", !136, i64 0}
!200 = !DILocation(line: 75, column: 22, scope: !187, inlinedAt: !194)
!201 = !DILocation(line: 75, column: 38, scope: !187, inlinedAt: !194)
!202 = !DILocation(line: 75, column: 33, scope: !187, inlinedAt: !194)
!203 = !DILocalVariable(name: "a", arg: 1, scope: !204, file: !205, line: 69, type: !103)
!204 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !205, file: !205, line: 69, type: !206, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !208)
!205 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!206 = !DISubroutineType(types: !207)
!207 = !{!103, !103, !103}
!208 = !{!203, !209}
!209 = !DILocalVariable(name: "b", arg: 2, scope: !204, file: !205, line: 69, type: !103)
!210 = !DILocation(line: 0, scope: !204, inlinedAt: !211)
!211 = distinct !DILocation(line: 75, column: 10, scope: !187, inlinedAt: !194)
!212 = !DILocation(line: 71, column: 10, scope: !204, inlinedAt: !211)
!213 = !DILocation(line: 76, column: 1, scope: !187, inlinedAt: !194)
!214 = !DILocation(line: 85, column: 13, scope: !172, inlinedAt: !177)
!215 = !DILocation(line: 85, column: 6, scope: !157, inlinedAt: !177)
!216 = !DILocation(line: 85, column: 28, scope: !172, inlinedAt: !177)
!217 = !{i64 0, i64 4, !218}
!218 = !{!139, !139, i64 0}
!219 = !DILocation(line: 0, scope: !166, inlinedAt: !177)
!220 = !DILocation(line: 85, column: 21, scope: !172, inlinedAt: !177)
!221 = !DILocation(line: 86, column: 18, scope: !171, inlinedAt: !177)
!222 = !DILocation(line: 86, column: 11, scope: !172, inlinedAt: !177)
!223 = !DILocation(line: 86, column: 32, scope: !171, inlinedAt: !177)
!224 = !DILocation(line: 86, column: 25, scope: !171, inlinedAt: !177)
!225 = !DILocation(line: 87, column: 18, scope: !170, inlinedAt: !177)
!226 = !DILocation(line: 87, column: 11, scope: !171, inlinedAt: !177)
!227 = !DILocation(line: 87, column: 32, scope: !170, inlinedAt: !177)
!228 = !DILocation(line: 87, column: 25, scope: !170, inlinedAt: !177)
!229 = !DILocation(line: 88, column: 18, scope: !169, inlinedAt: !177)
!230 = !DILocation(line: 88, column: 11, scope: !170, inlinedAt: !177)
!231 = !DILocation(line: 88, column: 33, scope: !169, inlinedAt: !177)
!232 = !DILocation(line: 88, column: 26, scope: !169, inlinedAt: !177)
!233 = !DILocation(line: 89, column: 18, scope: !168, inlinedAt: !177)
!234 = !DILocation(line: 89, column: 11, scope: !169, inlinedAt: !177)
!235 = !DILocation(line: 89, column: 34, scope: !168, inlinedAt: !177)
!236 = !DILocation(line: 89, column: 27, scope: !168, inlinedAt: !177)
!237 = !DILocation(line: 90, column: 18, scope: !167, inlinedAt: !177)
!238 = !DILocation(line: 90, column: 11, scope: !168, inlinedAt: !177)
!239 = !DILocation(line: 90, column: 35, scope: !167, inlinedAt: !177)
!240 = !DILocation(line: 90, column: 28, scope: !167, inlinedAt: !177)
!241 = !DILocation(line: 99, column: 34, scope: !166, inlinedAt: !177)
!242 = !DILocation(line: 99, column: 41, scope: !166, inlinedAt: !177)
!243 = !DILocation(line: 99, column: 50, scope: !166, inlinedAt: !177)
!244 = !DILocation(line: 100, column: 40, scope: !166, inlinedAt: !177)
!245 = !DILocation(line: 100, column: 25, scope: !166, inlinedAt: !177)
!246 = !DILocation(line: 101, column: 26, scope: !166, inlinedAt: !177)
!247 = !DILocation(line: 102, column: 9, scope: !166, inlinedAt: !177)
!248 = !DILocation(line: 0, scope: !172, inlinedAt: !177)
!249 = !DILocation(line: 0, scope: !121)
!250 = !DILocation(line: 164, column: 40, scope: !121)
!251 = !DILocation(line: 164, column: 38, scope: !121)
!252 = !DILocation(line: 164, column: 28, scope: !121)
!253 = !DILocation(line: 166, column: 50, scope: !121)
!254 = !DILocation(line: 166, column: 60, scope: !121)
!255 = !DILocation(line: 166, column: 30, scope: !121)
!256 = !DILocation(line: 169, column: 5, scope: !121)
!257 = !DILocation(line: 170, column: 36, scope: !121)
!258 = !DILocation(line: 170, column: 5, scope: !121)
!259 = !DILocalVariable(name: "B", arg: 1, scope: !260, file: !2, line: 114, type: !89)
!260 = distinct !DISubprogram(name: "matrix_exp_series", scope: !2, file: !2, line: 113, type: !261, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !89, !113, !23}
!263 = !{!259, !264, !265, !266, !267}
!264 = !DILocalVariable(name: "eB", arg: 2, scope: !260, file: !2, line: 115, type: !113)
!265 = !DILocalVariable(name: "number_of_terms", arg: 3, scope: !260, file: !2, line: 116, type: !23)
!266 = !DILocalVariable(name: "count", scope: !260, file: !2, line: 119, type: !23)
!267 = !DILocalVariable(name: "temp", scope: !260, file: !2, line: 120, type: !113)
!268 = !DILocation(line: 0, scope: !260, inlinedAt: !269)
!269 = distinct !DILocation(line: 173, column: 5, scope: !121)
!270 = !DILocation(line: 120, column: 44, scope: !260, inlinedAt: !269)
!271 = !DILocation(line: 120, column: 54, scope: !260, inlinedAt: !269)
!272 = !DILocation(line: 120, column: 23, scope: !260, inlinedAt: !269)
!273 = !DILocation(line: 126, column: 3, scope: !260, inlinedAt: !269)
!274 = !DILocation(line: 127, column: 28, scope: !260, inlinedAt: !269)
!275 = !DILocation(line: 127, column: 27, scope: !260, inlinedAt: !269)
!276 = !DILocation(line: 127, column: 3, scope: !260, inlinedAt: !269)
!277 = !DILocation(line: 128, column: 3, scope: !260, inlinedAt: !269)
!278 = !DILocation(line: 129, column: 40, scope: !279, inlinedAt: !269)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 129, column: 3)
!280 = distinct !DILexicalBlock(scope: !260, file: !2, line: 129, column: 3)
!281 = !DILocation(line: 129, column: 3, scope: !280, inlinedAt: !269)
!282 = !DILocation(line: 129, scope: !280, inlinedAt: !269)
!283 = !DILocation(line: 132, column: 5, scope: !284, inlinedAt: !269)
!284 = distinct !DILexicalBlock(scope: !279, file: !2, line: 130, column: 3)
!285 = !DILocation(line: 133, column: 32, scope: !284, inlinedAt: !269)
!286 = !DILocation(line: 133, column: 31, scope: !284, inlinedAt: !269)
!287 = !DILocation(line: 133, column: 5, scope: !284, inlinedAt: !269)
!288 = !DILocation(line: 134, column: 5, scope: !284, inlinedAt: !269)
!289 = !DILocation(line: 137, column: 5, scope: !284, inlinedAt: !269)
!290 = distinct !{!290, !281, !291, !292}
!291 = !DILocation(line: 138, column: 3, scope: !280, inlinedAt: !269)
!292 = !{!"llvm.loop.mustprogress"}
!293 = !DILocation(line: 141, column: 3, scope: !260, inlinedAt: !269)
!294 = !DILocation(line: 176, column: 18, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 176, column: 5)
!296 = distinct !DILexicalBlock(scope: !121, file: !2, line: 176, column: 5)
!297 = !DILocation(line: 176, column: 5, scope: !296)
!298 = !DILocation(line: 178, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 177, column: 5)
!300 = !DILocation(line: 179, column: 7, scope: !299)
!301 = !DILocation(line: 176, column: 28, scope: !295)
!302 = distinct !{!302, !297, !303, !292}
!303 = !DILocation(line: 180, column: 5, scope: !296)
!304 = !DILocation(line: 182, column: 5, scope: !121)
!305 = !DILocation(line: 0, scope: !123)
!306 = !DILocation(line: 186, column: 1, scope: !86)
!307 = !DISubprogram(name: "gsl_error", scope: !22, file: !22, line: 77, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310, !310, !23, !23}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!312 = !DISubprogram(name: "exp", scope: !313, file: !313, line: 95, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!314 = !DISubroutineType(types: !315)
!315 = !{!103, !103}
!316 = !DISubprogram(name: "gsl_matrix_alloc", scope: !92, file: !92, line: 69, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{!113, !319, !319}
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!320 = !DISubprogram(name: "gsl_matrix_memcpy", scope: !92, file: !92, line: 217, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!23, !113, !89}
!323 = !DISubprogram(name: "gsl_matrix_scale", scope: !92, file: !92, line: 247, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{!23, !113, !127}
!326 = !DISubprogram(name: "gsl_blas_dgemm", scope: !327, file: !327, line: 415, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!328 = !DISubroutineType(types: !329)
!329 = !{!23, !330, !330, !103, !89, !89, !103, !113}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !331, line: 44, baseType: !60)
!331 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!332 = !DISubprogram(name: "gsl_matrix_free", scope: !92, file: !92, line: 96, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !113}
!335 = !DISubprogram(name: "log", scope: !313, file: !313, line: 104, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubprogram(name: "gsl_matrix_minmax", scope: !92, file: !92, line: 230, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !89, !102, !102}
!339 = !DISubprogram(name: "gsl_matrix_calloc", scope: !92, file: !92, line: 72, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubprogram(name: "gsl_matrix_add_diagonal", scope: !92, file: !92, line: 249, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
