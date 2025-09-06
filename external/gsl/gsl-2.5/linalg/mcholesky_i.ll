; ModuleID = 'mcholesky.ll'
source_filename = "mcholesky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [42 x i8] c"LDLT decomposition requires square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"mcholesky.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [42 x i8] c"permutation length must match matrix size\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_mcholesky_decomp(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !73 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !129, metadata !DIExpression(), metadata !167, metadata ptr %4, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 128), metadata !169, metadata ptr undef, metadata !DIExpression()), !dbg !170
  %5 = alloca %struct._gsl_vector_view, align 8
  %6 = alloca %struct._gsl_vector_view, align 8
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !158, metadata !DIExpression(), metadata !171, metadata ptr %7, metadata !DIExpression()), !dbg !172
  %8 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !173
  call void @llvm.dbg.assign(metadata i1 undef, metadata !161, metadata !DIExpression(), metadata !173, metadata ptr %8, metadata !DIExpression()), !dbg !172
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !116, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !117, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !118, metadata !DIExpression()), !dbg !174
  %9 = load i64, ptr %0, align 8, !dbg !175, !tbaa !176
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !119, metadata !DIExpression()), !dbg !174
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !183
  %11 = load i64, ptr %10, align 8, !dbg !183, !tbaa !184
  %12 = icmp eq i64 %9, %11, !dbg !185
  br i1 %12, label %14, label %13, !dbg !186

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 20) #5, !dbg !187
  br label %376, !dbg !187

14:                                               ; preds = %3
  %15 = load i64, ptr %1, align 8, !dbg !190, !tbaa !191
  %16 = icmp eq i64 %15, %9, !dbg !193
  br i1 %16, label %18, label %17, !dbg !194

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 87, i32 noundef 19) #5, !dbg !195
  br label %376, !dbg !195

18:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !121, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !128, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !198
  call void @gsl_matrix_diagonal(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0) #5, !dbg !199
  %19 = call i32 @gsl_matrix_transpose_tricpy(i8 noundef signext 76, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %0) #5, !dbg !200
  call void @gsl_permutation_init(ptr noundef nonnull %1) #5, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 0, metadata !135, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !128, metadata !DIExpression()), !dbg !168
  %20 = icmp eq i64 %9, 0, !dbg !202
  br i1 %20, label %84, label %21, !dbg !203

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !205
  br label %26, !dbg !203

26:                                               ; preds = %72, %21
  %27 = phi double [ 0.000000e+00, %21 ], [ %36, %72 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %73, %72 ]
  %29 = phi i64 [ 0, %21 ], [ %74, %72 ]
  tail call void @llvm.dbg.value(metadata double %27, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %28, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !135, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !215
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !213, metadata !DIExpression()), !dbg !215
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !214, metadata !DIExpression()), !dbg !215
  %30 = mul i64 %25, %29, !dbg !217
  %31 = getelementptr double, ptr %23, i64 %30, !dbg !218
  %32 = getelementptr double, ptr %31, i64 %29, !dbg !218
  %33 = load double, ptr %32, align 8, !dbg !218, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %33, metadata !137, metadata !DIExpression()), !dbg !221
  %34 = call double @llvm.fabs.f64(double %33), !dbg !222
  %35 = fcmp ogt double %27, %34, !dbg !222
  %36 = select i1 %35, double %27, double %34, !dbg !222
  tail call void @llvm.dbg.value(metadata double %36, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !168
  %37 = icmp eq i64 %29, 0, !dbg !223
  br i1 %37, label %72, label %38, !dbg !224

38:                                               ; preds = %26
  %39 = and i64 %29, 1, !dbg !224
  %40 = icmp eq i64 %29, 1, !dbg !224
  br i1 %40, label %61, label %41, !dbg !224

41:                                               ; preds = %38
  %42 = and i64 %29, -2, !dbg !224
  br label %43, !dbg !224

43:                                               ; preds = %43, %41
  %44 = phi double [ %28, %41 ], [ %57, %43 ]
  %45 = phi i64 [ 0, %41 ], [ %58, %43 ]
  %46 = phi i64 [ 0, %41 ], [ %59, %43 ]
  tail call void @llvm.dbg.value(metadata double %44, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !136, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !213, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !214, metadata !DIExpression()), !dbg !225
  %47 = getelementptr double, ptr %31, i64 %45, !dbg !227
  %48 = load double, ptr %47, align 8, !dbg !227, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %48, metadata !141, metadata !DIExpression()), !dbg !228
  %49 = call double @llvm.fabs.f64(double %48), !dbg !229
  %50 = fcmp ogt double %44, %49, !dbg !229
  %51 = select i1 %50, double %44, double %49, !dbg !229
  tail call void @llvm.dbg.value(metadata double %51, metadata !128, metadata !DIExpression()), !dbg !168
  %52 = or disjoint i64 %45, 1, !dbg !230
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !136, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %51, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !136, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !213, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !214, metadata !DIExpression()), !dbg !225
  %53 = getelementptr double, ptr %31, i64 %52, !dbg !227
  %54 = load double, ptr %53, align 8, !dbg !227, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %54, metadata !141, metadata !DIExpression()), !dbg !228
  %55 = call double @llvm.fabs.f64(double %54), !dbg !229
  %56 = fcmp ogt double %51, %55, !dbg !229
  %57 = select i1 %56, double %51, double %55, !dbg !229
  tail call void @llvm.dbg.value(metadata double %57, metadata !128, metadata !DIExpression()), !dbg !168
  %58 = add nuw i64 %45, 2, !dbg !230
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !136, metadata !DIExpression()), !dbg !168
  %59 = add i64 %46, 2, !dbg !224
  %60 = icmp eq i64 %59, %42, !dbg !224
  br i1 %60, label %61, label %43, !dbg !224, !llvm.loop !231

61:                                               ; preds = %43, %38
  %62 = phi double [ undef, %38 ], [ %57, %43 ]
  %63 = phi double [ %28, %38 ], [ %57, %43 ]
  %64 = phi i64 [ 0, %38 ], [ %58, %43 ]
  %65 = icmp eq i64 %39, 0, !dbg !224
  br i1 %65, label %72, label %66, !dbg !224

66:                                               ; preds = %61
  tail call void @llvm.dbg.value(metadata double %63, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !136, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !213, metadata !DIExpression()), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !214, metadata !DIExpression()), !dbg !225
  %67 = getelementptr double, ptr %31, i64 %64, !dbg !227
  %68 = load double, ptr %67, align 8, !dbg !227, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %68, metadata !141, metadata !DIExpression()), !dbg !228
  %69 = call double @llvm.fabs.f64(double %68), !dbg !229
  %70 = fcmp ogt double %63, %69, !dbg !229
  %71 = select i1 %70, double %63, double %69, !dbg !229
  tail call void @llvm.dbg.value(metadata double %71, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !136, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  br label %72, !dbg !234

72:                                               ; preds = %66, %61, %26
  %73 = phi double [ %28, %26 ], [ %62, %61 ], [ %71, %66 ], !dbg !168
  %74 = add nuw i64 %29, 1, !dbg !234
  tail call void @llvm.dbg.value(metadata double %36, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %73, metadata !128, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !135, metadata !DIExpression()), !dbg !168
  %75 = icmp eq i64 %74, %9, !dbg !202
  br i1 %75, label %76, label %26, !dbg !203, !llvm.loop !235

76:                                               ; preds = %72
  %77 = icmp eq i64 %9, 1, !dbg !237
  br i1 %77, label %78, label %84, !dbg !238

78:                                               ; preds = %76
  %79 = fcmp ogt double %36, %73, !dbg !239
  %80 = select i1 %79, double %36, double %73, !dbg !239
  %81 = fcmp ogt double %80, 0x3CB0000000000000, !dbg !239
  %82 = select i1 %81, double %80, double 0x3CB0000000000000, !dbg !239
  tail call void @llvm.dbg.value(metadata double %82, metadata !126, metadata !DIExpression()), !dbg !168
  %83 = call double @sqrt(double noundef %82) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata double %83, metadata !126, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !168
  br label %96, !dbg !242

84:                                               ; preds = %76, %18
  %85 = phi double [ %36, %76 ], [ 0.000000e+00, %18 ]
  %86 = phi double [ %73, %76 ], [ 0.000000e+00, %18 ]
  %87 = mul i64 %9, %9, !dbg !243
  %88 = uitofp i64 %87 to double, !dbg !244
  %handler_result = call double @fAddHandlerDouble(double %88, double -1.000000e+00), !dbg !245
  %89 = call double @sqrt(double noundef %handler_result) #5, !dbg !245
  tail call void @llvm.dbg.value(metadata double %89, metadata !145, metadata !DIExpression()), !dbg !246
  %90 = fdiv double %86, %89, !dbg !247
  %91 = fcmp ogt double %85, %90, !dbg !247
  %92 = select i1 %91, double %85, double %90, !dbg !247
  %93 = fcmp ogt double %92, 0x3CB0000000000000, !dbg !247
  %94 = select i1 %93, double %92, double 0x3CB0000000000000, !dbg !247
  tail call void @llvm.dbg.value(metadata double %94, metadata !126, metadata !DIExpression()), !dbg !168
  %95 = call double @sqrt(double noundef %94) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata double %95, metadata !126, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !168
  br i1 %20, label %371, label %96, !dbg !242

96:                                               ; preds = %84, %78
  %97 = phi double [ %83, %78 ], [ %95, %84 ]
  %98 = getelementptr inbounds i8, ptr %5, i64 8
  %99 = getelementptr inbounds i8, ptr %5, i64 16
  %100 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %101 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %102 = add i64 %9, -1
  %103 = getelementptr inbounds i8, ptr %6, i64 8
  %104 = getelementptr inbounds i8, ptr %6, i64 16
  %105 = icmp eq ptr %2, null
  %106 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %107 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %108, !dbg !242

108:                                              ; preds = %363, %96
  %109 = phi i64 [ 0, %96 ], [ %369, %363 ]
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !136, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !248
  %110 = sub i64 %9, %109, !dbg !249
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %109, i64 noundef %110) #5, !dbg !248
  %111 = load i64, ptr %5, align 8, !dbg !248, !tbaa.struct !250
  %112 = load i64, ptr %98, align 8, !dbg !248, !tbaa.struct !254
  %113 = load ptr, ptr %99, align 8, !dbg !248, !tbaa.struct !255
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 128), metadata !256, metadata ptr undef, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !248
  call void @llvm.dbg.value(metadata ptr undef, metadata !257, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr null, metadata !264, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %111, metadata !265, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 0, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 0, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 1, metadata !266, metadata !DIExpression()), !dbg !274
  %114 = icmp ugt i64 %111, 1, !dbg !284
  br i1 %114, label %117, label %115, !dbg !285

115:                                              ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !157, metadata !DIExpression()), !dbg !170
  %116 = call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %109, i64 noundef %109) #5, !dbg !286
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %109, metadata !293, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %109, metadata !294, metadata !DIExpression()), !dbg !326
  br label %287, !dbg !328

117:                                              ; preds = %108
  %118 = load double, ptr %113, align 8, !dbg !329, !tbaa !219
  call void @llvm.dbg.value(metadata double %118, metadata !268, metadata !DIExpression()), !dbg !274
  %119 = add i64 %111, -1, !dbg !285
  %120 = and i64 %119, 1, !dbg !285
  %121 = icmp eq i64 %111, 2, !dbg !285
  br i1 %121, label %147, label %122, !dbg !285

122:                                              ; preds = %117
  %123 = and i64 %119, -2, !dbg !285
  br label %124, !dbg !285

124:                                              ; preds = %124, %122
  %125 = phi i64 [ 1, %122 ], [ %144, %124 ]
  %126 = phi i64 [ 0, %122 ], [ %143, %124 ]
  %127 = phi double [ %118, %122 ], [ %142, %124 ]
  %128 = phi i64 [ 0, %122 ], [ %145, %124 ]
  call void @llvm.dbg.value(metadata i64 %125, metadata !266, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %126, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %127, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %125, metadata !281, metadata !DIExpression()), !dbg !330
  %129 = mul i64 %125, %112, !dbg !332
  %130 = getelementptr inbounds double, ptr %113, i64 %129, !dbg !333
  %131 = load double, ptr %130, align 8, !dbg !333, !tbaa !219
  call void @llvm.dbg.value(metadata double %131, metadata !269, metadata !DIExpression()), !dbg !334
  %132 = call double @llvm.fabs.f64(double %131), !dbg !335
  call void @llvm.dbg.value(metadata double %132, metadata !273, metadata !DIExpression()), !dbg !334
  %133 = fcmp ogt double %132, %127, !dbg !336
  %134 = select i1 %133, double %132, double %127, !dbg !338
  %135 = select i1 %133, i64 %125, i64 %126, !dbg !338
  call void @llvm.dbg.value(metadata i64 %135, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %134, metadata !268, metadata !DIExpression()), !dbg !274
  %136 = add nuw i64 %125, 1, !dbg !339
  call void @llvm.dbg.value(metadata i64 %136, metadata !266, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %136, metadata !266, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %135, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %134, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %136, metadata !281, metadata !DIExpression()), !dbg !330
  %137 = mul i64 %136, %112, !dbg !332
  %138 = getelementptr inbounds double, ptr %113, i64 %137, !dbg !333
  %139 = load double, ptr %138, align 8, !dbg !333, !tbaa !219
  call void @llvm.dbg.value(metadata double %139, metadata !269, metadata !DIExpression()), !dbg !334
  %140 = call double @llvm.fabs.f64(double %139), !dbg !335
  call void @llvm.dbg.value(metadata double %140, metadata !273, metadata !DIExpression()), !dbg !334
  %141 = fcmp ogt double %140, %134, !dbg !336
  %142 = select i1 %141, double %140, double %134, !dbg !338
  %143 = select i1 %141, i64 %136, i64 %135, !dbg !338
  call void @llvm.dbg.value(metadata i64 %143, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %142, metadata !268, metadata !DIExpression()), !dbg !274
  %144 = add nuw i64 %125, 2, !dbg !339
  call void @llvm.dbg.value(metadata i64 %144, metadata !266, metadata !DIExpression()), !dbg !274
  %145 = add nuw i64 %128, 2, !dbg !285
  %146 = icmp eq i64 %145, %123, !dbg !285
  br i1 %146, label %147, label %124, !dbg !285, !llvm.loop !340

147:                                              ; preds = %124, %117
  %148 = phi i64 [ undef, %117 ], [ %143, %124 ]
  %149 = phi i64 [ 1, %117 ], [ %144, %124 ]
  %150 = phi i64 [ 0, %117 ], [ %143, %124 ]
  %151 = phi double [ %118, %117 ], [ %142, %124 ]
  %152 = icmp eq i64 %120, 0, !dbg !285
  br i1 %152, label %160, label %153, !dbg !285

153:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i64 %149, metadata !266, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %150, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double %151, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata i64 %149, metadata !281, metadata !DIExpression()), !dbg !330
  %154 = mul i64 %149, %112, !dbg !332
  %155 = getelementptr inbounds double, ptr %113, i64 %154, !dbg !333
  %156 = load double, ptr %155, align 8, !dbg !333, !tbaa !219
  call void @llvm.dbg.value(metadata double %156, metadata !269, metadata !DIExpression()), !dbg !334
  %157 = call double @llvm.fabs.f64(double %156), !dbg !335
  call void @llvm.dbg.value(metadata double %157, metadata !273, metadata !DIExpression()), !dbg !334
  %158 = fcmp ogt double %157, %151, !dbg !336
  %159 = select i1 %158, i64 %149, i64 %150, !dbg !338
  call void @llvm.dbg.value(metadata i64 %159, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %149, metadata !266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !274
  br label %160, !dbg !342

160:                                              ; preds = %153, %147
  %161 = phi i64 [ %148, %147 ], [ %159, %153 ], !dbg !338
  %162 = add i64 %161, %109, !dbg !342
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !157, metadata !DIExpression()), !dbg !170
  %163 = call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %162, i64 noundef %109) #5, !dbg !286
  call void @llvm.dbg.value(metadata ptr %0, metadata !287, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %162, metadata !293, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %109, metadata !294, metadata !DIExpression()), !dbg !326
  %164 = icmp eq i64 %161, 0, !dbg !343
  br i1 %164, label %287, label %165, !dbg !328

165:                                              ; preds = %160
  %166 = load i64, ptr %0, align 8, !dbg !344, !tbaa !176
  call void @llvm.dbg.value(metadata i64 %166, metadata !295, metadata !DIExpression()), !dbg !345
  %167 = call i64 @llvm.umax.i64(i64 %162, i64 %109)
  %168 = call i64 @llvm.umin.i64(i64 %162, i64 %109)
  call void @llvm.dbg.value(metadata i64 %168, metadata !300, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i64 %167, metadata !301, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i64 0, metadata !302, metadata !DIExpression()), !dbg !345
  %169 = icmp eq i64 %168, 0, !dbg !346
  %170 = load ptr, ptr %100, align 8, !tbaa !204
  %171 = load i64, ptr %101, align 8, !tbaa !205
  br i1 %169, label %189, label %172, !dbg !347

172:                                              ; preds = %165
  %173 = mul i64 %171, %168
  %174 = getelementptr double, ptr %170, i64 %173
  %175 = mul i64 %171, %167
  %176 = getelementptr double, ptr %170, i64 %175
  %177 = and i64 %168, 1, !dbg !347
  %178 = icmp eq i64 %168, 1, !dbg !347
  br i1 %178, label %181, label %179, !dbg !347

179:                                              ; preds = %172
  %180 = and i64 %168, -2, !dbg !347
  br label %211, !dbg !347

181:                                              ; preds = %211, %172
  %182 = phi i64 [ 0, %172 ], [ %223, %211 ]
  %183 = icmp eq i64 %177, 0, !dbg !347
  br i1 %183, label %189, label %184, !dbg !347

184:                                              ; preds = %181
  call void @llvm.dbg.value(metadata i64 %182, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %168, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %182, metadata !354, metadata !DIExpression()), !dbg !355
  %185 = getelementptr double, ptr %174, i64 %182, !dbg !357
  call void @llvm.dbg.value(metadata ptr %185, metadata !303, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %182, metadata !354, metadata !DIExpression()), !dbg !359
  %186 = getelementptr double, ptr %176, i64 %182, !dbg !361
  call void @llvm.dbg.value(metadata ptr %186, metadata !307, metadata !DIExpression()), !dbg !358
  %187 = load double, ptr %186, align 8, !dbg !362, !tbaa !219
  call void @llvm.dbg.value(metadata double %187, metadata !308, metadata !DIExpression()), !dbg !363
  %188 = load double, ptr %185, align 8, !dbg !362, !tbaa !219
  store double %188, ptr %186, align 8, !dbg !362, !tbaa !219
  store double %187, ptr %185, align 8, !dbg !362, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %182, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  br label %189, !dbg !364

189:                                              ; preds = %184, %181, %165
  %190 = add i64 %168, 1, !dbg !364
  call void @llvm.dbg.value(metadata i64 %190, metadata !302, metadata !DIExpression()), !dbg !345
  %191 = icmp ult i64 %190, %167, !dbg !365
  br i1 %191, label %192, label %226, !dbg !366

192:                                              ; preds = %189
  %193 = mul i64 %171, %167
  %194 = getelementptr double, ptr %170, i64 %193
  %195 = getelementptr double, ptr %170, i64 %168, !dbg !366
  %196 = xor i64 %168, -1, !dbg !366
  %197 = add i64 %167, %196, !dbg !366
  %198 = add i64 %167, -2, !dbg !366
  %199 = and i64 %197, 1, !dbg !366
  %200 = icmp eq i64 %199, 0, !dbg !366
  br i1 %200, label %208, label %201, !dbg !366

201:                                              ; preds = %192
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %190, metadata !354, metadata !DIExpression()), !dbg !367
  %202 = getelementptr double, ptr %194, i64 %190, !dbg !369
  call void @llvm.dbg.value(metadata ptr %202, metadata !310, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %190, metadata !353, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !371
  %203 = mul i64 %190, %171, !dbg !373
  %204 = getelementptr double, ptr %195, i64 %203, !dbg !374
  call void @llvm.dbg.value(metadata ptr %204, metadata !314, metadata !DIExpression()), !dbg !370
  %205 = load double, ptr %204, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata double %205, metadata !315, metadata !DIExpression()), !dbg !376
  %206 = load double, ptr %202, align 8, !dbg !375, !tbaa !219
  store double %206, ptr %204, align 8, !dbg !375, !tbaa !219
  store double %205, ptr %202, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %190, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %207 = add i64 %168, 2, !dbg !364
  call void @llvm.dbg.value(metadata i64 %207, metadata !302, metadata !DIExpression()), !dbg !345
  br label %208, !dbg !366

208:                                              ; preds = %201, %192
  %209 = phi i64 [ %190, %192 ], [ %207, %201 ]
  %210 = icmp eq i64 %198, %168, !dbg !366
  br i1 %210, label %226, label %246, !dbg !366

211:                                              ; preds = %211, %179
  %212 = phi i64 [ 0, %179 ], [ %223, %211 ]
  %213 = phi i64 [ 0, %179 ], [ %224, %211 ]
  call void @llvm.dbg.value(metadata i64 %212, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %168, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %212, metadata !354, metadata !DIExpression()), !dbg !355
  %214 = getelementptr double, ptr %174, i64 %212, !dbg !357
  call void @llvm.dbg.value(metadata ptr %214, metadata !303, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %212, metadata !354, metadata !DIExpression()), !dbg !359
  %215 = getelementptr double, ptr %176, i64 %212, !dbg !361
  call void @llvm.dbg.value(metadata ptr %215, metadata !307, metadata !DIExpression()), !dbg !358
  %216 = load double, ptr %215, align 8, !dbg !362, !tbaa !219
  call void @llvm.dbg.value(metadata double %216, metadata !308, metadata !DIExpression()), !dbg !363
  %217 = load double, ptr %214, align 8, !dbg !362, !tbaa !219
  store double %217, ptr %215, align 8, !dbg !362, !tbaa !219
  store double %216, ptr %214, align 8, !dbg !362, !tbaa !219
  %218 = or disjoint i64 %212, 1, !dbg !377
  call void @llvm.dbg.value(metadata i64 %218, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i64 %218, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %168, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i64 %218, metadata !354, metadata !DIExpression()), !dbg !355
  %219 = getelementptr double, ptr %174, i64 %218, !dbg !357
  call void @llvm.dbg.value(metadata ptr %219, metadata !303, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i64 %218, metadata !354, metadata !DIExpression()), !dbg !359
  %220 = getelementptr double, ptr %176, i64 %218, !dbg !361
  call void @llvm.dbg.value(metadata ptr %220, metadata !307, metadata !DIExpression()), !dbg !358
  %221 = load double, ptr %220, align 8, !dbg !362, !tbaa !219
  call void @llvm.dbg.value(metadata double %221, metadata !308, metadata !DIExpression()), !dbg !363
  %222 = load double, ptr %219, align 8, !dbg !362, !tbaa !219
  store double %222, ptr %220, align 8, !dbg !362, !tbaa !219
  store double %221, ptr %219, align 8, !dbg !362, !tbaa !219
  %223 = add nuw i64 %212, 2, !dbg !377
  call void @llvm.dbg.value(metadata i64 %223, metadata !302, metadata !DIExpression()), !dbg !345
  %224 = add i64 %213, 2, !dbg !347
  %225 = icmp eq i64 %224, %180, !dbg !347
  br i1 %225, label %181, label %211, !dbg !347, !llvm.loop !378

226:                                              ; preds = %246, %208, %189
  %227 = add i64 %167, 1, !dbg !380
  call void @llvm.dbg.value(metadata i64 %227, metadata !302, metadata !DIExpression()), !dbg !345
  %228 = icmp ult i64 %227, %166, !dbg !381
  br i1 %228, label %229, label %278, !dbg !382

229:                                              ; preds = %226
  %230 = xor i64 %167, -1, !dbg !382
  %231 = add i64 %166, %230, !dbg !382
  %232 = add i64 %166, -2, !dbg !382
  %233 = and i64 %231, 1, !dbg !382
  %234 = icmp eq i64 %233, 0, !dbg !382
  br i1 %234, label %243, label %235, !dbg !382

235:                                              ; preds = %229
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %227, metadata !353, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !383
  %236 = mul i64 %227, %171, !dbg !385
  %237 = getelementptr double, ptr %170, i64 %236, !dbg !386
  %238 = getelementptr double, ptr %237, i64 %168, !dbg !386
  call void @llvm.dbg.value(metadata ptr %238, metadata !317, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %227, metadata !353, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %167, metadata !354, metadata !DIExpression()), !dbg !388
  %239 = getelementptr double, ptr %237, i64 %167, !dbg !390
  call void @llvm.dbg.value(metadata ptr %239, metadata !321, metadata !DIExpression()), !dbg !387
  %240 = load double, ptr %239, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata double %240, metadata !322, metadata !DIExpression()), !dbg !392
  %241 = load double, ptr %238, align 8, !dbg !391, !tbaa !219
  store double %241, ptr %239, align 8, !dbg !391, !tbaa !219
  store double %240, ptr %238, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %227, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %242 = add i64 %167, 2, !dbg !380
  call void @llvm.dbg.value(metadata i64 %242, metadata !302, metadata !DIExpression()), !dbg !345
  br label %243, !dbg !382

243:                                              ; preds = %235, %229
  %244 = phi i64 [ %227, %229 ], [ %242, %235 ]
  %245 = icmp eq i64 %232, %167, !dbg !382
  br i1 %245, label %278, label %261, !dbg !382

246:                                              ; preds = %246, %208
  %247 = phi i64 [ %259, %246 ], [ %209, %208 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %247, metadata !354, metadata !DIExpression()), !dbg !367
  %248 = getelementptr double, ptr %194, i64 %247, !dbg !369
  call void @llvm.dbg.value(metadata ptr %248, metadata !310, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %247, metadata !353, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !371
  %249 = mul i64 %247, %171, !dbg !373
  %250 = getelementptr double, ptr %195, i64 %249, !dbg !374
  call void @llvm.dbg.value(metadata ptr %250, metadata !314, metadata !DIExpression()), !dbg !370
  %251 = load double, ptr %250, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata double %251, metadata !315, metadata !DIExpression()), !dbg !376
  %252 = load double, ptr %248, align 8, !dbg !375, !tbaa !219
  store double %252, ptr %250, align 8, !dbg !375, !tbaa !219
  store double %251, ptr %248, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %247, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %253 = add nuw i64 %247, 1, !dbg !364
  call void @llvm.dbg.value(metadata i64 %253, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64 %253, metadata !354, metadata !DIExpression()), !dbg !367
  %254 = getelementptr double, ptr %194, i64 %253, !dbg !369
  call void @llvm.dbg.value(metadata ptr %254, metadata !310, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %253, metadata !353, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !371
  %255 = mul i64 %253, %171, !dbg !373
  %256 = getelementptr double, ptr %195, i64 %255, !dbg !374
  call void @llvm.dbg.value(metadata ptr %256, metadata !314, metadata !DIExpression()), !dbg !370
  %257 = load double, ptr %256, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata double %257, metadata !315, metadata !DIExpression()), !dbg !376
  %258 = load double, ptr %254, align 8, !dbg !375, !tbaa !219
  store double %258, ptr %256, align 8, !dbg !375, !tbaa !219
  store double %257, ptr %254, align 8, !dbg !375, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %253, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %259 = add nuw i64 %247, 2, !dbg !364
  call void @llvm.dbg.value(metadata i64 %259, metadata !302, metadata !DIExpression()), !dbg !345
  %260 = icmp eq i64 %259, %167, !dbg !365
  br i1 %260, label %226, label %246, !dbg !366, !llvm.loop !393

261:                                              ; preds = %261, %243
  %262 = phi i64 [ %276, %261 ], [ %244, %243 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %262, metadata !353, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !383
  %263 = mul i64 %262, %171, !dbg !385
  %264 = getelementptr double, ptr %170, i64 %263, !dbg !386
  %265 = getelementptr double, ptr %264, i64 %168, !dbg !386
  call void @llvm.dbg.value(metadata ptr %265, metadata !317, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %262, metadata !353, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %167, metadata !354, metadata !DIExpression()), !dbg !388
  %266 = getelementptr double, ptr %264, i64 %167, !dbg !390
  call void @llvm.dbg.value(metadata ptr %266, metadata !321, metadata !DIExpression()), !dbg !387
  %267 = load double, ptr %266, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata double %267, metadata !322, metadata !DIExpression()), !dbg !392
  %268 = load double, ptr %265, align 8, !dbg !391, !tbaa !219
  store double %268, ptr %266, align 8, !dbg !391, !tbaa !219
  store double %267, ptr %265, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %262, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %269 = add nuw i64 %262, 1, !dbg !380
  call void @llvm.dbg.value(metadata i64 %269, metadata !302, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %269, metadata !353, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !383
  %270 = mul i64 %269, %171, !dbg !385
  %271 = getelementptr double, ptr %170, i64 %270, !dbg !386
  %272 = getelementptr double, ptr %271, i64 %168, !dbg !386
  call void @llvm.dbg.value(metadata ptr %272, metadata !317, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %269, metadata !353, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %167, metadata !354, metadata !DIExpression()), !dbg !388
  %273 = getelementptr double, ptr %271, i64 %167, !dbg !390
  call void @llvm.dbg.value(metadata ptr %273, metadata !321, metadata !DIExpression()), !dbg !387
  %274 = load double, ptr %273, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata double %274, metadata !322, metadata !DIExpression()), !dbg !392
  %275 = load double, ptr %272, align 8, !dbg !391, !tbaa !219
  store double %275, ptr %273, align 8, !dbg !391, !tbaa !219
  store double %274, ptr %272, align 8, !dbg !391, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %269, metadata !302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !345
  %276 = add nuw i64 %262, 2, !dbg !380
  call void @llvm.dbg.value(metadata i64 %276, metadata !302, metadata !DIExpression()), !dbg !345
  %277 = icmp eq i64 %276, %166, !dbg !381
  br i1 %277, label %278, label %261, !dbg !382, !llvm.loop !395

278:                                              ; preds = %261, %243, %226
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i64 %168, metadata !353, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !397
  %279 = mul i64 %171, %168, !dbg !399
  %280 = getelementptr double, ptr %170, i64 %279, !dbg !400
  %281 = getelementptr double, ptr %280, i64 %168, !dbg !400
  call void @llvm.dbg.value(metadata ptr %281, metadata !298, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata ptr %0, metadata !348, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i64 %167, metadata !353, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata i64 %167, metadata !354, metadata !DIExpression()), !dbg !401
  %282 = mul i64 %171, %167, !dbg !403
  %283 = getelementptr double, ptr %170, i64 %282, !dbg !404
  %284 = getelementptr double, ptr %283, i64 %167, !dbg !404
  call void @llvm.dbg.value(metadata ptr %284, metadata !299, metadata !DIExpression()), !dbg !345
  %285 = load double, ptr %284, align 8, !dbg !405, !tbaa !219
  call void @llvm.dbg.value(metadata double %285, metadata !324, metadata !DIExpression()), !dbg !406
  %286 = load double, ptr %281, align 8, !dbg !405, !tbaa !219
  store double %286, ptr %284, align 8, !dbg !405, !tbaa !219
  store double %285, ptr %281, align 8, !dbg !405, !tbaa !219
  br label %287, !dbg !407

287:                                              ; preds = %278, %160, %115
  %288 = icmp ult i64 %109, %102, !dbg !408
  br i1 %288, label %289, label %335, !dbg !410

289:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !411
  %290 = add nuw i64 %109, 1, !dbg !413
  %291 = add i64 %110, -1, !dbg !414
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %109, i64 noundef %290, i64 noundef %291) #5, !dbg !411
  %292 = load i64, ptr %6, align 8, !dbg !411, !tbaa.struct !250
  %293 = load i64, ptr %103, align 8, !dbg !411, !tbaa.struct !254
  %294 = load ptr, ptr %104, align 8, !dbg !411, !tbaa.struct !255
  tail call void @llvm.dbg.value(metadata i64 %292, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %294, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 128), metadata !415, metadata ptr undef, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !411
  call void @llvm.dbg.value(metadata ptr undef, metadata !257, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr undef, metadata !264, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %292, metadata !265, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 0, metadata !267, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64 0, metadata !281, metadata !DIExpression()), !dbg !418
  %295 = load double, ptr %294, align 8, !dbg !420, !tbaa !219
  call void @llvm.dbg.value(metadata double %295, metadata !268, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 1, metadata !266, metadata !DIExpression()), !dbg !416
  %296 = icmp ugt i64 %292, 1, !dbg !421
  br i1 %296, label %297, label %335, !dbg !422

297:                                              ; preds = %289
  %298 = add i64 %292, -1, !dbg !422
  %299 = and i64 %298, 1, !dbg !422
  %300 = icmp eq i64 %292, 2, !dbg !422
  br i1 %300, label %323, label %301, !dbg !422

301:                                              ; preds = %297
  %302 = and i64 %298, -2, !dbg !422
  br label %303, !dbg !422

303:                                              ; preds = %303, %301
  %304 = phi i64 [ 1, %301 ], [ %320, %303 ]
  %305 = phi double [ %295, %301 ], [ %319, %303 ]
  %306 = phi i64 [ 0, %301 ], [ %321, %303 ]
  call void @llvm.dbg.value(metadata i64 %304, metadata !266, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 poison, metadata !267, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %305, metadata !268, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %304, metadata !281, metadata !DIExpression()), !dbg !423
  %307 = mul i64 %304, %293, !dbg !425
  %308 = getelementptr inbounds double, ptr %294, i64 %307, !dbg !426
  %309 = load double, ptr %308, align 8, !dbg !426, !tbaa !219
  call void @llvm.dbg.value(metadata double %309, metadata !269, metadata !DIExpression()), !dbg !427
  %310 = call double @llvm.fabs.f64(double %309), !dbg !428
  call void @llvm.dbg.value(metadata double %310, metadata !273, metadata !DIExpression()), !dbg !427
  %311 = fcmp ogt double %310, %305, !dbg !429
  %312 = select i1 %311, double %310, double %305, !dbg !430
  call void @llvm.dbg.value(metadata double %312, metadata !268, metadata !DIExpression()), !dbg !416
  %313 = add nuw i64 %304, 1, !dbg !431
  call void @llvm.dbg.value(metadata i64 %313, metadata !266, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %313, metadata !266, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 poison, metadata !267, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %312, metadata !268, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %313, metadata !281, metadata !DIExpression()), !dbg !423
  %314 = mul i64 %313, %293, !dbg !425
  %315 = getelementptr inbounds double, ptr %294, i64 %314, !dbg !426
  %316 = load double, ptr %315, align 8, !dbg !426, !tbaa !219
  call void @llvm.dbg.value(metadata double %316, metadata !269, metadata !DIExpression()), !dbg !427
  %317 = call double @llvm.fabs.f64(double %316), !dbg !428
  call void @llvm.dbg.value(metadata double %317, metadata !273, metadata !DIExpression()), !dbg !427
  %318 = fcmp ogt double %317, %312, !dbg !429
  %319 = select i1 %318, double %317, double %312, !dbg !430
  call void @llvm.dbg.value(metadata double %319, metadata !268, metadata !DIExpression()), !dbg !416
  %320 = add nuw i64 %304, 2, !dbg !431
  call void @llvm.dbg.value(metadata i64 %320, metadata !266, metadata !DIExpression()), !dbg !416
  %321 = add nuw i64 %306, 2, !dbg !422
  %322 = icmp eq i64 %321, %302, !dbg !422
  br i1 %322, label %323, label %303, !dbg !422, !llvm.loop !432

323:                                              ; preds = %303, %297
  %324 = phi double [ undef, %297 ], [ %319, %303 ]
  %325 = phi i64 [ 1, %297 ], [ %320, %303 ]
  %326 = phi double [ %295, %297 ], [ %319, %303 ]
  %327 = icmp eq i64 %299, 0, !dbg !422
  br i1 %327, label %335, label %328, !dbg !422

328:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 %325, metadata !266, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 poison, metadata !267, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata double %326, metadata !268, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata ptr undef, metadata !276, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %325, metadata !281, metadata !DIExpression()), !dbg !423
  %329 = mul i64 %325, %293, !dbg !425
  %330 = getelementptr inbounds double, ptr %294, i64 %329, !dbg !426
  %331 = load double, ptr %330, align 8, !dbg !426, !tbaa !219
  call void @llvm.dbg.value(metadata double %331, metadata !269, metadata !DIExpression()), !dbg !427
  %332 = call double @llvm.fabs.f64(double %331), !dbg !428
  call void @llvm.dbg.value(metadata double %332, metadata !273, metadata !DIExpression()), !dbg !427
  %333 = fcmp ogt double %332, %326, !dbg !429
  %334 = select i1 %333, double %332, double %326, !dbg !430
  call void @llvm.dbg.value(metadata double %334, metadata !268, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %325, metadata !266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !416
  br label %335, !dbg !434

335:                                              ; preds = %328, %323, %289, %287
  %336 = phi double [ %295, %289 ], [ 0.000000e+00, %287 ], [ %324, %323 ], [ %334, %328 ], !dbg !435
  tail call void @llvm.dbg.value(metadata double %336, metadata !152, metadata !DIExpression()), !dbg !170
  %337 = fdiv double %336, %97, !dbg !434
  tail call void @llvm.dbg.value(metadata double %337, metadata !153, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !436
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !213, metadata !DIExpression()), !dbg !436
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !214, metadata !DIExpression()), !dbg !436
  %338 = load ptr, ptr %100, align 8, !dbg !438, !tbaa !204
  %339 = load i64, ptr %101, align 8, !dbg !439, !tbaa !205
  %340 = mul i64 %339, %109, !dbg !440
  %341 = getelementptr double, ptr %338, i64 %340, !dbg !441
  %342 = getelementptr double, ptr %341, i64 %109, !dbg !441
  %343 = load double, ptr %342, align 8, !dbg !441, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %343, metadata !148, metadata !DIExpression()), !dbg !170
  %344 = call double @llvm.fabs.f64(double %343), !dbg !442
  %345 = fcmp olt double %344, 0x3CB0000000000000, !dbg !442
  %346 = select i1 %345, double 0x3CB0000000000000, double %344, !dbg !442
  %347 = fmul double %337, %337, !dbg !442
  %348 = fcmp ogt double %346, %347, !dbg !442
  %349 = select i1 %348, double %346, double %347, !dbg !442
  tail call void @llvm.dbg.value(metadata double %349, metadata !154, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !170
  br i1 %288, label %350, label %357, !dbg !443

350:                                              ; preds = %335
  %351 = fdiv double 1.000000e+00, %349, !dbg !444
  tail call void @llvm.dbg.value(metadata double %351, metadata !155, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !445
  %352 = add nuw i64 %109, 1, !dbg !446
  %353 = add i64 %110, -1, !dbg !447
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %109, i64 noundef %352, i64 noundef %353) #5, !dbg !448
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #5, !dbg !449
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %352, i64 noundef %352, i64 noundef %353, i64 noundef %353) #5, !dbg !450
  %354 = fneg double %351, !dbg !451
  %355 = call i32 @gsl_blas_dsyr(i32 noundef 122, double noundef %354, ptr noundef nonnull %7, ptr noundef nonnull %8) #5, !dbg !452
  %356 = call i32 @gsl_vector_scale(ptr noundef nonnull %7, double noundef %351) #5, !dbg !453
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #5, !dbg !454
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !454
  br label %357, !dbg !455

357:                                              ; preds = %350, %335
  br i1 %105, label %363, label %358, !dbg !456

358:                                              ; preds = %357
  %handler_result1 = call double @fSubHandlerDouble(double %349, double %343), !dbg !457
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !462, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !463, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !464, metadata !DIExpression()), !dbg !467
  %359 = load ptr, ptr %106, align 8, !dbg !457, !tbaa !468
  %360 = load i64, ptr %107, align 8, !dbg !470, !tbaa !471
  %361 = mul i64 %360, %109, !dbg !472
  %362 = getelementptr inbounds double, ptr %359, i64 %361, !dbg !473
  store double %handler_result1, ptr %362, align 8, !dbg !474, !tbaa !219
  br label %363, !dbg !475

363:                                              ; preds = %358, %357
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !476, metadata !DIExpression()), !dbg !484
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !481, metadata !DIExpression()), !dbg !484
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !482, metadata !DIExpression()), !dbg !484
  tail call void @llvm.dbg.value(metadata double %349, metadata !483, metadata !DIExpression()), !dbg !484
  %364 = load ptr, ptr %100, align 8, !dbg !486, !tbaa !204
  %365 = load i64, ptr %101, align 8, !dbg !487, !tbaa !205
  %366 = mul i64 %365, %109, !dbg !488
  %367 = getelementptr double, ptr %364, i64 %366, !dbg !489
  %368 = getelementptr double, ptr %367, i64 %109, !dbg !489
  store double %349, ptr %368, align 8, !dbg !490, !tbaa !219
  %369 = add nuw i64 %109, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !136, metadata !DIExpression()), !dbg !168
  %370 = icmp eq i64 %369, %9, !dbg !492
  br i1 %370, label %371, label %108, !dbg !242, !llvm.loop !493

371:                                              ; preds = %363, %84
  %372 = icmp eq ptr %2, null, !dbg !495
  br i1 %372, label %375, label %373, !dbg !497

373:                                              ; preds = %371
  %374 = call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #5, !dbg !498
  br label %375, !dbg !500

375:                                              ; preds = %373, %371
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !501
  br label %376

376:                                              ; preds = %375, %17, %13
  %377 = phi i32 [ 20, %13 ], [ 19, %17 ], [ 0, %375 ], !dbg !502
  ret i32 %377, !dbg !503
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !504 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !509 void @gsl_matrix_diagonal(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef) local_unnamed_addr #2

declare !dbg !512 i32 @gsl_matrix_transpose_tricpy(i8 noundef signext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !516 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !519 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !523 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !526 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !529 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !532 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !535 i32 @gsl_blas_dsyr(i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !541 i32 @gsl_vector_scale(ptr noundef, double noundef) local_unnamed_addr #2

declare !dbg !544 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !554, metadata !DIExpression()), !dbg !559
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !555, metadata !DIExpression()), !dbg !559
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !556, metadata !DIExpression()), !dbg !559
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !557, metadata !DIExpression()), !dbg !559
  %5 = tail call i32 @gsl_linalg_pcholesky_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5, !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !558, metadata !DIExpression()), !dbg !559
  ret i32 %5, !dbg !561
}

declare !dbg !562 i32 @gsl_linalg_pcholesky_solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !564 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !568, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !569, metadata !DIExpression()), !dbg !572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !570, metadata !DIExpression()), !dbg !572
  %4 = tail call i32 @gsl_linalg_pcholesky_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !571, metadata !DIExpression()), !dbg !572
  ret i32 %4, !dbg !574
}

declare !dbg !575 i32 @gsl_linalg_pcholesky_svx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !576 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !580, metadata !DIExpression()), !dbg !585
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !581, metadata !DIExpression()), !dbg !585
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !582, metadata !DIExpression()), !dbg !585
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !583, metadata !DIExpression()), !dbg !585
  %5 = tail call i32 @gsl_linalg_pcholesky_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5, !dbg !586
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !584, metadata !DIExpression()), !dbg !585
  ret i32 %5, !dbg !587
}

declare !dbg !588 i32 @gsl_linalg_pcholesky_rcond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !593, metadata !DIExpression()), !dbg !597
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !594, metadata !DIExpression()), !dbg !597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !595, metadata !DIExpression()), !dbg !597
  %4 = tail call i32 @gsl_linalg_pcholesky_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !596, metadata !DIExpression()), !dbg !597
  ret i32 %4, !dbg !599
}

declare !dbg !600 i32 @gsl_linalg_pcholesky_invert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mcholesky.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "61fac1464c0885da74e12d53d946eec8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !3, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !61, globals: !64, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !55}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !56, line: 48, baseType: !57, size: 32, elements: !58)
!56 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "CblasUpper", value: 121)
!60 = !DIEnumerator(name: "CblasLower", value: 122)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!64 = !{!0, !7, !12}
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"PIE Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!72 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!73 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_decomp", scope: !2, file: !2, line: 76, type: !74, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !115)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, !76, !97, !105}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !78, line: 50, baseType: !79)
!78 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 42, size: 384, elements: !80)
!80 = !{!81, !85, !86, !87, !88, !96}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !79, file: !78, line: 44, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 18, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !79, file: !78, line: 45, baseType: !82, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !79, file: !78, line: 46, baseType: !82, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !78, line: 47, baseType: !62, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !79, file: !78, line: 48, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !91, line: 44, baseType: !92)
!91 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !91, line: 38, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !92, file: !91, line: 40, baseType: !82, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !92, file: !91, line: 41, baseType: !62, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !79, file: !78, line: 49, baseType: !18, size: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_permutation", file: !99, line: 47, baseType: !100)
!99 = !DIFile(filename: "../gsl/gsl_permutation.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3f1dc4966e787f4bad2ce907e35d62b3")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_permutation_struct", file: !99, line: 41, size: 128, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !100, file: !99, line: 43, baseType: !82, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !100, file: !99, line: 44, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !107, line: 50, baseType: !108)
!107 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 42, size: 320, elements: !109)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !108, file: !107, line: 44, baseType: !82, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !108, file: !107, line: 45, baseType: !82, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !107, line: 46, baseType: !62, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !108, file: !107, line: 47, baseType: !89, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !108, file: !107, line: 48, baseType: !18, size: 32, offset: 256)
!115 = !{!116, !117, !118, !119, !121, !126, !127, !128, !129, !135, !136, !137, !141, !145, !148, !152, !153, !154, !155, !156, !157, !158, !161}
!116 = !DILocalVariable(name: "A", arg: 1, scope: !73, file: !2, line: 76, type: !76)
!117 = !DILocalVariable(name: "p", arg: 2, scope: !73, file: !2, line: 76, type: !97)
!118 = !DILocalVariable(name: "E", arg: 3, scope: !73, file: !2, line: 77, type: !105)
!119 = !DILocalVariable(name: "N", scope: !73, file: !2, line: 79, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!121 = !DILocalVariable(name: "delta", scope: !122, file: !2, line: 91, type: !125)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 90, column: 5)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 85, column: 12)
!124 = distinct !DILexicalBlock(scope: !73, file: !2, line: 81, column: 7)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!126 = !DILocalVariable(name: "beta", scope: !122, file: !2, line: 92, type: !63)
!127 = !DILocalVariable(name: "gamma", scope: !122, file: !2, line: 93, type: !63)
!128 = !DILocalVariable(name: "xi", scope: !122, file: !2, line: 94, type: !63)
!129 = !DILocalVariable(name: "diag", scope: !122, file: !2, line: 95, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !107, line: 57, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !107, line: 55, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 52, size: 320, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !132, file: !107, line: 54, baseType: !106, size: 320)
!135 = !DILocalVariable(name: "i", scope: !122, file: !2, line: 96, type: !82)
!136 = !DILocalVariable(name: "j", scope: !122, file: !2, line: 96, type: !82)
!137 = !DILocalVariable(name: "aii", scope: !138, file: !2, line: 109, type: !63)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 108, column: 9)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 107, column: 7)
!140 = distinct !DILexicalBlock(scope: !122, file: !2, line: 107, column: 7)
!141 = !DILocalVariable(name: "aij", scope: !142, file: !2, line: 115, type: !63)
!142 = distinct !DILexicalBlock(scope: !143, file: !2, line: 114, column: 13)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 113, column: 11)
!144 = distinct !DILexicalBlock(scope: !138, file: !2, line: 113, column: 11)
!145 = !DILocalVariable(name: "nu", scope: !146, file: !2, line: 130, type: !63)
!146 = distinct !DILexicalBlock(scope: !147, file: !2, line: 129, column: 9)
!147 = distinct !DILexicalBlock(scope: !122, file: !2, line: 124, column: 11)
!148 = !DILocalVariable(name: "ajj", scope: !149, file: !2, line: 138, type: !63)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 137, column: 9)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 136, column: 7)
!151 = distinct !DILexicalBlock(scope: !122, file: !2, line: 136, column: 7)
!152 = !DILocalVariable(name: "thetaj", scope: !149, file: !2, line: 138, type: !63)
!153 = !DILocalVariable(name: "u", scope: !149, file: !2, line: 138, type: !63)
!154 = !DILocalVariable(name: "alpha", scope: !149, file: !2, line: 138, type: !63)
!155 = !DILocalVariable(name: "alphainv", scope: !149, file: !2, line: 138, type: !63)
!156 = !DILocalVariable(name: "w", scope: !149, file: !2, line: 139, type: !130)
!157 = !DILocalVariable(name: "q", scope: !149, file: !2, line: 140, type: !82)
!158 = !DILocalVariable(name: "v", scope: !159, file: !2, line: 170, type: !130)
!159 = distinct !DILexicalBlock(scope: !160, file: !2, line: 168, column: 13)
!160 = distinct !DILexicalBlock(scope: !149, file: !2, line: 167, column: 15)
!161 = !DILocalVariable(name: "m", scope: !159, file: !2, line: 173, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !78, line: 57, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !78, line: 55, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 52, size: 384, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !164, file: !78, line: 54, baseType: !77, size: 384)
!167 = distinct !DIAssignID()
!168 = !DILocation(line: 0, scope: !122)
!169 = distinct !DIAssignID()
!170 = !DILocation(line: 0, scope: !149)
!171 = distinct !DIAssignID()
!172 = !DILocation(line: 0, scope: !159)
!173 = distinct !DIAssignID()
!174 = !DILocation(line: 0, scope: !73)
!175 = !DILocation(line: 79, column: 23, scope: !73)
!176 = !{!177, !178, i64 0}
!177 = !{!"", !178, i64 0, !178, i64 8, !178, i64 16, !181, i64 24, !181, i64 32, !182, i64 40}
!178 = !{!"long", !179, i64 0}
!179 = !{!"omnipotent char", !180, i64 0}
!180 = !{!"Simple C/C++ TBAA"}
!181 = !{!"any pointer", !179, i64 0}
!182 = !{!"int", !179, i64 0}
!183 = !DILocation(line: 81, column: 15, scope: !124)
!184 = !{!177, !178, i64 8}
!185 = !DILocation(line: 81, column: 9, scope: !124)
!186 = !DILocation(line: 81, column: 7, scope: !73)
!187 = !DILocation(line: 83, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 83, column: 7)
!189 = distinct !DILexicalBlock(scope: !124, file: !2, line: 82, column: 5)
!190 = !DILocation(line: 85, column: 15, scope: !123)
!191 = !{!192, !178, i64 0}
!192 = !{!"gsl_permutation_struct", !178, i64 0, !181, i64 8}
!193 = !DILocation(line: 85, column: 20, scope: !123)
!194 = !DILocation(line: 85, column: 12, scope: !124)
!195 = !DILocation(line: 87, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 87, column: 7)
!197 = distinct !DILexicalBlock(scope: !123, file: !2, line: 86, column: 5)
!198 = !DILocation(line: 95, column: 7, scope: !122)
!199 = !DILocation(line: 95, column: 30, scope: !122)
!200 = !DILocation(line: 99, column: 7, scope: !122)
!201 = !DILocation(line: 101, column: 7, scope: !122)
!202 = !DILocation(line: 107, column: 21, scope: !139)
!203 = !DILocation(line: 107, column: 7, scope: !140)
!204 = !{!177, !181, i64 24}
!205 = !{!177, !178, i64 16}
!206 = !DILocalVariable(name: "m", arg: 1, scope: !207, file: !78, line: 270, type: !210)
!207 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !78, file: !78, line: 270, type: !208, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !212)
!208 = !DISubroutineType(types: !209)
!209 = !{!63, !210, !120, !120}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!212 = !{!206, !213, !214}
!213 = !DILocalVariable(name: "i", arg: 2, scope: !207, file: !78, line: 270, type: !120)
!214 = !DILocalVariable(name: "j", arg: 3, scope: !207, file: !78, line: 270, type: !120)
!215 = !DILocation(line: 0, scope: !207, inlinedAt: !216)
!216 = distinct !DILocation(line: 109, column: 24, scope: !138)
!217 = !DILocation(line: 285, column: 20, scope: !207, inlinedAt: !216)
!218 = !DILocation(line: 285, column: 10, scope: !207, inlinedAt: !216)
!219 = !{!220, !220, i64 0}
!220 = !{!"double", !179, i64 0}
!221 = !DILocation(line: 0, scope: !138)
!222 = !DILocation(line: 111, column: 19, scope: !138)
!223 = !DILocation(line: 113, column: 25, scope: !143)
!224 = !DILocation(line: 113, column: 11, scope: !144)
!225 = !DILocation(line: 0, scope: !207, inlinedAt: !226)
!226 = distinct !DILocation(line: 115, column: 28, scope: !142)
!227 = !DILocation(line: 285, column: 10, scope: !207, inlinedAt: !226)
!228 = !DILocation(line: 0, scope: !142)
!229 = !DILocation(line: 116, column: 20, scope: !142)
!230 = !DILocation(line: 113, column: 30, scope: !143)
!231 = distinct !{!231, !224, !232, !233}
!232 = !DILocation(line: 117, column: 13, scope: !144)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 107, column: 26, scope: !139)
!235 = distinct !{!235, !203, !236, !233}
!236 = !DILocation(line: 118, column: 9, scope: !140)
!237 = !DILocation(line: 124, column: 13, scope: !147)
!238 = !DILocation(line: 124, column: 11, scope: !122)
!239 = !DILocation(line: 126, column: 18, scope: !240)
!240 = distinct !DILexicalBlock(scope: !147, file: !2, line: 125, column: 9)
!241 = !DILocation(line: 134, column: 14, scope: !122)
!242 = !DILocation(line: 136, column: 7, scope: !151)
!243 = !DILocation(line: 130, column: 29, scope: !146)
!244 = !DILocation(line: 130, column: 28, scope: !146)
!245 = !DILocation(line: 130, column: 23, scope: !146)
!246 = !DILocation(line: 0, scope: !146)
!247 = !DILocation(line: 131, column: 18, scope: !146)
!248 = !DILocation(line: 143, column: 15, scope: !149)
!249 = !DILocation(line: 143, column: 55, scope: !149)
!250 = !{i64 0, i64 8, !251, i64 8, i64 8, !251, i64 16, i64 8, !252, i64 24, i64 8, !252, i64 32, i64 4, !253}
!251 = !{!178, !178, i64 0}
!252 = !{!181, !181, i64 0}
!253 = !{!182, !182, i64 0}
!254 = !{i64 0, i64 8, !251, i64 8, i64 8, !252, i64 16, i64 8, !252, i64 24, i64 4, !253}
!255 = !{i64 0, i64 8, !252, i64 8, i64 8, !252, i64 16, i64 4, !253}
!256 = distinct !DIAssignID()
!257 = !DILocalVariable(name: "v", arg: 1, scope: !258, file: !2, line: 248, type: !261)
!258 = distinct !DISubprogram(name: "mcholesky_maxabs", scope: !2, file: !2, line: 248, type: !259, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !263)
!259 = !DISubroutineType(types: !260)
!260 = !{!82, !261, !62}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!263 = !{!257, !264, !265, !266, !267, !268, !269, !273}
!264 = !DILocalVariable(name: "maxabs", arg: 2, scope: !258, file: !2, line: 248, type: !62)
!265 = !DILocalVariable(name: "n", scope: !258, file: !2, line: 250, type: !120)
!266 = !DILocalVariable(name: "i", scope: !258, file: !2, line: 251, type: !82)
!267 = !DILocalVariable(name: "idx", scope: !258, file: !2, line: 252, type: !82)
!268 = !DILocalVariable(name: "max", scope: !258, file: !2, line: 253, type: !63)
!269 = !DILocalVariable(name: "vi", scope: !270, file: !2, line: 257, type: !63)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 256, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 255, column: 3)
!272 = distinct !DILexicalBlock(scope: !258, file: !2, line: 255, column: 3)
!273 = !DILocalVariable(name: "absvi", scope: !270, file: !2, line: 258, type: !63)
!274 = !DILocation(line: 0, scope: !258, inlinedAt: !275)
!275 = distinct !DILocation(line: 144, column: 15, scope: !149)
!276 = !DILocalVariable(name: "v", arg: 1, scope: !277, file: !107, line: 175, type: !261)
!277 = distinct !DISubprogram(name: "gsl_vector_get", scope: !107, file: !107, line: 175, type: !278, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!63, !261, !120}
!280 = !{!276, !281}
!281 = !DILocalVariable(name: "i", arg: 2, scope: !277, file: !107, line: 175, type: !120)
!282 = !DILocation(line: 0, scope: !277, inlinedAt: !283)
!283 = distinct !DILocation(line: 253, column: 16, scope: !258, inlinedAt: !275)
!284 = !DILocation(line: 255, column: 17, scope: !271, inlinedAt: !275)
!285 = !DILocation(line: 255, column: 3, scope: !272, inlinedAt: !275)
!286 = !DILocation(line: 146, column: 11, scope: !149)
!287 = !DILocalVariable(name: "A", arg: 1, scope: !288, file: !289, line: 35, type: !76)
!288 = distinct !DISubprogram(name: "cholesky_swap_rowcol", scope: !289, file: !289, line: 35, type: !290, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !292)
!289 = !DIFile(filename: "./cholesky_common.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "88be844a67692febd136cbf5a6510722")
!290 = !DISubroutineType(types: !291)
!291 = !{!18, !76, !120, !120}
!292 = !{!287, !293, !294, !295, !298, !299, !300, !301, !302, !303, !307, !308, !310, !314, !315, !317, !321, !322, !324}
!293 = !DILocalVariable(name: "i", arg: 2, scope: !288, file: !289, line: 35, type: !120)
!294 = !DILocalVariable(name: "j", arg: 3, scope: !288, file: !289, line: 35, type: !120)
!295 = !DILocalVariable(name: "N", scope: !296, file: !289, line: 39, type: !120)
!296 = distinct !DILexicalBlock(scope: !297, file: !289, line: 38, column: 5)
!297 = distinct !DILexicalBlock(scope: !288, file: !289, line: 37, column: 7)
!298 = !DILocalVariable(name: "Aii", scope: !296, file: !289, line: 40, type: !62)
!299 = !DILocalVariable(name: "Ajj", scope: !296, file: !289, line: 40, type: !62)
!300 = !DILocalVariable(name: "ii", scope: !296, file: !289, line: 41, type: !82)
!301 = !DILocalVariable(name: "jj", scope: !296, file: !289, line: 41, type: !82)
!302 = !DILocalVariable(name: "k", scope: !296, file: !289, line: 41, type: !82)
!303 = !DILocalVariable(name: "Aik", scope: !304, file: !289, line: 58, type: !62)
!304 = distinct !DILexicalBlock(scope: !305, file: !289, line: 57, column: 9)
!305 = distinct !DILexicalBlock(scope: !306, file: !289, line: 56, column: 7)
!306 = distinct !DILexicalBlock(scope: !296, file: !289, line: 56, column: 7)
!307 = !DILocalVariable(name: "Ajk", scope: !304, file: !289, line: 59, type: !62)
!308 = !DILocalVariable(name: "tmp", scope: !309, file: !289, line: 60, type: !63)
!309 = distinct !DILexicalBlock(scope: !304, file: !289, line: 60, column: 11)
!310 = !DILocalVariable(name: "Ajk", scope: !311, file: !289, line: 66, type: !62)
!311 = distinct !DILexicalBlock(scope: !312, file: !289, line: 65, column: 9)
!312 = distinct !DILexicalBlock(scope: !313, file: !289, line: 64, column: 7)
!313 = distinct !DILexicalBlock(scope: !296, file: !289, line: 64, column: 7)
!314 = !DILocalVariable(name: "Aki", scope: !311, file: !289, line: 67, type: !62)
!315 = !DILocalVariable(name: "tmp", scope: !316, file: !289, line: 68, type: !63)
!316 = distinct !DILexicalBlock(scope: !311, file: !289, line: 68, column: 11)
!317 = !DILocalVariable(name: "Aki", scope: !318, file: !289, line: 74, type: !62)
!318 = distinct !DILexicalBlock(scope: !319, file: !289, line: 73, column: 9)
!319 = distinct !DILexicalBlock(scope: !320, file: !289, line: 72, column: 7)
!320 = distinct !DILexicalBlock(scope: !296, file: !289, line: 72, column: 7)
!321 = !DILocalVariable(name: "Akj", scope: !318, file: !289, line: 75, type: !62)
!322 = !DILocalVariable(name: "tmp", scope: !323, file: !289, line: 76, type: !63)
!323 = distinct !DILexicalBlock(scope: !318, file: !289, line: 76, column: 11)
!324 = !DILocalVariable(name: "tmp", scope: !325, file: !289, line: 82, type: !63)
!325 = distinct !DILexicalBlock(scope: !296, file: !289, line: 82, column: 7)
!326 = !DILocation(line: 0, scope: !288, inlinedAt: !327)
!327 = distinct !DILocation(line: 147, column: 11, scope: !149)
!328 = !DILocation(line: 37, column: 7, scope: !288, inlinedAt: !327)
!329 = !DILocation(line: 183, column: 10, scope: !277, inlinedAt: !283)
!330 = !DILocation(line: 0, scope: !277, inlinedAt: !331)
!331 = distinct !DILocation(line: 257, column: 19, scope: !270, inlinedAt: !275)
!332 = !DILocation(line: 183, column: 20, scope: !277, inlinedAt: !331)
!333 = !DILocation(line: 183, column: 10, scope: !277, inlinedAt: !331)
!334 = !DILocation(line: 0, scope: !270, inlinedAt: !275)
!335 = !DILocation(line: 258, column: 22, scope: !270, inlinedAt: !275)
!336 = !DILocation(line: 260, column: 17, scope: !337, inlinedAt: !275)
!337 = distinct !DILexicalBlock(scope: !270, file: !2, line: 260, column: 11)
!338 = !DILocation(line: 260, column: 11, scope: !270, inlinedAt: !275)
!339 = !DILocation(line: 255, column: 22, scope: !271, inlinedAt: !275)
!340 = distinct !{!340, !285, !341, !233}
!341 = !DILocation(line: 265, column: 5, scope: !272, inlinedAt: !275)
!342 = !DILocation(line: 144, column: 49, scope: !149)
!343 = !DILocation(line: 37, column: 9, scope: !297, inlinedAt: !327)
!344 = !DILocation(line: 39, column: 27, scope: !296, inlinedAt: !327)
!345 = !DILocation(line: 0, scope: !296, inlinedAt: !327)
!346 = !DILocation(line: 56, column: 21, scope: !305, inlinedAt: !327)
!347 = !DILocation(line: 56, column: 7, scope: !306, inlinedAt: !327)
!348 = !DILocalVariable(name: "m", arg: 1, scope: !349, file: !78, line: 310, type: !76)
!349 = distinct !DISubprogram(name: "gsl_matrix_ptr", scope: !78, file: !78, line: 310, type: !350, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!62, !76, !120, !120}
!352 = !{!348, !353, !354}
!353 = !DILocalVariable(name: "i", arg: 2, scope: !349, file: !78, line: 310, type: !120)
!354 = !DILocalVariable(name: "j", arg: 3, scope: !349, file: !78, line: 310, type: !120)
!355 = !DILocation(line: 0, scope: !349, inlinedAt: !356)
!356 = distinct !DILocation(line: 58, column: 25, scope: !304, inlinedAt: !327)
!357 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !356)
!358 = !DILocation(line: 0, scope: !304, inlinedAt: !327)
!359 = !DILocation(line: 0, scope: !349, inlinedAt: !360)
!360 = distinct !DILocation(line: 59, column: 25, scope: !304, inlinedAt: !327)
!361 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !360)
!362 = !DILocation(line: 60, column: 11, scope: !309, inlinedAt: !327)
!363 = !DILocation(line: 0, scope: !309, inlinedAt: !327)
!364 = !DILocation(line: 64, scope: !313, inlinedAt: !327)
!365 = !DILocation(line: 64, column: 26, scope: !312, inlinedAt: !327)
!366 = !DILocation(line: 64, column: 7, scope: !313, inlinedAt: !327)
!367 = !DILocation(line: 0, scope: !349, inlinedAt: !368)
!368 = distinct !DILocation(line: 66, column: 25, scope: !311, inlinedAt: !327)
!369 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !368)
!370 = !DILocation(line: 0, scope: !311, inlinedAt: !327)
!371 = !DILocation(line: 0, scope: !349, inlinedAt: !372)
!372 = distinct !DILocation(line: 67, column: 25, scope: !311, inlinedAt: !327)
!373 = !DILocation(line: 325, column: 35, scope: !349, inlinedAt: !372)
!374 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !372)
!375 = !DILocation(line: 68, column: 11, scope: !316, inlinedAt: !327)
!376 = !DILocation(line: 0, scope: !316, inlinedAt: !327)
!377 = !DILocation(line: 56, column: 27, scope: !305, inlinedAt: !327)
!378 = distinct !{!378, !347, !379, !233}
!379 = !DILocation(line: 61, column: 9, scope: !306, inlinedAt: !327)
!380 = !DILocation(line: 72, scope: !320, inlinedAt: !327)
!381 = !DILocation(line: 72, column: 26, scope: !319, inlinedAt: !327)
!382 = !DILocation(line: 72, column: 7, scope: !320, inlinedAt: !327)
!383 = !DILocation(line: 0, scope: !349, inlinedAt: !384)
!384 = distinct !DILocation(line: 74, column: 25, scope: !318, inlinedAt: !327)
!385 = !DILocation(line: 325, column: 35, scope: !349, inlinedAt: !384)
!386 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !384)
!387 = !DILocation(line: 0, scope: !318, inlinedAt: !327)
!388 = !DILocation(line: 0, scope: !349, inlinedAt: !389)
!389 = distinct !DILocation(line: 75, column: 25, scope: !318, inlinedAt: !327)
!390 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !389)
!391 = !DILocation(line: 76, column: 11, scope: !323, inlinedAt: !327)
!392 = !DILocation(line: 0, scope: !323, inlinedAt: !327)
!393 = distinct !{!393, !366, !394, !233}
!394 = !DILocation(line: 69, column: 9, scope: !313, inlinedAt: !327)
!395 = distinct !{!395, !382, !396, !233}
!396 = !DILocation(line: 77, column: 9, scope: !320, inlinedAt: !327)
!397 = !DILocation(line: 0, scope: !349, inlinedAt: !398)
!398 = distinct !DILocation(line: 80, column: 13, scope: !296, inlinedAt: !327)
!399 = !DILocation(line: 325, column: 35, scope: !349, inlinedAt: !398)
!400 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !398)
!401 = !DILocation(line: 0, scope: !349, inlinedAt: !402)
!402 = distinct !DILocation(line: 81, column: 13, scope: !296, inlinedAt: !327)
!403 = !DILocation(line: 325, column: 35, scope: !349, inlinedAt: !402)
!404 = !DILocation(line: 325, column: 30, scope: !349, inlinedAt: !402)
!405 = !DILocation(line: 82, column: 7, scope: !325, inlinedAt: !327)
!406 = !DILocation(line: 0, scope: !325, inlinedAt: !327)
!407 = !DILocation(line: 83, column: 5, scope: !296, inlinedAt: !327)
!408 = !DILocation(line: 150, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !149, file: !2, line: 150, column: 15)
!410 = !DILocation(line: 150, column: 15, scope: !149)
!411 = !DILocation(line: 152, column: 19, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !2, line: 151, column: 13)
!413 = !DILocation(line: 152, column: 48, scope: !412)
!414 = !DILocation(line: 152, column: 59, scope: !412)
!415 = distinct !DIAssignID()
!416 = !DILocation(line: 0, scope: !258, inlinedAt: !417)
!417 = distinct !DILocation(line: 153, column: 15, scope: !412)
!418 = !DILocation(line: 0, scope: !277, inlinedAt: !419)
!419 = distinct !DILocation(line: 253, column: 16, scope: !258, inlinedAt: !417)
!420 = !DILocation(line: 183, column: 10, scope: !277, inlinedAt: !419)
!421 = !DILocation(line: 255, column: 17, scope: !271, inlinedAt: !417)
!422 = !DILocation(line: 255, column: 3, scope: !272, inlinedAt: !417)
!423 = !DILocation(line: 0, scope: !277, inlinedAt: !424)
!424 = distinct !DILocation(line: 257, column: 19, scope: !270, inlinedAt: !417)
!425 = !DILocation(line: 183, column: 20, scope: !277, inlinedAt: !424)
!426 = !DILocation(line: 183, column: 10, scope: !277, inlinedAt: !424)
!427 = !DILocation(line: 0, scope: !270, inlinedAt: !417)
!428 = !DILocation(line: 258, column: 22, scope: !270, inlinedAt: !417)
!429 = !DILocation(line: 260, column: 17, scope: !337, inlinedAt: !417)
!430 = !DILocation(line: 260, column: 11, scope: !270, inlinedAt: !417)
!431 = !DILocation(line: 255, column: 22, scope: !271, inlinedAt: !417)
!432 = distinct !{!432, !422, !433, !233}
!433 = !DILocation(line: 265, column: 5, scope: !272, inlinedAt: !417)
!434 = !DILocation(line: 160, column: 22, scope: !149)
!435 = !DILocation(line: 0, scope: !409)
!436 = !DILocation(line: 0, scope: !207, inlinedAt: !437)
!437 = distinct !DILocation(line: 163, column: 17, scope: !149)
!438 = !DILocation(line: 285, column: 13, scope: !207, inlinedAt: !437)
!439 = !DILocation(line: 285, column: 25, scope: !207, inlinedAt: !437)
!440 = !DILocation(line: 285, column: 20, scope: !207, inlinedAt: !437)
!441 = !DILocation(line: 285, column: 10, scope: !207, inlinedAt: !437)
!442 = !DILocation(line: 164, column: 19, scope: !149)
!443 = !DILocation(line: 167, column: 15, scope: !149)
!444 = !DILocation(line: 165, column: 26, scope: !149)
!445 = !DILocation(line: 170, column: 15, scope: !159)
!446 = !DILocation(line: 170, column: 64, scope: !159)
!447 = !DILocation(line: 170, column: 75, scope: !159)
!448 = !DILocation(line: 170, column: 35, scope: !159)
!449 = !DILocation(line: 173, column: 15, scope: !159)
!450 = !DILocation(line: 173, column: 35, scope: !159)
!451 = !DILocation(line: 176, column: 41, scope: !159)
!452 = !DILocation(line: 176, column: 15, scope: !159)
!453 = !DILocation(line: 179, column: 15, scope: !159)
!454 = !DILocation(line: 181, column: 13, scope: !160)
!455 = !DILocation(line: 181, column: 13, scope: !159)
!456 = !DILocation(line: 183, column: 15, scope: !149)
!457 = !DILocation(line: 196, column: 6, scope: !458, inlinedAt: !465)
!458 = distinct !DISubprogram(name: "gsl_vector_set", scope: !107, file: !107, line: 188, type: !459, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !105, !120, !63}
!461 = !{!462, !463, !464}
!462 = !DILocalVariable(name: "v", arg: 1, scope: !458, file: !107, line: 188, type: !105)
!463 = !DILocalVariable(name: "i", arg: 2, scope: !458, file: !107, line: 188, type: !120)
!464 = !DILocalVariable(name: "x", arg: 3, scope: !458, file: !107, line: 188, type: !63)
!465 = distinct !DILocation(line: 184, column: 13, scope: !466)
!466 = distinct !DILexicalBlock(scope: !149, file: !2, line: 183, column: 15)
!467 = !DILocation(line: 0, scope: !458, inlinedAt: !465)
!468 = !{!469, !181, i64 16}
!469 = !{!"", !178, i64 0, !178, i64 8, !181, i64 16, !181, i64 24, !182, i64 32}
!470 = !DILocation(line: 196, column: 18, scope: !458, inlinedAt: !465)
!471 = !{!469, !178, i64 8}
!472 = !DILocation(line: 196, column: 13, scope: !458, inlinedAt: !465)
!473 = !DILocation(line: 196, column: 3, scope: !458, inlinedAt: !465)
!474 = !DILocation(line: 196, column: 26, scope: !458, inlinedAt: !465)
!475 = !DILocation(line: 184, column: 13, scope: !466)
!476 = !DILocalVariable(name: "m", arg: 1, scope: !477, file: !78, line: 290, type: !76)
!477 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !78, file: !78, line: 290, type: !478, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !76, !120, !120, !125}
!480 = !{!476, !481, !482, !483}
!481 = !DILocalVariable(name: "i", arg: 2, scope: !477, file: !78, line: 290, type: !120)
!482 = !DILocalVariable(name: "j", arg: 3, scope: !477, file: !78, line: 290, type: !120)
!483 = !DILocalVariable(name: "x", arg: 4, scope: !477, file: !78, line: 290, type: !125)
!484 = !DILocation(line: 0, scope: !477, inlinedAt: !485)
!485 = distinct !DILocation(line: 186, column: 11, scope: !149)
!486 = !DILocation(line: 305, column: 6, scope: !477, inlinedAt: !485)
!487 = !DILocation(line: 305, column: 18, scope: !477, inlinedAt: !485)
!488 = !DILocation(line: 305, column: 13, scope: !477, inlinedAt: !485)
!489 = !DILocation(line: 305, column: 3, scope: !477, inlinedAt: !485)
!490 = !DILocation(line: 305, column: 27, scope: !477, inlinedAt: !485)
!491 = !DILocation(line: 136, column: 26, scope: !150)
!492 = !DILocation(line: 136, column: 21, scope: !150)
!493 = distinct !{!493, !242, !494, !233}
!494 = !DILocation(line: 187, column: 9, scope: !151)
!495 = !DILocation(line: 189, column: 11, scope: !496)
!496 = distinct !DILexicalBlock(scope: !122, file: !2, line: 189, column: 11)
!497 = !DILocation(line: 189, column: 11, scope: !122)
!498 = !DILocation(line: 193, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !2, line: 190, column: 9)
!500 = !DILocation(line: 194, column: 9, scope: !499)
!501 = !DILocation(line: 197, column: 5, scope: !123)
!502 = !DILocation(line: 0, scope: !124)
!503 = !DILocation(line: 198, column: 1, scope: !73)
!504 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507, !507, !18, !18}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!509 = !DISubprogram(name: "gsl_matrix_diagonal", scope: !78, file: !78, line: 112, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!131, !76}
!512 = !DISubprogram(name: "gsl_matrix_transpose_tricpy", scope: !78, file: !78, line: 226, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!18, !508, !515, !76, !210}
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!516 = !DISubprogram(name: "gsl_permutation_init", scope: !99, file: !99, line: 51, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !97}
!519 = !DISubprogram(name: "sqrt", scope: !520, file: !520, line: 143, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!521 = !DISubroutineType(types: !522)
!522 = !{!63, !63}
!523 = !DISubprogram(name: "gsl_vector_subvector", scope: !107, file: !107, line: 103, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{!131, !105, !82, !82}
!526 = !DISubprogram(name: "gsl_permutation_swap", scope: !99, file: !99, line: 63, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!18, !97, !120, !120}
!529 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !78, file: !78, line: 125, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{!131, !76, !120, !120, !120}
!532 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !78, file: !78, line: 101, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = !DISubroutineType(types: !534)
!534 = !{!163, !76, !120, !120, !120, !120}
!535 = !DISubprogram(name: "gsl_blas_dsyr", scope: !536, file: !536, line: 293, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!537 = !DISubroutineType(types: !538)
!538 = !{!18, !539, !63, !261, !76}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !540, line: 45, baseType: !55)
!540 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!541 = !DISubprogram(name: "gsl_vector_scale", scope: !107, file: !107, line: 155, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!18, !105, !125}
!544 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !545, file: !545, line: 41, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!546 = !DISubroutineType(types: !547)
!547 = !{!18, !548, !105}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!550 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_solve", scope: !2, file: !2, line: 201, type: !551, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!18, !210, !548, !261, !105}
!553 = !{!554, !555, !556, !557, !558}
!554 = !DILocalVariable(name: "LDLT", arg: 1, scope: !550, file: !2, line: 201, type: !210)
!555 = !DILocalVariable(name: "p", arg: 2, scope: !550, file: !2, line: 202, type: !548)
!556 = !DILocalVariable(name: "b", arg: 3, scope: !550, file: !2, line: 203, type: !261)
!557 = !DILocalVariable(name: "x", arg: 4, scope: !550, file: !2, line: 204, type: !105)
!558 = !DILocalVariable(name: "status", scope: !550, file: !2, line: 206, type: !18)
!559 = !DILocation(line: 0, scope: !550)
!560 = !DILocation(line: 206, column: 16, scope: !550)
!561 = !DILocation(line: 207, column: 3, scope: !550)
!562 = !DISubprogram(name: "gsl_linalg_pcholesky_solve", scope: !563, file: !563, line: 531, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!564 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_svx", scope: !2, file: !2, line: 211, type: !565, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!18, !210, !548, !105}
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "LDLT", arg: 1, scope: !564, file: !2, line: 211, type: !210)
!569 = !DILocalVariable(name: "p", arg: 2, scope: !564, file: !2, line: 212, type: !548)
!570 = !DILocalVariable(name: "x", arg: 3, scope: !564, file: !2, line: 213, type: !105)
!571 = !DILocalVariable(name: "status", scope: !564, file: !2, line: 215, type: !18)
!572 = !DILocation(line: 0, scope: !564)
!573 = !DILocation(line: 215, column: 16, scope: !564)
!574 = !DILocation(line: 216, column: 3, scope: !564)
!575 = !DISubprogram(name: "gsl_linalg_pcholesky_svx", scope: !563, file: !563, line: 536, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_rcond", scope: !2, file: !2, line: 220, type: !577, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!18, !210, !548, !62, !105}
!579 = !{!580, !581, !582, !583, !584}
!580 = !DILocalVariable(name: "LDLT", arg: 1, scope: !576, file: !2, line: 220, type: !210)
!581 = !DILocalVariable(name: "p", arg: 2, scope: !576, file: !2, line: 220, type: !548)
!582 = !DILocalVariable(name: "rcond", arg: 3, scope: !576, file: !2, line: 221, type: !62)
!583 = !DILocalVariable(name: "work", arg: 4, scope: !576, file: !2, line: 221, type: !105)
!584 = !DILocalVariable(name: "status", scope: !576, file: !2, line: 223, type: !18)
!585 = !DILocation(line: 0, scope: !576)
!586 = !DILocation(line: 223, column: 16, scope: !576)
!587 = !DILocation(line: 224, column: 3, scope: !576)
!588 = !DISubprogram(name: "gsl_linalg_pcholesky_rcond", scope: !563, file: !563, line: 557, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_invert", scope: !2, file: !2, line: 228, type: !590, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{!18, !210, !548, !76}
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(name: "LDLT", arg: 1, scope: !589, file: !2, line: 228, type: !210)
!594 = !DILocalVariable(name: "p", arg: 2, scope: !589, file: !2, line: 228, type: !548)
!595 = !DILocalVariable(name: "Ainv", arg: 3, scope: !589, file: !2, line: 229, type: !76)
!596 = !DILocalVariable(name: "status", scope: !589, file: !2, line: 231, type: !18)
!597 = !DILocation(line: 0, scope: !589)
!598 = !DILocation(line: 231, column: 16, scope: !589)
!599 = !DILocation(line: 232, column: 3, scope: !589)
!600 = !DISubprogram(name: "gsl_linalg_pcholesky_invert", scope: !563, file: !563, line: 554, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
