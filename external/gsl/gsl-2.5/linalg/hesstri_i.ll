; ModuleID = 'hesstri.ll'
source_filename = "hesstri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Hessenberg-triangular reduction requires square matrices\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"hesstri.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"length of workspace must match matrix dimension\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hesstri_decomp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !67 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !125, metadata ptr %6, metadata !DIExpression()), !dbg !126
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !127, metadata ptr %7, metadata !DIExpression()), !dbg !126
  %8 = alloca %struct._gsl_vector_view, align 8
  %9 = alloca %struct._gsl_vector_view, align 8
  %10 = alloca %struct._gsl_vector_view, align 8
  %11 = alloca %struct._gsl_vector_view, align 8
  %12 = alloca %struct._gsl_vector_view, align 8
  %13 = alloca %struct._gsl_vector_view, align 8
  %14 = alloca %struct._gsl_vector_view, align 8
  %15 = alloca %struct._gsl_vector_view, align 8
  %16 = alloca %struct._gsl_vector_view, align 8
  %17 = alloca %struct._gsl_vector_view, align 8
  %18 = alloca %struct._gsl_vector_view, align 8
  %19 = alloca %struct._gsl_vector_view, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !104, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !105, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !106, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !107, metadata !DIExpression()), !dbg !128
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !108, metadata !DIExpression()), !dbg !128
  %20 = load i64, ptr %0, align 8, !dbg !129, !tbaa !130
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !109, metadata !DIExpression()), !dbg !128
  %21 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !137
  %22 = load i64, ptr %21, align 8, !dbg !137, !tbaa !138
  %23 = icmp eq i64 %20, %22, !dbg !139
  br i1 %23, label %24, label %31, !dbg !140

24:                                               ; preds = %5
  %25 = load i64, ptr %1, align 8, !dbg !141, !tbaa !130
  %26 = icmp eq i64 %20, %25, !dbg !142
  br i1 %26, label %27, label %31, !dbg !143

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !144
  %29 = load i64, ptr %28, align 8, !dbg !144, !tbaa !138
  %30 = icmp eq i64 %20, %29, !dbg !145
  br i1 %30, label %32, label %31, !dbg !146

31:                                               ; preds = %27, %24, %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 63, i32 noundef 20) #5, !dbg !147
  br label %200, !dbg !147

32:                                               ; preds = %27
  %33 = load i64, ptr %4, align 8, !dbg !150, !tbaa !151
  %34 = icmp eq i64 %20, %33, !dbg !153
  br i1 %34, label %36, label %35, !dbg !154

35:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 19) #5, !dbg !155
  br label %200, !dbg !155

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !158
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !158
  %37 = tail call i32 @gsl_linalg_QR_decomp(ptr noundef nonnull %1, ptr noundef nonnull %4) #5, !dbg !159
  %38 = tail call i32 @gsl_linalg_QR_QTmat(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %0) #5, !dbg !160
  %39 = icmp eq ptr %2, null, !dbg !161
  br i1 %39, label %40, label %50, !dbg !163

40:                                               ; preds = %36
  %41 = add i64 %20, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !126
  %42 = icmp eq i64 %41, 0, !dbg !164
  br i1 %42, label %99, label %43, !dbg !168

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %45 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %46 = and i64 %41, 1, !dbg !168
  %47 = icmp eq i64 %20, 2, !dbg !168
  br i1 %47, label %83, label %48, !dbg !168

48:                                               ; preds = %43
  %49 = and i64 %41, -2, !dbg !168
  br label %68, !dbg !168

50:                                               ; preds = %36
  %51 = tail call i32 @gsl_linalg_QR_unpack(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %1) #5, !dbg !169
  br label %99, !dbg !171

52:                                               ; preds = %77, %68
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !117, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !117, metadata !DIExpression()), !dbg !126
  %53 = add nuw i64 %69, 2, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !116, metadata !DIExpression()), !dbg !126
  %54 = icmp ult i64 %53, %20, !dbg !175
  br i1 %54, label %55, label %65, !dbg !177

55:                                               ; preds = %52
  %56 = load ptr, ptr %44, align 8, !tbaa !178
  %57 = load i64, ptr %45, align 8, !tbaa !179
  %58 = getelementptr double, ptr %56, i64 %71, !dbg !177
  br label %59, !dbg !177

59:                                               ; preds = %59, %55
  %60 = phi i64 [ %53, %55 ], [ %63, %59 ]
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !116, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !180, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !186, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !187, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !189
  %61 = mul i64 %57, %60, !dbg !191
  %62 = getelementptr double, ptr %58, i64 %61, !dbg !192
  store double 0.000000e+00, ptr %62, align 8, !dbg !193, !tbaa !194
  %63 = add nuw i64 %60, 1, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !116, metadata !DIExpression()), !dbg !126
  %64 = icmp ult i64 %63, %20, !dbg !175
  br i1 %64, label %59, label %65, !dbg !177, !llvm.loop !197

65:                                               ; preds = %59, %52
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !117, metadata !DIExpression()), !dbg !126
  %66 = add i64 %70, 2, !dbg !168
  %67 = icmp eq i64 %66, %49, !dbg !168
  br i1 %67, label %83, label %68, !dbg !168, !llvm.loop !200

68:                                               ; preds = %65, %48
  %69 = phi i64 [ 0, %48 ], [ %53, %65 ]
  %70 = phi i64 [ 0, %48 ], [ %66, %65 ]
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !117, metadata !DIExpression()), !dbg !126
  %71 = or disjoint i64 %69, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !116, metadata !DIExpression()), !dbg !126
  %72 = icmp ult i64 %71, %20, !dbg !175
  br i1 %72, label %73, label %52, !dbg !177

73:                                               ; preds = %68
  %74 = load ptr, ptr %44, align 8, !tbaa !178
  %75 = load i64, ptr %45, align 8, !tbaa !179
  %76 = getelementptr double, ptr %74, i64 %69, !dbg !177
  br label %77, !dbg !177

77:                                               ; preds = %77, %73
  %78 = phi i64 [ %71, %73 ], [ %81, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !116, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !180, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !186, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !187, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !189
  %79 = mul i64 %75, %78, !dbg !191
  %80 = getelementptr double, ptr %76, i64 %79, !dbg !192
  store double 0.000000e+00, ptr %80, align 8, !dbg !193, !tbaa !194
  %81 = add nuw i64 %78, 1, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !116, metadata !DIExpression()), !dbg !126
  %82 = icmp ult i64 %81, %20, !dbg !175
  br i1 %82, label %77, label %52, !dbg !177, !llvm.loop !197

83:                                               ; preds = %65, %43
  %84 = phi i64 [ 0, %43 ], [ %53, %65 ]
  %85 = icmp eq i64 %46, 0, !dbg !177
  br i1 %85, label %99, label %86, !dbg !177

86:                                               ; preds = %83
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !117, metadata !DIExpression()), !dbg !126
  %87 = add nuw i64 %84, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !116, metadata !DIExpression()), !dbg !126
  %88 = icmp ult i64 %87, %20, !dbg !175
  br i1 %88, label %89, label %99, !dbg !177

89:                                               ; preds = %86
  %90 = load ptr, ptr %44, align 8, !tbaa !178
  %91 = load i64, ptr %45, align 8, !tbaa !179
  %92 = getelementptr double, ptr %90, i64 %84, !dbg !177
  br label %93, !dbg !177

93:                                               ; preds = %93, %89
  %94 = phi i64 [ %87, %89 ], [ %97, %93 ]
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !116, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !180, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !186, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !187, metadata !DIExpression()), !dbg !189
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !188, metadata !DIExpression()), !dbg !189
  %95 = mul i64 %91, %94, !dbg !191
  %96 = getelementptr double, ptr %92, i64 %95, !dbg !192
  store double 0.000000e+00, ptr %96, align 8, !dbg !193, !tbaa !194
  %97 = add nuw i64 %94, 1, !dbg !196
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !116, metadata !DIExpression()), !dbg !126
  %98 = icmp ult i64 %97, %20, !dbg !175
  br i1 %98, label %93, label %99, !dbg !177, !llvm.loop !197

99:                                               ; preds = %93, %86, %83, %50, %40
  %100 = icmp eq ptr %3, null, !dbg !202
  br i1 %100, label %102, label %101, !dbg !204

101:                                              ; preds = %99
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %3) #5, !dbg !205
  br label %102, !dbg !205

102:                                              ; preds = %101, %99
  %103 = icmp ult i64 %20, 3, !dbg !206
  br i1 %103, label %199, label %104, !dbg !208

104:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i64 0, metadata !117, metadata !DIExpression()), !dbg !126
  %105 = add i64 %20, -1
  %106 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %107 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %108 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %109 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %110 = add i64 %20, -3
  br label %111, !dbg !209

111:                                              ; preds = %196, %104
  %112 = phi i64 [ 0, %104 ], [ %197, %196 ]
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !117, metadata !DIExpression()), !dbg !126
  %113 = add nuw i64 %112, 2
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !116, metadata !DIExpression()), !dbg !126
  %114 = sub i64 %20, %112
  br label %115, !dbg !211

115:                                              ; preds = %193, %111
  %116 = phi i64 [ %105, %111 ], [ %194, %193 ]
  %117 = phi i64 [ %20, %111 ], [ %116, %193 ]
  %118 = add i64 %117, -2, !dbg !215
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !225, metadata !DIExpression()), !dbg !227
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !226, metadata !DIExpression()), !dbg !227
  %119 = load ptr, ptr %106, align 8, !dbg !229, !tbaa !178
  %120 = load i64, ptr %107, align 8, !dbg !230, !tbaa !179
  %121 = mul i64 %120, %118, !dbg !231
  %122 = getelementptr double, ptr %119, i64 %121, !dbg !232
  %123 = getelementptr double, ptr %122, i64 %112, !dbg !232
  %124 = load double, ptr %123, align 8, !dbg !232, !tbaa !194
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !218, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !225, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !226, metadata !DIExpression()), !dbg !233
  %125 = mul i64 %120, %116, !dbg !235
  %126 = getelementptr double, ptr %119, i64 %125, !dbg !236
  %127 = getelementptr double, ptr %126, i64 %112, !dbg !236
  %128 = load double, ptr %127, align 8, !dbg !236, !tbaa !194
  call void @llvm.dbg.value(metadata double %124, metadata !237, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double %128, metadata !243, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata ptr undef, metadata !244, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata ptr undef, metadata !245, metadata !DIExpression()), !dbg !254
  %129 = fcmp oeq double %128, 0.000000e+00, !dbg !256
  br i1 %129, label %148, label %130, !dbg !257

130:                                              ; preds = %115
  %131 = call double @llvm.fabs.f64(double %128), !dbg !258
  %132 = call double @llvm.fabs.f64(double %124), !dbg !259
  %133 = fcmp ogt double %131, %132, !dbg !260
  br i1 %133, label %134, label %141, !dbg !261

134:                                              ; preds = %130
  %135 = fneg double %124, !dbg !262
  %136 = fdiv double %135, %128, !dbg !263
  call void @llvm.dbg.value(metadata double %136, metadata !246, metadata !DIExpression()), !dbg !264
  %137 = fmul double %136, %136, !dbg !265
  %handler_result = call double @fAddHandlerDouble(double %137, double 1.000000e+00), !dbg !266
  %138 = call double @llvm.sqrt.f64(double %handler_result), !dbg !266
  %139 = fdiv double 1.000000e+00, %138, !dbg !267
  call void @llvm.dbg.value(metadata double %139, metadata !250, metadata !DIExpression()), !dbg !264
  tail call void @llvm.dbg.value(metadata double %139, metadata !115, metadata !DIExpression()), !dbg !126
  %140 = fmul double %136, %139, !dbg !268
  tail call void @llvm.dbg.value(metadata double %140, metadata !111, metadata !DIExpression()), !dbg !126
  br label %148, !dbg !269

141:                                              ; preds = %130
  %142 = fneg double %128, !dbg !270
  %143 = fdiv double %142, %124, !dbg !271
  call void @llvm.dbg.value(metadata double %143, metadata !251, metadata !DIExpression()), !dbg !272
  %144 = fmul double %143, %143, !dbg !273
  %handler_result1 = call double @fAddHandlerDouble(double %144, double 1.000000e+00), !dbg !274
  %145 = call double @llvm.sqrt.f64(double %handler_result1), !dbg !274
  %146 = fdiv double 1.000000e+00, %145, !dbg !275
  call void @llvm.dbg.value(metadata double %146, metadata !253, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double %146, metadata !111, metadata !DIExpression()), !dbg !126
  %147 = fmul double %143, %146, !dbg !276
  tail call void @llvm.dbg.value(metadata double %147, metadata !115, metadata !DIExpression()), !dbg !126
  br label %148

148:                                              ; preds = %141, %134, %115
  %149 = phi double [ %140, %134 ], [ %146, %141 ], [ 1.000000e+00, %115 ], !dbg !277
  %150 = phi double [ %139, %134 ], [ %147, %141 ], [ 0.000000e+00, %115 ], !dbg !277
  tail call void @llvm.dbg.value(metadata double %150, metadata !115, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double %149, metadata !111, metadata !DIExpression()), !dbg !126
  %151 = fneg double %150, !dbg !278
  tail call void @llvm.dbg.value(metadata double %151, metadata !115, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #5, !dbg !279
  call void @gsl_matrix_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %118, i64 noundef %112, i64 noundef %114) #5, !dbg !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !dbg !279, !tbaa.struct !280, !DIAssignID !284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !284, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #5, !dbg !279
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #5, !dbg !285
  call void @gsl_matrix_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %116, i64 noundef %112, i64 noundef %114) #5, !dbg !285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !dbg !285, !tbaa.struct !280, !DIAssignID !286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !286, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #5, !dbg !285
  %152 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %149, double noundef %151) #5, !dbg !287
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5, !dbg !288
  %153 = sub i64 %20, %116, !dbg !289
  %154 = add i64 %153, 1, !dbg !290
  call void @gsl_matrix_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %1, i64 noundef %118, i64 noundef %118, i64 noundef %154) #5, !dbg !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !dbg !288, !tbaa.struct !280, !DIAssignID !291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !291, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5, !dbg !288
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #5, !dbg !292
  call void @gsl_matrix_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %1, i64 noundef %116, i64 noundef %118, i64 noundef %154) #5, !dbg !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !dbg !292, !tbaa.struct !280, !DIAssignID !293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !293, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #5, !dbg !292
  %155 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %149, double noundef %151) #5, !dbg !294
  br i1 %39, label %158, label %156, !dbg !295

156:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #5, !dbg !296
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %12, ptr noundef nonnull %2, i64 noundef %118) #5, !dbg !296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !dbg !296, !tbaa.struct !280, !DIAssignID !299
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !299, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #5, !dbg !296
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #5, !dbg !300
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %13, ptr noundef nonnull %2, i64 noundef %116) #5, !dbg !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !dbg !300, !tbaa.struct !280, !DIAssignID !301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !301, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #5, !dbg !300
  %157 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %149, double noundef %151) #5, !dbg !302
  br label %158, !dbg !303

158:                                              ; preds = %156, %148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !218, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !225, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !226, metadata !DIExpression()), !dbg !304
  %159 = load ptr, ptr %108, align 8, !dbg !306, !tbaa !178
  %160 = load i64, ptr %109, align 8, !dbg !307, !tbaa !179
  %161 = mul i64 %160, %116, !dbg !308
  %162 = getelementptr double, ptr %159, i64 %161, !dbg !309
  %163 = getelementptr double, ptr %162, i64 %116, !dbg !309
  %164 = load double, ptr %163, align 8, !dbg !309, !tbaa !194
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !218, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !225, metadata !DIExpression()), !dbg !310
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !226, metadata !DIExpression()), !dbg !310
  %165 = getelementptr double, ptr %162, i64 %118, !dbg !312
  %166 = load double, ptr %165, align 8, !dbg !312, !tbaa !194
  call void @llvm.dbg.value(metadata double poison, metadata !237, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata double %166, metadata !243, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata ptr undef, metadata !244, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata ptr undef, metadata !245, metadata !DIExpression()), !dbg !313
  %167 = fcmp oeq double %166, 0.000000e+00, !dbg !315
  br i1 %167, label %185, label %168, !dbg !316

168:                                              ; preds = %158
  %169 = fneg double %164, !dbg !317
  call void @llvm.dbg.value(metadata double %169, metadata !237, metadata !DIExpression()), !dbg !313
  %170 = call double @llvm.fabs.f64(double %166), !dbg !318
  %171 = call double @llvm.fabs.f64(double %169), !dbg !319
  %172 = fcmp ogt double %170, %171, !dbg !320
  br i1 %172, label %173, label %179, !dbg !321

173:                                              ; preds = %168
  %174 = fdiv double %164, %166, !dbg !322
  call void @llvm.dbg.value(metadata double %174, metadata !246, metadata !DIExpression()), !dbg !323
  %175 = fmul double %174, %174, !dbg !324
  %handler_result2 = call double @fAddHandlerDouble(double %175, double 1.000000e+00), !dbg !325
  %176 = call double @llvm.sqrt.f64(double %handler_result2), !dbg !325
  %177 = fdiv double 1.000000e+00, %176, !dbg !326
  call void @llvm.dbg.value(metadata double %177, metadata !250, metadata !DIExpression()), !dbg !323
  tail call void @llvm.dbg.value(metadata double %177, metadata !115, metadata !DIExpression()), !dbg !126
  %178 = fmul double %174, %177, !dbg !327
  tail call void @llvm.dbg.value(metadata double %178, metadata !111, metadata !DIExpression()), !dbg !126
  br label %185, !dbg !328

179:                                              ; preds = %168
  %180 = fdiv double %166, %164, !dbg !329
  call void @llvm.dbg.value(metadata double %180, metadata !251, metadata !DIExpression()), !dbg !330
  %181 = fmul double %180, %180, !dbg !331
  %handler_result3 = call double @fAddHandlerDouble(double %181, double 1.000000e+00), !dbg !332
  %182 = call double @llvm.sqrt.f64(double %handler_result3), !dbg !332
  %183 = fdiv double 1.000000e+00, %182, !dbg !333
  call void @llvm.dbg.value(metadata double %183, metadata !253, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %183, metadata !111, metadata !DIExpression()), !dbg !126
  %184 = fmul double %180, %183, !dbg !334
  tail call void @llvm.dbg.value(metadata double %184, metadata !115, metadata !DIExpression()), !dbg !126
  br label %185

185:                                              ; preds = %179, %173, %158
  %186 = phi double [ %178, %173 ], [ %183, %179 ], [ 1.000000e+00, %158 ], !dbg !335
  %187 = phi double [ %177, %173 ], [ %184, %179 ], [ 0.000000e+00, %158 ], !dbg !335
  tail call void @llvm.dbg.value(metadata double %187, metadata !115, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double %186, metadata !111, metadata !DIExpression()), !dbg !126
  %188 = fneg double %187, !dbg !336
  tail call void @llvm.dbg.value(metadata double %188, metadata !115, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #5, !dbg !337
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %14, ptr noundef nonnull %1, i64 noundef %118, i64 noundef 0, i64 noundef %117) #5, !dbg !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !dbg !337, !tbaa.struct !280, !DIAssignID !338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !338, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #5, !dbg !337
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #5, !dbg !339
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %15, ptr noundef nonnull %1, i64 noundef %116, i64 noundef 0, i64 noundef %117) #5, !dbg !339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !dbg !339, !tbaa.struct !280, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !340, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #5, !dbg !339
  %189 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %186, double noundef %188) #5, !dbg !341
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #5, !dbg !342
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %16, ptr noundef nonnull %0, i64 noundef %118) #5, !dbg !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !dbg !342, !tbaa.struct !280, !DIAssignID !343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !343, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #5, !dbg !342
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #5, !dbg !344
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %17, ptr noundef nonnull %0, i64 noundef %116) #5, !dbg !344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !dbg !344, !tbaa.struct !280, !DIAssignID !345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !345, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #5, !dbg !344
  %190 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %186, double noundef %188) #5, !dbg !346
  br i1 %100, label %193, label %191, !dbg !347

191:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #5, !dbg !348
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %18, ptr noundef nonnull %3, i64 noundef %118) #5, !dbg !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !dbg !348, !tbaa.struct !280, !DIAssignID !351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !118, metadata !DIExpression(), metadata !351, metadata ptr %6, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #5, !dbg !348
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %19) #5, !dbg !352
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %19, ptr noundef nonnull %3, i64 noundef %116) #5, !dbg !352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false), !dbg !352, !tbaa.struct !280, !DIAssignID !353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !124, metadata !DIExpression(), metadata !353, metadata ptr %7, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #5, !dbg !352
  %192 = call i32 @gsl_blas_drot(ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %186, double noundef %188) #5, !dbg !354
  br label %193, !dbg !355

193:                                              ; preds = %191, %185
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !116, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !126
  %194 = add i64 %116, -1, !dbg !356
  tail call void @llvm.dbg.value(metadata i64 %194, metadata !116, metadata !DIExpression()), !dbg !126
  %195 = icmp ult i64 %194, %113, !dbg !357
  br i1 %195, label %196, label %115, !dbg !211, !llvm.loop !358

196:                                              ; preds = %193
  %197 = add nuw i64 %112, 1, !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !117, metadata !DIExpression()), !dbg !126
  %198 = icmp eq i64 %112, %110, !dbg !361
  br i1 %198, label %199, label %111, !dbg !209, !llvm.loop !362

199:                                              ; preds = %196, %102
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !364
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !364
  br label %200

200:                                              ; preds = %199, %35, %31
  %201 = phi i32 [ 20, %31 ], [ 19, %35 ], [ 0, %199 ], !dbg !365
  ret i32 %201, !dbg !366
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !367 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !372 i32 @gsl_linalg_QR_decomp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !375 i32 @gsl_linalg_QR_QTmat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !380 i32 @gsl_linalg_QR_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !383 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

declare !dbg !386 void @gsl_matrix_subrow(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !389 i32 @gsl_blas_drot(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare !dbg !393 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !396 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hesstri.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "198d3550fb0cc59c1420b060e713e1fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 57)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, globals: !58, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!0, !7, !12}
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!66 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!67 = distinct !DISubprogram(name: "gsl_linalg_hesstri_decomp", scope: !2, file: !2, line: 55, type: !68, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !103)
!68 = !DISubroutineType(types: !69)
!69 = !{!21, !70, !70, !70, !70, !93}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !72, line: 50, baseType: !73)
!72 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 42, size: 384, elements: !74)
!74 = !{!75, !79, !80, !81, !84, !92}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !73, file: !72, line: 44, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !73, file: !72, line: 45, baseType: !76, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !73, file: !72, line: 46, baseType: !76, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !73, file: !72, line: 47, baseType: !82, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !73, file: !72, line: 48, baseType: !85, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !87, line: 44, baseType: !88)
!87 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !87, line: 38, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !88, file: !87, line: 40, baseType: !76, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !87, line: 41, baseType: !82, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !73, file: !72, line: 49, baseType: !21, size: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !95, line: 50, baseType: !96)
!95 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 42, size: 320, elements: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !96, file: !95, line: 44, baseType: !76, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !96, file: !95, line: 45, baseType: !76, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !96, file: !95, line: 46, baseType: !82, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !96, file: !95, line: 47, baseType: !85, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !96, file: !95, line: 48, baseType: !21, size: 32, offset: 256)
!103 = !{!104, !105, !106, !107, !108, !109, !111, !115, !116, !117, !118, !124}
!104 = !DILocalVariable(name: "A", arg: 1, scope: !67, file: !2, line: 55, type: !70)
!105 = !DILocalVariable(name: "B", arg: 2, scope: !67, file: !2, line: 55, type: !70)
!106 = !DILocalVariable(name: "U", arg: 3, scope: !67, file: !2, line: 55, type: !70)
!107 = !DILocalVariable(name: "V", arg: 4, scope: !67, file: !2, line: 56, type: !70)
!108 = !DILocalVariable(name: "work", arg: 5, scope: !67, file: !2, line: 56, type: !93)
!109 = !DILocalVariable(name: "N", scope: !67, file: !2, line: 58, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!111 = !DILocalVariable(name: "cs", scope: !112, file: !2, line: 72, type: !83)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 71, column: 5)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 65, column: 12)
!114 = distinct !DILexicalBlock(scope: !67, file: !2, line: 60, column: 7)
!115 = !DILocalVariable(name: "sn", scope: !112, file: !2, line: 72, type: !83)
!116 = !DILocalVariable(name: "i", scope: !112, file: !2, line: 73, type: !76)
!117 = !DILocalVariable(name: "j", scope: !112, file: !2, line: 73, type: !76)
!118 = !DILocalVariable(name: "xv", scope: !112, file: !2, line: 74, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !95, line: 57, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !95, line: 55, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 52, size: 320, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !121, file: !95, line: 54, baseType: !94, size: 320)
!124 = !DILocalVariable(name: "yv", scope: !112, file: !2, line: 74, type: !119)
!125 = distinct !DIAssignID()
!126 = !DILocation(line: 0, scope: !112)
!127 = distinct !DIAssignID()
!128 = !DILocation(line: 0, scope: !67)
!129 = !DILocation(line: 58, column: 23, scope: !67)
!130 = !{!131, !132, i64 0}
!131 = !{!"", !132, i64 0, !132, i64 8, !132, i64 16, !135, i64 24, !135, i64 32, !136, i64 40}
!132 = !{!"long", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !{!"any pointer", !133, i64 0}
!136 = !{!"int", !133, i64 0}
!137 = !DILocation(line: 60, column: 16, scope: !114)
!138 = !{!131, !132, i64 8}
!139 = !DILocation(line: 60, column: 10, scope: !114)
!140 = !DILocation(line: 60, column: 23, scope: !114)
!141 = !DILocation(line: 60, column: 35, scope: !114)
!142 = !DILocation(line: 60, column: 29, scope: !114)
!143 = !DILocation(line: 60, column: 42, scope: !114)
!144 = !DILocation(line: 60, column: 54, scope: !114)
!145 = !DILocation(line: 60, column: 48, scope: !114)
!146 = !DILocation(line: 60, column: 7, scope: !67)
!147 = !DILocation(line: 62, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 62, column: 7)
!149 = distinct !DILexicalBlock(scope: !114, file: !2, line: 61, column: 5)
!150 = !DILocation(line: 65, column: 23, scope: !113)
!151 = !{!152, !132, i64 0}
!152 = !{!"", !132, i64 0, !132, i64 8, !135, i64 16, !135, i64 24, !136, i64 32}
!153 = !DILocation(line: 65, column: 14, scope: !113)
!154 = !DILocation(line: 65, column: 12, scope: !114)
!155 = !DILocation(line: 67, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 67, column: 7)
!157 = distinct !DILexicalBlock(scope: !113, file: !2, line: 66, column: 5)
!158 = !DILocation(line: 74, column: 7, scope: !112)
!159 = !DILocation(line: 77, column: 7, scope: !112)
!160 = !DILocation(line: 80, column: 7, scope: !112)
!161 = !DILocation(line: 84, column: 11, scope: !162)
!162 = distinct !DILexicalBlock(scope: !112, file: !2, line: 84, column: 11)
!163 = !DILocation(line: 84, column: 11, scope: !112)
!164 = !DILocation(line: 91, column: 25, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 91, column: 11)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 91, column: 11)
!167 = distinct !DILexicalBlock(scope: !162, file: !2, line: 89, column: 9)
!168 = !DILocation(line: 91, column: 11, scope: !166)
!169 = !DILocation(line: 86, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !2, line: 85, column: 9)
!171 = !DILocation(line: 87, column: 9, scope: !170)
!172 = !DILocation(line: 93, column: 26, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 93, column: 15)
!174 = distinct !DILexicalBlock(scope: !165, file: !2, line: 92, column: 13)
!175 = !DILocation(line: 93, column: 33, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !2, line: 93, column: 15)
!177 = !DILocation(line: 93, column: 15, scope: !173)
!178 = !{!131, !135, i64 24}
!179 = !{!131, !132, i64 16}
!180 = !DILocalVariable(name: "m", arg: 1, scope: !181, file: !72, line: 290, type: !70)
!181 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !72, file: !72, line: 290, type: !182, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !70, !110, !110, !184}
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!185 = !{!180, !186, !187, !188}
!186 = !DILocalVariable(name: "i", arg: 2, scope: !181, file: !72, line: 290, type: !110)
!187 = !DILocalVariable(name: "j", arg: 3, scope: !181, file: !72, line: 290, type: !110)
!188 = !DILocalVariable(name: "x", arg: 4, scope: !181, file: !72, line: 290, type: !184)
!189 = !DILocation(line: 0, scope: !181, inlinedAt: !190)
!190 = distinct !DILocation(line: 94, column: 17, scope: !176)
!191 = !DILocation(line: 305, column: 13, scope: !181, inlinedAt: !190)
!192 = !DILocation(line: 305, column: 3, scope: !181, inlinedAt: !190)
!193 = !DILocation(line: 305, column: 27, scope: !181, inlinedAt: !190)
!194 = !{!195, !195, i64 0}
!195 = !{!"double", !133, i64 0}
!196 = !DILocation(line: 93, column: 38, scope: !176)
!197 = distinct !{!197, !177, !198, !199}
!198 = !DILocation(line: 94, column: 44, scope: !173)
!199 = !{!"llvm.loop.mustprogress"}
!200 = distinct !{!200, !168, !201, !199}
!201 = !DILocation(line: 95, column: 13, scope: !166)
!202 = !DILocation(line: 98, column: 11, scope: !203)
!203 = distinct !DILexicalBlock(scope: !112, file: !2, line: 98, column: 11)
!204 = !DILocation(line: 98, column: 11, scope: !112)
!205 = !DILocation(line: 99, column: 9, scope: !203)
!206 = !DILocation(line: 101, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !112, file: !2, line: 101, column: 11)
!208 = !DILocation(line: 101, column: 11, scope: !112)
!209 = !DILocation(line: 105, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !112, file: !2, line: 105, column: 7)
!211 = !DILocation(line: 107, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 107, column: 11)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 106, column: 9)
!214 = distinct !DILexicalBlock(scope: !210, file: !2, line: 105, column: 7)
!215 = !DILocation(line: 115, column: 53, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 108, column: 13)
!217 = distinct !DILexicalBlock(scope: !212, file: !2, line: 107, column: 11)
!218 = !DILocalVariable(name: "m", arg: 1, scope: !219, file: !72, line: 270, type: !222)
!219 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !72, file: !72, line: 270, type: !220, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !224)
!220 = !DISubroutineType(types: !221)
!221 = !{!83, !222, !110, !110}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!224 = !{!218, !225, !226}
!225 = !DILocalVariable(name: "i", arg: 2, scope: !219, file: !72, line: 270, type: !110)
!226 = !DILocalVariable(name: "j", arg: 3, scope: !219, file: !72, line: 270, type: !110)
!227 = !DILocation(line: 0, scope: !219, inlinedAt: !228)
!228 = distinct !DILocation(line: 115, column: 33, scope: !216)
!229 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !228)
!230 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !228)
!231 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !228)
!232 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !228)
!233 = !DILocation(line: 0, scope: !219, inlinedAt: !234)
!234 = distinct !DILocation(line: 116, column: 33, scope: !216)
!235 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !234)
!236 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !234)
!237 = !DILocalVariable(name: "a", arg: 1, scope: !238, file: !239, line: 740, type: !184)
!238 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !239, file: !239, line: 740, type: !240, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !242)
!239 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!240 = !DISubroutineType(types: !241)
!241 = !{null, !184, !184, !82, !82}
!242 = !{!237, !243, !244, !245, !246, !250, !251, !253}
!243 = !DILocalVariable(name: "b", arg: 2, scope: !238, file: !239, line: 740, type: !184)
!244 = !DILocalVariable(name: "c", arg: 3, scope: !238, file: !239, line: 740, type: !82)
!245 = !DILocalVariable(name: "s", arg: 4, scope: !238, file: !239, line: 740, type: !82)
!246 = !DILocalVariable(name: "t", scope: !247, file: !239, line: 749, type: !83)
!247 = distinct !DILexicalBlock(scope: !248, file: !239, line: 748, column: 5)
!248 = distinct !DILexicalBlock(scope: !249, file: !239, line: 747, column: 12)
!249 = distinct !DILexicalBlock(scope: !238, file: !239, line: 742, column: 7)
!250 = !DILocalVariable(name: "s1", scope: !247, file: !239, line: 750, type: !83)
!251 = !DILocalVariable(name: "t", scope: !252, file: !239, line: 756, type: !83)
!252 = distinct !DILexicalBlock(scope: !248, file: !239, line: 755, column: 5)
!253 = !DILocalVariable(name: "c1", scope: !252, file: !239, line: 757, type: !83)
!254 = !DILocation(line: 0, scope: !238, inlinedAt: !255)
!255 = distinct !DILocation(line: 115, column: 15, scope: !216)
!256 = !DILocation(line: 742, column: 9, scope: !249, inlinedAt: !255)
!257 = !DILocation(line: 742, column: 7, scope: !238, inlinedAt: !255)
!258 = !DILocation(line: 747, column: 12, scope: !248, inlinedAt: !255)
!259 = !DILocation(line: 747, column: 23, scope: !248, inlinedAt: !255)
!260 = !DILocation(line: 747, column: 21, scope: !248, inlinedAt: !255)
!261 = !DILocation(line: 747, column: 12, scope: !249, inlinedAt: !255)
!262 = !DILocation(line: 749, column: 18, scope: !247, inlinedAt: !255)
!263 = !DILocation(line: 749, column: 21, scope: !247, inlinedAt: !255)
!264 = !DILocation(line: 0, scope: !247, inlinedAt: !255)
!265 = !DILocation(line: 750, column: 37, scope: !247, inlinedAt: !255)
!266 = !DILocation(line: 750, column: 25, scope: !247, inlinedAt: !255)
!267 = !DILocation(line: 750, column: 23, scope: !247, inlinedAt: !255)
!268 = !DILocation(line: 752, column: 15, scope: !247, inlinedAt: !255)
!269 = !DILocation(line: 753, column: 5, scope: !247, inlinedAt: !255)
!270 = !DILocation(line: 756, column: 18, scope: !252, inlinedAt: !255)
!271 = !DILocation(line: 756, column: 21, scope: !252, inlinedAt: !255)
!272 = !DILocation(line: 0, scope: !252, inlinedAt: !255)
!273 = !DILocation(line: 757, column: 37, scope: !252, inlinedAt: !255)
!274 = !DILocation(line: 757, column: 25, scope: !252, inlinedAt: !255)
!275 = !DILocation(line: 757, column: 23, scope: !252, inlinedAt: !255)
!276 = !DILocation(line: 759, column: 15, scope: !252, inlinedAt: !255)
!277 = !DILocation(line: 0, scope: !249, inlinedAt: !255)
!278 = !DILocation(line: 120, column: 20, scope: !216)
!279 = !DILocation(line: 123, column: 20, scope: !216)
!280 = !{i64 0, i64 8, !281, i64 8, i64 8, !281, i64 16, i64 8, !282, i64 24, i64 8, !282, i64 32, i64 4, !283}
!281 = !{!132, !132, i64 0}
!282 = !{!135, !135, i64 0}
!283 = !{!136, !136, i64 0}
!284 = distinct !DIAssignID()
!285 = !DILocation(line: 124, column: 20, scope: !216)
!286 = distinct !DIAssignID()
!287 = !DILocation(line: 125, column: 15, scope: !216)
!288 = !DILocation(line: 128, column: 20, scope: !216)
!289 = !DILocation(line: 128, column: 57, scope: !216)
!290 = !DILocation(line: 128, column: 61, scope: !216)
!291 = distinct !DIAssignID()
!292 = !DILocation(line: 129, column: 20, scope: !216)
!293 = distinct !DIAssignID()
!294 = !DILocation(line: 130, column: 15, scope: !216)
!295 = !DILocation(line: 132, column: 19, scope: !216)
!296 = !DILocation(line: 135, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 133, column: 17)
!298 = distinct !DILexicalBlock(scope: !216, file: !2, line: 132, column: 19)
!299 = distinct !DIAssignID()
!300 = !DILocation(line: 136, column: 24, scope: !297)
!301 = distinct !DIAssignID()
!302 = !DILocation(line: 137, column: 19, scope: !297)
!303 = !DILocation(line: 138, column: 17, scope: !297)
!304 = !DILocation(line: 0, scope: !219, inlinedAt: !305)
!305 = distinct !DILocation(line: 142, column: 34, scope: !216)
!306 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !305)
!307 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !305)
!308 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !305)
!309 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !305)
!310 = !DILocation(line: 0, scope: !219, inlinedAt: !311)
!311 = distinct !DILocation(line: 143, column: 33, scope: !216)
!312 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !311)
!313 = !DILocation(line: 0, scope: !238, inlinedAt: !314)
!314 = distinct !DILocation(line: 142, column: 15, scope: !216)
!315 = !DILocation(line: 742, column: 9, scope: !249, inlinedAt: !314)
!316 = !DILocation(line: 742, column: 7, scope: !238, inlinedAt: !314)
!317 = !DILocation(line: 142, column: 33, scope: !216)
!318 = !DILocation(line: 747, column: 12, scope: !248, inlinedAt: !314)
!319 = !DILocation(line: 747, column: 23, scope: !248, inlinedAt: !314)
!320 = !DILocation(line: 747, column: 21, scope: !248, inlinedAt: !314)
!321 = !DILocation(line: 747, column: 12, scope: !249, inlinedAt: !314)
!322 = !DILocation(line: 749, column: 21, scope: !247, inlinedAt: !314)
!323 = !DILocation(line: 0, scope: !247, inlinedAt: !314)
!324 = !DILocation(line: 750, column: 37, scope: !247, inlinedAt: !314)
!325 = !DILocation(line: 750, column: 25, scope: !247, inlinedAt: !314)
!326 = !DILocation(line: 750, column: 23, scope: !247, inlinedAt: !314)
!327 = !DILocation(line: 752, column: 15, scope: !247, inlinedAt: !314)
!328 = !DILocation(line: 753, column: 5, scope: !247, inlinedAt: !314)
!329 = !DILocation(line: 756, column: 21, scope: !252, inlinedAt: !314)
!330 = !DILocation(line: 0, scope: !252, inlinedAt: !314)
!331 = !DILocation(line: 757, column: 37, scope: !252, inlinedAt: !314)
!332 = !DILocation(line: 757, column: 25, scope: !252, inlinedAt: !314)
!333 = !DILocation(line: 757, column: 23, scope: !252, inlinedAt: !314)
!334 = !DILocation(line: 759, column: 15, scope: !252, inlinedAt: !314)
!335 = !DILocation(line: 0, scope: !249, inlinedAt: !314)
!336 = !DILocation(line: 147, column: 20, scope: !216)
!337 = !DILocation(line: 150, column: 20, scope: !216)
!338 = distinct !DIAssignID()
!339 = !DILocation(line: 151, column: 20, scope: !216)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 152, column: 15, scope: !216)
!342 = !DILocation(line: 155, column: 20, scope: !216)
!343 = distinct !DIAssignID()
!344 = !DILocation(line: 156, column: 20, scope: !216)
!345 = distinct !DIAssignID()
!346 = !DILocation(line: 157, column: 15, scope: !216)
!347 = !DILocation(line: 159, column: 19, scope: !216)
!348 = !DILocation(line: 162, column: 24, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 160, column: 17)
!350 = distinct !DILexicalBlock(scope: !216, file: !2, line: 159, column: 19)
!351 = distinct !DIAssignID()
!352 = !DILocation(line: 163, column: 24, scope: !349)
!353 = distinct !DIAssignID()
!354 = !DILocation(line: 164, column: 19, scope: !349)
!355 = !DILocation(line: 165, column: 17, scope: !349)
!356 = !DILocation(line: 107, scope: !212)
!357 = !DILocation(line: 107, column: 29, scope: !217)
!358 = distinct !{!358, !211, !359, !199}
!359 = !DILocation(line: 166, column: 13, scope: !212)
!360 = !DILocation(line: 105, column: 30, scope: !214)
!361 = !DILocation(line: 105, column: 21, scope: !214)
!362 = distinct !{!362, !209, !363, !199}
!363 = !DILocation(line: 167, column: 9, scope: !210)
!364 = !DILocation(line: 170, column: 5, scope: !113)
!365 = !DILocation(line: 0, scope: !114)
!366 = !DILocation(line: 171, column: 1, scope: !67)
!367 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370, !370, !21, !21}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!372 = !DISubprogram(name: "gsl_linalg_QR_decomp", scope: !239, file: !239, line: 238, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!21, !70, !93}
!375 = !DISubprogram(name: "gsl_linalg_QR_QTmat", scope: !239, file: !239, line: 282, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!21, !222, !378, !70}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!380 = !DISubprogram(name: "gsl_linalg_QR_unpack", scope: !239, file: !239, line: 290, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubroutineType(types: !382)
!382 = !{!21, !222, !378, !70, !70}
!383 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !72, file: !72, line: 209, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !70}
!386 = !DISubprogram(name: "gsl_matrix_subrow", scope: !72, file: !72, line: 121, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!120, !70, !110, !110, !110}
!389 = !DISubprogram(name: "gsl_blas_drot", scope: !390, file: !390, line: 163, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!391 = !DISubroutineType(types: !392)
!392 = !{!21, !93, !93, !184, !184}
!393 = !DISubprogram(name: "gsl_matrix_column", scope: !72, file: !72, line: 109, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{!120, !70, !110}
!396 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !72, file: !72, line: 125, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
