; ModuleID = 'bessel_Kn.ll'
source_filename = "bessel_Kn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Kn.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_Kn_scaled_e(n, x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Kn_e(n, x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !27

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !85 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !116
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !117
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !118
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !108, metadata !DIExpression(), metadata !119, metadata ptr %7, metadata !DIExpression()), !dbg !120
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !109, metadata !DIExpression(), metadata !121, metadata ptr %8, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !97, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata double %1, metadata !98, metadata !DIExpression()), !dbg !122
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !122
  %9 = tail call i32 @llvm.abs.i32(i32 %0, i1 true), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !97, metadata !DIExpression()), !dbg !122
  %10 = fcmp ugt double %1, 0.000000e+00, !dbg !124
  br i1 %10, label %13, label %11, !dbg !125

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !126, !tbaa !129
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !126
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !126, !tbaa !134
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 109, i32 noundef 1) #6, !dbg !135
  br label %226, !dbg !135

13:                                               ; preds = %3
  %14 = icmp eq i32 %0, 0, !dbg !137
  br i1 %14, label %15, label %17, !dbg !138

15:                                               ; preds = %13
  %16 = tail call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef %2) #6, !dbg !139
  br label %226, !dbg !141

17:                                               ; preds = %13
  %18 = icmp eq i32 %9, 1, !dbg !142
  br i1 %18, label %19, label %21, !dbg !143

19:                                               ; preds = %17
  %20 = tail call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %1, ptr noundef %2) #6, !dbg !144
  br label %226, !dbg !146

21:                                               ; preds = %17
  %22 = fcmp ugt double %1, 5.000000e+00, !dbg !147
  br i1 %22, label %133, label %23, !dbg !148

23:                                               ; preds = %21
  call void @llvm.dbg.assign(metadata i1 undef, metadata !149, metadata !DIExpression(), metadata !116, metadata ptr %4, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.assign(metadata i1 undef, metadata !172, metadata !DIExpression(), metadata !117, metadata ptr %5, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.assign(metadata i1 undef, metadata !173, metadata !DIExpression(), metadata !118, metadata ptr %6, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %9, metadata !155, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %1, metadata !156, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %2, metadata !157, metadata !DIExpression()), !dbg !178
  %24 = fmul double %1, 2.500000e-01, !dbg !182
  %25 = fmul double %24, %1, !dbg !183
  call void @llvm.dbg.value(metadata double %25, metadata !159, metadata !DIExpression()), !dbg !178
  %26 = fmul double %1, 5.000000e-01, !dbg !184
  %handler_result23 = call double @callHandler(i32 12, double %26, double %26), !dbg !185
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !160, metadata !DIExpression()), !dbg !178
  %27 = tail call double @exp(double noundef %1) #6, !dbg !185
  call void @llvm.dbg.value(metadata double %27, metadata !161, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !186
  %28 = add nsw i32 %9, -1, !dbg !187
  %29 = call i32 @gsl_sf_lnfact_e(i32 noundef %28, ptr noundef nonnull %4) #6, !dbg !188
  %30 = sub nsw i32 0, %9, !dbg !189
  %31 = sitofp i32 %30 to double, !dbg !189
  %32 = fmul double %handler_result23, %31, !dbg !190
  %33 = load double, ptr %4, align 8, !dbg !191, !tbaa !129
  %handler_result = call double @fAddHandlerDouble(double %32, double %33), !dbg !192
  call void @llvm.dbg.value(metadata double %handler_result, metadata !165, metadata !DIExpression()), !dbg !178
  %34 = fcmp ogt double %handler_result, 0x40861642FEFA39EF, !dbg !192
  br i1 %34, label %43, label %35, !dbg !194

35:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !164, metadata !DIExpression()), !dbg !178
  %36 = fneg double %25
  %37 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !195
  %38 = add i32 %37, -1, !dbg !195
  %39 = and i32 %38, 1, !dbg !195
  %40 = icmp eq i32 %37, 2, !dbg !195
  br i1 %40, label %63, label %41, !dbg !195

41:                                               ; preds = %35
  %42 = and i32 %38, -2, !dbg !195
  br label %44, !dbg !195

43:                                               ; preds = %23
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 54, i32 noundef 16) #6, !dbg !197
  br label %131, !dbg !197

44:                                               ; preds = %44, %41
  %45 = phi i32 [ 1, %41 ], [ %60, %44 ]
  %46 = phi double [ 1.000000e+00, %41 ], [ %59, %44 ]
  %47 = phi double [ 1.000000e+00, %41 ], [ %handler_result2, %44 ]
  %48 = phi i32 [ 0, %41 ], [ %61, %44 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %46, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %47, metadata !164, metadata !DIExpression()), !dbg !178
  %49 = sub nsw i32 %9, %45, !dbg !199
  %50 = mul nsw i32 %49, %45, !dbg !202
  %51 = sitofp i32 %50 to double, !dbg !203
  %52 = fdiv double %36, %51, !dbg !204
  %53 = fmul double %46, %52, !dbg !205
  call void @llvm.dbg.value(metadata double %53, metadata !162, metadata !DIExpression()), !dbg !178
  %handler_result1 = call double @fAddHandlerDouble(double %47, double %53), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !164, metadata !DIExpression()), !dbg !178
  %54 = add nuw nsw i32 %45, 1, !dbg !206
  call void @llvm.dbg.value(metadata i32 %54, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %54, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %53, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !164, metadata !DIExpression()), !dbg !178
  %55 = sub nsw i32 %9, %54, !dbg !199
  %56 = mul nsw i32 %55, %54, !dbg !202
  %57 = sitofp i32 %56 to double, !dbg !203
  %58 = fdiv double %36, %57, !dbg !204
  %59 = fmul double %53, %58, !dbg !205
  call void @llvm.dbg.value(metadata double %59, metadata !162, metadata !DIExpression()), !dbg !178
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %59), !dbg !206
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !164, metadata !DIExpression()), !dbg !178
  %60 = add nuw nsw i32 %45, 2, !dbg !206
  call void @llvm.dbg.value(metadata i32 %60, metadata !158, metadata !DIExpression()), !dbg !178
  %61 = add i32 %48, 2, !dbg !195
  %62 = icmp eq i32 %61, %42, !dbg !195
  br i1 %62, label %63, label %44, !dbg !195, !llvm.loop !207

63:                                               ; preds = %44, %35
  %64 = phi double [ undef, %35 ], [ %handler_result2, %44 ]
  %65 = phi i32 [ 1, %35 ], [ %60, %44 ]
  %66 = phi double [ 1.000000e+00, %35 ], [ %59, %44 ]
  %67 = phi double [ 1.000000e+00, %35 ], [ %handler_result2, %44 ]
  %68 = icmp eq i32 %39, 0, !dbg !195
  br i1 %68, label %75, label %69, !dbg !195

69:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 %65, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %66, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %67, metadata !164, metadata !DIExpression()), !dbg !178
  %70 = sub nsw i32 %9, %65, !dbg !199
  %71 = mul nsw i32 %70, %65, !dbg !202
  %72 = sitofp i32 %71 to double, !dbg !203
  %73 = fdiv double %36, %72, !dbg !204
  %74 = fmul double %66, %73, !dbg !205
  call void @llvm.dbg.value(metadata double %74, metadata !162, metadata !DIExpression()), !dbg !178
  %handler_result3 = call double @fAddHandlerDouble(double %67, double %74), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !164, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %65, metadata !158, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !178
  br label %75, !dbg !210

75:                                               ; preds = %69, %63
  %76 = phi double [ %64, %63 ], [ %handler_result3, %69 ], !dbg !211
  %77 = call double @exp(double noundef %handler_result) #6, !dbg !210
  %78 = fmul double %77, 5.000000e-01, !dbg !212
  %79 = fmul double %76, %78, !dbg !213
  call void @llvm.dbg.value(metadata double %79, metadata !163, metadata !DIExpression()), !dbg !178
  %80 = sitofp i32 %9 to double, !dbg !214
  %81 = fmul double %handler_result23, %80, !dbg !215
  %82 = call double @exp(double noundef %81) #6, !dbg !216
  %83 = fmul double %82, 5.000000e-01, !dbg !217
  call void @llvm.dbg.value(metadata double %83, metadata !168, metadata !DIExpression()), !dbg !178
  %84 = fcmp ogt double %83, 0.000000e+00, !dbg !218
  br i1 %84, label %85, label %120, !dbg !219

85:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i32 20, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !220
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !221
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double 0xBFE2788CFC6FB619, metadata !176, metadata !DIExpression()), !dbg !181
  %86 = call i32 @gsl_sf_psi_int_e(i32 noundef %9, ptr noundef nonnull %5) #6, !dbg !222
  %87 = call i32 @gsl_sf_fact_e(i32 noundef %9, ptr noundef nonnull %6) #6, !dbg !223
  %88 = load double, ptr %5, align 8, !dbg !224, !tbaa !129
  %89 = fdiv double 1.000000e+00, %80, !dbg !225
  %handler_result4 = call double @fAddHandlerDouble(double %89, double %88), !dbg !226
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !177, metadata !DIExpression()), !dbg !181
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double 0xBFE2788CFC6FB619), !dbg !227
  %90 = fmul double %handler_result23, 2.000000e+00, !dbg !227
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %90), !dbg !228
  %91 = load double, ptr %6, align 8, !dbg !228, !tbaa !129
  %92 = fdiv double %handler_result6, %91, !dbg !229
  call void @llvm.dbg.value(metadata i32 1, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %92, metadata !167, metadata !DIExpression()), !dbg !178
  br label %93, !dbg !230

93:                                               ; preds = %93, %85
  %94 = phi double [ %handler_result4, %85 ], [ %handler_result8, %93 ]
  %95 = phi double [ 0xBFE2788CFC6FB619, %85 ], [ %handler_result7, %93 ]
  %96 = phi double [ 1.000000e+00, %85 ], [ %106, %93 ]
  %97 = phi double [ 1.000000e+00, %85 ], [ %108, %93 ]
  %98 = phi i32 [ 1, %85 ], [ %112, %93 ]
  %99 = phi double [ %92, %85 ], [ %handler_result11, %93 ]
  %100 = phi double [ %91, %85 ], [ %107, %93 ]
  call void @llvm.dbg.value(metadata double %94, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %95, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %96, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double %97, metadata !174, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %98, metadata !158, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata double %99, metadata !167, metadata !DIExpression()), !dbg !178
  %101 = sitofp i32 %98 to double, !dbg !232
  %102 = fdiv double 1.000000e+00, %101, !dbg !235
  %handler_result7 = call double @fAddHandlerDouble(double %95, double %102), !dbg !236
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !176, metadata !DIExpression()), !dbg !181
  %103 = add nuw nsw i32 %98, %9, !dbg !236
  %104 = sitofp i32 %103 to double, !dbg !237
  %105 = fdiv double 1.000000e+00, %104, !dbg !238
  %handler_result8 = call double @fAddHandlerDouble(double %94, double %105), !dbg !239
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !177, metadata !DIExpression()), !dbg !181
  %106 = fmul double %96, %101, !dbg !239
  call void @llvm.dbg.value(metadata double %106, metadata !175, metadata !DIExpression()), !dbg !181
  %107 = fmul double %100, %104, !dbg !240
  call void @llvm.dbg.assign(metadata double %107, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !241, metadata ptr %6, metadata !DIExpression()), !dbg !181
  %108 = fmul double %25, %97, !dbg !242
  call void @llvm.dbg.value(metadata double %108, metadata !174, metadata !DIExpression()), !dbg !181
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result8), !dbg !243
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result9, double %90), !dbg !244
  %109 = fmul double %108, %handler_result10, !dbg !244
  %110 = fmul double %106, %107, !dbg !245
  %111 = fdiv double %109, %110, !dbg !246
  call void @llvm.dbg.value(metadata double %111, metadata !162, metadata !DIExpression()), !dbg !178
  %handler_result11 = call double @fAddHandlerDouble(double %99, double %111), !dbg !247
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !167, metadata !DIExpression()), !dbg !178
  %112 = add nuw nsw i32 %98, 1, !dbg !247
  call void @llvm.dbg.value(metadata i32 %112, metadata !158, metadata !DIExpression()), !dbg !178
  %113 = icmp eq i32 %112, 20, !dbg !248
  br i1 %113, label %114, label %93, !dbg !230, !llvm.loop !249

114:                                              ; preds = %93
  %115 = and i32 %9, 1, !dbg !251
  %116 = icmp eq i32 %115, 0, !dbg !251
  %117 = fneg double %83, !dbg !252
  %118 = select i1 %116, double %83, double %117, !dbg !252
  %119 = fmul double %118, %handler_result11, !dbg !253
  call void @llvm.dbg.value(metadata double %119, metadata !166, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !254
  br label %120, !dbg !255

120:                                              ; preds = %114, %75
  %121 = phi double [ %119, %114 ], [ 0.000000e+00, %75 ], !dbg !256
  call void @llvm.dbg.value(metadata double %121, metadata !166, metadata !DIExpression()), !dbg !178
  %handler_result12 = call double @fAddHandlerDouble(double %79, double %121), !dbg !257
  %122 = fmul double %27, %handler_result12, !dbg !257
  store double %122, ptr %2, align 8, !dbg !258, !tbaa !129
  %123 = fmul double %27, 0x3CB0000000000000, !dbg !259
  %124 = fmul double %handler_result, %79, !dbg !260
  %125 = call double @llvm.fabs.f64(double %124), !dbg !260
  %126 = call double @llvm.fabs.f64(double %121), !dbg !261
  %handler_result13 = call double @fAddHandlerDouble(double %125, double %126), !dbg !262
  %127 = fmul double %123, %handler_result13, !dbg !262
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !263
  %129 = call double @llvm.fabs.f64(double %122), !dbg !264
  %130 = fmul double %129, 0x3CC0000000000000, !dbg !265
  %handler_result14 = call double @fAddHandlerDouble(double %127, double %130), !dbg !266
  store double %handler_result14, ptr %128, align 8, !dbg !266, !tbaa !134
  br label %131, !dbg !267

131:                                              ; preds = %120, %43
  %132 = phi i32 [ 16, %43 ], [ 0, %120 ], !dbg !178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !268
  br label %226, !dbg !269

133:                                              ; preds = %21
  %134 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !270
  %135 = mul i32 %0, %0, !dbg !271
  %136 = add nuw nsw i32 %135, 1, !dbg !272
  %137 = sitofp i32 %136 to double, !dbg !273
  %138 = fmul double %137, 2.500000e-01, !dbg !274
  %139 = fcmp ogt double %134, %138, !dbg !275
  br i1 %139, label %140, label %143, !dbg !276

140:                                              ; preds = %133
  %141 = sitofp i32 %9 to double, !dbg !277
  %142 = tail call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef %141, double noundef %1, ptr noundef %2) #6, !dbg !279
  br label %226, !dbg !280

143:                                              ; preds = %133
  %144 = sitofp i32 %135 to double, !dbg !281
  %145 = fdiv double 2.900000e-01, %144, !dbg !281
  %146 = fmul double %1, %1, !dbg !281
  %handler_result15 = call double @fAddHandlerDouble(double %146, double %144), !dbg !281
  %147 = fdiv double 5.000000e-01, %handler_result15, !dbg !281
  %148 = fcmp olt double %145, %147, !dbg !281
  %149 = select i1 %148, double %145, double %147, !dbg !281
  %150 = fcmp olt double %149, 0x3ED965FEA53D6E41, !dbg !282
  br i1 %150, label %151, label %154, !dbg !283

151:                                              ; preds = %143
  %152 = sitofp i32 %9 to double, !dbg !284
  %153 = tail call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef %152, double noundef %1, ptr noundef %2) #6, !dbg !286
  br label %226, !dbg !287

154:                                              ; preds = %143
  %155 = fdiv double 2.000000e+00, %1, !dbg !288
  tail call void @llvm.dbg.value(metadata double %155, metadata !100, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !289
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !290
  %156 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %1, ptr noundef nonnull %7) #6, !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %156, metadata !110, metadata !DIExpression()), !dbg !120
  %157 = call i32 @gsl_sf_bessel_K1_scaled_e(double noundef %1, ptr noundef nonnull %8) #6, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %157, metadata !111, metadata !DIExpression()), !dbg !120
  %158 = load double, ptr %7, align 8, !dbg !293, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %158, metadata !112, metadata !DIExpression()), !dbg !120
  %159 = load double, ptr %8, align 8, !dbg !294, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %159, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 1, metadata !115, metadata !DIExpression()), !dbg !120
  %160 = call i32 @llvm.abs.i32(i32 %0, i1 false), !dbg !295
  %161 = call i32 @llvm.umax.i32(i32 %160, i32 2), !dbg !295
  %162 = add i32 %161, -1, !dbg !295
  %163 = add i32 %161, -2, !dbg !295
  %164 = and i32 %162, 3, !dbg !295
  %165 = icmp ult i32 %163, 3, !dbg !295
  br i1 %165, label %191, label %166, !dbg !295

166:                                              ; preds = %154
  %167 = and i32 %162, -4, !dbg !295
  br label %168, !dbg !295

168:                                              ; preds = %168, %166
  %169 = phi i32 [ 1, %166 ], [ %188, %168 ]
  %170 = phi double [ %159, %166 ], [ %handler_result19, %168 ]
  %171 = phi double [ %158, %166 ], [ %handler_result18, %168 ]
  %172 = phi i32 [ 0, %166 ], [ %189, %168 ]
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %170, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %171, metadata !112, metadata !DIExpression()), !dbg !120
  %173 = sitofp i32 %169 to double, !dbg !297
  %174 = fmul double %155, %173, !dbg !300
  %175 = fmul double %170, %174, !dbg !301
  %handler_result16 = call double @fAddHandlerDouble(double %171, double %175), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %170, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !113, metadata !DIExpression()), !dbg !120
  %176 = add nuw nsw i32 %169, 1, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %176, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %170, metadata !112, metadata !DIExpression()), !dbg !120
  %177 = sitofp i32 %176 to double, !dbg !297
  %178 = fmul double %155, %177, !dbg !300
  %179 = fmul double %handler_result16, %178, !dbg !301
  %handler_result17 = call double @fAddHandlerDouble(double %170, double %179), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !113, metadata !DIExpression()), !dbg !120
  %180 = add nuw nsw i32 %169, 2, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %180, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !112, metadata !DIExpression()), !dbg !120
  %181 = sitofp i32 %180 to double, !dbg !297
  %182 = fmul double %155, %181, !dbg !300
  %183 = fmul double %handler_result17, %182, !dbg !301
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result16, double %183), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !113, metadata !DIExpression()), !dbg !120
  %184 = add nuw nsw i32 %169, 3, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %184, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !112, metadata !DIExpression()), !dbg !120
  %185 = sitofp i32 %184 to double, !dbg !297
  %186 = fmul double %155, %185, !dbg !300
  %187 = fmul double %handler_result18, %186, !dbg !301
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result17, double %187), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !113, metadata !DIExpression()), !dbg !120
  %188 = add nuw nsw i32 %169, 4, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %188, metadata !115, metadata !DIExpression()), !dbg !120
  %189 = add i32 %172, 4, !dbg !295
  %190 = icmp eq i32 %189, %167, !dbg !295
  br i1 %190, label %191, label %168, !dbg !295, !llvm.loop !303

191:                                              ; preds = %168, %154
  %192 = phi double [ undef, %154 ], [ %handler_result19, %168 ]
  %193 = phi i32 [ 1, %154 ], [ %188, %168 ]
  %194 = phi double [ %159, %154 ], [ %handler_result19, %168 ]
  %195 = phi double [ %158, %154 ], [ %handler_result18, %168 ]
  %196 = icmp eq i32 %164, 0, !dbg !295
  br i1 %196, label %208, label %197, !dbg !295

197:                                              ; preds = %197, %191
  %198 = phi i32 [ %205, %197 ], [ %193, %191 ]
  %199 = phi double [ %handler_result20, %197 ], [ %194, %191 ]
  %200 = phi double [ %199, %197 ], [ %195, %191 ]
  %201 = phi i32 [ %206, %197 ], [ 0, %191 ]
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !115, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %199, metadata !113, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %200, metadata !112, metadata !DIExpression()), !dbg !120
  %202 = sitofp i32 %198 to double, !dbg !297
  %203 = fmul double %155, %202, !dbg !300
  %204 = fmul double %199, %203, !dbg !301
  %handler_result20 = call double @fAddHandlerDouble(double %200, double %204), !dbg !302
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !114, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %199, metadata !112, metadata !DIExpression()), !dbg !120
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !113, metadata !DIExpression()), !dbg !120
  %205 = add nuw nsw i32 %198, 1, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %205, metadata !115, metadata !DIExpression()), !dbg !120
  %206 = add i32 %201, 1, !dbg !295
  %207 = icmp eq i32 %206, %164, !dbg !295
  br i1 %207, label %208, label %197, !dbg !295, !llvm.loop !305

208:                                              ; preds = %197, %191
  %209 = phi double [ %192, %191 ], [ %handler_result20, %197 ], !dbg !307
  store double %209, ptr %2, align 8, !dbg !308, !tbaa !129
  %210 = sitofp i32 %9 to double, !dbg !309
  %211 = call double @llvm.fabs.f64(double %209), !dbg !310
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !311
  %213 = load double, ptr %212, align 8, !dbg !311, !tbaa !134
  %214 = fdiv double %213, %158, !dbg !312
  %215 = call double @llvm.fabs.f64(double %214), !dbg !313
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !314
  %217 = load double, ptr %216, align 8, !dbg !314, !tbaa !134
  %218 = fdiv double %217, %159, !dbg !315
  %219 = call double @llvm.fabs.f64(double %218), !dbg !316
  %handler_result21 = call double @fAddHandlerDouble(double %215, double %219), !dbg !317
  %220 = fmul double %211, %handler_result21, !dbg !317
  %221 = fmul double %220, %210, !dbg !318
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !319
  %223 = fmul double %211, 0x3CC0000000000000, !dbg !320
  %handler_result22 = call double @fAddHandlerDouble(double %223, double %221), !dbg !321
  store double %handler_result22, ptr %222, align 8, !dbg !321, !tbaa !134
  %224 = icmp eq i32 %156, 0, !dbg !322
  %225 = select i1 %224, i32 %157, i32 %156, !dbg !322
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !323
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !323
  br label %226

226:                                              ; preds = %208, %151, %140, %131, %19, %15, %11
  %227 = phi i32 [ 1, %11 ], [ %16, %15 ], [ %20, %19 ], [ %132, %131 ], [ %142, %140 ], [ %153, %151 ], [ %225, %208 ], !dbg !324
  ret i32 %227, !dbg !325
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

declare !dbg !326 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !331 i32 @gsl_sf_bessel_K0_scaled_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !335 i32 @gsl_sf_bessel_K1_scaled_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !336 i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !340 i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !341 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata double %1, metadata !344, metadata !DIExpression()), !dbg !348
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !345, metadata !DIExpression()), !dbg !348
  %4 = tail call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !346, metadata !DIExpression()), !dbg !348
  %5 = fneg double %1, !dbg !350
  %6 = tail call double @exp(double noundef %5) #6, !dbg !351
  tail call void @llvm.dbg.value(metadata double %6, metadata !347, metadata !DIExpression()), !dbg !348
  %7 = load double, ptr %2, align 8, !dbg !352, !tbaa !129
  %8 = fmul double %6, %7, !dbg !352
  store double %8, ptr %2, align 8, !dbg !352, !tbaa !129
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !353
  %10 = load double, ptr %9, align 8, !dbg !354, !tbaa !134
  %11 = fmul double %6, %10, !dbg !354
  %12 = fmul double %1, 0x3CB0000000000000, !dbg !355
  %13 = tail call double @llvm.fabs.f64(double %8), !dbg !356
  %14 = fmul double %12, %13, !dbg !357
  %handler_result = call double @fAddHandlerDouble(double %11, double %14), !dbg !358
  store double %handler_result, ptr %9, align 8, !dbg !358, !tbaa !134
  ret i32 %4, !dbg !359
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !360 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !364 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !376, metadata !DIExpression(), metadata !397, metadata ptr %5, metadata !DIExpression()), !dbg !398
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !382, metadata !DIExpression(), metadata !399, metadata ptr %6, metadata !DIExpression()), !dbg !400
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !401, metadata ptr %7, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !369, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !370, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata double %2, metadata !371, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !372, metadata !DIExpression()), !dbg !402
  %8 = icmp slt i32 %0, 0, !dbg !403
  br i1 %8, label %13, label %9, !dbg !404

9:                                                ; preds = %4
  %10 = icmp slt i32 %1, %0, !dbg !405
  %11 = fcmp ole double %2, 0.000000e+00
  %12 = or i1 %10, %11, !dbg !406
  br i1 %12, label %13, label %21, !dbg !406

13:                                               ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !407
  %14 = icmp slt i32 %1, %0, !dbg !408
  br i1 %14, label %20, label %15, !dbg !411

15:                                               ; preds = %13
  %16 = add i32 %1, 1, !dbg !411
  %17 = sub i32 %16, %0, !dbg !411
  %18 = zext i32 %17 to i64, !dbg !411
  %19 = shl nuw nsw i64 %18, 3, !dbg !411
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %19, i1 false), !dbg !412, !tbaa !413
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !373, metadata !DIExpression()), !dbg !407
  br label %20, !dbg !414

20:                                               ; preds = %15, %13
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 1) #6, !dbg !414
  br label %67

21:                                               ; preds = %9
  %22 = icmp eq i32 %1, 0, !dbg !416
  br i1 %22, label %23, label %26, !dbg !417

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !418
  %24 = call i32 @gsl_sf_bessel_K0_scaled_e(double noundef %2, ptr noundef nonnull %5) #6, !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !379, metadata !DIExpression()), !dbg !398
  %25 = load double, ptr %5, align 8, !dbg !420, !tbaa !129
  store double %25, ptr %3, align 8, !dbg !421, !tbaa !413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !422
  br label %67

26:                                               ; preds = %21
  %27 = fdiv double 2.000000e+00, %2, !dbg !423
  tail call void @llvm.dbg.value(metadata double %27, metadata !380, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !425
  %28 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %2, ptr noundef nonnull %6), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !384, metadata !DIExpression()), !dbg !400
  %29 = add nuw nsw i32 %0, 1, !dbg !427
  %30 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %29, double noundef %2, ptr noundef nonnull %7), !dbg !428
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !385, metadata !DIExpression()), !dbg !400
  %31 = icmp eq i32 %28, 0, !dbg !429
  %32 = select i1 %31, i32 %30, i32 %28, !dbg !429
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !386, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double poison, metadata !388, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double poison, metadata !389, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !390, metadata !DIExpression()), !dbg !400
  %33 = add nuw nsw i32 %1, 1
  %34 = load double, ptr %6, align 8, !dbg !430, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %34, metadata !389, metadata !DIExpression()), !dbg !400
  %35 = load double, ptr %7, align 8, !dbg !431, !tbaa !129
  tail call void @llvm.dbg.value(metadata double %35, metadata !388, metadata !DIExpression()), !dbg !400
  %36 = xor i32 %0, -1
  %37 = zext nneg i32 %29 to i64, !dbg !432
  %38 = sext i32 %36 to i64, !dbg !432
  %39 = zext nneg i32 %1 to i64, !dbg !432
  %40 = getelementptr double, ptr %3, i64 %38, !dbg !432
  br label %41, !dbg !432

41:                                               ; preds = %51, %26
  %42 = phi i64 [ %37, %26 ], [ %57, %51 ]
  %43 = phi double [ %34, %26 ], [ %44, %51 ]
  %44 = phi double [ %35, %26 ], [ %handler_result, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !390, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double %43, metadata !389, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double %44, metadata !388, metadata !DIExpression()), !dbg !400
  %45 = fcmp olt double %43, 0x7FEFFFFFFFFFFFFF, !dbg !433
  br i1 %45, label %51, label %46, !dbg !434

46:                                               ; preds = %41
  %47 = trunc i64 %42 to i32, !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !391, metadata !DIExpression()), !dbg !438
  %48 = icmp slt i32 %33, %47, !dbg !435
  br i1 %48, label %64, label %49, !dbg !439

49:                                               ; preds = %46
  %50 = getelementptr double, ptr %3, i64 %38, !dbg !439
  br label %59, !dbg !439

51:                                               ; preds = %41
  %52 = getelementptr double, ptr %40, i64 %42, !dbg !440
  store double %43, ptr %52, align 8, !dbg !442, !tbaa !413
  tail call void @llvm.dbg.value(metadata double poison, metadata !387, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double %44, metadata !389, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double poison, metadata !388, metadata !DIExpression()), !dbg !400
  %53 = trunc i64 %42 to i32, !dbg !443
  %54 = sitofp i32 %53 to double, !dbg !443
  %55 = fmul double %27, %54, !dbg !444
  %56 = fmul double %44, %55, !dbg !445
  %handler_result = call double @fAddHandlerDouble(double %43, double %56), !dbg !446
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !387, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !388, metadata !DIExpression()), !dbg !400
  %57 = add i64 %42, 1, !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !390, metadata !DIExpression()), !dbg !400
  %58 = icmp sgt i64 %42, %39, !dbg !447
  br i1 %58, label %65, label %41, !dbg !432, !llvm.loop !448

59:                                               ; preds = %59, %49
  %60 = phi i64 [ %42, %49 ], [ %62, %59 ]
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !391, metadata !DIExpression()), !dbg !438
  %61 = getelementptr double, ptr %50, i64 %60, !dbg !450
  store double 0.000000e+00, ptr %61, align 8, !dbg !451, !tbaa !413
  %62 = add i64 %60, 1, !dbg !452
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !391, metadata !DIExpression()), !dbg !438
  %63 = icmp sgt i64 %60, %39, !dbg !435
  br i1 %63, label %64, label %59, !dbg !439, !llvm.loop !453

64:                                               ; preds = %59, %46
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 16) #6, !dbg !455
  br label %65

65:                                               ; preds = %64, %51
  %66 = phi i32 [ 16, %64 ], [ %32, %51 ], !dbg !400
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !457
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !457
  br label %67

67:                                               ; preds = %65, %23, %20
  %68 = phi i32 [ 1, %20 ], [ %24, %23 ], [ %66, %65 ], !dbg !458
  ret i32 %68, !dbg !459
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Kn_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !460 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !462, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !463, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double %2, metadata !464, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !465, metadata !DIExpression()), !dbg !469
  %5 = tail call i32 @gsl_sf_bessel_Kn_scaled_array(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3), !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !466, metadata !DIExpression()), !dbg !469
  %6 = fneg double %2, !dbg !471
  %7 = tail call double @exp(double noundef %6) #6, !dbg !472
  tail call void @llvm.dbg.value(metadata double %7, metadata !467, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !469
  %8 = icmp slt i32 %1, %0, !dbg !473
  br i1 %8, label %51, label %9, !dbg !476

9:                                                ; preds = %4
  %10 = add i32 %1, 1, !dbg !476
  %11 = sub i32 %10, %0, !dbg !476
  %12 = zext i32 %11 to i64, !dbg !473
  %13 = add nsw i64 %12, -1, !dbg !476
  %14 = and i64 %12, 3, !dbg !476
  %15 = icmp ult i64 %13, 3, !dbg !476
  br i1 %15, label %39, label %16, !dbg !476

16:                                               ; preds = %9
  %17 = and i64 %12, 4294967292, !dbg !476
  br label %18, !dbg !476

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %36, %18 ]
  %20 = phi i64 [ 0, %16 ], [ %37, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !468, metadata !DIExpression()), !dbg !469
  %21 = getelementptr inbounds double, ptr %3, i64 %19, !dbg !477
  %22 = load double, ptr %21, align 8, !dbg !478, !tbaa !413
  %23 = fmul double %7, %22, !dbg !478
  store double %23, ptr %21, align 8, !dbg !478, !tbaa !413
  %24 = or disjoint i64 %19, 1, !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !468, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !468, metadata !DIExpression()), !dbg !469
  %25 = getelementptr inbounds double, ptr %3, i64 %24, !dbg !477
  %26 = load double, ptr %25, align 8, !dbg !478, !tbaa !413
  %27 = fmul double %7, %26, !dbg !478
  store double %27, ptr %25, align 8, !dbg !478, !tbaa !413
  %28 = or disjoint i64 %19, 2, !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !468, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !468, metadata !DIExpression()), !dbg !469
  %29 = getelementptr inbounds double, ptr %3, i64 %28, !dbg !477
  %30 = load double, ptr %29, align 8, !dbg !478, !tbaa !413
  %31 = fmul double %7, %30, !dbg !478
  store double %31, ptr %29, align 8, !dbg !478, !tbaa !413
  %32 = or disjoint i64 %19, 3, !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !468, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !468, metadata !DIExpression()), !dbg !469
  %33 = getelementptr inbounds double, ptr %3, i64 %32, !dbg !477
  %34 = load double, ptr %33, align 8, !dbg !478, !tbaa !413
  %35 = fmul double %7, %34, !dbg !478
  store double %35, ptr %33, align 8, !dbg !478, !tbaa !413
  %36 = add nuw nsw i64 %19, 4, !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !468, metadata !DIExpression()), !dbg !469
  %37 = add i64 %20, 4, !dbg !476
  %38 = icmp eq i64 %37, %17, !dbg !476
  br i1 %38, label %39, label %18, !dbg !476, !llvm.loop !480

39:                                               ; preds = %18, %9
  %40 = phi i64 [ 0, %9 ], [ %36, %18 ]
  %41 = icmp eq i64 %14, 0, !dbg !476
  br i1 %41, label %51, label %42, !dbg !476

42:                                               ; preds = %42, %39
  %43 = phi i64 [ %48, %42 ], [ %40, %39 ]
  %44 = phi i64 [ %49, %42 ], [ 0, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !468, metadata !DIExpression()), !dbg !469
  %45 = getelementptr inbounds double, ptr %3, i64 %43, !dbg !477
  %46 = load double, ptr %45, align 8, !dbg !478, !tbaa !413
  %47 = fmul double %7, %46, !dbg !478
  store double %47, ptr %45, align 8, !dbg !478, !tbaa !413
  %48 = add nuw nsw i64 %43, 1, !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !468, metadata !DIExpression()), !dbg !469
  %49 = add i64 %44, 1, !dbg !476
  %50 = icmp eq i64 %49, %14, !dbg !476
  br i1 %50, label %51, label %42, !dbg !476, !llvm.loop !482

51:                                               ; preds = %42, %39, %4
  ret i32 %5, !dbg !483
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Kn_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !484 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !492
  call void @llvm.dbg.assign(metadata i1 undef, metadata !490, metadata !DIExpression(), metadata !492, metadata ptr %3, metadata !DIExpression()), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !488, metadata !DIExpression()), !dbg !493
  tail call void @llvm.dbg.value(metadata double %1, metadata !489, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !494
  %4 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !491, metadata !DIExpression()), !dbg !493
  %5 = icmp eq i32 %4, 0, !dbg !495
  br i1 %5, label %7, label %6, !dbg !494

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef %4) #6, !dbg !497
  br label %7, !dbg !497

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !494, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !500
  ret double %8, !dbg !500
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Kn(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !501 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !505, metadata !DIExpression(), metadata !507, metadata ptr %3, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !503, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata double %1, metadata !504, metadata !DIExpression()), !dbg !508
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !509
  call void @llvm.dbg.value(metadata i32 %0, metadata !343, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata double %1, metadata !344, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata ptr %3, metadata !345, metadata !DIExpression()), !dbg !510
  %4 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !512
  call void @llvm.dbg.value(metadata i32 %4, metadata !346, metadata !DIExpression()), !dbg !510
  %5 = fneg double %1, !dbg !513
  %6 = call double @exp(double noundef %5) #6, !dbg !514
  call void @llvm.dbg.value(metadata double %6, metadata !347, metadata !DIExpression()), !dbg !510
  %7 = load double, ptr %3, align 8, !dbg !515, !tbaa !129
  %8 = fmul double %6, %7, !dbg !515
  store double %8, ptr %3, align 8, !dbg !515, !tbaa !129, !DIAssignID !516
  call void @llvm.dbg.assign(metadata double %8, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !516, metadata ptr %3, metadata !DIExpression()), !dbg !508
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !517
  %10 = load double, ptr %9, align 8, !dbg !518, !tbaa !134
  %11 = fmul double %6, %10, !dbg !518
  %12 = fmul double %1, 0x3CB0000000000000, !dbg !519
  %13 = call double @llvm.fabs.f64(double %8), !dbg !520
  %14 = fmul double %12, %13, !dbg !521
  %handler_result = call double @fAddHandlerDouble(double %11, double %14), !dbg !522
  store double %handler_result, ptr %9, align 8, !dbg !522, !tbaa !134, !DIAssignID !523
  call void @llvm.dbg.assign(metadata double %handler_result, metadata !505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !523, metadata ptr %9, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !506, metadata !DIExpression()), !dbg !508
  %15 = icmp eq i32 %4, 0, !dbg !524
  br i1 %15, label %18, label %16, !dbg !509

16:                                               ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef %4) #6, !dbg !526
  %17 = load double, ptr %3, align 8, !dbg !509, !tbaa !129
  br label %18, !dbg !526

18:                                               ; preds = %16, %2
  %19 = phi double [ %8, %2 ], [ %17, %16 ], !dbg !509
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !529
  ret double %19, !dbg !529
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !530 double @log(double noundef) local_unnamed_addr #4

declare !dbg !531 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !536 i32 @gsl_sf_psi_int_e(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !540 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Kn.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "451cae808810e318754dd1b5498f2db2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 34)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 6)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !33, retainedTypes: !73, globals: !76, splitDebugInlining: false, nameTableKind: None)
!33 = !{!34}
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 39, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!38 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!39 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!40 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!41 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!42 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!43 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!44 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!45 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!46 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!47 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!48 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!49 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!50 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!51 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!52 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!53 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!54 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!55 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!56 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!57 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!58 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!59 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!60 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!61 = !DIEnumerator(name: "GSL_ESING", value: 21)
!62 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!63 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!64 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!65 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!66 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!67 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!68 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!69 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!70 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!71 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!72 = !DIEnumerator(name: "GSL_EOF", value: 32)
!73 = !{!74, !75}
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !{!0, !7, !12, !17, !22, !27}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!84 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!85 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled_e", scope: !2, file: !2, line: 102, type: !86, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !96)
!86 = !DISubroutineType(types: !87)
!87 = !{!36, !36, !88, !89}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !91, line: 41, baseType: !92)
!91 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !91, line: 37, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !91, line: 38, baseType: !74, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !92, file: !91, line: 39, baseType: !74, size: 64, offset: 64)
!96 = !{!97, !98, !99, !100, !108, !109, !110, !111, !112, !113, !114, !115}
!97 = !DILocalVariable(name: "n", arg: 1, scope: !85, file: !2, line: 102, type: !36)
!98 = !DILocalVariable(name: "x", arg: 2, scope: !85, file: !2, line: 102, type: !88)
!99 = !DILocalVariable(name: "result", arg: 3, scope: !85, file: !2, line: 102, type: !89)
!100 = !DILocalVariable(name: "two_over_x", scope: !101, file: !2, line: 128, type: !74)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 126, column: 8)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 123, column: 11)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 120, column: 11)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 117, column: 11)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 114, column: 11)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 111, column: 11)
!107 = distinct !DILexicalBlock(scope: !85, file: !2, line: 108, column: 6)
!108 = !DILocalVariable(name: "r_b_jm1", scope: !101, file: !2, line: 129, type: !90)
!109 = !DILocalVariable(name: "r_b_j", scope: !101, file: !2, line: 130, type: !90)
!110 = !DILocalVariable(name: "stat_0", scope: !101, file: !2, line: 131, type: !36)
!111 = !DILocalVariable(name: "stat_1", scope: !101, file: !2, line: 132, type: !36)
!112 = !DILocalVariable(name: "b_jm1", scope: !101, file: !2, line: 133, type: !74)
!113 = !DILocalVariable(name: "b_j", scope: !101, file: !2, line: 134, type: !74)
!114 = !DILocalVariable(name: "b_jp1", scope: !101, file: !2, line: 135, type: !74)
!115 = !DILocalVariable(name: "j", scope: !101, file: !2, line: 136, type: !36)
!116 = distinct !DIAssignID()
!117 = distinct !DIAssignID()
!118 = distinct !DIAssignID()
!119 = distinct !DIAssignID()
!120 = !DILocation(line: 0, scope: !101)
!121 = distinct !DIAssignID()
!122 = !DILocation(line: 0, scope: !85)
!123 = !DILocation(line: 104, column: 7, scope: !85)
!124 = !DILocation(line: 108, column: 8, scope: !107)
!125 = !DILocation(line: 108, column: 6, scope: !85)
!126 = !DILocation(line: 109, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 109, column: 5)
!128 = distinct !DILexicalBlock(scope: !107, file: !2, line: 108, column: 16)
!129 = !{!130, !131, i64 0}
!130 = !{!"gsl_sf_result_struct", !131, i64 0, !131, i64 8}
!131 = !{!"double", !132, i64 0}
!132 = !{!"omnipotent char", !133, i64 0}
!133 = !{!"Simple C/C++ TBAA"}
!134 = !{!130, !131, i64 8}
!135 = !DILocation(line: 109, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !127, file: !2, line: 109, column: 5)
!137 = !DILocation(line: 111, column: 13, scope: !106)
!138 = !DILocation(line: 111, column: 11, scope: !107)
!139 = !DILocation(line: 112, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !106, file: !2, line: 111, column: 19)
!141 = !DILocation(line: 112, column: 5, scope: !140)
!142 = !DILocation(line: 114, column: 13, scope: !105)
!143 = !DILocation(line: 114, column: 11, scope: !106)
!144 = !DILocation(line: 115, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !105, file: !2, line: 114, column: 19)
!146 = !DILocation(line: 115, column: 5, scope: !145)
!147 = !DILocation(line: 117, column: 13, scope: !104)
!148 = !DILocation(line: 117, column: 11, scope: !105)
!149 = !DILocalVariable(name: "ln_nm1_fact", scope: !150, file: !2, line: 46, type: !90)
!150 = distinct !DISubprogram(name: "bessel_Kn_scaled_small_x", scope: !2, file: !2, line: 40, type: !151, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !154)
!151 = !DISubroutineType(types: !152)
!152 = !{!36, !153, !88, !89}
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !149, !162, !163, !164, !165, !166, !167, !168, !169, !172, !173, !174, !175, !176, !177}
!155 = !DILocalVariable(name: "n", arg: 1, scope: !150, file: !2, line: 40, type: !153)
!156 = !DILocalVariable(name: "x", arg: 2, scope: !150, file: !2, line: 40, type: !88)
!157 = !DILocalVariable(name: "result", arg: 3, scope: !150, file: !2, line: 40, type: !89)
!158 = !DILocalVariable(name: "k", scope: !150, file: !2, line: 42, type: !36)
!159 = !DILocalVariable(name: "y", scope: !150, file: !2, line: 43, type: !74)
!160 = !DILocalVariable(name: "ln_x_2", scope: !150, file: !2, line: 44, type: !74)
!161 = !DILocalVariable(name: "ex", scope: !150, file: !2, line: 45, type: !74)
!162 = !DILocalVariable(name: "k_term", scope: !150, file: !2, line: 47, type: !74)
!163 = !DILocalVariable(name: "term1", scope: !150, file: !2, line: 48, type: !74)
!164 = !DILocalVariable(name: "sum1", scope: !150, file: !2, line: 48, type: !74)
!165 = !DILocalVariable(name: "ln_pre1", scope: !150, file: !2, line: 48, type: !74)
!166 = !DILocalVariable(name: "term2", scope: !150, file: !2, line: 49, type: !74)
!167 = !DILocalVariable(name: "sum2", scope: !150, file: !2, line: 49, type: !74)
!168 = !DILocalVariable(name: "pre2", scope: !150, file: !2, line: 49, type: !74)
!169 = !DILocalVariable(name: "KMAX", scope: !170, file: !2, line: 66, type: !153)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 65, column: 18)
!171 = distinct !DILexicalBlock(scope: !150, file: !2, line: 65, column: 6)
!172 = !DILocalVariable(name: "psi_n", scope: !170, file: !2, line: 67, type: !90)
!173 = !DILocalVariable(name: "npk_fact", scope: !170, file: !2, line: 68, type: !90)
!174 = !DILocalVariable(name: "yk", scope: !170, file: !2, line: 69, type: !74)
!175 = !DILocalVariable(name: "k_fact", scope: !170, file: !2, line: 70, type: !74)
!176 = !DILocalVariable(name: "psi_kp1", scope: !170, file: !2, line: 71, type: !74)
!177 = !DILocalVariable(name: "psi_npkp1", scope: !170, file: !2, line: 72, type: !74)
!178 = !DILocation(line: 0, scope: !150, inlinedAt: !179)
!179 = distinct !DILocation(line: 118, column: 12, scope: !180)
!180 = distinct !DILexicalBlock(scope: !104, file: !2, line: 117, column: 21)
!181 = !DILocation(line: 0, scope: !170, inlinedAt: !179)
!182 = !DILocation(line: 43, column: 19, scope: !150, inlinedAt: !179)
!183 = !DILocation(line: 43, column: 23, scope: !150, inlinedAt: !179)
!184 = !DILocation(line: 44, column: 26, scope: !150, inlinedAt: !179)
!185 = !DILocation(line: 45, column: 15, scope: !150, inlinedAt: !179)
!186 = !DILocation(line: 46, column: 3, scope: !150, inlinedAt: !179)
!187 = !DILocation(line: 51, column: 35, scope: !150, inlinedAt: !179)
!188 = !DILocation(line: 51, column: 3, scope: !150, inlinedAt: !179)
!189 = !DILocation(line: 53, column: 13, scope: !150, inlinedAt: !179)
!190 = !DILocation(line: 53, column: 15, scope: !150, inlinedAt: !179)
!191 = !DILocation(line: 53, column: 37, scope: !150, inlinedAt: !179)
!192 = !DILocation(line: 54, column: 14, scope: !193, inlinedAt: !179)
!193 = distinct !DILexicalBlock(scope: !150, file: !2, line: 54, column: 6)
!194 = !DILocation(line: 54, column: 6, scope: !150, inlinedAt: !179)
!195 = !DILocation(line: 58, column: 3, scope: !196, inlinedAt: !179)
!196 = distinct !DILexicalBlock(scope: !150, file: !2, line: 58, column: 3)
!197 = !DILocation(line: 54, column: 39, scope: !198, inlinedAt: !179)
!198 = distinct !DILexicalBlock(scope: !193, file: !2, line: 54, column: 39)
!199 = !DILocation(line: 59, column: 25, scope: !200, inlinedAt: !179)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 58, column: 25)
!201 = distinct !DILexicalBlock(scope: !196, file: !2, line: 58, column: 3)
!202 = !DILocation(line: 59, column: 21, scope: !200, inlinedAt: !179)
!203 = !DILocation(line: 59, column: 18, scope: !200, inlinedAt: !179)
!204 = !DILocation(line: 59, column: 17, scope: !200, inlinedAt: !179)
!205 = !DILocation(line: 59, column: 12, scope: !200, inlinedAt: !179)
!206 = !DILocation(line: 58, column: 21, scope: !201, inlinedAt: !179)
!207 = distinct !{!207, !195, !208, !209}
!208 = !DILocation(line: 61, column: 3, scope: !196, inlinedAt: !179)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 62, column: 17, scope: !150, inlinedAt: !179)
!211 = !DILocation(line: 60, column: 10, scope: !200, inlinedAt: !179)
!212 = !DILocation(line: 62, column: 15, scope: !150, inlinedAt: !179)
!213 = !DILocation(line: 62, column: 30, scope: !150, inlinedAt: !179)
!214 = !DILocation(line: 64, column: 20, scope: !150, inlinedAt: !179)
!215 = !DILocation(line: 64, column: 21, scope: !150, inlinedAt: !179)
!216 = !DILocation(line: 64, column: 16, scope: !150, inlinedAt: !179)
!217 = !DILocation(line: 64, column: 14, scope: !150, inlinedAt: !179)
!218 = !DILocation(line: 65, column: 11, scope: !171, inlinedAt: !179)
!219 = !DILocation(line: 65, column: 6, scope: !150, inlinedAt: !179)
!220 = !DILocation(line: 67, column: 5, scope: !170, inlinedAt: !179)
!221 = !DILocation(line: 68, column: 5, scope: !170, inlinedAt: !179)
!222 = !DILocation(line: 73, column: 5, scope: !170, inlinedAt: !179)
!223 = !DILocation(line: 74, column: 5, scope: !170, inlinedAt: !179)
!224 = !DILocation(line: 75, column: 23, scope: !170, inlinedAt: !179)
!225 = !DILocation(line: 75, column: 32, scope: !170, inlinedAt: !179)
!226 = !DILocation(line: 76, column: 21, scope: !170, inlinedAt: !179)
!227 = !DILocation(line: 76, column: 38, scope: !170, inlinedAt: !179)
!228 = !DILocation(line: 76, column: 56, scope: !170, inlinedAt: !179)
!229 = !DILocation(line: 76, column: 46, scope: !170, inlinedAt: !179)
!230 = !DILocation(line: 77, column: 5, scope: !231, inlinedAt: !179)
!231 = distinct !DILexicalBlock(scope: !170, file: !2, line: 77, column: 5)
!232 = !DILocation(line: 78, column: 24, scope: !233, inlinedAt: !179)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 77, column: 27)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 77, column: 5)
!235 = !DILocation(line: 78, column: 23, scope: !233, inlinedAt: !179)
!236 = !DILocation(line: 79, column: 26, scope: !233, inlinedAt: !179)
!237 = !DILocation(line: 79, column: 24, scope: !233, inlinedAt: !179)
!238 = !DILocation(line: 79, column: 23, scope: !233, inlinedAt: !179)
!239 = !DILocation(line: 80, column: 17, scope: !233, inlinedAt: !179)
!240 = !DILocation(line: 81, column: 20, scope: !233, inlinedAt: !179)
!241 = distinct !DIAssignID()
!242 = !DILocation(line: 82, column: 10, scope: !233, inlinedAt: !179)
!243 = !DILocation(line: 83, column: 40, scope: !233, inlinedAt: !179)
!244 = !DILocation(line: 83, column: 18, scope: !233, inlinedAt: !179)
!245 = !DILocation(line: 83, column: 61, scope: !233, inlinedAt: !179)
!246 = !DILocation(line: 83, column: 53, scope: !233, inlinedAt: !179)
!247 = !DILocation(line: 77, column: 23, scope: !234, inlinedAt: !179)
!248 = !DILocation(line: 77, column: 15, scope: !234, inlinedAt: !179)
!249 = distinct !{!249, !230, !250, !209}
!250 = !DILocation(line: 85, column: 5, scope: !231, inlinedAt: !179)
!251 = !DILocation(line: 86, column: 15, scope: !170, inlinedAt: !179)
!252 = !DILocation(line: 86, column: 44, scope: !170, inlinedAt: !179)
!253 = !DILocation(line: 86, column: 51, scope: !170, inlinedAt: !179)
!254 = !DILocation(line: 87, column: 3, scope: !171, inlinedAt: !179)
!255 = !DILocation(line: 87, column: 3, scope: !170, inlinedAt: !179)
!256 = !DILocation(line: 0, scope: !171, inlinedAt: !179)
!257 = !DILocation(line: 92, column: 21, scope: !150, inlinedAt: !179)
!258 = !DILocation(line: 92, column: 16, scope: !150, inlinedAt: !179)
!259 = !DILocation(line: 93, column: 21, scope: !150, inlinedAt: !179)
!260 = !DILocation(line: 93, column: 55, scope: !150, inlinedAt: !179)
!261 = !DILocation(line: 93, column: 70, scope: !150, inlinedAt: !179)
!262 = !DILocation(line: 93, column: 39, scope: !150, inlinedAt: !179)
!263 = !DILocation(line: 93, column: 11, scope: !150, inlinedAt: !179)
!264 = !DILocation(line: 94, column: 42, scope: !150, inlinedAt: !179)
!265 = !DILocation(line: 94, column: 40, scope: !150, inlinedAt: !179)
!266 = !DILocation(line: 94, column: 15, scope: !150, inlinedAt: !179)
!267 = !DILocation(line: 96, column: 3, scope: !150, inlinedAt: !179)
!268 = !DILocation(line: 97, column: 1, scope: !150, inlinedAt: !179)
!269 = !DILocation(line: 118, column: 5, scope: !180)
!270 = !DILocation(line: 120, column: 33, scope: !103)
!271 = !DILocation(line: 120, column: 48, scope: !103)
!272 = !DILocation(line: 120, column: 51, scope: !103)
!273 = !DILocation(line: 120, column: 46, scope: !103)
!274 = !DILocation(line: 120, column: 44, scope: !103)
!275 = !DILocation(line: 120, column: 37, scope: !103)
!276 = !DILocation(line: 120, column: 11, scope: !104)
!277 = !DILocation(line: 121, column: 46, scope: !278)
!278 = distinct !DILexicalBlock(scope: !103, file: !2, line: 120, column: 57)
!279 = !DILocation(line: 121, column: 12, scope: !278)
!280 = !DILocation(line: 121, column: 5, scope: !278)
!281 = !DILocation(line: 123, column: 11, scope: !102)
!282 = !DILocation(line: 123, column: 48, scope: !102)
!283 = !DILocation(line: 123, column: 11, scope: !103)
!284 = !DILocation(line: 124, column: 50, scope: !285)
!285 = distinct !DILexicalBlock(scope: !102, file: !2, line: 123, column: 73)
!286 = !DILocation(line: 124, column: 12, scope: !285)
!287 = !DILocation(line: 124, column: 5, scope: !285)
!288 = !DILocation(line: 128, column: 28, scope: !101)
!289 = !DILocation(line: 129, column: 5, scope: !101)
!290 = !DILocation(line: 130, column: 5, scope: !101)
!291 = !DILocation(line: 131, column: 18, scope: !101)
!292 = !DILocation(line: 132, column: 18, scope: !101)
!293 = !DILocation(line: 133, column: 28, scope: !101)
!294 = !DILocation(line: 134, column: 26, scope: !101)
!295 = !DILocation(line: 138, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !101, file: !2, line: 138, column: 5)
!297 = !DILocation(line: 139, column: 23, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !2, line: 138, column: 24)
!299 = distinct !DILexicalBlock(scope: !296, file: !2, line: 138, column: 5)
!300 = !DILocation(line: 139, column: 25, scope: !298)
!301 = !DILocation(line: 139, column: 38, scope: !298)
!302 = !DILocation(line: 138, column: 20, scope: !299)
!303 = distinct !{!303, !295, !304, !209}
!304 = !DILocation(line: 142, column: 5, scope: !296)
!305 = distinct !{!305, !306}
!306 = !{!"llvm.loop.unroll.disable"}
!307 = !DILocation(line: 139, column: 21, scope: !298)
!308 = !DILocation(line: 144, column: 18, scope: !101)
!309 = !DILocation(line: 145, column: 20, scope: !101)
!310 = !DILocation(line: 145, column: 25, scope: !101)
!311 = !DILocation(line: 145, column: 51, scope: !101)
!312 = !DILocation(line: 145, column: 54, scope: !101)
!313 = !DILocation(line: 145, column: 38, scope: !101)
!314 = !DILocation(line: 145, column: 81, scope: !101)
!315 = !DILocation(line: 145, column: 84, scope: !101)
!316 = !DILocation(line: 145, column: 70, scope: !101)
!317 = !DILocation(line: 145, column: 35, scope: !101)
!318 = !DILocation(line: 145, column: 22, scope: !101)
!319 = !DILocation(line: 145, column: 13, scope: !101)
!320 = !DILocation(line: 146, column: 42, scope: !101)
!321 = !DILocation(line: 146, column: 17, scope: !101)
!322 = !DILocation(line: 148, column: 12, scope: !101)
!323 = !DILocation(line: 149, column: 3, scope: !102)
!324 = !DILocation(line: 0, scope: !107)
!325 = !DILocation(line: 150, column: 1, scope: !85)
!326 = !DISubprogram(name: "gsl_error", scope: !35, file: !35, line: 77, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !329, !36, !36}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!331 = !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !332, file: !332, line: 218, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!333 = !DISubroutineType(types: !334)
!334 = !{!36, !88, !89}
!335 = !DISubprogram(name: "gsl_sf_bessel_K1_scaled_e", scope: !332, file: !332, line: 228, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !337, file: !337, line: 46, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!338 = !DISubroutineType(types: !339)
!339 = !{!36, !88, !88, !89}
!340 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !337, file: !337, line: 49, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_e", scope: !2, file: !2, line: 153, type: !151, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !342)
!342 = !{!343, !344, !345, !346, !347}
!343 = !DILocalVariable(name: "n", arg: 1, scope: !341, file: !2, line: 153, type: !153)
!344 = !DILocalVariable(name: "x", arg: 2, scope: !341, file: !2, line: 153, type: !88)
!345 = !DILocalVariable(name: "result", arg: 3, scope: !341, file: !2, line: 153, type: !89)
!346 = !DILocalVariable(name: "status", scope: !341, file: !2, line: 155, type: !153)
!347 = !DILocalVariable(name: "ex", scope: !341, file: !2, line: 156, type: !88)
!348 = !DILocation(line: 0, scope: !341)
!349 = !DILocation(line: 155, column: 22, scope: !341)
!350 = !DILocation(line: 156, column: 25, scope: !341)
!351 = !DILocation(line: 156, column: 21, scope: !341)
!352 = !DILocation(line: 157, column: 15, scope: !341)
!353 = !DILocation(line: 158, column: 11, scope: !341)
!354 = !DILocation(line: 158, column: 15, scope: !341)
!355 = !DILocation(line: 159, column: 20, scope: !341)
!356 = !DILocation(line: 159, column: 40, scope: !341)
!357 = !DILocation(line: 159, column: 38, scope: !341)
!358 = !DILocation(line: 159, column: 15, scope: !341)
!359 = !DILocation(line: 160, column: 3, scope: !341)
!360 = !DISubprogram(name: "exp", scope: !361, file: !361, line: 95, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!362 = !DISubroutineType(types: !363)
!363 = !{!74, !74}
!364 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled_array", scope: !2, file: !2, line: 164, type: !365, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !368)
!365 = !DISubroutineType(types: !366)
!366 = !{!36, !153, !153, !88, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!368 = !{!369, !370, !371, !372, !373, !376, !379, !380, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!369 = !DILocalVariable(name: "nmin", arg: 1, scope: !364, file: !2, line: 164, type: !153)
!370 = !DILocalVariable(name: "nmax", arg: 2, scope: !364, file: !2, line: 164, type: !153)
!371 = !DILocalVariable(name: "x", arg: 3, scope: !364, file: !2, line: 164, type: !88)
!372 = !DILocalVariable(name: "result_array", arg: 4, scope: !364, file: !2, line: 164, type: !367)
!373 = !DILocalVariable(name: "j", scope: !374, file: !2, line: 169, type: !36)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 168, column: 43)
!375 = distinct !DILexicalBlock(scope: !364, file: !2, line: 168, column: 6)
!376 = !DILocalVariable(name: "b", scope: !377, file: !2, line: 174, type: !90)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 173, column: 22)
!378 = distinct !DILexicalBlock(scope: !375, file: !2, line: 173, column: 11)
!379 = !DILocalVariable(name: "stat", scope: !377, file: !2, line: 175, type: !36)
!380 = !DILocalVariable(name: "two_over_x", scope: !381, file: !2, line: 180, type: !74)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 179, column: 8)
!382 = !DILocalVariable(name: "r_Knm1", scope: !381, file: !2, line: 181, type: !90)
!383 = !DILocalVariable(name: "r_Kn", scope: !381, file: !2, line: 182, type: !90)
!384 = !DILocalVariable(name: "stat_0", scope: !381, file: !2, line: 183, type: !36)
!385 = !DILocalVariable(name: "stat_1", scope: !381, file: !2, line: 184, type: !36)
!386 = !DILocalVariable(name: "stat", scope: !381, file: !2, line: 185, type: !36)
!387 = !DILocalVariable(name: "Knp1", scope: !381, file: !2, line: 186, type: !74)
!388 = !DILocalVariable(name: "Kn", scope: !381, file: !2, line: 187, type: !74)
!389 = !DILocalVariable(name: "Knm1", scope: !381, file: !2, line: 188, type: !74)
!390 = !DILocalVariable(name: "n", scope: !381, file: !2, line: 189, type: !36)
!391 = !DILocalVariable(name: "j", scope: !392, file: !2, line: 206, type: !36)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 198, column: 12)
!393 = distinct !DILexicalBlock(scope: !394, file: !2, line: 192, column: 10)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 191, column: 35)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 191, column: 5)
!396 = distinct !DILexicalBlock(scope: !381, file: !2, line: 191, column: 5)
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 0, scope: !377)
!399 = distinct !DIAssignID()
!400 = !DILocation(line: 0, scope: !381)
!401 = distinct !DIAssignID()
!402 = !DILocation(line: 0, scope: !364)
!403 = !DILocation(line: 168, column: 11, scope: !375)
!404 = !DILocation(line: 168, column: 15, scope: !375)
!405 = !DILocation(line: 168, column: 23, scope: !375)
!406 = !DILocation(line: 168, column: 30, scope: !375)
!407 = !DILocation(line: 0, scope: !374)
!408 = !DILocation(line: 170, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 170, column: 5)
!410 = distinct !DILexicalBlock(scope: !374, file: !2, line: 170, column: 5)
!411 = !DILocation(line: 170, column: 5, scope: !410)
!412 = !DILocation(line: 170, column: 49, scope: !409)
!413 = !{!131, !131, i64 0}
!414 = !DILocation(line: 171, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !374, file: !2, line: 171, column: 5)
!416 = !DILocation(line: 173, column: 16, scope: !378)
!417 = !DILocation(line: 173, column: 11, scope: !375)
!418 = !DILocation(line: 174, column: 5, scope: !377)
!419 = !DILocation(line: 175, column: 16, scope: !377)
!420 = !DILocation(line: 176, column: 25, scope: !377)
!421 = !DILocation(line: 176, column: 21, scope: !377)
!422 = !DILocation(line: 178, column: 3, scope: !378)
!423 = !DILocation(line: 180, column: 28, scope: !381)
!424 = !DILocation(line: 181, column: 5, scope: !381)
!425 = !DILocation(line: 182, column: 5, scope: !381)
!426 = !DILocation(line: 183, column: 18, scope: !381)
!427 = !DILocation(line: 184, column: 48, scope: !381)
!428 = !DILocation(line: 184, column: 18, scope: !381)
!429 = !DILocation(line: 185, column: 16, scope: !381)
!430 = !DILocation(line: 188, column: 26, scope: !381)
!431 = !DILocation(line: 187, column: 24, scope: !381)
!432 = !DILocation(line: 191, column: 5, scope: !396)
!433 = !DILocation(line: 192, column: 15, scope: !393)
!434 = !DILocation(line: 192, column: 10, scope: !394)
!435 = !DILocation(line: 207, column: 19, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 207, column: 9)
!437 = distinct !DILexicalBlock(scope: !392, file: !2, line: 207, column: 9)
!438 = !DILocation(line: 0, scope: !392)
!439 = !DILocation(line: 207, column: 9, scope: !437)
!440 = !DILocation(line: 193, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !393, file: !2, line: 192, column: 30)
!442 = !DILocation(line: 193, column: 32, scope: !441)
!443 = !DILocation(line: 194, column: 23, scope: !441)
!444 = !DILocation(line: 194, column: 25, scope: !441)
!445 = !DILocation(line: 194, column: 38, scope: !441)
!446 = !DILocation(line: 191, column: 31, scope: !395)
!447 = !DILocation(line: 191, column: 20, scope: !395)
!448 = distinct !{!448, !432, !449, !209}
!449 = !DILocation(line: 210, column: 5, scope: !396)
!450 = !DILocation(line: 207, column: 34, scope: !436)
!451 = !DILocation(line: 207, column: 57, scope: !436)
!452 = !DILocation(line: 207, column: 30, scope: !436)
!453 = distinct !{!453, !439, !454, !209}
!454 = !DILocation(line: 207, column: 59, scope: !437)
!455 = !DILocation(line: 208, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !392, file: !2, line: 208, column: 9)
!457 = !DILocation(line: 213, column: 3, scope: !378)
!458 = !DILocation(line: 0, scope: !375)
!459 = !DILocation(line: 214, column: 1, scope: !364)
!460 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_array", scope: !2, file: !2, line: 218, type: !365, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468}
!462 = !DILocalVariable(name: "nmin", arg: 1, scope: !460, file: !2, line: 218, type: !153)
!463 = !DILocalVariable(name: "nmax", arg: 2, scope: !460, file: !2, line: 218, type: !153)
!464 = !DILocalVariable(name: "x", arg: 3, scope: !460, file: !2, line: 218, type: !88)
!465 = !DILocalVariable(name: "result_array", arg: 4, scope: !460, file: !2, line: 218, type: !367)
!466 = !DILocalVariable(name: "status", scope: !460, file: !2, line: 220, type: !36)
!467 = !DILocalVariable(name: "ex", scope: !460, file: !2, line: 221, type: !74)
!468 = !DILocalVariable(name: "i", scope: !460, file: !2, line: 222, type: !36)
!469 = !DILocation(line: 0, scope: !460)
!470 = !DILocation(line: 220, column: 16, scope: !460)
!471 = !DILocation(line: 221, column: 19, scope: !460)
!472 = !DILocation(line: 221, column: 15, scope: !460)
!473 = !DILocation(line: 223, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 223, column: 3)
!475 = distinct !DILexicalBlock(scope: !460, file: !2, line: 223, column: 3)
!476 = !DILocation(line: 223, column: 3, scope: !475)
!477 = !DILocation(line: 223, column: 31, scope: !474)
!478 = !DILocation(line: 223, column: 47, scope: !474)
!479 = !DILocation(line: 223, column: 27, scope: !474)
!480 = distinct !{!480, !476, !481, !209}
!481 = !DILocation(line: 223, column: 50, scope: !475)
!482 = distinct !{!482, !306}
!483 = !DILocation(line: 224, column: 3, scope: !460)
!484 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled", scope: !2, file: !2, line: 232, type: !485, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!74, !153, !88}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "n", arg: 1, scope: !484, file: !2, line: 232, type: !153)
!489 = !DILocalVariable(name: "x", arg: 2, scope: !484, file: !2, line: 232, type: !88)
!490 = !DILocalVariable(name: "result", scope: !484, file: !2, line: 234, type: !90)
!491 = !DILocalVariable(name: "status", scope: !484, file: !2, line: 234, type: !36)
!492 = distinct !DIAssignID()
!493 = !DILocation(line: 0, scope: !484)
!494 = !DILocation(line: 234, column: 3, scope: !484)
!495 = !DILocation(line: 234, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !484, file: !2, line: 234, column: 3)
!497 = !DILocation(line: 234, column: 3, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 234, column: 3)
!499 = distinct !DILexicalBlock(scope: !496, file: !2, line: 234, column: 3)
!500 = !DILocation(line: 235, column: 1, scope: !484)
!501 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn", scope: !2, file: !2, line: 237, type: !485, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !32, retainedNodes: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(name: "n", arg: 1, scope: !501, file: !2, line: 237, type: !153)
!504 = !DILocalVariable(name: "x", arg: 2, scope: !501, file: !2, line: 237, type: !88)
!505 = !DILocalVariable(name: "result", scope: !501, file: !2, line: 239, type: !90)
!506 = !DILocalVariable(name: "status", scope: !501, file: !2, line: 239, type: !36)
!507 = distinct !DIAssignID()
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 239, column: 3, scope: !501)
!510 = !DILocation(line: 0, scope: !341, inlinedAt: !511)
!511 = distinct !DILocation(line: 239, column: 3, scope: !501)
!512 = !DILocation(line: 155, column: 22, scope: !341, inlinedAt: !511)
!513 = !DILocation(line: 156, column: 25, scope: !341, inlinedAt: !511)
!514 = !DILocation(line: 156, column: 21, scope: !341, inlinedAt: !511)
!515 = !DILocation(line: 157, column: 15, scope: !341, inlinedAt: !511)
!516 = distinct !DIAssignID()
!517 = !DILocation(line: 158, column: 11, scope: !341, inlinedAt: !511)
!518 = !DILocation(line: 158, column: 15, scope: !341, inlinedAt: !511)
!519 = !DILocation(line: 159, column: 20, scope: !341, inlinedAt: !511)
!520 = !DILocation(line: 159, column: 40, scope: !341, inlinedAt: !511)
!521 = !DILocation(line: 159, column: 38, scope: !341, inlinedAt: !511)
!522 = !DILocation(line: 159, column: 15, scope: !341, inlinedAt: !511)
!523 = distinct !DIAssignID()
!524 = !DILocation(line: 239, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !501, file: !2, line: 239, column: 3)
!526 = !DILocation(line: 239, column: 3, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 239, column: 3)
!528 = distinct !DILexicalBlock(scope: !525, file: !2, line: 239, column: 3)
!529 = !DILocation(line: 240, column: 1, scope: !501)
!530 = !DISubprogram(name: "log", scope: !361, file: !361, line: 104, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !532, file: !532, line: 136, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!533 = !DISubroutineType(types: !534)
!534 = !{!36, !535, !89}
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!536 = !DISubprogram(name: "gsl_sf_psi_int_e", scope: !537, file: !537, line: 51, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!538 = !DISubroutineType(types: !539)
!539 = !{!36, !153, !89}
!540 = !DISubprogram(name: "gsl_sf_fact_e", scope: !532, file: !532, line: 119, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
