; ModuleID = 'bessel_Yn.ll'
source_filename = "bessel_Yn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Yn.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Yn_e(n, x, &result)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !75 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !118
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !109, metadata !DIExpression(), metadata !120, metadata ptr %7, metadata !DIExpression()), !dbg !121
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !122, metadata ptr %8, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !87, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata double %1, metadata !88, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !89, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 1, metadata !90, metadata !DIExpression()), !dbg !123
  %9 = icmp slt i32 %0, 0, !dbg !124
  br i1 %9, label %10, label %15, !dbg !126

10:                                               ; preds = %3
  %11 = sub nsw i32 0, %0, !dbg !127
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !87, metadata !DIExpression()), !dbg !123
  %12 = and i32 %11, 1, !dbg !129
  %13 = icmp eq i32 %12, 0, !dbg !129
  br i1 %13, label %15, label %14, !dbg !131

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !90, metadata !DIExpression()), !dbg !123
  br label %15, !dbg !132

15:                                               ; preds = %14, %10, %3
  %16 = phi double [ -1.000000e+00, %14 ], [ 1.000000e+00, %10 ], [ 1.000000e+00, %3 ], !dbg !123
  %17 = phi i32 [ %11, %14 ], [ %11, %10 ], [ %0, %3 ]
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !87, metadata !DIExpression()), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !90, metadata !DIExpression()), !dbg !123
  switch i32 %17, label %26 [
    i32 0, label %18
    i32 1, label %22
  ], !dbg !133

18:                                               ; preds = %15
  %19 = tail call i32 @gsl_sf_bessel_Y0_e(double noundef %1, ptr noundef %2) #6, !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !91, metadata !DIExpression()), !dbg !135
  %20 = load double, ptr %2, align 8, !dbg !136, !tbaa !137
  %21 = fmul double %16, %20, !dbg !136
  store double %21, ptr %2, align 8, !dbg !136, !tbaa !137
  br label %225

22:                                               ; preds = %15
  %23 = tail call i32 @gsl_sf_bessel_Y1_e(double noundef %1, ptr noundef %2) #6, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !94, metadata !DIExpression()), !dbg !143
  %24 = load double, ptr %2, align 8, !dbg !144, !tbaa !137
  %25 = fmul double %16, %24, !dbg !144
  store double %25, ptr %2, align 8, !dbg !144, !tbaa !137
  br label %225

26:                                               ; preds = %15
  %27 = fcmp ugt double %1, 0.000000e+00, !dbg !145
  br i1 %27, label %30, label %28, !dbg !147

28:                                               ; preds = %26
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !148, !tbaa !137
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !148
  store double 0x7FF8000000000000, ptr %29, align 8, !dbg !148, !tbaa !151
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 1) #6, !dbg !152
  br label %225, !dbg !152

30:                                               ; preds = %26
  %31 = fcmp olt double %1, 5.000000e+00, !dbg !154
  br i1 %31, label %32, label %138, !dbg !155

32:                                               ; preds = %30
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(), metadata !117, metadata ptr %4, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.assign(metadata i1 undef, metadata !178, metadata !DIExpression(), metadata !118, metadata ptr %5, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !179, metadata !DIExpression(), metadata !119, metadata ptr %6, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %17, metadata !162, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %1, metadata !163, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata ptr %2, metadata !164, metadata !DIExpression()), !dbg !184
  %33 = fmul double %1, 2.500000e-01, !dbg !187
  %34 = fmul double %33, %1, !dbg !188
  call void @llvm.dbg.value(metadata double %34, metadata !166, metadata !DIExpression()), !dbg !184
  %35 = fmul double %1, 5.000000e-01, !dbg !189
  %handler_result22 = call double @callHandler(i32 12, double %35, double %35), !dbg !190
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !167, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !190
  %36 = add nsw i32 %17, -1, !dbg !191
  %37 = call i32 @gsl_sf_lnfact_e(i32 noundef %36, ptr noundef nonnull %4) #6, !dbg !192
  %38 = sub nsw i32 0, %17, !dbg !193
  %39 = sitofp i32 %38 to double, !dbg !193
  %40 = fmul double %handler_result22, %39, !dbg !194
  %41 = load double, ptr %4, align 8, !dbg !195, !tbaa !137
  %handler_result = call double @fAddHandlerDouble(double %40, double %41), !dbg !196
  call void @llvm.dbg.value(metadata double %handler_result, metadata !171, metadata !DIExpression()), !dbg !184
  %42 = fcmp ogt double %handler_result, 0x40861642FEFA39EF, !dbg !196
  br i1 %42, label %49, label %43, !dbg !198

43:                                               ; preds = %32
  %44 = add i32 %17, -1, !dbg !199
  %45 = and i32 %44, 1, !dbg !199
  %46 = icmp eq i32 %17, 2, !dbg !199
  br i1 %46, label %70, label %47, !dbg !199

47:                                               ; preds = %43
  %48 = and i32 %44, -2, !dbg !199
  br label %51, !dbg !199

49:                                               ; preds = %32
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 51, i32 noundef 16) #6, !dbg !201
  %50 = load double, ptr %2, align 8, !dbg !203, !tbaa !137
  br label %134, !dbg !201

51:                                               ; preds = %51, %47
  %52 = phi i32 [ 1, %47 ], [ %67, %51 ]
  %53 = phi double [ 1.000000e+00, %47 ], [ %66, %51 ]
  %54 = phi double [ 1.000000e+00, %47 ], [ %handler_result2, %51 ]
  %55 = phi i32 [ 0, %47 ], [ %68, %51 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %53, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %54, metadata !170, metadata !DIExpression()), !dbg !184
  %56 = sub nsw i32 %17, %52, !dbg !204
  %57 = mul nsw i32 %56, %52, !dbg !207
  %58 = sitofp i32 %57 to double, !dbg !208
  %59 = fdiv double %34, %58, !dbg !209
  %60 = fmul double %53, %59, !dbg !210
  call void @llvm.dbg.value(metadata double %60, metadata !168, metadata !DIExpression()), !dbg !184
  %handler_result1 = call double @fAddHandlerDouble(double %54, double %60), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !170, metadata !DIExpression()), !dbg !184
  %61 = add nuw nsw i32 %52, 1, !dbg !211
  call void @llvm.dbg.value(metadata i32 %61, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %61, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %60, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !170, metadata !DIExpression()), !dbg !184
  %62 = sub nsw i32 %17, %61, !dbg !204
  %63 = mul nsw i32 %62, %61, !dbg !207
  %64 = sitofp i32 %63 to double, !dbg !208
  %65 = fdiv double %34, %64, !dbg !209
  %66 = fmul double %60, %65, !dbg !210
  call void @llvm.dbg.value(metadata double %66, metadata !168, metadata !DIExpression()), !dbg !184
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %66), !dbg !211
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !170, metadata !DIExpression()), !dbg !184
  %67 = add nuw nsw i32 %52, 2, !dbg !211
  call void @llvm.dbg.value(metadata i32 %67, metadata !165, metadata !DIExpression()), !dbg !184
  %68 = add i32 %55, 2, !dbg !199
  %69 = icmp eq i32 %68, %48, !dbg !199
  br i1 %69, label %70, label %51, !dbg !199, !llvm.loop !212

70:                                               ; preds = %51, %43
  %71 = phi double [ undef, %43 ], [ %handler_result2, %51 ]
  %72 = phi i32 [ 1, %43 ], [ %67, %51 ]
  %73 = phi double [ 1.000000e+00, %43 ], [ %66, %51 ]
  %74 = phi double [ 1.000000e+00, %43 ], [ %handler_result2, %51 ]
  %75 = icmp eq i32 %45, 0, !dbg !199
  br i1 %75, label %82, label %76, !dbg !199

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 %72, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %73, metadata !168, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %74, metadata !170, metadata !DIExpression()), !dbg !184
  %77 = sub nsw i32 %17, %72, !dbg !204
  %78 = mul nsw i32 %77, %72, !dbg !207
  %79 = sitofp i32 %78 to double, !dbg !208
  %80 = fdiv double %34, %79, !dbg !209
  %81 = fmul double %73, %80, !dbg !210
  call void @llvm.dbg.value(metadata double %81, metadata !168, metadata !DIExpression()), !dbg !184
  %handler_result3 = call double @fAddHandlerDouble(double %74, double %81), !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !170, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %72, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !184
  br label %82, !dbg !215

82:                                               ; preds = %76, %70
  %83 = phi double [ %71, %70 ], [ %handler_result3, %76 ], !dbg !216
  %84 = call double @exp(double noundef %handler_result) #6, !dbg !215
  %85 = fneg double %84, !dbg !217
  %86 = fmul double %83, %85, !dbg !218
  %87 = fdiv double %86, 0x400921FB54442D18, !dbg !219
  call void @llvm.dbg.value(metadata double %87, metadata !169, metadata !DIExpression()), !dbg !184
  %88 = sitofp i32 %17 to double, !dbg !220
  %89 = fmul double %handler_result22, %88, !dbg !221
  %90 = call double @exp(double noundef %89) #6, !dbg !222
  %91 = fdiv double %90, 0xC00921FB54442D18, !dbg !223
  call void @llvm.dbg.value(metadata double %91, metadata !174, metadata !DIExpression()), !dbg !184
  %92 = fcmp ueq double %91, 0.000000e+00, !dbg !224
  br i1 %92, label %125, label %93, !dbg !225

93:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 20, metadata !175, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !226
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !227
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !182, metadata !DIExpression()), !dbg !186
  %94 = call i32 @gsl_sf_psi_int_e(i32 noundef %17, ptr noundef nonnull %5) #6, !dbg !228
  %95 = call i32 @gsl_sf_fact_e(i32 noundef %17, ptr noundef nonnull %6) #6, !dbg !229
  %96 = load double, ptr %5, align 8, !dbg !230, !tbaa !137
  %97 = fdiv double 1.000000e+00, %88, !dbg !231
  %handler_result4 = call double @fAddHandlerDouble(double %97, double %96), !dbg !232
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !183, metadata !DIExpression()), !dbg !186
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBFE2788CFC6FB619), !dbg !233
  %98 = fmul double %handler_result22, 2.000000e+00, !dbg !233
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %98), !dbg !234
  %99 = load double, ptr %6, align 8, !dbg !234, !tbaa !137
  %100 = fdiv double %handler_result6, %99, !dbg !235
  call void @llvm.dbg.value(metadata double %100, metadata !173, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 1, metadata !165, metadata !DIExpression()), !dbg !184
  %101 = fneg double %34
  br label %102, !dbg !236

102:                                              ; preds = %102, %93
  %103 = phi double [ %handler_result4, %93 ], [ %handler_result8, %102 ]
  %104 = phi double [ 0xBFE2788CFC6FB619, %93 ], [ %handler_result7, %102 ]
  %105 = phi double [ 1.000000e+00, %93 ], [ %115, %102 ]
  %106 = phi double [ 1.000000e+00, %93 ], [ %117, %102 ]
  %107 = phi i32 [ 1, %93 ], [ %121, %102 ]
  %108 = phi double [ %100, %93 ], [ %handler_result11, %102 ]
  %109 = phi double [ %99, %93 ], [ %116, %102 ]
  call void @llvm.dbg.value(metadata double %103, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %104, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %105, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double %106, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %107, metadata !165, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double %108, metadata !173, metadata !DIExpression()), !dbg !184
  %110 = sitofp i32 %107 to double, !dbg !238
  %111 = fdiv double 1.000000e+00, %110, !dbg !241
  %handler_result7 = call double @fAddHandlerDouble(double %104, double %111), !dbg !242
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !182, metadata !DIExpression()), !dbg !186
  %112 = add nsw i32 %107, %17, !dbg !242
  %113 = sitofp i32 %112 to double, !dbg !243
  %114 = fdiv double 1.000000e+00, %113, !dbg !244
  %handler_result8 = call double @fAddHandlerDouble(double %103, double %114), !dbg !245
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !183, metadata !DIExpression()), !dbg !186
  %115 = fmul double %105, %110, !dbg !245
  call void @llvm.dbg.value(metadata double %115, metadata !181, metadata !DIExpression()), !dbg !186
  %116 = fmul double %109, %113, !dbg !246
  call void @llvm.dbg.assign(metadata double %116, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !247, metadata ptr %6, metadata !DIExpression()), !dbg !186
  %117 = fmul double %106, %101, !dbg !248
  call void @llvm.dbg.value(metadata double %117, metadata !180, metadata !DIExpression()), !dbg !186
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result8), !dbg !249
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %98), !dbg !250
  %118 = fmul double %117, %handler_result10, !dbg !250
  %119 = fmul double %115, %116, !dbg !251
  %120 = fdiv double %118, %119, !dbg !252
  call void @llvm.dbg.value(metadata double %120, metadata !168, metadata !DIExpression()), !dbg !184
  %handler_result11 = call double @fAddHandlerDouble(double %108, double %120), !dbg !253
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !173, metadata !DIExpression()), !dbg !184
  %121 = add nuw nsw i32 %107, 1, !dbg !253
  call void @llvm.dbg.value(metadata i32 %121, metadata !165, metadata !DIExpression()), !dbg !184
  %122 = icmp eq i32 %121, 20, !dbg !254
  br i1 %122, label %123, label %102, !dbg !236, !llvm.loop !255

123:                                              ; preds = %102
  %124 = fmul double %91, %handler_result11, !dbg !257
  call void @llvm.dbg.value(metadata double %124, metadata !172, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !258
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !258
  br label %125, !dbg !259

125:                                              ; preds = %123, %82
  %126 = phi double [ %124, %123 ], [ 0.000000e+00, %82 ], !dbg !260
  call void @llvm.dbg.value(metadata double %126, metadata !172, metadata !DIExpression()), !dbg !184
  %handler_result12 = call double @fAddHandlerDouble(double %87, double %126), !dbg !261
  %127 = fmul double %handler_result, %87, !dbg !261
  %128 = call double @llvm.fabs.f64(double %127), !dbg !261
  %129 = call double @llvm.fabs.f64(double %126), !dbg !262
  %handler_result13 = call double @fAddHandlerDouble(double %128, double %129), !dbg !263
  %130 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !263
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !264
  %132 = call double @llvm.fabs.f64(double %handler_result12), !dbg !265
  %133 = fmul double %132, 0x3CC0000000000000, !dbg !266
  %handler_result14 = call double @fAddHandlerDouble(double %130, double %133), !dbg !267
  store double %handler_result14, ptr %131, align 8, !dbg !267, !tbaa !151
  br label %134, !dbg !268

134:                                              ; preds = %125, %49
  %135 = phi double [ %50, %49 ], [ %handler_result12, %125 ], !dbg !203
  %136 = phi i32 [ 16, %49 ], [ 0, %125 ], !dbg !184
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !97, metadata !DIExpression()), !dbg !270
  %137 = fmul double %16, %135, !dbg !203
  store double %137, ptr %2, align 8, !dbg !203, !tbaa !137
  br label %225

138:                                              ; preds = %30
  %139 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !271
  %140 = mul nsw i32 %17, %17, !dbg !272
  %141 = add nuw nsw i32 %140, 1, !dbg !273
  %142 = sitofp i32 %141 to double, !dbg !273
  %143 = fcmp ogt double %139, %142, !dbg !274
  br i1 %143, label %144, label %149, !dbg !275

144:                                              ; preds = %138
  %145 = sitofp i32 %17 to double, !dbg !276
  %146 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %145, double noundef %1, ptr noundef %2) #6, !dbg !277
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !101, metadata !DIExpression()), !dbg !278
  %147 = load double, ptr %2, align 8, !dbg !279, !tbaa !137
  %148 = fmul double %16, %147, !dbg !279
  store double %148, ptr %2, align 8, !dbg !279, !tbaa !137
  br label %225

149:                                              ; preds = %138
  %150 = icmp ugt i32 %17, 50, !dbg !280
  br i1 %150, label %151, label %156, !dbg !281

151:                                              ; preds = %149
  %152 = sitofp i32 %17 to double, !dbg !282
  %153 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %152, double noundef %1, ptr noundef %2) #6, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !104, metadata !DIExpression()), !dbg !284
  %154 = load double, ptr %2, align 8, !dbg !285, !tbaa !137
  %155 = fmul double %16, %154, !dbg !285
  store double %155, ptr %2, align 8, !dbg !285, !tbaa !137
  br label %225

156:                                              ; preds = %149
  %157 = fdiv double 2.000000e+00, %1, !dbg !286
  tail call void @llvm.dbg.value(metadata double %157, metadata !107, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !287
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !288
  %158 = call i32 @gsl_sf_bessel_Y1_e(double noundef %1, ptr noundef nonnull %7) #6, !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %158, metadata !111, metadata !DIExpression()), !dbg !121
  %159 = call i32 @gsl_sf_bessel_Y0_e(double noundef %1, ptr noundef nonnull %8) #6, !dbg !290
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !112, metadata !DIExpression()), !dbg !121
  %160 = load double, ptr %8, align 8, !dbg !291, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %160, metadata !113, metadata !DIExpression()), !dbg !121
  %161 = load double, ptr %7, align 8, !dbg !292, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %161, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 1, metadata !116, metadata !DIExpression()), !dbg !121
  %162 = add nsw i32 %17, -1, !dbg !293
  %163 = add nsw i32 %17, -2, !dbg !293
  %164 = and i32 %162, 3, !dbg !293
  %165 = icmp ult i32 %163, 3, !dbg !293
  br i1 %165, label %191, label %166, !dbg !293

166:                                              ; preds = %156
  %167 = and i32 %162, -4, !dbg !293
  br label %168, !dbg !293

168:                                              ; preds = %168, %166
  %169 = phi i32 [ 1, %166 ], [ %188, %168 ]
  %170 = phi double [ %161, %166 ], [ %handler_result18, %168 ]
  %171 = phi double [ %160, %166 ], [ %handler_result17, %168 ]
  %172 = phi i32 [ 0, %166 ], [ %189, %168 ]
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %170, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %171, metadata !113, metadata !DIExpression()), !dbg !121
  %173 = sitofp i32 %169 to double, !dbg !295
  %174 = fmul double %157, %173, !dbg !298
  %175 = fmul double %170, %174, !dbg !299
  %handler_result15 = call double @fSubHandlerDouble(double %175, double %171), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %170, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !114, metadata !DIExpression()), !dbg !121
  %176 = add nuw nsw i32 %169, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %170, metadata !113, metadata !DIExpression()), !dbg !121
  %177 = sitofp i32 %176 to double, !dbg !295
  %178 = fmul double %157, %177, !dbg !298
  %179 = fmul double %handler_result15, %178, !dbg !299
  %handler_result16 = call double @fSubHandlerDouble(double %179, double %170), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !114, metadata !DIExpression()), !dbg !121
  %180 = add nuw nsw i32 %169, 2, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !113, metadata !DIExpression()), !dbg !121
  %181 = sitofp i32 %180 to double, !dbg !295
  %182 = fmul double %157, %181, !dbg !298
  %183 = fmul double %handler_result16, %182, !dbg !299
  %handler_result17 = call double @fSubHandlerDouble(double %183, double %handler_result15), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !114, metadata !DIExpression()), !dbg !121
  %184 = add nuw nsw i32 %169, 3, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !113, metadata !DIExpression()), !dbg !121
  %185 = sitofp i32 %184 to double, !dbg !295
  %186 = fmul double %157, %185, !dbg !298
  %187 = fmul double %handler_result17, %186, !dbg !299
  %handler_result18 = call double @fSubHandlerDouble(double %187, double %handler_result16), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !114, metadata !DIExpression()), !dbg !121
  %188 = add nuw nsw i32 %169, 4, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %188, metadata !116, metadata !DIExpression()), !dbg !121
  %189 = add i32 %172, 4, !dbg !293
  %190 = icmp eq i32 %189, %167, !dbg !293
  br i1 %190, label %191, label %168, !dbg !293, !llvm.loop !301

191:                                              ; preds = %168, %156
  %192 = phi double [ undef, %156 ], [ %handler_result18, %168 ]
  %193 = phi i32 [ 1, %156 ], [ %188, %168 ]
  %194 = phi double [ %161, %156 ], [ %handler_result18, %168 ]
  %195 = phi double [ %160, %156 ], [ %handler_result17, %168 ]
  %196 = icmp eq i32 %164, 0, !dbg !293
  br i1 %196, label %208, label %197, !dbg !293

197:                                              ; preds = %197, %191
  %198 = phi i32 [ %205, %197 ], [ %193, %191 ]
  %199 = phi double [ %handler_result19, %197 ], [ %194, %191 ]
  %200 = phi double [ %199, %197 ], [ %195, %191 ]
  %201 = phi i32 [ %206, %197 ], [ 0, %191 ]
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !116, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %199, metadata !114, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %200, metadata !113, metadata !DIExpression()), !dbg !121
  %202 = sitofp i32 %198 to double, !dbg !295
  %203 = fmul double %157, %202, !dbg !298
  %204 = fmul double %199, %203, !dbg !299
  %handler_result19 = call double @fSubHandlerDouble(double %204, double %200), !dbg !300
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !115, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %199, metadata !113, metadata !DIExpression()), !dbg !121
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !114, metadata !DIExpression()), !dbg !121
  %205 = add nuw nsw i32 %198, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %205, metadata !116, metadata !DIExpression()), !dbg !121
  %206 = add i32 %201, 1, !dbg !293
  %207 = icmp eq i32 %206, %164, !dbg !293
  br i1 %207, label %208, label %197, !dbg !293, !llvm.loop !303

208:                                              ; preds = %197, %191
  %209 = phi double [ %192, %191 ], [ %handler_result19, %197 ], !dbg !305
  %210 = fmul double %16, %209, !dbg !306
  store double %210, ptr %2, align 8, !dbg !307, !tbaa !137
  %211 = call double @llvm.fabs.f64(double %210), !dbg !308
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !309
  %213 = load double, ptr %212, align 8, !dbg !309, !tbaa !151
  %214 = fdiv double %213, %161, !dbg !310
  %215 = call double @llvm.fabs.f64(double %214), !dbg !311
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !312
  %217 = load double, ptr %216, align 8, !dbg !312, !tbaa !151
  %218 = fdiv double %217, %160, !dbg !313
  %219 = call double @llvm.fabs.f64(double %218), !dbg !314
  %handler_result20 = call double @fAddHandlerDouble(double %215, double %219), !dbg !315
  %220 = fmul double %211, %handler_result20, !dbg !315
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !316
  %222 = fmul double %211, 0x3CC0000000000000, !dbg !317
  %handler_result21 = call double @fAddHandlerDouble(double %222, double %220), !dbg !318
  store double %handler_result21, ptr %221, align 8, !dbg !318, !tbaa !151
  %223 = icmp eq i32 %158, 0, !dbg !319
  %224 = select i1 %223, i32 %159, i32 %158, !dbg !319
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !320
  br label %225

225:                                              ; preds = %208, %151, %144, %134, %28, %22, %18
  %226 = phi i32 [ %19, %18 ], [ %23, %22 ], [ 1, %28 ], [ %136, %134 ], [ %146, %144 ], [ %153, %151 ], [ %224, %208 ], !dbg !321
  ret i32 %226, !dbg !322
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !323 i32 @gsl_sf_bessel_Y0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !327 i32 @gsl_sf_bessel_Y1_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !328 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !333 i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !337 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Yn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !341 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  call void @llvm.dbg.assign(metadata i1 undef, metadata !353, metadata !DIExpression(), metadata !363, metadata ptr %5, metadata !DIExpression()), !dbg !364
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !365
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !365, metadata ptr %6, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !346, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !347, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata double %2, metadata !348, metadata !DIExpression()), !dbg !366
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !349, metadata !DIExpression()), !dbg !366
  %7 = icmp slt i32 %0, 0, !dbg !367
  br i1 %7, label %12, label %8, !dbg !368

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, %0, !dbg !369
  %10 = fcmp ole double %2, 0.000000e+00
  %11 = or i1 %9, %10, !dbg !370
  br i1 %11, label %12, label %20, !dbg !370

12:                                               ; preds = %8, %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !350, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata i32 0, metadata !350, metadata !DIExpression()), !dbg !371
  %13 = icmp slt i32 %1, %0, !dbg !372
  br i1 %13, label %19, label %14, !dbg !375

14:                                               ; preds = %12
  %15 = add i32 %1, 1, !dbg !375
  %16 = sub i32 %15, %0, !dbg !375
  %17 = zext i32 %16 to i64, !dbg !375
  %18 = shl nuw nsw i64 %17, 3, !dbg !375
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %18, i1 false), !dbg !376, !tbaa !377
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !350, metadata !DIExpression()), !dbg !371
  br label %19, !dbg !378

19:                                               ; preds = %14, %12
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef 1) #6, !dbg !378
  br label %53

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !380
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !381
  %21 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %5), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !356, metadata !DIExpression()), !dbg !364
  %22 = add nuw nsw i32 %0, 1, !dbg !383
  %23 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %22, double noundef %2, ptr noundef nonnull %6), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !357, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double poison, metadata !359, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double poison, metadata !360, metadata !DIExpression()), !dbg !364
  %24 = icmp eq i32 %21, 0, !dbg !385
  %25 = select i1 %24, i32 %23, i32 %21, !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !362, metadata !DIExpression()), !dbg !364
  %26 = icmp eq i32 %25, 0, !dbg !386
  br i1 %26, label %32, label %27, !dbg !388

27:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !361, metadata !DIExpression()), !dbg !364
  %28 = sub nsw i32 %1, %0, !dbg !389
  %29 = zext i32 %28 to i64, !dbg !389
  %30 = shl nuw nsw i64 %29, 3, !dbg !389
  %31 = add nuw nsw i64 %30, 8, !dbg !389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, i8 0, i64 %31, i1 false), !dbg !392, !tbaa !377
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !361, metadata !DIExpression()), !dbg !364
  br label %52, !dbg !395

32:                                               ; preds = %20
  %33 = load double, ptr %5, align 8, !dbg !396, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %33, metadata !360, metadata !DIExpression()), !dbg !364
  %34 = load double, ptr %6, align 8, !dbg !397, !tbaa !137
  tail call void @llvm.dbg.value(metadata double %34, metadata !359, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !361, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %33, metadata !360, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %34, metadata !359, metadata !DIExpression()), !dbg !364
  %35 = xor i32 %0, -1
  %36 = zext nneg i32 %22 to i64, !dbg !398
  %37 = sext i32 %35 to i64, !dbg !398
  %38 = zext nneg i32 %1 to i64, !dbg !398
  %39 = getelementptr double, ptr %3, i64 %37, !dbg !398
  br label %40, !dbg !398

40:                                               ; preds = %40, %32
  %41 = phi i64 [ %36, %32 ], [ %50, %40 ]
  %42 = phi double [ %33, %32 ], [ %43, %40 ]
  %43 = phi double [ %34, %32 ], [ %handler_result, %40 ]
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !361, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %42, metadata !360, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %43, metadata !359, metadata !DIExpression()), !dbg !364
  %44 = getelementptr double, ptr %39, i64 %41, !dbg !401
  store double %42, ptr %44, align 8, !dbg !404, !tbaa !377
  %45 = trunc i64 %41 to i32, !dbg !405
  %46 = sitofp i32 %45 to double, !dbg !405
  %47 = fmul double %46, 2.000000e+00, !dbg !406
  %48 = fdiv double %47, %2, !dbg !407
  %49 = fmul double %43, %48, !dbg !408
  %handler_result = call double @fSubHandlerDouble(double %49, double %42), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !358, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %43, metadata !360, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !359, metadata !DIExpression()), !dbg !364
  %50 = add nuw nsw i64 %41, 1, !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !361, metadata !DIExpression()), !dbg !364
  %51 = icmp ugt i64 %41, %38, !dbg !410
  br i1 %51, label %52, label %40, !dbg !398, !llvm.loop !411

52:                                               ; preds = %40, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !395
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !395
  br label %53

53:                                               ; preds = %52, %19
  %54 = phi i32 [ 1, %19 ], [ %25, %52 ], !dbg !413
  ret i32 %54, !dbg !414
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Yn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !415 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !421, metadata !DIExpression(), metadata !423, metadata ptr %3, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !419, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %1, metadata !420, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !425
  %4 = call i32 @gsl_sf_bessel_Yn_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !422, metadata !DIExpression()), !dbg !424
  %5 = icmp eq i32 %4, 0, !dbg !426
  br i1 %5, label %7, label %6, !dbg !425

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef %4) #6, !dbg !428
  br label %7, !dbg !428

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !425, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !431
  ret double %8, !dbg !431
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !432 double @log(double noundef) local_unnamed_addr #4

declare !dbg !436 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !441 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !442 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !446 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Yn.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "fe67e651099499d9b80387dde9c8ee6d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 34)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !63, globals: !66, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!64, !65}
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!0, !7, !12, !17}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!74 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!75 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_e", scope: !2, file: !2, line: 101, type: !76, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !86)
!76 = !DISubroutineType(types: !77)
!77 = !{!26, !26, !78, !79}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !81, line: 41, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !81, line: 37, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !81, line: 38, baseType: !64, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !82, file: !81, line: 39, baseType: !64, size: 64, offset: 64)
!86 = !{!87, !88, !89, !90, !91, !94, !97, !101, !104, !107, !109, !110, !111, !112, !113, !114, !115, !116}
!87 = !DILocalVariable(name: "n", arg: 1, scope: !75, file: !2, line: 101, type: !26)
!88 = !DILocalVariable(name: "x", arg: 2, scope: !75, file: !2, line: 101, type: !78)
!89 = !DILocalVariable(name: "result", arg: 3, scope: !75, file: !2, line: 101, type: !79)
!90 = !DILocalVariable(name: "sign", scope: !75, file: !2, line: 103, type: !26)
!91 = !DILocalVariable(name: "status", scope: !92, file: !2, line: 114, type: !26)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 113, column: 14)
!93 = distinct !DILexicalBlock(scope: !75, file: !2, line: 113, column: 6)
!94 = !DILocalVariable(name: "status", scope: !95, file: !2, line: 119, type: !26)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 118, column: 19)
!96 = distinct !DILexicalBlock(scope: !93, file: !2, line: 118, column: 11)
!97 = !DILocalVariable(name: "status", scope: !98, file: !2, line: 128, type: !26)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 127, column: 17)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 127, column: 8)
!100 = distinct !DILexicalBlock(scope: !96, file: !2, line: 123, column: 8)
!101 = !DILocalVariable(name: "status", scope: !102, file: !2, line: 133, type: !26)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 132, column: 54)
!103 = distinct !DILexicalBlock(scope: !99, file: !2, line: 132, column: 13)
!104 = !DILocalVariable(name: "status", scope: !105, file: !2, line: 138, type: !26)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 137, column: 21)
!106 = distinct !DILexicalBlock(scope: !103, file: !2, line: 137, column: 13)
!107 = !DILocalVariable(name: "two_over_x", scope: !108, file: !2, line: 143, type: !64)
!108 = distinct !DILexicalBlock(scope: !106, file: !2, line: 142, column: 10)
!109 = !DILocalVariable(name: "r_by", scope: !108, file: !2, line: 144, type: !80)
!110 = !DILocalVariable(name: "r_bym", scope: !108, file: !2, line: 145, type: !80)
!111 = !DILocalVariable(name: "stat_1", scope: !108, file: !2, line: 146, type: !26)
!112 = !DILocalVariable(name: "stat_0", scope: !108, file: !2, line: 147, type: !26)
!113 = !DILocalVariable(name: "bym", scope: !108, file: !2, line: 148, type: !64)
!114 = !DILocalVariable(name: "by", scope: !108, file: !2, line: 149, type: !64)
!115 = !DILocalVariable(name: "byp", scope: !108, file: !2, line: 150, type: !64)
!116 = !DILocalVariable(name: "j", scope: !108, file: !2, line: 151, type: !26)
!117 = distinct !DIAssignID()
!118 = distinct !DIAssignID()
!119 = distinct !DIAssignID()
!120 = distinct !DIAssignID()
!121 = !DILocation(line: 0, scope: !108)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !75)
!124 = !DILocation(line: 105, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !75, file: !2, line: 105, column: 6)
!126 = !DILocation(line: 105, column: 6, scope: !75)
!127 = !DILocation(line: 107, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !2, line: 105, column: 13)
!129 = !DILocation(line: 108, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !2, line: 108, column: 8)
!131 = !DILocation(line: 108, column: 8, scope: !128)
!132 = !DILocation(line: 108, column: 23, scope: !130)
!133 = !DILocation(line: 113, column: 6, scope: !75)
!134 = !DILocation(line: 114, column: 18, scope: !92)
!135 = !DILocation(line: 0, scope: !92)
!136 = !DILocation(line: 115, column: 17, scope: !92)
!137 = !{!138, !139, i64 0}
!138 = !{!"gsl_sf_result_struct", !139, i64 0, !139, i64 8}
!139 = !{!"double", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C/C++ TBAA"}
!142 = !DILocation(line: 119, column: 18, scope: !95)
!143 = !DILocation(line: 0, scope: !95)
!144 = !DILocation(line: 120, column: 17, scope: !95)
!145 = !DILocation(line: 124, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !100, file: !2, line: 124, column: 8)
!147 = !DILocation(line: 124, column: 8, scope: !100)
!148 = !DILocation(line: 125, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 125, column: 7)
!150 = distinct !DILexicalBlock(scope: !146, file: !2, line: 124, column: 18)
!151 = !{!138, !139, i64 8}
!152 = !DILocation(line: 125, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !2, line: 125, column: 7)
!154 = !DILocation(line: 127, column: 10, scope: !99)
!155 = !DILocation(line: 127, column: 8, scope: !100)
!156 = !DILocalVariable(name: "ln_nm1_fact", scope: !157, file: !2, line: 43, type: !80)
!157 = distinct !DISubprogram(name: "bessel_Yn_small_x", scope: !2, file: !2, line: 38, type: !158, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !161)
!158 = !DISubroutineType(types: !159)
!159 = !{!26, !160, !78, !79}
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!161 = !{!162, !163, !164, !165, !166, !167, !156, !168, !169, !170, !171, !172, !173, !174, !175, !178, !179, !180, !181, !182, !183}
!162 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !2, line: 38, type: !160)
!163 = !DILocalVariable(name: "x", arg: 2, scope: !157, file: !2, line: 38, type: !78)
!164 = !DILocalVariable(name: "result", arg: 3, scope: !157, file: !2, line: 38, type: !79)
!165 = !DILocalVariable(name: "k", scope: !157, file: !2, line: 40, type: !26)
!166 = !DILocalVariable(name: "y", scope: !157, file: !2, line: 41, type: !64)
!167 = !DILocalVariable(name: "ln_x_2", scope: !157, file: !2, line: 42, type: !64)
!168 = !DILocalVariable(name: "k_term", scope: !157, file: !2, line: 44, type: !64)
!169 = !DILocalVariable(name: "term1", scope: !157, file: !2, line: 45, type: !64)
!170 = !DILocalVariable(name: "sum1", scope: !157, file: !2, line: 45, type: !64)
!171 = !DILocalVariable(name: "ln_pre1", scope: !157, file: !2, line: 45, type: !64)
!172 = !DILocalVariable(name: "term2", scope: !157, file: !2, line: 46, type: !64)
!173 = !DILocalVariable(name: "sum2", scope: !157, file: !2, line: 46, type: !64)
!174 = !DILocalVariable(name: "pre2", scope: !157, file: !2, line: 46, type: !64)
!175 = !DILocalVariable(name: "KMAX", scope: !176, file: !2, line: 63, type: !160)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 62, column: 24)
!177 = distinct !DILexicalBlock(scope: !157, file: !2, line: 62, column: 6)
!178 = !DILocalVariable(name: "psi_n", scope: !176, file: !2, line: 64, type: !80)
!179 = !DILocalVariable(name: "npk_fact", scope: !176, file: !2, line: 65, type: !80)
!180 = !DILocalVariable(name: "yk", scope: !176, file: !2, line: 66, type: !64)
!181 = !DILocalVariable(name: "k_fact", scope: !176, file: !2, line: 67, type: !64)
!182 = !DILocalVariable(name: "psi_kp1", scope: !176, file: !2, line: 68, type: !64)
!183 = !DILocalVariable(name: "psi_npkp1", scope: !176, file: !2, line: 69, type: !64)
!184 = !DILocation(line: 0, scope: !157, inlinedAt: !185)
!185 = distinct !DILocation(line: 128, column: 20, scope: !98)
!186 = !DILocation(line: 0, scope: !176, inlinedAt: !185)
!187 = !DILocation(line: 41, column: 19, scope: !157, inlinedAt: !185)
!188 = !DILocation(line: 41, column: 23, scope: !157, inlinedAt: !185)
!189 = !DILocation(line: 42, column: 26, scope: !157, inlinedAt: !185)
!190 = !DILocation(line: 43, column: 3, scope: !157, inlinedAt: !185)
!191 = !DILocation(line: 48, column: 35, scope: !157, inlinedAt: !185)
!192 = !DILocation(line: 48, column: 3, scope: !157, inlinedAt: !185)
!193 = !DILocation(line: 50, column: 13, scope: !157, inlinedAt: !185)
!194 = !DILocation(line: 50, column: 15, scope: !157, inlinedAt: !185)
!195 = !DILocation(line: 50, column: 37, scope: !157, inlinedAt: !185)
!196 = !DILocation(line: 51, column: 14, scope: !197, inlinedAt: !185)
!197 = distinct !DILexicalBlock(scope: !157, file: !2, line: 51, column: 6)
!198 = !DILocation(line: 51, column: 6, scope: !157, inlinedAt: !185)
!199 = !DILocation(line: 55, column: 3, scope: !200, inlinedAt: !185)
!200 = distinct !DILexicalBlock(scope: !157, file: !2, line: 55, column: 3)
!201 = !DILocation(line: 51, column: 39, scope: !202, inlinedAt: !185)
!202 = distinct !DILexicalBlock(scope: !197, file: !2, line: 51, column: 39)
!203 = !DILocation(line: 129, column: 19, scope: !98)
!204 = !DILocation(line: 56, column: 24, scope: !205, inlinedAt: !185)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 55, column: 25)
!206 = distinct !DILexicalBlock(scope: !200, file: !2, line: 55, column: 3)
!207 = !DILocation(line: 56, column: 20, scope: !205, inlinedAt: !185)
!208 = !DILocation(line: 56, column: 17, scope: !205, inlinedAt: !185)
!209 = !DILocation(line: 56, column: 16, scope: !205, inlinedAt: !185)
!210 = !DILocation(line: 56, column: 12, scope: !205, inlinedAt: !185)
!211 = !DILocation(line: 55, column: 21, scope: !206, inlinedAt: !185)
!212 = distinct !{!212, !199, !213, !214}
!213 = !DILocation(line: 58, column: 3, scope: !200, inlinedAt: !185)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !DILocation(line: 59, column: 12, scope: !157, inlinedAt: !185)
!216 = !DILocation(line: 57, column: 10, scope: !205, inlinedAt: !185)
!217 = !DILocation(line: 59, column: 11, scope: !157, inlinedAt: !185)
!218 = !DILocation(line: 59, column: 25, scope: !157, inlinedAt: !185)
!219 = !DILocation(line: 59, column: 32, scope: !157, inlinedAt: !185)
!220 = !DILocation(line: 61, column: 15, scope: !157, inlinedAt: !185)
!221 = !DILocation(line: 61, column: 16, scope: !157, inlinedAt: !185)
!222 = !DILocation(line: 61, column: 11, scope: !157, inlinedAt: !185)
!223 = !DILocation(line: 61, column: 25, scope: !157, inlinedAt: !185)
!224 = !DILocation(line: 62, column: 17, scope: !177, inlinedAt: !185)
!225 = !DILocation(line: 62, column: 6, scope: !157, inlinedAt: !185)
!226 = !DILocation(line: 64, column: 5, scope: !176, inlinedAt: !185)
!227 = !DILocation(line: 65, column: 5, scope: !176, inlinedAt: !185)
!228 = !DILocation(line: 70, column: 5, scope: !176, inlinedAt: !185)
!229 = !DILocation(line: 71, column: 5, scope: !176, inlinedAt: !185)
!230 = !DILocation(line: 72, column: 23, scope: !176, inlinedAt: !185)
!231 = !DILocation(line: 72, column: 32, scope: !176, inlinedAt: !185)
!232 = !DILocation(line: 73, column: 21, scope: !176, inlinedAt: !185)
!233 = !DILocation(line: 73, column: 38, scope: !176, inlinedAt: !185)
!234 = !DILocation(line: 73, column: 56, scope: !176, inlinedAt: !185)
!235 = !DILocation(line: 73, column: 46, scope: !176, inlinedAt: !185)
!236 = !DILocation(line: 74, column: 5, scope: !237, inlinedAt: !185)
!237 = distinct !DILexicalBlock(scope: !176, file: !2, line: 74, column: 5)
!238 = !DILocation(line: 75, column: 23, scope: !239, inlinedAt: !185)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 74, column: 27)
!240 = distinct !DILexicalBlock(scope: !237, file: !2, line: 74, column: 5)
!241 = !DILocation(line: 75, column: 22, scope: !239, inlinedAt: !185)
!242 = !DILocation(line: 76, column: 25, scope: !239, inlinedAt: !185)
!243 = !DILocation(line: 76, column: 23, scope: !239, inlinedAt: !185)
!244 = !DILocation(line: 76, column: 22, scope: !239, inlinedAt: !185)
!245 = !DILocation(line: 77, column: 16, scope: !239, inlinedAt: !185)
!246 = !DILocation(line: 78, column: 20, scope: !239, inlinedAt: !185)
!247 = distinct !DIAssignID()
!248 = !DILocation(line: 79, column: 10, scope: !239, inlinedAt: !185)
!249 = !DILocation(line: 80, column: 40, scope: !239, inlinedAt: !185)
!250 = !DILocation(line: 80, column: 18, scope: !239, inlinedAt: !185)
!251 = !DILocation(line: 80, column: 61, scope: !239, inlinedAt: !185)
!252 = !DILocation(line: 80, column: 53, scope: !239, inlinedAt: !185)
!253 = !DILocation(line: 74, column: 23, scope: !240, inlinedAt: !185)
!254 = !DILocation(line: 74, column: 15, scope: !240, inlinedAt: !185)
!255 = distinct !{!255, !236, !256, !214}
!256 = !DILocation(line: 82, column: 5, scope: !237, inlinedAt: !185)
!257 = !DILocation(line: 83, column: 18, scope: !176, inlinedAt: !185)
!258 = !DILocation(line: 84, column: 3, scope: !177, inlinedAt: !185)
!259 = !DILocation(line: 84, column: 3, scope: !176, inlinedAt: !185)
!260 = !DILocation(line: 0, scope: !177, inlinedAt: !185)
!261 = !DILocation(line: 90, column: 50, scope: !157, inlinedAt: !185)
!262 = !DILocation(line: 90, column: 65, scope: !157, inlinedAt: !185)
!263 = !DILocation(line: 90, column: 34, scope: !157, inlinedAt: !185)
!264 = !DILocation(line: 90, column: 11, scope: !157, inlinedAt: !185)
!265 = !DILocation(line: 91, column: 42, scope: !157, inlinedAt: !185)
!266 = !DILocation(line: 91, column: 40, scope: !157, inlinedAt: !185)
!267 = !DILocation(line: 91, column: 15, scope: !157, inlinedAt: !185)
!268 = !DILocation(line: 93, column: 3, scope: !157, inlinedAt: !185)
!269 = !DILocation(line: 94, column: 1, scope: !157, inlinedAt: !185)
!270 = !DILocation(line: 0, scope: !98)
!271 = !DILocation(line: 132, column: 35, scope: !103)
!272 = !DILocation(line: 132, column: 43, scope: !103)
!273 = !DILocation(line: 132, column: 46, scope: !103)
!274 = !DILocation(line: 132, column: 39, scope: !103)
!275 = !DILocation(line: 132, column: 13, scope: !99)
!276 = !DILocation(line: 133, column: 47, scope: !102)
!277 = !DILocation(line: 133, column: 20, scope: !102)
!278 = !DILocation(line: 0, scope: !102)
!279 = !DILocation(line: 134, column: 19, scope: !102)
!280 = !DILocation(line: 137, column: 15, scope: !106)
!281 = !DILocation(line: 137, column: 13, scope: !103)
!282 = !DILocation(line: 138, column: 52, scope: !105)
!283 = !DILocation(line: 138, column: 20, scope: !105)
!284 = !DILocation(line: 0, scope: !105)
!285 = !DILocation(line: 139, column: 19, scope: !105)
!286 = !DILocation(line: 143, column: 30, scope: !108)
!287 = !DILocation(line: 144, column: 7, scope: !108)
!288 = !DILocation(line: 145, column: 7, scope: !108)
!289 = !DILocation(line: 146, column: 20, scope: !108)
!290 = !DILocation(line: 147, column: 20, scope: !108)
!291 = !DILocation(line: 148, column: 26, scope: !108)
!292 = !DILocation(line: 149, column: 25, scope: !108)
!293 = !DILocation(line: 153, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !108, file: !2, line: 153, column: 7)
!295 = !DILocation(line: 154, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 153, column: 26)
!297 = distinct !DILexicalBlock(scope: !294, file: !2, line: 153, column: 7)
!298 = !DILocation(line: 154, column: 16, scope: !296)
!299 = !DILocation(line: 154, column: 27, scope: !296)
!300 = !DILocation(line: 153, column: 22, scope: !297)
!301 = distinct !{!301, !293, !302, !214}
!302 = !DILocation(line: 157, column: 7, scope: !294)
!303 = distinct !{!303, !304}
!304 = !{!"llvm.loop.unroll.disable"}
!305 = !DILocation(line: 154, column: 31, scope: !296)
!306 = !DILocation(line: 158, column: 27, scope: !108)
!307 = !DILocation(line: 158, column: 20, scope: !108)
!308 = !DILocation(line: 159, column: 22, scope: !108)
!309 = !DILocation(line: 159, column: 53, scope: !108)
!310 = !DILocation(line: 159, column: 56, scope: !108)
!311 = !DILocation(line: 159, column: 43, scope: !108)
!312 = !DILocation(line: 159, column: 80, scope: !108)
!313 = !DILocation(line: 159, column: 83, scope: !108)
!314 = !DILocation(line: 159, column: 69, scope: !108)
!315 = !DILocation(line: 159, column: 40, scope: !108)
!316 = !DILocation(line: 159, column: 15, scope: !108)
!317 = !DILocation(line: 160, column: 44, scope: !108)
!318 = !DILocation(line: 160, column: 19, scope: !108)
!319 = !DILocation(line: 162, column: 14, scope: !108)
!320 = !DILocation(line: 163, column: 5, scope: !106)
!321 = !DILocation(line: 0, scope: !93)
!322 = !DILocation(line: 165, column: 1, scope: !75)
!323 = !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !324, file: !324, line: 79, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!325 = !DISubroutineType(types: !326)
!326 = !{!26, !78, !79}
!327 = !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !324, file: !324, line: 88, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331, !331, !26, !26}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!333 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !334, file: !334, line: 40, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!335 = !DISubroutineType(types: !336)
!336 = !{!26, !78, !78, !79}
!337 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !338, file: !338, line: 28, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!339 = !DISubroutineType(types: !340)
!340 = !{!26, !64, !64, !79}
!341 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_array", scope: !2, file: !2, line: 169, type: !342, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !345)
!342 = !DISubroutineType(types: !343)
!343 = !{!26, !160, !160, !78, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!345 = !{!346, !347, !348, !349, !350, !353, !355, !356, !357, !358, !359, !360, !361, !362}
!346 = !DILocalVariable(name: "nmin", arg: 1, scope: !341, file: !2, line: 169, type: !160)
!347 = !DILocalVariable(name: "nmax", arg: 2, scope: !341, file: !2, line: 169, type: !160)
!348 = !DILocalVariable(name: "x", arg: 3, scope: !341, file: !2, line: 169, type: !78)
!349 = !DILocalVariable(name: "result_array", arg: 4, scope: !341, file: !2, line: 169, type: !344)
!350 = !DILocalVariable(name: "j", scope: !351, file: !2, line: 174, type: !26)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 173, column: 43)
!352 = distinct !DILexicalBlock(scope: !341, file: !2, line: 173, column: 6)
!353 = !DILocalVariable(name: "r_Ynm1", scope: !354, file: !2, line: 179, type: !80)
!354 = distinct !DILexicalBlock(scope: !352, file: !2, line: 178, column: 8)
!355 = !DILocalVariable(name: "r_Yn", scope: !354, file: !2, line: 180, type: !80)
!356 = !DILocalVariable(name: "stat_nm1", scope: !354, file: !2, line: 181, type: !26)
!357 = !DILocalVariable(name: "stat_n", scope: !354, file: !2, line: 182, type: !26)
!358 = !DILocalVariable(name: "Ynp1", scope: !354, file: !2, line: 183, type: !64)
!359 = !DILocalVariable(name: "Yn", scope: !354, file: !2, line: 184, type: !64)
!360 = !DILocalVariable(name: "Ynm1", scope: !354, file: !2, line: 185, type: !64)
!361 = !DILocalVariable(name: "n", scope: !354, file: !2, line: 186, type: !26)
!362 = !DILocalVariable(name: "stat", scope: !354, file: !2, line: 188, type: !26)
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 0, scope: !354)
!365 = distinct !DIAssignID()
!366 = !DILocation(line: 0, scope: !341)
!367 = !DILocation(line: 173, column: 11, scope: !352)
!368 = !DILocation(line: 173, column: 15, scope: !352)
!369 = !DILocation(line: 173, column: 23, scope: !352)
!370 = !DILocation(line: 173, column: 30, scope: !352)
!371 = !DILocation(line: 0, scope: !351)
!372 = !DILocation(line: 175, column: 15, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 175, column: 5)
!374 = distinct !DILexicalBlock(scope: !351, file: !2, line: 175, column: 5)
!375 = !DILocation(line: 175, column: 5, scope: !374)
!376 = !DILocation(line: 175, column: 49, scope: !373)
!377 = !{!139, !139, i64 0}
!378 = !DILocation(line: 176, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !351, file: !2, line: 176, column: 5)
!380 = !DILocation(line: 179, column: 5, scope: !354)
!381 = !DILocation(line: 180, column: 5, scope: !354)
!382 = !DILocation(line: 181, column: 20, scope: !354)
!383 = !DILocation(line: 182, column: 43, scope: !354)
!384 = !DILocation(line: 182, column: 20, scope: !354)
!385 = !DILocation(line: 188, column: 16, scope: !354)
!386 = !DILocation(line: 190, column: 13, scope: !387)
!387 = distinct !DILexicalBlock(scope: !354, file: !2, line: 190, column: 8)
!388 = !DILocation(line: 190, column: 8, scope: !354)
!389 = !DILocation(line: 199, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 199, column: 7)
!391 = distinct !DILexicalBlock(scope: !387, file: !2, line: 198, column: 10)
!392 = !DILocation(line: 200, column: 30, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 199, column: 33)
!394 = distinct !DILexicalBlock(scope: !390, file: !2, line: 199, column: 7)
!395 = !DILocation(line: 205, column: 3, scope: !352)
!396 = !DILocation(line: 185, column: 26, scope: !354)
!397 = !DILocation(line: 184, column: 24, scope: !354)
!398 = !DILocation(line: 191, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 191, column: 7)
!400 = distinct !DILexicalBlock(scope: !387, file: !2, line: 190, column: 29)
!401 = !DILocation(line: 192, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !2, line: 191, column: 37)
!403 = distinct !DILexicalBlock(scope: !399, file: !2, line: 191, column: 7)
!404 = !DILocation(line: 192, column: 32, scope: !402)
!405 = !DILocation(line: 193, column: 28, scope: !402)
!406 = !DILocation(line: 193, column: 27, scope: !402)
!407 = !DILocation(line: 193, column: 29, scope: !402)
!408 = !DILocation(line: 193, column: 32, scope: !402)
!409 = !DILocation(line: 191, column: 33, scope: !403)
!410 = !DILocation(line: 191, column: 22, scope: !403)
!411 = distinct !{!411, !398, !412, !214}
!412 = !DILocation(line: 196, column: 7, scope: !399)
!413 = !DILocation(line: 0, scope: !352)
!414 = !DILocation(line: 206, column: 1, scope: !341)
!415 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !2, file: !2, line: 213, type: !416, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!64, !160, !78}
!418 = !{!419, !420, !421, !422}
!419 = !DILocalVariable(name: "n", arg: 1, scope: !415, file: !2, line: 213, type: !160)
!420 = !DILocalVariable(name: "x", arg: 2, scope: !415, file: !2, line: 213, type: !78)
!421 = !DILocalVariable(name: "result", scope: !415, file: !2, line: 215, type: !80)
!422 = !DILocalVariable(name: "status", scope: !415, file: !2, line: 215, type: !26)
!423 = distinct !DIAssignID()
!424 = !DILocation(line: 0, scope: !415)
!425 = !DILocation(line: 215, column: 3, scope: !415)
!426 = !DILocation(line: 215, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !415, file: !2, line: 215, column: 3)
!428 = !DILocation(line: 215, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !2, line: 215, column: 3)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 215, column: 3)
!431 = !DILocation(line: 216, column: 1, scope: !415)
!432 = !DISubprogram(name: "log", scope: !433, file: !433, line: 104, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!434 = !DISubroutineType(types: !435)
!435 = !{!64, !64}
!436 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !437, file: !437, line: 136, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!438 = !DISubroutineType(types: !439)
!439 = !{!26, !440, !79}
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!441 = !DISubprogram(name: "exp", scope: !433, file: !433, line: 95, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !443, file: !443, line: 51, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!444 = !DISubroutineType(types: !445)
!445 = !{!26, !160, !79}
!446 = !DISubprogram(name: "gsl_sf_fact_e", scope: !437, file: !437, line: 119, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
