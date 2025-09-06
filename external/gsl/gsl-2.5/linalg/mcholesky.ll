; ModuleID = 'mcholesky.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 20) #6, !dbg !187
  br label %378, !dbg !187

14:                                               ; preds = %3
  %15 = load i64, ptr %1, align 8, !dbg !190, !tbaa !191
  %16 = icmp eq i64 %15, %9, !dbg !193
  br i1 %16, label %18, label %17, !dbg !194

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 87, i32 noundef 19) #6, !dbg !195
  br label %378, !dbg !195

18:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !121, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !127, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !128, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !198
  call void @gsl_matrix_diagonal(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0) #6, !dbg !199
  %19 = call i32 @gsl_matrix_transpose_tricpy(i8 noundef signext 76, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %0) #6, !dbg !200
  call void @gsl_permutation_init(ptr noundef nonnull %1) #6, !dbg !201
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

26:                                               ; preds = %21, %72
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
  %83 = call double @sqrt(double noundef %82) #6, !dbg !241
  tail call void @llvm.dbg.value(metadata double %83, metadata !126, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !168
  br label %97, !dbg !242

84:                                               ; preds = %18, %76
  %85 = phi double [ %36, %76 ], [ 0.000000e+00, %18 ]
  %86 = phi double [ %73, %76 ], [ 0.000000e+00, %18 ]
  %87 = mul i64 %9, %9, !dbg !243
  %88 = uitofp i64 %87 to double, !dbg !244
  %89 = fadd double %88, -1.000000e+00, !dbg !245
  %90 = call double @sqrt(double noundef %89) #6, !dbg !246
  tail call void @llvm.dbg.value(metadata double %90, metadata !145, metadata !DIExpression()), !dbg !247
  %91 = fdiv double %86, %90, !dbg !248
  %92 = fcmp ogt double %85, %91, !dbg !248
  %93 = select i1 %92, double %85, double %91, !dbg !248
  %94 = fcmp ogt double %93, 0x3CB0000000000000, !dbg !248
  %95 = select i1 %94, double %93, double 0x3CB0000000000000, !dbg !248
  tail call void @llvm.dbg.value(metadata double %95, metadata !126, metadata !DIExpression()), !dbg !168
  %96 = call double @sqrt(double noundef %95) #6, !dbg !241
  tail call void @llvm.dbg.value(metadata double %96, metadata !126, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !168
  br i1 %20, label %373, label %97, !dbg !242

97:                                               ; preds = %78, %84
  %98 = phi double [ %83, %78 ], [ %96, %84 ]
  %99 = getelementptr inbounds i8, ptr %5, i64 8
  %100 = getelementptr inbounds i8, ptr %5, i64 16
  %101 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %102 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %103 = add i64 %9, -1
  %104 = getelementptr inbounds i8, ptr %6, i64 8
  %105 = getelementptr inbounds i8, ptr %6, i64 16
  %106 = icmp eq ptr %2, null
  %107 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %108 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %109, !dbg !242

109:                                              ; preds = %97, %365
  %110 = phi i64 [ 0, %97 ], [ %371, %365 ]
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !136, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !249
  %111 = sub i64 %9, %110, !dbg !250
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %110, i64 noundef %111) #6, !dbg !249
  %112 = load i64, ptr %5, align 8, !dbg !249, !tbaa.struct !251
  %113 = load i64, ptr %99, align 8, !dbg !249, !tbaa.struct !255
  %114 = load ptr, ptr %100, align 8, !dbg !249, !tbaa.struct !256
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %113, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 128), metadata !257, metadata ptr undef, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !249
  call void @llvm.dbg.value(metadata ptr undef, metadata !258, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr null, metadata !265, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %112, metadata !266, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 0, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double poison, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 1, metadata !267, metadata !DIExpression()), !dbg !275
  %115 = icmp ugt i64 %112, 1, !dbg !285
  br i1 %115, label %118, label %116, !dbg !286

116:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !157, metadata !DIExpression()), !dbg !170
  %117 = call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %110, i64 noundef %110) #6, !dbg !287
  call void @llvm.dbg.value(metadata ptr %0, metadata !288, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %110, metadata !294, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %110, metadata !295, metadata !DIExpression()), !dbg !327
  br label %288, !dbg !329

118:                                              ; preds = %109
  %119 = load double, ptr %114, align 8, !dbg !330, !tbaa !219
  call void @llvm.dbg.value(metadata double %119, metadata !269, metadata !DIExpression()), !dbg !275
  %120 = add i64 %112, -1, !dbg !286
  %121 = and i64 %120, 1, !dbg !286
  %122 = icmp eq i64 %112, 2, !dbg !286
  br i1 %122, label %148, label %123, !dbg !286

123:                                              ; preds = %118
  %124 = and i64 %120, -2, !dbg !286
  br label %125, !dbg !286

125:                                              ; preds = %125, %123
  %126 = phi i64 [ 1, %123 ], [ %145, %125 ]
  %127 = phi i64 [ 0, %123 ], [ %144, %125 ]
  %128 = phi double [ %119, %123 ], [ %143, %125 ]
  %129 = phi i64 [ 0, %123 ], [ %146, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !267, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %127, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %128, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 %126, metadata !282, metadata !DIExpression()), !dbg !331
  %130 = mul i64 %126, %113, !dbg !333
  %131 = getelementptr inbounds double, ptr %114, i64 %130, !dbg !334
  %132 = load double, ptr %131, align 8, !dbg !334, !tbaa !219
  call void @llvm.dbg.value(metadata double %132, metadata !270, metadata !DIExpression()), !dbg !335
  %133 = call double @llvm.fabs.f64(double %132), !dbg !336
  call void @llvm.dbg.value(metadata double %133, metadata !274, metadata !DIExpression()), !dbg !335
  %134 = fcmp ogt double %133, %128, !dbg !337
  %135 = select i1 %134, double %133, double %128, !dbg !339
  %136 = select i1 %134, i64 %126, i64 %127, !dbg !339
  call void @llvm.dbg.value(metadata i64 %136, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %135, metadata !269, metadata !DIExpression()), !dbg !275
  %137 = add nuw i64 %126, 1, !dbg !340
  call void @llvm.dbg.value(metadata i64 %137, metadata !267, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %137, metadata !267, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %136, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %135, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 %137, metadata !282, metadata !DIExpression()), !dbg !331
  %138 = mul i64 %137, %113, !dbg !333
  %139 = getelementptr inbounds double, ptr %114, i64 %138, !dbg !334
  %140 = load double, ptr %139, align 8, !dbg !334, !tbaa !219
  call void @llvm.dbg.value(metadata double %140, metadata !270, metadata !DIExpression()), !dbg !335
  %141 = call double @llvm.fabs.f64(double %140), !dbg !336
  call void @llvm.dbg.value(metadata double %141, metadata !274, metadata !DIExpression()), !dbg !335
  %142 = fcmp ogt double %141, %135, !dbg !337
  %143 = select i1 %142, double %141, double %135, !dbg !339
  %144 = select i1 %142, i64 %137, i64 %136, !dbg !339
  call void @llvm.dbg.value(metadata i64 %144, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %143, metadata !269, metadata !DIExpression()), !dbg !275
  %145 = add nuw i64 %126, 2, !dbg !340
  call void @llvm.dbg.value(metadata i64 %145, metadata !267, metadata !DIExpression()), !dbg !275
  %146 = add nuw i64 %129, 2, !dbg !286
  %147 = icmp eq i64 %146, %124, !dbg !286
  br i1 %147, label %148, label %125, !dbg !286, !llvm.loop !341

148:                                              ; preds = %125, %118
  %149 = phi i64 [ undef, %118 ], [ %144, %125 ]
  %150 = phi i64 [ 1, %118 ], [ %145, %125 ]
  %151 = phi i64 [ 0, %118 ], [ %144, %125 ]
  %152 = phi double [ %119, %118 ], [ %143, %125 ]
  %153 = icmp eq i64 %121, 0, !dbg !286
  br i1 %153, label %161, label %154, !dbg !286

154:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i64 %150, metadata !267, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %151, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %152, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 %150, metadata !282, metadata !DIExpression()), !dbg !331
  %155 = mul i64 %150, %113, !dbg !333
  %156 = getelementptr inbounds double, ptr %114, i64 %155, !dbg !334
  %157 = load double, ptr %156, align 8, !dbg !334, !tbaa !219
  call void @llvm.dbg.value(metadata double %157, metadata !270, metadata !DIExpression()), !dbg !335
  %158 = call double @llvm.fabs.f64(double %157), !dbg !336
  call void @llvm.dbg.value(metadata double %158, metadata !274, metadata !DIExpression()), !dbg !335
  %159 = fcmp ogt double %158, %152, !dbg !337
  %160 = select i1 %159, i64 %150, i64 %151, !dbg !339
  call void @llvm.dbg.value(metadata i64 %160, metadata !268, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double poison, metadata !269, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %150, metadata !267, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !275
  br label %161, !dbg !343

161:                                              ; preds = %148, %154
  %162 = phi i64 [ %149, %148 ], [ %160, %154 ], !dbg !339
  %163 = add i64 %162, %110, !dbg !343
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !157, metadata !DIExpression()), !dbg !170
  %164 = call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %163, i64 noundef %110) #6, !dbg !287
  call void @llvm.dbg.value(metadata ptr %0, metadata !288, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %163, metadata !294, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %110, metadata !295, metadata !DIExpression()), !dbg !327
  %165 = icmp eq i64 %162, 0, !dbg !344
  br i1 %165, label %288, label %166, !dbg !329

166:                                              ; preds = %161
  %167 = load i64, ptr %0, align 8, !dbg !345, !tbaa !176
  call void @llvm.dbg.value(metadata i64 %167, metadata !296, metadata !DIExpression()), !dbg !346
  %168 = call i64 @llvm.umax.i64(i64 %163, i64 %110)
  %169 = call i64 @llvm.umin.i64(i64 %163, i64 %110)
  call void @llvm.dbg.value(metadata i64 %169, metadata !301, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i64 %168, metadata !302, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i64 0, metadata !303, metadata !DIExpression()), !dbg !346
  %170 = icmp eq i64 %169, 0, !dbg !347
  %171 = load ptr, ptr %101, align 8, !tbaa !204
  %172 = load i64, ptr %102, align 8, !tbaa !205
  br i1 %170, label %190, label %173, !dbg !348

173:                                              ; preds = %166
  %174 = mul i64 %172, %169
  %175 = getelementptr double, ptr %171, i64 %174
  %176 = mul i64 %172, %168
  %177 = getelementptr double, ptr %171, i64 %176
  %178 = and i64 %169, 1, !dbg !348
  %179 = icmp eq i64 %169, 1, !dbg !348
  br i1 %179, label %182, label %180, !dbg !348

180:                                              ; preds = %173
  %181 = and i64 %169, -2, !dbg !348
  br label %212, !dbg !348

182:                                              ; preds = %212, %173
  %183 = phi i64 [ 0, %173 ], [ %224, %212 ]
  %184 = icmp eq i64 %178, 0, !dbg !348
  br i1 %184, label %190, label %185, !dbg !348

185:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i64 %183, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %169, metadata !354, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %183, metadata !355, metadata !DIExpression()), !dbg !356
  %186 = getelementptr double, ptr %175, i64 %183, !dbg !358
  call void @llvm.dbg.value(metadata ptr %186, metadata !304, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %183, metadata !355, metadata !DIExpression()), !dbg !360
  %187 = getelementptr double, ptr %177, i64 %183, !dbg !362
  call void @llvm.dbg.value(metadata ptr %187, metadata !308, metadata !DIExpression()), !dbg !359
  %188 = load double, ptr %187, align 8, !dbg !363, !tbaa !219
  call void @llvm.dbg.value(metadata double %188, metadata !309, metadata !DIExpression()), !dbg !364
  %189 = load double, ptr %186, align 8, !dbg !363, !tbaa !219
  store double %189, ptr %187, align 8, !dbg !363, !tbaa !219
  store double %188, ptr %186, align 8, !dbg !363, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %183, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  br label %190, !dbg !365

190:                                              ; preds = %185, %182, %166
  %191 = add i64 %169, 1, !dbg !365
  call void @llvm.dbg.value(metadata i64 %191, metadata !303, metadata !DIExpression()), !dbg !346
  %192 = icmp ult i64 %191, %168, !dbg !366
  br i1 %192, label %193, label %227, !dbg !367

193:                                              ; preds = %190
  %194 = mul i64 %172, %168
  %195 = getelementptr double, ptr %171, i64 %194
  %196 = getelementptr double, ptr %171, i64 %169, !dbg !367
  %197 = xor i64 %169, -1, !dbg !367
  %198 = add i64 %168, %197, !dbg !367
  %199 = add i64 %168, -2, !dbg !367
  %200 = and i64 %198, 1, !dbg !367
  %201 = icmp eq i64 %200, 0, !dbg !367
  br i1 %201, label %209, label %202, !dbg !367

202:                                              ; preds = %193
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %191, metadata !355, metadata !DIExpression()), !dbg !368
  %203 = getelementptr double, ptr %195, i64 %191, !dbg !370
  call void @llvm.dbg.value(metadata ptr %203, metadata !311, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %191, metadata !354, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !372
  %204 = mul i64 %191, %172, !dbg !374
  %205 = getelementptr double, ptr %196, i64 %204, !dbg !375
  call void @llvm.dbg.value(metadata ptr %205, metadata !315, metadata !DIExpression()), !dbg !371
  %206 = load double, ptr %205, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata double %206, metadata !316, metadata !DIExpression()), !dbg !377
  %207 = load double, ptr %203, align 8, !dbg !376, !tbaa !219
  store double %207, ptr %205, align 8, !dbg !376, !tbaa !219
  store double %206, ptr %203, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %191, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %208 = add i64 %169, 2, !dbg !365
  call void @llvm.dbg.value(metadata i64 %208, metadata !303, metadata !DIExpression()), !dbg !346
  br label %209, !dbg !367

209:                                              ; preds = %202, %193
  %210 = phi i64 [ %191, %193 ], [ %208, %202 ]
  %211 = icmp eq i64 %199, %169, !dbg !367
  br i1 %211, label %227, label %247, !dbg !367

212:                                              ; preds = %212, %180
  %213 = phi i64 [ 0, %180 ], [ %224, %212 ]
  %214 = phi i64 [ 0, %180 ], [ %225, %212 ]
  call void @llvm.dbg.value(metadata i64 %213, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %169, metadata !354, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %213, metadata !355, metadata !DIExpression()), !dbg !356
  %215 = getelementptr double, ptr %175, i64 %213, !dbg !358
  call void @llvm.dbg.value(metadata ptr %215, metadata !304, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %213, metadata !355, metadata !DIExpression()), !dbg !360
  %216 = getelementptr double, ptr %177, i64 %213, !dbg !362
  call void @llvm.dbg.value(metadata ptr %216, metadata !308, metadata !DIExpression()), !dbg !359
  %217 = load double, ptr %216, align 8, !dbg !363, !tbaa !219
  call void @llvm.dbg.value(metadata double %217, metadata !309, metadata !DIExpression()), !dbg !364
  %218 = load double, ptr %215, align 8, !dbg !363, !tbaa !219
  store double %218, ptr %216, align 8, !dbg !363, !tbaa !219
  store double %217, ptr %215, align 8, !dbg !363, !tbaa !219
  %219 = or disjoint i64 %213, 1, !dbg !378
  call void @llvm.dbg.value(metadata i64 %219, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i64 %219, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %169, metadata !354, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i64 %219, metadata !355, metadata !DIExpression()), !dbg !356
  %220 = getelementptr double, ptr %175, i64 %219, !dbg !358
  call void @llvm.dbg.value(metadata ptr %220, metadata !304, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i64 %219, metadata !355, metadata !DIExpression()), !dbg !360
  %221 = getelementptr double, ptr %177, i64 %219, !dbg !362
  call void @llvm.dbg.value(metadata ptr %221, metadata !308, metadata !DIExpression()), !dbg !359
  %222 = load double, ptr %221, align 8, !dbg !363, !tbaa !219
  call void @llvm.dbg.value(metadata double %222, metadata !309, metadata !DIExpression()), !dbg !364
  %223 = load double, ptr %220, align 8, !dbg !363, !tbaa !219
  store double %223, ptr %221, align 8, !dbg !363, !tbaa !219
  store double %222, ptr %220, align 8, !dbg !363, !tbaa !219
  %224 = add nuw i64 %213, 2, !dbg !378
  call void @llvm.dbg.value(metadata i64 %224, metadata !303, metadata !DIExpression()), !dbg !346
  %225 = add i64 %214, 2, !dbg !348
  %226 = icmp eq i64 %225, %181, !dbg !348
  br i1 %226, label %182, label %212, !dbg !348, !llvm.loop !379

227:                                              ; preds = %209, %247, %190
  %228 = add i64 %168, 1, !dbg !381
  call void @llvm.dbg.value(metadata i64 %228, metadata !303, metadata !DIExpression()), !dbg !346
  %229 = icmp ult i64 %228, %167, !dbg !382
  br i1 %229, label %230, label %279, !dbg !383

230:                                              ; preds = %227
  %231 = xor i64 %168, -1, !dbg !383
  %232 = add i64 %167, %231, !dbg !383
  %233 = add i64 %167, -2, !dbg !383
  %234 = and i64 %232, 1, !dbg !383
  %235 = icmp eq i64 %234, 0, !dbg !383
  br i1 %235, label %244, label %236, !dbg !383

236:                                              ; preds = %230
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %228, metadata !354, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !384
  %237 = mul i64 %228, %172, !dbg !386
  %238 = getelementptr double, ptr %171, i64 %237, !dbg !387
  %239 = getelementptr double, ptr %238, i64 %169, !dbg !387
  call void @llvm.dbg.value(metadata ptr %239, metadata !318, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %228, metadata !354, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %168, metadata !355, metadata !DIExpression()), !dbg !389
  %240 = getelementptr double, ptr %238, i64 %168, !dbg !391
  call void @llvm.dbg.value(metadata ptr %240, metadata !322, metadata !DIExpression()), !dbg !388
  %241 = load double, ptr %240, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata double %241, metadata !323, metadata !DIExpression()), !dbg !393
  %242 = load double, ptr %239, align 8, !dbg !392, !tbaa !219
  store double %242, ptr %240, align 8, !dbg !392, !tbaa !219
  store double %241, ptr %239, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %228, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %243 = add i64 %168, 2, !dbg !381
  call void @llvm.dbg.value(metadata i64 %243, metadata !303, metadata !DIExpression()), !dbg !346
  br label %244, !dbg !383

244:                                              ; preds = %236, %230
  %245 = phi i64 [ %228, %230 ], [ %243, %236 ]
  %246 = icmp eq i64 %233, %168, !dbg !383
  br i1 %246, label %279, label %262, !dbg !383

247:                                              ; preds = %209, %247
  %248 = phi i64 [ %260, %247 ], [ %210, %209 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %248, metadata !355, metadata !DIExpression()), !dbg !368
  %249 = getelementptr double, ptr %195, i64 %248, !dbg !370
  call void @llvm.dbg.value(metadata ptr %249, metadata !311, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %248, metadata !354, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !372
  %250 = mul i64 %248, %172, !dbg !374
  %251 = getelementptr double, ptr %196, i64 %250, !dbg !375
  call void @llvm.dbg.value(metadata ptr %251, metadata !315, metadata !DIExpression()), !dbg !371
  %252 = load double, ptr %251, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata double %252, metadata !316, metadata !DIExpression()), !dbg !377
  %253 = load double, ptr %249, align 8, !dbg !376, !tbaa !219
  store double %253, ptr %251, align 8, !dbg !376, !tbaa !219
  store double %252, ptr %249, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %248, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %254 = add nuw i64 %248, 1, !dbg !365
  call void @llvm.dbg.value(metadata i64 %254, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i64 %254, metadata !355, metadata !DIExpression()), !dbg !368
  %255 = getelementptr double, ptr %195, i64 %254, !dbg !370
  call void @llvm.dbg.value(metadata ptr %255, metadata !311, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %254, metadata !354, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !372
  %256 = mul i64 %254, %172, !dbg !374
  %257 = getelementptr double, ptr %196, i64 %256, !dbg !375
  call void @llvm.dbg.value(metadata ptr %257, metadata !315, metadata !DIExpression()), !dbg !371
  %258 = load double, ptr %257, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata double %258, metadata !316, metadata !DIExpression()), !dbg !377
  %259 = load double, ptr %255, align 8, !dbg !376, !tbaa !219
  store double %259, ptr %257, align 8, !dbg !376, !tbaa !219
  store double %258, ptr %255, align 8, !dbg !376, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %254, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %260 = add nuw i64 %248, 2, !dbg !365
  call void @llvm.dbg.value(metadata i64 %260, metadata !303, metadata !DIExpression()), !dbg !346
  %261 = icmp eq i64 %260, %168, !dbg !366
  br i1 %261, label %227, label %247, !dbg !367, !llvm.loop !394

262:                                              ; preds = %244, %262
  %263 = phi i64 [ %277, %262 ], [ %245, %244 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %263, metadata !354, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !384
  %264 = mul i64 %263, %172, !dbg !386
  %265 = getelementptr double, ptr %171, i64 %264, !dbg !387
  %266 = getelementptr double, ptr %265, i64 %169, !dbg !387
  call void @llvm.dbg.value(metadata ptr %266, metadata !318, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %263, metadata !354, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %168, metadata !355, metadata !DIExpression()), !dbg !389
  %267 = getelementptr double, ptr %265, i64 %168, !dbg !391
  call void @llvm.dbg.value(metadata ptr %267, metadata !322, metadata !DIExpression()), !dbg !388
  %268 = load double, ptr %267, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata double %268, metadata !323, metadata !DIExpression()), !dbg !393
  %269 = load double, ptr %266, align 8, !dbg !392, !tbaa !219
  store double %269, ptr %267, align 8, !dbg !392, !tbaa !219
  store double %268, ptr %266, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %263, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %270 = add nuw i64 %263, 1, !dbg !381
  call void @llvm.dbg.value(metadata i64 %270, metadata !303, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %270, metadata !354, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !384
  %271 = mul i64 %270, %172, !dbg !386
  %272 = getelementptr double, ptr %171, i64 %271, !dbg !387
  %273 = getelementptr double, ptr %272, i64 %169, !dbg !387
  call void @llvm.dbg.value(metadata ptr %273, metadata !318, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %270, metadata !354, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %168, metadata !355, metadata !DIExpression()), !dbg !389
  %274 = getelementptr double, ptr %272, i64 %168, !dbg !391
  call void @llvm.dbg.value(metadata ptr %274, metadata !322, metadata !DIExpression()), !dbg !388
  %275 = load double, ptr %274, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata double %275, metadata !323, metadata !DIExpression()), !dbg !393
  %276 = load double, ptr %273, align 8, !dbg !392, !tbaa !219
  store double %276, ptr %274, align 8, !dbg !392, !tbaa !219
  store double %275, ptr %273, align 8, !dbg !392, !tbaa !219
  call void @llvm.dbg.value(metadata i64 %270, metadata !303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %277 = add nuw i64 %263, 2, !dbg !381
  call void @llvm.dbg.value(metadata i64 %277, metadata !303, metadata !DIExpression()), !dbg !346
  %278 = icmp eq i64 %277, %167, !dbg !382
  br i1 %278, label %279, label %262, !dbg !383, !llvm.loop !396

279:                                              ; preds = %244, %262, %227
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %169, metadata !354, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i64 %169, metadata !355, metadata !DIExpression()), !dbg !398
  %280 = mul i64 %172, %169, !dbg !400
  %281 = getelementptr double, ptr %171, i64 %280, !dbg !401
  %282 = getelementptr double, ptr %281, i64 %169, !dbg !401
  call void @llvm.dbg.value(metadata ptr %282, metadata !299, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %168, metadata !354, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata i64 %168, metadata !355, metadata !DIExpression()), !dbg !402
  %283 = mul i64 %172, %168, !dbg !404
  %284 = getelementptr double, ptr %171, i64 %283, !dbg !405
  %285 = getelementptr double, ptr %284, i64 %168, !dbg !405
  call void @llvm.dbg.value(metadata ptr %285, metadata !300, metadata !DIExpression()), !dbg !346
  %286 = load double, ptr %285, align 8, !dbg !406, !tbaa !219
  call void @llvm.dbg.value(metadata double %286, metadata !325, metadata !DIExpression()), !dbg !407
  %287 = load double, ptr %282, align 8, !dbg !406, !tbaa !219
  store double %287, ptr %285, align 8, !dbg !406, !tbaa !219
  store double %286, ptr %282, align 8, !dbg !406, !tbaa !219
  br label %288, !dbg !408

288:                                              ; preds = %116, %161, %279
  %289 = icmp ult i64 %110, %103, !dbg !409
  br i1 %289, label %290, label %336, !dbg !411

290:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !412
  %291 = add nuw i64 %110, 1, !dbg !414
  %292 = add i64 %111, -1, !dbg !415
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %110, i64 noundef %291, i64 noundef %292) #6, !dbg !412
  %293 = load i64, ptr %6, align 8, !dbg !412, !tbaa.struct !251
  %294 = load i64, ptr %104, align 8, !dbg !412, !tbaa.struct !255
  %295 = load ptr, ptr %105, align 8, !dbg !412, !tbaa.struct !256
  tail call void @llvm.dbg.value(metadata i64 %293, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %294, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %295, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 128), metadata !416, metadata ptr undef, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !412
  call void @llvm.dbg.value(metadata ptr undef, metadata !258, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !265, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 %293, metadata !266, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 0, metadata !268, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !419
  %296 = load double, ptr %295, align 8, !dbg !421, !tbaa !219
  call void @llvm.dbg.value(metadata double %296, metadata !269, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 1, metadata !267, metadata !DIExpression()), !dbg !417
  %297 = icmp ugt i64 %293, 1, !dbg !422
  br i1 %297, label %298, label %336, !dbg !423

298:                                              ; preds = %290
  %299 = add i64 %293, -1, !dbg !423
  %300 = and i64 %299, 1, !dbg !423
  %301 = icmp eq i64 %293, 2, !dbg !423
  br i1 %301, label %324, label %302, !dbg !423

302:                                              ; preds = %298
  %303 = and i64 %299, -2, !dbg !423
  br label %304, !dbg !423

304:                                              ; preds = %304, %302
  %305 = phi i64 [ 1, %302 ], [ %321, %304 ]
  %306 = phi double [ %296, %302 ], [ %320, %304 ]
  %307 = phi i64 [ 0, %302 ], [ %322, %304 ]
  call void @llvm.dbg.value(metadata i64 %305, metadata !267, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 poison, metadata !268, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata double %306, metadata !269, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %305, metadata !282, metadata !DIExpression()), !dbg !424
  %308 = mul i64 %305, %294, !dbg !426
  %309 = getelementptr inbounds double, ptr %295, i64 %308, !dbg !427
  %310 = load double, ptr %309, align 8, !dbg !427, !tbaa !219
  call void @llvm.dbg.value(metadata double %310, metadata !270, metadata !DIExpression()), !dbg !428
  %311 = call double @llvm.fabs.f64(double %310), !dbg !429
  call void @llvm.dbg.value(metadata double %311, metadata !274, metadata !DIExpression()), !dbg !428
  %312 = fcmp ogt double %311, %306, !dbg !430
  %313 = select i1 %312, double %311, double %306, !dbg !431
  call void @llvm.dbg.value(metadata double %313, metadata !269, metadata !DIExpression()), !dbg !417
  %314 = add nuw i64 %305, 1, !dbg !432
  call void @llvm.dbg.value(metadata i64 %314, metadata !267, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 %314, metadata !267, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 poison, metadata !268, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata double %313, metadata !269, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %314, metadata !282, metadata !DIExpression()), !dbg !424
  %315 = mul i64 %314, %294, !dbg !426
  %316 = getelementptr inbounds double, ptr %295, i64 %315, !dbg !427
  %317 = load double, ptr %316, align 8, !dbg !427, !tbaa !219
  call void @llvm.dbg.value(metadata double %317, metadata !270, metadata !DIExpression()), !dbg !428
  %318 = call double @llvm.fabs.f64(double %317), !dbg !429
  call void @llvm.dbg.value(metadata double %318, metadata !274, metadata !DIExpression()), !dbg !428
  %319 = fcmp ogt double %318, %313, !dbg !430
  %320 = select i1 %319, double %318, double %313, !dbg !431
  call void @llvm.dbg.value(metadata double %320, metadata !269, metadata !DIExpression()), !dbg !417
  %321 = add nuw i64 %305, 2, !dbg !432
  call void @llvm.dbg.value(metadata i64 %321, metadata !267, metadata !DIExpression()), !dbg !417
  %322 = add nuw i64 %307, 2, !dbg !423
  %323 = icmp eq i64 %322, %303, !dbg !423
  br i1 %323, label %324, label %304, !dbg !423, !llvm.loop !433

324:                                              ; preds = %304, %298
  %325 = phi double [ undef, %298 ], [ %320, %304 ]
  %326 = phi i64 [ 1, %298 ], [ %321, %304 ]
  %327 = phi double [ %296, %298 ], [ %320, %304 ]
  %328 = icmp eq i64 %300, 0, !dbg !423
  br i1 %328, label %336, label %329, !dbg !423

329:                                              ; preds = %324
  call void @llvm.dbg.value(metadata i64 %326, metadata !267, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 poison, metadata !268, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata double %327, metadata !269, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr undef, metadata !277, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i64 %326, metadata !282, metadata !DIExpression()), !dbg !424
  %330 = mul i64 %326, %294, !dbg !426
  %331 = getelementptr inbounds double, ptr %295, i64 %330, !dbg !427
  %332 = load double, ptr %331, align 8, !dbg !427, !tbaa !219
  call void @llvm.dbg.value(metadata double %332, metadata !270, metadata !DIExpression()), !dbg !428
  %333 = call double @llvm.fabs.f64(double %332), !dbg !429
  call void @llvm.dbg.value(metadata double %333, metadata !274, metadata !DIExpression()), !dbg !428
  %334 = fcmp ogt double %333, %327, !dbg !430
  %335 = select i1 %334, double %333, double %327, !dbg !431
  call void @llvm.dbg.value(metadata double %335, metadata !269, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i64 %326, metadata !267, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !417
  br label %336, !dbg !435

336:                                              ; preds = %329, %324, %288, %290
  %337 = phi double [ %296, %290 ], [ 0.000000e+00, %288 ], [ %325, %324 ], [ %335, %329 ], !dbg !436
  tail call void @llvm.dbg.value(metadata double %337, metadata !152, metadata !DIExpression()), !dbg !170
  %338 = fdiv double %337, %98, !dbg !435
  tail call void @llvm.dbg.value(metadata double %338, metadata !153, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !206, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !213, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !214, metadata !DIExpression()), !dbg !437
  %339 = load ptr, ptr %101, align 8, !dbg !439, !tbaa !204
  %340 = load i64, ptr %102, align 8, !dbg !440, !tbaa !205
  %341 = mul i64 %340, %110, !dbg !441
  %342 = getelementptr double, ptr %339, i64 %341, !dbg !442
  %343 = getelementptr double, ptr %342, i64 %110, !dbg !442
  %344 = load double, ptr %343, align 8, !dbg !442, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %344, metadata !148, metadata !DIExpression()), !dbg !170
  %345 = call double @llvm.fabs.f64(double %344), !dbg !443
  %346 = fcmp olt double %345, 0x3CB0000000000000, !dbg !443
  %347 = select i1 %346, double 0x3CB0000000000000, double %345, !dbg !443
  %348 = fmul double %338, %338, !dbg !443
  %349 = fcmp ogt double %347, %348, !dbg !443
  %350 = select i1 %349, double %347, double %348, !dbg !443
  tail call void @llvm.dbg.value(metadata double %350, metadata !154, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double poison, metadata !155, metadata !DIExpression()), !dbg !170
  br i1 %289, label %351, label %358, !dbg !444

351:                                              ; preds = %336
  %352 = fdiv double 1.000000e+00, %350, !dbg !445
  tail call void @llvm.dbg.value(metadata double %352, metadata !155, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !446
  %353 = add nuw i64 %110, 1, !dbg !447
  %354 = add i64 %111, -1, !dbg !448
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %110, i64 noundef %353, i64 noundef %354) #6, !dbg !449
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6, !dbg !450
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %353, i64 noundef %353, i64 noundef %354, i64 noundef %354) #6, !dbg !451
  %355 = fneg double %352, !dbg !452
  %356 = call i32 @gsl_blas_dsyr(i32 noundef 122, double noundef %355, ptr noundef nonnull %7, ptr noundef nonnull %8) #6, !dbg !453
  %357 = call i32 @gsl_vector_scale(ptr noundef nonnull %7, double noundef %352) #6, !dbg !454
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6, !dbg !455
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !455
  br label %358, !dbg !456

358:                                              ; preds = %351, %336
  br i1 %106, label %365, label %359, !dbg !457

359:                                              ; preds = %358
  %360 = fsub double %350, %344, !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !460, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !465, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %360, metadata !466, metadata !DIExpression()), !dbg !467
  %361 = load ptr, ptr %107, align 8, !dbg !469, !tbaa !470
  %362 = load i64, ptr %108, align 8, !dbg !472, !tbaa !473
  %363 = mul i64 %362, %110, !dbg !474
  %364 = getelementptr inbounds double, ptr %361, i64 %363, !dbg !475
  store double %360, ptr %364, align 8, !dbg !476, !tbaa !219
  br label %365, !dbg !477

365:                                              ; preds = %359, %358
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !478, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !483, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !484, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata double %350, metadata !485, metadata !DIExpression()), !dbg !486
  %366 = load ptr, ptr %101, align 8, !dbg !488, !tbaa !204
  %367 = load i64, ptr %102, align 8, !dbg !489, !tbaa !205
  %368 = mul i64 %367, %110, !dbg !490
  %369 = getelementptr double, ptr %366, i64 %368, !dbg !491
  %370 = getelementptr double, ptr %369, i64 %110, !dbg !491
  store double %350, ptr %370, align 8, !dbg !492, !tbaa !219
  %371 = add nuw i64 %110, 1, !dbg !493
  tail call void @llvm.dbg.value(metadata i64 %371, metadata !136, metadata !DIExpression()), !dbg !168
  %372 = icmp eq i64 %371, %9, !dbg !494
  br i1 %372, label %373, label %109, !dbg !242, !llvm.loop !495

373:                                              ; preds = %365, %84
  %374 = icmp eq ptr %2, null, !dbg !497
  br i1 %374, label %377, label %375, !dbg !499

375:                                              ; preds = %373
  %376 = call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #6, !dbg !500
  br label %377, !dbg !502

377:                                              ; preds = %375, %373
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !503
  br label %378

378:                                              ; preds = %377, %17, %13
  %379 = phi i32 [ 20, %13 ], [ 19, %17 ], [ 0, %377 ], !dbg !504
  ret i32 %379, !dbg !505
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !506 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !511 void @gsl_matrix_diagonal(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef) local_unnamed_addr #2

declare !dbg !514 i32 @gsl_matrix_transpose_tricpy(i8 noundef signext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !518 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !521 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !525 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !528 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !531 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !534 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !537 i32 @gsl_blas_dsyr(i32 noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !543 i32 @gsl_vector_scale(ptr noundef, double noundef) local_unnamed_addr #2

declare !dbg !546 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !552 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !556, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !557, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !558, metadata !DIExpression()), !dbg !561
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !559, metadata !DIExpression()), !dbg !561
  %5 = tail call i32 @gsl_linalg_pcholesky_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !560, metadata !DIExpression()), !dbg !561
  ret i32 %5, !dbg !563
}

declare !dbg !564 i32 @gsl_linalg_pcholesky_solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !566 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !570, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !571, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !572, metadata !DIExpression()), !dbg !574
  %4 = tail call i32 @gsl_linalg_pcholesky_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !575
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !573, metadata !DIExpression()), !dbg !574
  ret i32 %4, !dbg !576
}

declare !dbg !577 i32 @gsl_linalg_pcholesky_svx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !578 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !582, metadata !DIExpression()), !dbg !587
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !583, metadata !DIExpression()), !dbg !587
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !584, metadata !DIExpression()), !dbg !587
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !585, metadata !DIExpression()), !dbg !587
  %5 = tail call i32 @gsl_linalg_pcholesky_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6, !dbg !588
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !586, metadata !DIExpression()), !dbg !587
  ret i32 %5, !dbg !589
}

declare !dbg !590 i32 @gsl_linalg_pcholesky_rcond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_mcholesky_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !591 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !595, metadata !DIExpression()), !dbg !599
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !596, metadata !DIExpression()), !dbg !599
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !597, metadata !DIExpression()), !dbg !599
  %4 = tail call i32 @gsl_linalg_pcholesky_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6, !dbg !600
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !598, metadata !DIExpression()), !dbg !599
  ret i32 %4, !dbg !601
}

declare !dbg !602 i32 @gsl_linalg_pcholesky_invert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!245 = !DILocation(line: 130, column: 32, scope: !146)
!246 = !DILocation(line: 130, column: 23, scope: !146)
!247 = !DILocation(line: 0, scope: !146)
!248 = !DILocation(line: 131, column: 18, scope: !146)
!249 = !DILocation(line: 143, column: 15, scope: !149)
!250 = !DILocation(line: 143, column: 55, scope: !149)
!251 = !{i64 0, i64 8, !252, i64 8, i64 8, !252, i64 16, i64 8, !253, i64 24, i64 8, !253, i64 32, i64 4, !254}
!252 = !{!178, !178, i64 0}
!253 = !{!181, !181, i64 0}
!254 = !{!182, !182, i64 0}
!255 = !{i64 0, i64 8, !252, i64 8, i64 8, !253, i64 16, i64 8, !253, i64 24, i64 4, !254}
!256 = !{i64 0, i64 8, !253, i64 8, i64 8, !253, i64 16, i64 4, !254}
!257 = distinct !DIAssignID()
!258 = !DILocalVariable(name: "v", arg: 1, scope: !259, file: !2, line: 248, type: !262)
!259 = distinct !DISubprogram(name: "mcholesky_maxabs", scope: !2, file: !2, line: 248, type: !260, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !264)
!260 = !DISubroutineType(types: !261)
!261 = !{!82, !262, !62}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!264 = !{!258, !265, !266, !267, !268, !269, !270, !274}
!265 = !DILocalVariable(name: "maxabs", arg: 2, scope: !259, file: !2, line: 248, type: !62)
!266 = !DILocalVariable(name: "n", scope: !259, file: !2, line: 250, type: !120)
!267 = !DILocalVariable(name: "i", scope: !259, file: !2, line: 251, type: !82)
!268 = !DILocalVariable(name: "idx", scope: !259, file: !2, line: 252, type: !82)
!269 = !DILocalVariable(name: "max", scope: !259, file: !2, line: 253, type: !63)
!270 = !DILocalVariable(name: "vi", scope: !271, file: !2, line: 257, type: !63)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 256, column: 5)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 255, column: 3)
!273 = distinct !DILexicalBlock(scope: !259, file: !2, line: 255, column: 3)
!274 = !DILocalVariable(name: "absvi", scope: !271, file: !2, line: 258, type: !63)
!275 = !DILocation(line: 0, scope: !259, inlinedAt: !276)
!276 = distinct !DILocation(line: 144, column: 15, scope: !149)
!277 = !DILocalVariable(name: "v", arg: 1, scope: !278, file: !107, line: 175, type: !262)
!278 = distinct !DISubprogram(name: "gsl_vector_get", scope: !107, file: !107, line: 175, type: !279, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!63, !262, !120}
!281 = !{!277, !282}
!282 = !DILocalVariable(name: "i", arg: 2, scope: !278, file: !107, line: 175, type: !120)
!283 = !DILocation(line: 0, scope: !278, inlinedAt: !284)
!284 = distinct !DILocation(line: 253, column: 16, scope: !259, inlinedAt: !276)
!285 = !DILocation(line: 255, column: 17, scope: !272, inlinedAt: !276)
!286 = !DILocation(line: 255, column: 3, scope: !273, inlinedAt: !276)
!287 = !DILocation(line: 146, column: 11, scope: !149)
!288 = !DILocalVariable(name: "A", arg: 1, scope: !289, file: !290, line: 35, type: !76)
!289 = distinct !DISubprogram(name: "cholesky_swap_rowcol", scope: !290, file: !290, line: 35, type: !291, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !293)
!290 = !DIFile(filename: "./cholesky_common.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "88be844a67692febd136cbf5a6510722")
!291 = !DISubroutineType(types: !292)
!292 = !{!18, !76, !120, !120}
!293 = !{!288, !294, !295, !296, !299, !300, !301, !302, !303, !304, !308, !309, !311, !315, !316, !318, !322, !323, !325}
!294 = !DILocalVariable(name: "i", arg: 2, scope: !289, file: !290, line: 35, type: !120)
!295 = !DILocalVariable(name: "j", arg: 3, scope: !289, file: !290, line: 35, type: !120)
!296 = !DILocalVariable(name: "N", scope: !297, file: !290, line: 39, type: !120)
!297 = distinct !DILexicalBlock(scope: !298, file: !290, line: 38, column: 5)
!298 = distinct !DILexicalBlock(scope: !289, file: !290, line: 37, column: 7)
!299 = !DILocalVariable(name: "Aii", scope: !297, file: !290, line: 40, type: !62)
!300 = !DILocalVariable(name: "Ajj", scope: !297, file: !290, line: 40, type: !62)
!301 = !DILocalVariable(name: "ii", scope: !297, file: !290, line: 41, type: !82)
!302 = !DILocalVariable(name: "jj", scope: !297, file: !290, line: 41, type: !82)
!303 = !DILocalVariable(name: "k", scope: !297, file: !290, line: 41, type: !82)
!304 = !DILocalVariable(name: "Aik", scope: !305, file: !290, line: 58, type: !62)
!305 = distinct !DILexicalBlock(scope: !306, file: !290, line: 57, column: 9)
!306 = distinct !DILexicalBlock(scope: !307, file: !290, line: 56, column: 7)
!307 = distinct !DILexicalBlock(scope: !297, file: !290, line: 56, column: 7)
!308 = !DILocalVariable(name: "Ajk", scope: !305, file: !290, line: 59, type: !62)
!309 = !DILocalVariable(name: "tmp", scope: !310, file: !290, line: 60, type: !63)
!310 = distinct !DILexicalBlock(scope: !305, file: !290, line: 60, column: 11)
!311 = !DILocalVariable(name: "Ajk", scope: !312, file: !290, line: 66, type: !62)
!312 = distinct !DILexicalBlock(scope: !313, file: !290, line: 65, column: 9)
!313 = distinct !DILexicalBlock(scope: !314, file: !290, line: 64, column: 7)
!314 = distinct !DILexicalBlock(scope: !297, file: !290, line: 64, column: 7)
!315 = !DILocalVariable(name: "Aki", scope: !312, file: !290, line: 67, type: !62)
!316 = !DILocalVariable(name: "tmp", scope: !317, file: !290, line: 68, type: !63)
!317 = distinct !DILexicalBlock(scope: !312, file: !290, line: 68, column: 11)
!318 = !DILocalVariable(name: "Aki", scope: !319, file: !290, line: 74, type: !62)
!319 = distinct !DILexicalBlock(scope: !320, file: !290, line: 73, column: 9)
!320 = distinct !DILexicalBlock(scope: !321, file: !290, line: 72, column: 7)
!321 = distinct !DILexicalBlock(scope: !297, file: !290, line: 72, column: 7)
!322 = !DILocalVariable(name: "Akj", scope: !319, file: !290, line: 75, type: !62)
!323 = !DILocalVariable(name: "tmp", scope: !324, file: !290, line: 76, type: !63)
!324 = distinct !DILexicalBlock(scope: !319, file: !290, line: 76, column: 11)
!325 = !DILocalVariable(name: "tmp", scope: !326, file: !290, line: 82, type: !63)
!326 = distinct !DILexicalBlock(scope: !297, file: !290, line: 82, column: 7)
!327 = !DILocation(line: 0, scope: !289, inlinedAt: !328)
!328 = distinct !DILocation(line: 147, column: 11, scope: !149)
!329 = !DILocation(line: 37, column: 7, scope: !289, inlinedAt: !328)
!330 = !DILocation(line: 183, column: 10, scope: !278, inlinedAt: !284)
!331 = !DILocation(line: 0, scope: !278, inlinedAt: !332)
!332 = distinct !DILocation(line: 257, column: 19, scope: !271, inlinedAt: !276)
!333 = !DILocation(line: 183, column: 20, scope: !278, inlinedAt: !332)
!334 = !DILocation(line: 183, column: 10, scope: !278, inlinedAt: !332)
!335 = !DILocation(line: 0, scope: !271, inlinedAt: !276)
!336 = !DILocation(line: 258, column: 22, scope: !271, inlinedAt: !276)
!337 = !DILocation(line: 260, column: 17, scope: !338, inlinedAt: !276)
!338 = distinct !DILexicalBlock(scope: !271, file: !2, line: 260, column: 11)
!339 = !DILocation(line: 260, column: 11, scope: !271, inlinedAt: !276)
!340 = !DILocation(line: 255, column: 22, scope: !272, inlinedAt: !276)
!341 = distinct !{!341, !286, !342, !233}
!342 = !DILocation(line: 265, column: 5, scope: !273, inlinedAt: !276)
!343 = !DILocation(line: 144, column: 49, scope: !149)
!344 = !DILocation(line: 37, column: 9, scope: !298, inlinedAt: !328)
!345 = !DILocation(line: 39, column: 27, scope: !297, inlinedAt: !328)
!346 = !DILocation(line: 0, scope: !297, inlinedAt: !328)
!347 = !DILocation(line: 56, column: 21, scope: !306, inlinedAt: !328)
!348 = !DILocation(line: 56, column: 7, scope: !307, inlinedAt: !328)
!349 = !DILocalVariable(name: "m", arg: 1, scope: !350, file: !78, line: 310, type: !76)
!350 = distinct !DISubprogram(name: "gsl_matrix_ptr", scope: !78, file: !78, line: 310, type: !351, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{!62, !76, !120, !120}
!353 = !{!349, !354, !355}
!354 = !DILocalVariable(name: "i", arg: 2, scope: !350, file: !78, line: 310, type: !120)
!355 = !DILocalVariable(name: "j", arg: 3, scope: !350, file: !78, line: 310, type: !120)
!356 = !DILocation(line: 0, scope: !350, inlinedAt: !357)
!357 = distinct !DILocation(line: 58, column: 25, scope: !305, inlinedAt: !328)
!358 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !357)
!359 = !DILocation(line: 0, scope: !305, inlinedAt: !328)
!360 = !DILocation(line: 0, scope: !350, inlinedAt: !361)
!361 = distinct !DILocation(line: 59, column: 25, scope: !305, inlinedAt: !328)
!362 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !361)
!363 = !DILocation(line: 60, column: 11, scope: !310, inlinedAt: !328)
!364 = !DILocation(line: 0, scope: !310, inlinedAt: !328)
!365 = !DILocation(line: 64, scope: !314, inlinedAt: !328)
!366 = !DILocation(line: 64, column: 26, scope: !313, inlinedAt: !328)
!367 = !DILocation(line: 64, column: 7, scope: !314, inlinedAt: !328)
!368 = !DILocation(line: 0, scope: !350, inlinedAt: !369)
!369 = distinct !DILocation(line: 66, column: 25, scope: !312, inlinedAt: !328)
!370 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !369)
!371 = !DILocation(line: 0, scope: !312, inlinedAt: !328)
!372 = !DILocation(line: 0, scope: !350, inlinedAt: !373)
!373 = distinct !DILocation(line: 67, column: 25, scope: !312, inlinedAt: !328)
!374 = !DILocation(line: 325, column: 35, scope: !350, inlinedAt: !373)
!375 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !373)
!376 = !DILocation(line: 68, column: 11, scope: !317, inlinedAt: !328)
!377 = !DILocation(line: 0, scope: !317, inlinedAt: !328)
!378 = !DILocation(line: 56, column: 27, scope: !306, inlinedAt: !328)
!379 = distinct !{!379, !348, !380, !233}
!380 = !DILocation(line: 61, column: 9, scope: !307, inlinedAt: !328)
!381 = !DILocation(line: 72, scope: !321, inlinedAt: !328)
!382 = !DILocation(line: 72, column: 26, scope: !320, inlinedAt: !328)
!383 = !DILocation(line: 72, column: 7, scope: !321, inlinedAt: !328)
!384 = !DILocation(line: 0, scope: !350, inlinedAt: !385)
!385 = distinct !DILocation(line: 74, column: 25, scope: !319, inlinedAt: !328)
!386 = !DILocation(line: 325, column: 35, scope: !350, inlinedAt: !385)
!387 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !385)
!388 = !DILocation(line: 0, scope: !319, inlinedAt: !328)
!389 = !DILocation(line: 0, scope: !350, inlinedAt: !390)
!390 = distinct !DILocation(line: 75, column: 25, scope: !319, inlinedAt: !328)
!391 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !390)
!392 = !DILocation(line: 76, column: 11, scope: !324, inlinedAt: !328)
!393 = !DILocation(line: 0, scope: !324, inlinedAt: !328)
!394 = distinct !{!394, !367, !395, !233}
!395 = !DILocation(line: 69, column: 9, scope: !314, inlinedAt: !328)
!396 = distinct !{!396, !383, !397, !233}
!397 = !DILocation(line: 77, column: 9, scope: !321, inlinedAt: !328)
!398 = !DILocation(line: 0, scope: !350, inlinedAt: !399)
!399 = distinct !DILocation(line: 80, column: 13, scope: !297, inlinedAt: !328)
!400 = !DILocation(line: 325, column: 35, scope: !350, inlinedAt: !399)
!401 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !399)
!402 = !DILocation(line: 0, scope: !350, inlinedAt: !403)
!403 = distinct !DILocation(line: 81, column: 13, scope: !297, inlinedAt: !328)
!404 = !DILocation(line: 325, column: 35, scope: !350, inlinedAt: !403)
!405 = !DILocation(line: 325, column: 30, scope: !350, inlinedAt: !403)
!406 = !DILocation(line: 82, column: 7, scope: !326, inlinedAt: !328)
!407 = !DILocation(line: 0, scope: !326, inlinedAt: !328)
!408 = !DILocation(line: 83, column: 5, scope: !297, inlinedAt: !328)
!409 = !DILocation(line: 150, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !149, file: !2, line: 150, column: 15)
!411 = !DILocation(line: 150, column: 15, scope: !149)
!412 = !DILocation(line: 152, column: 19, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !2, line: 151, column: 13)
!414 = !DILocation(line: 152, column: 48, scope: !413)
!415 = !DILocation(line: 152, column: 59, scope: !413)
!416 = distinct !DIAssignID()
!417 = !DILocation(line: 0, scope: !259, inlinedAt: !418)
!418 = distinct !DILocation(line: 153, column: 15, scope: !413)
!419 = !DILocation(line: 0, scope: !278, inlinedAt: !420)
!420 = distinct !DILocation(line: 253, column: 16, scope: !259, inlinedAt: !418)
!421 = !DILocation(line: 183, column: 10, scope: !278, inlinedAt: !420)
!422 = !DILocation(line: 255, column: 17, scope: !272, inlinedAt: !418)
!423 = !DILocation(line: 255, column: 3, scope: !273, inlinedAt: !418)
!424 = !DILocation(line: 0, scope: !278, inlinedAt: !425)
!425 = distinct !DILocation(line: 257, column: 19, scope: !271, inlinedAt: !418)
!426 = !DILocation(line: 183, column: 20, scope: !278, inlinedAt: !425)
!427 = !DILocation(line: 183, column: 10, scope: !278, inlinedAt: !425)
!428 = !DILocation(line: 0, scope: !271, inlinedAt: !418)
!429 = !DILocation(line: 258, column: 22, scope: !271, inlinedAt: !418)
!430 = !DILocation(line: 260, column: 17, scope: !338, inlinedAt: !418)
!431 = !DILocation(line: 260, column: 11, scope: !271, inlinedAt: !418)
!432 = !DILocation(line: 255, column: 22, scope: !272, inlinedAt: !418)
!433 = distinct !{!433, !423, !434, !233}
!434 = !DILocation(line: 265, column: 5, scope: !273, inlinedAt: !418)
!435 = !DILocation(line: 160, column: 22, scope: !149)
!436 = !DILocation(line: 0, scope: !410)
!437 = !DILocation(line: 0, scope: !207, inlinedAt: !438)
!438 = distinct !DILocation(line: 163, column: 17, scope: !149)
!439 = !DILocation(line: 285, column: 13, scope: !207, inlinedAt: !438)
!440 = !DILocation(line: 285, column: 25, scope: !207, inlinedAt: !438)
!441 = !DILocation(line: 285, column: 20, scope: !207, inlinedAt: !438)
!442 = !DILocation(line: 285, column: 10, scope: !207, inlinedAt: !438)
!443 = !DILocation(line: 164, column: 19, scope: !149)
!444 = !DILocation(line: 167, column: 15, scope: !149)
!445 = !DILocation(line: 165, column: 26, scope: !149)
!446 = !DILocation(line: 170, column: 15, scope: !159)
!447 = !DILocation(line: 170, column: 64, scope: !159)
!448 = !DILocation(line: 170, column: 75, scope: !159)
!449 = !DILocation(line: 170, column: 35, scope: !159)
!450 = !DILocation(line: 173, column: 15, scope: !159)
!451 = !DILocation(line: 173, column: 35, scope: !159)
!452 = !DILocation(line: 176, column: 41, scope: !159)
!453 = !DILocation(line: 176, column: 15, scope: !159)
!454 = !DILocation(line: 179, column: 15, scope: !159)
!455 = !DILocation(line: 181, column: 13, scope: !160)
!456 = !DILocation(line: 181, column: 13, scope: !159)
!457 = !DILocation(line: 183, column: 15, scope: !149)
!458 = !DILocation(line: 184, column: 40, scope: !459)
!459 = distinct !DILexicalBlock(scope: !149, file: !2, line: 183, column: 15)
!460 = !DILocalVariable(name: "v", arg: 1, scope: !461, file: !107, line: 188, type: !105)
!461 = distinct !DISubprogram(name: "gsl_vector_set", scope: !107, file: !107, line: 188, type: !462, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !105, !120, !63}
!464 = !{!460, !465, !466}
!465 = !DILocalVariable(name: "i", arg: 2, scope: !461, file: !107, line: 188, type: !120)
!466 = !DILocalVariable(name: "x", arg: 3, scope: !461, file: !107, line: 188, type: !63)
!467 = !DILocation(line: 0, scope: !461, inlinedAt: !468)
!468 = distinct !DILocation(line: 184, column: 13, scope: !459)
!469 = !DILocation(line: 196, column: 6, scope: !461, inlinedAt: !468)
!470 = !{!471, !181, i64 16}
!471 = !{!"", !178, i64 0, !178, i64 8, !181, i64 16, !181, i64 24, !182, i64 32}
!472 = !DILocation(line: 196, column: 18, scope: !461, inlinedAt: !468)
!473 = !{!471, !178, i64 8}
!474 = !DILocation(line: 196, column: 13, scope: !461, inlinedAt: !468)
!475 = !DILocation(line: 196, column: 3, scope: !461, inlinedAt: !468)
!476 = !DILocation(line: 196, column: 26, scope: !461, inlinedAt: !468)
!477 = !DILocation(line: 184, column: 13, scope: !459)
!478 = !DILocalVariable(name: "m", arg: 1, scope: !479, file: !78, line: 290, type: !76)
!479 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !78, file: !78, line: 290, type: !480, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !76, !120, !120, !125}
!482 = !{!478, !483, !484, !485}
!483 = !DILocalVariable(name: "i", arg: 2, scope: !479, file: !78, line: 290, type: !120)
!484 = !DILocalVariable(name: "j", arg: 3, scope: !479, file: !78, line: 290, type: !120)
!485 = !DILocalVariable(name: "x", arg: 4, scope: !479, file: !78, line: 290, type: !125)
!486 = !DILocation(line: 0, scope: !479, inlinedAt: !487)
!487 = distinct !DILocation(line: 186, column: 11, scope: !149)
!488 = !DILocation(line: 305, column: 6, scope: !479, inlinedAt: !487)
!489 = !DILocation(line: 305, column: 18, scope: !479, inlinedAt: !487)
!490 = !DILocation(line: 305, column: 13, scope: !479, inlinedAt: !487)
!491 = !DILocation(line: 305, column: 3, scope: !479, inlinedAt: !487)
!492 = !DILocation(line: 305, column: 27, scope: !479, inlinedAt: !487)
!493 = !DILocation(line: 136, column: 26, scope: !150)
!494 = !DILocation(line: 136, column: 21, scope: !150)
!495 = distinct !{!495, !242, !496, !233}
!496 = !DILocation(line: 187, column: 9, scope: !151)
!497 = !DILocation(line: 189, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !122, file: !2, line: 189, column: 11)
!499 = !DILocation(line: 189, column: 11, scope: !122)
!500 = !DILocation(line: 193, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !2, line: 190, column: 9)
!502 = !DILocation(line: 194, column: 9, scope: !501)
!503 = !DILocation(line: 197, column: 5, scope: !123)
!504 = !DILocation(line: 0, scope: !124)
!505 = !DILocation(line: 198, column: 1, scope: !73)
!506 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !509, !18, !18}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!511 = !DISubprogram(name: "gsl_matrix_diagonal", scope: !78, file: !78, line: 112, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{!131, !76}
!514 = !DISubprogram(name: "gsl_matrix_transpose_tricpy", scope: !78, file: !78, line: 226, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!18, !510, !517, !76, !210}
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!518 = !DISubprogram(name: "gsl_permutation_init", scope: !99, file: !99, line: 51, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !97}
!521 = !DISubprogram(name: "sqrt", scope: !522, file: !522, line: 143, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!523 = !DISubroutineType(types: !524)
!524 = !{!63, !63}
!525 = !DISubprogram(name: "gsl_vector_subvector", scope: !107, file: !107, line: 103, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!131, !105, !82, !82}
!528 = !DISubprogram(name: "gsl_permutation_swap", scope: !99, file: !99, line: 63, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubroutineType(types: !530)
!530 = !{!18, !97, !120, !120}
!531 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !78, file: !78, line: 125, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!131, !76, !120, !120, !120}
!534 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !78, file: !78, line: 101, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!163, !76, !120, !120, !120, !120}
!537 = !DISubprogram(name: "gsl_blas_dsyr", scope: !538, file: !538, line: 293, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!539 = !DISubroutineType(types: !540)
!540 = !{!18, !541, !63, !262, !76}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !542, line: 45, baseType: !55)
!542 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!543 = !DISubprogram(name: "gsl_vector_scale", scope: !107, file: !107, line: 155, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubroutineType(types: !545)
!545 = !{!18, !105, !125}
!546 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !547, file: !547, line: 41, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!548 = !DISubroutineType(types: !549)
!549 = !{!18, !550, !105}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!552 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_solve", scope: !2, file: !2, line: 201, type: !553, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!18, !210, !550, !262, !105}
!555 = !{!556, !557, !558, !559, !560}
!556 = !DILocalVariable(name: "LDLT", arg: 1, scope: !552, file: !2, line: 201, type: !210)
!557 = !DILocalVariable(name: "p", arg: 2, scope: !552, file: !2, line: 202, type: !550)
!558 = !DILocalVariable(name: "b", arg: 3, scope: !552, file: !2, line: 203, type: !262)
!559 = !DILocalVariable(name: "x", arg: 4, scope: !552, file: !2, line: 204, type: !105)
!560 = !DILocalVariable(name: "status", scope: !552, file: !2, line: 206, type: !18)
!561 = !DILocation(line: 0, scope: !552)
!562 = !DILocation(line: 206, column: 16, scope: !552)
!563 = !DILocation(line: 207, column: 3, scope: !552)
!564 = !DISubprogram(name: "gsl_linalg_pcholesky_solve", scope: !565, file: !565, line: 531, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!566 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_svx", scope: !2, file: !2, line: 211, type: !567, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!18, !210, !550, !105}
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "LDLT", arg: 1, scope: !566, file: !2, line: 211, type: !210)
!571 = !DILocalVariable(name: "p", arg: 2, scope: !566, file: !2, line: 212, type: !550)
!572 = !DILocalVariable(name: "x", arg: 3, scope: !566, file: !2, line: 213, type: !105)
!573 = !DILocalVariable(name: "status", scope: !566, file: !2, line: 215, type: !18)
!574 = !DILocation(line: 0, scope: !566)
!575 = !DILocation(line: 215, column: 16, scope: !566)
!576 = !DILocation(line: 216, column: 3, scope: !566)
!577 = !DISubprogram(name: "gsl_linalg_pcholesky_svx", scope: !565, file: !565, line: 536, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_rcond", scope: !2, file: !2, line: 220, type: !579, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!18, !210, !550, !62, !105}
!581 = !{!582, !583, !584, !585, !586}
!582 = !DILocalVariable(name: "LDLT", arg: 1, scope: !578, file: !2, line: 220, type: !210)
!583 = !DILocalVariable(name: "p", arg: 2, scope: !578, file: !2, line: 220, type: !550)
!584 = !DILocalVariable(name: "rcond", arg: 3, scope: !578, file: !2, line: 221, type: !62)
!585 = !DILocalVariable(name: "work", arg: 4, scope: !578, file: !2, line: 221, type: !105)
!586 = !DILocalVariable(name: "status", scope: !578, file: !2, line: 223, type: !18)
!587 = !DILocation(line: 0, scope: !578)
!588 = !DILocation(line: 223, column: 16, scope: !578)
!589 = !DILocation(line: 224, column: 3, scope: !578)
!590 = !DISubprogram(name: "gsl_linalg_pcholesky_rcond", scope: !565, file: !565, line: 557, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = distinct !DISubprogram(name: "gsl_linalg_mcholesky_invert", scope: !2, file: !2, line: 228, type: !592, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!18, !210, !550, !76}
!594 = !{!595, !596, !597, !598}
!595 = !DILocalVariable(name: "LDLT", arg: 1, scope: !591, file: !2, line: 228, type: !210)
!596 = !DILocalVariable(name: "p", arg: 2, scope: !591, file: !2, line: 228, type: !550)
!597 = !DILocalVariable(name: "Ainv", arg: 3, scope: !591, file: !2, line: 229, type: !76)
!598 = !DILocalVariable(name: "status", scope: !591, file: !2, line: 231, type: !18)
!599 = !DILocation(line: 0, scope: !591)
!600 = !DILocation(line: 231, column: 16, scope: !591)
!601 = !DILocation(line: 232, column: 3, scope: !591)
!602 = !DISubprogram(name: "gsl_linalg_pcholesky_invert", scope: !565, file: !565, line: 554, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
